inherited FormFiltroUsuario: TFormFiltroUsuario
  Caption = 'FormFiltroUsuario'
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 27
      Caption = 'Nome'
      ExplicitWidth = 27
    end
    inherited edtFiltro: TEdit
      Width = 225
      ExplicitWidth = 225
    end
    inherited btnFiltro: TButton
      Left = 265
      Top = 34
      Caption = 'Filtrar'
      OnClick = btnFiltroClick
      ExplicitLeft = 265
      ExplicitTop = 34
    end
    object Button2: TButton
      Left = 401
      Top = 34
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 3
    end
    object Button3: TButton
      Left = 482
      Top = 34
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 97
    Width = 908
    Height = 238
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
