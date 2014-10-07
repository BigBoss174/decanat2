unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Registry, jpeg, ExtCtrls,DateUtils, acPNG;

type
  TfLogin = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogin: TfLogin;

implementation

uses
  uMain, uDM, Uinfo, Perevod, uDirectory, uWorkCurriculum,
  uAddSecurityVisibleGroups, uInstituteOfHigherEducation, uSessionDetails,
  ueditworcdisc, ViborStudent, uDMreports, AddOrder, SessionDates, uAddErorWCD,
  uDMfromUPlan, uLoadTreeProgress, UAnketa, uperstudentgroup, load, PerevStud,
  UVedInost;

{$R *.dfm}

procedure TfLogin.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if(Key=10)or(Key=13)
  then SpeedButton1Click(Sender);
end;

procedure TfLogin.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key=10)or(Key=13)
  then SpeedButton1Click(Sender);
end;

procedure TfLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfLogin.FormCreate(Sender: TObject);
 begin
fLogin.ShowModal;
fLogin.Perform(WM_VScroll, SB_TOP,0);
end;

procedure TfLogin.FormShow(Sender: TObject);
var
  reg        : TRegistry;
  openResult : Boolean;
begin
  reg := TRegistry.Create(KEY_READ);
  reg.RootKey := HKEY_CURRENT_USER;

  if (not reg.KeyExists('Software\CHGAKI\Decanat2\'))
  then
      begin
      reg.Access := KEY_WRITE;
      Edit1.SetFocus;
      end
  else
      begin
      reg.Access := KEY_READ;
      Edit2.SetFocus;
      end;

  openResult := reg.OpenKey('Software\CHGAKI\Decanat2\',True);

  if(openResult)
  then Edit1.Text := reg.GetDataAsString('LastLogin');

  reg.CloseKey();
  reg.Free;
end;

procedure TfLogin.SpeedButton1Click(Sender: TObject);
var
  reg        : TRegistry;
  openResult : Boolean;
    i: Integer;
begin

if dm.ADODSVersionVersion.Value=1 then
begin
Loading.Image1.Align:=alClient;
Loading.Panel2.Visible:=false;
flogin.Visible:=false;
  Loading.timer1.enabled:=true;
 Loading.ShowModal;

Application.Terminate;

end;

if dm.ADODSVersionVersion.Value=3 then
begin
   dm.ADOCDecanat.connected:=true;
  reg := TRegistry.Create(KEY_WRITE);
  reg.RootKey := HKEY_CURRENT_USER;
  openResult := reg.OpenKey('Software\CHGAKI\Decanat2\',True);


  DM.adodsSecurityGetRights.Close;
  DM.adodsSecurityGetRights.Parameters[1].Value := Edit1.Text;
  DM.adodsSecurityGetRights.Parameters[2].Value := Edit2.Text;
  DM.adodsSecurityGetRights.Open;
  if  (DM.adodsSecurityGetRightspasswordexpire1.asdatetime<=date) and  (DM.adodsSecurityGetRightspasswordexpire.asdatetime>date) then
  ShowMessage('���� �������� ������ �������� '+datetostr(DM.adodsSecurityGetRightspasswordexpire.asdatetime)+'. ���������� ���������� � ��� ��� ����� ������.');
   if  DM.adodsSecurityGetRightspasswordexpire.asdatetime<=date then
  begin
   ShowMessage('���� �������� ������ ��������. ���������� ���������� � ��� ��� ����� ������.');
   Exit;
  end;


  if(DM.adodsSecurityGetRights.Fields.Fields[0].AsInteger=1)
{  if((Edit1.Text='nonStyle')and(Edit2.Text='dfqn,tq3'))or
    ((Edit1.Text='���')and(Edit2.Text='Fr56Bn7'))or
    ((Edit1.Text='test')and(Edit2.Text='test'))or
    ((Edit1.Text='BSV')and(Edit2.Text='8arZYB24'))or
    ((Edit1.Text='���1')and(Edit2.Text='2TnKUiz8'))
}  then
      begin

      reg.WriteString('LastLogin', Edit1.Text);

      Hide;
      dm.ADODSFaculties.Close;
      dm.ADODSFaculties.Parameters[0].Value:=edit1.Text;
      dm.ADODSFaculties.open;
       dm.adodsStudentData.Close;
      dm.adodsStudentData.open;
      Application.CreateForm(TfMain, fMain);
      Application.CreateForm(TfAnketa, fAnketa);
      Application.CreateForm(TFAddErrorWCD, FAddErrorWCD);
      Application.CreateForm(TfDMfromUplan, fDMfromUplan);
      Application.CreateForm(TfLoadTreeProgress, fLoadTreeProgress);
      Application.CreateForm(Tfpikazadd, fpikazadd);
      Application.CreateForm(TfAddSecurityVisibleGroups, fAddSecurityVisibleGroups);
      Application.CreateForm(TfInstituteOfHigherEducation, fInstituteOfHigherEducation);
      Application.CreateForm(TfSessionDetails, fSessionDetails);
      Application.CreateForm(TDMreports, DMreports);
      Application.CreateForm(TSessionDate, SessionDate);
      Application.CreateForm(TfDirectory, fDirectory);
      Application.CreateForm(TfWorkCurriculum, fWorkCurriculum);
      Application.CreateForm(TfInformation, fInformation);
      Application.CreateForm(Tfcreateorder, fcreateorder);
      Application.CreateForm(Tfperstudentgroup, fperstudentgroup);
       Application.CreateForm( TfUvedInosr,  fUvedInosr);
      fMain.Show;
         for i := 1 to 7 do
  fmain.ComboBox9.Items.add(inttostr(yearof(date)-i ) + '/' + inttostr(yearof(date) - i + 1));
   fmain.ComboBox9.ItemIndex:=0;
//   (DayOfTheYear(date))=256
//      if date=strtodate('07.03.2014') then
//      fInformation.ShowModal;
      fMain.TDBLCFaculties.KeyValue:=  dm.ADODSFacultiesID.AsInteger;
      fMain.TDBLCFacultiesCloseUp(self);

      end
  else
      begin
      showmessage('����� ��� ������ �������!');
      Edit2.SelectAll;
      end;

  reg.CloseKey();
  reg.Free;
  dm.ADODSFaculties.Open;
  dm.ADODSEducation.Open;
  dm.ADODSLanguage.Open;
  dm.ADODSStatuses.Open;
  dm.ADODSBenefit.Open;
  dm.ADODSEducationContitions.Open;
  dm.adodsSubjects.Open;
  dm.ADODSkol.Open;
  dm.ADODSResult.Open;
  dm.adodsGroupName.Open;
end ;
if (dm.ADODSVersionVersion.Value<3) and (dm.ADODSVersionVersion.Value<>3) then
begin
Loading.Image1.Visible:=false;
Loading.Panel2.Align:=alClient;
flogin.Visible:=false;
Loading.timer1.enabled:=true;
Loading.ShowModal;

   Application.Terminate;
end;


end;

procedure TfLogin.SpeedButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.