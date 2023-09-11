unit uDmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  uFormConfigBanco, uBiblioteca, Vcl.Forms;

type
  TdmDados = class(TDataModule)
    fdCon: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure CarregaBanco;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmDados.CarregaBanco;
begin
  try
    fdCon.Params.Clear;
    fdCon.Params.Add('User_Name=sysdba');
    fdCon.Params.Add('Password=masterkey');
    fdCon.Params.Add('Protocol=TCPIP');
    fdCon.Params.Add('Server=' + GetValorIni(ExtractFilePath(Application.ExeName) + 'config.ini', 'CONFIGURACAO', 'SERVER'));
    fdCon.Params.Add('CharacterSet=utF8');
    fdCon.Params.Add('Database=' + GetValorIni(ExtractFilePath(Application.ExeName) + 'config.ini', 'CONFIGURACAO', 'LOCAL_DB'));
    fdCon.Params.Add('DriverID=FB');
    fdCon.Connected := True;
  except
    on E: Exception do begin
      MsgAtencao(E.Message);
      ShowModalForm(TFormConfigBanco, FormConfigBanco);
    end;
  end;
end;

procedure TdmDados.DataModuleCreate(Sender: TObject);
begin
  CarregaBanco;
end;

end.
