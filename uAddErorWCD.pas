unit uAddErorWCD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, ExtCtrls;
   {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  TFAddErrorWCD = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddErrorWCD: TFAddErrorWCD;

implementation

uses uDM;

{$R *.dfm}

procedure TFAddErrorWCD.Button1Click(Sender: TObject);
begin
if FAddErrorWCD.Width<681 then
begin

dbgrideh1.FieldColumns['HourSmallGroup'].Visible :=true;
dbgrideh1.FieldColumns['HourIndividual'].Visible :=true;
dbgrideh1.FieldColumns['HourSelfWork'].Visible :=true;
FAddErrorWCD.Width:=895;
   button1.Caption:='<';
     button1.Left:=865;
end
else
begin
dbgrideh1.FieldColumns['HourSmallGroup'].Visible :=false;
dbgrideh1.FieldColumns['HourIndividual'].Visible :=false;
dbgrideh1.FieldColumns['HourSelfWork'].Visible :=false;
FAddErrorWCD.Width:=680;
 button1.Caption:='>';
     button1.Left:=650;
end;
end;


procedure TFAddErrorWCD.ComboBox1CloseUp(Sender: TObject);
begin
DM.ADODSWCDADDER.Close;
  if(ComboBox1.ItemIndex=0)
  then
      begin
      DM.ADODSWCDADDER.Parameters[1].Value := 1;
     DM.ADODSWCDADDER.Parameters[2].Value := 10;
      end
  else
      begin
      DM.ADODSWCDADDER.Parameters[1].Value := ComboBox1.ItemIndex;
      DM.ADODSWCDADDER.Parameters[2].Value := ComboBox1.ItemIndex;
      end;
  DM.ADODSWCDADDER.Open;
end;

procedure TFAddErrorWCD.DBGridEh1DblClick(Sender: TObject);
var ExB:Word;
begin
  ExB:=MessageBox(handle,pchar('������� ������ �������?'),pchar('�������������'),308);
  if Exb=IDYES then
   begin
dm.ADOCUpdateStudentExam.Parameters[1].Value:=dm.adodsSessionID.AsInteger;
dm.ADOCUpdateStudentExam.Parameters[2].Value:=dm.ADODSWCDADDERID.AsInteger;
 dm.ADOCUpdateStudentExam.Execute;
 FAddErrorWCD.Close;
   DM.adodsSession.Close;
     DM.adodsSession.Open;

 end ;
  dm.ADODUpdSessionOld.close;
 dm.ADODUpdSessionOld.Parameters[1].Value:=dm.adodsWorkCurriculumidGroup.AsInteger;
dm.ADODUpdSessionOld.open;
  dm.ADOCLogStudExam.Parameters[1].Value:=DM.adodsSecurityGetRightsid.asinteger;
  dm.ADOCLogStudExam.Parameters[2].Value:=DM.adodsSessionIsCalculated.AsBoolean;
  dm.ADOCLogStudExam.Parameters[3].Value:=DM.adodsSessionDateChan.AsDateTime;
  dm.ADOCLogStudExam.Parameters[4].Value:=DM.adodsSessionIdSubject.AsInteger;
  dm.ADOCLogStudExam.Parameters[5].Value:= DM.adodsSessionResult.AsInteger;
  dm.ADOCLogStudExam.Parameters[6].Value:=DM.adodsSessionControlForm.AsInteger;
  dm.ADOCLogStudExam.Parameters[7].Value:=DM.adodsSessionIdStudent.AsInteger;
  dm.ADOCLogStudExam.Parameters[8].Value:=DM.adodsSessionidWorkCurriculumDiscipline.AsInteger;
   dm.ADOCLogStudExam.Parameters[9].Value:= dm.adodsSessionSemester.AsInteger;
 dm.ADOCLogStudExam.Execute;
end;

procedure TFAddErrorWCD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Combobox1.ItemIndex:=0;
end;

end.
