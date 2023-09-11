inherited FormFiltroClientes: TFormFiltroClientes
  Caption = 'Filtro de clientes'
  ClientHeight = 419
  ClientWidth = 1069
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1085
  ExplicitHeight = 458
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1069
    ExplicitWidth = 1069
    inherited Label1: TLabel
      Top = 12
      Width = 76
      Caption = 'Nome do cliente'
      ExplicitTop = 12
      ExplicitWidth = 76
    end
    object Label2: TLabel [1]
      Left = 191
      Top = 12
      Width = 41
      Height = 13
      Caption = 'Fantasia'
    end
    object Label3: TLabel [2]
      Left = 318
      Top = 12
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    object Label4: TLabel [3]
      Left = 445
      Top = 12
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    inherited edtFiltro: TEdit
      Top = 31
      Width = 177
      ExplicitTop = 31
      ExplicitWidth = 177
    end
    inherited btnFiltro: TButton
      Left = 583
      Top = 29
      Caption = 'Filtrar'
      OnClick = btnFiltroClick
      ExplicitLeft = 583
      ExplicitTop = 29
    end
    inherited Panel2: TPanel
      Left = 977
      ExplicitLeft = 977
    end
    object edtFantasia: TEdit
      Left = 191
      Top = 31
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edtCnpj: TEdit
      Left = 318
      Top = 31
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edtCodigo: TEdit
      Left = 445
      Top = 31
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object Button2: TButton
      Left = 664
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 6
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 745
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 7
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 97
    Width = 1069
    Height = 322
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Title.Caption = 'Razao social'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Caption = 'Fantasia'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Title.Caption = 'CNPJ/CPF'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_FJ'
        Title.Caption = 'Tipo Pessoa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Caption = 'E-mail'
        Width = 200
        Visible = True
      end>
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    object fdQryFiltroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object fdQryFiltroCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdQryFiltroTIPO_FJ: TWideStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object fdQryFiltroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryFiltroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryFiltroSITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryFiltroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryFiltroCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object fdQryFiltroNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryFiltroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryFiltroIE: TWideStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object fdQryFiltroIM: TWideStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object fdQryFiltroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object fdQryFiltroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryFiltroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
  end
end
