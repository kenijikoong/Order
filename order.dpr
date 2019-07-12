program order;

uses
  Vcl.Forms,
  Ufrm_mainmenu in 'Ufrm_mainmenu.pas' {frm_mainmenu},
  UDM in 'UDM.pas' {DM: TDataModule},
  Ufrm_somsak in 'Ufrm_somsak.pas' {frm_somsak};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_mainmenu, frm_mainmenu);
  Application.Run;
end.
