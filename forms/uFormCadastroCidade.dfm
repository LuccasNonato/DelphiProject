inherited FormCadastroCidade: TFormCadastroCidade
  Caption = 'Cadastro de cidades'
  ClientHeight = 152
  ClientWidth = 590
  ExplicitWidth = 596
  ExplicitHeight = 181
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 56
    Width = 55
    Height = 13
    Caption = 'ID_CIDADE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 96
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  inherited pnCabecalho: TPanel
    Width = 590
    ExplicitWidth = 590
    inherited btnSair: TBitBtn
      Left = 508
      ExplicitLeft = 508
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 16
    Top = 72
    Width = 89
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [4]
    Left = 16
    Top = 112
    Width = 200
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CIDADE_ID'
    UpdateOptions.AutoIncFields = 'ID_CIDADE'
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    object fdQryCadastroID_CIDADE: TFDAutoIncField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
end
