unit UAnketa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, Buttons, DBCtrlsEh, StdCtrls, Mask, DBLookupEh;
   {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  TFAnketa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnketa: TFAnketa;

implementation

uses uDM, uMain;

{$R *.dfm}

procedure TFAnketa.SpeedButton1Click(Sender: TObject);
begin
if(DM.ADODSForieng.RecordCount>0)
then
begin
DM.ADODSForieng.Post;
DM.ADODSForieng.Close;
end
else
begin
DM.adodsForeignerDataAdd.Close;
DM.adodsForeignerDataAdd.Parameters[0].Value := fmain.TTVmain.Selected.StateIndex;
DM.adodsForeignerDataAdd.Parameters[1].Value := DM.ADODSLineComid.asinteger;
DM.adodsForeignerDataAdd.Parameters[2].Value := DM.ADODSCodSocialid.AsInteger;
DM.adodsForeignerDataAdd.Parameters[3].Value := DBDateTimeEditEh1.Value;
DM.adodsForeignerDataAdd.Parameters[4].Value := DBDateTimeEditEh2.Value;
DM.adodsForeignerDataAdd.Parameters[5].Value := DBDateTimeEditEh3.Value;
DM.adodsForeignerDataAdd.Open;
end;
Close;
end;

procedure TFAnketa.SpeedButton2Click(Sender: TObject);
begin
dm.ADODSForieng.CancelBatch();
FAnketa.Close;
end;

end.
