unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ButtonGroup, ComCtrls, ExtCtrls, ToolWin, ImgList, Buttons,
  DBCtrls, Grids, DBGrids, StdCtrls, Mask, ieview, imageenview, dbimageen,
  DBCtrlsEh, DB, ieopensavedlg, XPMan, DBGridEh, DBLookupEh, JPEG,
  DBGridEhGrouping, GridsEh, RzTreeVw, ADODB, DateUtils, RzEdit, RzSpnEdt,winsock,
  ActnList, RzDBEdit, RzDBSpin, Spin, Gauges,shellapi,
  PlatformDefaultStyleActnCtrls, ActnMan, sSkinManager, acPNG, acAlphaImageList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, ShlObj, cxShellCommon, cxShellListView, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxShellComboBox,
  cxTextEdit, cxMaskEdit, cxBlobEdit, cxClasses, dxRibbon, dxDockControl,
  dxDockPanel, cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxSSheet, sTreeView;

type
     TFake=class(TCustomGrid);
  TfMain = class(TForm)
    ILmain: TImageList;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    TDBLCFaculties: TDBLookupComboBox;
    Panel2: TPanel;
    PMKurs: TPopupMenu;
    PMGroup: TPopupMenu;
    PMStudent: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    OIEDPhoto: TOpenImageEnDialog;
    mmMenu: TMainMenu;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    TTVmain: TRzTreeView;
    N13: TMenuItem;
    TPCmain: TPageControl;
    TSBase: TTabSheet;
    TDBGmain: TDBGrid;
    TSCard: TTabSheet;
    PCCard: TPageControl;
    TSFaculty: TTabSheet;
    GBDean: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEDeanNameF: TDBEdit;
    DBEDeanNameN: TDBEdit;
    DBEDeanNameI: TDBEdit;
    GBFaculty: TGroupBox;
    Label11: TLabel;
    Label2: TLabel;
    DBEFacultyName: TDBEdit;
    DBEFacultyShortName: TDBEdit;
    GroupBox14: TGroupBox;
    sbStudentListFaculty: TSpeedButton;
    TSGroup: TTabSheet;
    GBGroupSpecies: TGroupBox;
    lPlanNumber: TLabel;
    lSpec: TLabel;
    lSpez: TLabel;
    lKval: TLabel;
    lNSpec: TLabel;
    sbLoadPlan: TSpeedButton;
    lSpecialityAbbreviation: TLabel;
    sbEditPlan: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBEEhGroupIdPlan: TDBEditEh;
    DBESpeciality: TDBEdit;
    DBESpecialization: TDBEdit;
    DBEQualification: TDBEdit;
    DBESpecialityCode: TDBEdit;
    dbeSpecialityAbbreviation: TDBEdit;
    GBGroupName: TGroupBox;
    lGroupName: TLabel;
    sbGroupNameByKurs: TSpeedButton;
    sbSessionGroup: TSpeedButton;
    GroupBox13: TGroupBox;
    sbStudentListGroup: TSpeedButton;
    TSStudent: TTabSheet;
    PCStudent: TPageControl;
    TabSheet4: TTabSheet;
    PCStudentPersonal: TPageControl;
    TSStudentMain: TTabSheet;
    sbLoadPhoto: TSpeedButton;
    ImageEnDBView1: TImageEnDBView;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEnameF: TDBEdit;
    DBEnameI: TDBEdit;
    DBEnameO: TDBEdit;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    DBDTEBirthDate: TDBDateTimeEditEh;
    DBEBirthPlace: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBLCBEducationLevel: TDBLookupComboBox;
    DBEEducationInstitution: TDBEdit;
    DBNEEducationEndYear: TDBNumberEditEh;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    DBEJobOrganization: TDBEdit;
    DBEJobProfession: TDBEdit;
    TSStudentPassport: TTabSheet;
    GroupBox7: TGroupBox;
    Label25: TLabel;
    Label24: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    GroupBox3: TGroupBox;
    Label26: TLabel;
    DBEdit4: TDBEdit;
    GroupBox4: TGroupBox;
    Label27: TLabel;
    DBEdit5: TDBEdit;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label48: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    TSStudentAcademic: TTabSheet;
    TSReport: TTabSheet;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    N16: TMenuItem;
    N17: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    TabSheet5: TTabSheet;
    panel1iga: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBLookupComboboxEh2: TDBLookupComboboxEh;
    DBLookupComboboxEh3: TDBLookupComboboxEh;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Label56: TLabel;
    DBLookupComboboxEh4: TDBLookupComboboxEh;
    DBLookupComboboxEh5: TDBLookupComboboxEh;
    DBLookupComboboxEh6: TDBLookupComboboxEh;
    DBLookupComboboxEh7: TDBLookupComboboxEh;
    DBEdit33: TDBEdit;
    DBLookupComboboxEh8: TDBLookupComboboxEh;
    DBDateTimeEditEh4: TDBDateTimeEditEh;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBLookupComboboxEh9: TDBLookupComboboxEh;
    Button5: TButton;
    RzSpinEdit1: TRzSpinEdit;
    Panel9: TPanel;
    Label62: TLabel;
    CheckBox1: TCheckBox;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Panel5: TPanel;
    Label50: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    CBUslObuch: TComboBox;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Panel6: TPanel;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Label61: TLabel;
    ComboBox1: TComboBox;
    RadioGroup1: TRadioGroup;
    Button7: TButton;
    Panel10: TPanel;
    ComboBox2: TComboBox;
    SpeedButton15: TSpeedButton;
    Label63: TLabel;
    RadioGroup2: TRadioGroup;
    SpeedButton16: TSpeedButton;
    Button8: TButton;
    Panel11: TPanel;
    ComboBox3: TComboBox;
    RadioGroup3: TRadioGroup;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    Label64: TLabel;
    Button9: TButton;
    Button10: TButton;
    Dsgecnbnm1: TMenuItem;
    N21: TMenuItem;
    Button12: TButton;
    Panel12: TPanel;
    Label65: TLabel;
    ComboBox4: TComboBox;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    DBLookupComboboxEh10: TDBLookupComboboxEh;
    Label66: TLabel;
    DBComboBox1: TDBComboBox;
    Button11: TButton;
    Label67: TLabel;
    Button13: TButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    ComboBox5: TComboBox;
    Label68: TLabel;
    Button14: TButton;
    Panel13: TPanel;
    RzSpinEdit2: TRzSpinEdit;
    RzSpinEdit3: TRzSpinEdit;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    Button16: TButton;
    Panel14: TPanel;
    SpeedButton27: TSpeedButton;
    ComboBox6: TComboBox;
    RadioGroup4: TRadioGroup;
    SpeedButton28: TSpeedButton;
    Label72: TLabel;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Panel15: TPanel;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    CheckBox2: TCheckBox;
    ComboBox7: TComboBox;
    N22: TMenuItem;
    N23: TMenuItem;
    Label73: TLabel;
    GroupBox15: TGroupBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    RadioGroup5: TRadioGroup;
    SpeedButton31: TSpeedButton;
    Label74: TLabel;
    Label75: TLabel;
    Panel16: TPanel;
    SpeedButton32: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    GroupBox8: TGroupBox;
    Label28: TLabel;
    sbSessionStudent: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    DBEdit6: TDBEdit;
    DBEditEh1: TDBEditEh;
    GroupBox9: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    GroupBox10: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit8: TDBEdit;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    GroupBox12: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    GroupBox11: TGroupBox;
    Label36: TLabel;
    Label49: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Panel17: TPanel;
    Label76: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label77: TLabel;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    Label82: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label81: TLabel;
    DateTimePicker3: TDateTimePicker;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    Panel18: TPanel;
    Button21: TButton;
    SpeedButton33: TSpeedButton;
    Edit2: TEdit;
    Button22: TButton;
    Panel19: TPanel;
    DBLookupComboboxEh11: TDBLookupComboboxEh;
    DBLookupComboboxEh12: TDBLookupComboboxEh;
    DBLookupComboboxEh13: TDBLookupComboboxEh;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    Panel20: TPanel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    SpeedButton36: TSpeedButton;
    DBLookupComboboxEh14: TDBLookupComboboxEh;
    DBLookupComboboxEh15: TDBLookupComboboxEh;
    DBLookupComboboxEh16: TDBLookupComboboxEh;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    SpeedButton37: TSpeedButton;
    Label89: TLabel;
    Label90: TLabel;
    SpeedButton38: TSpeedButton;
    Panel21: TPanel;
    SpeedButton39: TSpeedButton;
    Label91: TLabel;
    CheckBox3: TCheckBox;
    ComboBox12: TComboBox;
    GroupBox18: TGroupBox;
    Label92: TLabel;
    SpeedButton40: TSpeedButton;
    Button15: TButton;
    Panel22: TPanel;
    SpeedButton41: TSpeedButton;
    Label93: TLabel;
    SpeedButton42: TSpeedButton;
    ComboBox13: TComboBox;
    RadioGroup6: TRadioGroup;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    TabSheet10: TTabSheet;
    SpeedButton43: TSpeedButton;
    SpeedButton44: TSpeedButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Button27: TButton;
    Panel23: TPanel;
    SpeedButton45: TSpeedButton;
    Label94: TLabel;
    SpeedButton46: TSpeedButton;
    ComboBox14: TComboBox;
    RadioGroup7: TRadioGroup;
    Tab: TTabSheet;
    GroupBox19: TGroupBox;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    GroupBox22: TGroupBox;
    GroupBox23: TGroupBox;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    Label101: TLabel;
    DBEdit40: TDBEdit;
    DBDateTimeEditEh5: TDBDateTimeEditEh;
    DBDateTimeEditEh6: TDBDateTimeEditEh;
    DBCheckBox3: TDBCheckBox;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    Label105: TLabel;
    Label106: TLabel;
    GroupBox24: TGroupBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    GroupBox25: TGroupBox;
    DBGridEh2: TDBGridEh;
    Button28: TButton;
    Panel24: TPanel;
    SpeedButton47: TSpeedButton;
    Label107: TLabel;
    SpeedButton48: TSpeedButton;
    ComboBox15: TComboBox;
    RadioGroup8: TRadioGroup;
    DBMemo1: TDBMemo;
    DBLookupComboBox6: TDBLookupComboBox;
    DBGridEh3: TDBGridEh;
    Panel26: TPanel;
    Panel27: TPanel;
    SpeedButton51: TSpeedButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    SpeedButton53: TSpeedButton;
    SpeedButton54: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Button29: TButton;
    Panel25: TPanel;
    SpeedButton49: TSpeedButton;
    SpeedButton50: TSpeedButton;
    ComboBox16: TComboBox;
    Edit8: TEdit;
    Label112: TLabel;
    Label114: TLabel;
    DBEdit44: TDBEdit;
    RadioGroup9: TRadioGroup;
    Button30: TButton;
    Panel28: TPanel;
    ComboBox17: TComboBox;
    DBLookupComboboxEh17: TDBLookupComboboxEh;
    Label113: TLabel;
    Label115: TLabel;
    SpeedButton52: TSpeedButton;
    SpeedButton55: TSpeedButton;
    J1: TMenuItem;
    Label116: TLabel;
    DBCheckBox6: TDBCheckBox;
    DBEditEh2: TDBEditEh;
    RadioGroup10: TRadioGroup;
    Timer3: TTimer;
    Button31: TButton;
    Panel29: TPanel;
    Edit7: TEdit;
    Label117: TLabel;
    Label118: TLabel;
    Edit9: TEdit;
    SpeedButton59: TSpeedButton;
    SpeedButton60: TSpeedButton;
    SpeedButton57: TSpeedButton;
    CheckBox4: TCheckBox;
    Edit10: TEdit;
    Label119: TLabel;
    Label120: TLabel;
    Memo1: TMemo;
    GroupBox26: TGroupBox;
    SpeedButton63: TSpeedButton;
    ScrollBar1: TScrollBar;
    Label124: TLabel;
    Gauge1: TGauge;
    Label125: TLabel;
    H1: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    TabSheet11: TTabSheet;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    N26: TMenuItem;
    N61: TMenuItem;
    Edit11: TEdit;
    CheckBox5: TCheckBox;
    Label126: TLabel;
    ComboBox19: TComboBox;
    Label127: TLabel;
    DateTimePicker4: TDateTimePicker;
    GroupBox28: TGroupBox;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    SpeedButton64: TSpeedButton;
    Label133: TLabel;
    SpeedButton65: TSpeedButton;
    SpeedButton66: TSpeedButton;
    SpeedButton67: TSpeedButton;
    DBEditEh3: TDBEditEh;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    GroupBox29: TGroupBox;
    Label134: TLabel;
    DBEdit52: TDBEdit;
    Label135: TLabel;
    DBEdit53: TDBEdit;
    Edit12: TEdit;
    Button35: TButton;
    BitBtn1: TBitBtn;
    TabSheet12: TTabSheet;
    Panel30: TPanel;
    SpeedButton70: TSpeedButton;
    Panel31: TPanel;
    ComboBox20: TComboBox;
    GroupBox30: TGroupBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    GroupBox31: TGroupBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    SpeedButton71: TSpeedButton;
    SpeedButton72: TSpeedButton;
    Label137: TLabel;
    DBEdit56: TDBEdit;
    RzDBSpinner4: TRzDBSpinner;
    DBCheckBox8: TDBCheckBox;
    DBEdit46: TDBEdit;
    RzDBSpinner2: TRzDBSpinner;
    Label136: TLabel;
    DBEdit55: TDBEdit;
    RzDBSpinner3: TRzDBSpinner;
    GroupBox27: TGroupBox;
    SpeedButton62: TSpeedButton;
    Label122: TLabel;
    Label123: TLabel;
    SpinEdit1: TSpinEdit;
    ComboBox18: TComboBox;
    GroupBox32: TGroupBox;
    SpeedButton58: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton69: TSpeedButton;
    SpeedButton68: TSpeedButton;
    SpeedButton73: TSpeedButton;
    Panel32: TPanel;
    Image1: TImage;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    Label121: TLabel;
    Label138: TLabel;
    DateTimePicker7: TDateTimePicker;
    DateTimePicker8: TDateTimePicker;
    Label139: TLabel;
    Label140: TLabel;
    Panel33: TPanel;
    DBEdit54: TDBEdit;
    SpeedButton74: TSpeedButton;
    Panel34: TPanel;
    Panel35: TPanel;
    sAlphaImageList1: TsAlphaImageList;
    sAlphaImageList2: TsAlphaImageList;
    sAlphaImageList3: TsAlphaImageList;
    sAlphaImageList4: TsAlphaImageList;
    Label141: TLabel;
    DateTimePicker9: TDateTimePicker;
    Label142: TLabel;
    DateTimePicker10: TDateTimePicker;
    dxDockPanel1: TdxDockPanel;
    dxFloatDockSite1: TdxFloatDockSite;
    Label143: TLabel;
    Label144: TLabel;
    DBLookupComboboxEh18: TDBLookupComboboxEh;
    DBLookupComboboxEh19: TDBLookupComboboxEh;
    Label145: TLabel;
    TTVmain_: TTreeView;
    GroupBox33: TGroupBox;
    Label146: TLabel;
    DBEdit45: TDBEdit;
    SpeedButton56: TSpeedButton;
    Label147: TLabel;
    SpeedButton75: TSpeedButton;
    Panel36: TPanel;
    SpeedButton76: TSpeedButton;
    Label148: TLabel;
    SpeedButton77: TSpeedButton;
    ComboBox21: TComboBox;
    RadioGroup11: TRadioGroup;
    SpeedButton78: TSpeedButton;
    Button20: TButton;
    procedure TDBLCFacultiesCloseUp(Sender: TObject);
    procedure TTVmain_Change(Sender: TObject; Node: TTreeNode);
    procedure TDBGmainTitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure TTVmain_Changing(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure TTVmain_MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBRadioGroup2Change(Sender: TObject);
    procedure sbLoadPhotoClick(Sender: TObject);
    procedure sbLoadPlanClick(Sender: TObject);
    procedure sbGroupNameByKursClick(Sender: TObject);
    procedure sbEditPlanClick(Sender: TObject);
    procedure sbSessionStudentClick(Sender: TObject);
    procedure sbSessionGroupClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetAccessLevel;
    procedure N12Click(Sender: TObject);
    procedure DBEDeanNameFExit(Sender: TObject);
    procedure DBEDeanNameNExit(Sender: TObject);
    procedure DBEDeanNameIExit(Sender: TObject);
    procedure DBEFacultyNameExit(Sender: TObject);
    procedure DBEFacultyShortNameExit(Sender: TObject);
    procedure sbStudentListGroupClick(Sender: TObject);
    procedure sbStudentListFacultyClick(Sender: TObject);
    procedure TDBGmainDblClick(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure prikazshow;
    procedure N15Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure PMStudentPopup(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBLookupComboboxEh7CloseUp(Sender: TObject; Accept: Boolean);
    procedure PCStudentChange(Sender: TObject);
    procedure DBLookupComboboxEh9CloseUp(Sender: TObject; Accept: Boolean);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure ComboBox2CloseUp(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure ComboBox3CloseUp(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Dsgecnbnm1Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure DBLookupComboboxEh10CloseUp(Sender: TObject; Accept: Boolean);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure QuickSearch(Tree: TRzTreeView; SearchTarget: variant) ;
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure ComboBox6CloseUp(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure TDBGmainDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button18Click(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure ComboBox11CloseUp(Sender: TObject);
    procedure ComboBox10CloseUp(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure SpeedButton38Click(Sender: TObject);
    procedure SpeedButton39Click(Sender: TObject);
    procedure SpeedButton40Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure SpeedButton41Click(Sender: TObject);
    procedure ComboBox13CloseUp(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure SpeedButton43Click(Sender: TObject);
    procedure SpeedButton44Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure SpeedButton45Click(Sender: TObject);
    procedure ComboBox14CloseUp(Sender: TObject);
    procedure SpeedButton46Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure SpeedButton47Click(Sender: TObject);
    procedure ComboBox15CloseUp(Sender: TObject);
    procedure SpeedButton50Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure SpeedButton49Click(Sender: TObject);
    procedure SpeedButton53Click(Sender: TObject);
    procedure SpeedButton51Click(Sender: TObject);
    procedure SpeedButton54Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure ComboBox17CloseUp(Sender: TObject);
    procedure SpeedButton52Click(Sender: TObject);
    procedure J1Click(Sender: TObject);
    procedure RadioGroup10Click(Sender: TObject);
    procedure DBCheckBox6Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure SpeedButton60Click(Sender: TObject);
    procedure SpeedButton59Click(Sender: TObject);
    procedure SpeedButton57Click(Sender: TObject);
    procedure RzDBSpinner1Change(Sender: TObject);
    procedure DBEdit45KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit46KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBCheckBox7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton61Click(Sender: TObject);
    procedure SpeedButton58Click(Sender: TObject);
    procedure SpeedButton62Click(Sender: TObject);
    procedure SpeedButton63Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure TDBGmainMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure TDBGmainMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Button32Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure RadioGroup7Click(Sender: TObject);
    procedure TTVmainCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure DBEdit52KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton68Click(Sender: TObject);
    procedure DBEdit53KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton69Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton72Click(Sender: TObject);
    procedure GroupBox30MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox31MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton70Click(Sender: TObject);
    procedure SpeedButton71Click(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure SpeedButton73Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure RadioGroup5Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure SpeedButton74Click(Sender: TObject);
    procedure Panel35Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure SpeedButton56Click(Sender: TObject);
    procedure SpeedButton75Click(Sender: TObject);
    procedure SpeedButton78Click(Sender: TObject);
    procedure ComboBox21CloseUp(Sender: TObject);
    procedure SpeedButton76Click(Sender: TObject);



  private
    { Private declarations }
    PreviousSelectedNode: TTreeNode;
  public
    { Public declarations }

    procedure LoadTree(ID: Integer; FacultyName: string);

  end;

var
  fMain: TfMain;


implementation

{$R *.dfm}

uses
  uDM, uLoadTreeProgress, uAddStudent, uDMfromUPlan, uResizePhoto,
  uDirectory, uWorkCurriculum, uSession, uManageSecurity,
  uInstituteOfHigherEducation, uDMreports,  Perevod, uperstudentgroup,
  uSearch,  OldNames, SessionDates, uAnketaInost, UAnketa, load, ExportDiplom,
  PerevStud, UVedInost, Unit1;

procedure TfMain.prikazshow;
var
  e: Integer;
begin


  Perevod.fpikazadd.StringGrid1.Cells[1, 0] := '�������';
  Perevod.fpikazadd.StringGrid1.Cells[2, 0] := '���';
  Perevod.fpikazadd.StringGrid1.Cells[3, 0] := '��������';
  Perevod.fpikazadd.StringGrid1.Cells[4, 0] := '����';
  Perevod.fpikazadd.StringGrid1.Cells[5, 0] := '������';
  dm.ADODSStudentPrikaz.Close;
  dm.ADODSStudentPrikaz.Parameters[0].Value := dm.ADODSStudentOrderID.AsInteger;
  dm.ADODSStudentPrikaz.open;
  e := 0;

  while not(dm.ADODSStudentPrikaz.Eof) do
  begin
    e := e + 1;

    dm.adodsStudentData.Close;
    dm.adodsStudentData.Parameters[0].Value :=
      dm.ADODSStudentPrikazStudentId.Value;
    dm.adodsStudentData.open;
    dm.adodsGroupData.Close;
    dm.adodsGroupData.Parameters[0].Value := dm.adodsStudentDataIDGroup.Value;
    dm.adodsGroupData.open;
    Perevod.fpikazadd.StringGrid1.Cells[1, e] := dm.adodsStudentDataNameF.Value;
    Perevod.fpikazadd.StringGrid1.Cells[2, e] := dm.adodsStudentDataNameI.Value;
    Perevod.fpikazadd.StringGrid1.Cells[3, e] := dm.adodsStudentDataNameO.Value;
    Perevod.fpikazadd.StringGrid1.Cells[4, e] := dm.adodsGroupDatakurs.AsString;
    Perevod.fpikazadd.StringGrid1.Cells[5, e] :=
      dm.adodsGroupDataGroupName.Value;
    Perevod.fpikazadd.StringGrid1.Cells[6, e] := dm.ADODSStudentdataID.AsString;
    Perevod.fpikazadd.StringGrid1.Cells[0, e] := inttostr(e);
    Perevod.fpikazadd.StringGrid1.RowCount :=
      Perevod.fpikazadd.StringGrid1.RowCount + 1;
    dm.ADODSStudentPrikaz.Next;
  end;
end;
  //��������� ��� ���������� ������ �� ����������� ����� ���������
procedure TfMain.BitBtn1Click(Sender: TObject);
begin
 if  edit12.Visible then
      begin
        edit12.Visible:=false;
  Button35.Visible:=false;
      end
 else
 begin
edit12.Visible:=true;
  Button35.Visible:=true;
 end;
end;

procedure TfMain.Button10Click(Sender: TObject);
begin
  DMreports.ADODataSet1.Close;
  DMreports.ADODataSet1.Parameters[0].Value := TTVmain.Selected.StateIndex;
  DMreports.ADODataSet1.open;
  DMreports.frxReport1.ShowReport();
end;
  //��������� ��� ������ ��������� �� �������� � ������� ������
procedure TfMain.Button11Click(Sender: TObject);
begin
DMreports.ADODSNoSinhron.Close;
DMreports.ADODSNoSinhron.Open;
DMreports.frxRNoSinhron.ShowReport();

end;
 //����������� ���������� � ����������
procedure TfMain.Button12Click(Sender: TObject);
begin
  Panel11.Visible := false;
  Panel12.Visible :=true;
  Panel14.Visible :=False;
  Panel15.Visible :=False;
  Panel19.Visible :=False;
end;

procedure TfMain.Button13Click(Sender: TObject);
var i:integer;
begin
for I := 562 to 823 do
  begin
dm.ADODUpdSessionOld.close;
 dm.ADODUpdSessionOld.Parameters[1].Value:=i;
dm.ADODUpdSessionOld.open;
  end;
end;
 //����������� ���������� � ����������
procedure TfMain.Button14Click(Sender: TObject);
begin
Panel5.Visible := false;;
  Panel10.Visible :=false;
  Panel6.Visible :=false;
  Panel13.Visible :=true;
  Panel22.Visible :=false;
  dm.adodmaxsession.close;
  dm.adodmaxsession.Parameters[0].value:= TTVmain.Selected.StateIndex;;
  dm.adodmaxsession.open;
     RzSpinEdit3.Value:= dm.adodmaxsessionm.asinteger;

  
end;
//����������� ���������� � ����������, � ����� ���������� ������ ����� ���������� ���
procedure TfMain.Button15Click(Sender: TObject);
 var i: byte;
begin
ComboBox13.Items.Clear;
  for i := 1 to 7 do
    ComboBox13.Items.add(inttostr(yearof(date) - i) + '/' + inttostr
        (yearof(date) - i + 1));
 Panel5.Visible := false;;
  Panel10.Visible :=false;
  Panel6.Visible :=false;
  Panel13.Visible :=false;
  Panel22.Visible :=true;
end;
 //����������� ���������� � ����������, � ����� ���������� ������ ����� ���������� ���
procedure TfMain.Button16Click(Sender: TObject);
 var i: byte;
begin
  ComboBox6.Items.Clear;
  for i := 1 to 7 do
    ComboBox6.Items.add(inttostr(yearof(date) - i) + '/' + inttostr
        (yearof(date) - i + 1));
   Panel11.Visible := False;
  Panel12.Visible :=False;
  Panel14.Visible :=true;
  Panel15.Visible :=False;
  ComboBox6.ItemIndex:=0;
end;
 //���������� ����� ���������
procedure TfMain.Button17Click(Sender: TObject);
var i:Integer;
begin
dm.q.Close;
dm.q.open;
dm.q.First;
Label125.Visible:=True;
Gauge1.Visible:=True;
Gauge1.MinValue:=0;
i:=0;
Gauge1.MaxValue:=DM.q.RecordCount;
while not(dm.q.Eof) do
begin
  dm.ADOCMarks.Parameters[1].Value:=dm.qID.AsInteger;
  dm.ADOCMarks.Execute;
   dm.q.Next;
   i:=i+1;
   Gauge1.Progress:=i;
   label125.Caption:=IntToStr(DM.q.RecordCount);
end;
ShowMessage('���������');
 Gauge1.Visible:=false;
end;
  //����� ������ � ����������� ���������� � ����������
procedure TfMain.Button18Click(Sender: TObject);
begin
DMreports.ADODSContingForFaculty.Close;
DMreports.ADODSContingForFaculty.Parameters[1].Value:=dm.ADODSFacultiesID.AsInteger;
 DMreports.ADODSContingForFaculty.open;
 DMreports.frxRContingForFaculty.Variables['x'] := '''' +dm.ADODSFacultiesFacultyName.AsString+'''' ;
 DMreports.frxRContingForFaculty.ShowReport();
 Panel11.Visible := false;
  Panel12.Visible :=False;
  Panel14.Visible :=False;
  Panel15.Visible :=False;
  Panel19.Visible :=False;
end;
  //����������� ���������� � ����������
procedure TfMain.Button19Click(Sender: TObject);
begin
 Panel11.Visible := False;
  Panel12.Visible :=False;
  Panel14.Visible :=False;
  Panel15.Visible :=true;;
end;
 //����� ������
procedure TfMain.Button1Click(Sender: TObject);
begin
  DMreports.ADODSHospital.Close;
  DMreports.ADODSHospital.Parameters[0].Value :=
    dm.ADODSStudentListIDGroup.Value;

  DMreports.ADODSHospital.open;

  DMreports.adodsStudentListGet.Close;
  DMreports.adodsStudentListGet.Parameters[1].Value :=
    TTVmain.Selected.StateIndex; ;
  DMreports.adodsStudentListGet.Parameters[2].Value := 0;
  DMreports.adodsStudentListGet.Parameters[3].Value := 0;
  DMreports.adodsStudentListGet.Parameters[4].Value := 0;
  DMreports.adodsStudentListGet.Parameters[5].Value := 1;
  DMreports.adodsStudentListGet.open;
  DMreports.frxrHospital.ShowReport();
  Panel5.Visible := false;;
  Panel10.Visible :=false;
  Panel6.Visible :=false;
  Panel13.Visible :=false;
  Panel22.Visible :=false;
end;
   //����� ������
procedure TfMain.Button20Click(Sender: TObject);

begin
DMreports.frxreport5.showreport();
end;
   //�������� ������� � ��������
procedure TfMain.Button21Click(Sender: TObject);
begin
DM.ADOSQLExecutor.CommandText := 'delete from Prikaz where id='+dm.ADODSPrikazid.AsString;
      DM.ADOSQLExecutor.Execute;
      dm.ADODSPrikaz.Close;
dm.ADODSPrikaz.Parameters[0].Value:=TTVmain.Selected.StateIndex;
dm.ADODSPrikaz.OPEN;
end;
    //����������� ���������� � ����������
procedure TfMain.Button22Click(Sender: TObject);
begin
panel19.Visible:=true;
  Panel11.Visible := false;
  Panel12.Visible :=true;
  Panel14.Visible :=False;
  Panel15.Visible :=False;
DBLookupComboboxEh11.SelectNextValue(true);
DBLookupComboboxEh12.SelectNextValue(true);
DBLookupComboboxEh13.SelectNextValue(true);
  DBLookupComboboxEh19.SelectNextValue(true);
end;
 //����� ������
procedure TfMain.Button23Click(Sender: TObject);
begin
DMreports.ADODSReg.Close;
DMreports.ADODSReg.Parameters[0].Value:=dm.ADODSFacultiesID.AsInteger;
DMreports.ADODSReg.open;
DMreports.frxRReg.ShowReport();
 Panel11.Visible := false;
  Panel12.Visible :=False;
  Panel14.Visible :=False;
  Panel15.Visible :=False;
  Panel19.Visible :=False;
end;
     //����� ������
procedure TfMain.Button24Click(Sender: TObject);
begin
DMreports.ADODBudget.Close;
DMreports.ADODBudget.Parameters[0].Value:=dm.ADODSFacultiesID.AsInteger;
DMreports.ADODBudget.open;
DMreports.frxRBudget.ShowReport();
Panel11.Visible := false;
  Panel12.Visible :=False;
  Panel14.Visible :=False;
  Panel15.Visible :=False;
  Panel19.Visible :=False;
end;
    //����� ������
procedure TfMain.Button25Click(Sender: TObject);
begin
dMreports.ADODSUslovObuch.Close;
  DMreports.ADODSUslovObuch.Parameters[0].Value :=
    dm.ADODSStudentListIDGroup.Value;
  DMreports.ADODSUslovObuch.Parameters[1].Value := 2;
  DMreports.ADODSUslovObuch.open;
  DMreports.frxRVedomOplata.Variables['f'] := '''' + dm.ADODSFacultiesFacultyName.AsString + '''';
  DMreports.frxRVedomOplata.Variables['g'] := '''' + dm.adodsGroupDataGroupName.AsString + '''';
  DMreports.frxRVedomOplata.Variables['k'] := '''' + dm.adodsGroupDatakurs.AsString + '''';
  DMreports.frxRVedomOplata.ShowReport;
  Panel5.Visible := false;
  Panel10.Visible :=false;
  Panel6.Visible :=false;
  Panel13.Visible :=false;
  Panel22.Visible :=false;
end;
        //����� ������
procedure TfMain.Button26Click(Sender: TObject);
begin
DMreports.ADODSSexVuzKurs.Close;
DMreports.ADODSSexVuzKurs.Parameters[1].Value:=dm.ADODSFacultiesDepartment.AsInteger;
 DMreports.ADODSSexVuzKurs.Open;
 DMreports.frxRSexVuzKurs.Variables['otd'] := '''' +panel32.Caption+ '''';
DMreports.frxRSexVuzKurs.ShowReport;
end;
   //���������� ����� ����������� �����������
procedure TfMain.Button27Click(Sender: TObject);
var i:byte;
begin
DateTimePicker4.Date:=StrToDate('01.03.' +intToStr(yearof(date)));
ComboBox14.Items.Clear;
  for i := 1 to 7 do
    ComboBox14.Items.add(inttostr(yearof(date) - i) + '/' + inttostr
        (yearof(date) - i + 1));
panel23.Visible:=true;
edit8.Text:=dm.adodsStudentDataNameF.AsString+' '+dm.adodsStudentDataNamei.AsString+' '+dm.adodsStudentDataNameo.AsString;
end;
   //���������� ����� ����������� �����������, �������� � ����������
procedure TfMain.Button28Click(Sender: TObject);
var i:byte;
begin
  ComboBox15.Items.Clear;
  for i := 1 to 7 do
    ComboBox15.Items.add(inttostr(yearof(date) - i) + '/' + inttostr
        (yearof(date) - i + 1));
  Panel5.Visible := false;;
  Panel10.Visible :=false;
  Panel6.Visible :=false;
  Panel13.Visible :=false;
  Panel22.Visible :=false;
   Panel24.Visible :=true;
end;

procedure TfMain.Button29Click(Sender: TObject);
begin
panel25.Visible:=true;
end;
  //����� ������
procedure TfMain.Button2Click(Sender: TObject);
begin
  DMreports.ADODKadri.Close;
  DMreports.ADODKadri.Parameters[0].Value := dm.ADODSStudentListIDGroup.Value;

  DMreports.ADODKadri.open;

  DMreports.adodsStudentListGet.Close;
  DMreports.adodsStudentListGet.Parameters[1].Value :=
    TTVmain.Selected.StateIndex; ;
  DMreports.adodsStudentListGet.Parameters[2].Value := 0;
  DMreports.adodsStudentListGet.Parameters[3].Value := 0;
  DMreports.adodsStudentListGet.Parameters[4].Value := 0;
  DMreports.adodsStudentListGet.Parameters[5].Value := 1;
  DMreports.adodsStudentListGet.open;
  DMreports.frxrKadri.ShowReport();
  Panel5.Visible := false;;
  Panel10.Visible :=false;
  Panel6.Visible :=false;
  Panel13.Visible :=false;
  Panel22.Visible :=false;
end;
       //���������� ����� ����������� �����������
procedure TfMain.Button30Click(Sender: TObject);
var i:byte;
begin
panel28.visible:=true;
 for i := 0 to 6 do
    ComboBox17.Items.add(inttostr(yearof(date) - i)) ;

 ComboBox17.ItemIndex:=0;
 dm.ADODSGroupExpiri.Close;
dm.ADODSGroupExpiri.Parameters[0].Value:=dm.ADODSFacultiesID.AsInteger;
dm.ADODSGroupExpiri.Parameters[1].Value:=strtoint(ComboBox17.Items[ComboBox17.ItemIndex]);
dm.ADODSGroupExpiri.Parameters[2].Value:=dm.ADODSFacultiesID.AsInteger;
dm.ADODSGroupExpiri.open;
end;
    //���������� ����� ����������� �����������
procedure TfMain.Button31Click(Sender: TObject);
begin
panel29.Visible:=true;
edit7.Text:=DM.adodsStudentDataNameF.AsString+' '+DM.adodsStudentDataNameI.AsString+' '+DM.adodsStudentDataNameO.AsString;
end;
  procedure TfMain.Button32Click(Sender: TObject);
begin
dmreports.ADODBiblioCard.Close;
dmreports.ADODBiblioCard.Parameters[0].Value:= TTVmain.Selected.StateIndex;
if ttvmain.Selected.Level=2 then
    dmreports.ADODBiblioCard.Parameters[1].Value:= 0
   else
    dmreports.ADODBiblioCard.Parameters[1].Value:= 1;
  dmreports.ADODBiblioCard.open;
dmreports.frxRBiblioCard.ShowReport();
end;

procedure TfMain.Button33Click(Sender: TObject);
begin
   dmreports.ADODSFormulyar.Close;
dmreports.ADODSFormulyar.Parameters[0].Value:= TTVmain.Selected.StateIndex;
dmreports.ADODSFormulyar.open;
dmreports.frxRFormulyar.ShowReport();
end;

procedure TfMain.Button34Click(Sender: TObject);
var i:integer;
begin
dm.ADODSAllStudentGroup.Close;
 dm.ADODSAllStudentGroup.Parameters[0].Value:=dm.adodsStudentDataIDGroup.AsInteger;
 dm.ADODSAllStudentGroup.open;
    i:= TTVmain.Selected.StateIndex;
 dm.ADODSAllStudentGroup.First;

 while not dm.ADODSAllStudentGroup.eof do
 begin

dm.ADODSPrikazAdd.Close;
dm.ADODSPrikazAdd.Parameters[0].Value:=dm.ADODSAllStudentGroupid.asinteger;
dm.ADODSPrikazAdd.Parameters[1].Value:=ComboBox10.Text;
dm.ADODSPrikazAdd.Parameters[2].Value:=Edit1.Text;
dm.ADODSPrikazAdd.Parameters[3].Value:=DateTimePicker1.DateTime;
if ComboBox10.ItemIndex=2 then
begin
dm.ADODSPrikazAdd.Parameters[4].Value:=DateTimePicker2.DateTime;
dm.ADODSPrikazAdd.Parameters[5].Value:=DateTimePicker3.DateTime;
end
else
begin
dm.ADODSPrikazAdd.Parameters[4].Value:=null;
dm.ADODSPrikazAdd.Parameters[5].Value:=null;
end;
if ComboBox11.ItemIndex=8 then
dm.ADODSPrikazAdd.Parameters[6].Value:=edit2.Text
else
dm.ADODSPrikazAdd.Parameters[6].Value:=ComboBox11.Text;
dm.ADODSPrikazAdd.Parameters[7].Value:=DM.adodsSecurityGetRightsid.asinteger;
dm.ADODSPrikazAdd.open;
edit2.Visible:=false;
DateTimePicker2.Visible:=false;
DateTimePicker3.Visible:=false;
label80.Visible:=false;
label81.Visible:=false;
 SpeedButton33.Left:=215;
               dm.ADODSAllStudentGroup.Next
end;
  dm.ADODSPrikaz.Close;
dm.ADODSPrikaz.Parameters[0].Value:=i;
dm.ADODSPrikaz.OPEN;
end;

procedure TfMain.Button35Click(Sender: TObject);
begin
       dm.ADOSQLExecutor.CommandText :=
    'update [Group] set GosZad='+edit12.Text+ 'where GosZad='+dm.adodsGroupDataGosZad.AsString;
  dm.ADOSQLExecutor.Execute;
  dm.adodsGroupData.Close;
        dm.adodsGroupData.Parameters[0].Value := TTVmain.Selected.StateIndex;
        dm.adodsGroupData.open;
         edit12.Text:=''  ;
         edit12.Visible:=false;
  Button35.Visible:=false;
         ShowMessage('���������');
end;

procedure TfMain.Button36Click(Sender: TObject);
begin


end;

//����������� �������� � ����������
procedure TfMain.Button3Click(Sender: TObject);
begin
  Panel5.Visible := true;
  Panel10.Visible :=false;
  Panel6.Visible :=false;
  Panel13.Visible :=false;
  Panel22.Visible :=false;
end;
 //����� ������
procedure TfMain.Button4Click(Sender: TObject);
begin

  DMreports.adodsStudentListGet.Close;
  DMreports.adodsStudentListGet.Parameters[1].Value :=
    TTVmain.Selected.StateIndex;
  DMreports.adodsStudentListGet.Parameters[2].Value := 0;
  DMreports.adodsStudentListGet.Parameters[3].Value := 0;
  DMreports.adodsStudentListGet.Parameters[4].Value := 0;
  DMreports.adodsStudentListGet.Parameters[5].Value := 1;
  DMreports.adodsStudentListGet.open;
  DMreports.frxRObichListStud.ShowReport();
   Panel5.Visible := false;
  Panel10.Visible :=false;
  Panel6.Visible :=false;
  Panel13.Visible :=false;
  Panel22.Visible :=false;
end;

procedure TfMain.Button5Click(Sender: TObject);
begin
  Panel9.Visible := true;

end;
    //���������� ����� ����������� �����������
procedure TfMain.Button6Click(Sender: TObject);
var
  i: byte;
begin
  ComboBox1.Items.Clear;
  for i := 1 to 7 do
    ComboBox1.Items.add(inttostr(yearof(date) - i) + '/' + inttostr
        (yearof(date) - i + 1));
 Panel5.Visible := false;;
  Panel10.Visible :=false;
  Panel6.Visible :=true;
  Panel13.Visible :=false;
  Panel22.Visible :=false;
end;
    //���������� ����� ����������� �����������
procedure TfMain.Button7Click(Sender: TObject);
var
  i: byte;
begin
  ComboBox2.Items.Clear;
  for i := 1 to 7 do
    ComboBox2.Items.add(inttostr(yearof(date) - i) + '/' + inttostr
        (yearof(date) - i + 1));
  Panel5.Visible := false;;
  Panel10.Visible :=true;
  Panel6.Visible :=false;
  Panel13.Visible :=false;
  Panel22.Visible :=false;
end;
     //���������� ����� ����������� �����������
procedure TfMain.Button8Click(Sender: TObject);
var
  i: Integer;

begin

  ComboBox3.Items.Clear;
  for i := 1 to 7 do
    ComboBox3.Items.add(inttostr(yearof(date) - i) + '/' + inttostr
        (yearof(date) - i + 1));
  Panel11.Visible := true;
  Panel12.Visible :=False;
  Panel14.Visible :=False;
  Panel15.Visible :=False;
   Panel19.Visible :=False;
  ComboBox5.ItemIndex:=0;
   ComboBox3.ItemIndex:=0;

end;
  //����� ������
procedure TfMain.Button9Click(Sender: TObject);
begin
  DMreports.ADODSPersonalCard.Close;
  DMreports.ADODSPersonalCard.Parameters[0].Value :=
    TTVmain.Selected.StateIndex; ;
  DMreports.ADODSPersonalCard.open;
  DMreports.frxPersonalCard.ShowReport();
end;
    //����������� �������� � ����������
procedure TfMain.ComboBox10CloseUp(Sender: TObject);
begin
if ComboBox10.ItemIndex=2 then
begin
  DateTimePicker2.Visible:=true;
    DateTimePicker3.Visible:=true;
    label80.Visible:=true;
    label81.Visible:=true;
end
else
 begin
    DateTimePicker2.Visible:=false;
    DateTimePicker3.Visible:=false;
     label80.Visible:=false;
    label81.Visible:=false;
 end;
end;

procedure TfMain.ComboBox11CloseUp(Sender: TObject);
begin
if ComboBox11.ItemIndex=8 then
begin
edit2.Visible:=true;
 SpeedButton33.Left:=420;
end
else
edit2.Visible:=false;

end;

procedure TfMain.ComboBox13CloseUp(Sender: TObject);
begin
 SpeedButton41.Enabled := true;
end;

procedure TfMain.ComboBox14CloseUp(Sender: TObject);
begin
 SpeedButton45.Enabled := true;
end;

procedure TfMain.ComboBox15CloseUp(Sender: TObject);
begin
     SpeedButton47.Enabled := true;
end;

procedure TfMain.ComboBox17CloseUp(Sender: TObject);
begin
dm.ADODSGroupExpiri.Close;
dm.ADODSGroupExpiri.Parameters[0].Value:=dm.ADODSFacultiesID.AsInteger;
dm.ADODSGroupExpiri.Parameters[1].Value:=strtoint(ComboBox17.Items[ComboBox17.ItemIndex]);
dm.ADODSGroupExpiri.open;

end;

procedure TfMain.ComboBox1CloseUp(Sender: TObject);
begin
  SpeedButton11.Enabled := true;
end;

procedure TfMain.ComboBox21CloseUp(Sender: TObject);
begin
 SpeedButton76.Enabled := true;
end;

procedure TfMain.ComboBox2CloseUp(Sender: TObject);
begin
  SpeedButton15.Enabled := true;
end;

procedure TfMain.ComboBox3CloseUp(Sender: TObject);
begin
  SpeedButton17.Enabled := true;
end;

procedure TfMain.ComboBox6CloseUp(Sender: TObject);
begin
SpeedButton27.Enabled:=true;
end;
  procedure TfMain.ComboBox8Change(Sender: TObject);
begin

end;

//���������� ����� ����������� �����������
procedure TfMain.DBCheckBox6Click(Sender: TObject);
begin
if dm.adodsStudentDataAdrProgP.AsBoolean then
    begin
       RadioGroup10.Visible:=false;
      DBEditEh2.Visible:=false;
    end
else
     begin
     RadioGroup10.Visible:=true;
      DBEditEh2.Visible:=true;

    end

end;
  //���������� ����� ����������� �����������
procedure TfMain.DBCheckBox7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
              dm.adodsGroupData.UpdateBatch();
 if not dm.adodsGroupDataForeingGL.AsBoolean then
            begin
              DBEdit46.Visible:=false;
              RzDBSpinner2.Visible:=false;
            end
            else
            begin
                DBEdit46.Visible:=true;
              RzDBSpinner2.Visible:=true;
            end;
end;

procedure TfMain.DBComboBox1Change(Sender: TObject);
begin
  dm.adodsGroupData.UpdateBatch();
end;

procedure TfMain.DBEDeanNameFExit(Sender: TObject);
begin
  if (dm.ADODSFaculties.State in [dsInsert, dsEdit]) then
  begin
    dm.ADODSFaculties.Post;
    dm.ADODSFaculties.Close;
    dm.ADODSFaculties.open;
  end;
end;

procedure TfMain.DBEDeanNameIExit(Sender: TObject);
begin
  if (dm.ADODSFaculties.State in [dsInsert, dsEdit]) then
  begin
    dm.ADODSFaculties.Post;
    dm.ADODSFaculties.Close;
    dm.ADODSFaculties.open;
  end;
end;

procedure TfMain.DBEDeanNameNExit(Sender: TObject);
begin
  if (dm.ADODSFaculties.State in [dsInsert, dsEdit]) then
  begin
    dm.ADODSFaculties.Post;
    dm.ADODSFaculties.Close;
    dm.ADODSFaculties.open;
  end;
end;
    //���������� ���������
procedure TfMain.DBEdit45KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
dm.adodsGroupData.UpdateBatch();
end;
   //���������� ���������
procedure TfMain.DBEdit46KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
dm.adodsGroupData.UpdateBatch();
end;

procedure TfMain.DBEdit52KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
dm.adodsGroupData.UpdateBatch();
end;

procedure TfMain.DBEdit53KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if dbedit53.Text='' then
         dbedit53.Text:='0'   ;
dm.adodsGroupData.UpdateBatch();
end;

procedure TfMain.DBEFacultyNameExit(Sender: TObject);
begin
  if (dm.ADODSFaculties.State in [dsInsert, dsEdit]) then
  begin
    dm.ADODSFaculties.Post;
    dm.ADODSFaculties.Close;
    dm.ADODSFaculties.open;
  end;
end;

procedure TfMain.DBEFacultyShortNameExit(Sender: TObject);
begin
  if (dm.ADODSFaculties.State in [dsInsert, dsEdit]) then
  begin
    dm.ADODSFaculties.Post;
    dm.ADODSFaculties.Close;
    dm.ADODSFaculties.open;
  end;
end;
  //����������� �������� � ����������
procedure TfMain.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  case dm.adodsStudentDataEducationConditions.AsInteger of
    0:
      begin
        DBDateTimeEditEh2.Hide;
        DBEdit7.Hide;
        Label30.Hide;
        Label31.Hide;
      end;
    1:
      begin
        DBDateTimeEditEh2.Show;
        DBEdit7.Show;
        Label30.Show;
        Label31.Show;
      end;
    2:
      begin
        DBDateTimeEditEh2.Show;
        DBEdit7.Show;
        Label30.Show;
        Label31.Show;
      end;

  end;
end;
    //���������� ���������
procedure TfMain.DBLookupComboBox3CloseUp(Sender: TObject);
begin
DM.adodsStudentData.UpdateBatch();
 dm.ADOCMarks.Parameters[1].Value:=DM.adodsStudentDataid.AsInteger;
  dm.ADOCMarks.Execute;
end;
   //���������� ���������
procedure TfMain.DBLookupComboboxEh10CloseUp(Sender: TObject; Accept: Boolean);
begin
  dm.adodsstudentData.UpdateBatch();
   if dm.adodsStudentDataCitizenship.AsInteger<>13 then
        SpeedButton32.Visible:=true
        else
        SpeedButton32.Visible:=false;
end;
 //����������� �������� � ����������
procedure TfMain.DBLookupComboboxEh7CloseUp(Sender: TObject; Accept: Boolean);
begin
  case DBLookupComboboxEh7.Value of
    1:
      begin
        DBEdit28.Visible := false;
        SpeedButton6.Visible := false;
        DBLookupComboboxEh2.Visible := false;
        DBEdit29.Visible := false;
        SpeedButton4.Visible := false;
        DBLookupComboboxEh3.Visible := false;
      end;
    2:
      begin
        DBEdit28.Visible := true;
        SpeedButton6.Visible := true;
        DBLookupComboboxEh2.Visible := true;
        DBEdit29.Visible := false;
        SpeedButton4.Visible := false;
        DBLookupComboboxEh3.Visible := false;
      end;
    3:
      begin

        DBEdit29.Visible := true;
        SpeedButton4.Visible := true;
        DBLookupComboboxEh3.Visible := true;
      end;
  end;
end;
     //����������� �������� � ����������
procedure TfMain.DBLookupComboboxEh9CloseUp(Sender: TObject; Accept: Boolean);
begin

  case DBLookupComboboxEh9.Value of
    1:
      begin
        DBEdit31.Visible := false;
        SpeedButton9.Visible := false;
        DBLookupComboboxEh5.Visible := false;
        DBEdit32.Visible := false;
        SpeedButton10.Visible := false;
        DBLookupComboboxEh6.Visible := false;
      end;
    2:
      begin
        DBEdit31.Visible := true;
        SpeedButton9.Visible := true;
        DBLookupComboboxEh5.Visible := true;
        DBEdit32.Visible := false;
        SpeedButton10.Visible := false;
        DBLookupComboboxEh6.Visible := false;
      end;
    3:
      begin

        DBEdit32.Visible := true;
        SpeedButton10.Visible := true;
        DBLookupComboboxEh6.Visible := true;
      end;
  end;
end;
   //����������� �������� � ����������
procedure TfMain.DBRadioGroup2Change(Sender: TObject);
begin
  case DBRadioGroup2.ItemIndex of
    0:
      GroupBox12.Visible := false;
    1:
      GroupBox12.Visible := true;
  else
    GroupBox12.Visible := false;
  end;
end;
   //������ ������, ������� ���� ��������� ������ � �����
procedure TfMain.Dsgecnbnm1Click(Sender: TObject);
var
  CurrentYear1: Integer;
var
  ds: string;
begin

  if (monthOf(date) < 9) then
    CurrentYear1 := yearof(date)
  else
    CurrentYear1 := yearof(date) + 1;
  ds := inttostr(CurrentYear1) + '0101';
  // �������� ��������
  if (TTVmain.Selected.Level = 2) then
    if (MessageDlg('��������! ����� �������� ��� �������� ������ ' + #39 +
          TTVmain.Selected.Text + #39 + '! ����������?', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes) then
    begin
      dm.adodsStudentData.Close;
      dm.ADOSQLExecutor.CommandText :=
        'update studentData set status=3 where [status] in (0,2,4) and idGroup=' + inttostr
        (TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
      dm.ADOSQLExecutor.CommandText :=
        'update studentData set DateOfExpiry=' + '''' + ds + '''' +
        ' where [status] in (3) and idgroup=' + inttostr(TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
      dm.adodsStudentData.open;
      dm.ADOSQLExecutor.CommandText :=
        'update [group] set status=3 where id=' + inttostr
        (TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
      dm.ADOSQLExecutor.CommandText :=
        'update [group] set DateOfExpiry=' + '''' + ds + '''' + ' where id=' +
        inttostr(TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
      dm.DSStudentList.DataSet := nil;
      dm.ADODSStudentList.Close;
      dm.ADODSStudentList.open;
      dm.DSStudentList.DataSet := dm.ADODSStudentList;
      dm.ADODSGroups.Close;
      dm.ADODSGroups.open;
      TTVmain.Selected.Delete;
    end;

end;
    //�������� ��������, �������� �� ��������� ������
procedure TfMain.FormClose(Sender: TObject; var Action: TCloseAction);

begin
Loading.Close;
  dm.ADODSGroups.open;
  dm.ADODSGroups.First;
  while (not(dm.ADODSGroups.Eof)) do
  begin
    if (dm.ADODSGroups.RecordStatus * [rsNew, rsModified]) <> [] then
      if (MessageBox(handle, '������� �� ����������� ������.���������?',
          '��������!', MB_OKCANCEL) = IDOK) then
        dm.ADODSGroups.UpdateBatch();

    dm.ADODSGroups.Next;
  end;
  dm.ADODSGroups.Close;
  dm.adodsStudentData.open;
  dm.adodsStudentData.First;
  while (not(dm.adodsStudentData.Eof)) do
  begin
    if (dm.adodsStudentData.RecordStatus * [rsNew, rsModified]) <> [] then
      if (MessageBox(handle, '������� �� ����������� ������.���������?',
          '��������!', MB_OKCANCEL) = IDOK) then
        dm.adodsStudentData.UpdateBatch();

    dm.adodsStudentData.Next;
  end;
  dm.ADODSLogOff.close;
   dm.ADODSLogOff.parameters[0].value:=date+time;
   dm.ADODSLogOff.parameters[1].value:=DM.adodsSecurityGetRightsid.asinteger;
   dm.ADODSLogOff.open;
  dm.adodsStudentData.Close;
  Application.Terminate;



end;
     //�������� ������� �����,������ � ��� ������ � �����
procedure TfMain.FormCreate(Sender: TObject);
 const WSVer = $101;
 var buffer: array[0..255] of char;
 buffer1: array[0..255] of char;

  size: dword;
  wsaData: TWSAData;
  P: PHostEnt;
  Buf: array [0..127] of Char;
  b:string;
begin
   if WSAStartup(WSVer, wsaData) = 0 then begin
    if GetHostName(@Buf, 128) = 0 then begin
      P := GetHostByName(@Buf);
      if P <> nil then b := iNet_ntoa(PInAddr(p^.h_addr_list^)^);
    end;
    WSACleanup;
  end;
  size := 256;
   GetComputerName(buffer, size)  ;
  GetUserName(buffer1, size)  ;

   dm.ADODSLog.close;
   dm.ADODSLog.parameters[0].value:=b;
   dm.ADODSLog.parameters[1].value:=DM.adodsSecurityGetRightsid.asinteger;
   dm.ADODSLog.parameters[2].value:=WideCharToString(buffer);
   dm.ADODSLog.parameters[3].value:=WideCharToString(buffer1);
   dm.ADODSLog.parameters[4].value:=date+time;
   dm.ADODSLog.open;
   TFake(TDBGmain).ScrollBars:=ssVertical;
  TSFaculty.Hide;
  TSGroup.Hide;
  TSStudent.Hide;
  fMain.Hide;

end;


procedure TfMain.FormDestroy(Sender: TObject);
begin
dm.ADODSLogOff.close;
   dm.ADODSLogOff.parameters[0].value:=date+time;
   dm.ADODSLogOff.parameters[1].value:=DM.adodsSecurityGetRightsid.asinteger;
   dm.ADODSLogOff.open;
end;

procedure TfMain.FormShow(Sender: TObject);
begin
  SetAccessLevel;

  TPCmain.TabIndex := 0;




end;
  procedure TfMain.GroupBox30MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 panel31.Color:=ClSkyBlue;
end;

procedure TfMain.GroupBox31MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 panel31.Color:=ClSkyBlue;

end;

//�������� � ����� ����� �� �������� ������ � ������
procedure TfMain.J1Click(Sender: TObject);
begin
Application.CreateForm(TFExportDiplom, FExportDiplom);
ExportDiplom.FExportDiplom.ShowModal;
end;
 //���������� ������ �����������, ����� � ���������
procedure TfMain.LoadTree(ID: Integer; FacultyName: string);
var
  RootNode, GroupNode, StudentNode, ArchiveNode, Kurs1, Kurs2, Kurs3, Kurs4,
    Kurs5,Kurs6: TTreeNode;
  aArchiveYearNode, aExpelledNode, aGraduatedNode,
    aDeletedNode: array [0 .. 7] of TTreeNode;
  i, dff: byte;
  ExpiryGroup, ExpiryStudent, CurrentYear: Integer;
begin
//���� ������� ����� ������ �������, �� ��������� ���������� �������� �������� ����
  if (monthOf(date) < 8) then
    CurrentYear := yearof(date)
    //� ��������� ������ ������� ��� ����������� �� 1
  else
    CurrentYear := yearof(date) + 1;
   //������ � ������ ����� � ������� ������
  for i := 0 to 7 do
  begin
    aArchiveYearNode[i] := nil;
    aExpelledNode[i] := nil;
    aGraduatedNode[i] := nil;
    aDeletedNode[i] := nil;
  end;

  dm.adodsSecurityGetRights.First;
  fLoadTreeProgress.Show;
  fLoadTreeProgress.PBKurs.Position := 0;
  dm.DSStudentList.DataSet := nil;
   //������� ����������� ��������
  TTVmain.Items.Clear;
  //��������� � ������ ������ ���������
  RootNode := TTVmain.Items.AddFirst(nil, FacultyName);
  RootNode.ImageIndex := 0;
  RootNode.SelectedIndex := 1;
  RootNode.StateIndex := ID;
  //��������� � ������ ������� "�����"
  ArchiveNode := TTVmain.Items.add(nil, '�����');

  ArchiveNode.ImageIndex := 0;
  ArchiveNode.SelectedIndex := 1;
  ArchiveNode.StateIndex := ID;
     //��������� � ������ ������ ������
  Kurs1 := TTVmain.Items.AddChild(RootNode, '����');
  Kurs2 := TTVmain.Items.AddChild(RootNode, '����');
  Kurs3 := TTVmain.Items.AddChild(RootNode, '����');
  Kurs4 := TTVmain.Items.AddChild(RootNode, '����');
  Kurs5 := TTVmain.Items.AddChild(RootNode, '����');
  if dm.ADODSFacultiesDepartment.AsInteger>1 then

  Kurs6 := TTVmain.Items.AddChild(RootNode, '����');
  //����������� ������� ����� ������ � ����������� � ������� �����
  Kurs1.ImageIndex := 2;
  Kurs1.SelectedIndex := 3;
  Kurs1.StateIndex := 1;

  Kurs2.ImageIndex := 18;
  Kurs2.SelectedIndex := 19;
  Kurs2.StateIndex := 2;

  Kurs3.ImageIndex := 20;
  Kurs3.SelectedIndex := 21;
  Kurs3.StateIndex := 3;

  Kurs4.ImageIndex := 22;
  Kurs4.SelectedIndex := 23;
  Kurs4.StateIndex := 4;

  Kurs5.ImageIndex := 24;
  Kurs5.SelectedIndex := 25;
  Kurs5.StateIndex := 5;
       if dm.ADODSFacultiesDepartment.AsInteger>1 then
       begin
  Kurs6.ImageIndex := 29;
  Kurs6.SelectedIndex := 30;
  Kurs6.StateIndex := 6;
       end;
 //��������� DataSet  � ��������, �� ������ �������
  dm.ADODSGroups.Close;
  dm.ADODSGroups.Parameters[0].Value := ID;
  dm.ADODSGroups.Parameters[1].Value :=
    dm.adodsSecurityGetRightsIDGroup.AsInteger;
  dm.ADODSGroups.open;

  //���������� ���������� � ������� ������ � ��������  ��� ����������� ���������
  dm.ADODSStudentList.Close;
  dm.ADODSStudentList.Parameters[0].Value := ID;
  dm.ADODSStudentList.Parameters[1].Value :=
    dm.adodsSecurityGetRightsIDGroup.AsInteger;
  dm.ADODSStudentList.open;
  dm.ADODSStudentList.Sort := '';
  dm.ADODSStudentList.Filter := '';

  fLoadTreeProgress.PBKurs.Max := dm.ADODSStudentList.RecordCount;
   //������ ������ ���������
  TTVmain.Enabled := true;
 //������ ��������� ������ � ������
  while not(dm.ADODSGroups.Eof) do
  begin
    if (dm.ADODSGroupsStatus.AsVariant = 0) then
    begin
    //��������� ������ � ��������������� ����
      case dm.ADODSGroupsKurs.AsInteger of
        1:
          GroupNode := TTVmain.Items.AddChild
            (Kurs1,dm.ADODSGroupsGroupName.AsString);
        2:
          GroupNode := TTVmain.Items.AddChild
            (Kurs2, dm.ADODSGroupsGroupName.AsString);
        3:
          GroupNode := TTVmain.Items.AddChild
            (Kurs3, dm.ADODSGroupsGroupName.AsString);
        4:
          GroupNode := TTVmain.Items.AddChild
            (Kurs4, dm.ADODSGroupsGroupName.AsString);
        5:
          GroupNode := TTVmain.Items.AddChild
            (Kurs5, dm.ADODSGroupsGroupName.AsString);
        6:
          GroupNode := TTVmain.Items.AddChild
            (Kurs6, dm.ADODSGroupsGroupName.AsString);
      end;
      //����������� ����������� �������
      GroupNode.ImageIndex := 4;
      GroupNode.SelectedIndex := 5;
      GroupNode.StateIndex := dm.ADODSGroupsID.AsInteger;
    end

    else
     begin
      if (monthOf(dm.ADODSGroupsDateOfExpiry.AsDateTime) < 8) then
        ExpiryGroup := yearof(dm.ADODSGroupsDateOfExpiry.AsDateTime)
      else

        ExpiryGroup := yearof(dm.ADODSGroupsDateOfExpiry.AsDateTime) + 1;
    end;
     //��������� ������ ���������� � ��������������� �� ������
    while (not(dm.ADODSStudentList.Eof)) and
      (dm.ADODSGroupsID.AsInteger = dm.ADODSStudentListIDGroup.AsInteger) do
    begin
    //�������� �� ���������� ����������� ���������
      if ((dm.ADODSStudentListStatus.AsInteger = 0) or
          (dm.ADODSStudentListStatus.AsInteger = 2) or
          (dm.ADODSStudentListStatus.AsInteger = 4)) then
        if (dm.ADODSGroupsStatus.AsInteger = 0) then
        begin
          StudentNode := TTVmain.Items.AddChild
            (GroupNode, dm.ADODSStudentListNameS.AsString);

        end
        //���������� ��������� � ����� � ����������� �� ������� � ���� ���������
        else
        begin
          dff := CurrentYear - ExpiryGroup;
          if (aArchiveYearNode[dff] = nil) then
          begin
            aArchiveYearNode[dff] := TTVmain.Items.AddChild
              (ArchiveNode, inttostr(ExpiryGroup - 1) + '/' + inttostr
                (ExpiryGroup));
            aExpelledNode[dff] := TTVmain.Items.AddChild
              (aArchiveYearNode[dff], '�����������');
            aGraduatedNode[dff] := TTVmain.Items.AddChild
              (aArchiveYearNode[dff], '����������');
            aDeletedNode[dff] := TTVmain.Items.AddChild
              (aArchiveYearNode[dff], '���������');

            aArchiveYearNode[dff].StateIndex := ExpiryStudent;
            aExpelledNode[dff].StateIndex := 1;
            aGraduatedNode[dff].StateIndex := 3;
            aDeletedNode[dff].StateIndex := 5;
          end;

          StudentNode := TTVmain.Items.AddChild
            (aDeletedNode[dff], dm.ADODSStudentListNameS.AsString)
        end
        else
        begin

          if (monthOf(dm.ADODSStudentListDateOfExpiry.AsDateTime) < 8) then
            ExpiryStudent := yearof(dm.ADODSStudentListDateOfExpiry.AsDateTime)
          else
            ExpiryStudent := yearof(dm.ADODSStudentListDateOfExpiry.AsDateTime)
              + 1;

          dff := CurrentYear - ExpiryStudent;

          if (aArchiveYearNode[dff] = nil) then
          begin
            aArchiveYearNode[dff] := TTVmain.Items.AddChild
              (ArchiveNode, inttostr(ExpiryStudent - 1) + '/' + inttostr
                (ExpiryStudent));
            aExpelledNode[dff] := TTVmain.Items.AddChild
              (aArchiveYearNode[dff], '�����������');
            aGraduatedNode[dff] := TTVmain.Items.AddChild
              (aArchiveYearNode[dff], '����������');
            aDeletedNode[dff] := TTVmain.Items.AddChild
              (aArchiveYearNode[dff], '���������');

            aArchiveYearNode[dff].StateIndex := ExpiryStudent;
            aExpelledNode[dff].StateIndex := 1;
            aGraduatedNode[dff].StateIndex := 3;
            aDeletedNode[dff].StateIndex := 5;
          end;
           //���������� ��������� � ����� � ����������� �� �������
                     case (dm.ADODSStudentListStatus.AsInteger) of
          1:StudentNode := TTVmain.Items.AddChild
                (aExpelledNode[dff], dm.ADODSStudentListNameS.AsString);


          3:
          StudentNode :=TTVmain.Items.AddChild
                (aGraduatedNode[dff], dm.ADODSStudentListNameS.AsString);
          5:StudentNode := TTVmain.Items.AddChild
                (aDeletedNode[dff], dm.ADODSStudentListNameS.AsString);
          end;

        end;
    //������������ ����������� ��������� � ����������� �� �����
      StudentNode.ImageIndex := dm.ADODSStudentListMarks.AsInteger;
      StudentNode.SelectedIndex := dm.ADODSStudentListMarks.AsInteger;
      StudentNode.StateIndex := dm.ADODSStudentListID.AsInteger;

      fLoadTreeProgress.PBKurs.Position := dm.ADODSStudentList.RecNo;
      dm.ADODSStudentList.Next;
    end;

   //������� � ��������� ������;
    dm.ADODSGroups.Next;
  end;

  dm.ADODSStudentList.First;

  fLoadTreeProgress.Hide;
  dm.DSStudentList.DataSet := dm.ADODSStudentList;

end;

procedure TfMain.N10Click(Sender: TObject);
begin
 Application.CreateForm(TfManageSecurity, fManageSecurity);
end;
//���������� ��������� ����������� ��� ��������� ���� �������
procedure TfMain.N11Click(Sender: TObject);
begin
  dm.adodsSecurityGroup.Close;
  dm.adodsSecurityUser.Close;
  dm.adodsSecurityAccessLevel.Close;
  dm.adodsSecurityElementList.Close;
  dm.adodsSecurityVisibleGroups.Close;

  dm.adodsSecurityElementList.open;
  dm.adodsSecurityGroup.open;
  dm.adodsSecurityUser.open;
  dm.adodsSecurityAccessLevel.open;
  dm.adodsSecurityVisibleGroups.open;

  fManageSecurity.ShowModal;
end;

procedure TfMain.N12Click(Sender: TObject);
begin
  fInstituteOfHigherEducation.IDSelectedFaculty :=
    dm.ADODSFacultiesID.AsInteger;
  fInstituteOfHigherEducation.ShowModal;

end;

procedure TfMain.N13Click(Sender: TObject);
begin
  fMain.WindowState := wsminimized;
  fsession.ShowModal;

end;
     //���������� ��������
procedure TfMain.N14Click(Sender: TObject);
var  Noddy: TTreeNode;
  Searching: Boolean;
  i:integer;
  CurrentYear1: Integer;
  ds: string;
begin

  if (monthOf(date) < 8) then
    CurrentYear1 := yearof(date)
  else
    CurrentYear1 := yearof(date) + 1;
  ds := inttostr(CurrentYear1) + '0101';

  if (TTVmain.Selected.Level = 3) then
    if (MessageDlg('��������� �������� ' + #39 + TTVmain.Selected.Text + #39 +
          '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin

       dm.ADOSQLExecutor.CommandText :=
        'update studentData set status=1 where id=' + inttostr
        (TTVmain.Selected.StateIndex);

      dm.ADOSQLExecutor.Execute;
      dm.ADOSQLExecutor.CommandText :=
        'update studentData set DateOfExpiry=' + '''' + ds + '''' +
        ' where id=' + inttostr(TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
      dm.adodsStudentData.Close;
      dm.adodsStudentData.Open;
      dm.ADODMarks.close;
      dm.ADODMarks.Parameters[1].Value:=(TTVmain.Selected.StateIndex);
      dm.ADODMarks.open;
      TTVmain.Selected.ImageIndex:=dm.ADodmarks.Fields.Fields[0].AsInteger;
      TTVmain.Selected.SelectedIndex:=dm.ADodmarks.Fields.Fields[0].AsInteger;
      dm.DSStudentList.DataSet := nil;
      dm.ADODSStudentList.Close;
      dm.ADODSStudentList.open;
      dm.DSStudentList.DataSet := dm.ADODSStudentList;
      dm.ADODSStudentList.Locate('id',TTVmain.Selected.StateIndex,[]) ;
  Noddy := fmain.TTVMain.Items[0];
  Searching := true;
  while (Searching) and (Noddy <> nil) do
      begin
      if (noddy.Level=0)
      then
         Noddy := Noddy.GetNext
      else
          begin
          if (Noddy.Parent.StateIndex=CurrentYear1 ) and (Noddy.StateIndex =1) and (noddy.level=2)
          then
            Searching := false
          else
             Noddy := Noddy.GetNext;
          end;
      end;
       if Noddy <> fmain.TTVMain.Items[0]
      then
        fmain.TTVMain.Selected.MoveTo(noddy,naAddChild)
  end;

end;
          //������� �������� � ������������� ������
procedure TfMain.N15Click(Sender: TObject);
var

  ds: string;
begin
      if (TTVmain.Selected.Level = 3) then
    if (MessageDlg('��������� � ������������� ������ �������� ' + #39 +
          TTVmain.Selected.Text + #39 + '?', mtConfirmation, [mbYes, mbNo], 0)
        = mrYes) then
    begin


      dm.ADOSQLExecutor.CommandText :=
        'update studentData set status=2 where id=' + inttostr
        (TTVmain.Selected.StateIndex);


      dm.ADOSQLExecutor.Execute;
      dm.ADOSQLExecutor.CommandText :=
        'update studentData set DateOfExpiry=null where id=' + inttostr(TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
       dm.adodsStudentData.Close;
          dm.adodsStudentData.open;
           dm.ADODMarks.close;
   dm.ADODMarks.Parameters[1].Value:=DM.adodsStudentDataid.AsInteger;
     dm.ADODMarks.open;
fmain.TTVmain.Selected.SelectedIndex:=dm.ADodmarks.Fields.Fields[0].AsInteger;
fmain.TTVmain.Selected.ImageIndex :=  dm.ADodmarks.Fields.Fields[0].AsInteger;
      dm.DSStudentList.DataSet := nil;
      dm.ADODSStudentList.Close;
      dm.ADODSStudentList.open;
      dm.DSStudentList.DataSet := dm.ADODSStudentList;

    end;

end;

procedure TfMain.N17Click(Sender: TObject);
var
  e: Integer;
begin
  dm.ADODSStudentOrder.Close;
  dm.ADODSStudentOrder.Filter := 'ordertype=1';
  dm.ADODSStudentOrder.open;
  prikazshow;
  Perevod.fpikazadd.Show;
end;
  //������������� ��������
procedure TfMain.N18Click(Sender: TObject);

var
  CurrentYear1: Integer;
  ds: string;
begin

  if (TTVmain.Selected.Level = 3) then
    if (MessageDlg('������������ �������� ' + #39 + TTVmain.Selected.Text +
          #39 + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
  if dm.adodsStudentDataStatus.AsInteger<>2 then
  begin
  dm.ADOSQLExecutor.CommandText :=
        'update studentData set status=0 where id=' + inttostr
        (TTVmain.Selected.StateIndex);
           dm.ADOSQLExecutor.Execute;
      dm.ADOSQLExecutor.CommandText :=
      'update studentData set DateOfExpiry=null where id=' + inttostr(TTVmain.Selected.StateIndex);
         dm.adodsStudentData.Close;
       dm.adodsStudentData.open;
        fperstudentgroup.ShowModal;
  end
  else
     begin
      dm.ADOSQLExecutor.CommandText :=
        'update studentData set status=0 where id=' + inttostr
        (TTVmain.Selected.StateIndex);
           dm.ADOSQLExecutor.Execute;
      dm.ADOSQLExecutor.CommandText :=
      'update studentData set DateOfExpiry=null where id=' + inttostr(TTVmain.Selected.StateIndex);
         dm.adodsStudentData.Close;
       dm.adodsStudentData.open;
     end;
        dm.ADODMarks.close;
       dm.ADODMarks.Parameters[1].Value:=(TTVmain.Selected.StateIndex);
      dm.ADODMarks.open;
      dm.DSStudentList.DataSet := nil;
      dm.ADODSStudentList.Close;
      dm.ADODSStudentList.open;
      dm.DSStudentList.DataSet := dm.ADODSStudentList;

    end;
      if dm.adodsStudentDataStatus.AsInteger  in [1,3,5] then
  TTVmain.Selected.Delete
  else
  begin
  fmain.TTVmain.Selected.SelectedIndex:=dm.ADodmarks.Fields.Fields[0].AsInteger;
fmain.TTVmain.Selected.ImageIndex :=  dm.ADodmarks.Fields.Fields[0].AsInteger;
  end;
end;

procedure TfMain.N19Click(Sender: TObject);
begin
  fperstudentgroup.ShowModal;
end;
   // ���������� ������
procedure TfMain.N1Click(Sender: TObject);
var
  GroupName: String;
  GroupNode: TTreeNode;
begin
    dm.ADODSAddGroup.Close;
    dm.ADODSAddGroup.Parameters[1].Value := TTVmain.Selected.StateIndex;
    dm.ADODSAddGroup.Parameters[2].Value := dm.ADODSFacultiesID.AsInteger;
    dm.ADODSAddGroup.Parameters[3].Value :=dm.adodsSecurityGetRightsIDGroup.AsInteger;
    dm.ADODSAddGroup.open;
    dm.ADODSGroups.Close;
    dm.ADODSGroups.open;
    GroupNode := TTVmain.Items.AddChild(TTVmain.Selected, '����������');
    GroupNode.StateIndex := dm.ADODSAddGroup.Fields.Fields[0].AsInteger;
    GroupNode.ImageIndex := 4;
    GroupNode.SelectedIndex := 5;

end;
  //������� ������ �� ��������� ����
procedure TfMain.N21Click(Sender: TObject);
var
  q: TTreeNode;
  gn: Integer;
begin

  if (TTVmain.Selected.Level = 2) then
    if (MessageDlg(
        '��������! ����� ����������  �� ��������� ���� �������� ������ ' +
          #39 + TTVmain.Selected.Text + #39 + '! ����������?', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes) then
    begin
      gn := TTVmain.Selected.StateIndex;

      dm.ADOSQLExecutor.CommandText :=
        'update [group] set kurs=kurs+1 where id=' + inttostr
        (TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
        dm.adodsStudentData.Close;
         dm.adodsStudentData.open;
      dm.DSStudentList.DataSet := nil;
      dm.ADODSStudentList.Close;
      dm.ADODSStudentList.open;
      dm.DSStudentList.DataSet := dm.ADODSStudentList;
      dm.adodsGroupData.Close;
      dm.adodsGroupData.Parameters[0].Value := TTVmain.Selected.StateIndex;
      dm.adodsGroupData.open;
      TTVmain.Selected.Text := dm.adodsGroupDataGroupName.AsString;
      q := TTVmain.Selected;

      // LoadTree(DM.ADODSFacultiesID.AsInteger, DM.ADODSFacultiesFacultyName.AsString);
      if q.Parent.GetLastChild.GetLastChild.GetNext.Level = 1 then
        q.MoveTo(q.Parent.GetLastChild.GetLastChild.GetNext, naaddchild);

    end;

end;
  //������� �������� � ���������
procedure TfMain.N22Click(Sender: TObject);
begin
     if (TTVmain.Selected.Level = 3) then
    if (MessageDlg('��������� � ��������� ' + #39 +
          TTVmain.Selected.Text + #39 + '?', mtConfirmation, [mbYes, mbNo], 0)
        = mrYes) then
    begin


      dm.ADOSQLExecutor.CommandText :=
        'update studentData set status=4 where id=' + inttostr
        (TTVmain.Selected.StateIndex);


      dm.ADOSQLExecutor.Execute;
      dm.ADOSQLExecutor.CommandText :=
        'update studentData set DateOfExpiry=null where id=' + inttostr(TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
               dm.adodsStudentData.Close;
          dm.adodsStudentData.open;
           dm.ADODMarks.close;
   dm.ADODMarks.Parameters[1].Value:=DM.adodsStudentDataid.AsInteger;
     dm.ADODMarks.open;
fmain.TTVmain.Selected.SelectedIndex:=dm.ADodmarks.Fields.Fields[0].AsInteger;
fmain.TTVmain.Selected.ImageIndex :=  dm.ADodmarks.Fields.Fields[0].AsInteger;
      dm.DSStudentList.DataSet := nil;
      dm.ADODSStudentList.Close;
      dm.ADODSStudentList.open;
      dm.DSStudentList.DataSet := dm.ADODSStudentList;
end;

end;
 //�������� ��������
procedure TfMain.N23Click(Sender: TObject);
var
  CurrentYear1: Integer;
  ds: string;
begin
//  if (monthOf(date) < 8) then
//    CurrentYear1 := yearof(date)
//  else
//    CurrentYear1 := yearof(date) + 1;
//  ds := inttostr(CurrentYear1) + '0101';
//  if (TTVmain.Selected.Level = 3) then
//    if (MessageDlg('������� �������� ' + #39 + TTVmain.Selected.Text + #39 +
//          '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
//    begin
//      dm.ADOSQLExecutor.CommandText :=
//        'update studentData set status=5 where id=' + inttostr
//        (TTVmain.Selected.StateIndex);
//         dm.ADODMarks.close;
//   dm.ADODMarks.Parameters[1].Value:=DM.adodsStudentDataid.AsInteger;
//     dm.ADODMarks.open;
//      dm.ADOSQLExecutor.Execute;
//      dm.ADOSQLExecutor.CommandText :=
//        'update studentData set DateOfExpiry=' + '''' + ds + '''' +
//        ' where id=' + inttostr(TTVmain.Selected.StateIndex);
//      dm.ADOSQLExecutor.Execute;
//      dm.adodsStudentData.Close;
//           dm.adodsStudentData.Open;
//      dm.DSStudentList.DataSet := nil;
//      dm.ADODSStudentList.Close;
//      dm.ADODSStudentList.open;
//      dm.DSStudentList.DataSet := dm.ADODSStudentList;
//
//      TTVmain.Selected.Delete;
//    end;
end;
  procedure TfMain.N24Click(Sender: TObject);
begin

 ShellExecute(Handle,
  'open', PChar('����������� ������������.chm'), nil, nil, SW_SHOWNORMAL);
end;

procedure TfMain.N26Click(Sender: TObject);
var
  CurrentYear1: Integer;

  ds: string;
begin
    if (monthOf(date) < 9) then
    CurrentYear1 := yearof(date)
  else
    CurrentYear1 := yearof(date) + 1;
  ds := inttostr(CurrentYear1) + '0101';
  // �������� ��������
  if (TTVmain.Selected.Level = 3) then
    if (MessageDlg('��������! �������  ' + #39 +
          TTVmain.Selected.Text + #39 + ' ����� �������. ����������?', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes) then
    begin
      dm.adodsStudentData.Close;
      dm.ADOSQLExecutor.CommandText :=
        'update studentData set status=3 where id=' + inttostr(TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
      dm.ADOSQLExecutor.CommandText :=
        'update studentData set DateOfExpiry=' + '''' + ds + '''' +
        ' where id=' + inttostr(TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
      dm.adodsStudentData.open;
           dm.DSStudentList.DataSet := nil;
      dm.ADODSStudentList.Close;
      dm.ADODSStudentList.open;
      dm.DSStudentList.DataSet := dm.ADODSStudentList;
      dm.ADODSGroups.Close;
      dm.ADODSGroups.open;
      TTVmain.Selected.Delete;
    end;
end;

// ���������� ��������
procedure TfMain.N2Click(Sender: TObject);
var
  StudentNode: TTreeNode;
begin

  fAddStudent.ShowModal;
  if (fAddStudent.ModalResult = mrOK) then
  begin
    dm.ADODSAddStudent.Close;
    dm.ADODSAddStudent.Parameters[0].Value := trim(fAddStudent.EnameF.Text);
    dm.ADODSAddStudent.Parameters[1].Value := trim(fAddStudent.EnameI.Text);
    dm.ADODSAddStudent.Parameters[2].Value := trim(fAddStudent.EnameO.Text);
    dm.ADODSAddStudent.Parameters[3].Value := TTVmain.Selected.StateIndex;
    dm.ADODSAddStudent.open;

    StudentNode := TTVmain.Items.AddChild
      (TTVmain.Selected, dm.ADODSAddStudentnameS.AsString);
    StudentNode.StateIndex := dm.ADODSAddStudentid.AsInteger;
    StudentNode.ImageIndex := dm.ADODSAddStudentmarks.AsInteger;
    StudentNode.SelectedIndex := dm.ADODSAddStudentmarks.AsInteger;

    dm.DSStudentList.DataSet := nil;
    dm.ADODSStudentList.Close;
    dm.ADODSStudentList.open;
    dm.DSStudentList.DataSet := dm.ADODSStudentList;
  end;
end;
  //�������� ������
procedure TfMain.N4Click(Sender: TObject);
begin
  // �������� ������
  if (TTVmain.Selected.Level = 2) then
    if (MessageDlg('��������! ����� ������� ��� �������� ������ ' + #39 +
          TTVmain.Selected.Text + #39 + '! ����������?', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes) then
    begin
      dm.ADOSQLExecutor.CommandText :=
        'update studentData set status=1 where idGroup=' + inttostr(TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
       dm.ADOSQLExecutor.CommandText :=
        'update [group] set status=1 where id=' + inttostr(TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
      dm.ADODSGroups.Close;
      dm.ADODSGroups.open;
    end;
end;

procedure TfMain.N5Click(Sender: TObject);
var
  CurrentYear1: Integer;
  ds: string;
begin
  if (monthOf(date) < 8) then
    CurrentYear1 := yearof(date)
  else
    CurrentYear1 := yearof(date) + 1;
  ds := inttostr(CurrentYear1) + '0101';
  // �������� ��������
  if (TTVmain.Selected.Level = 3) then
    if (MessageDlg('������� �������� ' + #39 + TTVmain.Selected.Text + #39 +
          '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin


      dm.ADOSQLExecutor.CommandText :=
        'update studentData set status=5 where id=' + inttostr
        (TTVmain.Selected.StateIndex);
         dm.ADODMarks.close;
   dm.ADODMarks.Parameters[1].Value:=DM.adodsStudentDataid.AsInteger;
     dm.ADODMarks.open;
      dm.ADOSQLExecutor.Execute;
      dm.ADOSQLExecutor.CommandText :=
        'update studentData set DateOfExpiry=' + '''' + ds + '''' +
        ' where id=' + inttostr(TTVmain.Selected.StateIndex);
      dm.ADOSQLExecutor.Execute;
        dm.adodsStudentData.Close;
      dm.adodsStudentData.Open;
      dm.DSStudentList.DataSet := nil;
      dm.ADODSStudentList.Close;
      dm.ADODSStudentList.open;
      dm.DSStudentList.DataSet := dm.ADODSStudentList;

      TTVmain.Selected.Delete;
    end;
end;

procedure TfMain.N61Click(Sender: TObject);
begin
  if (TTVmain.Selected.Level = 3) then
    if (MessageDlg('������������ �������� ' + #39 + TTVmain.Selected.Text +
          #39 + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin


  dm.ADOSQLExecutor.CommandText :=
        'update studentData set status=0, [Kolvo academ]=[Kolvo academ]+1,[dateLastAcadem]=getdate() where id=' + inttostr
        (TTVmain.Selected.StateIndex);
           dm.ADOSQLExecutor.Execute;
          dm.ADODMarks.close;
       dm.ADODMarks.Parameters[1].Value:=(TTVmain.Selected.StateIndex);
      dm.ADODMarks.open;
      dm.DSStudentList.DataSet := nil;
      dm.ADODSStudentList.Close;
      dm.ADODSStudentList.open;
      dm.DSStudentList.DataSet := dm.ADODSStudentList;

  fmain.TTVmain.Selected.SelectedIndex:=dm.ADodmarks.Fields.Fields[0].AsInteger;
fmain.TTVmain.Selected.ImageIndex :=  dm.ADodmarks.Fields.Fields[0].AsInteger;
    end;
end;

procedure TfMain.PageControl2Change(Sender: TObject);
begin
    TabSheet8.ShowHint:=true;
end;
   procedure TfMain.Panel35Click(Sender: TObject);
begin

end;

//����������� �������� � ����������
procedure TfMain.PCStudentChange(Sender: TObject);
begin
  case DBLookupComboboxEh7.Value of
    1:
      begin
        DBEdit28.Visible := false;
        SpeedButton6.Visible := false;
        DBLookupComboboxEh2.Visible := false;
        DBEdit29.Visible := false;
        SpeedButton4.Visible := false;
        DBLookupComboboxEh3.Visible := false;
      end;
    2:
      begin
        DBEdit28.Visible := true;
        SpeedButton6.Visible := true;
        DBLookupComboboxEh2.Visible := true;
        DBEdit29.Visible := false;
        SpeedButton4.Visible := false;
        DBLookupComboboxEh3.Visible := false;
      end;
    3:
      begin

        DBEdit29.Visible := true;
        SpeedButton4.Visible := true;
        DBLookupComboboxEh3.Visible := true;
      end;
  end;

end;
  //����������� �������� � ����������
procedure TfMain.PMStudentPopup(Sender: TObject);
begin

  if (dm.adodsStudentDataStatus.Value in [1,3,5]) then
  begin
    N18.Visible := true;
    N5.Visible := false;
    N14.Visible := false;
    N15.Visible := false;
    N19.Visible := false;
    N23.Visible := false;
    N22.Visible := false;
  end;
  if (dm.adodsStudentDataStatus.Value in [0,2,4]) then
  begin
    N18.Visible := false;
    N5.Visible := true;
    N14.Visible := true;
    N15.Visible := true;
    N19.Visible := true;
    N23.Visible := true;
    N22.Visible := true;
  end;
end;
   //  �������� ����
procedure TfMain.sbLoadPhotoClick(Sender: TObject);
var
  JPG:  TJPEGImage;
  BMP:  TBitmap;

  JPGRatio: Real;
begin
Application.CreateForm(TfResizePhoto, fResizePhoto);
  if (OIEDPhoto.Execute) then
  begin
  if  ExtractFileExt(OIEDPhoto.FileName)='.bmp' then
   begin
    BMP:= TBitmap.Create;
    BMP.LoadFromFile(OIEDPhoto.FileName);
    fResizePhoto.Image1.Bitmap.Assign(bmp);
    JPGRatio := BMP.Width / BMP.Height;
    if (JPGRatio < 1) then
    begin
      fResizePhoto.Width := 300 + 158;
      fResizePhoto.Height := round(300 / JPGRatio) + 50;
    end
    else
    begin
      fResizePhoto.Width := round(300 * JPGRatio) + 158;
      fResizePhoto.Height := 300 + 50;
    end;
    fResizePhoto.Show;
    BMP.Destroy;
     exit;
  end;
   end;
  if  ExtractFileExt(OIEDPhoto.FileName)='.jpg' then
   begin
    JPG := TJPEGImage.Create;
    JPG.LoadFromFile(OIEDPhoto.FileName);
    fResizePhoto.Image1.Bitmap.Assign(jpg);
    JPGRatio := JPG.Width / JPG.Height;
    if (JPGRatio < 1) then
    begin
      fResizePhoto.Width := 300 + 158;
      fResizePhoto.Height := round(300 / JPGRatio) + 50;
    end
    else
    begin
      fResizePhoto.Width := round(300 * JPGRatio) + 158;
      fResizePhoto.Height := 300 + 50;
    end;
    fResizePhoto.Show;
    JPG.Destroy;
  end
  else
  ShowMessage('�������� ������ ������ �����������');




end;

procedure TfMain.ScrollBar1Change(Sender: TObject);
begin
ScrollBar1.Min:=1;
  ScrollBar1.Max:=dm.ADODSStudentList.RecordCount;
  dm.ADODSStudentList.RecNo:=ScrollBar1.Position;

end;
      //��������� ������� �������
procedure TfMain.SetAccessLevel;
begin


  while (not(dm.adodsSecurityGetRights.Eof)) do
  begin
    case dm.adodsSecurityGetRightsIDElement.AsInteger of
      1:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              TSFaculty.TabVisible := false;
            1:
              TSFaculty.TabVisible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                TSFaculty.TabVisible := true
              else
                TSFaculty.TabVisible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              TSFaculty.Enabled := false;
            1:
              TSFaculty.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                TSFaculty.Enabled := true;
          else
            TSFaculty.Enabled := false;
          end;
        end;
      2:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              TSGroup.TabVisible := false;
            1:
              TSGroup.TabVisible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                TSGroup.TabVisible := true
              else
                TSGroup.TabVisible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              TSGroup.Enabled := false;
            1:
              TSGroup.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                TSGroup.Enabled := true;
          else
            TSGroup.Enabled := false;
          end;
        end;
      4:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              sbEditPlan.Hide;
            1:
              sbEditPlan.Show;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                sbEditPlan.Show
              else
                sbEditPlan.Hide;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              sbEditPlan.Enabled := false;
            1:
              sbEditPlan.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                sbEditPlan.Enabled := true;
          else
            sbEditPlan.Enabled := false;
          end;
        end;
      5:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              N11.Visible := false;
            1:
              N11.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                N11.Visible := true;
          else
            N11.Visible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              N11.Enabled := false;
            1:
              N11.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                N11.Enabled := true;
          else
            N11.Enabled := false;
          end;
        end;
      6:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              TSStudentMain.TabVisible := false;
            1:
              TSStudentMain.TabVisible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                TSStudentMain.TabVisible := true
              else
                TSStudentMain.TabVisible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              TSStudentMain.Enabled := false;
            1:
              TSStudentMain.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                TSStudentMain.Enabled := true;
          else
            TSStudentMain.Enabled := false;
          end;
        end;
      7:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              TSStudentPassport.TabVisible := false;
            1:
              TSStudentPassport.TabVisible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                TSStudentPassport.TabVisible := true
              else
                TSStudentPassport.TabVisible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              TSStudentPassport.Enabled := false;
            1:
              TSStudentPassport.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                TSStudentPassport.Enabled := true;
          else
            TSStudentPassport.Enabled := false;
          end;
        end;
      8:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              TSStudentAcademic.TabVisible := false;
            1:
              TSStudentAcademic.TabVisible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                TSStudentAcademic.TabVisible := true
              else
                TSStudentAcademic.TabVisible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              TSStudentAcademic.Enabled := false;
            1:
              TSStudentAcademic.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                TSStudentAcademic.Enabled := true;
          else
            TSStudentAcademic.Enabled := false;
          end;
        end;
      9:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              N1.Visible := false;
            1:
              N1.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                N1.Visible := true
              else
                N1.Visible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              N1.Enabled := false;
            1:
              N1.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                N1.Enabled := true;
          else
            N1.Enabled := false;
          end;
        end;
      10:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              N4.Visible := false;
            1:
              N4.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                N4.Visible := true
              else
                N4.Visible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              N4.Enabled := false;
            1:
              N4.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                N4.Enabled := true;
          else
            N4.Enabled := false;
          end;
        end;
      11:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              N2.Visible := false;
            1:
              N2.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                N2.Visible := true
              else
                N2.Visible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              N2.Enabled := false;
            1:
              N2.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                N2.Enabled := true;
          else
            N2.Enabled := false;
          end;
        end;
      12:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              N5.Visible := false;
            1:
              N5.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                N5.Visible := true
              else
                N5.Visible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              N5.Enabled := false;
            1:
              N5.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                N5.Enabled := true;
          else
            N5.Enabled := false;
          end;
        end;
      13:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              N12.Visible := false;
            1:
              N12.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                N12.Visible := true
              else
                N12.Visible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              N12.Enabled := false;
            1:
              N12.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                N12.Enabled := true;
          else
            N12.Enabled := false;
          end;
        end;
      14:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              N10.Visible := false;
            1:
              N10.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                N10.Visible := true
              else
                N10.Visible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              N10.Enabled := false;
            1:
              N10.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                N10.Enabled := true;
          else
            N10.Enabled := false;
          end;
        end;
      15:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              TSReport.TabVisible := false;
            1:
              TSReport.TabVisible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                TSReport.TabVisible := true
              else
                TSReport.TabVisible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              TSReport.Enabled := false;
            1:
              TSReport.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                TSReport.Enabled := true;
          else
            TSReport.Enabled := false;
          end;
        end;
      16:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              GroupBox7.Visible := false;
            1:
              GroupBox7.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                GroupBox7.Visible := true
              else
                GroupBox7.Visible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              GroupBox7.Enabled := false;
            1:
              GroupBox7.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                GroupBox7.Enabled := true;
          else
            GroupBox7.Enabled := false;
          end;
        end;
        17:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
                TabSheet10.TabVisible := false;
            1:
                TabSheet10.TabVisible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                  TabSheet10.TabVisible := true
              else
                  TabSheet10.TabVisible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
                TabSheet10.Enabled := false;
            1:
                TabSheet10.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
              TabSheet10.Enabled := true;
          else
              TabSheet10.Enabled := false;
          end;
        end;
         18:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
                GroupBox26.Visible := false;
            1:
               GroupBox26.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                  GroupBox26.Visible  := true
              else
                 GroupBox26.Visible  := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
               GroupBox26.Enabled := false;
            1:
                GroupBox26.Enabled  := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
             GroupBox26.Enabled  := true;
          else
              GroupBox26.Enabled:= false;
          end;
        end;
           19:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
               TabSheet11.tabVisible := false;
            1:
               TabSheet11.tabVisible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                 TabSheet11.tabVisible  := true
              else
                 TabSheet11.tabVisible  := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
               TabSheet11.Enabled := false;
            1:
                TabSheet11.Enabled  := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
             TabSheet11.Enabled  := true;
          else
              TabSheet11.Enabled:= false;
          end;
        end;
            20:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
               DBEdit53.Visible := false;
            1:
               DBEdit53.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                  DBEdit53.Visible  := true
              else
                  DBEdit53.Visible  := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
               DBEdit53.Enabled := false;
            1:
                DBEdit53.Enabled  := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
              DBEdit53.Enabled  := true;
          else
              DBEdit53.Enabled:= false;
          end;
        end;
         21:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
                GroupBox29.Visible := false;
            1:
               GroupBox29.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                  GroupBox29.Visible  := true
              else
                 GroupBox29.Visible  := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
               GroupBox29.Enabled := false;
            1:
                GroupBox29.Enabled  := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
             GroupBox29.Enabled  := true;
          else
              GroupBox29.Enabled:= false;
          end;
        end;
        22:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              TSStudent.TabVisible := false;
            1:
              TSStudent.TabVisible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                TSGroup.TabVisible := true
              else
                TSStudent.TabVisible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              TSStudent.Enabled := false;
            1:
              TSStudent.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                TSStudent.Enabled := true;
          else
            TSStudent.Enabled := false;
          end;
        end;
         23:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
                GBGroupname.Visible := false;
            1:
                  GBGroupname.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                    GBGroupname.Visible  := true
              else
                    GBGroupname.Visible  := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
                 GBGroupname.Enabled := false;
            1:
                   GBGroupname.Enabled  := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                GBGroupname.Enabled  := true;
          else
                 GBGroupname.Enabled:= false;
          end;
        end;
 24:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
                GBGroupSpecies.Visible := false;
            1:
                  GBGroupSpecies.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                   GBGroupSpecies.Visible  := true
              else
                    GBGroupSpecies.Visible  := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
                 GBGroupSpecies.Enabled := false;
            1:
                   GBGroupSpecies.Enabled  := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                GBGroupSpecies.Enabled  := true;
          else
                 GBGroupSpecies.Enabled:= false;
          end;
        end;
 25:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
                GroupBox13.Visible := false;
            1:
                  GroupBox13.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                   GroupBox13.Visible  := true
              else
                    GroupBox13.Visible  := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
                GroupBox13.Enabled := false;
            1:
                   GroupBox13.Enabled  := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                GroupBox13.Enabled  := true;
          else
                 GroupBox13.Enabled:= false;
          end;
        end;
        26:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              tab.TabVisible := false;
            1:
              tab.TabVisible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                tab.TabVisible := true
              else
                tab.TabVisible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              tab.Enabled := false;
            1:
              tab.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                tab.Enabled := true;
          else
            tab.Enabled := false;
          end;
        end;
        27:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              tabsheet5.TabVisible := false;
            1:
               tabsheet5.TabVisible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                 tabsheet5.TabVisible := true
              else
                 tabsheet5.TabVisible := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
               tabsheet5.Enabled := false;
            1:
              tabsheet5.Enabled := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
                tabsheet5.Enabled := true;
          else
             tabsheet5.Enabled := false;
          end;
        end;
         28:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
               groupbox32.Visible := false;
            1:
                 groupbox32.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                  groupbox32.Visible  := true
              else
                   groupbox32.Visible:= false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
                groupbox32.Enabled := false;
            1:
                 groupbox32.Enabled  := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
               groupbox32.Enabled  := true;
          else
               groupbox32.Enabled:= false;
          end;
        end;
         29:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
              PageControl1.Pages[3].tabVisible:=false;
            1:
               PageControl1.Pages[3].tabVisible:=true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                PageControl1.Pages[3].tabVisible:=true;
              else
                  PageControl1.Pages[3].tabVisible:=false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
               PageControl1.Pages[3].tabVisible:=false;
            1:
               PageControl1.Pages[3].tabVisible:=true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
              PageControl1.Pages[3].tabVisible:=true;
          else
             PageControl1.Pages[3].tabVisible:=false;
          end;
        end;
           31:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
                DBEdit52.Visible := false;
            1:
               DBEdit52.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                  DBEdit52.Visible  := true
              else
                 DBEdit52.Visible  := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
               DBEdit52.Enabled := false;
            1:
                DBEdit52.Enabled  := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
             DBEdit52.Enabled  := true;
          else
              DBEdit52.Enabled:= false;
          end;
        end;

     32:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
            begin

               Button8.Visible := false;
               Button12.Visible := false;
               Button16.Visible := false;
               Button18.Visible := false;
               Button19.Visible := false;
               Button23.Visible := false;
               Button24.Visible := false;
               Button30.Visible := false;
               tsbase.tabVisible:=false;
                tscard.tabVisible:=false;
                SpeedButton74.Visible:=false;
                PageControl1.Pages[2].tabVisible:=false;
                PageControl1.Pages[6].tabVisible:=false;
                PageControl1.Pages[1].tabVisible:=false;
                PageControl1.Pages[0].tabVisible:=false;
                groupbox15.Visible := false;
                groupbox17.Visible := false;
                groupbox18.Visible := false;
                TTVmain.Visible := false;
            end;
            1:
               TTVmain.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                  TTVmain.Visible  := true
              else
                 TTVmain.Visible  := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
               TTVmain.Enabled := false;
            1:
                TTVmain.Enabled  := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
             TTVmain.Enabled  := true;
          else
              TTVmain.Enabled:= false;
          end;
        end;
              33:
        begin
          case (dm.adodsSecurityGetRightsIsVisible.AsInteger) of
            0:
                GroupBox33.Visible := false;
            1:
               GroupBox33.Visible := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsVisibleTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsVisibleTimeEnd.AsDateTime) then
                  GroupBox33.Visible  := true
              else
                GroupBox33.Visible  := false;
          end;
          case (dm.adodsSecurityGetRightsIsEnable.AsInteger) of
            0:
              GroupBox33.Enabled := false;
            1:
                GroupBox33.Enabled  := true;
            2:
              if (dm.adodsSecurityGetRightsCurrentDate.AsDateTime >=
                  dm.adodsSecurityGetRightsIsEnableTimeBegin.AsDateTime) and
                (dm.adodsSecurityGetRightsCurrentDate.AsDateTime <=
                  dm.adodsSecurityGetRightsIsEnableTimeEnd.AsDateTime) then
            GroupBox33.Enabled  := true;
          else
              GroupBox33.Enabled:= false;
          end;
        end;
    end;

    dm.adodsSecurityGetRights.Next;
  end;
end;

procedure TfMain.SpeedButton10Click(Sender: TObject);
begin
  dm.ADOSQLExecutor.CommandText :=
    'update studentData set igaDefence3Name=' + DBEdit32.Text +
    ' where idgroup=' + dm.ADODSStudentListIDGroup.AsString;
  dm.ADOSQLExecutor.Execute;
end;
   //���������� �����, ����� ������
procedure TfMain.SpeedButton11Click(Sender: TObject);
var
  l, h: string;
begin

  DMreports.adodsStudentListGet.Close;
  DMreports.adodsStudentListGet.Parameters[1].Value :=
    TTVmain.Selected.StateIndex;

  DMreports.adodsStudentListGet.Parameters[2].Value := 0;
  DMreports.adodsStudentListGet.Parameters[3].Value := 0;
  DMreports.adodsStudentListGet.Parameters[4].Value := 0;
  DMreports.adodsStudentListGet.Parameters[5].Value := 1;
  DMreports.adodsStudentListGet.open;
  DMreports.ADODStudentExamMon.Close;
  case RadioGroup1.ItemIndex of
       0:
      begin
        l := '01.01.';
        h := '01.02.';
      end;
    1:
      begin
        l := '01.06.';
        h := '01.07.';
      end;
  end;
  l := l + copy(ComboBox1.Text, 6, 4);
  h := h + copy(ComboBox1.Text, 6, 4);
  DMreports.ADODSResSem.Close;
  DMreports.ADODSResSem.Parameters[0].Value := TTVmain.Selected.StateIndex;
  DMreports.ADODSResSem.Parameters[1].Value :=StrToDate(l);
  DMreports.ADODSResSem.Parameters[2].Value := StrToDate(h);
  DMreports.ADODSResSem.open;


  DMreports.ADODStudentExamMon.Parameters[1].Value :=
    TTVmain.Selected.StateIndex;
  DMreports.ADODStudentExamMon.Parameters[2].Value := StrToDate(l);
  DMreports.ADODStudentExamMon.Parameters[3].Value := StrToDate(h);
  DMreports.ADODStudentExamMon.open;
  DMreports.frxRStudentExamMon.Variables['x'] := '''' + ComboBox1.Text + '''';
  DMreports.frxRStudentExamMon.Variables['y'] :=
    '''' + RadioGroup1.Items.Strings[RadioGroup1.ItemIndex] + '''';
  DMreports.frxRStudentExamMon.ShowReport();
  Panel6.Visible := false;
end;

procedure TfMain.SpeedButton12Click(Sender: TObject);
begin
  Panel6.Visible := false;
end;
  //���������� �����, ����� ������
procedure TfMain.SpeedButton13Click(Sender: TObject);
begin
if CheckBox1.Checked then
    DMreports.frxRStudentSpravka.Variables['rector'] := '''' +
      '�.�. �������<u>                                            �.�.������ //</u>'
      + ''''
  else
    DMreports.frxRStudentSpravka.Variables['rector'] := '''' + '' + '''';
  DMreports.adodsStudentListGet.Close;
  DMreports.adodsStudentListGet.Parameters[1].Value :=
    dm.ADODSStudentListIDGroup.Value;
  DMreports.adodsStudentListGet.Parameters[2].Value := 0;
  DMreports.adodsStudentListGet.Parameters[3].Value := 0;
  DMreports.adodsStudentListGet.Parameters[4].Value := 0;
  DMreports.adodsStudentListGet.Parameters[5].Value := 1;
  DMreports.adodsStudentListGet.open;

  DMreports.ADODStudentSpravka.Close;
  DMreports.ADODStudentSpravka.Parameters[0].Value :=
    dm.adodsStudentDataID.AsInteger;
  DMreports.ADODStudentSpravka.Parameters[1].Value := RzSpinEdit1.Value;
  DMreports.ADODStudentSpravka.open;
  DMreports.ADODSrokObuch.Close;
  DMreports.ADODSrokObuch.Parameters[0].Value :=
    DMreports.ADODStudentSpravka.FieldValues['idplan'];
  DMreports.ADODSrokObuch.Parameters[1].Value := dm.ADODSStudentListKurs.Value;
  DMreports.ADODSrokObuch.open;

  DMreports.frxRStudentSpravka.ShowReport();
end;

procedure TfMain.SpeedButton14Click(Sender: TObject);
begin
  Panel9.Visible := false;
end;
    //���������� �����, ����� ������
procedure TfMain.SpeedButton15Click(Sender: TObject);
var
  l, h, s: string;
begin
  DMreports.adodsStudentListGet.Close;
  DMreports.adodsStudentListGet.Parameters[1].Value :=
    TTVmain.Selected.StateIndex;
  DMreports.adodsStudentListGet.Parameters[2].Value := 0;
  DMreports.adodsStudentListGet.Parameters[3].Value := 0;
  DMreports.adodsStudentListGet.Parameters[4].Value := 0;
  DMreports.adodsStudentListGet.Parameters[5].Value := 1;
  DMreports.adodsStudentListGet.open;
  case RadioGroup2.ItemIndex of
     0:
      begin
        l := '01.01.';
        h := '01.02.';
      end;
    1:
      begin
        l := '01.06.';
        h := '01.07.';
      end;
  end;
  l := l + copy(ComboBox2.Text, 6, 4);
  h := h + copy(ComboBox2.Text, 6, 4);
  DMreports.ADODSlowStudent.Close;
  DMreports.ADODSlowStudent.Parameters[1].Value := TTVmain.Selected.StateIndex;
  DMreports.ADODSlowStudent.Parameters[2].Value := StrToDate(l);
  DMreports.ADODSlowStudent.Parameters[3].Value := StrToDate(h);
   DMreports.ADODSlowStudent.Parameters[4].Value := 1;
  DMreports.ADODSlowStudent.open;
  s := RadioGroup2.Items.Strings[RadioGroup2.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxRSlowStudent.Variables['x'] := '''' + ComboBox2.Text + '''';
  DMreports.frxRSlowStudent.Variables['y'] := '''' + s + '��' + '''';
  DMreports.frxRSlowStudent.ShowReport();
end;

procedure TfMain.SpeedButton16Click(Sender: TObject);
begin
  panel22.Visible:=false;
end;
 //���������� �����, ����� ������
procedure TfMain.SpeedButton17Click(Sender: TObject);
var
  l, h, s: string;
begin

    case ComboBox5.ItemIndex of
  0:begin

  DMreports.ADODSSesionResult.Close;
  DMreports.ADODSSesionResult.Parameters[1].Value := dm.ADODSFacultiesID.Value;
  DMreports.ADODSSesionResult.Parameters[2].Value :=  DateTimePicker5.Date;
    DMreports.ADODSSesionResult.Parameters[3].Value :=  DateTimePicker6.Date;
   DMreports.ADODSSesionResult.Parameters[4].Value := 0;
    DMreports.ADODSSesionResult.Parameters[5].Value := 2;
  DMreports.ADODSSesionResult.open;
   if DMreports.ADODSSesionResult.RecordCount=0   then
   begin
     ShowMessage('� ������ ���������� ������ �� ��������');
     exit;
   end;
  s := RadioGroup2.Items.Strings[RadioGroup3.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxSesionResult.Variables['x'] := '''' + ComboBox3.Text + '''';
  DMreports.frxSesionResult.Variables['y'] := '''' + s + '��' + '''';
  DMreports.frxSesionResult.ShowReport();
  end;
  1: begin
    DMreports.ADODSSessionResultSpecNap.Close;
  DMreports.ADODSSessionResultSpecNap.Parameters[1].Value :=dm.ADODSFacultiesID.AsInteger;
  DMreports.ADODSSessionResultSpecNap.Parameters[2].Value :=  DateTimePicker5.Date;
    DMreports.ADODSSessionResultSpecNap.Parameters[3].Value :=  DateTimePicker6.Date;
  DMreports.ADODSSessionResultSpecNap.open;
  s := RadioGroup3.Items.Strings[RadioGroup3.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxSessionResultSpecNap.Variables['x'] := '''' + ComboBox3.Text + '''';
  DMreports.frxSessionResultSpecNap.Variables['y'] := '''' + s + '��' + '''';
  DMreports.frxSessionResultSpecNap.Variables['f'] :=  '''' + dm.ADODSFacultiesFacultyName.AsString  + '''';
  DMreports.frxSessionResultSpecNap.Variables['d'] :=  '''' + dm.ADODSFacultiesDeanNameS.AsString  + ''''  ;
  DMreports.frxSessionResultSpecNap.ShowReport();


  end;
    2:begin
      DMreports.ADODSOtlichFac.Close;
  DMreports.ADODSOtlichFac.Parameters[1].Value :=dm.ADODSFacultiesID.AsInteger;
  DMreports.ADODSOtlichFac.Parameters[2].Value :=  DateTimePicker5.Date;
    DMreports.ADODSOtlichFac.Parameters[3].Value :=  DateTimePicker6.Date;
  DMreports.ADODSOtlichFac.open;
  s := RadioGroup3.Items.Strings[RadioGroup3.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxROtlichFac.Variables['x'] := '''' + ComboBox3.Text + '''';
  DMreports.frxROtlichFac.Variables['y'] := '''' + s + '��' + '''';
  DMreports.frxROtlichFac.ShowReport();
    end;
   3:begin
  DMreports.ADODSSessionResultComers.Close;
  DMreports.ADODSSessionResultComers.Parameters[1].Value := dm.ADODSFacultiesID.Value;
DMreports.ADODSSessionResultComers.Parameters[2].Value :=  DateTimePicker5.Date;
    DMreports.ADODSSessionResultComers.Parameters[3].Value :=  DateTimePicker6.Date;
    DMreports.ADODSSessionResultComers.Parameters[4].Value := 2;
  DMreports.ADODSSessionResultComers.open;
  s := RadioGroup2.Items.Strings[RadioGroup3.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxRSessionResultComers.Variables['x'] := '''' + ComboBox3.Text + '''';
  DMreports.frxRSessionResultComers.Variables['y'] := '''' + s + '��' + '''';
  DMreports.frxRSessionResultComers.Variables['osn'] := ''''  + '������������' + '''';
  DMreports.frxRSessionResultComers.ShowReport();
  end;
  4:begin
  DMreports.ADODSSlowCathedr.Close;
  DMreports.ADODSSlowCathedr.Parameters[1].Value := dm.ADODSFacultiesID.Value;
 DMreports.ADODSSesionResult.Parameters[2].Value :=  DateTimePicker5.Date;
    DMreports.ADODSSesionResult.Parameters[3].Value :=  DateTimePicker6.Date;
  DMreports.ADODSSlowCathedr.open;
  s := RadioGroup2.Items.Strings[RadioGroup3.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxRSlowCathedr.Variables['f'] := '''' + dm.ADODSFacultiesFacultyName.AsString + '''';
  DMreports.frxRSlowCathedr.Variables['x'] := '''' + ComboBox3.Text + '''';
  DMreports.frxRSlowCathedr.Variables['y'] := '''' + s + '��' + '''';
  DMreports.frxRSlowCathedr.ShowReport();
  end;
  5:begin
  DMreports.ADODSSessionResultComers.Close;
  DMreports.ADODSSessionResultComers.Parameters[1].Value := dm.ADODSFacultiesID.Value;
DMreports.ADODSSessionResultComers.Parameters[2].Value :=  DateTimePicker5.Date;
    DMreports.ADODSSessionResultComers.Parameters[3].Value :=  DateTimePicker6.Date;
    DMreports.ADODSSessionResultComers.Parameters[4].Value := 0;
  DMreports.ADODSSessionResultComers.open;
  s := RadioGroup2.Items.Strings[RadioGroup3.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxRSessionResultComers.Variables['x'] := '''' + ComboBox3.Text + '''';
  DMreports.frxRSessionResultComers.Variables['y'] := '''' + s + '��' + '''';
  DMreports.frxRSessionResultComers.Variables['osn'] := ''''  + '���������' + '''';
  DMreports.frxRSessionResultComers.ShowReport();
  end;
    end;

end;

procedure TfMain.SpeedButton18Click(Sender: TObject);
begin
  Panel11.Visible := false;
end;

procedure TfMain.SpeedButton19Click(Sender: TObject);
begin
  Panel12.Visible := false;
end;

procedure TfMain.SpeedButton1Click(Sender: TObject);
begin
  fDirectory.pcDirectory.HideAllTabs;
  fDirectory.pcDirectory.Pages[1].Show;
  fDirectory.Caption := '������� �����(�����)';
  fDirectory.ShowModal;

end;
    //���������� �����, ����� ������
procedure TfMain.SpeedButton20Click(Sender: TObject);
begin
  case ComboBox4.ItemIndex of
    0:
      begin
        DMreports.ADODS3NKKolStud.Close;
        DMreports.ADODS3NKKolStud.Parameters[0].Value :=
          dm.ADODSFacultiesID.AsInteger;
        DMreports.ADODS3NKKolStud.open;
        DMreports.frx3NKKolStud.ShowReport();
      end;
    1:
      begin
        DMreports.ADODS3NKUslObuch.Close;
        DMreports.ADODS3NKUslObuch.Parameters[0].Value :=
          dm.ADODSFacultiesID.AsInteger;
        DMreports.ADODS3NKUslObuch.open;
        DMreports.frx3NKUslObuch.ShowReport();
      end;
    3:
      begin
        DMreports.ADODS3NKSShip.Close;
        DMreports.ADODS3NKSShip.Parameters[0].Value :=
          dm.ADODSFacultiesID.AsInteger;
        DMreports.ADODS3NKSShip.open;
        DMreports.frx3NKSShip.ShowReport();
      end;
    4:
      begin
        DMreports.ADODSBenefit.Close;
        DMreports.ADODSBenefit.Parameters[0].Value :=
          dm.ADODSFacultiesID.AsInteger;
        DMreports.ADODSBenefit.open;
        DMreports.frxRBenefit.ShowReport();
      end;
    2:
      begin
        DMreports.ADODS3NKYear.Close;
        DMreports.ADODS3NKYear.Parameters[0].Value :=
          dm.ADODSFacultiesID.AsInteger;
        DMreports.ADODS3NKYear.open;
        DMreports.frx3NKYear.ShowReport();
      end;
  end;

end;

procedure TfMain.SpeedButton21Click(Sender: TObject);
begin
    Application.CreateForm(Toldname, oldname);
oldname.ShowModal;
oldname.DateTimePicker1.Date:=date();
end;
   //���������� �����, ����� ������
procedure TfMain.SpeedButton22Click(Sender: TObject);

var s:string;
begin
s:='';
dm.ADODSOldNamestory.Close;
dm.ADODSOldNamestory.Parameters[0].Value:=dm.adodsStudentDataID.AsInteger;
dm.ADODSOldNamestory.Open;
while not(dm.ADODSOldNamestory.Eof) do
begin
if dm.ADODSOldNamestoryNameF.AsBoolean then
s:=s+#13+'�������: '+dm.ADODSOldNamestoryOldName.AsString+' �� '+ datetostr(dm.ADODSOldNamestoryDateOfChange.AsDateTime)+' ���������: '+dm.ADODSOldNamestoryReason.AsString ;
if dm.ADODSOldNamestoryNamei.AsBoolean then
s:=s+#13+'���: '+dm.ADODSOldNamestoryOldName.AsString+' �� '+ datetostr(dm.ADODSOldNamestoryDateOfChange.AsDateTime) +' ���������: '+dm.ADODSOldNamestoryReason.AsString ;

if dm.ADODSOldNamestoryNameo.AsBoolean then
s:=s+#13+'��������: '+dm.ADODSOldNamestoryOldName.AsString+' �� '+ datetostr(dm.ADODSOldNamestoryDateOfChange.AsDateTime)+' ���������: '+dm.ADODSOldNamestoryReason.AsString  ;
 dm.ADODSOldNamestory.Next;

end;
if s<>'' then

  ShowMessage(s);
end;
    //���������� �����, ����� ������
procedure TfMain.SpeedButton23Click(Sender: TObject);
begin
panel13.Visible:=false;
DMreports.ADODSRatingforbudget.Close;
DMreports.ADODSRatingforbudget.Parameters[1].Value:=RzSpinEdit2.Value;
DMreports.ADODSRatingforbudget.Parameters[2].Value:=RzSpinEdit3.Value;
DMreports.ADODSRatingforbudget.Parameters[3].Value:=dm.ADODSFacultiesID.AsInteger;
DMreports.ADODSRatingforbudget.Parameters[4].Value:=dm.ADODSFacultiesID.AsInteger;
DMreports.ADODSRatingforbudget.Parameters[5].Value:=1;
DMreports.ADODSRatingforbudget.Parameters[6].Value:= 7;
DMreports.ADODSRatingforbudget.Parameters[7].Value:=1;
DMreports.ADODSRatingforbudget.Parameters[8].Value:=1;
DMreports.ADODSRatingforbudget.Parameters[9].Value:=1;
DMreports.ADODSRatingforbudget.Parameters[10].Value:= dm.ADODSStudentListIDGroup.AsInteger;
 DMreports.ADODSRatingforbudget.Open;
  DMreports.frxRRatingforbudget.ShowReport();

end;

procedure TfMain.SpeedButton24Click(Sender: TObject);
begin
panel13.Visible:=false;
end;
       //���������� �����, ����� ������
procedure TfMain.SpeedButton25Click(Sender: TObject);
begin
  Application.CreateForm(TSessionDate, SessionDate);
    Application.CreateForm(TfWorkCurriculum, fWorkCurriculum);
  Application.CreateForm(TfDirectory, fDirectory);
dm.adodsStudentData.Close;
dm.adodsStudentData.Parameters[0].Value:=TTVmain.Selected.StateIndex;;
dm.adodsStudentData.open;
dm.adodsWorkCurriculum.Close;
dm.adodsWorkCurriculum.Parameters[0].Value :=dm.adodsStudentDataIDGroup.AsInteger;
dm.adodsWorkCurriculum.open;
dm.adodsWorkCurrDisc.Close;
dm.adodsWorkCurrDisc.Parameters[0].Value :=dm.adodsWorkCurriculumID.AsInteger;
dm.adodsWorkCurrDisc.open;
dm.adodsWorkCurrDisc.Sort :=
'Semester, ControlExamination DESC, ControlCourseWork DESC, ControlTest DESC';
fWorkCurriculum.ShowModal;
end;

procedure TfMain.SpeedButton26Click(Sender: TObject);
begin
  Application.CreateForm(TfWorkCurriculum, fWorkCurriculum);
if (dm.adodsWorkCurriculumidPlan.Value > 0) then
  begin
    fDMfromUPlan.adodsPlans.Locate('ID', dm.adodsWorkCurriculumidPlan.AsString,
      []);
    dm.adodsGroupName.Close;
    dm.adodsGroupName.Parameters[0].Value :=
      dm.adodsWorkCurriculumidPlan.AsString;
    dm.adodsGroupName.open;
    fDirectory.pcDirectory.HideAllTabs;
    fDirectory.pcDirectory.Pages[0].Show;
    fDirectory.ShowModal;
    fDirectory.Caption := '�������� ����� �� ������ �������������/�����������';
  end;
end;
   //���������� �����, ����� ������
procedure TfMain.SpeedButton27Click(Sender: TObject);
var
  l, h, s: string;
begin
  DMreports.adodsStudentListGet.Close;
  DMreports.adodsStudentListGet.Parameters[1].Value :=
    TTVmain.Selected.StateIndex;
  DMreports.adodsStudentListGet.Parameters[2].Value := 0;
  DMreports.adodsStudentListGet.Parameters[3].Value := 0;
  DMreports.adodsStudentListGet.Parameters[4].Value := 0;
  DMreports.adodsStudentListGet.Parameters[5].Value := 1;
  DMreports.adodsStudentListGet.open;
  ;

  DMreports.ADODSlowStudent.Close;
  DMreports.ADODSlowStudent.Parameters[1].Value := dm.ADODSFacultiesID.AsInteger;
  DMreports.ADODSlowStudent.Parameters[2].Value := DateTimePicker9.Date;
  DMreports.ADODSlowStudent.Parameters[3].Value :=DateTimePicker10.Date;
  DMreports.ADODSlowStudent.Parameters[4].Value :=false;
  DMreports.ADODSlowStudent.open;
  s := RadioGroup4.Items.Strings[RadioGroup4.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxRSlowStudent.Variables['x'] := '''' + ComboBox6.Text + '''';
  DMreports.frxRSlowStudent.Variables['y'] := '''' + s + '��' + '''';
  DMreports.frxRSlowStudent.ShowReport();
  panel14.Visible:=false;
end;

procedure TfMain.SpeedButton28Click(Sender: TObject);
begin
panel14.Visible:=false;
end;

procedure TfMain.SpeedButton29Click(Sender: TObject);
begin
DMreports.ADODSRaitingDopStip.Close;
DMreports.ADODSRaitingDopStip.Parameters[1].Value:= dm.ADODSFacultiesID.value;
DMreports.ADODSRaitingDopStip.Parameters[2].Value:=0;
if CheckBox2.Checked then
 DMreports.ADODSRaitingDopStip.Parameters[3].Value:=1
 else
 DMreports.ADODSRaitingDopStip.Parameters[3].Value:=2;
 DMreports.ADODSRaitingDopStip.Parameters[4].Value:=ComboBox7.ItemIndex+1;
 DMreports.ADODSRaitingDopStip.Open;
 DMreports.frxRRaitingDopStip.ShowReport();
end;
    //���������� �����, ����� ������
procedure TfMain.SpeedButton2Click(Sender: TObject);
begin
  DMreports.ADODSUslovObuch.Close;
  DMreports.ADODSUslovObuch.Parameters[0].Value :=
    dm.ADODSStudentListIDGroup.Value;
  DMreports.ADODSUslovObuch.Parameters[1].Value := CBUslObuch.ItemIndex;

  DMreports.ADODSUslovObuch.open;

  DMreports.adodsStudentListGet.Close;
  DMreports.adodsStudentListGet.Parameters[1].Value :=
    TTVmain.Selected.StateIndex;
  DMreports.adodsStudentListGet.Parameters[2].Value := 0;
  DMreports.adodsStudentListGet.Parameters[3].Value := 0;
  DMreports.adodsStudentListGet.Parameters[4].Value := 0;
  DMreports.adodsStudentListGet.Parameters[5].Value := 1;
  DMreports.adodsStudentListGet.open;
  DMreports.frxrUslovObuch.ShowReport();
  Panel5.Visible := false;
  CBUslObuch.ItemIndex := -1;
end;

procedure TfMain.SpeedButton30Click(Sender: TObject);
begin
panel15.Visible:=false;
end;
    //���������� �����, ����� ������
procedure TfMain.SpeedButton31Click(Sender: TObject);
var
  l, h, s: string;
begin
    case ComboBox8.ItemIndex of
  0:begin
  DMreports.ADODSSesionResult.Close;
  DMreports.ADODSSesionResult.Parameters[1].Value := 0;
  DMreports.ADODSSesionResult.Parameters[2].Value := DateTimePicker7.Date;
  DMreports.ADODSSesionResult.Parameters[3].Value :=  DateTimePicker8.Date;
   DMreports.ADODSSesionResult.Parameters[4].Value := 0;
  DMreports.ADODSSesionResult.Parameters[5].Value := 2;
   DMreports.ADODSSesionResult.Parameters[6].Value := dm.ADODSFacultiesDepartment.AsInteger;
  DMreports.ADODSSesionResult.open;
  s := RadioGroup5.Items.Strings[RadioGroup5.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxRVUSResultSessionFak.Variables['x'] := '''' + ComboBox9.Text + '''';
  DMreports.frxRVUSResultSessionFak.Variables['y'] := '''' + s + '��' + '''';
  DMreports.frxRVUSResultSessionFak.ShowReport();
  end;
  1: begin
  DMreports.ADODSSessionResultSpecNap.Close;
  DMreports.ADODSSessionResultSpecNap.Parameters[1].Value :=0;
  DMreports.ADODSSessionResultSpecNap.Parameters[2].Value := DateTimePicker7.Date;
  DMreports.ADODSSessionResultSpecNap.Parameters[3].Value :=  DateTimePicker8.Date;
    DMreports.ADODSSessionResultSpecNap.Parameters[4].Value :=2;
   DMreports.ADODSSessionResultSpecNap.Parameters[5].Value := dm.ADODSFacultiesDepartment.AsInteger;
  DMreports.ADODSSessionResultSpecNap.open;
  s := RadioGroup5.Items.Strings[RadioGroup5.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxRVUZSessionResultSpec.Variables['x'] := '''' + ComboBox9.Text + '''';
  DMreports.frxRVUZSessionResultSpec.Variables['y'] := '''' + s + '��' + '''';
    DMreports.frxRVUZSessionResultSpec.Variables['otd'] :='''' +panel32.Caption+ '''';
  DMreports.frxRVUZSessionResultSpec.ShowReport();

  end;
  2: begin
    DMreports.ADODSSessionResultSpecNap.Close;
  DMreports.ADODSSessionResultSpecNap.Parameters[1].Value :=0;
 DMreports.ADODSSessionResultSpecNap.Parameters[2].Value := DateTimePicker7.Date;
  DMreports.ADODSSessionResultSpecNap.Parameters[3].Value :=  DateTimePicker8.Date;
   DMreports.ADODSSessionResultSpecNap.Parameters[5].Value := dm.ADODSFacultiesDepartment.AsInteger;
  DMreports.ADODSSessionResultSpecNap.Parameters[4].Value :=1;
  DMreports.ADODSSessionResultSpecNap.open;
  s := RadioGroup5.Items.Strings[RadioGroup5.ItemIndex];
  Delete(s, 5, 6);
  DMreports.  frxVUZKursSpecNapResulrSession.Variables['x'] := '''' + ComboBox9.Text + '''';
  DMreports.  frxVUZKursSpecNapResulrSession.Variables['y'] := '''' + s + '��' + '''';
      DMreports.frxVUZKursSpecNapResulrSession.Variables['otd'] :='''' +panel32.Caption+ '''';
  DMreports.  frxVUZKursSpecNapResulrSession.ShowReport();

  end;
  3:begin
  DMreports.ADODSSesionResult.Close;
  DMreports.ADODSSesionResult.Parameters[1].Value := 0;
  DMreports.ADODSSesionResult.Parameters[2].Value := DateTimePicker7.Date;
  DMreports.ADODSSesionResult.Parameters[3].Value :=  DateTimePicker8.Date;
  DMreports.ADODSSesionResult.Parameters[4].Value := 0;
  DMreports.ADODSSesionResult.Parameters[5].Value := 0;
  DMreports.ADODSSesionResult.Parameters[6].Value := dm.ADODSFacultiesDepartment.AsInteger;
  DMreports.ADODSSesionResult.open;
  s := RadioGroup5.Items.Strings[RadioGroup5.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxRVUSResultSessionFak.Variables['x'] := '''' + ComboBox9.Text + '''';
  DMreports.frxRVUSResultSessionFak.Variables['y'] := '''' + s + '��' + '''';
  DMreports.frxRVUSResultSessionFak.ShowReport();
  end;
   4:begin
  DMreports.ADODSSesionResult.Close;
  DMreports.ADODSSesionResult.Parameters[1].Value := 0;
 DMreports.ADODSSesionResult.Parameters[2].Value := DateTimePicker7.Date;
  DMreports.ADODSSesionResult.Parameters[3].Value :=  DateTimePicker8.Date;
  DMreports.ADODSSesionResult.Parameters[4].Value := 2;
  DMreports.ADODSSesionResult.Parameters[5].Value := 2;
  DMreports.ADODSSesionResult.Parameters[6].Value := dm.ADODSFacultiesDepartment.AsInteger;
  DMreports.ADODSSesionResult.open;
  s := RadioGroup5.Items.Strings[RadioGroup5.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxRVUSResultSessionFak.Variables['x'] := '''' + ComboBox9.Text + '''';
  DMreports.frxRVUSResultSessionFak.Variables['y'] := '''' + s + '��' + '''';
  DMreports.frxRVUSResultSessionFak.ShowReport();
  end;
    end;
end;

procedure TfMain.SpeedButton32Click(Sender: TObject);
begin
dm.ADODSForieng.Close;
dm.ADODSForieng.Parameters[0].Value:=TTVmain.Selected.StateIndex;;
dm.ADODSForieng.open;
dm.ADODSForieng.Edit;
fAnketa.ShowModal;
end;

procedure TfMain.SpeedButton33Click(Sender: TObject);
begin


dm.ADODSPrikazAdd.Close;
dm.ADODSPrikazAdd.Parameters[0].Value:=TTVmain.Selected.StateIndex;
dm.ADODSPrikazAdd.Parameters[1].Value:=ComboBox10.Text;
dm.ADODSPrikazAdd.Parameters[2].Value:=Edit1.Text;
dm.ADODSPrikazAdd.Parameters[3].Value:=DateTimePicker1.DateTime;
if ComboBox10.ItemIndex=2 then
begin
dm.ADODSPrikazAdd.Parameters[4].Value:=DateTimePicker2.DateTime;
dm.ADODSPrikazAdd.Parameters[5].Value:=DateTimePicker3.DateTime;
end
else
begin
dm.ADODSPrikazAdd.Parameters[4].Value:=null;
dm.ADODSPrikazAdd.Parameters[5].Value:=null;
end;
if ComboBox11.ItemIndex=8 then
dm.ADODSPrikazAdd.Parameters[6].Value:=edit2.Text
else
dm.ADODSPrikazAdd.Parameters[6].Value:=ComboBox11.Text;
dm.ADODSPrikazAdd.Parameters[7].Value:=DM.adodsSecurityGetRightsid.asinteger;
dm.ADODSPrikazAdd.open;
edit2.Visible:=false;
DateTimePicker2.Visible:=false;
DateTimePicker3.Visible:=false;
label80.Visible:=false;
label81.Visible:=false;
 SpeedButton33.Left:=215;
dm.ADODSPrikaz.Close;
dm.ADODSPrikaz.Parameters[0].Value:=TTVmain.Selected.StateIndex;
dm.ADODSPrikaz.OPEN;

end;
    //���������� �����, ����� ������
procedure TfMain.SpeedButton34Click(Sender: TObject);
begin
DMreports.ADODSInostr.Close;
DMreports.ADODSInostr.Parameters[1].Value:=dm.ADODSFacultiesID.AsInteger;
DMreports.ADODSInostr.Parameters[2].Value:=DBLookupComboboxEh11.KeyValue;
DMreports.ADODSInostr.Parameters[3].Value:=DBLookupComboboxEh12.KeyValue;
DMreports.ADODSInostr.Parameters[4].Value:=DBLookupComboboxEh13.KeyValue;
 DMreports.ADODSInostr.Parameters[5].Value:=0;
DMreports.ADODSInostr.Parameters[7].Value:=DBLookupComboboxEh19.KeyValue;
 DMreports.ADODSInostr.Parameters[6].Value:=dm.ADODSFacultiesDepartment.AsInteger;
DMreports.ADODSInostr.open;

DMreports.frxRInostr.Variables['s'] := '''' +DBLookupComboboxEh11.Text+ '''';
DMreports.frxRInostr.Variables['u'] := '''' +DBLookupComboboxEh11.Text+ '''';
DMreports.frxRInostr.Variables['sp'] := '''' +DBLookupComboboxEh11.Text+ '''';
if dm.ADODSFacultiesDepartment.AsInteger=1 then
DMreports.frxRInostr.Variables['otd'] := '''' +'����� ���������'+ ''''
else
DMreports.frxRInostr.Variables['otd'] := '''' +'������� ���������'+ '''';
DMreports.frxRInostr.ShowReport();
end;

procedure TfMain.SpeedButton35Click(Sender: TObject);
begin
panel28.Visible:=false;
end;
  //���������� �����, ����� ������
procedure TfMain.SpeedButton36Click(Sender: TObject);
begin
DMreports.ADODSInostr.Close;
DMreports.ADODSInostr.Parameters[1].Value:=0;
DMreports.ADODSInostr.Parameters[2].Value:=DBLookupComboboxEh14.KeyValue;
DMreports.ADODSInostr.Parameters[3].Value:=DBLookupComboboxEh15.KeyValue;
DMreports.ADODSInostr.Parameters[4].Value:=DBLookupComboboxEh16.KeyValue;
 DMreports.ADODSInostr.Parameters[5].Value:=ComboBox19.ItemIndex;
 DMreports.ADODSInostr.Parameters[7].Value:=DBLookupComboboxEh18.KeyValue;
 DMreports.ADODSInostr.Parameters[6].Value:=dm.ADODSFacultiesDepartment.AsInteger;
DMreports.ADODSInostr.open;
DMreports.frxRInostr.Variables['s'] := '''' +DBLookupComboboxEh14.Text+ '''';
DMreports.frxRInostr.Variables['u'] := '''' +DBLookupComboboxEh15.Text+ '''';
DMreports.frxRInostr.Variables['sp'] := '''' +DBLookupComboboxEh16.Text+ '''';
DMreports.frxRInostr.Variables['otd'] := '''' +panel32.Caption+ '''';
DMreports.frxRInostr.ShowReport();
end;

procedure TfMain.SpeedButton37Click(Sender: TObject);
begin
DMreports.ADODSContKursbySpec.Close;
DMreports.ADODSContKursbySpec.Parameters[1].Value:=dm.ADODSFacultiesDepartment.AsInteger;
 DMreports.ADODSContKursbySpec.Open;
 DMreports.frxRContKursbySpec.Variables['otd'] := '''' +panel32.Caption+ '''';
dmreports.frxRContKursbySpec.showreport();
end;

procedure TfMain.SpeedButton38Click(Sender: TObject);
begin
DMreports.ADODsContingentForVUZofKurs.Close;
DMreports.ADODsContingentForVUZofKurs.Parameters[1].Value:=dm.ADODSFacultiesDepartment.AsInteger;
 DMreports.ADODsContingentForVUZofKurs.Open;
 DMreports.frxContingentForVUZofKurs.Variables['otd'] := '''' +panel32.Caption+ '''';
 DMreports.frxContingentForVUZofKurs.ShowReport();
end;

procedure TfMain.SpeedButton39Click(Sender: TObject);
begin
DMreports.ADODSRaitingDopStip.Close;
DMreports.ADODSRaitingDopStip.Parameters[1].Value:= 0;
DMreports.ADODSRaitingDopStip.Parameters[2].Value:=0;
if CheckBox3.Checked then
 DMreports.ADODSRaitingDopStip.Parameters[3].Value:=1
 else
 DMreports.ADODSRaitingDopStip.Parameters[3].Value:=2;
 DMreports.ADODSRaitingDopStip.Parameters[4].Value:=ComboBox12.ItemIndex+1;
 DMreports.ADODSRaitingDopStip.Open;
 DMreports.frxRRaitingDopStip.ShowReport();
end;

procedure TfMain.SpeedButton3Click(Sender: TObject);
begin
  Panel5.Visible := false;
  CBUslObuch.ItemIndex := -1;
end;

procedure TfMain.SpeedButton40Click(Sender: TObject);
begin
DMreports.ADODSSEXVUZ.Close;
DMreports.ADODSSEXVUZ.Parameters[0].Value:=dm.ADODSFacultiesDepartment.AsInteger;
DMreports.ADODSSEXVUZ.open;
 DMreports.frxRSEXVUZ.Variables['otd'] := '''' +panel32.Caption+ '''';
DMreports.frxRSEXVUZ.ShowReport();
end;
  //���������� �����, ����� ������
procedure TfMain.SpeedButton41Click(Sender: TObject);
var l, h, s: string;
begin

  case RadioGroup6.ItemIndex of
     0:
      begin
        l := '01.01.';
        h := '01.02.';
      end;
    1:
      begin
        l := '01.06.';
        h := '01.07.';
      end;
  end;
  l := l + copy(ComboBox13.Text, 6, 4);
  h := h + copy(ComboBox13.Text, 6, 4);
  DMreports.ADODSStipCom.Close;
  DMreports.ADODSStipCom.Parameters[1].Value := TTVmain.Selected.StateIndex;
  DMreports.ADODSStipCom.Parameters[2].Value := StrToDate(l);
  DMreports.ADODSStipCom.Parameters[3].Value := StrToDate(h);
  DMreports.ADODSStipCom.open;
  s := RadioGroup6.Items.Strings[RadioGroup6.ItemIndex];
  Delete(s, 5, 6);
   DMreports.frxRStipCom.Variables['g'] := '''' + dm.adodsGroupDataGroupName.AsString + '''';
  DMreports.frxRStipCom.Variables['d'] := '''' + ComboBox13.Text + '''';
  DMreports.frxRStipCom.Variables['s'] := '''' + s + '��' + '''';
  DMreports.frxRStipCom.ShowReport();
  panel22.Visible:=false;
end;

procedure TfMain.SpeedButton43Click(Sender: TObject);
begin
DMreports.ADODSVipusk.Close;
DMreports.ADODSVipusk.Parameters[1].Value:=fmain.TTVmain.Selected.StateIndex;
DMreports.ADODSVipusk.Parameters[0].Value:=dm.ADODSStudentListIDGroup.AsInteger;
DMreports.ADODSVipusk.open;
DMreports.frxRVipusk.ShowReport();
end;
    //���������� �����, ����� ������
procedure TfMain.SpeedButton44Click(Sender: TObject);
begin
DMreports.ADODSVipusk.Close;
DMreports.ADODSVipusk.Parameters[1].Value:=fmain.TTVmain.Selected.StateIndex;
DMreports.ADODSVipusk.Parameters[0].Value:=dm.ADODSStudentListIDGroup.AsInteger;
DMreports.ADODSVipusk.open;
DMreports.frxRstudentSpravkaOK.ShowReport();
end;
    //���������� �����, ����� ������
procedure TfMain.SpeedButton45Click(Sender: TObject);
var l, h, s: string;
begin


  case RadioGroup7.ItemIndex of
     0:
      begin
        l := '01.01.';
        h := '01.02.';
      end;
    1:
      begin
        l := '01.06.';
        h := '01.07.';
      end;
  end;
  l := l + copy(ComboBox14.Text, 6, 4);
  h := h + copy(ComboBox14.Text, 6, 4);
  DMreports.ADODSUved1.Close;
  DMreports.ADODSUved1.Parameters[1].Value := dm.adodsStudentDataIDGroup.AsInteger;
  DMreports.ADODSUved1.Parameters[2].Value := dm.adodsStudentDataID.AsInteger;
  DMreports.ADODSUved1.Parameters[3].Value := StrToDate(l);
   DMreports.ADODSUved1.Parameters[4].Value := StrToDate(h);
  DMreports.ADODSUved1.open;
  s := RadioGroup7.Items.Strings[RadioGroup7.ItemIndex];
  Delete(s, 5, 6);
  if RadioGroup9.ItemIndex=0 then
  DMreports.frxRUved1.FindObject('memo10').Visible:=true
  else
  DMreports.frxRUved1.FindObject('memo10').Visible:=false;
    DMreports.frxRUved1.Variables['tel'] :=  '''' + dm.ADODSFacultiesFacultyPhone.AsString + '''';
      DMreports.frxRUved1.Variables['fac'] :=  '''' + dm.ADODSFacultiesFacultyNameRP.AsString + '''';

   DMreports.frxRUved1.Variables['fio'] :=  '''' + edit8.Text + '''';
  DMreports.frxRUved1.Variables['uhgod'] := '''' + ComboBox14.Text + '''';
  DMreports.frxRUved1.Variables['session'] := '''' + s + '��' + '''';
  DMreports.frxRUved1.Variables['facshorname'] := '''' + dm.ADODSFacultiesFacultyShortName.AsString + '''';
  DMreports.frxRUved1.Variables['decan'] := '''' + dm.ADODSFacultiesDeanNameS.AsString + '''';


  DMreports.frxRUved1.Variables['srok'] := '''' + datetostr (DateTimePicker4.date) + '''';

  DMreports.frxRUved1.ShowReport();
  panel23.Visible:=false;
end;

procedure TfMain.SpeedButton46Click(Sender: TObject);
begin
panel23.Visible:=false;
end;
      //���������� �����, ����� ������
procedure TfMain.SpeedButton47Click(Sender: TObject);
var l, h, s: string;
begin

  case RadioGroup8.ItemIndex of
     0:
      begin
        l := '01.01.';
        h := '01.02.';
      end;
    1:
      begin
        l := '01.06.';
        h := '01.07.';
      end;
  end;
  l := l + copy(ComboBox15.Text, 6, 4);
  h := h + copy(ComboBox15.Text, 6, 4);
  DMreports.ADODSGrafikSamRab.Close;
  DMreports.ADODSGrafikSamRab.Parameters[2].Value := TTVmain.Selected.StateIndex;
  DMreports.ADODSGrafikSamRab.Parameters[0].Value := StrToDate(l);
  DMreports.ADODSGrafikSamRab.Parameters[1].Value := StrToDate(h);
  DMreports.ADODSGrafikSamRab.open;
  s := RadioGroup8.Items.Strings[RadioGroup8.ItemIndex];
  Delete(s, 5, 6);
  DMreports.frxrGrafikSamRab.Variables['f'] := '''' +dm.ADODSFacultiesFacultyShortName.AsString + '''';
   DMreports.frxrGrafikSamRab.Variables['df'] := '''' +dm.ADODSFacultiesDeanNameS.AsString + '''';
   DMreports.frxrGrafikSamRab.Variables['g'] := '''' + dm.adodsGroupDataGroupName.AsString + '''';
  DMreports.frxrGrafikSamRab.ShowReport();
  panel24.Visible:=false;
end;
    //���������� �����, ����� ������
procedure TfMain.SpeedButton49Click(Sender: TObject);
begin
DMreports.ADODSPasport.Close;
case ComboBox16.ItemIndex of
 0:begin
   DMreports.ADODSPasport.Parameters[0].Value:=dm.ADODSFacultiesID.AsInteger;
   DMreports.ADODSPasport.Parameters[1].Value:=1;
   DMreports.ADODSPasport.Parameters[2].Value:=1;
 end;
  1:begin
  DMreports.ADODSPasport.Parameters[0].Value:=dm.ADODSFacultiesID.AsInteger;
   DMreports.ADODSPasport.Parameters[1].Value:=2;
   DMreports.ADODSPasport.Parameters[2].Value:=2;
 end;
  2:begin
 DMreports.ADODSPasport.Parameters[0].Value:=dm.ADODSFacultiesID.AsInteger;
   DMreports.ADODSPasport.Parameters[1].Value:=3;
   DMreports.ADODSPasport.Parameters[2].Value:=3;
 end;
 3:begin
 DMreports.ADODSPasport.Parameters[0].Value:=dm.ADODSFacultiesID.AsInteger;
   DMreports.ADODSPasport.Parameters[1].Value:=4;
   DMreports.ADODSPasport.Parameters[2].Value:=4;
 end;
 4:begin
  DMreports.ADODSPasport.Parameters[0].Value:=dm.ADODSFacultiesID.AsInteger;
   DMreports.ADODSPasport.Parameters[1].Value:=5;
   DMreports.ADODSPasport.Parameters[2].Value:=5;
 end;
 5:begin
 DMreports.ADODSPasport.Parameters[0].Value:=dm.ADODSFacultiesID.AsInteger;
   DMreports.ADODSPasport.Parameters[1].Value:=1;
   DMreports.ADODSPasport.Parameters[2].Value:=5;
 end;
end;
 DMreports.ADODSPasport.open;
 DMreports.frxRPasport.ShowReport();
 panel25.Visible:=false;
end;

procedure TfMain.SpeedButton4Click(Sender: TObject);
begin
  dm.ADOSQLExecutor.CommandText :=
    'update studentData set igaexam3name=' + DBEdit29.Text +
    ' where idgroup=' + dm.ADODSStudentListIDGroup.AsString;
  dm.ADOSQLExecutor.Execute;
end;

procedure TfMain.SpeedButton50Click(Sender: TObject);
begin
panel25.Visible:=false
end;

procedure TfMain.SpeedButton51Click(Sender: TObject);
begin
panel26.Visible:=false;
panel27.Visible:=true;
DBGridEh3.Visible:=false;
end;
  //���������� �����, ����� ������
procedure TfMain.SpeedButton52Click(Sender: TObject);
begin
DMreports.ADODSWorkAfter.Close;
DMreports.ADODSWorkAfter.Parameters[1].Value:=DBLookupComboboxEh17.KeyValue;
DMreports.ADODSWorkAfter.open;
 DMreports.frxRWorkAfter.Variables['f'] := '''' +dm.ADODSFacultiesFacultyName.AsString + '''';
   DMreports.frxRWorkAfter.Variables['d'] := '''' +ComboBox17.Items[ComboBox17.ItemIndex] + '''';
   DMreports.frxRWorkAfter.Variables['g'] := '''' + dm.ADODSGroupExpiriGroupName.AsString + '''';
 DMreports.frxRWorkAfter.ShowReport();
 panel28.Visible:=false;


end;

procedure TfMain.SpeedButton53Click(Sender: TObject);
begin
dm.ADODSaddPractics.close;
dm.ADODSaddPractics.Parameters[0].Value:=TTVmain.Selected.StateIndex;
dm.ADODSaddPractics.Parameters[1].Value:=edit3.Text;
dm.ADODSaddPractics.Parameters[2].Value:=strtoint(edit5.Text);
dm.ADODSaddPractics.Parameters[3].Value:=edit4.Text;
dm.ADODSaddPractics.Parameters[4].Value:=strtoint(edit6.Text);
dm.ADODSaddPractics.open;
dm.ADODSPractics.close;
dm.ADODSPractics.Parameters[0].Value:=TTVmain.Selected.StateIndex;
dm.ADODSPractics.open;
panel26.Visible:=true;
panel27.Visible:=false;
DBGridEh3.Visible:=true;
end;

procedure TfMain.SpeedButton54Click(Sender: TObject);
begin
panel26.Visible:=true;
panel27.Visible:=false;
DBGridEh3.Visible:=true;
end;

procedure TfMain.SpeedButton56Click(Sender: TObject);
begin
  DMreports.ADODSPPS .close;
  DMreports.ADODSPPS .Parameters[0].Value:=dm.ADODSFacultiesDepartment.AsInteger ;
  DMreports.ADODSPPS .open;
  DMreports.frxRpps.Variables['otd'] := '''' +panel32.Caption+ '''';
  DMreports.frxRpps.ShowReport();

end;

procedure TfMain.SpeedButton57Click(Sender: TObject);
begin
   if SpeedButton57.Caption='�������� �����' then
         begin
   dbeSpecialityAbbreviation.ReadOnly:=false;
   DBESpeciality.ReadOnly:=false;
   DBESpecialization.ReadOnly:=false;
   DBEQualification.ReadOnly:=false;
   DBESpecialityCode.ReadOnly:=false;
     SpeedButton57.Caption:='���������'
         end
         else
         begin
   dm.ADODSnewCurriculum.Close;
   dm.ADODSnewCurriculum.Parameters[0].Value:= dm.adodsGroupDataID.asinteger;
   dm.ADODSnewCurriculum.Parameters[1].Value:=DBESpecialization.Text;
   dm.ADODSnewCurriculum.Parameters[2].Value:=DBESpecialityCode.Text;
   dm.ADODSnewCurriculum.Parameters[3].Value:=dbeSpecialityAbbreviation.Text;
   dm.ADODSnewCurriculum. Parameters[4].Value:=DBESpeciality.Text;
   dm.ADODSnewCurriculum.Parameters[5].Value:=DBEQualification.Text;
   dm.ADODSnewCurriculum. Parameters[6].Value:=  2;
   dm.ADODSnewCurriculum.open;
      dbeSpecialityAbbreviation.ReadOnly:=true;
   DBESpeciality.ReadOnly:=true;
   DBESpecialization.ReadOnly:=true;
   DBEQualification.ReadOnly:=true;
   DBESpecialityCode.ReadOnly:=true;
      dm.adodsWorkCurriculum.Close;
        dm.adodsWorkCurriculum.Parameters[0].Value:=dm.adodsGroupDataID.asinteger;
        dm.adodsWorkCurriculum.open;
        SpeedButton57.Caption:='�������� �����'
         end;
end;

procedure TfMain.SpeedButton58Click(Sender: TObject);
begin
DMreports.ADODSKCPTwo.Close;
 DMreports.ADODSKCPTwo.Parameters[0].Value:=dm.ADODSFacultiesDepartment.AsInteger;
DMreports.ADODSKCPTwo.open;
    if   dm.ADODSFacultiesDepartment.AsInteger>1 then
 DMreports.frxRKCPTwoIZO.ShowReport()
else
DMreports.frxRKCPTwo.ShowReport();
end;

procedure TfMain.SpeedButton59Click(Sender: TObject);
begin
 panel29.Visible:=false;
end;

procedure TfMain.SpeedButton5Click(Sender: TObject);
begin

  dm.ADOSQLExecutor.CommandText :=
    'update studentData set igaexam1name=' + DBEdit27.Text +
    ' where idgroup=' + dm.ADODSStudentListIDGroup.AsString;
  dm.ADOSQLExecutor.Execute;
end;
    //���������� �����, ����� ������
procedure TfMain.SpeedButton60Click(Sender: TObject);
begin
DMreports.ADODSSpravkaOtch.Close;
DMreports.ADODSSpravkaOtch.Parameters[0].Value:=dm.adodsStudentDataID.AsInteger;
DMreports.ADODSSpravkaOtch.Open;
DMreports.frxRSpravkaOtch.Variables['name'] := '''' +edit7.Text+ '''';
DMreports.frxRSpravkaOtch.Variables['po'] := '''' +edit9.Text+ '''';
 DMreports.frxRSpravkaOtch.Variables['rector'] := '''' +edit10.Text+ '''';
  DMreports.frxRSpravkaOtch.Variables['aca'] := '''' +memo1.lines.Text+ '''';
  if edit11.text='' then
  DMreports.frxRSpravkaOtch.Variables['dip'] := '''' +edit11.Text+ ''''
  else
  DMreports.frxRSpravkaOtch.Variables['dip'] := '''' +'����� ������ �������������� ������� '+edit11.Text+ ''''  ;
 if CheckBox5.Checked then
 begin
   DMreports.frxRSpravkaOtch.Variables['io'] := '''' +'�.�.'+ '''' ;
   DMreports.frxRSpravkaOtch.Variables['ii'] := '''' +''+ '''' ;
 end
  else
  begin
   DMreports.frxRSpravkaOtch.Variables['io'] := '''' +''+ ''''   ;
   Dmreports.frxRSpravkaOtch.Variables['ii'] := '''' +' '+ '''' ;
  end;


if CheckBox4.Checked then
begin
  DMreports.frxRSpravkaOtch.Variables['nach'] := '''' +'��������� ���������� ������'+ '''';
    DMreports.frxRSpravkaOtch.Variables['vor'] := ''''+'�.�. ���������'+ '''';

 end
 else
 begin
  DMreports.frxRSpravkaOtch.Variables['nach'] := '''' +''+ '''';
    DMreports.frxRSpravkaOtch.Variables['vor'] := '''' +''+ '''';

 end;
 DMreports.frxRSpravkaOtch.ShowReport();
 panel29.Visible:=false;

end;

procedure TfMain.SpeedButton61Click(Sender: TObject);
begin
DMreports.ADOSKCP.Close;
 DMreports.ADOSKCP.Parameters[0].Value:=dm.ADODSFacultiesDepartment.AsInteger;
DMreports.ADOSKCP.open;
   if   dm.ADODSFacultiesDepartment.AsInteger>1 then
 DMreports.frxRKCP1.Variables['otd'] := '''' +'������� ���������' + ''''
else
  DMreports.frxRKCP1.Variables['otd'] := '''' +'����� ���������' + '''';
DMreports.frxRKCP1.ShowReport();
end;
       //���������� �����, ����� ������
procedure TfMain.SpeedButton62Click(Sender: TObject);
begin
DMreports.ADODSVOPoliclinic.Close;
if ComboBox18.ItemIndex=0 then
begin
 DMreports.ADODSVOPoliclinic.Parameters[2].Value:=1;
 DMreports.ADODSVOPoliclinic.Parameters[3].Value:=5;
end
else
  begin
 DMreports.ADODSVOPoliclinic.Parameters[2].Value:=ComboBox18.ItemIndex;
 DMreports.ADODSVOPoliclinic.Parameters[3].Value:=ComboBox18.ItemIndex;
end ;
if SpinEdit1.Value=0 then
 begin
 DMreports.ADODSVOPoliclinic.Parameters[0].value:=0;
 DMreports.ADODSVOPoliclinic.Parameters[1].Value:=3000;
end
else
  begin
 DMreports.ADODSVOPoliclinic.Parameters[0].Value:=SpinEdit1.Value;
 DMreports.ADODSVOPoliclinic.Parameters[1].Value:=SpinEdit1.Value;
end ;
 DMreports.ADODSVOPoliclinic.open;
  DMreports.frxRVOPoliclinic.ShowReport();
end;
   //���������� �����, ����� ������
procedure TfMain.SpeedButton63Click(Sender: TObject);
begin
DMreports.ADODSRUP.Close;
DMreports.ADODSUP.Close;
DMreports.ADODSRupUP.Close;
   DMreports.ADODSRUP.Parameters[0].Value:=dm.adodsWorkCurriculumidPlan.AsInteger;
    DMreports.ADODSRUP.Parameters[1].Value:=dm.adodsWorkCurriculumid.AsInteger;
     DMreports.ADODSRUP.Parameters[2].Value:=dm.adodsWorkCurriculumidPlan.AsInteger;
      DMreports.ADODSUP.Parameters[0].Value:=dm.adodsWorkCurriculumidPlan.AsInteger;
    DMreports.ADODSUP.Parameters[1].Value:=dm.adodsWorkCurriculumid.AsInteger;
     DMreports.ADODSUP.Parameters[2].Value:=dm.adodsWorkCurriculumidPlan.AsInteger;
      DMreports.ADODSRupUP.Parameters[0].Value:=dm.adodsWorkCurriculumidPlan.AsInteger;
    DMreports.ADODSRupUP.Parameters[1].Value:=dm.adodsWorkCurriculumid.AsInteger;
     DMreports.ADODSRupUP.Parameters[2].Value:=dm.adodsWorkCurriculumidPlan.AsInteger;
     DMreports.ADODSRUP.open;
DMreports.ADODSUP.open;
DMreports.ADODSRupUP.open;
DMreports.frxRPRupUP.Variables['p'] := '''' +dm.adodsWorkCurriculumidPlan.AsString + '''';
 DMreports.frxRPRupUP.Variables['s'] := '''' +dm.adodsWorkCurriculumSpeciality.AsString + '''';
 DMreports.frxRPRupUP.Variables['g'] := '''' +dm.adodsGroupDataGroupName.AsString + '''';
DMreports.frxRPRupUP.ShowReport();
end;

procedure TfMain.SpeedButton68Click(Sender: TObject);
begin
DMreports.ADODSDOHOD.Close;
  DMreports.ADODSDOHOD.Parameters[0].Value:=dm.ADODSFacultiesDepartment.AsInteger;
DMreports.ADODSDOHOD.open;
DMreports.ADODSDOHOD1.Close;
 DMreports.ADODSDOHOD1.Parameters[0].Value:=dm.ADODSFacultiesDepartment.AsInteger;
DMreports.ADODSDOHOD1.open;
    if   dm.ADODSFacultiesDepartment.AsInteger>1 then
 DMreports.frxRDOHODIZO.ShowReport()
else
DMreports.frxRDOHOD.ShowReport();
end;

procedure TfMain.SpeedButton69Click(Sender: TObject);
begin
DMreports.ADODSDOHODKCP.Close;
  DMreports.ADODSDOHODKCP.Parameters[0].Value:=dm.ADODSFacultiesDepartment.AsInteger;
DMreports.ADODSDOHODKCP.open;
if   dm.ADODSFacultiesDepartment.AsInteger>1 then
 DMreports.frxRDOHODKCPIZO.ShowReport()
else
DMreports.frxRDOHODKCP.ShowReport();
end;

procedure TfMain.SpeedButton6Click(Sender: TObject);
begin
  dm.ADOSQLExecutor.CommandText :=
    'update studentData set igaexam2name=' + DBEdit28.Text +
    ' where idgroup=' + dm.ADODSStudentListIDGroup.AsString;
  dm.ADOSQLExecutor.Execute;
end;

procedure TfMain.SpeedButton70Click(Sender: TObject);
begin
   panel31.Visible:=true;
    panel31.Color:=ClSkyBlue;
      groupbox30.Color:=ClSkyBlue;
      groupbox31.Color:=ClSkyBlue;

end;

procedure TfMain.SpeedButton71Click(Sender: TObject);
begin
panel31.Visible:=false;
end;

procedure TfMain.SpeedButton72Click(Sender: TObject);
var s:string;
begin
      DMreports.AdodsOlandUdar.Close;
      DMreports.AdodsOlandUdar.Parameters[1].Value:=combobox20.ItemIndex;
             if (MonthOf(date)>1) and (MonthOf(date)<6) then
             begin
           s:=('01.01.'+inttostr(yearof(date) ));
           DMreports.frxROlandUdar.Variables['ses'] := '''' +'������' + ''''
             end
              else
              begin
           s:=('01.06.'+inttostr(yearof(date)));
               DMreports.frxROlandUdar.Variables['ses'] := '''' +'������' + '''';
              end;


                  DMreports.AdodsOlandUdar.Parameters[2].Value:=strtodate(s);
                DMreports.AdodsOlandUdar.Parameters[3].Value:= date;

       if CheckBox6.Checked or CheckBox7.Checked  or CheckBox8.Checked or CheckBox9.Checked or CheckBox10.Checked or CheckBox11.Checked then
         begin
      if CheckBox6.Checked then
      DMreports.AdodsOlandUdar.Parameters[4].Value:=1
      else
      DMreports.AdodsOlandUdar.Parameters[4].Value:=-1 ;
     if CheckBox7.Checked then
      DMreports.AdodsOlandUdar.Parameters[5].Value:=2
      else
      DMreports.AdodsOlandUdar.Parameters[5].Value:=-1;
      if CheckBox8.Checked then
      DMreports.AdodsOlandUdar.Parameters[6].Value:=3
      else
      DMreports.AdodsOlandUdar.Parameters[6].Value:=-1 ;
      if CheckBox9.Checked then
      DMreports.AdodsOlandUdar.Parameters[7].Value:=4
      else
      DMreports.AdodsOlandUdar.Parameters[7].Value:=-1 ;
      if CheckBox10.Checked then
      DMreports.AdodsOlandUdar.Parameters[8].Value:=5
      else
      DMreports.AdodsOlandUdar.Parameters[8].Value:=-1 ;
      if CheckBox11.Checked then
      DMreports.AdodsOlandUdar.Parameters[9].Value:=6
      else
      DMreports.AdodsOlandUdar.Parameters[9].Value:=-1 ;
         end
         else
         begin


             panel31.Color:=Clred;
           exit;
         end;

      if CheckBox13.Checked or CheckBox12.Checked then
         begin
      if CheckBox13.Checked then
      DMreports.AdodsOlandUdar.Parameters[10].Value:=2
      else
      DMreports.AdodsOlandUdar.Parameters[10].Value:=-1 ;
     if CheckBox12.Checked then
      DMreports.AdodsOlandUdar.Parameters[11].Value:=0
      else
      DMreports.AdodsOlandUdar.Parameters[11].Value:=-1;
         end
         else
         begin
           panel31.Color:=Clred;
           exit;
         end;


      DMreports.AdodsOlandUdar.open;
       DMreports.frxROlandUdar.ShowReport();
       panel31.Visible:=false;
end;

procedure TfMain.SpeedButton73Click(Sender: TObject);
begin
DMreports.ADODSKCPTwo.Close;
 DMreports.ADODSKCPTwo.Parameters[0].Value:=dm.ADODSFacultiesDepartment.AsInteger;
DMreports.ADODSKCPTwo.open;
    if   dm.ADODSFacultiesDepartment.AsInteger>1 then
 DMreports.frxRFilial.ShowReport()
else
ShowMessage('����������');
end;

procedure TfMain.SpeedButton74Click(Sender: TObject);
begin
Application.CreateForm(TSearch, Search);
  uSearch.Search.ShowModal;
end;

procedure TfMain.SpeedButton75Click(Sender: TObject);
begin
dm.ADODSUvedUFMS.Close;
dm.ADODSUvedUFMS.parameters[0].Value:= dm.adodsStudentDataID.AsInteger;
 dm.ADODSUVEDUFMS.OPEN;

 fUvedInosr.ShowModal;


end;

procedure TfMain.SpeedButton76Click(Sender: TObject);
var l, h, s: string;
begin

  case RadioGroup11.ItemIndex of
     0:
      begin
        l := '01.01.';
        h := '01.02.';
      end;
    1:
      begin
        l := '01.06.';
        h := '01.07.';
      end;
  end;
  l := l + copy(ComboBox21.Text, 6, 4);
  h := h + copy(ComboBox21.Text, 6, 4);
  DMreports.ADODSStipCom.Close;
  DMreports.ADODSStipCom.Parameters[1].Value := TTVmain.Selected.StateIndex;
  DMreports.ADODSStipCom.Parameters[2].Value := StrToDate(l);
  DMreports.ADODSStipCom.Parameters[3].Value := StrToDate(h);
  DMreports.ADODSStipCom.open;
  s := RadioGroup11.Items.Strings[RadioGroup11.ItemIndex];
  Delete(s, 5, 6);
   DMreports.frxRStipCom.Variables['g'] := '''' + dm.adodsGroupDataGroupName.AsString + '''';
  DMreports.frxRStipCom.Variables['d'] := '''' + ComboBox21.Text + '''';
  DMreports.frxRStipCom.Variables['s'] := '''' + s + '��' + '''';
  DMreports.frxRStipCom.ShowReport();
  panel36.Visible:=false;
end;

procedure TfMain.SpeedButton78Click(Sender: TObject);
var i:Byte;
begin
ComboBox21.Items.Clear;
  for i := 1 to 7 do
    ComboBox21.Items.add(inttostr(yearof(date) - i) + '/' + inttostr
        (yearof(date) - i + 1));

  Panel36.Visible :=true;
end;

procedure TfMain.SpeedButton8Click(Sender: TObject);
var s:string;
begin
s:=''''+DBEdit30.Text+'''';
  dm.ADOSQLExecutor.CommandText :=
    'update studentData set igaDefence1Name=' + s +
    ' where idgroup=' + dm.ADODSStudentListIDGroup.AsString;
  dm.ADOSQLExecutor.Execute;
end;

procedure TfMain.SpeedButton9Click(Sender: TObject);
begin
  dm.ADOSQLExecutor.CommandText :=
    'update studentData set igaDefence2Name=' + DBEdit31.Text +
    ' where idgroup=' + dm.ADODSStudentListIDGroup.AsString;
  dm.ADOSQLExecutor.Execute;
end;
       //���������� �������� �����
procedure TfMain.sbGroupNameByKursClick(Sender: TObject);
begin

  if (dm.adodsWorkCurriculumidPlan.Value > 0) then
  begin
    fDMfromUPlan.adodsPlans.Locate('ID', dm.adodsWorkCurriculumidPlan.AsString,
      []);
    dm.adodsGroupName.Close;
    dm.adodsGroupName.Parameters[0].Value :=
      dm.adodsWorkCurriculumidPlan.AsString;
    dm.adodsGroupName.open;
    fDirectory.pcDirectory.HideAllTabs;
    fDirectory.pcDirectory.Pages[0].Show;
    fDirectory.ShowModal;
    fDirectory.Caption := '�������� ����� �� ������ �������������/�����������';
  end;
end;
 //�������� ����������� ������
procedure TfMain.sbSessionStudentClick(Sender: TObject);
begin
 if (dm.adodsStudentDataStatus.Value=10) or (dm.adodsStudentDataStatus.Value=10)  then

          ShowMessage('���������� ��� ������� ��������')
          else
 begin

Application.CreateForm(TfSession, fSession);
   dm.adodsStudentData.Close;
   dm.adodsStudentData.Parameters[0].Value:=TTVmain.Selected.StateIndex;;
    dm.adodsStudentData.open;


  dm.adodsSession.Close;
  dm.adodsSession.open;
  dm.adodsSession.Close;
  dm.adodsSession.Parameters[0].Value :=dm.adodsStudentDataIDGroup.AsInteger;
  dm.adodsSession.Parameters[1].Value := TTVmain.Selected.StateIndex;
  dm.adodsSession.Parameters[2].Value := TTVmain.Selected.StateIndex;
 


  dm.adodsSession.open;
  dm.adodsSession.Sort := 'Semester, ControlForm DESC';

  dm.adodsSubjectFilter.Close;
  dm.adodsSubjectFilter.Parameters[0].Value :=
    TTVmain.Selected.Parent.StateIndex;
  dm.adodsSubjectFilter.Parameters[1].Value := 1;
  dm.adodsSubjectFilter.Parameters[2].Value := 10;
  dm.adodsSubjectFilter.open;

  fsession.Panel4.Hide;
  fsession.dbgSession.Columns[1].Visible := false;

  fsession.ShowModal;
 end;
end;

procedure TfMain.sbStudentListFacultyClick(Sender: TObject);
begin
  DMreports.adodsStudentListGet.Close;
  DMreports.adodsStudentListGet.Parameters[1].Value :=
    TTVmain.Selected.StateIndex;
  DMreports.adodsStudentListGet.Parameters[2].Value := 0;
  DMreports.adodsStudentListGet.Parameters[3].Value := 1;
  DMreports.adodsStudentListGet.Parameters[4].Value := 0;
  DMreports.adodsStudentListGet.Parameters[5].Value := 0;
  DMreports.adodsStudentListGet.open;

  DMreports.frxrStudentListGet.ShowReport();
end;

procedure TfMain.sbStudentListGroupClick(Sender: TObject);
begin
  DMreports.adodsStudentListGet.Close;
  DMreports.adodsStudentListGet.Parameters[1].Value :=
    TTVmain.Selected.StateIndex;
  DMreports.adodsStudentListGet.Parameters[2].Value := 0;
  DMreports.adodsStudentListGet.Parameters[3].Value := 0;
  DMreports.adodsStudentListGet.Parameters[4].Value := 0;
  DMreports.adodsStudentListGet.Parameters[5].Value := 1;
  DMreports.adodsStudentListGet.open;

  DMreports.frxrStudentListGet.ShowReport();
end;

procedure TfMain.sbSessionGroupClick(Sender: TObject);
begin
  Application.CreateForm(TSessionDate, SessionDate);
Application.CreateForm(TfSession, fSession);
  dm.adodsSession.Close;
  dm.adodsSession.Parameters[0].Value := TTVmain.Selected.StateIndex;
  dm.adodsSession.Parameters[1].Value := (-2147483648);
  dm.adodsSession.Parameters[2].Value := (+2147483647);
  dm.adodsSession.open;
  dm.adodsSession.Sort := 'Semester, nameS, ControlForm DESC';

  dm.adodsSubjectFilter.Close;
  dm.adodsSubjectFilter.Parameters[0].Value := TTVmain.Selected.StateIndex;
  dm.adodsSubjectFilter.Parameters[1].Value := 1;
  dm.adodsSubjectFilter.Parameters[2].Value := 10;
  dm.adodsSubjectFilter.open;

  // dm.ADODUpdSessionOld.Close;
  // dm.ADODUpdSessionOld.Parameters[1].Value:=DM.adodsGroupDataID.AsInteger;
  // dm.ADODUpdSessionOld.Open;

  fsession.Panel4.Show;
  fsession.dbgSession.Columns[1].Visible := true;
  fsession.ShowModal;
end;

procedure TfMain.sbEditPlanClick(Sender: TObject);
begin
  dm.adodsWorkCurrDisc.Close;
  dm.adodsWorkCurrDisc.Parameters[0].Value :=dm.adodsWorkCurriculumID.AsInteger;
  dm.adodsWorkCurrDisc.open;
//   if (dm.adodsWorkCurrDisc.RecordCount < 0)  then
//   begin
//      dm.adodsWorkCurrDisc.Close;
//      dm.adodsWorkCurrDisc.Parameters[0].Value :=dm.adodsWorkCurriculumID.AsInteger;
//      dm.adodsWorkCurrDisc.open;
//   end;
  dm.ADODSLogButtonPlan.Close;
  dm.ADODSLogButtonPlan.Parameters[0].Value:=DM.adodsSecurityGetRightsid.asinteger;
  dm.ADODSLogButtonPlan.Parameters[1].Value:=date+time;
  dm.ADODSLogButtonPlan.Parameters[4].Value:=dm.adodsGroupDataID.AsInteger;
  dm.ADODSLogButtonPlan.Parameters[6].Value:=dm.adodsWorkCurriculumID.AsInteger;
  dm.ADODSLogButtonPlan.Parameters[2].Value:=dm.adodsWorkCurrDisc.RecordCount;
//  if (dm.adodsWorkCurrDisc.RecordCount > 0)  then
   if (dm.adodsWorkCurriculumidPlan.AsInteger > 0)  then
    begin
      fWorkCurriculum.ShowModal ;
      dm.ADODSLogButtonPlan.Parameters[3].Value:=dm.adodsWorkCurriculumidPlan.AsInteger;
      dm.ADODSLogButtonPlan.Parameters[5].Value:=1;
      dm.adodsWorkCurrDisc.Sort :=
      'Semester, ControlExamination DESC, ControlCourseWork DESC, ControlTest DESC';
   end
  else
    begin
      if(MessageBox(handle, ('��� ���������� ����� ����� �������.������� ��, ���� ������ ����������  '), '��������!', MB_OKCANCEL)=IDOK)
      then
        fMain.sbLoadPlan.Click
      else
        dm.ADODSLogButtonPlan.Parameters[3].Value:=dm.adodsWorkCurriculumidPlan.AsInteger;;
        dm.ADODSLogButtonPlan.Parameters[5].Value:=0;
    end;
  dm.ADODSLogButtonPlan.open;
end;
   //�������� ������� ������
procedure TfMain.sbLoadPlanClick(Sender: TObject);
begin
  fDirectory.pcDirectory.HideAllTabs;
//    fDirectory.pcDirectory.Pages[1].Show;
      fDirectory.Caption := '������� �����(��������)';
       dm.adodoldrup.close;
if dm.ADODSFacultiesDepartment.asinteger=1 then
  begin
    dm.adodoldrup.parameters[0].value:=0;
    dm.adodoldrup.parameters[1].value:=999;
    fDirectory.pcDirectory.Pages[1].show;
  end
  else
  begin
    dm.adodoldrup.parameters[0].value:=999;
    dm.adodoldrup.parameters[1].value:=2000;
         fDirectory.pcDirectory.ShowAllTabs;
      fDirectory.pcDirectory.Pages[0].TabVisible:=false;
         end;
 dm.adodoldrup.open;
  fDirectory.ShowModal;

end;
  //����� ���������
procedure tfmain.QuickSearch(Tree: TRzTreeView; SearchTarget: variant);
var
  Noddy: TTreeNode;
  Searching: Boolean;
begin
  Noddy := Tree.Items[0];
  Searching := true;
  while (Searching) and (Noddy <> nil) do
  begin
    if Noddy.StateIndex = SearchTarget then
    begin
      Searching := false;
      Tree.Selected := Noddy;
      Tree.SetFocus;
    end
    else
      Noddy := Noddy.GetNext;
  end;
end;


   //�������������� ��� ����������� � ���������
procedure TfMain.RadioGroup10Click(Sender: TObject);
begin
case RadioGroup10.ItemIndex of
0: DBEditEh2.Text:='��������� 64/1' ;
1: DBEditEh2.Text:='��������� 64/2' ;
3: DBEditEh2.Visible:=true;
end;

end;

procedure TfMain.RadioGroup3Click(Sender: TObject);
 var l, h, s: string;
begin
  case RadioGroup3.ItemIndex of
    0:
      begin
        l := '25.12.';
        h := '01.02.';
          l := l + copy(ComboBox3.Text, 0, 4);
      end;
    1:
      begin
        l := '25.05.';
        h := '01.07.';
          l := l + copy(ComboBox3.Text, 6, 4);
      end;
  end;

  h := h + copy(ComboBox3.Text, 6, 4);
      DateTimePicker5.Date:=StrToDate(l);
     DateTimePicker6.Date:=StrToDate(h);
     DateTimePicker5.Repaint;
     DateTimePicker6.Repaint;

end;

procedure TfMain.RadioGroup4Click(Sender: TObject);
var l, h, s: string;
begin
  case RadioGroup4.ItemIndex of
    0:
      begin
        l := '25.12.';
        h := '01.02.';
          l := l + copy(ComboBox6.Text, 0, 4);
      end;
    1:
      begin
        l := '25.05.';
        h := '01.07.';
          l := l + copy(ComboBox6.Text, 6, 4);
      end;
  end;

  h := h + copy(ComboBox6.Text, 6, 4);
      DateTimePicker9.Date:=StrToDate(l);
     DateTimePicker10.Date:=StrToDate(h);
     DateTimePicker9.Repaint;
     DateTimePicker10.Repaint;


end;

procedure TfMain.RadioGroup5Click(Sender: TObject);
var l, h, s: string;
begin
  case RadioGroup5.ItemIndex of
    0:
      begin
        l := '25.12.';
        h := '01.02.';
         l := l + copy(ComboBox9.Text, 0, 4);
      end;
    1:
      begin
        l := '25.05.';
        h := '01.07.';
         l := l + copy(ComboBox9.Text, 6, 4);
      end;
  end;

  h := h + copy(ComboBox9.Text, 6, 4);
     DateTimePicker7.Date:=StrToDate(l);
     DateTimePicker8.Date:=StrToDate(h);
     DateTimePicker7.Repaint;
     DateTimePicker8.Repaint;
end;

procedure TfMain.RadioGroup7Click(Sender: TObject);
begin

       if RadioGroup7.ItemIndex=0 then
  DateTimePicker4.Date:=StrToDate('01.03.' +intToStr(yearof(date)))
  else
  DateTimePicker4.Date:=StrToDate('15.09.' +intToStr(yearof(date)));

end;

procedure TfMain.RzDBSpinner1Change(Sender: TObject);
begin
dm.adodsGroupData.UpdateBatch();
end;

procedure TfMain.TDBGmainDblClick(Sender: TObject);
begin
  // �������� ��������
  TSStudent.Visible := true;
  TPCmain.ActivePageIndex := 1;

  // ������� ������ � ��������� ��������
  dm.adodsStudentData.Close;
  dm.adodsStudentData.Parameters[0].Value := dm.ADODSStudentListID.AsInteger;
  dm.adodsStudentData.open;
  dm.adodsStudentData.Edit;

  { case DBRadioGroup2.ItemIndex of
    0: GroupBox12.Visible := false;
    1: GroupBox12.Visible := true;
    else GroupBox12.Visible := false;
    end; }

  QuickSearch(TTVmain, dm.ADODSStudentListID.AsInteger);

end;
    //���������� ������� �� ����������
procedure TfMain.TDBGmainDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
with  TDBGmain.Canvas do
begin
case dm.ADODSStudentListMarks.Value of
10:Brush.Color:=$00B7FFAE;
14:Brush.Color:= $00A3E0E0;
8:Brush.Color:=$00C1C1FF;
27:Brush.Color:=$FFDAB9;
16:Brush.Color:=clSilver;
end;
Font.Color:=clBlack;
FillRect(Rect);
TextOut(Rect.Left+2,Rect.Top+2,Column.Field.Text);
end;
end;


procedure TfMain.TDBGmainMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
ScrollBar1.Position:=dm.ADODSStudentList.RecNo;
end;

procedure TfMain.TDBGmainMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
ScrollBar1.Position:=dm.ADODSStudentList.RecNo;
end;

procedure TfMain.TDBGmainTitleClick(Column: TColumn);
var
  tmp: string;
  i: Integer;
begin
  // -------������� ������ ���������� � ������ ��������

  for i := 0 to TDBGmain.Columns.Count - 1 do
  begin
    tmp := TDBGmain.Columns[i].Title.Caption;

    if (TDBGmain.Columns[i].FieldName <> Column.FieldName) then
      if (pos(#8593, tmp) > 0) then
        Delete(tmp, pos(#8593, tmp), 1);
    if (pos(#8595, tmp) > 0) then
      Delete(tmp, pos(#8595, tmp), 1);

    TDBGmain.Columns[i].Title.Caption := tmp;
  end;

  // ------------������, ������, ���� ��� ���� �������, � �� �� �� ����, �� �������������� ��

  tmp := Column.Title.Caption;

  if (pos(#8593, tmp) > 0) then
  begin
    dm.ADODSStudentList.Sort := Column.FieldName + ' DESC';
    Delete(tmp, pos(#8593, tmp), 1);
    insert(#8595, tmp, length(tmp) + 1);
  end
  else
  begin
    dm.ADODSStudentList.Sort := Column.FieldName;
    Delete(tmp, pos(#8595, tmp), 1);
    insert(#8593, tmp, length(tmp) + 1);
  end;

  Column.Title.Caption := tmp;

  // -------������
end;

procedure TfMain.TDBLCFacultiesCloseUp(Sender: TObject);
begin
  if dm.ADODSFacultiesDepartment.AsInteger>1  then
  begin
    button27.Enabled:=false;
    button6.Enabled:=false;
    button7.Enabled:=false;
    button14.Enabled:=false;
    button15.Enabled:=false;
    button28.Enabled:=false;



    button19.Enabled:=false;
    button22.Enabled:=false;
    button23.Enabled:=false;
     SpeedButton73.Visible:=true;
        GroupBox26.Height:=100;
        label136.Visible:=true;
    dbedit55.Visible:=true;
    RzDBSpinner3.Visible:=true;
    GroupBox18.Visible:=false;
    panel32.Caption:='������� ���������'
  end
  else
  begin

     button27.Enabled:=true;
    button6.Enabled:=true;
    button7.Enabled:=true;
    button14.Enabled:=true;
    button15.Enabled:=true;
    button28.Enabled:=true;

    button8.Enabled:=true;

    button19.Enabled:=true;
    button22.Enabled:=true;
    button23.Enabled:=true;
        label136.Visible:=false;
         SpeedButton73.Visible:=false;
    dbedit55.Visible:=false;
    RzDBSpinner3.Visible:=false;
    GroupBox26.Height:=60;
    if TTVmain.Visible then

       GroupBox18.Visible:=true;
           panel32.Caption:='����� ���������'
  end;



  PreviousSelectedNode := nil;

  // ---   �����-�� ������ ��������� � ����������
  TPCmain.Enabled := true;
  TPCmain.TabIndex := 0;
  PCStudent.TabIndex := 0;
  PCStudentPersonal.TabIndex := 0;

  TSFaculty.TabVisible := false;
  TSGroup.TabVisible := false;
  TSStudent.TabVisible := false;
    TabSheet2.TabVisible:=false;
       TabSheet3.TabVisible:=false;
       TabSheet6.TabVisible:=true;
  // -------������� ������ ���������� � ���� �������� � �����
  TDBGmain.Columns[3].Title.Caption := '�������';
  TDBGmain.Columns[4].Title.Caption := '���';
  TDBGmain.Columns[5].Title.Caption := '��������';
  TDBGmain.Columns[6].Title.Caption := '������� ��������';

  // ----�������� ������
  LoadTree(dm.ADODSFacultiesID.AsInteger,
    dm.ADODSFacultiesFacultyName.AsString);
  TTVmain.Select(TTVmain.Items.Item[0]);
end;
   //�������������� ���������
procedure TfMain.Timer1Timer(Sender: TObject);
begin
dm.ADODSCloseProg.close;
dm.ADODSCloseProg.Parameters[0].value:=DM.adodsSecurityGetRightsid.asinteger;
dm.ADODSCloseProg.open;
 if (dm.ADODSCloseProgonoff.Value)=3 then
   begin
    Timer1.Enabled:=false;
    ShowMessage('����� 3 ������ ��������� ������������� ���������,���������� ��������� ��� ���������');
    Timer2.Enabled:=true;

  end;




end;

procedure TfMain.Timer2Timer(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfMain.Timer3Timer(Sender: TObject);
var JpegIm: TJpegImage;
  bm: TBitMap;
begin
//  bm := TBitMap.Create;
//  bm.Width := Screen.Width;
//  bm.Height := Screen.Height;
//  BitBlt(bm.Canvas.Handle, 0, 0,
//      bm.Width, bm.Height,
//      GetDC(0), 0, 0, SRCCOPY);
//  JpegIm := TJpegImage.Create;
//  JpegIm.Assign(bm);
//  JpegIm.CompressionQuality := 100; {�� 0 �� 100 ����� �������� ����� ������� }
//  JpegIm.Compress;
//  JpegIm.SaveToFile('c:\1.jpg');
//  dm.skrin.Close;
//     dm.skrin.Parameters[0].Value:=date+time;
//     dm.skrin.Parameters[1].Value:=DM.adodsSecurityGetRightsid.asinteger;
//     dm.skrin.Parameters[2].LoadFromFile('c:\1.jpg', ftBlob);
//
//           dm.skrin.open;
//     DeleteFile('c:\1.jpg');
//  bm.Destroy;
//  JpegIm.Destroy;
end;

procedure TfMain.ToolButton1Click(Sender: TObject);
begin

end;
  //�������� ����
procedure TfMain.ToolButton9Click(Sender: TObject);
begin
button17.Click;
end;

//����������� ��������
procedure TfMain.TTVmainCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
  State: TCustomDrawState; var DefaultDraw: Boolean);
begin
//case Node.ImageIndex of
//8: TTVmain.Canvas.brush.Color:= rgb(255,121,112);
// 14: TTVmain.Canvas.brush.Color:= rgb(255,242,5);
//  10: TTVmain.Canvas.brush.Color:= rgb(15,255,7);
//end;

end;

procedure TfMain.TTVmain_Change(Sender: TObject; Node: TTreeNode);
begin

  panel13.Visible:=false;
dm.adodsStudentData.UpdateBatch();
  PreviousSelectedNode := Node;
  case Node.Level of
    0:
      begin
      DBLookupComboboxEh14.SelectNextValue(true);
      DBLookupComboboxEh15.SelectNextValue(true);
      DBLookupComboboxEh16.SelectNextValue(true);
      DBLookupComboboxEh18.SelectNextValue(true);
        // ---��������
        if node.Text='�����' then
         dm.ADODSStudentList.Filter := '([Statusgr] = 1)'
        else
        dm.ADODSStudentList.Filter := '([Statusgr] = 0)' ;
        // ---��������
        TSFaculty.Visible := true;
        TSGroup.Visible := false;
        TSStudent.Visible := false;
       PageControl1.ActivePage:=TabSheet6;
       TabSheet2.TabVisible:=false;
       TabSheet3.TabVisible:=false;
       TabSheet6.TabVisible:=true;
      end;
    1:
      begin
        // ---��������
        DBEdit54.Font.Size:=1;

           if node.Text='����' then
        dm.ADODSStudentList.Filter := 'Kurs=' + inttostr(Node.StateIndex )+( ' and ([Statusgr] = 0)'  )
        else
                dm.ADODSStudentList.Filter := '(YearDOE)=' + (copy(node.Text, 6, 4))+( ' and ([Statusgr] = 1)'  );
        // ---��������
        TSFaculty.Visible := false;
        TSGroup.Visible := false;
        TSStudent.Visible := false;
         TabSheet2.TabVisible:=false;
       TabSheet3.TabVisible:=false;
       TabSheet6.TabVisible:=true;
      end;
    2: // ----������
      begin
        Application.CreateForm(TfAddStudent, fAddStudent);
        // ---��������
          DBEdit54.Font.Size:=1;
        if node.Text='�����������' then
        dm.ADODSStudentList.Filter := '(YearDOE)=' + (copy(node.Parent.Text, 6, 4))+( ' and ([Status] = 1)' )
        else
        if node.Text='����������' then
        dm.ADODSStudentList.Filter := '(YearDOE)=' + (copy(node.Parent.Text, 6, 4))+( ' and ([Status] = 3)')
        else
        if node.Text='���������' then
        dm.ADODSStudentList.Filter := '(YearDOE)=' + (copy(node.Parent.Text, 6, 4))+( ' and ([Status] = 5)' )
        else
        dm.ADODSStudentList.Filter := 'IDGroup=' + inttostr(Node.StateIndex)+( ' and ([Statusgr] = 0)'  ) ;
        // ---��������
        TSFaculty.Visible := false;
        TSGroup.Visible := true;
        TSStudent.Visible := false;
           PageControl1.ActivePage:=TabSheet3;
            TabSheet2.TabVisible:=false;
       TabSheet3.TabVisible:=true;
       TabSheet6.TabVisible:=false;

        dm.adodsWorkCurriculum.Close;
        dm.adodsWorkCurriculum.Parameters[0].Value := Node.StateIndex;
        dm.adodsWorkCurriculum.open;

        dm.adodsGroupData.Close;
        dm.adodsGroupData.Parameters[0].Value := Node.StateIndex;
        dm.adodsGroupData.open;
                   if not dm.adodsGroupDataForeingGL.AsBoolean then
            begin
              DBEdit46.Visible:=false;
              RzDBSpinner2.Visible:=false;
            end
            else
            begin
                DBEdit46.Visible:=true;
              RzDBSpinner2.Visible:=true;
            end;
        lGroupName.Caption :=
          '��������: ' + dm.adodsGroupDataGroupName.AsString;

        if (pos('�������', ansilowercase
              (dm.adodsWorkCurriculumQualification.AsString)) > 0) or
          (pos('�������', ansilowercase
              (dm.adodsWorkCurriculumQualification.AsString)) > 0) then
        begin
          fMain.lNSpec.Caption := '��� �����������';
          fMain.lSpec.Caption := '�����������';
          fMain.lSpez.Caption := '�������';
          fMain.lKval.Caption := '�������';
        end
        else
        begin
          fMain.lNSpec.Caption := '��� �������������';
          fMain.lSpec.Caption := '�������������';
          fMain.lSpez.Caption := '�������������';
          fMain.lKval.Caption := '������������';
        end
      end;
    3: // ----�������
      begin
              DBEdit54.Font.Size:=8;
             DBEdit54.DataSource:= DM.DSStudentData;
              DBEdit54.DataField:= 'NameS';
      //���������� �������
          DateTimePicker1.Date:=Date;
          DateTimePicker2.Date:=Date;
         DateTimePicker3.Date:=Date;
         edit2.Visible:=false;
         DateTimePicker2.Visible:=false;
         DateTimePicker3.Visible:=false;
         label80.Visible:=false;
         label81.Visible:=false;
        SpeedButton33.Left:=215;
        dm.ADODSPrikaz.Close;
        dm.ADODSPrikaz.Parameters[0].Value:=TTVmain.Selected.StateIndex;
        dm.ADODSPrikaz.open;
        dm.ADODSEntranceExam.Close;
      dm.ADODSEntranceExam.Parameters[0].Value:=TTVmain.Selected.StateIndex;;
      dm.ADODSEntranceExam.open;
       dm.ADODSPractics.Close;
      dm.ADODSPractics.Parameters[0].Value:=TTVmain.Selected.StateIndex;;
      dm.ADODSPractics.open;
        //���������� �������(�����)
        // ---��������
        if node.parent.Text='�����������' then
        dm.ADODSStudentList.Filter := '(YearDOE)=' + (copy(node.Parent.Parent.Text, 6, 4))+( ' and ([Status] = 1)' )
        else
        if node.parent.Text='����������' then
        dm.ADODSStudentList.Filter := '(YearDOE)=' + (copy(node.Parent.Parent.Text, 6, 4))+( ' and ([Status] = 3)')
        else
        if node.parent.Text='���������' then
        dm.ADODSStudentList.Filter := '(YearDOE)=' + (copy(node.Parent.Parent.Text, 6, 4))+( ' and ([Status] = 5)' )
        else
        dm.ADODSStudentList.Filter := 'IDGroup=' + inttostr
          (Node.Parent.StateIndex)+( ' and ([Statusgr] = 0)'  ) ;
        // ---��������

        TSFaculty.Visible := false;
        TSGroup.Visible := false;
        TSStudent.Visible := true;
        PageControl1.ActivePage:=TabSheet2;
             TabSheet2.TabVisible:=true;
       TabSheet3.TabVisible:=false;
       TabSheet6.TabVisible:=false;
              dm.adodsStudentData.Close;
        dm.adodsStudentData.Parameters[0].Value := Node.StateIndex;
        dm.adodsStudentData.open;
        dm.adodsStudentData.Edit;
        if dm.adodsStudentDataCitizenship.AsInteger<>13 then
        SpeedButton32.Visible:=true
        else
        SpeedButton32.Visible:=false;

         if (dm.adodsStudentDataStatus.AsInteger=1) or (dm.adodsStudentDataStatus.AsInteger=3) then
       begin
//      DBEditEh1.Visible:=true;
      dm.adodsWorkCurriculum.Close;
      dm.adodsWorkCurriculum.Parameters[0].Value :=dm.adodsStudentDataIDGroup.AsInteger;
      dm.adodsWorkCurriculum.open;
          GroupBox28.Visible:=true;
//      SpeedButton26.Visible:=true
       end
      else
      begin
     SpeedButton25.Visible:=false;
      SpeedButton26.Visible:=false;
      DBEditEh1.Visible:=false;
         GroupBox28.Visible:=false;
      end;
        case DBRadioGroup2.ItemIndex of
          0:
            GroupBox12.Visible := false;
          1:
            GroupBox12.Visible := true;
        else
          GroupBox12.Visible := false;
        end;
        case dm.adodsStudentDataEducationConditions.AsInteger of
          0:
            begin
              DBDateTimeEditEh2.Hide;
              DBEdit7.Hide;
              Label30.Hide;
              Label31.Hide;
            end;
          1:
            begin
              DBDateTimeEditEh2.Visible:=true;
              DBEdit7.Visible:=true;
              Label30.Visible:=true;
              Label31.Visible:=true;
            end;
          2:
            begin
               DBDateTimeEditEh2.Visible:=true;
              DBEdit7.Visible:=true;
              Label30.Visible:=true;
              Label31.Visible:=true;
            end;

        end;
     end;
 end;

  N16.Enabled := true;
 panel16.Caption:='�����:'+inttostr(dm.ADODSStudentList.RecordCount);
end;

procedure TfMain.TTVmain_Changing(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
begin

dm.adodsStudentData.UpdateBatch();
  if (PreviousSelectedNode = nil) then
    exit;

  case PreviousSelectedNode.Level of
    0:
      begin
        // ---��������

        // ---��������
        if (PreviousSelectedNode.Text <> '�����') then
          PreviousSelectedNode.Text := DBEFacultyName.Text;
      end;
    1:
      begin
        // ---��������

        // ---��������

      end;
    2: // ----������
      begin


        dm.adodsWorkCurriculum.Close;
        dm.adodsWorkCurriculum.Parameters[0].Value := Node.StateIndex;
        dm.adodsWorkCurriculum.open;
        dm.adodsGroupData.Close;
        dm.adodsGroupData.Parameters[0].Value := Node.StateIndex;
        dm.adodsGroupData.open;

        // ---��������
        // PreviousSelectedNode.Text := DBEGroupName.Text;
        // ---��������

      end;
    3: // ----�������
      begin
        // ---��������
//          dm.adodsStudentData.Close;
//      dm.adodsStudentData.Parameters[0].Value:=TTVmain.Selected.StateIndex;;
//      dm.adodsStudentData.open;
//      dm.ADODSEntranceExam.Close;
//      dm.ADODSEntranceExam.Parameters[0].Value:=TTVmain.Selected.StateIndex;;
//      dm.ADODSEntranceExam.open;
//      dm.ADODSPractics.Close;
//      dm.ADODSPractics.Parameters[0].Value:=TTVmain.Selected.StateIndex;;
//      dm.ADODSPractics.open;
//      dm.adodsWorkCurriculum.Close;
//      dm.adodsWorkCurriculum.Parameters[0].Value :=dm.adodsStudentDataIDGroup.AsInteger;
//      dm.adodsWorkCurriculum.open;
         if dm.adodsStudentDataAdrProgP.AsBoolean then
    begin
    RadioGroup10.Visible:=false;
      DBEditEh2.Visible:=false;

    end
else
     begin
      RadioGroup10.Visible:=true;
      DBEditEh2.Visible:=true;
    end   ;

          if (dm.adodsStudentDataStatus.AsInteger=1) or (dm.adodsStudentDataStatus.AsInteger=3) then
       begin
      DBEditEh1.Visible:=false;
      GroupBox28.Visible:=true;

      SpeedButton25.Visible:=false
       end
      else
      begin
      SpeedButton25.Visible:=false;
      DBEditEh1.Visible:=false;
      GroupBox28.Visible:=false;
      end;
        // ---��������
        if (dm.adodsStudentData.State in [dsEdit]) then
          dm.adodsStudentData.Post;
        PreviousSelectedNode.Text := DBEnameF.Text + ' ' + copy
          (DBEnameI.Text, 1, 1) + '.' + copy(DBEnameO.Text, 1, 1) + '.';
      end;
  end;
end;

procedure TfMain.TTVmain_MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) and (TTVmain.Enabled) then
    case TTVmain.Selected.Level of
      0:
        ;
      1:
        PMKurs.Popup(fMain.Left + fMain.CalcCursorPos.X + 8,
          fMain.Top + fMain.CalcCursorPos.Y + 50);

      2:
        PMGroup.Popup(fMain.Left + fMain.CalcCursorPos.X + 8,
          fMain.Top + fMain.CalcCursorPos.Y + 50);
      3:
        PMStudent.Popup(fMain.Left + fMain.CalcCursorPos.X + 8,
          fMain.Top + fMain.CalcCursorPos.Y + 50);
      { 0:;
        1:PMKurs.Popup(X+fMain.Left+TTVMain.Left, Y+fMain.Top+TTVMain.Top);
        2:PMGroup.Popup(X+fMain.Left+TTVMain.Left, Y+fMain.Top+TTVMain.Top);
        3:PMStudent.Popup(X+fMain.Left+TTVMain.Left, Y+fMain.Top+TTVMain.Top);
      } end;
end;

end.
