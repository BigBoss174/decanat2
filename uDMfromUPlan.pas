unit uDMfromUPlan;

interface

uses
  SysUtils, Classes, DB, ADODB, frxClass, frxDBSet;
  
type
  TfDMfromUplan = class(TDataModule)
    adocUPlan: TADOConnection;
    adodsPlans: TADODataSet;
    dsPlans: TDataSource;
    adodsPlansid: TAutoIncField;
    adodsPlansSpec: TStringField;
    adodsPlansNspec: TStringField;
    adodsPlansSokr_name: TStringField;
    adodsPlansSpecializ: TStringField;
    adodsPlansKvalif: TStringField;
    adodsPlansForm_obuch: TStringField;
    adodsPlansGod_utverzhd: TIntegerField;
    adodsPlanssrok_obuch: TFloatField;
    adodsPlansPlan_type: TIntegerField;
    adodsCurriculumDisciplines: TADODataSet;
    dsCurriculumDiscliplines: TDataSource;
    adodsCurriculumDisciplinessemester: TIntegerField;
    adodsCurriculumDisciplinesname: TStringField;
    adodsCurriculumDisciplinesHoursInWeek: TFloatField;
    adodsCurriculumDisciplinesHourLecture: TIntegerField;
    adodsCurriculumDisciplinesHourSeminar: TIntegerField;
    adodsCurriculumDisciplinesHourPractice: TIntegerField;
    adodsCurriculumDisciplinesHourSmallGroup: TIntegerField;
    adodsCurriculumDisciplinesHourIndividual: TIntegerField;
    adodsCurriculumDisciplinesControlExamination: TIntegerField;
    adodsCurriculumDisciplinesControlTest: TIntegerField;
    adodsCurriculumDisciplinesControlCourseWork: TIntegerField;
    adodsCurriculum: TADODataSet;
    dsCurriculum: TDataSource;
    adodsCurriculumID: TAutoIncField;
    adodsCurriculumKod: TStringField;
    adodsCurriculumSpec: TStringField;
    adodsCurriculumSpez: TStringField;
    adodsCurriculumKval: TStringField;
    adodsCurriculumSokr: TStringField;
    adodsCurriculumPlan_type: TIntegerField;
    adodsCurriculumDisciplinesHourSelfWork: TIntegerField;
    ADODSQualifications: TADODataSet;
    DSQualifications: TDataSource;
    ADODSQualificationsid: TAutoIncField;
    ADODSQualificationsname: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDMfromUplan: TfDMfromUplan;

implementation

uses uDM;

{$R *.dfm}

procedure TfDMfromUplan.DataModuleCreate(Sender: TObject);
begin
adodsPlans.Close;
adodsPlans.open;
adodsCurriculumDisciplines.Close;
adodsCurriculumDisciplines.open;
adodsCurriculum.Close;
adodsCurriculum.open;

end;

end.
