unit uDirectory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrlsEh,
  DBLookupEh, ExtCtrls, ComCtrls, Buttons, DBCtrls, RzTabs, Menus;
    {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  TfDirectory = class(TForm)
    pcDirectory: TRzPageControl;
    TabSheet4: TRzTabSheet;
    Panel2: TPanel;
    DBGEhGroupName: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    DBEidPlan: TDBEdit;
    Panel3: TPanel;
    SBAdd: TSpeedButton;
    SBDelete: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    cbKurs: TComboBox;
    eGroupName: TEdit;
    TabSheet5: TRzTabSheet;
    Panel6: TPanel;
    sbOK: TSpeedButton;
    sbCancel: TSpeedButton;
    Panel5: TPanel;
    DBGEhPlan: TDBGridEh;
    pmGrid: TPopupMenu;
    N1: TMenuItem;
    sbClose: TSpeedButton;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Button1: TButton;
    TabSheet1: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel7: TPanel;
    dbgWorkCurrDisc: TDBGridEh;
    Panel8: TPanel;
    Button2: TButton;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBAddClick(Sender: TObject);
    procedure sbOKClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure SBDeleteClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGEhPlanGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGEhPlanSortMarkingChanged(Sender: TObject);
    procedure sbCloseClick(Sender: TObject);
    procedure DBGEhPlanDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox2CloseUp(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    ReturnToPlan: boolean;
    { Public declarations }
  end;

var
  fDirectory: TfDirectory;

implementation

uses
  uMain, uDM, uDMfromUPlan, SessionDates;

{$R *.dfm}

procedure TfDirectory.Button1Click(Sender: TObject);
begin
    dm.g.close;
      dm.g.open;
      while not(dm.G.eof) do
        begin
//Селектим сведения об учебном плане
//(названия специальностей/направлений, код, сокращенное название и т.д.
  fDMfromUPlan.adodsCurriculum.Close;
  fDMfromUPlan.adodsCurriculum.Parameters[0].Value := dm.gidplan.asinteger;
  fDMfromUPlan.adodsCurriculum.Open;

  if(fDMfromUPlan.adodsCurriculum.RecordCount=0)
  then
      begin
      showmessage('Неизвестная ошибка! План не добавлен!');
      exit;
      end;

   DM.adodsAddCurriculum.Close;
  DM.adodsAddCurriculum.Parameters[0].Value :=  DM.gid.AsInteger;
  DM.adodsAddCurriculum.Parameters[1].Value := dm.gidplan.asinteger;
  DM.adodsAddCurriculum.Parameters[2].Value := fDMfromUPlan.adodsCurriculumKod.AsString;
  DM.adodsAddCurriculum.Parameters[3].Value := fDMfromUPlan.adodsCurriculumSpec.AsString;
  DM.adodsAddCurriculum.Parameters[4].Value := fDMfromUPlan.adodsCurriculumSpez.AsString;
  DM.adodsAddCurriculum.Parameters[5].Value := fDMfromUPlan.adodsCurriculumKval.AsString;
  DM.adodsAddCurriculum.Parameters[6].Value := fDMfromUPlan.adodsCurriculumSokr.AsString;
  DM.adodsAddCurriculum.Parameters[7].Value := fDMfromUPlan.adodsCurriculumPlan_type.AsInteger;
  DM.adodsAddCurriculum.Open;
//выбираем рабочий учебный план
//дисциплины, количества часов лекций, практик, и т.д., форма контроля
  fDMfromUPlan.adodsCurriculumDisciplines.Close;
  fDMfromUPlan.adodsCurriculumDisciplines.Parameters[0].Value :=dm.gidplan.asinteger;
  fDMfromUPlan.adodsCurriculumDisciplines.Open;

//Удаляем предыдущий РУП




//Пишем в нашу базу новый РУП
  while(not(fDMfromUPlan.adodsCurriculumDisciplines.Eof))do
      begin
      DM.adodsAddWorkCurrDisc.Close;
      DM.adodsAddWorkCurrDisc.Parameters[0].Value := DM.adodsAddCurriculumID.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[1].Value := fDMfromUplan.adodsCurriculumDisciplinesSemester.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[2].Value := fDMfromUplan.adodsCurriculumDisciplinesName.AsString;
      DM.adodsAddWorkCurrDisc.Parameters[3].Value := fDMfromUplan.adodsCurriculumDisciplinesHourLecture.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[4].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSeminar.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[5].Value := fDMfromUplan.adodsCurriculumDisciplinesHourPractice.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[6].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSmallGroup.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[7].Value := fDMfromUplan.adodsCurriculumDisciplinesHourIndividual.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[8].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSelfWork.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[9].Value := fDMfromUplan.adodsCurriculumDisciplinesControlTest.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[10].Value := fDMfromUplan.adodsCurriculumDisciplinesControlExamination.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[11].Value := fDMfromUplan.adodsCurriculumDisciplinesControlCourseWork.AsInteger;
      DM.adodsAddWorkCurrDisc.Open;

      DM.ADOCLogWorKCurDisc.Parameters[1].Value :=5;
      DM.ADOCLogWorKCurDisc.Parameters[2].Value :=fDMfromUplan.adodsCurriculumDisciplinesSemester.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[3].Value :=dm.adodsaddWorkCurrDiscidSubject.AsInteger ;
      DM.ADOCLogWorKCurDisc.Parameters[4].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourLecture.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[5].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourSeminar.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[6].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourPractice.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[7].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSmallGroup.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[8].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourIndividual.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[9].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourSelfWork.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[10].Value :=fDMfromUplan.adodsCurriculumDisciplinesControlTest.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[11].Value :=fDMfromUplan.adodsCurriculumDisciplinesControlExamination.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[12].Value := fDMfromUplan.adodsCurriculumDisciplinesControlCourseWork.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[13].Value :=NULL;
      DM.ADOCLogWorKCurDisc.Parameters[14].Value :=5;
      DM.ADOCLogWorKCurDisc.Parameters[15].Value :=dm.adodsaddWorkCurrDiscid.AsInteger ;
      dm.ADOCLogWorKCurDisc.Parameters[16].Value :=DM.adodsAddCurriculumID.AsInteger;
      dm.ADOCLogWorKCurDisc.Execute;
      fDMfromUPlan.adodsCurriculumDisciplines.Next;
      end;


//переоткрываем список дисциплин, так как тут может произойти добавление новых дисциплин
  DM.adodsSubjects.Close;
  DM.adodsSubjects.Open;


  if(DM.adodsAddWorkCurrDisc.Fields.Fields[0].AsInteger<-2000000000)
  then showmessage('В базе скоро закончатся ID. Немедленно сообщите программисту.');

//Тут надо бы обновить сессию студентам, чем и займемся
  dm.ADODUpdSessionOld.Close;
   dm.ADODUpdSessionOld.Parameters[1].Value:=DM.gid.AsInteger;
  dm.ADODUpdSessionOld.Open;
//Переоткрываем датасет, чтобы на страничке группы сразу отобразилась инфа

    dm.G.next;
   end;

//всякие удобства

end;

procedure TfDirectory.Button2Click(Sender: TObject);
var i:Byte;
begin
     i:=0;
     Panel8.visible:=False;
      if (MessageDlg('Внимание! Будет загружен  ' +fDMfromUPlan.ADODSPlansid.Asstring+
       ' план c '+combobox2.items[combobox2.itemindex]+ ' семестра'+'! Продолжить?', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes) then
        begin
//Селектим сведения об учебном плане
//(названия специальностей/направлений, код, сокращенное название и т.д.
  fDMfromUPlan.adodsCurriculum.Close;
  fDMfromUPlan.adodsCurriculum.Parameters[0].Value := fDMfromUPlan.ADODSPlansID.AsInteger;
  fDMfromUPlan.adodsCurriculum.Open;

  if(fDMfromUPlan.adodsCurriculum.RecordCount=0)
  then
      begin
      showmessage('Неизвестная ошибка! План не добавлен!');
      exit;
      end;


  if fDirectory.Caption = 'Учебные планы(Загрузка)' then
   begin

//выбираем рабочий учебный план
//дисциплины, количества часов лекций, практик, и т.д., форма контроля
  fDMfromUPlan.adodsCurriculumDisciplines.Close;
  fDMfromUPlan.adodsCurriculumDisciplines.Parameters[0].Value := fDMfromUPlan.ADODSPlansid.AsInteger;
  fDMfromUPlan.adodsCurriculumDisciplines.Open;
      while(not(fDMfromUPlan.adodsCurriculumDisciplines.Eof))do
      begin
        if fDMfromUplan.adodsCurriculumDisciplinesSemester.asinteger>i then
        i:=fDMfromUplan.adodsCurriculumDisciplinesSemester.asinteger;
             fDMfromUPlan.adodsCurriculumDisciplines.next;
      end;
    fDMfromUPlan.adodsCurriculumDisciplines.first;
//Удаляем предыдущий РУП

    dm.adodsWorkCurrDisc.Close;
  dm.adodsWorkCurrDisc.Parameters[0].Value :=dm.adodsWorkCurriculumID.AsInteger;
  dm.adodsWorkCurrDisc.open;
  while (not(DM.adodsWorkCurrDisc.Eof)) do
  begin
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
          DM.ADOCLogWorKCurDisc.Parameters[14].Value :=4;
          DM.ADOCLogWorKCurDisc.Parameters[15].Value :=dm.adodsWorkCurrDiscID.AsInteger;
         dm.ADOCLogWorKCurDisc.Parameters[16].Value :=DM.adodsWorkCurriculumid.AsInteger;
                dm.ADOCLogWorKCurDisc.Execute;
       DM.adodsWorkCurrDisc.Next;
  end;
  DM.ADOSQLExecutor.CommandText :=
      'delete from WorkCurriculumDiscipline where semester>='+combobox2.items[combobox2.itemindex] +'and semester<='+inttostr(i)+'and idWorkCurriculum='+dm.adodsWorkCurriculumID.Asstring;
  DM.ADOSQLExecutor.Execute;

//Пишем в нашу базу новый РУП
  while(not(fDMfromUPlan.adodsCurriculumDisciplines.Eof))do
      begin
      if fDMfromUPlan.adodsCurriculumDisciplinessemester.asinteger>= strtoint(combobox2.items[combobox2.itemindex])then
           begin
      DM.adodsAddWorkCurrDisc.Close;
      DM.adodsAddWorkCurrDisc.Parameters[0].Value := dm.adodsWorkCurriculumID.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[1].Value := fDMfromUplan.adodsCurriculumDisciplinesSemester.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[2].Value := fDMfromUplan.adodsCurriculumDisciplinesName.AsString;
      DM.adodsAddWorkCurrDisc.Parameters[3].Value := fDMfromUplan.adodsCurriculumDisciplinesHourLecture.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[4].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSeminar.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[5].Value := fDMfromUplan.adodsCurriculumDisciplinesHourPractice.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[6].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSmallGroup.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[7].Value := fDMfromUplan.adodsCurriculumDisciplinesHourIndividual.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[8].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSelfWork.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[9].Value := fDMfromUplan.adodsCurriculumDisciplinesControlTest.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[10].Value := fDMfromUplan.adodsCurriculumDisciplinesControlExamination.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[11].Value := fDMfromUplan.adodsCurriculumDisciplinesControlCourseWork.AsInteger;
      DM.adodsAddWorkCurrDisc.Open;

      DM.ADOCLogWorKCurDisc.Parameters[1].Value :=DM.adodsSecurityGetRightsid.asinteger;
      DM.ADOCLogWorKCurDisc.Parameters[2].Value :=fDMfromUplan.adodsCurriculumDisciplinesSemester.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[3].Value :=dm.adodsaddWorkCurrDiscidSubject.AsInteger ;
      DM.ADOCLogWorKCurDisc.Parameters[4].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourLecture.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[5].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourSeminar.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[6].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourPractice.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[7].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSmallGroup.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[8].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourIndividual.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[9].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourSelfWork.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[10].Value :=fDMfromUplan.adodsCurriculumDisciplinesControlTest.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[11].Value :=fDMfromUplan.adodsCurriculumDisciplinesControlExamination.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[12].Value := fDMfromUplan.adodsCurriculumDisciplinesControlCourseWork.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[13].Value :=NULL;
      DM.ADOCLogWorKCurDisc.Parameters[14].Value :=5;
      DM.ADOCLogWorKCurDisc.Parameters[15].Value :=dm.adodsaddWorkCurrDiscid.AsInteger ;
      dm.ADOCLogWorKCurDisc.Parameters[16].Value :=dm.adodsWorkCurriculumID.AsInteger;
      dm.ADOCLogWorKCurDisc.Execute;

           end;
           fDMfromUPlan.adodsCurriculumDisciplines.Next;
      end;


//переоткрываем список дисциплин, так как тут может произойти добавление новых дисциплин
  DM.adodsSubjects.Close;
  DM.adodsSubjects.Open;


  if(DM.adodsAddWorkCurrDisc.Fields.Fields[0].AsInteger<-2000000000)
  then showmessage('В базе скоро закончатся ID. Немедленно сообщите программисту.');

//Тут надо бы обновить сессию студентам, чем и займемся
  dm.ADODUpdSessionOld.Close;
   dm.ADODUpdSessionOld.Parameters[1].Value:=DM.adodsGroupDataID.AsInteger;
  dm.ADODUpdSessionOld.Open;
//Переоткрываем датасет, чтобы на страничке группы сразу отобразилась инфа


//всякие удобства
  if(pos('.62', fDMfromUPlan.ADODSPlansNspec.AsString)>0)
  or(pos('.68', fDMfromUPlan.ADODSPlansNspec.AsString)>0)
  then
      begin
      fMain.lSpec.Caption := 'Направление';
      fMain.lSpez.Caption := 'Профиль';
      fMain.lKval.Caption := 'Степень';
      end
  else
  if(pos('.65', fDMfromUPlan.ADODSPlansNspec.AsString)>0)
  then
      begin
      fMain.lSpec.Caption := 'Специальность';
      fMain.lSpez.Caption := 'Специализация';
      fMain.lKval.Caption := 'Квалификация';
      end
  else
      begin
      fMain.lSpec.Caption := 'Спец./Напр.';
      fMain.lSpez.Caption := 'Сп.-ия/Проф.';
      fMain.lKval.Caption := 'Квал./Степ.';
      end;


end;
fDirectory.ModalResult := mrOK;
  DM.adodsWorkCurriculum.Close;
  DM.adodsWorkCurriculum.Open;
   dm.adodsWorkCurrDisc.Close;
  dm.adodsWorkCurrDisc.Parameters[0].Value :=dm.adodsWorkCurriculumID.AsInteger;
  dm.adodsWorkCurrDisc.open;
  dm.adodsWorkCurrDisc.Sort :=
 'Semester, ControlExamination DESC, ControlCourseWork DESC, ControlTest DESC';
 dm.ADOSQLExecutor.CommandText:='DELETE FROM SessionDates where idgroup='+DM.adodsGroupDataID.AsString;
  dm.ADOSQLExecutor.Execute;
  dm.ADOSQLExecutor.CommandText:='insert into SessionDates (IDGroup, Semester) select distinct wc.idGroup, wcd.Semester from WorkCurriculum wc join WorkCurriculumDiscipline wcd on wc.id=wcd.idWorkCurriculum where idGroup='+DM.adodsGroupDataID.AsString;
  dm.ADOSQLExecutor.Execute;
  dm.adodsSessionDate.close;
dm.adodsSessionDate.parameters[0].value:=dm.adodsWorkCurriculumidGroup.AsInteger;
dm.adodsSessionDate.open;
        end
        else Exit;

end;

procedure TfDirectory.Button3Click(Sender: TObject);
begin
    panel8.visible:=True;
end;

procedure TfDirectory.ComboBox2CloseUp(Sender: TObject);
begin
showmessage(combobox2.items[combobox2.itemindex]);
end;

procedure TfDirectory.DBGEhPlanDblClick(Sender: TObject);
begin
  n1Click(nil);
end;

procedure TfDirectory.DBGEhPlanGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if(fDMfromUPlan.ADODSPlansPlan_type.AsInteger=3) then Background := clMoneyGreen;
end;

procedure TfDirectory.DBGEhPlanSortMarkingChanged(Sender: TObject);
var
  i                 : Integer;
  s                 : string;
begin
  if not fDMfromUPlan.ADODSPlans.Active then exit;

  s := '';

  for i := 0 to DBGEhPlan.SortMarkedColumns.Count - 1 do
  if DBGEhPlan.SortMarkedColumns[i].Title.SortMarker = smUpEh
  then s := s + DBGEhPlan.SortMarkedColumns[i].FieldName + ' DESC'
  else s := s + DBGEhPlan.SortMarkedColumns[i].FieldName;

  fDMfromUPlan.ADODSPlans.Sort := s;
end;

procedure TfDirectory.FormClose(Sender: TObject; var Action: TCloseAction);
var
  GroupNameOld, GroupNameNew: string;
begin
//  if(ReturnToPlan)
//  then
//      begin
//      BorderIcons := [biSystemMenu, biMinimize, biMaximize];
//      ReturnToPlan := false;
//      end;
//
//  GroupNameOld := DM.adodsGroupDataGroupName.AsString;
//  DM.adodsGroupData.Close;
//  DM.adodsGroupData.Open;
//  GroupNameNew := DM.adodsGroupDataGroupName.AsString;
//  if(GroupNameOld<>GroupNameNew)
//  then
//      begin
//      fMain.TTVmain.Selected.Text := GroupNameNew;
//      fMain.lGroupName.Caption := 'Название: '+GroupNameNew;
//      end;
end;

procedure TfDirectory.FormCreate(Sender: TObject);
begin
  ReturnToPlan := false;
  dm.adodoldrup.close;
case dm.ADODSFacultiesDepartment.asinteger of
  1:begin
    dm.adodoldrup.parameters[0].value:=0;
    dm.adodoldrup.parameters[1].value:=999;
  end;
  2:begin
    dm.adodoldrup.parameters[0].value:=999;
    dm.adodoldrup.parameters[1].value:=2000;
  end;
 end;


     dm.adodoldrup.open;
end;

procedure TfDirectory.N1Click(Sender: TObject);
begin
  with fDirectory do
      begin
      pcDirectory.HideAllTabs;
      pcDirectory.Pages[0].Show;
      Caption := 'Названия групп по номеру специальности/направления';
      BorderIcons := [];
      sbClose.Show;
      end;

  ReturnToPlan := true;
  DM.adodsGroupName.Filter := 'IDplan='+fDMfromUPlan.ADODSPlansid.AsString;
end;

procedure TfDirectory.SBAddClick(Sender: TObject);
begin
  if(DBEidPlan.Text='')
  then
      begin
      showmessage('Не выбран план');
      exit;
      end;
  if(cbKurs.ItemIndex=-1)
  then
      begin
      showmessage('Не выбран курс');
      exit;
      end;
       if(ComboBox1.ItemIndex=-1)
  then
      begin
      showmessage('Не выбран номер группы');
      exit;
      end;
  if(eGroupName.Text='')
  then
      begin
      showmessage('Не указано название группы');
      exit;
      end;

  if(DM.adodsGroupName.RecordCount>0)
  then
      if (DM.adodsGroupName.Locate('NumberGroup;kurs', VarArrayOf([ComboBox1.ItemIndex+1, cbKurs.ItemIndex+1]), []))  // and (DM.adodsGroupName.Locate('kurs', cbKurs.ItemIndex+1, [])))
      then
          begin
          showmessage('Для этого курса уже указано название');
          exit;
          end;

  DM.ADOSQLExecutor.CommandText := 'insert into GroupNameByPlanNumber (idPlan, Kurs, GroupName,NumberGroup)'+
      ' values ('+dbeidplan.text+','+inttostr(cbKurs.ItemIndex+1)+','''+eGroupName.Text+''','''+inttostr(ComboBox1.ItemIndex+1)+''')';
  DM.ADOSQLExecutor.Execute;

     DM.adodsGroupName.Sort := 'Kurs, NumberGroup DESC';
  DM.adodsGroupName.Close;
  DM.adodsGroupName.Open;
end;

procedure TfDirectory.sbCancelClick(Sender: TObject);
begin
  fDirectory.ModalResult := mrCancel;
end;

procedure TfDirectory.sbCloseClick(Sender: TObject);
begin
  if(ReturnToPlan)
  then
      begin
      pcDirectory.HideAllTabs;
      pcDirectory.Pages[1].Show;
      Caption := 'Учебные планы';
      BorderIcons := [biSystemMenu, biMinimize, biMaximize];
      sbClose.Hide;
      ReturnToPlan := false;
      end
  else Close;

end;

procedure TfDirectory.SBDeleteClick(Sender: TObject);
begin
  if(DM.adodsGroupName.RecordCount>0)
  then
  if(MessageDlg('Вы уверены? Удаление названия для '+DM.adodsGroupName.FieldByName('kurs').AsString+' курса', mtConfirmation, mbYesNo, 0)=mrYes)
  then
      begin
      DM.adodsGroupName.Delete;
      end;
end;

procedure TfDirectory.sbOKClick(Sender: TObject);
begin


//Селектим сведения об учебном плане
//(названия специальностей/направлений, код, сокращенное название и т.д.
  fDMfromUPlan.adodsCurriculum.Close;
  fDMfromUPlan.adodsCurriculum.Parameters[0].Value := fDMfromUPlan.ADODSPlansID.AsInteger;
  fDMfromUPlan.adodsCurriculum.Open;

  if(fDMfromUPlan.adodsCurriculum.RecordCount=0)
  then
      begin
      showmessage('Неизвестная ошибка! План не добавлен!');
      exit;
      end;
    if fDirectory.Caption = 'Учебные планы(Выбор)' then
//Пишем в нашу базу загруженные сведения об учебном план�
    begin
  DM.adodsAddCurriculum.Close;
  DM.adodsAddCurriculum.Parameters[0].Value := DM.adodsGroupDataID.AsInteger;
  DM.adodsAddCurriculum.Parameters[1].Value := fDMfromUPlan.ADODSPlansID.AsInteger;
  DM.adodsAddCurriculum.Parameters[2].Value := fDMfromUPlan.adodsCurriculumKod.AsString;
  DM.adodsAddCurriculum.Parameters[3].Value := fDMfromUPlan.adodsCurriculumSpec.AsString;
  DM.adodsAddCurriculum.Parameters[4].Value := fDMfromUPlan.adodsCurriculumSpez.AsString;
  DM.adodsAddCurriculum.Parameters[5].Value := fDMfromUPlan.adodsCurriculumKval.AsString;
  DM.adodsAddCurriculum.Parameters[6].Value := fDMfromUPlan.adodsCurriculumSokr.AsString;
  DM.adodsAddCurriculum.Parameters[7].Value := fDMfromUPlan.adodsCurriculumPlan_type.AsInteger;
  DM.adodsAddCurriculum.Open;
    end;
  if fDirectory.Caption = 'Учебные планы(Загрузка)' then
   begin
   DM.adodsAddCurriculum.Close;
  DM.adodsAddCurriculum.Parameters[0].Value := DM.adodsGroupDataID.AsInteger;
 case dm.ADODSFacultiesDepartment.asinteger of
  1:DM.adodsAddCurriculum.Parameters[1].Value := fDMfromUPlan.ADODSPlansID.AsInteger;
  2:DM.adodsAddCurriculum.Parameters[1].Value := fDMfromUPlan.ADODSPlansID.AsInteger+1000;
 end;
  DM.adodsAddCurriculum.Parameters[2].Value := fDMfromUPlan.adodsCurriculumKod.AsString;
  DM.adodsAddCurriculum.Parameters[3].Value := fDMfromUPlan.adodsCurriculumSpec.AsString;
  DM.adodsAddCurriculum.Parameters[4].Value := fDMfromUPlan.adodsCurriculumSpez.AsString;
  DM.adodsAddCurriculum.Parameters[5].Value := fDMfromUPlan.adodsCurriculumKval.AsString;
  DM.adodsAddCurriculum.Parameters[6].Value := fDMfromUPlan.adodsCurriculumSokr.AsString;
  DM.adodsAddCurriculum.Parameters[7].Value := fDMfromUPlan.adodsCurriculumPlan_type.AsInteger;
  DM.adodsAddCurriculum.Open;
//выбираем рабочий учебный план
//дисциплины, количества часов лекций, практик, и т.д., форма контроля
  fDMfromUPlan.adodsCurriculumDisciplines.Close;
  fDMfromUPlan.adodsCurriculumDisciplines.Parameters[0].Value := fDMfromUPlan.ADODSPlansid.AsInteger;
  fDMfromUPlan.adodsCurriculumDisciplines.Open;

//Удаляем предыдущий РУП

    dm.adodsWorkCurrDisc.Close;
  dm.adodsWorkCurrDisc.Parameters[0].Value :=dm.adodsWorkCurriculumID.AsInteger;
  dm.adodsWorkCurrDisc.open;
  while (not(DM.adodsWorkCurrDisc.Eof)) do
  begin
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
          DM.ADOCLogWorKCurDisc.Parameters[14].Value :=4;
          DM.ADOCLogWorKCurDisc.Parameters[15].Value :=dm.adodsWorkCurrDiscID.AsInteger;
         dm.ADOCLogWorKCurDisc.Parameters[16].Value :=DM.adodsWorkCurriculumid.AsInteger;
                dm.ADOCLogWorKCurDisc.Execute;
       DM.adodsWorkCurrDisc.Next;
  end;
  DM.ADOSQLExecutor.CommandText :=
      'delete from WorkCurriculumDiscipline where idWorkCurriculum='+DM.adodsAddCurriculumID.AsString;
  DM.ADOSQLExecutor.Execute;

//Пишем в нашу базу новый РУП
  while(not(fDMfromUPlan.adodsCurriculumDisciplines.Eof))do
      begin
      DM.adodsAddWorkCurrDisc.Close;
      DM.adodsAddWorkCurrDisc.Parameters[0].Value := DM.adodsAddCurriculumID.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[1].Value := fDMfromUplan.adodsCurriculumDisciplinesSemester.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[2].Value := fDMfromUplan.adodsCurriculumDisciplinesName.AsString;
      DM.adodsAddWorkCurrDisc.Parameters[3].Value := fDMfromUplan.adodsCurriculumDisciplinesHourLecture.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[4].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSeminar.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[5].Value := fDMfromUplan.adodsCurriculumDisciplinesHourPractice.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[6].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSmallGroup.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[7].Value := fDMfromUplan.adodsCurriculumDisciplinesHourIndividual.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[8].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSelfWork.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[9].Value := fDMfromUplan.adodsCurriculumDisciplinesControlTest.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[10].Value := fDMfromUplan.adodsCurriculumDisciplinesControlExamination.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[11].Value := fDMfromUplan.adodsCurriculumDisciplinesControlCourseWork.AsInteger;
      DM.adodsAddWorkCurrDisc.Open;

      DM.ADOCLogWorKCurDisc.Parameters[1].Value :=DM.adodsSecurityGetRightsid.asinteger;
      DM.ADOCLogWorKCurDisc.Parameters[2].Value :=fDMfromUplan.adodsCurriculumDisciplinesSemester.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[3].Value :=dm.adodsaddWorkCurrDiscidSubject.AsInteger ;
      DM.ADOCLogWorKCurDisc.Parameters[4].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourLecture.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[5].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourSeminar.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[6].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourPractice.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[7].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSmallGroup.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[8].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourIndividual.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[9].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourSelfWork.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[10].Value :=fDMfromUplan.adodsCurriculumDisciplinesControlTest.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[11].Value :=fDMfromUplan.adodsCurriculumDisciplinesControlExamination.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[12].Value := fDMfromUplan.adodsCurriculumDisciplinesControlCourseWork.AsInteger;
      DM.ADOCLogWorKCurDisc.Parameters[13].Value :=NULL;
      DM.ADOCLogWorKCurDisc.Parameters[14].Value :=5;
      DM.ADOCLogWorKCurDisc.Parameters[15].Value :=dm.adodsaddWorkCurrDiscid.AsInteger ;
      dm.ADOCLogWorKCurDisc.Parameters[16].Value :=DM.adodsAddCurriculumID.AsInteger;
      dm.ADOCLogWorKCurDisc.Execute;
      fDMfromUPlan.adodsCurriculumDisciplines.Next;
      end;


//переоткрываем список дисциплин, так как тут может произойти добавление новых дисциплин
  DM.adodsSubjects.Close;
  DM.adodsSubjects.Open;


  if(DM.adodsAddWorkCurrDisc.Fields.Fields[0].AsInteger<-2000000000)
  then showmessage('В базе скоро закончатся ID. Немедленно сообщите программисту.');

//Тут надо бы обновить сессию студентам, чем и займемся
  dm.ADODUpdSessionOld.Close;
   dm.ADODUpdSessionOld.Parameters[1].Value:=DM.adodsGroupDataID.AsInteger;
  dm.ADODUpdSessionOld.Open;
//Переоткрываем датасет, чтобы на страничке группы сразу отобразилась инфа


//всякие удобства
  if(pos('.62', fDMfromUPlan.ADODSPlansNspec.AsString)>0)
  or(pos('.68', fDMfromUPlan.ADODSPlansNspec.AsString)>0)
  then
      begin
      fMain.lSpec.Caption := 'Направление';
      fMain.lSpez.Caption := 'Профиль';
      fMain.lKval.Caption := 'Степень';
      end
  else
  if(pos('.65', fDMfromUPlan.ADODSPlansNspec.AsString)>0)
  then
      begin
      fMain.lSpec.Caption := 'Специальность';
      fMain.lSpez.Caption := 'Специализация';
      fMain.lKval.Caption := 'Квалификация';
      end
  else
      begin
      fMain.lSpec.Caption := 'Спец./Напр.';
      fMain.lSpez.Caption := 'Сп.-ия/Проф.';
      fMain.lKval.Caption := 'Квал./Степ.';
      end;


end;
fDirectory.ModalResult := mrOK;
  DM.adodsWorkCurriculum.Close;
  DM.adodsWorkCurriculum.Open;
   dm.adodsWorkCurrDisc.Close;
  dm.adodsWorkCurrDisc.Parameters[0].Value :=dm.adodsWorkCurriculumID.AsInteger;
  dm.adodsWorkCurrDisc.open;
  dm.adodsWorkCurrDisc.Sort :=
 'Semester, ControlExamination DESC, ControlCourseWork DESC, ControlTest DESC';
 dm.ADOSQLExecutor.CommandText:='DELETE FROM SessionDates where idgroup='+DM.adodsGroupDataID.AsString;
  dm.ADOSQLExecutor.Execute;
  dm.ADOSQLExecutor.CommandText:='insert into SessionDates (IDGroup, Semester) select distinct wc.idGroup, wcd.Semester from WorkCurriculum wc join WorkCurriculumDiscipline wcd on wc.id=wcd.idWorkCurriculum where idGroup='+DM.adodsGroupDataID.AsString;
  dm.ADOSQLExecutor.Execute;
  dm.adodsSessionDate.close;
dm.adodsSessionDate.parameters[0].value:=dm.adodsWorkCurriculumidGroup.AsInteger;
dm.adodsSessionDate.open;
SessionDate.ShowModal;
end;

procedure TfDirectory.SpeedButton1Click(Sender: TObject);
begin


  DM.adodsAddCurriculum.Close;
  DM.adodsAddCurriculum.Parameters[0].Value := DM.adodsGroupDataID.AsInteger;
  DM.adodsAddCurriculum.Parameters[1].Value := dm.adodoldrupIDplan.AsInteger;
  DM.adodsAddCurriculum.Parameters[2].Value := dm.adodoldrupSpecialityCode.AsString;
  DM.adodsAddCurriculum.Parameters[3].Value := dm.adodoldrupSpeciality.AsString;
  DM.adodsAddCurriculum.Parameters[4].Value := dm.adodoldrupSpecialization.AsString;
  DM.adodsAddCurriculum.Parameters[5].Value := dm.adodoldrupQualification.AsString;
  DM.adodsAddCurriculum.Parameters[6].Value := dm.adodoldrupSpecialityAbbreviation.AsString;
  DM.adodsAddCurriculum.Parameters[7].Value := dm.adodoldrupPlanGeneration.AsInteger;
  DM.adodsAddCurriculum.Open;
//выбираем рабочий учебный план
//дисциплины, количества часов лекций, практик, и т.д., форма контроля


//Удаляем предыдущий РУП

    dm.adodsWorkCurrDisc.Close;
  dm.adodsWorkCurrDisc.Parameters[0].Value :=dm.adodsWorkCurriculumID.AsInteger;
  dm.adodsWorkCurrDisc.open;
  while (not(DM.adodsWorkCurrDisc.Eof)) do
  begin
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
          DM.ADOCLogWorKCurDisc.Parameters[14].Value :=4;
          DM.ADOCLogWorKCurDisc.Parameters[15].Value :=dm.adodsWorkCurrDiscID.AsInteger;
         dm.ADOCLogWorKCurDisc.Parameters[16].Value :=DM.adodsWorkCurriculumid.AsInteger;
                dm.ADOCLogWorKCurDisc.Execute;
       DM.adodsWorkCurrDisc.Next;
  end;
  DM.ADOSQLExecutor.CommandText :=
      'delete from WorkCurriculumDiscipline where idWorkCurriculum='+DM.adodsAddCurriculumID.AsString;
  DM.ADOSQLExecutor.Execute;
   dm.adodsWorkCurrDisc.Close;
  dm.adodsWorkCurrDisc.Parameters[0].Value :=dm.adodoldrupid.AsInteger;
  dm.adodsWorkCurrDisc.open;
//Пишем в нашу базу новый РУП
  while(not( dm.adodsWorkCurrDisc.Eof))do
      begin
      dm.ADODSSubjectOne.close;
      dm.ADODSSubjectOne.Parameters[0].Value := dm.adodsWorkCurrDiscidsubject.Asinteger;
      dm.ADODSSubjectOne.open;
      DM.adodsAddWorkCurrDisc.Close;
      DM.adodsAddWorkCurrDisc.Parameters[0].Value := DM.adodsAddCurriculumID.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[1].Value := dm.adodsWorkCurrDiscSemester.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[2].Value := dm.ADODSSubjectOnesubjectname.AsString;
      DM.adodsAddWorkCurrDisc.Parameters[3].Value := dm.adodsWorkCurrDiscHourLecture.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[4].Value := dm.adodsWorkCurrDiscHourSeminar.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[5].Value := dm.adodsWorkCurrDiscHourPractice.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[6].Value := dm.adodsWorkCurrDiscHourSmallGroup.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[7].Value := dm.adodsWorkCurrDiscHourIndividual.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[8].Value := dm.adodsWorkCurrDiscHourSelfWork.AsInteger;
      DM.adodsAddWorkCurrDisc.Parameters[9].Value := dm.adodsWorkCurrDiscControlTest.Asboolean;
      DM.adodsAddWorkCurrDisc.Parameters[10].Value := dm.adodsWorkCurrDiscControlExamination.Asboolean;
      DM.adodsAddWorkCurrDisc.Parameters[11].Value := dm.adodsWorkCurrDiscControlCourseWork.Asboolean;
      DM.adodsAddWorkCurrDisc.Open;

//      DM.ADOCLogWorKCurDisc.Parameters[1].Value :=DM.adodsSecurityGetRightsid.asinteger;
//      DM.ADOCLogWorKCurDisc.Parameters[2].Value :=dm.adodsWorkCurrDiscSemester.AsInteger;
//      DM.ADOCLogWorKCurDisc.Parameters[3].Value :=dm.adodsaddWorkCurrDiscidSubject.AsInteger ;
//      DM.ADOCLogWorKCurDisc.Parameters[4].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourLecture.AsInteger;
//      DM.ADOCLogWorKCurDisc.Parameters[5].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourSeminar.AsInteger;
//      DM.ADOCLogWorKCurDisc.Parameters[6].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourPractice.AsInteger;
//      DM.ADOCLogWorKCurDisc.Parameters[7].Value := fDMfromUplan.adodsCurriculumDisciplinesHourSmallGroup.AsInteger;
//      DM.ADOCLogWorKCurDisc.Parameters[8].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourIndividual.AsInteger;
//      DM.ADOCLogWorKCurDisc.Parameters[9].Value :=fDMfromUplan.adodsCurriculumDisciplinesHourSelfWork.AsInteger;
//      DM.ADOCLogWorKCurDisc.Parameters[10].Value :=fDMfromUplan.adodsCurriculumDisciplinesControlTest.AsInteger;
//      DM.ADOCLogWorKCurDisc.Parameters[11].Value :=fDMfromUplan.adodsCurriculumDisciplinesControlExamination.AsInteger;
//      DM.ADOCLogWorKCurDisc.Parameters[12].Value := fDMfromUplan.adodsCurriculumDisciplinesControlCourseWork.AsInteger;
//      DM.ADOCLogWorKCurDisc.Parameters[13].Value :=NULL;
//      DM.ADOCLogWorKCurDisc.Parameters[14].Value :=5;
//      DM.ADOCLogWorKCurDisc.Parameters[15].Value :=dm.adodsaddWorkCurrDiscid.AsInteger ;
//      dm.ADOCLogWorKCurDisc.Parameters[16].Value :=DM.adodsAddCurriculumID.AsInteger;
//      dm.ADOCLogWorKCurDisc.Execute;
     dm.adodsWorkCurrDisc.Next;
      end;


//переоткрываем список дисциплин, так как тут может произойти добавление новых дисциплин
  DM.adodsSubjects.Close;
  DM.adodsSubjects.Open;


  if(DM.adodsAddWorkCurrDisc.Fields.Fields[0].AsInteger<-2000000000)
  then showmessage('В базе скоро закончатся ID. Немедленно сообщите программисту.');

//Тут надо бы обновить сессию студентам, чем и займемся
  dm.ADODUpdSessionOld.Close;
   dm.ADODUpdSessionOld.Parameters[1].Value:=DM.adodsGroupDataID.AsInteger;
  dm.ADODUpdSessionOld.Open;
//Переоткрываем датасет, чтобы на страничке группы сразу отобразилась инфа


//всякие удобства
  if(pos('.62',  dm.adodoldrupSpecialityCode.AsString)>0)
  or(pos('.68',  dm.adodoldrupSpecialityCode.AsString)>0)
  then
      begin
      fMain.lSpec.Caption := 'Направление';
      fMain.lSpez.Caption := 'Профиль';
      fMain.lKval.Caption := 'Степень';
      end
  else
  if(pos('.65',  dm.adodoldrupSpecialityCode.AsString)>0)
  then
      begin
      fMain.lSpec.Caption := 'Специальность';
      fMain.lSpez.Caption := 'Специализация';
      fMain.lKval.Caption := 'Квалификация';
      end
  else
      begin
      fMain.lSpec.Caption := 'Спец./Напр.';
      fMain.lSpez.Caption := 'Сп.-ия/Проф.';
      fMain.lKval.Caption := 'Квал./Степ.';
      end;





  DM.adodsWorkCurriculum.Close;
  DM.adodsWorkCurriculum.Open;
   dm.adodsWorkCurrDisc.Close;
  dm.adodsWorkCurrDisc.Parameters[0].Value :=dm.adodsWorkCurriculumID.AsInteger;
  dm.adodsWorkCurrDisc.open;
  dm.adodsWorkCurrDisc.Sort :=
 'Semester, ControlExamination DESC, ControlCourseWork DESC, ControlTest DESC';
 dm.ADOSQLExecutor.CommandText:='DELETE FROM SessionDates where idgroup='+DM.adodsGroupDataID.AsString;
  dm.ADOSQLExecutor.Execute;
  dm.ADOSQLExecutor.CommandText:='insert into SessionDates (IDGroup, Semester) select distinct wc.idGroup, wcd.Semester from WorkCurriculum wc join WorkCurriculumDiscipline wcd on wc.id=wcd.idWorkCurriculum where idGroup='+DM.adodsGroupDataID.AsString;
  dm.ADOSQLExecutor.Execute;
  dm.adodsSessionDate.close;
dm.adodsSessionDate.parameters[0].value:=dm.adodsWorkCurriculumidGroup.AsInteger;
dm.adodsSessionDate.open;
SessionDate.ShowModal;

end;


procedure TfDirectory.SpeedButton2Click(Sender: TObject);
begin
if speedbutton2.caption='Предпросмотр'  then
    begin
  dm.adodsWorkCurrDisc.Close;
  dm.adodsWorkCurrDisc.Parameters[0].Value :=dm.adodoldrupid.AsInteger;
  dm.adodsWorkCurrDisc.open;
  panel7.visible:=true;
     speedbutton2.caption:='Закрыть предпросмотр';
    end
    else
    begin
    speedbutton2.caption:='Предпросмотр';
    panel7.visible:=false;
    end;

end;

end.
