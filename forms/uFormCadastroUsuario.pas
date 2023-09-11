unit uFormCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormCadastroUsuario = class(TFormCadastroPai)
    fdQryCadastroNOME: TWideStringField;
    fdQryCadastroLOGIN: TWideStringField;
    fdQryCadastroSENHA: TWideStringField;
    fdQryCadastroID_USUARIO: TIntegerField;
    Label1: TLabel;
    edtNome: TDBEdit;
    Label2: TLabel;
    edtLogin: TDBEdit;
    Label3: TLabel;
    edtSenha: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    DBGridUsuario: TDBGrid;
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ValidaCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroUsuario: TFormCadastroUsuario;

implementation

{$R *.dfm}

uses uCrpt, uBiblioteca;

procedure TFormCadastroUsuario.btnGravarClick(Sender: TObject);
begin
  ValidaCampos;
  inherited;

end;

procedure TFormCadastroUsuario.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if fdQryCadastro.State in [dsInsert] then begin
    fdQryCadastroSENHA.AsAnsiString := Criptografa('C', fdQryCadastroSENHA.AsAnsiString);
  end
  else
  if fdQryCadastro.State in [dsEdit] then begin
    if (fdQryCadastroSENHA.AsAnsiString <> fdQryCadastroSENHA.OldValue) then begin
      fdQryCadastroSENHA.AsAnsiString := Criptografa('C', fdQryCadastroSENHA.AsAnsiString);
    end;
  end;
end;

procedure TFormCadastroUsuario.FormShow(Sender: TObject);
begin
  inherited;
  fdQryCadastro.Open;
end;

procedure TFormCadastroUsuario.ValidaCampos;
begin
  if (Trim(edtNome.Text) = '') or
     (Trim(edtLogin.Text) = '') or
     (Trim(edtSenha.Text) = '')
  then begin
    MsgAtencao('Todos os campos são obrigatórios');
    Abort;
  end;
end;

end.
