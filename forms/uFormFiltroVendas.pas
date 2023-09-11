unit uFormFiltroVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet;

type
  TFormFiltroVendas = class(TFormFiltroPai)
    edtData1: TDateTimePicker;
    edtData2: TDateTimePicker;
    Label2: TLabel;
    edtCodigoVenda: TEdit;
    Label3: TLabel;
    cbFaturado: TCheckBox;
    DBGrid1: TDBGrid;
    btnImprimir: TButton;
    frVendas: TfrxReport;
    frDBVendas: TfrxDBDataset;
    fdQryRelatorio: TFDQuery;
    fdQryRelatorioID_VENDA_CAB: TIntegerField;
    fdQryRelatorioID_CLIENTE: TIntegerField;
    fdQryRelatorioCLIENTE: TWideStringField;
    fdQryRelatorioDATA: TDateField;
    fdQryRelatorioFATURADO: TWideStringField;
    fdQryRelatorioPRODUTO: TWideStringField;
    fdQryRelatorioQTD: TSingleField;
    fdQryRelatorioVALOR_UNITARIO: TSingleField;
    fdQryRelatorioSUBTOTAL: TFloatField;
    fdQryRelatorioDESCONTO: TSingleField;
    fdQryRelatorioTOTAL: TFloatField;
    Button2: TButton;
    Button3: TButton;
    fdQryFiltroID_VENDA_CAB: TIntegerField;
    fdQryFiltroID_CLIENTE: TIntegerField;
    fdQryFiltroCLIENTE: TWideStringField;
    fdQryFiltroDATA: TDateField;
    fdQryFiltroFATURADO: TWideStringField;
    procedure btnFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure Filtrar;
    procedure SetFiltro(const pQuery: TFDQuery);
    procedure Imprimir;
  public
    { Public declarations }
  end;

var
  FormFiltroVendas: TFormFiltroVendas;

implementation

{$R *.dfm}

uses uDmDados, uBiblioteca, uFormCadastroVenda;

{ TFormFiltroVendas }

procedure TFormFiltroVendas.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormFiltroVendas.btnImprimirClick(Sender: TObject);
begin
  inherited;
  Imprimir;
  CarregaRelatorio(frVendas);
end;

procedure TFormFiltroVendas.Button2Click(Sender: TObject);
begin
  inherited;
  FormCadastroVenda := TFormCadastroVenda.Create(Self);
  try
    FormCadastroVenda.SetRecord(0, tNil);
    FormCadastroVenda.fdQryCadastro.Insert;
    FormCadastroVenda.ShowModal;
  finally
    FreeAndNil(FormCadastroVenda);
  end;
end;

procedure TFormFiltroVendas.Button3Click(Sender: TObject);
begin
  inherited;
  ValidaQueryVazia;
  FormCadastroVenda := TFormCadastroVenda.Create(Self);
  try
    FormCadastroVenda.SetRecord(fdQryFiltroID_VENDA_CAB.AsInteger, tNil);
    FormCadastroVenda.ShowModal;
  finally
    FreeAndNil(FormCadastroVenda);
  end;

end;

procedure TFormFiltroVendas.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT V.ID_VENDA_CAB,');
  fdQryFiltro.SQL.Add('       V.ID_CLIENTE,');
  fdQryFiltro.SQL.Add('       DECODE(C.tipo_fj, ''F'', C.nome, C.razao_social) cliente,');
  fdQryFiltro.SQL.Add('       V.data,');
  fdQryFiltro.SQL.Add('       COALESCE(V.faturado,''N'') FATURADO');
  fdQryFiltro.SQL.Add(' FROM VENDA_CAB V INNER JOIN CLIENTE C ON C.id_cliente = V.id_cliente');
  fdQryFiltro.SQL.Add(' WHERE 1=1');

  SetFiltro(fdQryFiltro);

  fdQryFiltro.Open;
  fdQryFiltro.FetchAll;
end;

procedure TFormFiltroVendas.FormShow(Sender: TObject);
begin
  inherited;
  edtData1.Date := Date;
  edtData2.Date := Date;
end;

procedure TFormFiltroVendas.Imprimir;
begin
  fdQryRelatorio.Close;
  fdQryRelatorio.SQL.Clear;
  fdQryRelatorio.SQL.Add('SELECT V.ID_VENDA_CAB,');
  fdQryRelatorio.SQL.Add('       V.ID_CLIENTE,');
  fdQryRelatorio.SQL.Add('       DECODE(C.tipo_fj, ''F'', C.nome, C.razao_social) cliente,');
  fdQryRelatorio.SQL.Add('       V.data,');
  fdQryRelatorio.SQL.Add('       COALESCE(V.faturado,''N'') FATURADO,');
  fdQryRelatorio.SQL.Add('       P.descricao PRODUTO,');
  fdQryRelatorio.SQL.Add('       I.qtd,');
  fdQryRelatorio.SQL.Add('       I.valor_unitario,');
  fdQryRelatorio.SQL.Add('       I.valor_unitario * I.QTD SUBTOTAL,');
  fdQryRelatorio.SQL.Add('       COALESCE(I.desconto,0) DESCONTO,');
  fdQryRelatorio.SQL.Add('       (I.qtd * I.valor_unitario) - COALESCE(I.desconto, 0) TOTAL');
  fdQryRelatorio.SQL.Add('');
  fdQryRelatorio.SQL.Add(' FROM VENDA_CAB V INNER JOIN CLIENTE C ON C.id_cliente = V.id_cliente');
  fdQryRelatorio.SQL.Add('                  inner join venda_item I ON I.id_venda_cab = V.id_venda_cab');
  fdQryRelatorio.SQL.Add('                  INNER JOIN PRODUTO P ON P.id_produto = I.id_produto');
  fdQryRelatorio.SQL.Add('WHERE 1=1');

  SetFiltro(fdQryRelatorio);

  fdQryRelatorio.SQL.Add(' ORDER BY DECODE(C.tipo_fj, ''F'', C.nome, C.razao_social),');
  fdQryRelatorio.SQL.Add('          P.DESCRICAO');

  fdQryRelatorio.Open;
  fdQryRelatorio.FetchAll;
end;

procedure TFormFiltroVendas.SetFiltro(const pQuery: TFDQuery);
begin
  if Trim(edtFiltro.Text) <> '' then begin
    pQuery.SQL.Add('  AND TRIM(UPPER(DECODE(C.tipo_fj, ''F'', C.nome, C.razao_social))) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtFiltro.Text) + '%') ) );
  end;

  if edtData1.Date > 0 then begin
    pQuery.SQL.Add('  AND V.DATA >= ' + QuotedStr(FormatDateTime('dd.mm.yyyy', edtData1.Date)));
  end;

  if edtData2.Date > 0 then begin
    pQuery.SQL.Add('  AND V.DATA <= ' + QuotedStr(FormatDateTime('dd.mm.yyyy', edtData2.Date)));
  end;

  if Trim(edtCodigoVenda.Text) <> '' then begin
    pQuery.SQL.Add(' AND V.ID_VENDA_CAB = ' + edtCodigoVenda.Text);
  end;

  if cbFaturado.Checked then begin
    pQuery.SQL.Add(' AND V.FATURADO = ''S'' ');
  end;
end;

end.
