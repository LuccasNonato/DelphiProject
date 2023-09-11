unit uFormCadastroVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, AdvEdit, AdvMoneyEdit, DBAdvMoneyEdit,
  Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet;

type
  TFormCadastroVenda = class(TFormCadastroPai)
    fdQryCadastroID_VENDA_CAB: TIntegerField;
    fdQryCadastroID_CLIENTE: TIntegerField;
    fdQryCadastroDATA: TDateField;
    fdQryCadastroFATURADO: TWideStringField;
    fdQryCadastroDATA_FATURADO: TDateField;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    edtCliente: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    fdQryItens: TFDQuery;
    dsItens: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    fdQryItensID_VENDA_ITEM: TFDAutoIncField;
    fdQryItensID_PRODUTO: TIntegerField;
    fdQryItensQTD: TSingleField;
    fdQryItensVALOR_UNITARIO: TSingleField;
    fdQryItensDESCONTO: TSingleField;
    fdQryItensID_VENDA_CAB: TIntegerField;
    edtDescricaoItem: TDBLookupComboBox;
    edtQuantidade: TAdvMoneyEdit;
    edtValorUnitario: TAdvMoneyEdit;
    edtDesconto: TAdvMoneyEdit;
    edtSubTotal: TAdvMoneyEdit;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtTotal: TAdvMoneyEdit;
    Label10: TLabel;
    Button1: TButton;
    fdQryItensDescricaoProduto: TStringField;
    fdQryItensSubTotal: TFloatField;
    fdQryItensTotal: TFloatField;
    fdtItens: TFDTransaction;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtTotSubTotal: TAdvMoneyEdit;
    edtTotDesconto: TAdvMoneyEdit;
    edtTotTotal: TAdvMoneyEdit;
    Button2: TButton;
    frVenda: TfrxReport;
    frxDadosVenda: TfrxDBDataset;
    frxItensVenda: TfrxDBDataset;
    btnImprimir: TBitBtn;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure fdQryCadastroAfterInsert(DataSet: TDataSet);
    procedure fdQryItensAfterInsert(DataSet: TDataSet);
    procedure fdQryCadastroAfterOpen(DataSet: TDataSet);
    procedure fdQryCadastroAfterScroll(DataSet: TDataSet);
    procedure fdQryItensCalcFields(DataSet: TDataSet);
    procedure fdQryItensAfterPost(DataSet: TDataSet);
    procedure fdQryItensAfterDelete(DataSet: TDataSet);
    procedure edtDescricaoItemClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edtQuantidadeChange(Sender: TObject);
    procedure edtValorUnitarioChange(Sender: TObject);
    procedure edtDescontoChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    procedure SetItens(pIdVenda: integer);
    procedure GravarItem;
    procedure SetDadosProduto(pIdProduto: integer);
    procedure Totaliza;
    procedure CalculaTotais;
    procedure LimparCampos;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVenda: TFormCadastroVenda;

implementation

{$R *.dfm}

uses uLookup, uBiblioteca, uDmDados;

procedure TFormCadastroVenda.btnImprimirClick(Sender: TObject);
begin
  inherited;
  frVenda.Variables.Variables['Cliente'] := QuotedStr(edtCliente.Text);
  CarregaRelatorio(frVenda);
end;

procedure TFormCadastroVenda.Button1Click(Sender: TObject);
begin
  inherited;
  GravarItem;
  LimparCampos;
end;

procedure TFormCadastroVenda.Button2Click(Sender: TObject);
begin
  inherited;
  fdQryItens.Delete;
end;

procedure TFormCadastroVenda.CalculaTotais;
begin
  edtSubTotal.Value := edtQuantidade.Value * edtValorUnitario.Value;
  edtTotal.Value    := (edtQuantidade.Value * edtValorUnitario.Value) - edtDesconto.Value;
end;

procedure TFormCadastroVenda.edtDescontoChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure TFormCadastroVenda.edtDescricaoItemClick(Sender: TObject);
begin
  inherited;
  SetDadosProduto(edtDescricaoItem.KeyValue);
end;

procedure TFormCadastroVenda.edtQuantidadeChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure TFormCadastroVenda.edtValorUnitarioChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure TFormCadastroVenda.fdQryCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryCadastroDATA.AsDateTime := Date;
end;

procedure TFormCadastroVenda.fdQryCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SetItens(fdQryCadastroID_VENDA_CAB.AsInteger);
end;

