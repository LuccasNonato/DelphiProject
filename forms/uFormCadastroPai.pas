unit uFormCadastroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uDmDados, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, uBiblioteca;

type

  TFormCadastroPai = class(TForm)
    pnCabecalho: TPanel;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    fdQryCadastro: TFDQuery;
    fdUpdCadastro: TFDUpdateSQL;
    fdTransaction: TFDTransaction;
    dsCadastro: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    fdQryCodigo: TFDQuery;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    function GetNameTable(pSql: string): string;
    procedure SetNewSql(pCodigo: integer);
    { Private declarations }
  public
    vSqlOriginal: string;
    procedure SetRecord(pCodigo: integer; pTipo: TNav);
    { Public declarations }
  end;

var
  FormCadastroPai: TFormCadastroPai;

implementation

{$R *.dfm}

procedure TFormCadastroPai.btnNovoClick(Sender: TObject);
begin
  if not fdQryCadastro.Active then begin
    Self.SetRecord(0, tNil);
  end;

  if not (fdQryCadastro.State in [dsEdit, dsInsert]) then begin
    fdQryCadastro.Insert;
  end;
end;

procedure TFormCadastroPai.btnGravarClick(Sender: TObject);
begin
  if fdQryCadastro.State in [dsEdit, dsInsert] then begin
    if MsgPerguntar('Tem certeza?', False) then begin
      fdTransaction.StartTransaction;
      fdQryCadastro.Post;
      fdTransaction.CommitRetaining;
      MsgInformacao('Pronto.');
    end;
  end;
end;

procedure TFormCadastroPai.btnCancelarClick(Sender: TObject);
begin
  if fdQryCadastro.State in [dsEdit, dsInsert] then begin
    if MsgPerguntar('Deseja realmente cancelar?', False) then begin
      fdTransaction.StartTransaction;
      fdQryCadastro.Cancel;
      fdTransaction.RollbackRetaining;
    end;
  end;
end;

procedure TFormCadastroPai.btnExcluirClick(Sender: TObject);
begin
  if fdQryCadastro.RecordCount > 0 then begin
    if MsgPerguntar('Tem certeza que deseja excluir?', False) then begin
      fdQryCadastro.Edit;
      fdQryCadastro.FieldByName('DT_EXCLUIDO').AsDateTime := Date;
      fdTransaction.StartTransaction;
      fdQryCadastro.Post;
      fdTransaction.CommitRetaining;
      SetRecord(fdQryCadastro.FieldByName('ID_' +  GetNameTable(vSqlOriginal)).AsInteger, tNil);
      MsgInformacao('Pronto. Registro excluído com sucesso!');
    end;
  end;
end;

procedure TFormCadastroPai.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormCadastroPai.FormCreate(Sender: TObject);
begin
  vSqlOriginal := fdQryCadastro.SQL.Text;
end;

function TFormCadastroPai.GetNameTable(pSql: string): string;
var
  vSql: TStringList;
begin
  vSql := TStringList.Create;
  try
    vSql.Delimiter := ' ';
    vSql.StrictDelimiter := True;

    vSql.DelimitedText := Copy(pSql, Pos('FROM', UpperCase(pSql)), Length(pSql));

    Result := Trim(vSql.Strings[1]);
  finally
    vSql.Free;
  end;
end;

procedure TFormCadastroPai.SetNewSql(pCodigo: integer);
var
  vNewSql: string;
begin
  fdQryCadastro.Close;
  fdQryCadastro.SQL.Clear;
  vNewSql := 'SELECT * FROM (' + vSqlOriginal + ') WHERE ID_' + GetNameTable(vSqlOriginal) + ' = :ID_' + GetNameTable(vSqlOriginal);
  fdQryCadastro.SQL.Text := vNewSql;
  fdQryCadastro.SQL.Add(' AND DT_EXCLUIDO IS NULL');
  fdQryCadastro.ParamByName('ID_' + GetNameTable(vSqlOriginal)).AsInteger := pCodigo;

  fdQryCadastro.Open();
end;

procedure TFormCadastroPai.SetRecord(pCodigo: integer; pTipo: TNav);
var
  vID: string;
  vCodigo: integer;
begin
  vID := 'ID_' + GetNameTable(vSqlOriginal);

  if pCodigo > 0 then begin

    SetNewSql(pCodigo);
  end
  else
  if pTipo = tFirst then begin

    fdQryCodigo.Close;
    fdQryCodigo.SQL.Clear;
    fdQryCodigo.SQL.Add('SELECT MIN(' + vID + ') ID FROM ' + GetNameTable(vSqlOriginal));
    fdQryCodigo.Open();

    vCodigo := fdQryCodigo.FieldByName('ID').AsInteger;

    SetNewSql(vCodigo);

  end
  else
  if pTipo = tLast then begin
    fdQryCodigo.Close;
    fdQryCodigo.SQL.Clear;
    fdQryCodigo.SQL.Add('SELECT MAX(' + vID + ') ID FROM ' + GetNameTable(vSqlOriginal));
    fdQryCodigo.Open();

    vCodigo := fdQryCodigo.FieldByName('ID').AsInteger;

    SetNewSql(vCodigo);
  end
  else
  if pTipo = tPrior then begin

    vCodigo := fdQryCadastro.FieldByName(vID).AsInteger;

    fdQryCodigo.Close;
    fdQryCodigo.SQL.Clear;
    fdQryCodigo.SQL.Add('SELECT MAX(' + vID + ') ID FROM ' + GetNameTable(vSqlOriginal) + ' WHERE ' + vID + ' < ' + IntToStr(vCodigo));
    fdQryCodigo.Open();

    vCodigo := fdQryCodigo.FieldByName('ID').AsInteger;

    SetNewSql(vCodigo);
  end
  else
  if pTipo = tNext then begin

    vCodigo := fdQryCadastro.FieldByName(vID).AsInteger;

    fdQryCodigo.Close;
    fdQryCodigo.SQL.Clear;
    fdQryCodigo.SQL.Add('SELECT MIN(' + vID + ') ID FROM ' + GetNameTable(vSqlOriginal) + ' WHERE ' + vID + ' > ' + IntToStr(vCodigo));
    fdQryCodigo.Open();

    vCodigo := fdQryCodigo.FieldByName('ID').AsInteger;

    SetNewSql(vCodigo);
  end
  else
  if pTipo = tNil then begin
    SetNewSql(0);
  end;
end;

procedure TFormCadastroPai.SpeedButton1Click(Sender: TObject);
begin
  SetRecord(0, tFirst);
end;

procedure TFormCadastroPai.SpeedButton2Click(Sender: TObject);
begin
  SetRecord(0, tPrior);
end;

procedure TFormCadastroPai.SpeedButton3Click(Sender: TObject);
begin
  SetRecord(0, tNext);
end;

procedure TFormCadastroPai.SpeedButton4Click(Sender: TObject);
begin
  SetRecord(0, tLast);
end;

end.
