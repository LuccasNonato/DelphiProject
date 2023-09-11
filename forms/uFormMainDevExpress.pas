unit uFormMainDevExpress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxTileBar,
  dxCustomTileControl, cxClasses, dxTileControl, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, dxCore, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxColorEdit, dxLayoutContainer, dxLayoutControl, dxSkinsForm, Vcl.ExtCtrls,
  dxBar;

type
  TFormMainDevExpress = class(TForm)
    cxLookAndFeelController1: TcxLookAndFeelController;
    tmrTIME_COTACAO_TEMPO_ALEERTA: TTimer;
    dxSkinController1: TdxSkinController;
    dxSkinController2: TdxSkinController;
    dxtlcntrl1: TdxTileControl;
    dxtlcntrlgrpdxtlcntrl1Group1: TdxTileControlGroup;
    dxtlcntrltmUsuario: TdxTileControlItem;
    dxtlcntrltmClientes: TdxTileControlItem;
    dxtlcntrltmEstados: TdxTileControlItem;
    dxtlcntrltmCidades: TdxTileControlItem;
    dxtlcntrlgrpdxtlcntrl1Group2: TdxTileControlGroup;
    dxtlcntrltmProduto: TdxTileControlItem;
    dxtlcntrltmdxtlcntrl1Item1: TdxTileControlItem;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    Users: TdxBarLargeButton;
    Clientes: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    Estados: TdxBarLargeButton;
    Fornecedores: TdxBarLargeButton;
    Produtos: TdxBarLargeButton;
    Cidades: TdxBarLargeButton;
    procedure dxtlcntrltmUsuarioClick(Sender: TdxTileControlItem);
    procedure dxtlcntrltmClientesClick(Sender: TdxTileControlItem);
    procedure dxtlcntrltmEstadosClick(Sender: TdxTileControlItem);
    procedure dxtlcntrltmCidadesClick(Sender: TdxTileControlItem);
    procedure dxtlcntrltmProdutoClick(Sender: TdxTileControlItem);
    procedure dxtlcntrltmdxtlcntrl1Item1Click(Sender: TdxTileControlItem);
    procedure UsersClick(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure EstadosClick(Sender: TObject);
    procedure CidadesClick(Sender: TObject);
    procedure ProdutosClick(Sender: TObject);
    procedure FornecedoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMainDevExpress: TFormMainDevExpress;

implementation

{$R *.dfm}

uses uFormCadastroVenda, uBiblioteca, uFormFiltroVendas, uFormFiltroUsuario,
  uFormCadastroUsuario, uFormLogin, uFormCadastroCliente, uFormCadastroEstado, uFormFiltroClientes,
  uFormCadastroFornecedor, uFormFiltroFornecedores, uFormFiltroProdutos,
  uFormCadastroProduto, uFormCadastroCidade;

procedure TFormMainDevExpress.UsersClick(Sender: TObject);
begin
   ShowModalForm(TFormCadastroUsuario, FormCadastroUsuario);
end;

procedure TFormMainDevExpress.CidadesClick(Sender: TObject);
begin
  ShowModalForm(TFormCadastroCidade, FormCadastroCidade);
end;

procedure TFormMainDevExpress.ClientesClick(Sender: TObject);
begin
  ShowModalForm(TFormCadastroCliente, FormCadastroCliente);
end;

procedure TFormMainDevExpress.dxtlcntrltmCidadesClick(
  Sender: TdxTileControlItem);
begin
  ShowModalForm(TFormCadastroCidade, FormCadastroCidade);
end;

procedure TFormMainDevExpress.dxtlcntrltmClientesClick(
  Sender: TdxTileControlItem);
begin
  ShowModalForm(TFormCadastroCliente, FormCadastroCliente);
end;

procedure TFormMainDevExpress.dxtlcntrltmdxtlcntrl1Item1Click(
  Sender: TdxTileControlItem);
begin
  ShowModalForm(TFormCadastroFornecedor, FormCadastroFornecedor);
end;

procedure TFormMainDevExpress.dxtlcntrltmEstadosClick(
  Sender: TdxTileControlItem);
begin
   ShowModalForm(TFormCadastroEstado, FormCadastroEstado);
end;

procedure TFormMainDevExpress.dxtlcntrltmProdutoClick(
  Sender: TdxTileControlItem);
begin
  ShowModalForm(TFormCadastroProduto, FormCadastroProduto);
end;

procedure TFormMainDevExpress.dxtlcntrltmUsuarioClick(
  Sender: TdxTileControlItem);
begin
  ShowModalForm(TFormCadastroUsuario, FormCadastroUsuario);
end;

procedure TFormMainDevExpress.EstadosClick(Sender: TObject);
begin
  ShowModalForm(TFormCadastroEstado, FormCadastroEstado);
end;

procedure TFormMainDevExpress.FornecedoresClick(Sender: TObject);
begin
  ShowModalForm(TFormCadastroFornecedor, FormCadastroFornecedor);
end;

procedure TFormMainDevExpress.ProdutosClick(Sender: TObject);
begin
  ShowModalForm(TFormCadastroProduto, FormCadastroProduto);
end;

end.
