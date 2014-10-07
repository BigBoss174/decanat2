unit uInstituteOfHigherEducation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Buttons;
    {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  TfInstituteOfHigherEducation = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    dbgFaculties: TDBGridEh;
    Label2: TLabel;
    DBGridEh2: TDBGridEh;
    rgDepartment: TRadioGroup;
    gbFacultyName: TGroupBox;
    eFacultyName: TEdit;
    sbFacultyAdd: TSpeedButton;
    GroupBox1: TGroupBox;
    eFacultyShortName: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure sbFacultyAddClick(Sender: TObject);
    procedure DBGridEh2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eFacultyNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eFacultyShortNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

    { Public variables }
    IDSelectedFaculty: integer;
  end;

var
  fInstituteOfHigherEducation: TfInstituteOfHigherEducation;

implementation

{$R *.dfm}

uses
  uMain, uDM;

procedure TfInstituteOfHigherEducation.DBGridEh2CellClick(Column: TColumnEh);
begin
//  DM.ADODSFaculties.Filter := 'Department='+DM.adodsDepartmentInfo.Fields.Fields[0].AsString;
end;

procedure TfInstituteOfHigherEducation.DBGridEh2KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  DM.ADODSFaculties.Filter := 'Department='+DM.adodsDepartmentInfo.Fields.Fields[0].AsString;
end;

procedure TfInstituteOfHigherEducation.eFacultyNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if(Key=10)or(Key=13)
  then sbFacultyAddClick(Sender);
end;

procedure TfInstituteOfHigherEducation.eFacultyShortNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if(Key=10)or(Key=13)
  then sbFacultyAddClick(Sender);
end;

procedure TfInstituteOfHigherEducation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.ADODSFaculties.Filtered := false;

  fMain.TDBLCFaculties.KeyValue := IDSelectedFaculty;
end;

procedure TfInstituteOfHigherEducation.FormShow(Sender: TObject);
begin
//  DM.ADODSFaculties.Filtered := true;
//  DM.ADODSFaculties.Filter := 'Department='+DM.adodsDepartmentInfo.Fields.Fields[0].AsString;
end;

procedure TfInstituteOfHigherEducation.sbFacultyAddClick(Sender: TObject);
var
  IDSelectedFaculty : integer;
begin
  if(trim(eFacultyName.Text)='')or(trim(eFacultyShortName.Text)='')
  then exit;

  DM.ADOSQLExecutor.CommandText :=
      ' insert into Faculty (Department, FacultyName, FacultyShortName) values'+
      ' ('+inttostr(rgDepartment.ItemIndex+1)+','#39+eFacultyName.Text+#39','#39+eFacultyShortName.Text+#39')';
  DM.ADOSQLExecutor.Execute;

  IDSelectedFaculty := DM.ADODSFacultiesID.AsInteger;
  DM.ADODSFaculties.Close;
  DM.ADODSFaculties.Open;
  DM.ADODSFaculties.Locate('id', IDSelectedFaculty, []);

  eFacultyName.Text := '';
  eFacultyShortName.Text := '';
  eFacultyName.SetFocus;
end;

end.
