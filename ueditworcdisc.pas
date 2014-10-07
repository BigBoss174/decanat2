unit ueditworcdisc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,DBGridEh, DBCtrlsEh, DBLookupEh, Buttons, StdCtrls, Mask, DBCtrls,
  ExtCtrls,HTMLHelpViewer;
    {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  Tfeditworcdisc = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBNumberEditEh1: TDBNumberEditEh;
    DBNumberEditEh2: TDBNumberEditEh;
    DBNumberEditEh3: TDBNumberEditEh;
    DBNumberEditEh4: TDBNumberEditEh;
    DBNumberEditEh5: TDBNumberEditEh;
    DBNumberEditEh6: TDBNumberEditEh;
    DBNumberEditEh7: TDBNumberEditEh;
    DBNumberEditEh8: TDBNumberEditEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBCheckBoxEh2: TDBCheckBoxEh;
    DBCheckBoxEh3: TDBCheckBoxEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBComboBoxEh1: TDBComboBoxEh;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel5: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    Button1: TButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  feditworcdisc: Tfeditworcdisc;

implementation

uses uDM, uMain;

{$R *.dfm}

procedure Tfeditworcdisc.Button1Click(Sender: TObject);
begin
 if  Dm.adodsWorkCurrDiscDateChange.Value=0 then
   begin
   panel5.Visible:=true;
   Button1.Visible:=false;
   feditworcdisc.DBDateTimeEditEh2.Text:=datetostr(date);
     feditworcdisc.DBDateTimeEditEh1.Text:=timetostr(time);
   end;
end;

procedure Tfeditworcdisc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DM.adodsWorkCurrDisc.CancelBatch();

 Button1.Visible:=false;
 Panel5.Visible:=false;
end;

procedure Tfeditworcdisc.SpeedButton1Click(Sender: TObject);
begin
 DM.adodsWorkCurrDisc.CancelBatch();
 feditworcdisc.Close;
 Button1.Visible:=false;
 Panel5.Visible:=false;
end;

procedure Tfeditworcdisc.SpeedButton2Click(Sender: TObject);
var i:ttreenode;
begin
 DM.adodsWorkCurrDisc.UpdateBatch();

 DM.ADOCLogWorKCurDisc.Parameters[1].Value :=DM.adodsSecurityGetRightsid.asinteger;
          DM.ADOCLogWorKCurDisc.Parameters[2].Value :=dm.adodsWorkCurrDiscSemester.AsInteger;
          DM.ADOCLogWorKCurDisc.Parameters[3].Value :=dm.adodsWorkCurrDiscIDSubject.AsInteger ;
          DM.ADOCLogWorKCurDisc.Parameters[4].Value :=dm.adodsWorkCurrDiscHourLecture.AsInteger;
          DM.ADOCLogWorKCurDisc.Parameters[5].Value :=dm.adodsWorkCurrDiscHourSeminar.AsInteger;
          DM.ADOCLogWorKCurDisc.Parameters[6].Value :=dm.adodsWorkCurrDiscHourPractice.AsInteger;
          DM.ADOCLogWorKCurDisc.Parameters[7].Value :=dm.adodsWorkCurrDiscHourSmallGroup.AsInteger;
          DM.ADOCLogWorKCurDisc.Parameters[8].Value :=dm.adodsWorkCurrDiscHourIndividual.AsInteger;
          DM.ADOCLogWorKCurDisc.Parameters[9].Value :=dm.adodsWorkCurrDiscHourSelfWork.AsInteger;
          DM.ADOCLogWorKCurDisc.Parameters[10].Value :=dm.adodsWorkCurrDiscControlTest.AsBoolean;
          DM.ADOCLogWorKCurDisc.Parameters[11].Value :=dm.adodsWorkCurrDiscControlExamination.AsBoolean;
          DM.ADOCLogWorKCurDisc.Parameters[12].Value :=dm.adodsWorkCurrDiscControlCourseWork.AsBoolean;
          DM.ADOCLogWorKCurDisc.Parameters[13].Value :=dm.adodsWorkCurrDiscDateChange.AsDateTime;
          DM.ADOCLogWorKCurDisc.Parameters[14].Value :=2;
          DM.ADOCLogWorKCurDisc.Parameters[15].Value :=dm.adodsWorkCurrDiscID.AsInteger;
         dm.ADOCLogWorKCurDisc.Parameters[16].Value :=DM.adodsWorkCurriculumid.AsInteger;
                dm.ADOCLogWorKCurDisc.Execute;
 dm.ADODUpdSessionOld.close;
 dm.ADODUpdSessionOld.Parameters[1].Value:=dm.adodsWorkCurriculumidGroup.AsInteger;
 dm.ADODUpdSessionOld.open;

// i:=fmain.TTVmain.Selected.GetNext;
//while i.Level>2 do
//begin
//dm.ADODMarks.close;
//     dm.ADODMarks.Parameters[1].Value:=i.StateIndex;
//     dm.ADODMarks.open;
// i.ImageIndex:=dm.ADodmarks.Fields.Fields[0].AsInteger;
// i.SelectedIndex:=dm.ADodmarks.Fields.Fields[0].AsInteger;
// i:=i.GetNext;
//end;
                 feditworcdisc.Close;

end;

end.
