unit OldNames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, RzForms, StdCtrls, Mask, DBCtrls, Buttons,
  ComCtrls;
  {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  Toldname = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  oldname: Toldname;
nf,ni,no:string;
implementation

uses uDM;

{$R *.dfm}

procedure Toldname.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if RadioGroup1.ItemIndex<>0 then
  dm.adodsStudentData.CancelBatch();
RadioGroup1.ItemIndex:=0;

end;

procedure Toldname.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if RadioGroup1.ItemIndex<>1 then
  dm.adodsStudentData.CancelBatch();
RadioGroup1.ItemIndex:=1;

end;

procedure Toldname.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if RadioGroup1.ItemIndex<>2 then

dm.adodsStudentData.CancelBatch();
RadioGroup1.ItemIndex:=2;
end;

procedure Toldname.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=date();
nf:= dm.adodsStudentDataNameF.AsString;
ni:=dm.adodsStudentDataNameI.AsString;
no:=dm.adodsStudentDataNameO.AsString;

end;

procedure Toldname.SpeedButton1Click(Sender: TObject);
begin
dm.ADODSOldNames.Close;
case RadioGroup1.ItemIndex of
0:
begin
dm.ADODSOldNames.Parameters[1].Value:= nf;
dm.ADODSOldNames.Parameters[3].Value:= 1;
dm.ADODSOldNames.Parameters[4].Value:=0 ;
dm.ADODSOldNames.Parameters[5].Value:= 0 ;
end;
1:
begin
  dm.ADODSOldNames.Parameters[1].Value:=ni;
dm.ADODSOldNames.Parameters[3].Value:= 0;
dm.ADODSOldNames.Parameters[4].Value:= 1;
dm.ADODSOldNames.Parameters[5].Value:= 0;
end;
2:
begin
dm.ADODSOldNames.Parameters[1].Value:= no;
dm.ADODSOldNames.Parameters[3].Value:= 0;
dm.ADODSOldNames.Parameters[4].Value:= 0;
dm.ADODSOldNames.Parameters[5].Value:=  1;
end;

end;
dm.ADODSOldNames.Parameters[2].Value:=  DateTimePicker1.Date;
dm.ADODSOldNames.Parameters[6].Value:=   edit1.Text;
dm.ADODSOldNames.Parameters[7].Value:=dm.ADODSStudentDataiD.AsInteger;
dm.ADODSOldNames.Parameters[8].Value:= DM.adodsSecurityGetRightsid.asinteger;
dm.ADODSOldNames.open;
dm.adodsStudentData.UpdateBatch();
oldname.Close;
end;

procedure Toldname.SpeedButton2Click(Sender: TObject);
begin
dm.adodsStudentData.CancelBatch();
oldname.Close;
end;

end.