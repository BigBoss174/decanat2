unit uSession;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, ExtCtrls, DBCtrls, StdCtrls,
  Buttons, Mask, DBCtrlsEh, DBLookupEh, frxClass, Clipbrd,  Menus, ButtonGroup,
   ComCtrls,
   ToolWin, ImgList,
   Grids, DBGrids,   ieview, imageenview, dbimageen,
   DB, ieopensavedlg, XPMan,  JPEG,
  RzTreeVw, ADODB, DateUtils, RzEdit, RzSpnEdt;

type




  TfSession = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgSession: TDBGridEh;
    Panel4: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    cbSemester: TComboBox;
    cbControlForm: TComboBox;
    Label4: TLabel;
    sbClearFilter: TSpeedButton;
    Panel6: TPanel;
    dblcbStudent: TDBLookupComboboxEh;
    dblcDiscipline: TDBLookupComboboxEh;
    sbSave: TSpeedButton;
    sbCancel: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    sbMarkSheetPrint: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure DBGridEh1Columns5EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure dblcbStudent_CloseUp(Sender: TObject);
    procedure cbSemesterCloseUp(Sender: TObject);
    procedure dblcDiscipline_CloseUp(Sender: TObject);
    procedure cbControlFormCloseUp(Sender: TObject);
    procedure sbClearFilterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcbStudentCloseUp(Sender: TObject; Accept: Boolean);
    procedure dblcDisciplineCloseUp(Sender: TObject; Accept: Boolean);
    procedure dbgSessionColumns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure sbMarkSheetPrintClick(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure dbgSessionDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgSessionGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbgSessionDblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dbgSessionColumns12EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dbgSessionColumns5UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure dbgSessionMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgSessionCellClick(Column: TColumnEh);
    procedure dbgSessionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure SetFilter;
  public
    { Public declarations }
  end;

var
  fSession: TfSession;

implementation

{$R *.dfm}

uses
  uMain, uSessionDetails, uDM, uDMreports, uAddErorWCD;

procedure TfSession.SetFilter;
var
  s: string;
begin
  s := '';

  if(cbSemester.ItemIndex>0)
  then s := '(Semester='+inttostr(cbSemester.ItemIndex)+')';

  if(cbControlForm.ItemIndex>-1)
  then
      if(s='')
      then s := '(ControlForm='+inttostr(cbControlForm.ItemIndex)+')'
      else s := s + ' and (ControlForm='+inttostr(cbControlForm.ItemIndex)+')';

  if(dblcbStudent.KeyValue<>null)
  then
      if(s='')
      then s := '(idStudent='+inttostr(dblcbStudent.KeyValue)+')'
      else s := s + ' and (idStudent='+inttostr(dblcbStudent.KeyValue)+')';

  if(dblcDiscipline.KeyValue<>null)
  then
      if(s='')
      then s := '(idSubject='+inttostr(dblcDiscipline.KeyValue)+')'
      else s := s + ' and (idSubject='+inttostr(dblcDiscipline.KeyValue)+')';

  DM.adodsSession.Filter := s;
end;

procedure TfSession.SpeedButton1Click(Sender: TObject);
begin
 fSession.SpeedButton3.Enabled:=false;
 dblcbStudent.KeyValue := null;
  cbSemester.ItemIndex := -1;
  dblcDiscipline.KeyValue := null;
  cbControlForm.ItemIndex := -1;
  SetFilter;
  DM.adodsSession.Filter := '';
  fmain.WindowState:=wsnormal;
fSession.Close;
end;

procedure TfSession.SpeedButton2Click(Sender: TObject);
begin
DMreports.ADODataSet1.Close;
DMreports.ADODataSet1.Parameters[0].Value := dm.adodsSessionIdStudent.Value;

  DMreports.ADODataSet1.open;
  DMreports.frxReport1.ShowReport();
end;

procedure TfSession.SpeedButton3Click(Sender: TObject);
var s:string;
begin

begin
 if (MessageDlg('�� ������������� ������ ������� ����������  "'+ dm.adodsSessionSubjectName.AsString+'"' +#13 + '������ �������� �������� ����� ����������! ����������?', mtConfirmation,[mbYes, mbNo], 0) = mrYes) then
  begin
     DM.ADOSQLExecutor.CommandText := 'delete from StudentExamination where id='+dm.adodsSessionid.AsString;
      DM.ADOSQLExecutor.Execute;
      dm.adodsSession.Close;
      dm.adodsSession.Open;
//      dm.adodsSession.Sort := 'Semester, ControlForm DESC';
   end
   else


end;
end;

procedure TfSession.sbMarkSheetPrintClick(Sender: TObject);
var
  Memo8, Memo9, Memo10: TfrxMemoView;
begin
  DMreports.adodsMarkSheetExam.Close;
  if(fMain.TTVmain.Selected.Level=2)
  then DMreports.adodsMarkSheetExam.Parameters[1].Value := fMain.TTVmain.Selected.StateIndex
  else DMreports.adodsMarkSheetExam.Parameters[1].Value := fMain.TTVmain.Selected.Parent.StateIndex;
  DMreports.adodsMarkSheetExam.Parameters[2].Value := DM.adodsSessionidWorkCurriculumDiscipline.AsInteger;
  DMreports.adodsMarkSheetExam.Open;

  Memo8  := DMreports.frxrMarkSheetExam.FindComponent('Memo8') as TfrxMemoView;
  Memo9  := DMreports.frxrMarkSheetExam.FindComponent('Memo9') as TfrxMemoView;
  Memo10 := DMreports.frxrMarkSheetExam.FindComponent('Memo10') as TfrxMemoView;
  if(DM.adodsSessionControlForm.AsInteger=0)
  then
      begin
      Memo8.Visible := false;
      Memo9.Visible := false;
      Memo10.Visible := false;
      end
  else
      begin
      Memo8.Visible := true;
      Memo9.Visible := true;
      Memo10.Visible := true;
      end;

  DMreports.frxrMarkSheetExam.ShowReport();
end;

procedure TfSession.sbSaveClick(Sender: TObject);

   var i:TTreeNode;
begin

  if(MessageBox(handle, '��������� ���������?', '��������!', MB_YESNO)=IDYES)
  then
  begin
     dm.adodsSession.first;
    // dm.adodsSession.next;
     dm.dsSession.DataSet:=nil;
   while not(dm.adodsSession.Eof) do
  begin
  if dm.adodsSession.RecordStatus * [rsNew, rsModified] <> [] then

  begin
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
  dm.adodsSession.next;
  end;
     DM.adodsSession.UpdateBatch();
  DM.adodsSession.Close;
  DM.adodsSession.Open;



  end;
   dm.dsSession.DataSet:=dm.adodsSession;
      if fMain.TTVmain.Selected.Level=3 then
  begin
   dm.ADODMarks.close;
   dm.ADODMarks.Parameters[1].Value:=fMain.TTVmain.Selected.StateIndex;
     dm.ADODMarks.open;
fmain.TTVmain.Selected.SelectedIndex:=dm.ADodmarks.Fields.Fields[0].AsInteger;
fmain.TTVmain.Selected.ImageIndex :=  dm.ADodmarks.Fields.Fields[0].AsInteger;
  end;
   if fMain.TTVmain.Selected.Level=2 then
begin
i:=fmain.TTVmain.Selected.GetNext;
while i.Level>2 do
begin
dm.ADODMarks.close;
     dm.ADODMarks.Parameters[1].Value:=i.StateIndex;
     dm.ADODMarks.open;
 i.ImageIndex:=dm.ADodmarks.Fields.Fields[0].AsInteger;
 i.SelectedIndex:=dm.ADodmarks.Fields.Fields[0].AsInteger;
 i:=i.GetNext;
end;
   end;
    dm.adodsSession.Close;
  dm.adodsSession.Parameters[0].Value := fmain.TTVmain.Selected.StateIndex;
  dm.adodsSession.Parameters[1].Value := (-2147483648);
  dm.adodsSession.Parameters[2].Value := (+2147483647);
  dm.adodsSession.open;
  dm.adodsSession.Sort := 'Semester, nameS, ControlForm DESC';

  dm.adodsSubjectFilter.Close;
  dm.adodsSubjectFilter.Parameters[0].Value := fmain.TTVmain.Selected.StateIndex;
  dm.adodsSubjectFilter.Parameters[1].Value := 1;
  dm.adodsSubjectFilter.Parameters[2].Value := 10;
  dm.adodsSubjectFilter.open;
   end;

procedure TfSession.cbSemesterCloseUp(Sender: TObject);
begin
  SetFilter;

  DM.adodsSubjectFilter.Close;
  if(cbSemester.ItemIndex=0)
  then
      begin
      DM.adodsSubjectFilter.Parameters[1].Value := 1;
      DM.adodsSubjectFilter.Parameters[2].Value := 10;
      end
  else
      begin
      DM.adodsSubjectFilter.Parameters[1].Value := cbSemester.ItemIndex;
      DM.adodsSubjectFilter.Parameters[2].Value := cbSemester.ItemIndex;
      end;
  DM.adodsSubjectFilter.Open;
end;

procedure TfSession.cbControlFormCloseUp(Sender: TObject);
begin
  SetFilter;
end;

procedure TfSession.DBGridEh1Columns5EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin

       dbgSession.Columns[5].KeyList.Clear;
  dbgSession.Columns[5].PickList.Clear;
  if(DM.adodsSessionControlForm.AsInteger>0)
  then
      begin
      dbgSession.Columns[5].KeyList.Add('1');
      dbgSession.Columns[5].KeyList.Add('2');
      dbgSession.Columns[5].KeyList.Add('3');
      dbgSession.Columns[5].KeyList.Add('4');
      dbgSession.Columns[5].KeyList.Add('7');
      dbgSession.Columns[5].PickList.Add('�������');
      dbgSession.Columns[5].PickList.Add('������');
      dbgSession.Columns[5].PickList.Add('�����������������');
      dbgSession.Columns[5].PickList.Add('�������������������');
      dbgSession.Columns[5].PickList.Add('');
      end
  else
      begin
      dbgSession.Columns[5].KeyList.Add('5');
      dbgSession.Columns[5].KeyList.Add('6');
      dbgSession.Columns[5].KeyList.Add('7');
      dbgSession.Columns[5].PickList.Add('�������');
      dbgSession.Columns[5].PickList.Add('�� �������');
      dbgSession.Columns[5].PickList.Add('');
      end;

end;

procedure TfSession.dblcbStudent_CloseUp(Sender: TObject);
begin
  SetFilter;
end;

procedure TfSession.dblcDisciplineCloseUp(Sender: TObject; Accept: Boolean);
begin
  SetFilter;
end;

procedure TfSession.dblcDiscipline_CloseUp(Sender: TObject);
begin
  SetFilter;
end;

procedure TfSession.dbgSessionCellClick(Column: TColumnEh);
begin
if (dm.adodsSessionidWorkCurriculumDiscipline.Value =0 )  then
      SpeedButton3.Enabled:=true
      else
  SpeedButton3.Enabled:=false;
end;

procedure TfSession.dbgSessionColumns12EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
if dm.adodsSessionDateChan.Value=0 then
DBDateTimeEditEh1.Text:=datetostr(date);
end;

procedure TfSession.dbgSessionColumns4EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if(DM.adodsSessionIsCalculated.AsBoolean)and(DM.adodsSessionControlForm.AsInteger=2)
  then
      begin
      DM.adodsSessionDetails.Close;
      DM.adodsSessionDetails.Parameters[0].Value := DM.adodsSessionID.AsInteger;
      DM.adodsSessionDetails.Open;

      if(DM.adodsSessionDetails.RecordCount=0)
      then
          begin
          DM.ADOSQLExecutor.CommandText :=
              'insert StudentExaminationDetails'+
              '(Theme, idStudentExamination)'+
              'values('+#39+#39+', '+DM.adodsSessionID.AsString+')';
          DM.ADOSQLExecutor.Execute;

          DM.adodsSessionDetails.Close;
          DM.adodsSessionDetails.Parameters[0].Value := DM.adodsSessionID.AsInteger;
          DM.adodsSessionDetails.Open;
          end;

      fSessionDetails.Left := fSession.CalcCursorPos.X+fSession.Left-310;
      fSessionDetails.Top := fSession.CalcCursorPos.Y+fSession.Top+35;
      fSessionDetails.ShowModal;
      end
  else;
end;

procedure TfSession.dbgSessionColumns5UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  dbgSession.Columns[5].KeyList.Clear;
  dbgSession.Columns[5].PickList.Clear;
      dbgSession.Columns[5].KeyList.Add('1');
      dbgSession.Columns[5].KeyList.Add('2');
      dbgSession.Columns[5].KeyList.Add('3');
      dbgSession.Columns[5].KeyList.Add('4');

      dbgSession.Columns[5].PickList.Add('�������');
      dbgSession.Columns[5].PickList.Add('������');
      dbgSession.Columns[5].PickList.Add('�����������������');
      dbgSession.Columns[5].PickList.Add('�������������������');


      dbgSession.Columns[5].KeyList.Add('5');
      dbgSession.Columns[5].KeyList.Add('6');
      dbgSession.Columns[5].KeyList.Add('7');
      dbgSession.Columns[5].PickList.Add('�������');
      dbgSession.Columns[5].PickList.Add('�� �������');
      dbgSession.Columns[5].PickList.Add('');

end;

procedure TfSession.dbgSessionDblClick(Sender: TObject);
begin
if (dm.adodsSessionidWorkCurriculumDiscipline.Value =0 )  then
begin
dm.ADODSWCDADDER.Close;
dm.ADODSWCDADDER.Parameters[0].Value:=(dm.adodsSessionIdStudent.AsInteger);
DM.ADODSWCDADDER.Parameters[1].Value := 1;
     DM.ADODSWCDADDER.Parameters[2].Value := 10;
dm.ADODSWCDADDER.Open;
FAddErrorWCD.Label2.Caption:='���������� �������: '  + dm.adodsSessionSubjectName.AsString;
FAddErrorWCD.Label3.Caption:='�������: '  + dm.adodsSessionSemester.AsString;
FAddErrorWCD.ShowModal;
end;
end;

procedure TfSession.dbgSessionDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
//    with dbgSession.Canvas do
//  begin
//    // ������� ����� ������ ���� �������� �� �������
// if (dm.adodsSessionidWorkCurriculumDiscipline.Value =0 )  then

//    begin
//      Brush.Color := clRed;
//      Font.Color := clWhite;
//      FillRect(Rect);
//
//
//    end;
//
//     dbgSession.DefaultDrawColumnCell(Rect, DataCol, Column, State);
//  end;
end;

procedure TfSession.dbgSessionGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
 if (dm.adodsSessionidWorkCurriculumDiscipline.Value =0 )  then
 begin
Background :=    rgb(255,102,102);
     AFont.Color:=clwhite;
 end;


end;

procedure TfSession.dbgSessionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  SpeedButton3.Enabled:=false;
end;

procedure TfSession.dbgSessionMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  dbgSession.Columns[5].KeyList.Clear;
  dbgSession.Columns[5].PickList.Clear;
      dbgSession.Columns[5].KeyList.Add('1');
      dbgSession.Columns[5].KeyList.Add('2');
      dbgSession.Columns[5].KeyList.Add('3');
      dbgSession.Columns[5].KeyList.Add('4');

      dbgSession.Columns[5].PickList.Add('�������');
      dbgSession.Columns[5].PickList.Add('������');
      dbgSession.Columns[5].PickList.Add('�����������������');
      dbgSession.Columns[5].PickList.Add('�������������������');


      dbgSession.Columns[5].KeyList.Add('5');
      dbgSession.Columns[5].KeyList.Add('6');
      dbgSession.Columns[5].KeyList.Add('7');
      dbgSession.Columns[5].PickList.Add('�������');
      dbgSession.Columns[5].PickList.Add('�� �������');
      dbgSession.Columns[5].PickList.Add('');
end;

procedure TfSession.dblcbStudentCloseUp(Sender: TObject;
  Accept: Boolean);
begin
  SetFilter;
end;

procedure TfSession.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 fSession.SpeedButton3.Enabled:=false;
  dblcbStudent.KeyValue := null;
  cbSemester.ItemIndex := -1;
  dblcDiscipline.KeyValue := null;
  cbControlForm.ItemIndex := -1;
  SetFilter;
  DM.adodsSession.Filter := '';
  fmain.WindowState:=wsnormal;
end;

procedure TfSession.sbCancelClick(Sender: TObject);
begin
  if(MessageBox(handle, '�������� ���������?', '��������!', MB_YESNO)=IDYES)
  then DM.adodsSession.CancelBatch();
end;

procedure TfSession.sbClearFilterClick(Sender: TObject);
begin
  dblcbStudent.KeyValue := null;
  cbSemester.ItemIndex := -1;
  dblcDiscipline.KeyValue := null;
  cbControlForm.ItemIndex := -1;
  SetFilter;
  DM.adodsSession.Filter := '';
end;

end.
