unit uFormConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, uBiblioteca, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TFormConfigBanco = class(TForm)
    Image1: TImage;
    edtLocal: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    edtServer: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure Configura;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfigBanco: TFormConfigBanco;

implementation

{$R *.dfm}

{ TFormConfigBanco }

procedure TFormConfigBanco.Button1Click(Sender: TObject);
begin
  Configura;
end;

procedure TFormConfigBanco.Configura;
var
  vFileName: string;
begin
  vFileName     := ExtractFilePath(Application.ExeName) + 'config.ini';
  SetValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', edtLocal.Text);
  SetValorIni(vFileName, 'CONFIGURACAO', 'SERVER', edtServer.Text);
  MsgInformacao('Pronto.');
end;

procedure TFormConfigBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
