unit uFormFiltroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.ExtCtrls, uFormCadastroCliente, uFormCadastroProduto;

type
  TFormFiltroProdutos = class(TFormFiltroPai)
    DBGrid1: TDBGrid;
    Label2: TLabel;
    edtDescricao: TEdit;
    fdQryFiltroID_PRODUTO: TIntegerField;
    fdQryFiltroDESCRICAO: TWideStringField;
    fdQryFiltroQTD: TSingleField;
    fdQryFiltroCUSTO: TSingleField;
    fdQryFiltroV_UNITARIO: TSingleField;
    fdQryFiltroUNIDADE: TWideStringField;
    fdQryFiltroPESO_LIQUIDO: TSingleField;
    fdQryFiltroPESO_BRUTO: TSingleField;
    fdQryFiltroFABRICANTE: TWideStringField;
    fdQryFiltroMARCA_MODELO: TWideStringField;
    fdQryFiltroFORNECEDOR: TWideStringField;
    Button3: TButton;
    Button2: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure Filtrar;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FormFiltroProdutos: TFormFiltroProdutos;

implementation

{$R *.dfm}

uses uBiblioteca;

procedure TFormFiltroProdutos.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormFiltroProdutos.Button2Click(Sender: TObject);
begin
  inherited;
  FormCadastroProduto := TFormCadastroProduto.Create(Self);
  try
    FormCadastroProduto.SetRecord(0, tNil);
    FormCadastroProduto.fdQryCadastro.Insert;
    FormCadastroProduto.ShowModal;
  finally
    FreeAndNil(FormCadastroProduto);
  end;
end;

procedure TFormFiltroProdutos.Button3Click(Sender: TObject);
begin
  inherited;
  ValidaQueryVazia;
  FormCadastroProduto := TFormCadastroProduto.Create(Self);
  try
    FormCadastroProduto.SetRecord(fdQryFiltroID_PRODUTO.AsInteger, tNil);
    FormCadastroProduto.ShowModal;
  finally
    FreeAndNil(FormCadastroProduto);
  end;
end;

procedure TFormFiltroProdutos.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT P.ID_PRODUTO,');
  fdQryFiltro.SQL.Add('       P.descricao,');
  fdQryFiltro.SQL.Add('       P.qtd,');
  fdQryFiltro.SQL.Add('       P.custo,');
  fdQryFiltro.SQL.Add('       P.v_unitario,');
  fdQryFiltro.SQL.Add('       P.unidade,');
  fdQryFiltro.SQL.Add('       P.peso_liquido,');
  fdQryFiltro.SQL.Add('       P.peso_bruto,');
  fdQryFiltro.SQL.Add('       P.fabricante,');
  fdQryFiltro.SQL.Add('       P.marca_modelo,');
  fdQryFiltro.SQL.Add('       F.razao_social FORNECEDOR');
  fdQryFiltro.SQL.Add('  FROM PRODUTO P LEFT JOIN FORNECEDOR F ON F.id_fornecedor = P.id_fornecedor');
  fdQryFiltro.SQL.Add(' WHERE 1 = 1');

  if StrToIntDef(edtFiltro.Text, 0) > 0 then begin
    fdQryFiltro.SQL.Add('AND P.ID_PRODUTO = ' + edtFiltro.Text);
  end;

  if Trim(edtDescricao.Text) <> '' then begin
    fdQryFiltro.SQL.Add('AND UPPER(P.DESCRICAO) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtDescricao.Text) + '%') ) );
  end;

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

end.
