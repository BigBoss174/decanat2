unit uAnketaInost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, ComCtrls, RzTreeVw, Grids, DBGrids,
  dblookup, DBGridEhGrouping, GridsEh, DBGridEh, Buttons, DBCtrlsEh, Mask,
  DBLookupEh;
    {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  TfAnketaInost = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAnketaInost: TfAnketaInost;

implementation

uses uDM;

{$R *.dfm}

end.
