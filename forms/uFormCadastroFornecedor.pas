unit uFormCadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, uLookup, Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroFornecedor = class(TFormCadastroPai)
    fdQryCadastroID_FORNECEDOR: TIntegerField;
    fdQryCadastroRAZAO_SOCIAL: TWideStringField;
    fdQryCadastroFANTASIA: TWideStringField;
    fdQryCadastroCNPJ: TWideStringField;
    fdQryCadastroENDERECO: TWideStringField;
    fdQryCadastroBAIRRO: TWideStringField;
    fdQryCadastroID_CIDADE: TIntegerField;
    fdQryCadastroID_ESTADO: TIntegerField;
    fdQryCadastroEMAIL: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    edtRazaoSocial: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFornecedor: TFormCadastroFornecedor;

implementation

{$R *.dfm}

procedure TFormCadastroFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  Lookup.fdQryEstados.Open();
  Lookup.fdQryEstados.FetchAll;

  Lookup.fdQryCidades.Open();
  Lookup.fdQryCidades.FetchAll;

  edtRazaoSocial.SetFocus;
end;

end.
