unit uAddSecurityVisibleGroups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RzTreeVw, ExtCtrls, Buttons, StdCtrls;
  {$WEAKLINKRTTI ON}
 {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
{$SETPEFlAGS IMAGE_FILE_RELOCS_STRIPPED or IMAGE_FILE_DEBUG_STRIPPED or
IMAGE_FILE_LINE_NUMS_STRIPPED or IMAGE_FILE_LOCAL_SYMS_STRIPPED or
IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP}
type
  TfAddSecurityVisibleGroups = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ctFacultiesGroups: TRzCheckTree;
    sbAdd: TSpeedButton;
    sbCancel: TSpeedButton;
    Label1: TLabel;
    procedure LoadTree(idSecurityGroup: integer);
    procedure sbCancelClick(Sender: TObject);
    procedure sbAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAddSecurityVisibleGroups: TfAddSecurityVisibleGroups;

implementation

{$R *.dfm}

uses
  uDM;

procedure TfAddSecurityVisibleGroups.LoadTree(idSecurityGroup: integer);
var
  NodeFaculty, NodeKurs, NodeGroup: TTreeNode;
  prevFaculty, prevKurs, prevGroup: integer;
begin
  ctFacultiesGroups.Items.Clear;

  prevFaculty := 0;
  prevKurs := 0;
  prevGroup := 0;

  DM.adodsFacultiesGroupsTree.Close;
  DM.adodsFacultiesGroupsTree.Parameters[0].Value := idSecurityGroup;
  DM.adodsFacultiesGroupsTree.Open;

  while not(DM.adodsFacultiesGroupsTree.Eof) do
      begin
      if(DM.adodsFacultiesGroupsTreeF_ID.AsInteger<>prevFaculty)
      then
          begin
          NodeFaculty := ctFacultiesGroups.Items.Add(nil, DM.adodsFacultiesGroupsTreeFacultyShortName.AsString);
          NodeFaculty.ImageIndex := DM.adodsFacultiesGroupsTreeF_ID.AsInteger;
          prevFaculty := DM.adodsFacultiesGroupsTreeF_ID.AsInteger;
          end;

      if(DM.adodsFacultiesGroupsTreeKurs.AsInteger<>prevKurs)
      then
          begin
          NodeKurs := ctFacultiesGroups.Items.AddChild(NodeFaculty, DM.adodsFacultiesGroupsTreeKurs.AsString+' курс');
          NodeKurs.ImageIndex := DM.adodsFacultiesGroupsTreeKurs.AsInteger;
          prevKurs := DM.adodsFacultiesGroupsTreeKurs.AsInteger;
          end;

      if(DM.adodsFacultiesGroupsTreeG_ID.AsInteger<>prevGroup)
      then
          begin
          NodeGroup := ctFacultiesGroups.Items.AddChild(NodeKurs, DM.adodsFacultiesGroupsTreeGroupName.AsString+' '+DM.adodsFacultiesGroupsTreeG_ID.AsString);
          NodeGroup.ImageIndex := DM.adodsFacultiesGroupsTreeG_ID.AsInteger;
          prevGroup := DM.adodsFacultiesGroupsTreeG_ID.AsInteger;
          end;

      DM.adodsFacultiesGroupsTree.Next;
      end;

  ctFacultiesGroups.SetAllNodes(csUnchecked);
end;

procedure TfAddSecurityVisibleGroups.sbAddClick(Sender: TObject);
var
  i : integer;
  nod : TTreeNode;
begin
  for I := 0 to ctFacultiesGroups.Items.Count - 1 do
      begin
      nod := ctFacultiesGroups.Items.Item[i];

      if(ctFacultiesGroups.ItemState[i] = csChecked)and(nod.Level=2)
      then
          begin
          DM.ADOSQLExecutor.CommandText :=
              'exec usp_SecurityGroupVisibleGroupsAdd '+DM.adodsSecurityGroupID.AsString+','+(inttostr(nod.ImageIndex));
          DM.ADOSQLExecutor.Execute;
          end;
      end;

  Close;

  DM.adodsSecurityVisibleGroups.Close;
  DM.adodsSecurityVisibleGroups.Open;
end;

procedure TfAddSecurityVisibleGroups.sbCancelClick(Sender: TObject);
begin
  Close;
end;

end.
