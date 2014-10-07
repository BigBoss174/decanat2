unit Perevod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ButtonGroup, ComCtrls, ExtCtrls, ToolWin, ImgList, Buttons,
  DBCtrls, Grids, DBGrids, StdCtrls, Mask, ieview, imageenview, dbimageen,
  DBCtrlsEh, DB, ieopensavedlg, XPMan, DBGridEh, DBLookupEh, JPEG,
  DBGridEhGrouping, GridsEh, RzTreeVw, ADODB, DateUtils;
   {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  Tfpikazadd = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    StringGrid1: TStringGrid;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpikazadd: Tfpikazadd;
   del:boolean;
implementation

uses uDM, ViborStudent, AddOrder;

{$R *.dfm}

procedure Tfpikazadd.DBGridEh1CellClick(Column: TColumnEh);
var e:integer;
begin
      del:=false;
   SpeedButton7.Click;
          dm.ADODSStudentPrikaz.Close;
 dm.ADODSStudentPrikaz.Parameters[0].Value:=dm.ADODSStudentOrderID.AsInteger;
  dm.ADODSStudentPrikaz.open;
 e:=0;
while  not(dm.ADODSStudentPrikaz.Eof) do
 begin
   e:=e+1;

 dm.adodsStudentData.Close;
 dm.adodsStudentData.Parameters[0].Value:=dm.ADODSStudentPrikazStudentId.Value;
  dm.adodsStudentData.open;
 dm.adodsGroupData.Close;
 dm.adodsGroupData.Parameters[0].Value:=DM.adodsStudentDataIDGroup.Value;
  dm.adodsGroupData.open;
 Perevod.fpikazadd.StringGrid1.Cells[1,e]:=DM.adodsStudentDataNameF.Value;
   Perevod.fpikazadd.StringGrid1.Cells[2,e]:=DM.adodsStudentDataNameI.Value;
   Perevod.fpikazadd.StringGrid1.Cells[3,e]:=DM.adodsStudentDataNameO.Value;
     Perevod.fpikazadd.StringGrid1.Cells[4,e]:= dm.adodsGroupDatakurs.AsString;
  Perevod.fpikazadd.StringGrid1.Cells[5,e]:= dm.adodsGroupDataGroupName.Value;
 Perevod.fpikazadd.StringGrid1.Cells[6,e]:=DM.ADODSStudentdataID.AsString;
 Perevod.fpikazadd.StringGrid1.Cells[0,e]:=inttostr(e);
 Perevod.fpikazadd.stringGrid1.RowCount:= Perevod.fpikazadd.stringGrid1.RowCount+1;
   dm.ADODSStudentPrikaz.Next;



 end;
end;


procedure Tfpikazadd.FormCreate(Sender: TObject);
var e:integer;
begin
del:=true;
    Application.CreateForm(Tfviborstudente, fviborstudente);

end;

procedure Tfpikazadd.SpeedButton1Click(Sender: TObject);
begin

AddOrder.fcreateorder.Show;

end;

procedure Tfpikazadd.SpeedButton2Click(Sender: TObject);
begin

   DM.ADOSQLExecutor.CommandText := ' DELETE StudentOrder WHERE [id]='+dm.ADODSStudentOrderID.AsString;
      DM.ADOSQLExecutor.Execute;
         dm.ADODSStudentOrder.Close;
      dm.ADODSStudentOrder.open;
end;

procedure Tfpikazadd.SpeedButton3Click(Sender: TObject);
begin
ViborStudent.fviborstudente.Show;
end;

procedure Tfpikazadd.SpeedButton4Click(Sender: TObject);
var i, j: Integer;
begin
 


with StringGrid1 do
  begin
    for i:=Row+1 to RowCount-1 do
    for j:=0 to ColCount-1 do
      Cells[j, i-1]:=Cells[j, i];
    for i:=0 to ColCount-1 do
      Cells[i, RowCount-1]:='';
    RowCount:=RowCount-1;
  end;
end;

procedure Tfpikazadd.SpeedButton5Click(Sender: TObject);
  var q:integer;
begin
dm.ADODSStudentPrikaz.Close;
 dm.ADODSStudentPrikaz.Parameters[0].Value:=dm.ADODSStudentOrderID.AsInteger;
  dm.ADODSStudentPrikaz.open;
  while  not(dm.ADODSStudentPrikaz.Eof) do
   begin
   DM.ADOSQLExecutor.CommandText := ' DELETE StudentPrikaz WHERE [idStudentorder]='+dm.ADODSStudentOrderID.AsString;
      DM.ADOSQLExecutor.Execute;
         dm.ADODSStudentPrikaz.Next;
   end;
for q:= 1 to StringGrid1.RowCount-2 do
  begin

    DM.ADOCommand2.Parameters[0].Value :=dm.ADODSStudentOrderID.AsInteger ;
    DM.ADOCommand2.Parameters[1].Value :=strtoint(StringGrid1.Cells[6,q]);
      DM.ADOCommand2.Execute;
  end;

end;

procedure Tfpikazadd.SpeedButton6Click(Sender: TObject);
begin
fpikazadd.Close;
end;

procedure Tfpikazadd.SpeedButton7Click(Sender: TObject);
var i:integer;
begin

 for I := 1 to StringGrid1.RowCount-2 do
 begin
 StringGrid1.Rows[i].Clear;
 StringGrid1.RowCount:=  StringGrid1.RowCount-1;
 end;
end;

procedure Tfpikazadd.SpeedButton8Click(Sender: TObject);
var s:string;
begin
if(MessageDlg('����� ���������� ������� ��� ���������� �������������� ����� ���������.������� ��� ������ ���������?', mtConfirmation, [mbYes, mbNo], 0)=mrYes)then
begin
s:=dm.ADODSStudentOrderID.AsString ;
dm.ADODSStudentOrder.Close;
 DM.ADOSQLExecutor.CommandText := ' update studentorder set [confirme]=1 where [id]='+s;
 DM.ADOSQLExecutor.Execute;
 dm.ADODSStudentOrder.Open;
dm.ADODSStudentData.Close;
   DM.ADOCPerevod.Parameters[0].Value:=dm.ADODSStudentPrikazidStudentOrder.Value;
 DM.ADOCPerevod.Execute;
 dm.ADODSStudentData.Open;
end;
   dm.ADODSStudentOrder.Close;
dm.ADODSStudentOrder.Open;
end;

end.
