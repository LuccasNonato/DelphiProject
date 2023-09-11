object FormLogin: TFormLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Login'
  ClientHeight = 236
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 58
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object Label2: TLabel
    Left = 104
    Top = 100
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object edtLogin: TEdit
    Left = 104
    Top = 73
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object edtSenha: TEdit
    Left = 104
    Top = 115
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 62
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 150
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 287
    Height = 36
    Align = alTop
    Caption = 'LOGIN'
    TabOrder = 4
  end
  object fdQryLogin: TFDQuery
    Connection = dmDados.fdCon
    SQL.Strings = (
      'SELECT LOGIN, '
      '       SENHA '
      '  FROM USUARIO '
      ' WHERE LOGIN = :LOGIN')
    Left = 16
    Top = 72
    ParamData = <
      item
        Name = 'LOGIN'
        ParamType = ptInput
      end>
  end
end
