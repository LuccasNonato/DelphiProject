object FormFiltroPai: TFormFiltroPai
  Left = 0
  Top = 0
  Caption = 'FormFiltroPai'
  ClientHeight = 335
  ClientWidth = 908
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 908
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object edtFiltro: TEdit
      Left = 8
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnFiltro: TButton
      Left = 544
      Top = 32
      Width = 75
      Height = 25
      Caption = 'btnFiltro'
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 816
      Top = 1
      Width = 91
      Height = 95
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object Button1: TButton
        Left = 8
        Top = 31
        Width = 75
        Height = 25
        Caption = 'Sair'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object fdQryFiltro: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    Left = 608
    Top = 136
  end
  object dsFiltro: TDataSource
    DataSet = fdQryFiltro
    Left = 608
    Top = 184
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 608
    Top = 240
  end
end
