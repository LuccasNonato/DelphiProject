unit uFormFiltroFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, uFormCadastroFornecedor;

type
  TFormFiltroFornecedores = class(TFormFiltroPai)
    fdQryFiltroID_FORNECEDOR: TIntegerField;
    fdQryFiltroRAZAO_SOCIAL: TWideStringField;
    fdQryFiltroFANTASIA: TWideStringField;
    fdQryFiltroCNPJ: TWideStringField;
    fdQryFiltroENDERECO: TWideStringField;
    fdQryFiltroBAIRRO: TWideStringField;
    fdQryFiltroID_CIDADE: TIntegerField;
    fdQryFiltroID_ESTADO: TIntegerField;
    fdQryFiltroEMAIL: TWideStringField;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    edtCnpj: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroFornecedores: TFormFiltroFornecedores;

implementation

{$R *.dfm}

uses uBiblioteca;

{ TFormFiltroFornecedores }

procedure TFormFiltroFornecedores.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormFiltroFornecedores.Button2Click(Sender: TObject);
begin
  inherited;
  FormCadastroFornecedor := TFormCadastroFornecedor.Create(Self);
  try
    FormCadastroFornecedor.SetRecord(0, tNil);
    FormCadastroFornecedor.fdQryCadastro.Insert;
    FormCadastroFornecedor.ShowModal;
  finally
    FreeAndNil(FormCadastroFornecedor);
  end;
end;

procedure TFormFiltroFornecedores.Button3Click(Sender: TObject);
begin
  inherited;
  ValidaQueryVazia;
  FormCadastroFornecedor := TFormCadastroFornecedor.Create(Self);
  try
    FormCadastroFornecedor.SetRecord(fdQryFiltroID_FORNECEDOR.AsInteger, tNil);
    FormCadastroFornecedor.ShowModal;
  finally
    FreeAndNil(FormCadastroFornecedor);
  end;

end;

procedure TFormFiltroFornecedores.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT * FROM FORNECEDOR');
  fdQryFiltro.SQL.Add('WHERE 1 = 1 ');

  if Trim(edtFiltro.Text) <> '' then begin//campo razao social
    fdQryFiltro.SQL.Add(' AND UPPER(TRIM(RAZAO_SOCIAL)) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtFiltro.Text)) + '%'));
  end;

  if Trim(edtCnpj.Text) <> '' then begin
    fdQryFiltro.SQL.Add('  AND UPPER(TRIM( REPLACE( REPLACE( REPLACE(CNPJ, ''.'', ''''),''-'',''''),''/'', '''') ) ) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtCnpj.Text)) + '%'));
  end;

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

end.
