object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 377
  Width = 734
  object ADOConnection1: TADOConnection
    ConnectionTimeout = 0
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 32
  end
end
