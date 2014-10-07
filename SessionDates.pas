unit SessionDates;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, Buttons, StdCtrls, ComCtrls,
  ExtCtrls, DB, ADODB;
   {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  TSessionDate = class(TForm)
    DBGridEh1: TDBGridEh;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    SpeedButton4: TSpeedButton;
    ADODSAvtoRes: TADODataSet;
    DSAvtoRes: TDataSource;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SessionDate: TSessionDate;

implementation

uses uDM, uMain;

{$R *.dfm}

procedure TSessionDate.SpeedButton1Click(Sender: TObject);
begin
   panel1.visible:=false;
  panel2.visible:=true;
  dm.ADODSSessionDate.CancelBatch();
SessionDate.Close;
end;

procedure TSessionDate.SpeedButton2Click(Sender: TObject);
begin
dm.ADODSSessionDate.prior;

SessionDate.Close;
end;

procedure TSessionDate.SpeedButton3Click(Sender: TObject);
begin
panel1.visible:=true;
panel2.visible:=false;
datetimepicker1.date:=date;
datetimepicker1.time:=0;
end;

procedure TSessionDate.SpeedButton4Click(Sender: TObject);
begin
  panel1.visible:=false;
  panel2.visible:=true;
  ADODSAvtoRes.close;
    ADODSAvtoRes.Parameters[1].Value:=dm.adodsGroupDataid.asinteger;
     ADODSAvtoRes.Parameters[2].Value:=datetimepicker1.date;
    ADODSAvtoRes.open;
     dm.adodsSessionDate.close;
dm.adodsSessionDate.parameters[0].value:=dm.adodsWorkCurriculumidGroup.AsInteger;
dm.adodsSessionDate.open;
dm.adodsWorkCurrDisc.Close;
  dm.adodsWorkCurrDisc.Parameters[0].Value :=dm.adodsWorkCurriculumID.AsInteger;
  dm.adodsWorkCurrDisc.open;
  dm.adodsWorkCurrDisc.Sort :=
    'Semester, ControlExamination DESC, ControlCourseWork DESC, ControlTest DESC';
    end;

end.
