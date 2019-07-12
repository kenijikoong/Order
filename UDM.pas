unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB,Vcl.Dialogs,Vcl.Graphics,
  Winapi.Windows,Vcl.Controls,Vcl.Forms;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var //t :string;
    path:string;
    constr:string;
begin
  //t:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\ร้านยา\Order\template\somsak.xls;Extended Properties=Excel 8.0;Persist Security Info=False';
  path:=ExtractFilePath(Application.EXEName)+'template\somsak.xls;';
  constr:='Provider=Microsoft.Jet.OLEDB.4.0;'
  +'Data Source='+path+'Extended Properties=Excel 8.0;Persist Security Info=True';
  with ADOConnection1 do
  begin
    Close;
    ConnectionString:=constr;
    Open;
  end;
end;

end.
