inherited FormCadastroCliente: TFormCadastroCliente
  Caption = 'Cadastro de cliente'
  ClientHeight = 291
  OnShow = FormShow
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 56
    Width = 58
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 88
    Top = 56
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
    FocusControl = edtRazaoSocial
  end
  object Label3: TLabel [2]
    Left = 328
    Top = 56
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 535
    Top = 56
    Width = 50
    Height = 13
    Caption = 'CPF_CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 16
    Top = 104
    Width = 41
    Height = 13
    Caption = 'TIPO_FJ'
  end
  object Label6: TLabel [5]
    Left = 119
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit5
  end
  object Label7: TLabel [6]
    Left = 328
    Top = 104
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit6
  end
  object Label8: TLabel [7]
    Left = 16
    Top = 152
    Width = 22
    Height = 13
    Caption = 'SITE'
    FocusControl = DBEdit7
  end
  object Label9: TLabel [8]
    Left = 224
    Top = 152
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit8
  end
  object Label10: TLabel [9]
    Left = 16
    Top = 200
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit9
  end
  object Label11: TLabel [10]
    Left = 232
    Top = 200
    Width = 10
    Height = 13
    Caption = 'IE'
    FocusControl = DBEdit10
  end
  object Label12: TLabel [11]
    Left = 327
    Top = 200
    Width = 12
    Height = 13
    Caption = 'IM'
    FocusControl = DBEdit11
  end
  object Label13: TLabel [12]
    Left = 534
    Top = 152
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label14: TLabel [13]
    Left = 533
    Top = 200
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  inherited pnCabecalho: TPanel
    inherited btnNovo: TBitBtn
      Left = 3
      ExplicitLeft = 3
    end
    inherited btnGravar: TBitBtn
      Left = 90
      ExplicitLeft = 90
    end
    inherited btnCancelar: TBitBtn
      Left = 177
      ExplicitLeft = 177
    end
    inherited btnExcluir: TBitBtn
      Left = 264
      ExplicitLeft = 264
    end
  end
  object DBEdit1: TDBEdit [15]
    Left = 16
    Top = 72
    Width = 63
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object edtRazaoSocial: TDBEdit [16]
    Left = 88
    Top = 72
    Width = 233
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [17]
    Left = 328
    Top = 72
    Width = 200
    Height = 21
    DataField = 'FANTASIA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [18]
    Left = 535
    Top = 72
    Width = 129
    Height = 21
    DataField = 'CPF_CNPJ'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object edtTipoFJ: TDBComboBox [19]
    Left = 16
    Top = 119
    Width = 97
    Height = 21
    DataField = 'TIPO_FJ'
    DataSource = dsCadastro
    Items.Strings = (
      'F'
      'J')
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [20]
    Left = 119
    Top = 119
    Width = 200
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [21]
    Left = 328
    Top = 117
    Width = 336
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [22]
    Left = 16
    Top = 168
    Width = 200
    Height = 21
    DataField = 'SITE'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [23]
    Left = 224
    Top = 168
    Width = 304
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [24]
    Left = 16
    Top = 216
    Width = 200
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [25]
    Left = 232
    Top = 216
    Width = 89
    Height = 21
    DataField = 'IE'
    DataSource = dsCadastro
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [26]
    Left = 327
    Top = 216
    Width = 200
    Height = 21
    DataField = 'IM'
    DataSource = dsCadastro
    TabOrder = 12
  end
  object DBLookupComboBox1: TDBLookupComboBox [27]
    Left = 534
    Top = 168
    Width = 145
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.dsCidades
    TabOrder = 13
  end
  object DBLookupComboBox2: TDBLookupComboBox [28]
    Left = 533
    Top = 216
    Width = 52
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListSource = Lookup.dsEstados
    TabOrder = 14
  end
  inherited fdQryCadastro: TFDQuery
    Active = True
    BeforeInsert = fdQryCadastroBeforeInsert
    BeforeEdit = fdQryCadastroBeforeEdit
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTE_ID'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    object fdQryCadastroID_CLIENTE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object fdQryCadastroCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdQryCadastroTIPO_FJ: TWideStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryCadastroSITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryCadastroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object fdQryCadastroNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroIE: TWideStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object fdQryCadastroIM: TWideStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object fdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO CLIENTE'
      '(ID_CLIENTE, RAZAO_SOCIAL, FANTASIA, CPF_CNPJ, '
      '  TIPO_FJ, NOME, EMAIL, SITE, ENDERECO, '
      '  COMPLEMENTO, NUMERO, BAIRRO, IE, IM, '
      '  DT_EXCLUIDO)'
      
        'VALUES (:NEW_ID_CLIENTE, :NEW_RAZAO_SOCIAL, :NEW_FANTASIA, :NEW_' +
        'CPF_CNPJ, '
      
        '  :NEW_TIPO_FJ, :NEW_NOME, :NEW_EMAIL, :NEW_SITE, :NEW_ENDERECO,' +
        ' '
      '  :NEW_COMPLEMENTO, :NEW_NUMERO, :NEW_BAIRRO, :NEW_IE, :NEW_IM, '
      '  :NEW_DT_EXCLUIDO)')
    ModifySQL.Strings = (
      'UPDATE CLIENTE'
      
        'SET ID_CLIENTE = :NEW_ID_CLIENTE, RAZAO_SOCIAL = :NEW_RAZAO_SOCI' +
        'AL, '
      
        '  FANTASIA = :NEW_FANTASIA, CPF_CNPJ = :NEW_CPF_CNPJ, TIPO_FJ = ' +
        ':NEW_TIPO_FJ, '
      '  NOME = :NEW_NOME, EMAIL = :NEW_EMAIL, SITE = :NEW_SITE, '
      '  ENDERECO = :NEW_ENDERECO, COMPLEMENTO = :NEW_COMPLEMENTO, '
      '  NUMERO = :NEW_NUMERO, BAIRRO = :NEW_BAIRRO, IE = :NEW_IE, '
      '  IM = :NEW_IM, DT_EXCLUIDO = :NEW_DT_EXCLUIDO'
      'WHERE ID_CLIENTE = :OLD_ID_CLIENTE')
    DeleteSQL.Strings = (
      'DELETE FROM CLIENTE'
      'WHERE ID_CLIENTE = :OLD_ID_CLIENTE')
    FetchRowSQL.Strings = (
      
        'SELECT ID_CLIENTE, RAZAO_SOCIAL, FANTASIA, CPF_CNPJ, TIPO_FJ, NO' +
        'ME, '
      '  EMAIL, SITE, ENDERECO, COMPLEMENTO, NUMERO, BAIRRO, IE, '
      '  IM, DT_EXCLUIDO'
      'FROM CLIENTE'
      'WHERE ID_CLIENTE = :ID_CLIENTE')
  end
end
