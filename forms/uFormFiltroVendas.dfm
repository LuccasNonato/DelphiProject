inherited FormFiltroVendas: TFormFiltroVendas
  Caption = 'Filtro de vendas'
  ClientHeight = 449
  ClientWidth = 957
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 973
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 957
    ExplicitWidth = 957
    inherited Label1: TLabel
      Width = 33
      Caption = 'Cliente'
      ExplicitWidth = 33
    end
    object Label2: TLabel [1]
      Left = 223
      Top = 16
      Width = 84
      Height = 13
      Caption = 'Per'#237'odo de venda'
    end
    object Label3: TLabel [2]
      Left = 429
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    inherited edtFiltro: TEdit
      Width = 209
      ExplicitWidth = 209
    end
    inherited btnFiltro: TButton
      Left = 664
      Caption = 'Filtrar'
      OnClick = btnFiltroClick
      ExplicitLeft = 664
    end
    inherited Panel2: TPanel
      Left = 865
      ExplicitLeft = 865
    end
    object edtData1: TDateTimePicker
      Left = 223
      Top = 35
      Width = 97
      Height = 21
      Date = 42591.781641655090000000
      Time = 42591.781641655090000000
      TabOrder = 3
    end
    object edtData2: TDateTimePicker
      Left = 326
      Top = 35
      Width = 97
      Height = 21
      Date = 42591.781641655090000000
      Time = 42591.781641655090000000
      TabOrder = 4
    end
    object edtCodigoVenda: TEdit
      Left = 429
      Top = 35
      Width = 92
      Height = 21
      TabOrder = 5
    end
    object cbFaturado: TCheckBox
      Left = 527
      Top = 36
      Width = 97
      Height = 17
      Caption = 'Faturado'
      TabOrder = 6
    end
    object btnImprimir: TButton
      Left = 744
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 7
      OnClick = btnImprimirClick
    end
    object Button2: TButton
      Left = 664
      Top = 66
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 745
      Top = 66
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 9
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 97
    Width = 957
    Height = 352
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
      'SELECT V.ID_VENDA_CAB,'
      '         V.ID_CLIENTE,'
      '         DECODE(C.tipo_fj, '#39'F'#39', C.nome, C.razao_social) cliente,'
      '         V.data,'
      '         COALESCE(V.faturado,'#39'N'#39') FATURADO'
      
        '   FROM VENDA_CAB V INNER JOIN CLIENTE C ON C.id_cliente = V.id_' +
        'cliente')
    object fdQryFiltroID_VENDA_CAB: TIntegerField
      FieldName = 'ID_VENDA_CAB'
      Origin = 'ID_VENDA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdQryFiltroCLIENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryFiltroDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdQryFiltroFATURADO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
  end
  object frVendas: TfrxReport
    Version = '5.5.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42594.786121458300000000
    ReportOptions.LastChange = 42594.786121458300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 472
    Top = 232
    Datasets = <
      item
        DataSet = frDBVendas
        DataSetName = 'frDBVendas'
      end>
    Variables = <>
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 15.118120000000000000
          Width = 718.110236220472000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE VENDAS')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 90.708720000000000000
        Width = 718.110700000000000000
        Condition = 'frDBVendas."CLIENTE"'
        object frDBVendasCLIENTE: TfrxMemoView
          Left = 68.031540000000000000
          Top = 11.338590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Memo.UTF8W = (
            '[frDBVendas."CLIENTE"]')
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente: ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Top = 49.133890000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 283.464750000000000000
          Top = 49.133890000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 374.173470000000000000
          Top = 49.133890000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 468.661720000000000000
          Top = 49.133890000000010000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 551.811380000000000000
          Top = 49.133890000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 638.740570000000000000
          Top = 49.133890000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 37.559060000000000000
          Top = 68.031540000000010000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frDBVendas
        DataSetName = 'frDBVendas'
        RowCount = 0
        Stretched = True
        object frDBVendasPRODUTO: TfrxMemoView
          Left = 34.795300000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'PRODUTO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frDBVendas."PRODUTO"]')
          ParentFont = False
        end
        object frDBVendasQTD: TfrxMemoView
          Left = 283.464750000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QTD'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."QTD"]')
          ParentFont = False
        end
        object frDBVendasVALOR_UNITARIO: TfrxMemoView
          Left = 374.173470000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_UNITARIO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."VALOR_UNITARIO"]')
          ParentFont = False
        end
        object frDBVendasSUBTOTAL: TfrxMemoView
          Left = 464.882190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SUBTOTAL'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."SUBTOTAL"]')
          ParentFont = False
        end
        object frDBVendasDESCONTO: TfrxMemoView
          Left = 551.811380000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."DESCONTO"]')
          ParentFont = False
        end
        object frDBVendasTOTAL: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."TOTAL"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 37.795300000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 464.882190000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBVendas."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 551.811380000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBVendas."DESCONTO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 638.740570000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBVendas."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 45.354360000000010000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frDBVendas: TfrxDBDataset
    UserName = 'frDBVendas'
    CloseDataSource = False
    DataSet = fdQryRelatorio
    BCDToCurrency = False
    Left = 472
    Top = 284
  end
  object fdQryRelatorio: TFDQuery
    Active = True
    Connection = dmDados.fdCon
    SQL.Strings = (
      'SELECT V.ID_VENDA_CAB,'
      '       V.ID_CLIENTE,'
      '       DECODE(C.tipo_fj, '#39'F'#39', C.nome, C.razao_social) cliente, '
      '       V.data,'
      '       COALESCE(V.faturado,'#39'N'#39') FATURADO,'
      '       P.descricao PRODUTO,'
      '       I.qtd,'
      '       I.valor_unitario,'
      '       I.valor_unitario * I.QTD SUBTOTAL,'
      '       COALESCE(I.desconto,0) DESCONTO,'
      
        '       (I.qtd * I.valor_unitario) - COALESCE(I.desconto, 0) TOTA' +
        'L'
      ''
      
        ' FROM VENDA_CAB V INNER JOIN CLIENTE C ON C.id_cliente = V.id_cl' +
        'iente'
      
        '                  inner join venda_item I ON I.id_venda_cab = V.' +
        'id_venda_cab'
      
        '                  INNER JOIN PRODUTO P ON P.id_produto = I.id_pr' +
        'oduto'
      'WHERE 1=1'
      ' ORDER BY DECODE(C.tipo_fj, '#39'F'#39', C.nome, C.razao_social),'
      '          P.DESCRICAO')
    Left = 600
    Top = 336
    object fdQryRelatorioID_VENDA_CAB: TIntegerField
      FieldName = 'ID_VENDA_CAB'
      Origin = 'ID_VENDA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryRelatorioID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdQryRelatorioCLIENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryRelatorioDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdQryRelatorioFATURADO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object fdQryRelatorioPRODUTO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryRelatorioQTD: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTD'
      Origin = 'QTD'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioVALOR_UNITARIO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioSUBTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioDESCONTO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