procedure TFormCadastroVenda.fdQryCadastroAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SetItens(fdQryCadastroID_VENDA_CAB.AsInteger);
end;

procedure TFormCadastroVenda.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if fdQryCadastroDATA_FATURADO.IsNull and (fdQryCadastroFATURADO.AsAnsiString = 'S') then begin
    fdQryCadastroDATA_FATURADO.AsDateTime := Date;
  end;
end;

procedure TFormCadastroVenda.fdQryItensAfterDelete(DataSet: TDataSet);
begin
  fdtItens.StartTransaction;
  inherited;
  fdtItens.CommitRetaining;
  Totaliza;
end;

procedure TFormCadastroVenda.fdQryItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryItensID_VENDA_CAB.AsInteger := fdQryCadastroID_VENDA_CAB.AsInteger;
end;

procedure TFormCadastroVenda.fdQryItensAfterPost(DataSet: TDataSet);
begin
  fdtItens.StartTransaction;
  inherited;
  fdtItens.CommitRetaining;
  Totaliza;
end;

procedure TFormCadastroVenda.fdQryItensCalcFields(DataSet: TDataSet);
begin
  inherited;
  fdQryItensSubTotal.AsFloat := (fdQryItensQTD.AsFloat * fdQryItensVALOR_UNITARIO.AsFloat);
  fdQryItensTotal.AsFloat    := (fdQryItensQTD.AsFloat * fdQryItensVALOR_UNITARIO.AsFloat) -  fdQryItensDESCONTO.AsFloat;
end;

procedure TFormCadastroVenda.FormCreate(Sender: TObject);
begin
  inherited;
  AtualizaFDQuery(Lookup.fdQryProdutos, '');
  AtualizaFDQuery(Lookup.fdQryClientes, '');
end;

procedure TFormCadastroVenda.GravarItem;
begin
  fdQryItens.Append;
  fdQryItensID_PRODUTO.AsInteger   := Integer(edtDescricaoItem.KeyValue);
  fdQryItensQTD.AsFloat            := edtQuantidade.Value;
  fdQryItensVALOR_UNITARIO.AsFloat := edtValorUnitario.Value;
  fdQryItensDESCONTO.AsFloat       := edtDesconto.Value;
  fdQryItens.Post;
end;

procedure TFormCadastroVenda.LimparCampos;
begin
  edtDescricaoItem.KeyValue := 0;
  edtQuantidade.Value       := 0;
  edtValorUnitario.Value    := 0;
  edtDesconto.Value         := 0;
  edtSubTotal.Value         := 0;
  edtTotal.Value            := 0;
  edtDescricaoItem.SetFocus;
end;

procedure TFormCadastroVenda.SetDadosProduto(pIdProduto: integer);
begin
  edtQuantidade.Value    := 1;
  edtValorUnitario.Value :=  Lookup.fdQryProdutosV_UNITARIO.AsFloat;
end;

procedure TFormCadastroVenda.SetItens(pIdVenda: integer);
begin
  fdQryItens.Close;
  fdQryItens.ParamByName('ID_VENDA_CAB').AsInteger := pIdVenda;
  AtualizaFDQuery(fdQryItens, '');
  Totaliza;
end;

procedure TFormCadastroVenda.Totaliza;
var
  vQryTotais: TFDQuery;
  vSql: string;
begin
  vQryTotais             := TFDQuery.Create(nil);
  vQryTotais.Transaction := fdtItens;
  vQryTotais.Connection  := dmDados.fdCon;
  try
    vSql := 'SELECT SUM(QTD * VALOR_UNITARIO) SUBTOTAL, SUM(COALESCE(DESCONTO,0)) DESCONTO, SUM((QTD * VALOR_UNITARIO) - COALESCE(DESCONTO,0)) TOTAL' + #13 +
            '  FROM VENDA_ITEM' + #13 +
            ' WHERE ID_VENDA_CAB = ' + IntToStr(fdQryCadastroID_VENDA_CAB.AsInteger);
    AtualizaFDQuery(vQryTotais, vSql);

    edtTotSubTotal.Value := vQryTotais.FieldByName('SUBTOTAL').AsFloat;
    edtTotDesconto.Value := vQryTotais.FieldByName('DESCONTO').AsFloat;
    edtTotTotal.Value    := vQryTotais.FieldByName('TOTAL').AsFloat;
  finally
    vQryTotais.Close;
    FreeAndNil(vQryTotais);
  end;
end;

end.
