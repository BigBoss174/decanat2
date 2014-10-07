unit uSessionDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls, Mask, DBCtrlsEh;
   {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  TfSessionDetails = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    sbOK: TSpeedButton;
    sbCancel: TSpeedButton;
    dbmSessionCourseWorkTheme: TDBMemo;
    procedure sbCancelClick(Sender: TObject);
    procedure sbOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSessionDetails: TfSessionDetails;

implementation

{$R *.dfm}

uses
  uDM;

procedure TfSessionDetails.sbCancelClick(Sender: TObject);
begin
  DM.adodsSessionDetails.CancelBatch();
  Close;
end;

procedure TfSessionDetails.sbOKClick(Sender: TObject);
begin
  DM.adodsSessionDetails.UpdateBatch;
  Close;
end;

end.
