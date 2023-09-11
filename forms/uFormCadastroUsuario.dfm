inherited FormCadastroUsuario: TFormCadastroUsuario
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 340
  ClientWidth = 777
  OnShow = FormShow
  ExplicitWidth = 783
  ExplicitHeight = 369
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 95
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = edtNome
  end
  object Label2: TLabel [1]
    Left = 326
    Top = 56
    Width = 25
    Height = 13
    Caption = 'Login'
    FocusControl = edtLogin
  end
  object Label3: TLabel [2]
    Left = 450
    Top = 56
    Width = 30
    Height = 13
    Caption = 'Senha'
    FocusControl = edtSenha
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 56
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit4
  end
  inherited pnCabecalho: TPanel
    Width = 777
    ExplicitWidth = 777
  end
  object edtNome: TDBEdit [5]
    Left = 95
    Top = 72
    Width = 225
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object edtLogin: TDBEdit [6]
    Left = 326
    Top = 72
    Width = 118
    Height = 21
    CharCase = ecUpperCase
    DataField = 'LOGIN'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object edtSenha: TDBEdit [7]
    Left = 450
    Top = 72
    Width = 119
    Height = 21
    DataField = 'SENHA'
    DataSource = dsCadastro
    PasswordChar = '*'
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [8]
    Left = 8
    Top = 72
    Width = 81
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 4
  end
  object DBGridUsuario: TDBGrid [9]
    Left = 8
    Top = 112
    Width = 561
    Height = 185
    DataSource = dsCadastro
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  inherited fdQryCadastro: TFDQuery
    BeforePost = fdQryCadastroBeforePost
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_USUARIO_ID'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    Left = 616
    Top = 176
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object fdQryCadastroLOGIN: TWideStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
    end
    object fdQryCadastroSENHA: TWideStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 255
    end
    object fdQryCadastroID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 616
    Top = 232
  end
  inherited fdTransaction: TFDTransaction
    Left = 616
    Top = 280
  end
  inherited dsCadastro: TDataSource
    Left = 616
    Top = 128
  end
  inherited fdQryCodigo: TFDQuery
    Left = 616
    Top = 80
  end
end
