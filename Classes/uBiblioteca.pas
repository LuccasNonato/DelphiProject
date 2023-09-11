unit uBiblioteca;

interface
uses IniFiles, System.SysUtils, Vcl.Forms, FireDAC.Comp.Client, System.Classes, frxClass,
  Winapi.Windows;
type
  TNav = (tFirst, tPrior, tNext, tLast, tNil);
  procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);
  function GetValorIni(pLocal, pSessao, pSubSessao: string): string;
  procedure AtualizaFDQuery(const pFDQuery: TFDQuery; pSQL: string);
  procedure ShowModalForm(pClass: TComponentClass; pForm: TForm);
  procedure ShowForm(pClass: TComponentClass; pForm: TForm);
  procedure CarregaRelatorio(const pReport: TFrxReport);

  procedure MsgAtencao(pMsg: String);
  procedure MsgInformacao(pMsg: String);
  function MsgPerguntar(pMsg: String; pFocoBtnSim: Boolean = True): Boolean;
  procedure MsgErro(pMsg: String);

implementation

procedure SetValorIni(pLocal, pSessao, pSubSessao: string; pValor: string);
var vArquivo: TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);

  vArquivo.WriteString(pSessao, pSubSessao, pValor);

  vArquivo.Free;
end;

function GetValorIni(pLocal, pSessao, pSubSessao: string): string;
var vArquivo: TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);

  Result := vArquivo.ReadString(pSessao, pSubSessao, Result);

  vArquivo.Free;
end;

procedure AtualizaFDQuery(const pFDQuery: TFDQuery; pSQL: string);
begin
  pFDQuery.Close;
  if Trim(pSQL) <> '' then begin
    pFDQuery.SQL.Clear;
    pFDQuery.SQL.Text := pSQL;
  end;
  pFDQuery.Open;
  pFDQuery.FetchAll;
end;

procedure ShowModalForm(pClass: TComponentClass; pForm: TForm);
begin
  try
    Application.CreateForm(pClass, pForm);
    pForm.ShowModal;
  finally
    FreeAndNil(pForm);
  end;
end;

procedure ShowForm(pClass: TComponentClass; pForm: TForm);
begin
  try
    Application.CreateForm(pClass, pForm);
    pForm.Show;
  finally
  end;
end;

procedure CarregaRelatorio(const pReport: TFrxReport);
begin
  pReport.PrepareReport;
  pReport.ShowPreparedReport;
end;

procedure MsgAtencao(pMsg: String);
begin
  Application.MessageBox(PChar(pMsg), 'Atenção', MB_ICONWARNING + MB_OK);
end;

procedure MsgInformacao(pMsg: String);
begin
  Application.MessageBox(PChar(pMsg), 'Informação', MB_ICONINFORMATION + MB_OK);
end;

function MsgPerguntar(pMsg: String; pFocoBtnSim: Boolean = True): Boolean;
begin
  if pFocoBtnSim then begin
    Result := Application.MessageBox(PChar(pMsg), 'Pergunta', MB_ICONQUESTION + MB_YESNO) = IDYES;
  end
  else begin
    Result := Application.MessageBox(PChar(pMsg), 'Pergunta', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES;
  end;
end;

procedure MsgErro(pMsg: String);
begin
  Application.MessageBox(PChar(pMsg), 'Erro', MB_ICONERROR + MB_OK);
end;

end.
