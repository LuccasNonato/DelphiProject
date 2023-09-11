inherited FormFiltroProdutos: TFormFiltroProdutos
  Caption = 'Filtro de produtos'
  ClientHeight = 421
  ClientWidth = 970
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 986
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 970
    ExplicitWidth = 970
    inherited Label1: TLabel
      Width = 33
      Caption = 'Codigo'
      ExplicitWidth = 33
    end
    object Label2: TLabel [1]
      Left = 95
      Top = 15
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    inherited edtFiltro: TEdit
      Width = 81
      ExplicitWidth = 81
    end
    inherited btnFiltro: TButton
      Left = 512
      Caption = 'Filtrar'
      OnClick = btnFiltroClick
      ExplicitLeft = 512
    end
    inherited Panel2: TPanel
      Left = 878
      ExplicitLeft = 878
    end
    object edtDescricao: TEdit
      Left = 95
      Top = 34
      Width = 314
      Height = 21
      TabOrder = 3
    end
    object Button3: TButton
      Left = 745
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 664
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 97
    Width = 970
    Height = 324
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
      'SELECT P.ID_PRODUTO,'
      '       P.descricao,'
      '       P.qtd,'
      '       P.custo,'
      '       P.v_unitario,'
      '       P.unidade,'
      '       P.peso_liquido,'
      '       P.peso_bruto,'
      '       P.fabricante,'
      '       P.marca_modelo,'
      '       F.razao_social FORNECEDOR'
      
        '  FROM PRODUTO P LEFT JOIN FORNECEDOR F ON F.id_fornecedor = P.i' +
        'd_fornecedor'
      ' WHERE 1 = 1')
    object fdQryFiltroID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryFiltroQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryFiltroCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fdQryFiltroV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
    object fdQryFiltroUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 4
    end
    object fdQryFiltroPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fdQryFiltroPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fdQryFiltroFABRICANTE: TWideStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object fdQryFiltroMARCA_MODELO: TWideStringField
      FieldName = 'MARCA_MODELO'
      Origin = 'MARCA_MODELO'
      Size = 255
    end
    object fdQryFiltroFORNECEDOR: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR'
      Origin = 'RAZAO_SOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
