unit PerevStud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, Buttons, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, frxClass,
  frxDBSet, DB, ADODB, RzEdit;
  {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  TForm2 = class(TForm)
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    RzEdit1: TRzEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
