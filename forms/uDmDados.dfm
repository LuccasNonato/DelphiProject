object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 249
  Width = 445
  object fdCon: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=utF8'
      
        'Database=C:\Users\Luccas\Desktop\projetos\curso delphi\ProjetoCu' +
        'rsoBasico\Banco de dados\DADOS.FDB'
      'DriverID=FB')
    LoginPrompt = False
    Left = 152
    Top = 64
  end
end
