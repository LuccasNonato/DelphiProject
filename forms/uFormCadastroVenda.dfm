inherited FormCadastroVenda: TFormCadastroVenda
  Caption = 'Venda de produtos'
  ClientHeight = 508
  ClientWidth = 965
  ExplicitWidth = 971
  ExplicitHeight = 537
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCabecalho: TPanel
    Width = 965
    ExplicitWidth = 965
    object btnImprimir: TBitBtn
      Left = 607
      Top = 0
      Width = 82
      Height = 41
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = btnImprimirClick
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 41
    Width = 965
    Height = 64
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 76
      Height = 13
      Caption = 'ID_VENDA_CAB'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 119
      Top = 8
      Width = 58
      Height = 13
      Caption = 'ID_CLIENTE'
    end
    object Label3: TLabel
      Left = 320
      Top = 9
      Width = 27
      Height = 13
      Caption = 'DATA'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 459
      Top = 8
      Width = 88
      Height = 13
      Caption = 'DATA_FATURADO'
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 105
      Height = 21
      DataField = 'ID_VENDA_CAB'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 320
      Top = 24
      Width = 130
      Height = 21
      DataField = 'DATA'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 459
      Top = 24
      Width = 134
      Height = 21
      DataField = 'DATA_FATURADO'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object edtCliente: TDBLookupComboBox
      Left = 119
      Top = 24
      Width = 195
      Height = 21
      DataField = 'ID_CLIENTE'
      DataSource = dsCadastro
      KeyField = 'ID_CLIENTE'
      ListField = 'NOMECLIENTE'
      ListSource = Lookup.dsClientes
      TabOrder = 0
    end
    object DBCheckBox1: TDBCheckBox
      Left = 608
      Top = 26
      Width = 97
      Height = 17
      Caption = 'Faturado'
      DataField = 'FATURADO'
      DataSource = dsCadastro
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 424
    Width = 965
    Height = 84
    Align = alBottom
    TabOrder = 2
    object Label11: TLabel
      Left = 301
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Sub total'
    end
    object Label12: TLabel
      Left = 428
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Desconto'
    end
    object Label13: TLabel
      Left = 555
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object edtTotSubTotal: TAdvMoneyEdit
      Left = 301
      Top = 32
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      ReadOnly = True
      TabOrder = 0
      Text = '0,00'
      Visible = True
      Version = '1.1.2.10'
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
    end
    object edtTotDesconto: TAdvMoneyEdit
      Left = 428
      Top = 32
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      ReadOnly = True
      TabOrder = 1
      Text = '0,00'
      Visible = True
      Version = '1.1.2.10'
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
    end
    object edtTotTotal: TAdvMoneyEdit
      Left = 555
      Top = 32
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      ReadOnly = True
      TabOrder = 2
      Text = '0,00'
      Visible = True
      Version = '1.1.2.10'
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 105
    Width = 965
    Height = 319
    Align = alClient
    TabOrder = 3
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 22
      Height = 13
      Caption = 'Item'
    end
    object Label6: TLabel
      Left = 174
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label7: TLabel
      Left = 301
      Top = 16
      Width = 64
      Height = 13
      Caption = 'Valor Unitario'
    end
    object Label8: TLabel
      Left = 426
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Desconto'
    end
    object Label9: TLabel
      Left = 553
      Top = 16
      Width = 42
      Height = 13
      Caption = 'SubTotal'
    end
    object Label10: TLabel
      Left = 680
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object edtDescricaoItem: TDBLookupComboBox
      Left = 8
      Top = 32
      Width = 160
      Height = 21
      KeyField = 'ID_PRODUTO'
      ListField = 'DESCRICAO'
      ListSource = Lookup.dsProdutos
      TabOrder = 0
      OnClick = edtDescricaoItemClick
    end
    object edtQuantidade: TAdvMoneyEdit
      Left = 174
      Top = 32
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 1
      Text = '0,00'
      Visible = True
      OnChange = edtQuantidadeChange
      Version = '1.1.2.10'
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
    end
    object edtValorUnitario: TAdvMoneyEdit
      Left = 301
      Top = 32
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 2
      Text = '0,00'
      Visible = True
      OnChange = edtValorUnitarioChange
      Version = '1.1.2.10'
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
    end
    object edtDesconto: TAdvMoneyEdit
      Left = 426
      Top = 32
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 3
      Text = '0,00'
      Visible = True
      OnChange = edtDescontoChange
      Version = '1.1.2.10'
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
    end
    object edtSubTotal: TAdvMoneyEdit
      Left = 553
      Top = 32
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      ReadOnly = True
      TabOrder = 4
      Text = '0,00'
      Visible = True
      Version = '1.1.2.10'
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 59
      Width = 963
      Height = 259
      Align = alBottom
      DataSource = dsItens
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Title.Caption = 'Codigo'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoProduto'
          Title.Caption = 'Descri'#231#227'o'
          Width = 379
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_UNITARIO'
          Title.Caption = 'Valor unitario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Caption = 'Desconto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SubTotal'
          Title.Caption = 'Sub total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Visible = True
        end>
    end
    object edtTotal: TAdvMoneyEdit
      Left = 680
      Top = 32
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      ReadOnly = True
      TabOrder = 5
      Text = '0,00'
      Visible = True
      Version = '1.1.2.10'
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
    end
    object Button1: TButton
      Left = 807
      Top = 28
      Width = 75
      Height = 25
      Caption = '&Gravar item'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 888
      Top = 28
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  inherited fdQryCadastro: TFDQuery
    Active = True
    AfterOpen = fdQryCadastroAfterOpen
    AfterInsert = fdQryCadastroAfterInsert
    BeforePost = fdQryCadastroBeforePost
    AfterScroll = fdQryCadastroAfterScroll
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDA_CAB_ID'
    UpdateOptions.AutoIncFields = 'ID_VENDA_CAB'
    UpdateObject = nil
    SQL.Strings = (
      'SELECT * FROM VENDA_CAB')
    Left = 936
    Top = 352
    object fdQryCadastroID_VENDA_CAB: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VENDA_CAB'
      Origin = 'ID_VENDA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQryCadastroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdQryCadastroDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdQryCadastroFATURADO: TWideStringField
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      Size = 1
    end
    object fdQryCadastroDATA_FATURADO: TDateField
      FieldName = 'DATA_FATURADO'
      Origin = 'DATA_FATURADO'
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 936
    Top = 408
  end
  inherited fdTransaction: TFDTransaction
    Left = 936
    Top = 456
  end
  inherited dsCadastro: TDataSource
    Left = 936
    Top = 304
  end
  object fdQryItens: TFDQuery
    AfterInsert = fdQryItensAfterInsert
    AfterPost = fdQryItensAfterPost
    AfterDelete = fdQryItensAfterDelete
    OnCalcFields = fdQryItensCalcFields
    Connection = dmDados.fdCon
    Transaction = fdtItens
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDA_ITEM_ID'
    UpdateOptions.AutoIncFields = 'ID_VENDA_ITEM'
    SQL.Strings = (
      'SELECT * FROM VENDA_ITEM'
      'WHERE ID_VENDA_CAB = :ID_VENDA_CAB')
    Left = 785
    Top = 224
    ParamData = <
      item
        Name = 'ID_VENDA_CAB'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdQryItensID_VENDA_ITEM: TFDAutoIncField
      FieldName = 'ID_VENDA_ITEM'
      Origin = 'ID_VENDA_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object fdQryItensQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryItensVALOR_UNITARIO: TSingleField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
    object fdQryItensDESCONTO: TSingleField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object fdQryItensID_VENDA_CAB: TIntegerField
      FieldName = 'ID_VENDA_CAB'
      Origin = 'ID_VENDA_CAB'
    end
    object fdQryItensDescricaoProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoProduto'
      LookupDataSet = Lookup.fdQryProdutos
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 80
      Lookup = True
    end
    object fdQryItensSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      Calculated = True
    end
    object fdQryItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object dsItens: TDataSource
    DataSet = fdQryItens
    Left = 785
    Top = 176
  end
  object fdtItens: TFDTransaction
    Connection = dmDados.fdCon
    Left = 784
    Top = 272
  end
  object frVenda: TfrxReport
    Version = '6.5.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42555.758927326400000000
    ReportOptions.LastChange = 42555.778158402800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 448
    Top = 233
    Datasets = <
      item
        DataSet = frxDadosVenda
        DataSetName = 'frxDadosVenda'
      end
      item
        DataSet = frxItensVenda
        DataSetName = 'frxItensVenda'
      end>
    Variables = <
      item
        Name = ' Curso'
        Value = Null
      end
      item
        Name = 'Cliente'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosVenda."ID_VENDA_CAB"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000001000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo venda')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 22.677180000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosVenda."ID_CLIENTE"] - [Cliente]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 3.779530000000001000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo cliente ')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 64.252010000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Codigo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 64.252010000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descricao produto')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 64.252010000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 64.252010000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor unit'#225'rio')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 64.252010000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub total')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 64.252010000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 64.252010000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 3.779530000000001000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxItensVenda
        DataSetName = 'frxItensVenda'
        RowCount = 0
        object frxItensVendaID_PRODUTO: TfrxMemoView
          AllowVectorExport = True
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItensVenda."ID_PRODUTO"]')
          ParentFont = False
        end
        object frxItensVendaDescricaoProduto: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'DescricaoProduto'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."DescricaoProduto"]')
          ParentFont = False
        end
        object frxItensVendaQTD: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QTD'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItensVenda."QTD"]')
          ParentFont = False
        end
        object frxItensVendaVALOR_UNITARIO: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_UNITARIO'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItensVenda."VALOR_UNITARIO"]')
          ParentFont = False
        end
        object frxItensVendaSubTotal: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'SubTotal'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItensVenda."SubTotal"]')
          ParentFont = False
        end
        object frxItensVendaDESCONTO: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItensVenda."DESCONTO"]')
          ParentFont = False
        end
        object frxItensVendaTotal: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItensVenda."Total"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 3.779527560000020000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxItensVenda."Total">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 3.779530000000022000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
    end
  end
  object frxDadosVenda: TfrxDBDataset
    UserName = 'frxDadosVenda'
    CloseDataSource = False
    DataSet = fdQryCadastro
    BCDToCurrency = False
    Left = 448
    Top = 289
  end
  object frxItensVenda: TfrxDBDataset
    UserName = 'frxItensVenda'
    CloseDataSource = False
    DataSet = fdQryItens
    BCDToCurrency = False
    Left = 448
    Top = 337
  end
end
