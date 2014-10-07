unit AddOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DBGridEhGrouping, GridsEh, DBGridEh,
  DBCtrlsEh, DBLookupEh, ComCtrls;
     {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  Tfcreateorder = class(TForm)
    Button1: TButton;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcreateorder: Tfcreateorder;

implementation

uses uDM;

{$R *.dfm}

procedure Tfcreateorder.Button1Click(Sender: TObject);
begin
dm.ADODSStudentOrder.Close;
  dm.ADODSStudentOrder.open;
   while  not(dm.ADODSStudentOrder.Eof)  do
   begin
       if  dm.ADODSStudentOrderOrderNumber.AsString=edit1.Text then
       begin
       Showmessage('Приказ с таким именем существует');
        exit;
       end;
       dm.ADODSStudentOrder.Next;
   end;
      DM.ADOCommand1.Parameters[0].Value := DBLookupComboboxEh2.KeyValue ;
      DM.ADOCommand1.Parameters[1].Value := edit1.Text;
      DM.ADOCommand1.Parameters[2].Value := DateTimePicker1.Date;
      DM.ADOCommand1.Parameters[3].Value :=DateTimePicker2.Date;
      DM.ADOCommand1.Parameters[4].Value := DateTimePicker3.Date;
      DM.ADOCommand1.Parameters[5].Value := DBLookupComboboxEh1.KeyValue;
         DM.ADOCommand1.Parameters[6].Value:=false;
      DM.ADOCommand1.Execute;

dm.ADODSStudentOrder.Close;
dm.ADODSStudentOrder.Open;
fcreateorder.Close;
end;

procedure Tfcreateorder.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date:=date;
DateTimePicker2.Date:=date;
DateTimePicker3.Date:=date;
end;

end.
