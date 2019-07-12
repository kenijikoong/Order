unit Ufrm_somsak;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Data.Win.ADODB, Vcl.StdCtrls, cxTextEdit, cxSpinEdit, cxDBNavigator,
  ShellAPI,cxExport,cxGridExportLink, dxPSPDFExport,
  Vcl.ImgList, Vcl.Menus, cxButtons, cxContainer, cxCheckBox, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, dxPSRELnk, cxCurrencyEdit, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList;

type
  Tfrm_somsak = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1itemcode: TcxGridDBColumn;
    cxGrid1DBTableView1itemname: TcxGridDBColumn;
    cxGrid1DBTableView1findname: TcxGridDBColumn;
    cxGrid1DBTableView1unit: TcxGridDBColumn;
    cxGrid1DBTableView1price: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn: TcxGridDBColumn;
    Edit1: TEdit;
    Label1: TLabel;
    cxDBNavigator1: TcxDBNavigator;
    cxImageList1: TcxImageList;
    ADODataSet1itemcode: TWideStringField;
    ADODataSet1itemname: TWideStringField;
    ADODataSet1findname: TWideStringField;
    ADODataSet1unit: TWideStringField;
    ADODataSet1price: TFloatField;
    ADODataSet1ราคา: TFloatField;
    ADODataSet1totalprice: TCurrencyField;
    cxButton1: TcxButton;
    cxCheckBox1: TcxCheckBox;
    ADODataSet1itemorder: TWideStringField;
    Panel3: TPanel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    SaveDialog1: TSaveDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ADODataSet1itemorderChange(Sender: TField);
    procedure ADODataSet1CalcFields(DataSet: TDataSet);
    procedure ADODataSet1findnameChange(Sender: TField);
    procedure cxButton1Click(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_somsak: Tfrm_somsak;

implementation

{$R *.dfm}

uses UDM;

procedure Tfrm_somsak.ADODataSet1CalcFields(DataSet: TDataSet);
begin
  if ADODataSet1['itemorder']<>'' then ADODataSet1['totalprice']:=ADODataSet1['price']*ADODataSet1['itemorder'];
end;

procedure Tfrm_somsak.ADODataSet1findnameChange(Sender: TField);
begin
  try
    if ADODataSet1.State in [dsEdit, dsInsert]  then
    begin
      ADODataSet1.Post;
      ADODataSet1.UpdateRecord;
    end;
  except
  end;
end;

procedure Tfrm_somsak.ADODataSet1itemorderChange(Sender: TField);
begin
  try
    if ADODataSet1.State in [dsEdit, dsInsert]  then
    begin
      //ADODataSet1.Edit;
      ADODataSet1.Post;
      ADODataSet1.UpdateRecord;
    end;
  except
  end;
end;

procedure Tfrm_somsak.cxButton1Click(Sender: TObject);
begin
  Edit1.Text:='';
  cxCheckBox1.Checked:=False;
  with ADODataSet1 do
  begin
    Close;
    CommandText:='select * from [รายการสินค้าพร้อมราคา$]';
    Open;
  end;
end;

procedure Tfrm_somsak.cxButton2Click(Sender: TObject);
var strFilePath,xlsname:string;
begin
  cxGrid1DBTableView1findname.Visible:=False;
  SaveDialog1.FileName:=Self.Caption;
  if SaveDialog1.Execute then
  begin
    xlsname:=SaveDialog1.FileName+'.xls';
    strFilePath:=xlsname;
    ExportGridToExcel(strFilePath, cxGrid1, True, True,True);
    shellexecute(handle, 'Open', pchar(strFilePath), nil, nil,sw_normal);
  end;
  cxGrid1DBTableView1findname.Visible:=True;
end;

procedure Tfrm_somsak.cxButton3Click(Sender: TObject);
var strFilePath,PDFname:string;
begin
  cxGrid1DBTableView1findname.Visible:=False;
  begin
    dxComponentPrinter1Link1.ExportToPDF;
  end;
  cxGrid1DBTableView1findname.Visible:=True;
end;


procedure Tfrm_somsak.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  if cxCheckBox1.Checked=True then
  with ADODataSet1 do
  begin
    Close;
    CommandText:='select * from [รายการสินค้าพร้อมราคา$]'+
                 'where itemorder>''0'' ';
    Open;
  end else
  with ADODataSet1 do
  begin
    Close;
    CommandText:='select * from [รายการสินค้าพร้อมราคา$]';
    Open;
  end;
end;

procedure Tfrm_somsak.Edit1Change(Sender: TObject);
begin
  cxCheckBox1.Checked:=False;
  if Edit1.Text<>'' then
  begin
    with ADODataSet1 do
    begin
      Close;
      CommandText:='select * from [รายการสินค้าพร้อมราคา$]'+
                   'where itemname Like :aa OR findname Like :bb';
      Parameters.ParamValues['aa']:='%'+Edit1.Text+'%';
      Parameters.ParamValues['bb']:='%'+Edit1.Text+'%';
      open;
    end;
  end;
end;

procedure Tfrm_somsak.Edit1Enter(Sender: TObject);
begin
  LoadkeyboardLayout(PChar('0000041e'),1);
end;

procedure Tfrm_somsak.Edit1Exit(Sender: TObject);
begin
  LoadkeyboardLayout(PChar('00000409'),1);
end;

procedure Tfrm_somsak.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frm_somsak:=nil;
end;

procedure Tfrm_somsak.FormCreate(Sender: TObject);
begin
  with ADODataSet1 do
  begin
    Close;
    CommandText:='select * from [รายการสินค้าพร้อมราคา$]';
    Open;
  end;

end;

end.
