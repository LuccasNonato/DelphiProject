inherited FormCadastroFornecedor: TFormCadastroFornecedor
  Caption = 'Cadastro de Fornecedor'
  ClientHeight = 430
  ClientWidth = 779
  OnShow = FormShow
  ExplicitWidth = 785
  ExplicitHeight = 459
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 56
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 96
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
    FocusControl = edtRazaoSocial
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 136
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 176
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 16
    Top = 216
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 16
    Top = 256
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 16
    Top = 296
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label8: TLabel [7]
    Left = 16
    Top = 336
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label9: TLabel [8]
    Left = 16
    Top = 376
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit9
  end
  inherited pnCabecalho: TPanel
    Width = 779
    ExplicitWidth = 779
  end
  object DBEdit1: TDBEdit [10]
    Left = 16
    Top = 72
    Width = 86
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 1
  end
  object edtRazaoSocial: TDBEdit [11]
    Left = 16
    Top = 112
    Width = 300
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [12]
    Left = 16
    Top = 152
    Width = 300
    Height = 21
    DataField = 'FANTASIA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [13]
    Left = 16
    Top = 192
    Width = 264
    Height = 21
    DataField = 'CNPJ'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [14]
    Left = 16
    Top = 232
    Width = 300
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit6: TDBEdit [15]
    Left = 16
    Top = 272
    Width = 300
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit9: TDBEdit [16]
    Left = 16
    Top = 392
    Width = 300
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBLookupComboBox1: TDBLookupComboBox [17]
    Left = 16
    Top = 312
    Width = 300
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.dsCidades
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox [18]
    Left = 16
    Top = 352
    Width = 39
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListSource = Lookup.dsEstados
    TabOrder = 9
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FORNECEDOR_ID'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    object fdQryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryCadastroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryCadastroCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object fdQryCadastroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object fdQryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
end
