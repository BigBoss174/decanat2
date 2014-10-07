unit UVedInost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, Mask, Buttons, frxClass,
  frxDBSet, DB, ADODB;

type
  TfUvedInosr = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit10: TDBEdit;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    Label19: TLabel;
    Edit2: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label21: TLabel;
    Label22: TLabel;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    Label20: TLabel;
    Label23: TLabel;
    DBEdit13: TDBEdit;
    Label24: TLabel;
    DBEdit14: TDBEdit;
    Label25: TLabel;
    DBEdit15: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit16: TDBEdit;
    Label28: TLabel;
    DBEdit17: TDBEdit;
    Label29: TLabel;
    DBMemo6: TDBMemo;
    Label30: TLabel;
    DBEdit18: TDBEdit;
    Label31: TLabel;
    DBEdit19: TDBEdit;
    Label32: TLabel;
    DBMemo7: TDBMemo;
    Label33: TLabel;
    DBEdit20: TDBEdit;
    Label34: TLabel;
    DBEdit21: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit22: TDBEdit;
    Label37: TLabel;
    DBEdit23: TDBEdit;
    Label38: TLabel;
    Edit3: TEdit;
    ADODSPPS: TADODataSet;
    ADODataSet1: TADODataSet;
    ADODUvedomIns: TADODataSet;
    frxDBDUvedomIns: TfrxDBDataset;
    frxRUvedomIns: TfrxReport;
    ADODInfoDep: TADODataSet;
    frxDBInfoDep: TfrxDBDataset;
    Edit4: TEdit;
    ADODPrich: TADODataSet;
    frxDBDPrich: TfrxDBDataset;
    frxRuvedomins2: TfrxReport;
    SpeedButton2: TSpeedButton;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    CheckBox3: TCheckBox;
    ADODUvedomInsNameF: TWideStringField;
    ADODUvedomInsnameftran: TStringField;
    ADODUvedomInsNamei: TWideStringField;
    ADODUvedomInsnameItrans: TStringField;
    ADODUvedomInsNameo: TWideStringField;
    ADODUvedomInsnameotrans: TStringField;
    ADODUvedomInswomen: TIntegerField;
    ADODUvedomInsmen: TBooleanField;
    ADODUvedomInsbirthdate: TStringField;
    ADODUvedomInsBirthPlace: TWideStringField;
    ADODUvedomInsName: TWideStringField;
    ADODUvedomInsPassportSeries: TWideStringField;
    ADODUvedomInsPassportNumber: TWideStringField;
    ADODUvedomInspassvidan: TStringField;
    ADODUvedomInsprop: TWideStringField;
    ADODUvedomInsSrokPrebOn: TStringField;
    ADODUvedomInsSrokPrebEnd: TStringField;
    ADODUvedomInsKratnostVisa: TWideStringField;
    ADODUvedomInsVidVisa: TWideStringField;
    ADODUvedomInsTcelVisa: TWideMemoField;
    ADODUvedomInsSeriaVisa: TWideStringField;
    ADODUvedomInsNumberVisa: TWideStringField;
    ADODUvedomInsIDvisa: TWideMemoField;
    ADODUvedomInsdateonvisa: TWideStringField;
    ADODUvedomInsdateoffvisa: TWideStringField;
    ADODUvedomInsdatedog: TStringField;
    ADODUvedomInsAgreementNumber: TWideStringField;
    ADODUvedomInssrarto: TIntegerField;
    ADODUvedomInsendo: TIntegerField;
    Label44: TLabel;
    DateTimePicker4: TDateTimePicker;
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUvedInosr: TfUvedInosr;

implementation

uses uDM, uMain, uDMreports;

{$R *.dfm}

procedure TfUvedInosr.FormShow(Sender: TObject);
begin
Panel3.Visible:=true;
 Panel4.Visible:=false;
 Label21.Font.Color:=clRed;
 Label22.Font.Color:=clblack;
end;

procedure TfUvedInosr.Image1Click(Sender: TObject);
begin
   ADODUvedomIns.Close;
ADODUvedomIns.Parameters[0].value:= dm.adodsStudentDataID.AsInteger;
ADODUvedomIns.open;
Panel4.Visible:=true;
 Panel3.Visible:=false;
 Label22.Font.Color:=clRed;
 Label21.Font.Color:=clblack;
 if ADODUvedomInsendo.AsString<>'' then
 begin
       DateTimePicker3.Date:=strtodate('30.06.'+  (ADODUvedomInsendo.AsString));
          DateTimePicker4.Date:=strtodate('01.09.'+  (ADODUvedomInssrarto.AsString));
end;
end;

procedure TfUvedInosr.Image2Click(Sender: TObject);
begin
Panel3.Visible:=true;
 Panel4.Visible:=false;
 Label21.Font.Color:=clRed;
 Label22.Font.Color:=clblack;
end;

procedure TfUvedInosr.SpeedButton1Click(Sender: TObject);
var varname:string;
begin
ADODUvedomIns.Close;
ADODUvedomIns.Parameters[0].value:= dm.adodsStudentDataID.AsInteger;
ADODUvedomIns.open;
frxRUvedomIns.Variables['number'] := '''' +edit4.Text + '''' ;
frxRUvedomIns.Variables['ufms'] := '''' +edit1.Text + '''' ;
frxRUvedomIns.Variables['vdo'] := '''' +edit2.Text + '''' ;
    ADODPrich.Close;
ADODPrich.Parameters[0].value:= CheckBox1.Checked;
 ADODPrich.Parameters[1].value:= CheckBox2.Checked;
ADODPrich.open;
    

 frxRUvedomIns.ShowReport();
end;

procedure TfUvedInosr.SpeedButton2Click(Sender: TObject);
begin
   DM.ADODSUvedUFMS.UpdateBatch();
   ADODUvedomIns.Close;
ADODUvedomIns.Parameters[0].value:= dm.adodsStudentDataID.AsInteger;
ADODUvedomIns.open;
   if DM.ADODSStudentListEducationForm.AsString<>'������' then
      begin
frxRUvedomIns2.Variables['do'] := '''' +datetostr(DateTimePicker3.Date) + '''' ;
 frxRUvedomIns2.Variables['s'] := '''' +datetostr(DateTimePicker4.Date) + '''' ;
      end
      else
      begin
   frxRUvedomIns2.Variables['do'] := '''' +datetostr(DateTimePicker3.Date) + '''' ;
 frxRUvedomIns2.Variables['s'] := '''' +datetostr(DateTimePicker4.Date) + '''' ;
      end;
frxRUvedomIns2.Variables['osn'] := '''' +edit3.Text + '''' ;
if CheckBox3.Checked then
begin
frxRUvedomIns2.Variables['prikaz'] := '''' +datetostr(DateTimePicker1.Date) + '''' ;
frxRUvedomIns2.Variables['date1'] := '''' +datetostr(DateTimePicker2.Date) + '''' ;
end
else
begin
  frxRUvedomIns2.Variables['prikaz'] := '''' +'' + '''' ;
frxRUvedomIns2.Variables['date1'] := '''' +''+ '''' ;
end;


   frxRUvedomIns2.ShowReport();
end;

end.