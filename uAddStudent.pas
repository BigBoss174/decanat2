unit uAddStudent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;
   {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  TfAddStudent = class(TForm)
    Panel1: TPanel;
    sbCancel: TSpeedButton;
    sbAdd: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    EnameF: TEdit;
    EnameI: TEdit;
    Label2: TLabel;
    EnameO: TEdit;
    Label3: TLabel;
    procedure sbCancelClick(Sender: TObject);
    procedure sbAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAddStudent: TfAddStudent;

implementation

{$R *.dfm}

procedure TfAddStudent.FormShow(Sender: TObject);
begin
  EnameF.Text := '';
  EnameI.Text := '';
  EnameO.Text := '';
end;

procedure TfAddStudent.sbAddClick(Sender: TObject);
begin
  if(trim(EnameF.Text)<>'')and(trim(EnameI.Text)<>'')
  then ModalResult := mrOk;
end;

procedure TfAddStudent.sbCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
