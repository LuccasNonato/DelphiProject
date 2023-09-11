inherited FormFiltroFornecedores: TFormFiltroFornecedores
  Caption = 'Filtro de fornecedores'
  ClientHeight = 370
  ClientWidth = 936
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 952
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 936
    ExplicitWidth = 936
    inherited Label1: TLabel
      Width = 59
      Caption = 'Razao social'
      ExplicitWidth = 59
    end
    object Label2: TLabel [1]
      Left = 287
      Top = 16
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    inherited edtFiltro: TEdit
      Width = 273
      ExplicitWidth = 273
    end
    inherited btnFiltro: TButton
      Left = 488
      Caption = 'Filtro'
      OnClick = btnFiltroClick
      ExplicitLeft = 488
    end
    inherited Panel2: TPanel
      Left = 844
      ExplicitLeft = 844
    end
    object edtCnpj: TEdit
      Left = 287
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 664
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 745
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 97
    Width = 936
    Height = 273
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    object fdQryFiltroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryFiltroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryFiltroCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object fdQryFiltroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryFiltroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryFiltroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryFiltroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object fdQryFiltroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
  end
end
