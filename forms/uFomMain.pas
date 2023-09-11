unit uFomMain;

interface
uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton, uFormCadastroCidade,
  uFormCadastroCliente, uFormCadastroEstado, uFormFiltroClientes,
  uFormCadastroFornecedor, uFormFiltroFornecedores, uFormFiltroProdutos,
  uFormCadastroProduto, dxSkinsCore, dxSkinsDefaultPainters, cxClasses,
  cxLookAndFeels, dxSkinsForm, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxBarBuiltInMenu, dxNavBarOfficeNavigationBar, dxCustomTileControl,
  dxTileControl, Vcl.Menus, Vcl.StdCtrls, cxButtons, uFormMainDevExpress;

type
  TFormMain = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    AdvPage4: TAdvPage;
    AdvToolBar2: TAdvToolBar;
    AdvToolBar3: TAdvToolBar;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    btnFiltroClientes: TAdvGlowButton;
    btnCadastroFornecedor: TAdvGlowButton;
    btnFornecedor: TAdvGlowButton;
    btnProdutos: TAdvGlowButton;
    btnCadastroProduto: TAdvGlowButton;
    AdvPage2: TAdvPage;
    AdvToolBar5: TAdvToolBar;
    AdvGlowButton6: TAdvGlowButton;
    btnFiltroVendas: TAdvGlowButton;
    btnFiltroUsuários: TAdvGlowButton;
    btnCadastroUsuario: TAdvGlowButton;
    dxnvbrfcnvgtnbr1: TdxNavBarOfficeNavigationBar;
    DevExpress: TcxButton;
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure btnCadastroFornecedorClick(Sender: TObject);
    procedure btnFornecedorClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnCadastroProdutoClick(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure btnFiltroClientesClick(Sender: TObject);
    procedure btnFiltroVendasClick(Sender: TObject);
    procedure btnFiltroUsuáriosClick(Sender: TObject);
    procedure btnCadastroUsuarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
    procedure DevExpressClick(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses uFormCadastroVenda, uBiblioteca, uFormFiltroVendas, uFormFiltroUsuario,
  uFormCadastroUsuario, uFormLogin;


procedure TFormMain.AdvGlowButton1Click(Sender: TObject);
begin
  ShowModalForm(TFormCadastroCidade, FormCadastroCidade);
end;

procedure TFormMain.AdvGlowButton2Click(Sender: TObject);
begin
  ShowModalForm(TFormCadastroEstado, FormCadastroEstado);
end;

procedure TFormMain.AdvGlowButton3Click(Sender: TObject);
begin
  ShowModalForm(TFormCadastroCliente, FormCadastroCliente);
end;

procedure TFormMain.AdvGlowButton6Click(Sender: TObject);
begin
  ShowModalForm(TFormCadastroVenda, FormCadastroVenda);
end;

procedure TFormMain.AdvShapeButton1Click(Sender: TObject);
begin
  ShowModalForm(TFormLogin, FormLogin);
end;

procedure TFormMain.btnCadastroFornecedorClick(Sender: TObject);
begin
  ShowModalForm(TFormCadastroFornecedor, FormCadastroFornecedor);
end;

procedure TFormMain.btnCadastroProdutoClick(Sender: TObject);
begin
  ShowModalForm(TFormCadastroProduto, FormCadastroProduto);
end;

procedure TFormMain.btnCadastroUsuarioClick(Sender: TObject);
begin
  ShowModalForm(TFormCadastroUsuario, FormCadastroUsuario);
end;

procedure TFormMain.btnFiltroClientesClick(Sender: TObject);
begin
  ShowForm(TFormFiltroClientes, FormFiltroClientes);
end;

procedure TFormMain.btnFiltroUsuáriosClick(Sender: TObject);
begin
  ShowForm(TFormFiltroUsuario, FormFiltroUsuario);
end;

procedure TFormMain.btnFiltroVendasClick(Sender: TObject);
begin
  ShowForm(TFormFiltroVendas, FormFiltroVendas);
end;

procedure TFormMain.btnFornecedorClick(Sender: TObject);
begin
  ShowForm(TFormFiltroFornecedores, FormFiltroFornecedores);
end;

procedure TFormMain.btnProdutosClick(Sender: TObject);
begin
  ShowForm(TFormFiltroProdutos, FormFiltroProdutos);
end;

procedure TFormMain.DevExpressClick(Sender: TObject);
begin
  ShowForm(TFormMainDevExpress, FormMainDevExpress);
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  ShowModalForm(TFormLogin, FormLogin);
end;

end.
