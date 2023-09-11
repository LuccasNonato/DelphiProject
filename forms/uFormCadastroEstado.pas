unit uFormCadastroEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormCadastroEstado = class(TFormCadastroPai)
    fdQryCadastroID_ESTADO: TFDAutoIncField;
    fdQryCadastroNOME: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    fdQryCadastroSIGLA: TWideStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    fdQryCadastroDT_EXCLUIDO: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroEstado: TFormCadastroEstado;

implementation

{$R *.dfm}

end.
