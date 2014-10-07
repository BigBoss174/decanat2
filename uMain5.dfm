object fMain: TfMain
  Left = 227
  Top = 157
  Caption = #1044#1077#1082#1072#1085#1072#1090' 2'
  ClientHeight = 786
  ClientWidth = 992
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Enabled = True
  Menu = mmMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 185
    Top = 0
    Width = 0
    Height = 786
    ExplicitLeft = 188
    ExplicitHeight = 591
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 786
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 185
      Height = 29
      Caption = 'ToolBar1'
      TabOrder = 0
      object TDBLCFaculties: TDBLookupComboBox
        Left = 0
        Top = 0
        Width = 182
        Height = 22
        Align = alClient
        DropDownRows = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        KeyField = 'ID'
        ListField = 'FN'
        ListSource = DM.DSFaculties
        ParentFont = False
        TabOrder = 0
        OnCloseUp = TDBLCFacultiesCloseUp
      end
    end
    object TTVmain_: TTreeView
      Left = 58
      Top = 139
      Width = 121
      Height = 343
      DoubleBuffered = True
      Enabled = False
      HideSelection = False
      Images = ILmain
      Indent = 19
      ParentDoubleBuffered = False
      RightClickSelect = True
      TabOrder = 1
      OnChange = TTVmain_Change
      OnChanging = TTVmain_Changing
      OnMouseDown = TTVmain_MouseDown
    end
    object TTVmain: TRzTreeView
      Left = 0
      Top = 29
      Width = 185
      Height = 757
      SelectionPen.Color = clBtnShadow
      Align = alClient
      Color = clSkyBlue
      DisabledColor = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = ILmain
      Indent = 19
      ParentFont = False
      TabOrder = 2
      OnChange = TTVmain_Change
      OnChanging = TTVmain_Changing
      OnMouseDown = TTVmain_MouseDown
    end
  end
  object Panel2: TPanel
    Left = 185
    Top = 0
    Width = 807
    Height = 786
    Align = alClient
    TabOrder = 1
    object ToolBar2: TToolBar
      Left = 1
      Top = 1
      Width = 805
      Height = 28
      Caption = 'ToolBar2'
      Images = ILmain
      TabOrder = 0
      Transparent = True
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 26
        OnClick = ToolButton1Click
      end
      object ToolButton3: TToolButton
        Left = 23
        Top = 0
        Caption = 'ToolButton3'
      end
      object ToolButton5: TToolButton
        Left = 46
        Top = 0
        Caption = 'ToolButton5'
      end
      object ToolButton7: TToolButton
        Left = 69
        Top = 0
        Caption = 'ToolButton7'
      end
      object ToolButton9: TToolButton
        Left = 92
        Top = 0
        Caption = 'ToolButton9'
      end
    end
    object TPCmain: TPageControl
      Left = 1
      Top = 29
      Width = 805
      Height = 756
      ActivePage = TSCard
      Align = alClient
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object TSBase: TTabSheet
        Caption = #1054#1089#1085#1086#1074#1085#1086#1081
        DesignSize = (
          797
          728)
        object TDBGmain: TDBGrid
          Left = 3
          Top = 3
          Width = 791
          Height = 722
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DM.DSStudentList
          DrawingStyle = gdsGradient
          GradientEndColor = clSilver
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = TDBGmainDblClick
          OnTitleClick = TDBGmainTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'IDGroup'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Kurs'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NameF'
              Title.Caption = #1060#1072#1084#1080#1083#1080#1103
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NameI'
              Title.Caption = #1048#1084#1103
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NameO'
              Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EducationForm'
              Title.Caption = #1059#1089#1083#1086#1074#1080#1103' '#1086#1073#1091#1095#1077#1085#1080#1103
              Width = 128
              Visible = True
            end>
        end
      end
      object TSCard: TTabSheet
        Caption = #1050#1072#1088#1090#1086#1095#1082#1072
        ImageIndex = 1
        object SpeedButton7: TSpeedButton
          Left = 88
          Top = 0
          Width = 23
          Height = 38
        end
        object PCCard: TPageControl
          Left = 0
          Top = 0
          Width = 797
          Height = 728
          ActivePage = TSStudent
          Align = alClient
          TabOrder = 0
          object TSFaculty: TTabSheet
            Caption = 'TSFaculty'
            object GBDean: TGroupBox
              Left = 0
              Top = 0
              Width = 789
              Height = 80
              Align = alTop
              Caption = #1044#1077#1082#1072#1085
              TabOrder = 0
              object Label1: TLabel
                Left = 16
                Top = 20
                Width = 44
                Height = 13
                Caption = #1060#1072#1084#1080#1083#1080#1103
              end
              object Label3: TLabel
                Left = 16
                Top = 39
                Width = 19
                Height = 13
                Caption = #1048#1084#1103
              end
              object Label4: TLabel
                Left = 16
                Top = 58
                Width = 49
                Height = 13
                Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              end
              object DBEDeanNameF: TDBEdit
                Left = 86
                Top = 16
                Width = 366
                Height = 21
                DataField = 'DeanNameF'
                DataSource = DM.DSFaculties
                TabOrder = 0
                OnExit = DBEDeanNameFExit
              end
              object DBEDeanNameN: TDBEdit
                Left = 86
                Top = 35
                Width = 366
                Height = 21
                DataField = 'DeanNameI'
                DataSource = DM.DSFaculties
                TabOrder = 1
                OnExit = DBEDeanNameNExit
              end
              object DBEDeanNameI: TDBEdit
                Left = 86
                Top = 54
                Width = 366
                Height = 21
                DataField = 'DeanNameO'
                DataSource = DM.DSFaculties
                TabOrder = 2
                OnExit = DBEDeanNameIExit
              end
            end
            object GBFaculty: TGroupBox
              Left = 0
              Top = 80
              Width = 789
              Height = 58
              Align = alTop
              TabOrder = 1
              object Label11: TLabel
                Left = 16
                Top = 12
                Width = 48
                Height = 13
                Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              end
              object Label2: TLabel
                Left = 16
                Top = 31
                Width = 64
                Height = 13
                Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1080#1077
              end
              object DBEFacultyName: TDBEdit
                Left = 86
                Top = 8
                Width = 366
                Height = 21
                DataField = 'FacultyName'
                DataSource = DM.DSFaculties
                TabOrder = 0
                OnExit = DBEFacultyNameExit
              end
              object DBEFacultyShortName: TDBEdit
                Left = 86
                Top = 27
                Width = 366
                Height = 21
                DataField = 'FacultyShortName'
                DataSource = DM.DSFaculties
                TabOrder = 1
                OnExit = DBEFacultyShortNameExit
              end
            end
            object GroupBox14: TGroupBox
              Left = 0
              Top = 138
              Width = 789
              Height = 105
              Align = alTop
              TabOrder = 2
              object sbStudentListFaculty: TSpeedButton
                Left = 15
                Top = 6
                Width = 130
                Height = 35
                Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
                Flat = True
                Glyph.Data = {
                  76060000424D7606000000000000360400002800000018000000180000000100
                  08000000000040020000D30E0000D30E00000001000000010000080808000810
                  1800181818008C311800C642180021212100C6422100CE4A2100946321005A7B
                  210021842100292929008C4A2900C64A2900CE4A2900D64A2900102131003131
                  3100C65A3100C6633100B56B3100319C31000010390039393900E75A39003184
                  39007B8C39001829420031314200424242008C524200EF5A4200A5634200D66B
                  4200DE6B420042AD420042CE420008214A004A4A4A00A5524A00EF634A00F763
                  4A00D66B4A00DE7B4A004AA54A0052525200B5735200527B5200E77B52005A9C
                  520052B5520010215A0042215A0063525A005A5A5A005A735A0063735A00EF7B
                  5A00DE8C5A00E78C5A005AA55A005AAD5A0063AD5A005AB55A005AD65A006363
                  6300FF7B6300D68463007BAD630063BD63006B6B6B0084736B00FF8C6B004231
                  73005A73730084BD730073D673008CDE7300426B7B00187B7B007B7B7B007BA5
                  7B004A5A84005A638400DE9C8400EFB5840010318C00526B8C00737B8C00DEA5
                  8C00FFBD8C009CDE8C00292994001031940010399400738494008CBD9400EFC6
                  940010399C00106B9C0010739C009C9C9C00FFD69C00184AA5002173A5002973
                  A5006394A500A5A5A500A5CEA500FFD6A500B5E7A5001842AD00104AAD00FFDE
                  AD00187BB500318CB500428CB5004A8CB50094ADB500C6DEB5001852BD00185A
                  BD002184BD002984BD00318CBD001863C600216BC6003994C600529CC600D6E7
                  C6002163CE00216BCE00298CCE003194CE00429CCE004A9CCE00529CCE002184
                  D60052A5D6005AA5D60073B5D60084B5D6008CBDD600297BDE00218CDE003194
                  DE00429CDE0042A5DE0052ADDE006BB5DE0094C6DE009CC6DE00F7EFDE00297B
                  E7002984E700298CE70042A5E7004AA5E7007BBDE7008CC6E70094C6E700EFF7
                  E700FFF7E700428CEF002994EF00ADD6EF00298CF7003194F7004AADF7004AB5
                  F700FF00FF00399CFF00429CFF0039A5FF0042A5FF0052A5FF0042ADFF004AAD
                  FF005AADFF0052B5FF006BBDFF006BC6FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAAAAAAAAAAA
                  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                  AAAAAA2E0D0406070E0D0D0D1E47AAAAAAAAAAAAAAAAAAAAAAAAAA0D0F292942
                  422813181F0D0C382F0A0A151515444437AAAA07292942424821612148290F09
                  230A155B5B4040243CAAAA07294242482255712B4848181A324B3E6E5B4D4040
                  3CAAAA43284248303A666D3A484818403277812C6E5B4D403CAAAAAA2A393921
                  54595A3B3948144C3DA1B66C3F6E5B5B3CAAAAAAAA2003345C5C492712084C4C
                  3CA2A298445B5B3CAAAAAAAA261100165D5D5D5C35512C45317675746A193CAA
                  AAAAAA501100255E6F6F6F625CAAAA604F89909089644AAAAAAAAA2602016778
                  797979785658AAAA9BA7A7A7A7A468AAAAAAAA1105107983838383827053AA88
                  ABAFAFADABABA44EAAAAAA0B11057E8F999A998F7D52AA92AEB0B0B0AEAEAD69
                  AAAAAA11170B79A6B2B2ACA68357AA9CB1B4B4B4B4B1AE80AAAAAA111D261B79
                  8FA3ACA77E5FAA9DB4B5B5B5B5B3B191AAAAAA262626362D1C335C5C26AAAA94
                  B49393A9B4B4A87AAAAAAAAA173646656B65261126AAAA80727F878685847B63
                  AAAAAAAA501D505065653617AAAAAAAA7C8B95A0A58C7380AAAAAAAAAAAA4126
                  1D2650AAAAAAAAAA8E8B9FA09E8A80AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                  AA978E968D8EAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
                OnClick = sbStudentListFacultyClick
              end
            end
          end
          object TSGroup: TTabSheet
            Caption = 'TSGroup'
            ImageIndex = 1
            object GBGroupSpecies: TGroupBox
              Left = 0
              Top = 49
              Width = 789
              Height = 155
              Align = alTop
              Caption = #1059#1095#1077#1073#1085#1099#1081' '#1087#1083#1072#1085
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object lPlanNumber: TLabel
                Left = 15
                Top = 19
                Width = 75
                Height = 13
                Caption = #1053#1086#1084#1077#1088' '#1087#1083#1072#1085#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lSpec: TLabel
                Left = 16
                Top = 74
                Width = 77
                Height = 13
                Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lSpez: TLabel
                Left = 15
                Top = 101
                Width = 51
                Height = 13
                Caption = #1055#1088#1086#1092#1080#1083#1100
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lKval: TLabel
                Left = 15
                Top = 128
                Width = 49
                Height = 13
                Caption = #1057#1090#1077#1087#1077#1085#1100
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lNSpec: TLabel
                Left = 294
                Top = 46
                Width = 114
                Height = 13
                Caption = #1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object sbLoadPlan: TSpeedButton
                Left = 318
                Top = 18
                Width = 90
                Height = 22
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Visible = False
                OnClick = sbLoadPlanClick
              end
              object lSpecialityAbbreviation: TLabel
                Left = 16
                Top = 46
                Width = 72
                Height = 13
                Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1080#1077
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object sbEditPlan: TSpeedButton
                Left = 183
                Top = 15
                Width = 114
                Height = 22
                Caption = #1056#1072#1073#1086#1095#1080#1081' '#1087#1083#1072#1085
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  36050000424D3605000000000000360400002800000010000000100000000100
                  08000000000000010000320B0000320B0000000100000001000000000000CE63
                  00000010180039082100A56B2900DE8C3900E7396300526B7B0000089C007B9C
                  A500D6CEAD00F7D6AD00FFD6AD00ADB5BD00B5C6C600BDC6C600C6C6C600FFE7
                  C600ADC6CE00FFEFD6002163DE00FFEFDE00FFF7E700FFFFF700FF00FF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00181818181818
                  1818181818181818181818010101010101010101010101010101180119191716
                  1311070A0B0C0C0C0C011801190F0F0F0F0F0700120F0F0F0C01180119191919
                  17160700000C0B0C0C011801190F0F0F0F0F071505000E0F0C01180119191919
                  1919091505000C0C0C011801190F0F0F0F0F0F071505000D0C01180119191919
                  191919091505000C0C011801190F0F0F0F0F0F0F071505000C01180119191919
                  19191919091505020C0118011919191919191919190700140001180101010101
                  0101010101041414030118180101010101010101010108080618181818181818
                  1818181818181818181818181818181818181818181818181818}
                ParentFont = False
                OnClick = sbEditPlanClick
              end
              object SpeedButton1: TSpeedButton
                Left = 414
                Top = 18
                Width = 91
                Height = 22
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Visible = False
                OnClick = SpeedButton1Click
              end
              object DBEEhGroupIdPlan: TDBEditEh
                Left = 118
                Top = 16
                Width = 59
                Height = 21
                DataField = 'idPlan'
                DataSource = DM.dsWorkCurriculum
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 0
                Visible = True
              end
              object DBESpeciality: TDBEdit
                Left = 118
                Top = 70
                Width = 371
                Height = 21
                DataField = 'Speciality'
                DataSource = DM.dsWorkCurriculum
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object DBESpecialization: TDBEdit
                Left = 118
                Top = 97
                Width = 371
                Height = 21
                DataField = 'Specialization'
                DataSource = DM.dsWorkCurriculum
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
              end
              object DBEQualification: TDBEdit
                Left = 118
                Top = 124
                Width = 371
                Height = 21
                DataField = 'Qualification'
                DataSource = DM.dsWorkCurriculum
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
              end
              object DBESpecialityCode: TDBEdit
                Left = 414
                Top = 43
                Width = 73
                Height = 21
                DataField = 'SpecialityCode'
                DataSource = DM.dsWorkCurriculum
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 4
              end
              object dbeSpecialityAbbreviation: TDBEdit
                Left = 118
                Top = 43
                Width = 170
                Height = 21
                DataField = 'SpecialityAbbreviation'
                DataSource = DM.dsWorkCurriculum
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 5
              end
            end
            object GBGroupName: TGroupBox
              Left = 0
              Top = 0
              Width = 789
              Height = 49
              Align = alTop
              TabOrder = 1
              object lGroupName: TLabel
                Left = 16
                Top = 13
                Width = 55
                Height = 13
                Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object sbGroupNameByKurs: TSpeedButton
                Left = 176
                Top = 11
                Width = 146
                Height = 22
                Caption = #1053#1072#1079#1074#1072#1085#1080#1103' '#1087#1086'  '#1082#1091#1088#1089#1072#1084
                Flat = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  20000000000000090000232E0000232E00000000000001000000EDF2F2FFEDF2
                  F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFECF1F2FFEDF1
                  F1FFFFFFFBFFFFFBF1FFC2C7CBFF90A2B7FF5582B2FF5489BFFF547EA9FF5583
                  B2FF5485BCFF728BA7FFADBDCDFFE0E0DCFFFFFFF7FFFFFFFAFFEDF2F2FFEDF2
                  F2FFECF1F1FFEFF4F4FFF0F5F5FFF0F5F5FFF0F5F5FFF0F5F5FFF0F5F5FFF1F7
                  F7FF83ACD4FF286BBAFF045DBDFF0063CEFF0065D3FF0065D4FF0064D1FF0064
                  D1FF0064D1FF0064D0FF0061C7FF0F61BCFF437DB9FFBBCCDBFFECF1F1FFECF1
                  F1FFEDF2F2FFE2E8E8FFDEE3E3FFDEE3E3FFDEE3E3FFDDE2E2FFE6E9E7FFBBC7
                  D1FF004AAEFF0063D7FF006EE3FF0073EAFF0075EDFF0074ECFF0075EEFF0075
                  EDFF0074ECFF0075EEFF0073EAFF006BE0FF0063DCFF327BC5FFEDF2F2FFF5F6
                  F6FFF7F5F8FFDBDCDDFFD1D1D1FFD1D2D2FFD0D1D1FFD0D1D1FFCED0D2FFD3D1
                  CDFF4686C9FF0060D3FF0372E3FF0073EBFF0072EAFF0073EAFF0073EAFF0073
                  EAFF0072EAFF0073EBFF0072E8FF026DDCFF006CDEFFB8D7F4FFEDF2F2FFF8FA
                  F8FFFAFFF8FFFAFFFBFFFBFBFBFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFD3E5F7FF0967D0FF006CE6FF0276EDFF0275EDFF0074EDFF0074EFFF0075
                  EEFF0174EBFF0174EBFF0277EDFF006BEEFF378DE4FFFBF9EEFFEFF9F4FFF3E6
                  F4FFD570D9FFEBCEEDFFF6F9F6FFF6F5F6FFDCDCDCFFD0D1D1FFD3D3D3FFD1D1
                  D2FFDDDAD5FF8EA8C1FF1A69C4FF0068E0FF0069E5FF006FE8FF0472E3FF006E
                  E5FF006EEDFF0071F3FF0063D8FF216BBFFFD9EBFAFFF2F6F1FFEEF6F3FFF5EE
                  F6FFE5ADE6FFF1E1F2FFF7F9F7FFF8F7F8FFE1E1E1FFD7D7D7FFD9D9D9FFD9D9
                  D9FFD7D8D9FFE6E1DBFFE3E2DFFFA7C7E9FF458EE0FF85B5E5FF7996B5FF7298
                  C1FF3E8FE3FF5897D8FFA9B7C6FF342E26FFBBBCB8FFF5F8FAFFECF0F1FFF9FD
                  F9FFFFFFFEFFF9FFF9FFF7F6F7FFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFBDCEDDFF7C96B0FF869D
                  B4FFDFE5EAFFFFFFF6FFFFFFFFFF5C5C5EFF575A5BFFFFFFFFFFEFFAF4FFF3E5
                  F4FFD260D7FFECCBEEFFFAFCFAFFF9F8F9FFD9D9D9FFCBCBCBFFCECECEFFCECE
                  CEFFCECECEFFCECECEFFCDCDCDFFCECECEFFC8C9CBFF89ADD2FF93BFEAFF84B0
                  DAFFA7B6C4FFCECDCCFFE6E7E8FF5E5D5DFF5F6161FFFEFEFEFFEDF4F2FFF7F2
                  F7FFECC8EEFFF4E9F5FFF9FAF9FFF9F9F9FFE8E8E8FFE1E1E1FFE2E2E2FFE2E2
                  E2FFE2E2E2FFE2E2E2FFE0E1E1FFEAE7E3FFBECEDEFF93BFEAFFADD0F1FFA8CE
                  F2FFA7C4E0FFE0DEDCFFF2F2F2FF5C5C5CFF5F6161FFFFFFFFFFECF0F1FFF9FC
                  FAFFFEFFFEFFFAFEFAFFF9F9F9FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFEFFA5C9ECFFAECFEFFFC0DBF3FFC1DB
                  F3FFB1D1F1FFE8F0F8FFFFFFFFFF5A595AFF5F6262FFFFFFFFFFF0FAF4FFF3E4
                  F5FFD055D5FFEDC9EFFFFCFDFCFFFBFAFBFFD7D7D7FFC6C6C6FFCACACAFFCACA
                  CAFFC9C9C9FFC8C9C9FFCDCBC9FFB1BFCDFF92BAE3FFBCD6F0FFC6DCF1FFCCDF
                  F2FFB8D5F1FFA0B9D1FFE4E3E2FF5C5C5DFF5E6161FFFFFFFFFFEDF3F2FFF9F6
                  F9FFF4DFF4FFF8F2F8FFFBFBFBFFFBFBFBFFF0F0F0FFEBEBEBFFECECECFFECEC
                  ECFFECECECFFEBEAEBFFF0F0EFFFC0C8D2FF85A9D0FFC2DDF8FFD1E6F9FFD9EC
                  FCFFB8D2EDFF96ABC2FFF7F7F6FF5A5A5AFF5E6161FFFFFFFFFFECF1F1FFFAFB
                  FAFFFCFFFCFFFAFBFAFFFBFBFBFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D8E0FF6B8CB2FFB0CDE9FF95ABC3FFA8BE
                  D5FF7D99BAFF9CACC0FFFFFFFFFF575758FF5F6262FFFFFFFFFFEFF9F3FFF4E3
                  F4FFCF52D3FFEEC9EFFFFDFDFCFFFDFBFBFFD6D5D5FFC5C4C3FFC8C8C7FFC8C7
                  C7FFC8C8C7FFC7C7C6FFC8C7C7FFC2C3C4FF586E8CFF405C80FF587191FF7A93
                  B3FF6B86A8FFA5ABB4FFE4E3E2FF5C5B5BFF5F6262FFFFFFFFFFF2FAFCFFFCFF
                  FFFFFCF7FFFFFDFFFFFFFFFFFFFFFFFFFFFFF9FDFFFFF6FAFEFFF6FBFEFFF6FA
                  FEFFF6FAFEFFF6FAFDFFF4F9FCFFF8FCFFFFDCE6F0FF6C87A8FF6382A7FF88A5
                  C5FFCBDAEBFFF8FDFFFFFDFFFFFF565A5CFF595D5DFFFFFFFFFF765F4DFFD19F
                  78FFDEA36EFFDAA170FFDDA374FFE0A678FFE3AA7CFFE7AD80FFE9B084FFEAB1
                  87FFECB389FFECB489FFEDB48AFFEBB288FFF0B68AFFEBB285FFCE9971FFD9A1
                  75FFE7AB7BFFDCA272FFE9AF7EFF784F35FF978A89FFFFFFFFFF4D2405FFC475
                  39FFCC7025FFCC742DFFD07933FFD47D38FFD8823FFFDD8645FFE08B4BFFE48F
                  50FFE69153FFE79254FFE79355FFE69253FFE38E50FFE18B4CFFE48E4CFFDD89
                  49FFD58241FFD17D3BFFDD843CFF8D4A21FFBAA4A2FFFFFFFFFF553014FFC77F
                  47FFD27D38FFD2803FFFD68545FFDB8A4BFFE09053FFE4945AFFE89960FFEC9E
                  65FFEFA169FFF1A36CFFF1A36CFFEFA16AFFED9E66FFE99A60FFE59860FFE49D
                  68FFDF945BFFD88E53FFE29251FF894C25FFB39F9DFFFFFFFFFF532E12FFC880
                  49FFD47E39FFD38241FFD98747FFDE8D4FFFE39357FFE8985FFFED9E66FFF1A4
                  6DFFF6A974FFF9AC78FFF9AD79FFF6AA75FFF2A56FFFEE9E66FFE99C64FFEEBE
                  99FFE29A63FFDA8E54FFE49353FF8A4D26FFB49F9DFFFFFFFFFF553115FFC881
                  4AFFD37D36FFD3803EFFDA8644FFDF8C4DFFE59255FFEB995DFFF19F66FFF8A7
                  6FFFFEAD77FFFFB07AFFFFB07AFFFEAF79FFF9A972FFF2A269FFEC9A5FFFE9A1
                  6BFFE19154FFD88849FFE4904EFF8B4F29FFB4A09EFFFEFEFEFF4A2403FFCA83
                  50FFDC8C4FFFDB8F57FFDF955FFFE49C69FFE8A373FFEBAA7CFFF0B187FFF5B9
                  92FFF9BF9AFFF9C19CFFF8BE99FFF9BD96FFF6B88FFFF1AF83FFECA879FFE89F
                  6CFFE49A65FFDD9159FFE89B60FF844621FFB19996FFFFFFFFFF684330FF7F60
                  43FF85694CFF84694DFF846B4FFF846C51FF846D53FF836E56FF837058FF8371
                  5AFF83725CFF83735DFF83715BFF837058FF836F56FF836D54FF836C52FF846B
                  51FF846A4EFF84684CFF846A4CFF6F4E34FFCBC1BEFFF7FBFBFFF1F5F9FFE1EB
                  EAFFDDE9E6FFDEE9E5FFDEE8E4FFDEE7E3FFDEE7E2FFDEE6E1FFDEE5E0FFDEE5
                  DFFFDEE4DEFFDEE4DDFFDEE4DEFFDEE5E0FFDEE6E1FFDEE6E2FFDEE7E3FFDEE8
                  E4FFDEE8E5FFDEE9E6FFDDE8E6FFEAF4F3FFF2FBFCFFEBF0F0FF}
                OnClick = sbGroupNameByKursClick
              end
              object sbSessionGroup: TSpeedButton
                Left = 328
                Top = 10
                Width = 153
                Height = 22
                Caption = #1059#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
                Flat = True
                Glyph.Data = {
                  36050000424D3605000000000000360400002800000010000000100000000100
                  08000000000000010000230B0000230B00000001000000010000BD7B4200735A
                  4A00C6844A00CE8C4A00CE945200DEA56300634AAD00FFDEAD0073ADB500F7E7
                  B50073A5BD008CB5BD007363C6009C84E7009C8CEF0073F7F700FF00FF006BDE
                  FF0073EFFF007BF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00101010101010
                  1010101010101010101010000000000000000000000000000010100410101010
                  10101010101010101010100410020201100A0A0A100606061010100410030301
                  1011110A100C0C0610101004100303011011110A100C0C061010100410050500
                  1012120A100D0D06101010041005050010121208100D0D0C1010100410070700
                  100F0F0B100D0D0C10101004100707001013130B100E0E0C1010100410090902
                  10110B0B100E0E0C101010041009090210101010100E0E0C1010100410050505
                  10101010100C0C0C101010041010101010101010101010101010100410101010
                  1010101010101010101010101010101010101010101010101010}
                OnClick = sbSessionGroupClick
              end
              object Label67: TLabel
                Left = 504
                Top = 16
                Width = 65
                Height = 13
                Caption = #1055#1086#1076#1075#1088#1091#1087#1087#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBComboBox1: TDBComboBox
                Left = 575
                Top = 11
                Width = 56
                Height = 21
                DataField = 'NumberGroup'
                DataSource = DM.dsGroupData
                Items.Strings = (
                  '1'
                  '2'
                  '3')
                TabOrder = 0
                OnChange = DBComboBox1Change
              end
            end
            object GroupBox13: TGroupBox
              Left = 0
              Top = 204
              Width = 789
              Height = 105
              Align = alTop
              Caption = #1057#1087#1080#1089#1086#1082' '#1075#1088#1091#1087#1087#1099
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object sbStudentListGroup: TSpeedButton
                Left = 16
                Top = 24
                Width = 129
                Height = 33
                Caption = #1057#1087#1080#1089#1086#1082' '#1075#1088#1091#1087#1087#1099
                Flat = True
                Glyph.Data = {
                  76060000424D7606000000000000360400002800000018000000180000000100
                  08000000000040020000D30E0000D30E00000001000000010000080808000810
                  1800181818008C311800C642180021212100C6422100CE4A2100946321005A7B
                  210021842100292929008C4A2900C64A2900CE4A2900D64A2900102131003131
                  3100C65A3100C6633100B56B3100319C31000010390039393900E75A39003184
                  39007B8C39001829420031314200424242008C524200EF5A4200A5634200D66B
                  4200DE6B420042AD420042CE420008214A004A4A4A00A5524A00EF634A00F763
                  4A00D66B4A00DE7B4A004AA54A0052525200B5735200527B5200E77B52005A9C
                  520052B5520010215A0042215A0063525A005A5A5A005A735A0063735A00EF7B
                  5A00DE8C5A00E78C5A005AA55A005AAD5A0063AD5A005AB55A005AD65A006363
                  6300FF7B6300D68463007BAD630063BD63006B6B6B0084736B00FF8C6B004231
                  73005A73730084BD730073D673008CDE7300426B7B00187B7B007B7B7B007BA5
                  7B004A5A84005A638400DE9C8400EFB5840010318C00526B8C00737B8C00DEA5
                  8C00FFBD8C009CDE8C00292994001031940010399400738494008CBD9400EFC6
                  940010399C00106B9C0010739C009C9C9C00FFD69C00184AA5002173A5002973
                  A5006394A500A5A5A500A5CEA500FFD6A500B5E7A5001842AD00104AAD00FFDE
                  AD00187BB500318CB500428CB5004A8CB50094ADB500C6DEB5001852BD00185A
                  BD002184BD002984BD00318CBD001863C600216BC6003994C600529CC600D6E7
                  C6002163CE00216BCE00298CCE003194CE00429CCE004A9CCE00529CCE002184
                  D60052A5D6005AA5D60073B5D60084B5D6008CBDD600297BDE00218CDE003194
                  DE00429CDE0042A5DE0052ADDE006BB5DE0094C6DE009CC6DE00F7EFDE00297B
                  E7002984E700298CE70042A5E7004AA5E7007BBDE7008CC6E70094C6E700EFF7
                  E700FFF7E700428CEF002994EF00ADD6EF00298CF7003194F7004AADF7004AB5
                  F700FF00FF00399CFF00429CFF0039A5FF0042A5FF0052A5FF0042ADFF004AAD
                  FF005AADFF0052B5FF006BBDFF006BC6FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAAAAAAAAAAA
                  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                  AAAAAA2E0D0406070E0D0D0D1E47AAAAAAAAAAAAAAAAAAAAAAAAAA0D0F292942
                  422813181F0D0C382F0A0A151515444437AAAA07292942424821612148290F09
                  230A155B5B4040243CAAAA07294242482255712B4848181A324B3E6E5B4D4040
                  3CAAAA43284248303A666D3A484818403277812C6E5B4D403CAAAAAA2A393921
                  54595A3B3948144C3DA1B66C3F6E5B5B3CAAAAAAAA2003345C5C492712084C4C
                  3CA2A298445B5B3CAAAAAAAA261100165D5D5D5C35512C45317675746A193CAA
                  AAAAAA501100255E6F6F6F625CAAAA604F89909089644AAAAAAAAA2602016778
                  797979785658AAAA9BA7A7A7A7A468AAAAAAAA1105107983838383827053AA88
                  ABAFAFADABABA44EAAAAAA0B11057E8F999A998F7D52AA92AEB0B0B0AEAEAD69
                  AAAAAA11170B79A6B2B2ACA68357AA9CB1B4B4B4B4B1AE80AAAAAA111D261B79
                  8FA3ACA77E5FAA9DB4B5B5B5B5B3B191AAAAAA262626362D1C335C5C26AAAA94
                  B49393A9B4B4A87AAAAAAAAA173646656B65261126AAAA80727F878685847B63
                  AAAAAAAA501D505065653617AAAAAAAA7C8B95A0A58C7380AAAAAAAAAAAA4126
                  1D2650AAAAAAAAAA8E8B9FA09E8A80AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                  AA978E968D8EAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA}
                OnClick = sbStudentListGroupClick
              end
            end
          end
          object TSStudent: TTabSheet
            Caption = 'TSStudent'
            ImageIndex = 2
            object PCStudent: TPageControl
              Left = 0
              Top = 0
              Width = 789
              Height = 700
              ActivePage = TabSheet4
              Align = alClient
              MultiLine = True
              ScrollOpposite = True
              TabOrder = 0
              OnChange = PCStudentChange
              object TabSheet4: TTabSheet
                Caption = #1051#1080#1095#1085#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072
                object PCStudentPersonal: TPageControl
                  Left = 0
                  Top = 0
                  Width = 781
                  Height = 672
                  ActivePage = TSStudentMain
                  Align = alClient
                  TabOrder = 0
                  object TSStudentMain: TTabSheet
                    Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
                    DesignSize = (
                      773
                      644)
                    object sbLoadPhoto: TSpeedButton
                      Left = 3
                      Top = 162
                      Width = 113
                      Height = 22
                      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
                      Flat = True
                      Glyph.Data = {
                        36090000424D3609000000000000360000002800000018000000180000000100
                        20000000000000090000232E0000232E00000000000001000000EDF2F2FFECF1
                        F1FFEDF2F2FFECF1F0FFF2FBFCFFEEFEFFFFEEFDFFFFF5FFFFFFF1F7F7FFECF1
                        F1FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2
                        F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2
                        F2FFECF1F1FFEDF4F5FFDDD8D5FFE5C6B9FFE0C3B7FFD3C0B9FFE2E4E3FFEEF3
                        F3FFECF1F1FFEDF1F1FFEEF5F5FFEDF2F2FFECF0F0FFECF0F0FFECF1F1FFEDF2
                        F2FFECF1F1FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFECF1
                        F1FFEDF2F2FFE9EFF1FFE6A88AFFFCE2D2FFFCF4F0FFF1D1C5FFD4B5A9FFEEF9
                        FBFFEDF0F0FFEBF4F6FFE5E6E5FFE8F0F0FFEFF9FBFFF0F9FAFFEFF4F4FFECF1
                        F1FFEDF2F2FFECF1F1FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFECF1
                        F0FFEDF4F5FFE9E4E2FFF9BA98FFFFFDF6FFFDFEFEFFFFFFFFFFE3BAACFFDFDE
                        DBFFEBF7FAFFE1B6A2FFE5BEADFFD8B8ACFFD2BAB0FFDCD1CCFFE3E7E6FFEDF4
                        F4FFECF1F1FFEDF1F1FFEEF3F3FFECF0F0FFECF1F1FFEDF2F2FFEDF2F2FFECF0
                        F0FFEDF7F9FFE7D5CDFFF9C0A0FFFEFEFBFFFEFFFFFFFFFFFFFFFFFEFBFFE1C2
                        B5FFCAA89BFFF8D0BDFFFFFFFFFFFFFAF8FFF9E8E1FFEED2C7FFDBAF9FFFDED7
                        D3FFF1F8F9FFEBF4F6FFE6EBEBFFECF6F7FFEFF6F7FFECF1F1FFEDF2F2FFECF0
                        EFFFECF8FBFFE8C6B8FFFED6BBFFEFD9D0FFC85A3EFFD68775FFEAB5ADFFFFDA
                        D9FFFFEDEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBE4FFD8BA
                        AEFFE9F8FCFFD7B3A3FFDEB7A8FFD9BAAFFFDFDAD7FFF0F6F6FFECF1F1FFECF0
                        EFFFEBF7FAFFECBEA9FFFFE9D3FFE9B6A9FF515600FF29870FFF45811CFF6481
                        2DFF8A7E42FFB88462FFE7A59AFFF4D5CEFFFBF7F4FFFDFBFAFFFEFEFDFFEECF
                        C4FFD3AC9EFFF3C8B4FFFFFFFFFFFDEAE4FFE3C0B4FFEDFCFEFFEDF2F2FFEDF1
                        F1FFEAF2F4FFEDB79DFFFEF3E4FFD59F87FF0B9E0EFF19D945FF33EC69FF31DB
                        65FF32D35AFF27B736FF3D760CFF9D410DFFF5D7D0FFFEFEFEFFFDFBF9FFFFFF
                        FFFFFFF5F1FFFFFFFFFFFEFEFFFFFCEFEBFFD8BDB2FFF0FEFEFFECF1F1FFEDF3
                        F3FFE8E9E8FFF2B89CFFFFF7E9FFE58970FF368C18FF1BD949FF40D557FFC7D6
                        B3FF70D985FF35E05EFF02CF31FF5D8228FFFFE8ECFFFCFFFDFFFEFFFFFFFFFF
                        FFFFFFFFFFFFFDFFFEFFFEFFFFFFF3DBD3FFD6C4BDFFF3FEFEFFECF0F0FFEDF5
                        F7FFE8DFDBFFF7C2A7FFFEF1E2FFEC8063FFB16F39FF1CAE25FF67AB7EFFCEC7
                        E1FF89BC7EFF15D642FF0FAA1EFFAF8453FFFEFDFEFFF9D3C3FFFAB9A2FFFBCC
                        BBFFFCDDD1FFFCEDE7FFFFFEFDFFE9CBC0FFD8CFCBFFF4FCFDFFECEFEEFFECF7
                        F9FFE8D1C8FFFBCEB5FFFCE3D2FFE47F5AFFF5744CFF8F8485FF6CBCFAFF78BF
                        FEFF60A5C6FF459730FFAA6C2FFFF19B87FFFEFFFDFFFDF6F1FFFDEDE6FFFCDD
                        D1FFFBCCBBFFFAB9A2FFFED4C4FFE3C4B8FFE1E0DEFFF0F6F6FFECEFEEFFECF8
                        FAFFE8C5B7FFFEDBC3FFF9D1BBFFF07F58FFDC8062FF7EB6F0FFA9DDFFFFB5DD
                        FDFF7AC5FFFFC67D7CFFF66C42FFEEBDA7FFFFFCF7FFFABEA8FFFBC4AFFFFCD6
                        C8FFFDE7DDFFFDF1EBFFFEF8F4FFDCB9ADFFE6EDEDFFEDF1F1FFEDF0EFFFEBF5
                        F7FFEDC2B0FFFFE5CEFFF8BDA2FFFC885FFFC37762FF6BACE0FFC7EBFFFFCFEC
                        FFFF82CBFFFFB8857FFFF47B4DFFF7D1C0FFFFFBF5FFFDEFE5FFFDE5D9FFFCD6
                        C6FFFBC8B4FFFBBCA4FFFDDACCFFD4B9AEFFEBF4F5FFEBEFEEFFEDF3F3FFE9EE
                        EEFFF0C0ADFFFDE7CFFFF6AA88FFF98A63FFDD8163FF325F89FF2A73ACFF4489
                        BFFF517CA5FFDD7D5DFFF78B65FFFBE4D5FFFDE2D3FFFAB9A0FFFBCAB5FFFCD7
                        C8FFFDE4D8FFFEF3ECFFF9E2D7FFD6BEB5FFEEF8FAFFEBEFEEFFEEF7F9FFE6E2
                        E0FFF0C2ADFFFFE5CDFFFFA98BFFFC9371FFFE936BFFA36B62FF224773FF2644
                        6BFFAE6A5BFFFE8B61FFF49473FFFEEADAFFFEEDDFFFFDDFCFFFFCD5C2FFFCCA
                        B5FFFABDA5FFFDC4AEFFF1CCBDFFD9CCC6FFF0F9FAFFEBEFEFFFEBFBFDFFEDDC
                        D6FFFFD1C0FFC6CB9BFFA7BB7DFFE5C7A1FFFED1B2FFFFCDAAFFFCBF9FFFFCB6
                        96FFFFB28EFFF79D7BFFFAAC8DFFFEEBDAFFFEEADAFFFEEFE1FFFFF3E7FFFFF6
                        ECFFFEF6ECFFFFFEF6FFE6C1B1FFDBD6D3FFF0F7F8FFECF0F1FFF6FAFEFFE4E1
                        E0FFAE997FFF34C050FF3BEF76FF57C669FFF2C5ABFFFBD1B6FFFFD6BBFFFFDD
                        C3FFFEE0C8FFFFE5CEFFFEE4CEFFFEE3CEFFFEE6D2FFFFE7D5FFFEE9D8FFFEEA
                        DAFFFDEBDCFFFEF3E6FFE1B9A8FFE2E5E5FFEFF4F4FFECF1F1FFBDCEBDFF32A6
                        41FF1BAB35FF39D45CFF4FF27AFF41C761FFC5B5AFFFFFDCDCFFF2D2C8FFF0CB
                        BDFFF3C8B8FFF6BEA9FFFDDFCFFFFEE3CCFFFEE1C9FFFEE4CFFFFEE6D2FFFEE8
                        D5FFFEEADAFFFFE9D7FFD8B1A2FFEAF2F4FFECF1F0FFEDF2F2FF7CB985FF28CC
                        45FF21CD3AFF2DD04BFF3ADB5DFF42DD68FF46C066FF65B17AFFDBE7E7FFF0F9
                        FCFFEAF9FCFFECDBD5FFFCD6C7FFFFEAD3FFFEDCC0FFFFE1C8FFFEE2CAFFFDE2
                        CCFFFFF1DEFFEEC1A9FFD1C1BBFFF0FAFBFFEBEFEFFFECF1F1FF90BF96FF3AC8
                        5CFF19C336FF1EC436FF2DCF4BFF3BDB5FFF4EF77BFF2EC854FFB3C3B4FFFAFA
                        FDFFEBF1F0FFECEAE7FFF8C5B4FFFED5BFFFFDCFB3FFFFD5BBFFFFDAC0FFFFDF
                        C7FFFDD3B7FFDCAE9BFFE6EFF1FFEEF2F2FFECF1F1FFEDF2F2FFE7EDEAFFC4D8
                        C7FF67B06EFF0DB020FF21C73AFF30CE4EFF41E76EFF33BC51FFC7D2CAFFF5F8
                        FBFFEBF0EFFFECF3F4FFEDE5E1FFEFD1C6FFEFD4CBFFF2CABCFFF2CDBFFFF5C4
                        B1FFEBC5B7FFEAEBEAFFEDF4F4FFECF1F1FFEDF2F2FFEDF2F2FFE9EFEFFFFFFF
                        FFFFBDD4C1FF13B72DFF17CA30FF1BAB2EFF6FAF7BFFADD3B5FFF5F4F7FFEBF1
                        F0FFEDF2F2FFEDF1F1FFECF4F5FFECF8FAFFECF7F9FFECF7F8FFECF5F7FFEBF3
                        F4FFECF7F9FFEDF4F4FFECF1F1FFEDF2F2FFECF1F1FFEDF2F2FFE9EFEEFFF3F5
                        F8FFC2D8C6FF41B957FF3ED463FF45A553FFF1E8F1FFF9F9FEFFEBF1F0FFEDF2
                        F2FFECF1F1FFECF2F2FFEDF1F1FFEDF0F0FFEDF1F0FFEDF1F0FFEDF1F0FFEDF1
                        F1FFEDF0F0FFECF1F1FFEDF2F2FFECF1F1FFEDF2F2FFEDF2F2FFEDF2F2FFEAF0
                        EFFFF7F7FBFFD9DCD9FF89B28CFFCBD6D0FFF5F9F9FFE6EEECFFEDF2F2FFECF1
                        F1FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2
                        F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FF}
                      OnClick = sbLoadPhotoClick
                    end
                    object ImageEnDBView1: TImageEnDBView
                      Left = 3
                      Top = 3
                      Width = 115
                      Height = 153
                      Cursor = crDefault
                      ParentCtl3D = False
                      AutoFit = True
                      BackgroundStyle = iebsPhotoLike
                      ImageEnVersion = '3.1.2'
                      EnableInteractionHints = True
                      TabOrder = 0
                      DataField = 'Photo'
                      DataSource = DM.DSStudentData
                      PreviewFont.Charset = DEFAULT_CHARSET
                      PreviewFont.Color = clWindowText
                      PreviewFont.Height = -11
                      PreviewFont.Name = 'Tahoma'
                      PreviewFont.Style = []
                    end
                    object GroupBox5: TGroupBox
                      Left = 135
                      Top = 3
                      Width = 635
                      Height = 49
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 1
                      object Label10: TLabel
                        Left = 16
                        Top = 3
                        Width = 50
                        Height = 13
                        Caption = #1060#1072#1084#1080#1083#1080#1103
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label12: TLabel
                        Left = 152
                        Top = 3
                        Width = 23
                        Height = 13
                        Caption = #1048#1084#1103
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label13: TLabel
                        Left = 288
                        Top = 3
                        Width = 56
                        Height = 13
                        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object SpeedButton21: TSpeedButton
                        Left = 418
                        Top = 16
                        Width = 87
                        Height = 30
                        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
                        Glyph.Data = {
                          36090000424D3609000000000000360000002800000018000000180000000100
                          20000000000000090000232E0000232E00000000000001000000EDF2F2FFEDF2
                          F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFECF1
                          F1FFEDF2F2FFECF1F1FFEBF0F0FFECF1F1FFEDF2F2FFECF1F1FFEDF2F2FFECF1
                          F1FFECF1F1FFEDF2F2FFECF1F1FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2
                          F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFECF1F1FFEDF2
                          F2FFEAF0F0FFF0F5F5FFF2F7F7FFEDF3F3FFECF1F1FFECF1F1FFECF1F1FFEEF3
                          F3FFEEF3F3FFECF1F1FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2
                          F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFECF1F1FFEDF2F2FFECF1F1FFEAF1
                          F1FFF7F8F7FFE1E3E2FFC9CDCDFFE9EBEBFFF0F5F6FFF1F6F6FFEEF4F4FFE6EC
                          ECFFE4E9E9FFEDF2F2FFECF1F1FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2
                          F2FFEDF2F2FFEDF2F2FFEDF2F2FFECF1F1FFEDF2F2FFEBF0F0FFEDF3F3FFFAF6
                          F5FFCCD7D8FF79DCE8FF72C8D4FFD9DBDBFFE5E9E9FFD4D9D9FFCFD1D1FFC2C3
                          C3FFDADEDEFFF0F5F5FFECF1F1FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2
                          F2FFECF1F1FFEDF2F2FFECF1F1FFECF1F1FFEBF0F0FFF5F8F8FFEDECEBFF9AC7
                          CDFF58C9D8FF4EB2BDFF68C0CBFFBACCCEFFD9D6D6FFDFDEDEFFF2F1F1FFE4E2
                          E2FFD1D4D4FFF1F6F6FFEBF0F0FFECF1F1FFEDF2F2FFEDF2F2FFEDF2F2FFECF1
                          F1FFEBF0F0FFEDF1F1FFEFF4F4FFF0F6F6FFF1F6F6FFCED7D7FF74A9AFFF70C2
                          CDFFAFDADFFFA6A9ACFF8D9298FFD0C9C6FFFFFDFBFFF3F3F3FFF0F0F0FFF0EF
                          EFFFCDCFCFFFEBF0F0FFECF1F1FFEDF2F2FFEDF2F2FFEDF2F2FFECF1F1FFEDF2
                          F2FFF3F8F8FFEBF0F0FFE3E8E8FFD6DADAFFD0D1D1FFB9C7C8FFD6E5E7FFFBF3
                          F2FFFEF5F3FFFBFBFCFFD0E1EDFF557C9DFF9CA5ADFFFFFBF7FFEDEEF0FFF6F4
                          F4FFD0D0D0FFDCE1E1FFEFF4F4FFECF1F1FFECF1F1FFEDF2F2FFF4F9F9FFDBDF
                          DFFFA0A4A4FFD9DBDBFFD6D6D6FFE5E5E5FFF0EFEFFFFDFAF9FFFAF5F5FFF1F1
                          F1FFEEF0F1FFF5F1EFFFDDE8F2FF67B7FCFF2068A6FF9EA4AAFFFFFCF8FFF2F3
                          F4FFE3E2E2FFC8CCCCFFEFF5F5FFECF1F1FFEDF2F2FFEDF2F2FFEFF4F4FFEFF5
                          F5FF8A8685FFE7E1E1FFFCFCFCFFF5F4F4FFF4F4F4FFF4F3F3FFF2F2F2FFF3F2
                          F2FFF3F2F2FFF2F1F2FFF7F3F0FFCFE2F2FF6CBAFDFF236CABFF979EA6FFFFFB
                          F7FFEEEEF0FFC6C7C7FFE5EBEBFFEEF2F2FFECF1F1FFEDF2F2FFE6EBECFFDCD6
                          D5FF90BBC1FFB0DDE2FFFFF8F7FFF5F5F6FFF2F1F1FFEAE9E9FFF2F1F1FFF4F3
                          F3FFF3F2F2FFF2F2F2FFF2F2F3FFFDF6F1FFD6E4F1FF70BCFDFF206DAEFF8D98
                          A2FFFFFFFBFFC9CACCFFC2C6C6FFF3F7F7FFEBF0F0FFECF1F1FF6C6867FF6BAC
                          B4FF6CF2FCFF77E6F6FFE5E8E8FFDCDADAFFC9C8C8FFD5D4D4FFF2F1F1FFF4F4
                          F4FFF6F5F5FFF5F5F5FFF3F2F2FFF1F2F3FFFEF8F3FFDDE9F4FF79C3FFFF2471
                          B4FF8C99A4FFE8E2DEFFADB2B3FFEDF2F2FFECF1F1FFEDF2F2FFDCDADAFF6EA3
                          AAFF64E1ECFF6EF2FFFFACE2E9FFD9D0CFFFD1D2D2FFF3F3F3FFFBFAFAFFF5F5
                          F5FFEBEBEBFFEDECECFFF9F9F9FFF4F3F3FFEDEDEFFFF1ECE8FFC5CED6FF76BC
                          F9FF2575BAFF7E8D9BFFB9B5B0FFE1E7E8FFF0F5F5FFECF1F1FFF7FCFCFFECE8
                          E7FF709EA5FF62E3EFFF7DEEFBFFE3E8E9FFF3F0F0FFE9E8E8FFDDDDDDFFD2D1
                          D1FFCDCCCCFFD7D6D6FFD9D9D9FFD6D5D5FFD5D5D5FFD0D1D2FFD9D4D0FFC1C7
                          CCFF7BBEF8FF297BC1FF627584FFD7D6D1FFEEF4F5FFECF0F0FFE9EEEEFFF0F7
                          F7FFEDEAE9FF71A1A8FF58E0EFFFB2EDF4FFDACFCEFFCDCECEFFD4D3D3FFD3D2
                          D2FFD5D5D5FFD2D2D2FFD1D0D0FFD3D3D3FFCDCDCDFFD9D9D9FFD4D5D6FFD8D5
                          D2FFCACED2FF84C3F9FF2A7EC6FF496173FFD6D7D1FFF3F9FBFFEDF2F2FFEAF0
                          F0FFF2F7F7FFE9E7E5FF6DA4ACFF6BE1EFFFDEE5E6FFCAC7C7FFD7D7D7FFD2D2
                          D2FFD3D3D3FFD9D9D9FFD6D6D6FFD5D4D4FFD9D9D9FFD6D6D6FFD5D5D4FFD5D5
                          D6FFDDD9D6FFCED0D3FF96CFFDFF739ECAFF737484FFC5C9C5FFECF1F1FFEDF2
                          F2FFEAEFEFFFF2F8F8FFE7E4E3FF53959EFF9EE0E9FFE3DAD9FFD3D3D3FFD9D8
                          D8FFCFCFCFFFCECECEFFD7D6D6FFD3D3D3FFDBDBDBFFD2D2D2FFD1D1D1FFD2D2
                          D2FFD6D7D7FFF0EEEDFFF6F5F2FFC3C8ECFF7F7AA4FFBABFBAFFEDF2F2FFECF1
                          F1FFEDF2F2FFEAEFEFFFF4F9F9FFDBDEDDFF5E9097FFD1DCDEFFDAD8D8FFCDCE
                          CEFFD3D3D3FFD1D1D1FFD1D1D1FFD1D0D0FFCFCFCFFFD8D8D8FFD9D8D8FFDFDE
                          DEFFEAEAEAFFF5F5F6FFFFFFFFFFA6A3A3FF6B6D71FFFFFFFFFFEDF2F2FFEDF2
                          F2FFECF1F1FFEDF2F2FFEAEFEFFFF8FCFCFFCCD1D1FF8E9495FFDFDEDEFFCDCD
                          CDFFD9D8D8FFDBDBDBFFE4E3E3FFE7E7E7FFECEBEBFFF4F4F4FFFBFBFBFFFFFF
                          FFFFFFFFFFFFFFFEFEFFFFFFFFFFDBDBDBFF4A4C4BFFF8FBFBFFEDF2F2FFEDF2
                          F2FFEDF2F2FFECF1F1FFEDF2F2FFE8EDEDFFFBFFFFFF9D9F9EFFC6C6C6FFF4F5
                          F5FFEEEEEEFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF3F3F3FFE6E6
                          E6FFD6D6D6FFC9C9C9FFC2C3C3FFBDBFBFFFC7CACAFFF0F5F5FFEDF2F2FFEDF2
                          F2FFEDF2F2FFEDF2F2FFECF1F1FFECF1F1FFF1F6F6FFD9DEDEFF919191FFEAEA
                          EAFFE2E1E1FFF1F1F1FFE9E8E8FFD9D9D9FFCCCCCCFFC3C5C5FFC2C4C4FFC8CB
                          CBFFCFD3D3FFDBE0E0FFE7ECECFFEFF5F5FFF4F9F9FFECF1F1FFEDF2F2FFEDF2
                          F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEAEFEFFFF5FAFAFFB9BCBCFFC4C4
                          C4FFCCCDCDFFC8CACAFFCACDCDFFD2D6D6FFDEE3E3FFE8EDEDFFEFF5F5FFF3F8
                          F8FFF3F8F8FFF1F6F6FFEEF3F3FFECF0F0FFEBF0F0FFEDF2F2FFEDF2F2FFEDF2
                          F2FFEDF2F2FFEDF2F2FFEDF2F2FFECF1F1FFEDF2F2FFECF1F1FFF3F8F8FFE5EA
                          EAFFE9EEEEFFF0F5F5FFF3F8F8FFF2F8F8FFF0F5F5FFEDF2F2FFECF1F1FFECF0
                          F0FFECF1F1FFECF1F1FFEDF2F2FFECF1F1FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2
                          F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEBF0F0FFEFF4
                          F4FFEDF2F2FFECF1F1FFECF1F1FFECF0F0FFECF1F1FFEDF2F2FFECF1F1FFECF1
                          F1FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2
                          F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2
                          F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2
                          F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FFEDF2F2FF}
                        OnClick = SpeedButton21Click
                      end
                      object SpeedButton22: TSpeedButton
                        Left = 511
                        Top = 16
                        Width = 89
                        Height = 30
                        Caption = #1048#1089#1090#1086#1088#1080#1103
                        Glyph.Data = {
                          F6060000424DF606000000000000360000002800000018000000180000000100
                          180000000000C0060000232E0000232E00000000000000000000F0CAA6F0CAA6
                          F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CA
                          A6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0
                          CAA6F0CAA6F0CAA6F0CAA622434B2C5055284C54284C54284C54294C54284C54
                          294C542B4F562A4E55425E685B6F7C586B77596B78576B775A6E7B3B59602243
                          4BF0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA681D8E0A7FFFFA4FFFFA7FFFFA7
                          FFFFA7FFFFA7FFFFA7FFFF9FFFFF9EFFFF99FFFF94E3EA96D0D996D2DB96D4DE
                          92EBF1A2FFFF7FD7DFF0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA67BC9D09EFB
                          FB70C8DB69C2D76BC4D86AC3D86AC2D76CC5D990EFF693F8FB94D8E196C3CE94
                          C2CC92B9C394C8D194BCC69BEEF476CBD2F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6
                          F0CAA680CCD4A5FFFF81D9E87CD6E67CD7E77BD7E779D6E67AD7E795F7FD98FB
                          FF98D2DC99C9D397B9C294A2AD94BBC496C2CC9EDBE478D0D7F0CAA6F0CAA6F0
                          CAA6F0CAA6F0CAA6F0CAA684CDD4A9FFFF9BF4FA9AF6FD98F6FD97F6FD95F6FC
                          93F6FD8DEDF68BEFF78FC9D691C5D090C1CD90B0BD8FC1CD8EB9C69ADFE978D0
                          D7F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA688CDD4AFFFFF74C4D969BBD36B
                          BDD569BDD568BDD467BDD567BED464BDD56EBBD07AA6BB7AAABE7CAABC76A2B8
                          70A2B98DEBF37BCFD6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA68CCED4B5FF
                          FF81CFE077C8DD78CADE76CADE75CADE73CADD72CADE71C9DD6ECADD6EC1D66E
                          A7BE6E9BB36FAFC569BED48FF1F77ACED5F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6
                          F0CAA691CED4BAFFFF88D3E280CDDF80CEE07ECFE07CCEE07ACEE078CEE077CE
                          E176CDE075CFE274D1E472D1E372D1E36EC8DC90F1F77ACFD6F0CAA6F0CAA6F0
                          CAA6F0CAA6F0CAA6F0CAA695CED4C0FFFF7DC5D972BCD373BFD571BED570BDD5
                          6EBED56DBED56BBED56ABDD569BDD567BCD467BCD466BDD55FB5CF8BECF57BD0
                          D6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA699CFD4C5FFFFC1FFFFC3FFFFBF
                          FFFFBCFFFFB9FFFFB6FFFFB3FFFFB0FFFFADFFFFAAFFFFA8FFFFA6FFFFA4FFFF
                          A1FFFFA1FFFF78CBD3F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA69DCFD4CCFF
                          FFAEECF2AAEBF3A9EBF4A6ECF4A3EBF4A1EBF49DEAF49BEAF499EAF496EAF494
                          EAF492E9F490E9F48BE6F09CFAFC7CCDD4F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6
                          F0CAA6A2CFD4D3FFFF71B2CA5FA3C262A7C461A6C45FA6C45EA6C45DA6C45CA6
                          C45AA5C459A5C458A5C457A5C457A7C54D9CBC8CE5F082D2D8F0CAA6F0CAA6F0
                          CAA6F0CAA6F0CAA6F0CAA6A6CFD4D8FFFF94CDDD89C6D98AC8DB87C7DB86C7DB
                          84C7DB82C7DB80C6DB7EC6DB7CC6DB7BC6DB79C6DB78C7DB6FBFD59AEFF684D0
                          D6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6AAD1D4DBFFFFD1FFFFD1FFFFCF
                          FFFFCCFFFFC9FFFFC6FFFFC3FFFFC0FFFFBDFFFFB9FFFFB6FFFFB4FFFFB0FFFF
                          ACFDFFB0FFFF84CCD3F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6ADD1D4DFFF
                          FFDEFFFAE2FFFDDEFFFDDCFFFDD9FFFDD6FFFDD4FFFDD0FFFDCDFFFDC9FFFDC6
                          FFFDC2FFFBBEFFFBBBFFF8B7FFFC87CBD2F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6
                          F0CAA6AFD0D4E6FFFF69BAFC51AEFF56B0FF55B1FF54B0FF53B0FF52B0FF51B0
                          FF50B0FF4FB0FF4EB1FF55BAFF57BCFF4AB3FFA2F6FF9BDBDCF0CAA6F0CAA6F0
                          CAA6F0CAA6F0CAA6F0CAA6B0D0D4E7FFFF8FD0FC80C8FF83CAFF7EC8FF7DC8FF
                          7CC8FF7AC8FF7AC8FF78C8FE77C8FF75C7FC549ED54E97CE4590CC79BCCC77AC
                          B0F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6B1D1D4E6FFFFE8FFFCEDFFFFEC
                          FFFFF9FFFFFAFFFFF6FFFFF4FFFFF2FFFFEDFFFCF1FFFFBCE1D94F747278B1AB
                          76ABA59EB0B1687D85F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6B0D1D4E7FF
                          FFD7FAFCD9FDFFD7FBFF5AB2FF45A5FF4AA8FF48A8FF48A8FF42A4FD5DB8FFA4
                          CCD270A6ADCDFFFFF0FFFFCFE3E6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6
                          F0CAA6AECED1E4FCFCD7F9F9DAFCFCD9FBFC97D4FC8DCEFC8FCFFC8FCFFC8ECF
                          FC89CCFA9CD8FCA7CED27E999EFCFFFFBCCDD0F0CAA6F0CAA6F0CAA6F0CAA6F0
                          CAA6F0CAA6F0CAA6F0CAA6BADBDDF3FFFFE5FFFFE8FFFFE9FFFFF6FFFFF8FFFF
                          F7FFFFF7FFFFF5FFFFF3FFFFFCFFFFB5DADB93AEB2CEDFE2F0CAA6F0CAA6F0CA
                          A6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA689A7ACB3CACCA9C8CAACCACCAC
                          CACCA9C8CCA8C8CCA8C8CCA8C8CCA8C8CCA7C7CBAEC9CC8BA8AD60777EF0CAA6
                          F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CA
                          A6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0
                          CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6}
                        OnClick = SpeedButton22Click
                      end
                      object DBEnameF: TDBEdit
                        Left = 3
                        Top = 22
                        Width = 134
                        Height = 21
                        DataField = 'NameF'
                        DataSource = DM.DSStudentData
                        Enabled = False
                        TabOrder = 0
                      end
                      object DBEnameI: TDBEdit
                        Left = 143
                        Top = 22
                        Width = 130
                        Height = 21
                        DataField = 'NameI'
                        DataSource = DM.DSStudentData
                        Enabled = False
                        TabOrder = 1
                      end
                      object DBEnameO: TDBEdit
                        Left = 279
                        Top = 22
                        Width = 133
                        Height = 21
                        DataField = 'NameO'
                        DataSource = DM.DSStudentData
                        Enabled = False
                        TabOrder = 2
                      end
                    end
                    object GroupBox6: TGroupBox
                      Left = 215
                      Top = 58
                      Width = 555
                      Height = 58
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 2
                      DesignSize = (
                        555
                        58)
                      object Label14: TLabel
                        Left = 27
                        Top = 3
                        Width = 95
                        Height = 13
                        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label15: TLabel
                        Left = 144
                        Top = 3
                        Width = 101
                        Height = 13
                        Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object DBDTEBirthDate: TDBDateTimeEditEh
                        Left = 11
                        Top = 22
                        Width = 119
                        Height = 21
                        DataField = 'BirthDate'
                        DataSource = DM.DSStudentData
                        EditButtons = <>
                        ShowHint = True
                        TabOrder = 0
                        Visible = True
                        EditFormat = 'DD.MM.YYYY'
                      end
                      object DBEBirthPlace: TDBEdit
                        Left = 136
                        Top = 22
                        Width = 407
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'BirthPlace'
                        DataSource = DM.DSStudentData
                        TabOrder = 1
                      end
                    end
                    object DBRadioGroup1: TDBRadioGroup
                      Left = 130
                      Top = 58
                      Width = 79
                      Height = 58
                      BiDiMode = bdLeftToRight
                      Caption = #1055#1086#1083
                      DataField = 'sex'
                      DataSource = DM.DSStudentData
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Items.Strings = (
                        #1078#1077#1085#1089#1082#1080#1081
                        #1084#1091#1078#1089#1082#1086#1081)
                      ParentBackground = True
                      ParentBiDiMode = False
                      ParentFont = False
                      TabOrder = 3
                      Values.Strings = (
                        'False'
                        'True')
                    end
                    object GroupBox1: TGroupBox
                      Left = 135
                      Top = 122
                      Width = 635
                      Height = 95
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 4
                      DesignSize = (
                        635
                        95)
                      object Label16: TLabel
                        Left = 14
                        Top = 49
                        Width = 179
                        Height = 13
                        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1079#1072#1074#1077#1076#1077#1085#1080#1103
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label17: TLabel
                        Left = 183
                        Top = 3
                        Width = 87
                        Height = 13
                        Caption = #1043#1086#1076' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label20: TLabel
                        Left = 16
                        Top = 3
                        Width = 76
                        Height = 13
                        Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label21: TLabel
                        Left = 293
                        Top = 3
                        Width = 112
                        Height = 13
                        Caption = #1048#1085#1086#1089#1090#1088#1072#1085#1085#1099#1081' '#1103#1079#1099#1082
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object DBLCBEducationLevel: TDBLookupComboBox
                        Left = 3
                        Top = 22
                        Width = 166
                        Height = 21
                        DataField = 'EducationLevel'
                        DataSource = DM.DSStudentData
                        KeyField = 'id'
                        ListField = 'eduType'
                        ListSource = DM.DSEducation
                        TabOrder = 0
                      end
                      object DBEEducationInstitution: TDBEdit
                        Left = 3
                        Top = 68
                        Width = 620
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'EducationInstitution'
                        DataSource = DM.DSStudentData
                        TabOrder = 1
                      end
                      object DBNEEducationEndYear: TDBNumberEditEh
                        Left = 175
                        Top = 22
                        Width = 106
                        Height = 21
                        DataField = 'EducationEndYear'
                        DataSource = DM.DSStudentData
                        EditButtons = <>
                        ShowHint = True
                        TabOrder = 2
                        Visible = True
                      end
                      object DBLookupComboBox1: TDBLookupComboBox
                        Left = 287
                        Top = 22
                        Width = 125
                        Height = 21
                        DataField = 'ForeignLanguage'
                        DataSource = DM.DSStudentData
                        KeyField = 'id'
                        ListField = 'language'
                        ListSource = DM.DSLanguage
                        TabOrder = 3
                      end
                    end
                    object GroupBox2: TGroupBox
                      Left = 135
                      Top = 223
                      Width = 635
                      Height = 50
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 5
                      object Label18: TLabel
                        Left = 328
                        Top = 3
                        Width = 69
                        Height = 13
                        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label19: TLabel
                        Left = 16
                        Top = 3
                        Width = 85
                        Height = 13
                        Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object DBEJobOrganization: TDBEdit
                        Left = 3
                        Top = 22
                        Width = 310
                        Height = 21
                        DataField = 'JobOrganization'
                        DataSource = DM.DSStudentData
                        TabOrder = 0
                      end
                      object DBEJobProfession: TDBEdit
                        Left = 319
                        Top = 22
                        Width = 93
                        Height = 21
                        DataField = 'JobProfession'
                        DataSource = DM.DSStudentData
                        TabOrder = 1
                      end
                    end
                  end
                  object TSStudentPassport: TTabSheet
                    Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
                    ImageIndex = 1
                    object GroupBox7: TGroupBox
                      Left = 0
                      Top = 0
                      Width = 773
                      Height = 102
                      Align = alTop
                      Caption = #1055#1072#1089#1087#1086#1088#1090
                      TabOrder = 0
                      DesignSize = (
                        773
                        102)
                      object Label25: TLabel
                        Left = 11
                        Top = 16
                        Width = 34
                        Height = 13
                        Caption = #1057#1077#1088#1080#1103
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label24: TLabel
                        Left = 95
                        Top = 16
                        Width = 37
                        Height = 13
                        Caption = #1053#1086#1084#1077#1088
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label22: TLabel
                        Left = 11
                        Top = 59
                        Width = 65
                        Height = 13
                        Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label23: TLabel
                        Left = 191
                        Top = 13
                        Width = 80
                        Height = 13
                        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object DBEdit1: TDBEdit
                        Left = 11
                        Top = 32
                        Width = 78
                        Height = 21
                        DataField = 'PassportSeries'
                        DataSource = DM.DSStudentData
                        TabOrder = 0
                      end
                      object DBEdit2: TDBEdit
                        Left = 95
                        Top = 32
                        Width = 90
                        Height = 21
                        DataField = 'PassportNumber'
                        DataSource = DM.DSStudentData
                        TabOrder = 1
                      end
                      object DBEdit3: TDBEdit
                        Left = 11
                        Top = 72
                        Width = 754
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'PassportIssueWho'
                        DataSource = DM.DSStudentData
                        TabOrder = 2
                      end
                      object DBDateTimeEditEh1: TDBDateTimeEditEh
                        Left = 191
                        Top = 32
                        Width = 111
                        Height = 21
                        DataField = 'PassportIssueDate'
                        DataSource = DM.DSStudentData
                        EditButtons = <>
                        ShowHint = True
                        TabOrder = 3
                        Visible = True
                        EditFormat = 'dd.mm.yyyy'
                      end
                    end
                    object GroupBox3: TGroupBox
                      Left = 0
                      Top = 102
                      Width = 773
                      Height = 131
                      Align = alTop
                      TabOrder = 1
                      DesignSize = (
                        773
                        131)
                      object Label26: TLabel
                        Left = 19
                        Top = 59
                        Width = 113
                        Height = 13
                        Caption = #1040#1076#1088#1077#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label66: TLabel
                        Left = 19
                        Top = 6
                        Width = 81
                        Height = 13
                        Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object DBEdit4: TDBEdit
                        Left = 18
                        Top = 86
                        Width = 754
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Registration'
                        DataSource = DM.DSStudentData
                        TabOrder = 0
                      end
                      object DBLookupComboboxEh10: TDBLookupComboboxEh
                        Left = 19
                        Top = 32
                        Width = 126
                        Height = 21
                        DataField = 'Citizenship'
                        DataSource = DM.DSStudentData
                        EditButtons = <>
                        KeyField = 'id'
                        ListField = 'Name'
                        ListSource = DM.DSCity
                        ShowHint = True
                        TabOrder = 1
                        Visible = True
                        OnCloseUp = DBLookupComboboxEh10CloseUp
                      end
                    end
                    object GroupBox4: TGroupBox
                      Left = 0
                      Top = 233
                      Width = 773
                      Height = 50
                      Align = alTop
                      TabOrder = 2
                      object Label27: TLabel
                        Left = 18
                        Top = 3
                        Width = 51
                        Height = 13
                        Caption = #1058#1077#1083#1077#1092#1086#1085
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object DBEdit5: TDBEdit
                        Left = 18
                        Top = 22
                        Width = 174
                        Height = 21
                        DataField = 'PhoneNumber'
                        DataSource = DM.DSStudentData
                        TabOrder = 0
                      end
                    end
                  end
                  object TabSheet1: TTabSheet
                    Caption = #1056#1086#1076#1080#1090#1077#1083#1080
                    ImageIndex = 3
                    TabVisible = False
                    object Panel3: TPanel
                      Left = 0
                      Top = 195
                      Width = 773
                      Height = 449
                      Align = alBottom
                      BorderStyle = bsSingle
                      TabOrder = 0
                      object Label40: TLabel
                        Left = 40
                        Top = 24
                        Width = 67
                        Height = 13
                        Caption = 'MotherNameF'
                        FocusControl = DBEdit19
                      end
                      object Label41: TLabel
                        Left = 196
                        Top = 21
                        Width = 68
                        Height = 13
                        Caption = 'MotherNameN'
                        FocusControl = DBEdit20
                      end
                      object Label42: TLabel
                        Left = 368
                        Top = 21
                        Width = 69
                        Height = 13
                        Caption = 'MotherNameO'
                        FocusControl = DBEdit21
                      end
                      object Label43: TLabel
                        Left = 30
                        Top = 75
                        Width = 112
                        Height = 13
                        Caption = 'MotherJobOrganization'
                        FocusControl = DBEdit22
                      end
                      object Label44: TLabel
                        Left = 40
                        Top = 128
                        Width = 101
                        Height = 13
                        Caption = 'MotherJobProfession'
                        FocusControl = DBEdit23
                      end
                      object Label45: TLabel
                        Left = 38
                        Top = 207
                        Width = 103
                        Height = 13
                        Caption = 'MotherActualAddress'
                        FocusControl = DBEdit24
                      end
                      object Label46: TLabel
                        Left = 38
                        Top = 248
                        Width = 131
                        Height = 13
                        Caption = 'MotherRegistrationAddress'
                        FocusControl = DBEdit25
                      end
                      object Label47: TLabel
                        Left = 204
                        Top = 180
                        Width = 103
                        Height = 13
                        Caption = 'MotherPhoneNumberl'
                        FocusControl = DBEdit26
                      end
                      object DBEdit19: TDBEdit
                        Left = 30
                        Top = 43
                        Width = 150
                        Height = 21
                        DataField = 'MotherNameF'
                        DataSource = DM.DSStudentData
                        TabOrder = 0
                      end
                      object DBEdit20: TDBEdit
                        Left = 196
                        Top = 40
                        Width = 150
                        Height = 21
                        DataField = 'MotherNameN'
                        DataSource = DM.DSStudentData
                        TabOrder = 1
                      end
                      object DBEdit21: TDBEdit
                        Left = 352
                        Top = 40
                        Width = 150
                        Height = 21
                        DataField = 'MotherNameO'
                        DataSource = DM.DSStudentData
                        TabOrder = 2
                      end
                      object DBEdit22: TDBEdit
                        Left = 30
                        Top = 94
                        Width = 1954
                        Height = 21
                        DataField = 'MotherJobOrganization'
                        DataSource = DM.DSStudentData
                        TabOrder = 3
                      end
                      object DBEdit23: TDBEdit
                        Left = 40
                        Top = 144
                        Width = 654
                        Height = 21
                        DataField = 'MotherJobProfession'
                        DataSource = DM.DSStudentData
                        TabOrder = 4
                      end
                      object DBCheckBox2: TDBCheckBox
                        Left = 40
                        Top = 184
                        Width = 97
                        Height = 17
                        Caption = 'MotherRegistrationEqualActual'
                        DataField = 'MotherRegistrationEqualActual'
                        DataSource = DM.DSStudentData
                        TabOrder = 5
                        ValueChecked = 'True'
                        ValueUnchecked = 'False'
                      end
                      object DBEdit24: TDBEdit
                        Left = 38
                        Top = 226
                        Width = 3904
                        Height = 21
                        DataField = 'MotherActualAddress'
                        DataSource = DM.DSStudentData
                        TabOrder = 6
                      end
                      object DBEdit25: TDBEdit
                        Left = 40
                        Top = 267
                        Width = 3904
                        Height = 21
                        DataField = 'MotherRegistrationAddress'
                        DataSource = DM.DSStudentData
                        TabOrder = 7
                      end
                      object DBEdit26: TDBEdit
                        Left = 204
                        Top = 199
                        Width = 654
                        Height = 21
                        DataField = 'MotherPhoneNumberl'
                        DataSource = DM.DSStudentData
                        TabOrder = 8
                      end
                    end
                    object Panel4: TPanel
                      Left = 0
                      Top = 0
                      Width = 773
                      Height = 220
                      Align = alTop
                      BorderStyle = bsSingle
                      TabOrder = 1
                      object Label5: TLabel
                        Left = 9
                        Top = 14
                        Width = 44
                        Height = 13
                        Caption = #1060#1072#1084#1080#1083#1080#1103
                        FocusControl = DBEdit11
                      end
                      object Label6: TLabel
                        Left = 184
                        Top = 14
                        Width = 19
                        Height = 13
                        Caption = #1048#1084#1103
                        FocusControl = DBEdit12
                      end
                      object Label7: TLabel
                        Left = 352
                        Top = 14
                        Width = 49
                        Height = 13
                        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
                        FocusControl = DBEdit13
                      end
                      object Label8: TLabel
                        Left = 7
                        Top = 60
                        Width = 72
                        Height = 13
                        Caption = #1052#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
                        FocusControl = DBEdit14
                      end
                      object Label9: TLabel
                        Left = 344
                        Top = 60
                        Width = 57
                        Height = 13
                        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
                        FocusControl = DBEdit15
                      end
                      object Label37: TLabel
                        Left = 196
                        Top = 106
                        Width = 3
                        Height = 13
                        FocusControl = DBEdit16
                      end
                      object Label38: TLabel
                        Left = 20
                        Top = 135
                        Width = 101
                        Height = 13
                        Caption = 'FatherActualAddress'
                        FocusControl = DBEdit17
                      end
                      object Label39: TLabel
                        Left = 22
                        Top = 181
                        Width = 84
                        Height = 13
                        Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
                        FocusControl = DBEdit18
                      end
                      object Label48: TLabel
                        Left = 9
                        Top = 0
                        Width = 26
                        Height = 13
                        Caption = #1054#1090#1077#1094
                      end
                      object DBEdit11: TDBEdit
                        Left = 7
                        Top = 33
                        Width = 150
                        Height = 21
                        DataField = 'FatherNameF'
                        DataSource = DM.DSStudentData
                        TabOrder = 0
                      end
                      object DBEdit12: TDBEdit
                        Left = 184
                        Top = 33
                        Width = 150
                        Height = 21
                        DataField = 'FatherNameN'
                        DataSource = DM.DSStudentData
                        TabOrder = 1
                      end
                      object DBEdit13: TDBEdit
                        Left = 352
                        Top = 33
                        Width = 150
                        Height = 21
                        DataField = 'FatherNameO'
                        DataSource = DM.DSStudentData
                        TabOrder = 2
                      end
                      object DBEdit14: TDBEdit
                        Left = 7
                        Top = 79
                        Width = 300
                        Height = 21
                        DataField = 'FatherJobOrganization'
                        DataSource = DM.DSStudentData
                        TabOrder = 3
                      end
                      object DBEdit15: TDBEdit
                        Left = 344
                        Top = 79
                        Width = 150
                        Height = 21
                        DataField = 'FatherJobProfession'
                        DataSource = DM.DSStudentData
                        TabOrder = 4
                      end
                      object DBCheckBox1: TDBCheckBox
                        Left = 20
                        Top = 112
                        Width = 197
                        Height = 17
                        Caption = 'FatherRegistrationEqualActual'
                        DataField = 'FatherRegistrationEqualActual'
                        DataSource = DM.DSStudentData
                        TabOrder = 5
                        ValueChecked = 'True'
                        ValueUnchecked = 'False'
                      end
                      object DBEdit16: TDBEdit
                        Left = 205
                        Top = 114
                        Width = 284
                        Height = 21
                        DataField = 'FatherRegistrationAddress'
                        DataSource = DM.DSStudentData
                        TabOrder = 6
                      end
                      object DBEdit17: TDBEdit
                        Left = 19
                        Top = 154
                        Width = 478
                        Height = 21
                        DataField = 'FatherActualAddress'
                        DataSource = DM.DSStudentData
                        TabOrder = 7
                      end
                      object DBEdit18: TDBEdit
                        Left = 127
                        Top = 181
                        Width = 114
                        Height = 21
                        DataField = 'FatherPhoneNumber'
                        DataSource = DM.DSStudentData
                        TabOrder = 8
                      end
                    end
                  end
                end
              end
              object TSStudentAcademic: TTabSheet
                BorderWidth = 10
                Caption = #1059#1095#1077#1073#1085#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072
                ImageIndex = 2
                object GroupBox8: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 761
                  Height = 49
                  Align = alTop
                  TabOrder = 0
                  object Label28: TLabel
                    Left = 11
                    Top = 3
                    Width = 141
                    Height = 13
                    Caption = #1053#1086#1084#1077#1088' '#1079#1072#1095#1077#1090#1085#1086#1081' '#1082#1085#1080#1078#1082#1080
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object sbSessionStudent: TSpeedButton
                    Left = 207
                    Top = 21
                    Width = 98
                    Height = 22
                    Caption = #1059#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1100
                    Flat = True
                    Glyph.Data = {
                      36050000424D3605000000000000360400002800000010000000100000000100
                      08000000000000010000230B0000230B00000001000000010000BD7B4200735A
                      4A00C6844A00CE8C4A00CE945200DEA56300634AAD00FFDEAD0073ADB500F7E7
                      B50073A5BD008CB5BD007363C6009C84E7009C8CEF0073F7F700FF00FF006BDE
                      FF0073EFFF007BF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00101010101010
                      1010101010101010101010000000000000000000000000000010100410101010
                      10101010101010101010100410020201100A0A0A100606061010100410030301
                      1011110A100C0C0610101004100303011011110A100C0C061010100410050500
                      1012120A100D0D06101010041005050010121208100D0D0C1010100410070700
                      100F0F0B100D0D0C10101004100707001013130B100E0E0C1010100410090902
                      10110B0B100E0E0C101010041009090210101010100E0E0C1010100410050505
                      10101010100C0C0C101010041010101010101010101010101010100410101010
                      1010101010101010101010101010101010101010101010101010}
                    OnClick = sbSessionStudentClick
                  end
                  object DBEdit6: TDBEdit
                    Left = 11
                    Top = 22
                    Width = 190
                    Height = 21
                    DataField = 'RecordBookNumber'
                    DataSource = DM.DSStudentData
                    TabOrder = 0
                  end
                end
                object GroupBox9: TGroupBox
                  Left = 0
                  Top = 49
                  Width = 761
                  Height = 56
                  Align = alTop
                  TabOrder = 1
                  object Label29: TLabel
                    Left = 11
                    Top = 7
                    Width = 106
                    Height = 13
                    Caption = #1059#1089#1083#1086#1074#1080#1103' '#1086#1073#1091#1095#1077#1085#1080#1103
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label30: TLabel
                    Left = 179
                    Top = 5
                    Width = 97
                    Height = 13
                    Caption = #1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label31: TLabel
                    Left = 352
                    Top = 8
                    Width = 166
                    Height = 13
                    Caption = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBLookupComboBox2: TDBLookupComboBox
                    Left = 11
                    Top = 26
                    Width = 145
                    Height = 21
                    DataField = 'EducationConditions'
                    DataSource = DM.DSStudentData
                    KeyField = 'id'
                    ListField = 'condition'
                    ListSource = DM.DSEducationContitions
                    TabOrder = 0
                    OnCloseUp = DBLookupComboBox2CloseUp
                  end
                  object DBEdit7: TDBEdit
                    Left = 176
                    Top = 26
                    Width = 170
                    Height = 21
                    DataField = 'AgreementNumber'
                    DataSource = DM.DSStudentData
                    TabOrder = 1
                  end
                  object DBDateTimeEditEh2: TDBDateTimeEditEh
                    Left = 352
                    Top = 26
                    Width = 121
                    Height = 21
                    DataField = 'AgreementDate'
                    DataSource = DM.DSStudentData
                    EditButtons = <>
                    Kind = dtkDateEh
                    ShowHint = True
                    TabOrder = 2
                    Visible = True
                  end
                end
                object GroupBox10: TGroupBox
                  Left = 0
                  Top = 105
                  Width = 761
                  Height = 95
                  Align = alTop
                  TabOrder = 2
                  DesignSize = (
                    761
                    95)
                  object Label32: TLabel
                    Left = 11
                    Top = 42
                    Width = 87
                    Height = 13
                    Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1082#1072#1079#1072
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label33: TLabel
                    Left = 187
                    Top = 42
                    Width = 31
                    Height = 13
                    Caption = #1044#1072#1090#1072
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBRadioGroup2: TDBRadioGroup
                    Left = 3
                    Top = 3
                    Width = 343
                    Height = 33
                    Columns = 2
                    DataField = 'AcceptedAsStudent'
                    DataSource = DM.DSStudentData
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Items.Strings = (
                      #1047#1072#1095#1080#1089#1083#1077#1085
                      #1047#1072#1095#1080#1089#1083#1077#1085' '#1087#1077#1088#1077#1074#1086#1076#1086#1084)
                    ParentBackground = True
                    ParentFont = False
                    TabOrder = 0
                    Values.Strings = (
                      'False'
                      'True')
                    OnChange = DBRadioGroup2Change
                  end
                  object DBEdit8: TDBEdit
                    Left = 11
                    Top = 61
                    Width = 170
                    Height = 21
                    DataField = 'AcceptedOrderNumber'
                    DataSource = DM.DSStudentData
                    TabOrder = 1
                  end
                  object DBDateTimeEditEh3: TDBDateTimeEditEh
                    Left = 187
                    Top = 61
                    Width = 121
                    Height = 21
                    DataField = 'AcceptedDate'
                    DataSource = DM.DSStudentData
                    EditButtons = <>
                    Kind = dtkDateEh
                    ShowHint = True
                    TabOrder = 2
                    Visible = True
                  end
                  object GroupBox12: TGroupBox
                    Left = 352
                    Top = 3
                    Width = 406
                    Height = 89
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    TabOrder = 3
                    DesignSize = (
                      406
                      89)
                    object Label34: TLabel
                      Left = 3
                      Top = 3
                      Width = 100
                      Height = 13
                      Caption = #1043#1086#1076' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label35: TLabel
                      Left = 3
                      Top = 42
                      Width = 85
                      Height = 13
                      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1074#1091#1079#1072
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBEdit9: TDBEdit
                      Left = 3
                      Top = 22
                      Width = 118
                      Height = 21
                      DataField = 'AcceptedYear'
                      DataSource = DM.DSStudentData
                      TabOrder = 0
                    end
                    object DBEdit10: TDBEdit
                      Left = 3
                      Top = 61
                      Width = 382
                      Height = 21
                      Anchors = [akLeft, akTop, akRight]
                      DataField = 'AcceptedFrom'
                      DataSource = DM.DSStudentData
                      TabOrder = 1
                    end
                  end
                end
                object GroupBox11: TGroupBox
                  Left = 0
                  Top = 200
                  Width = 761
                  Height = 55
                  Align = alTop
                  TabOrder = 3
                  object Label36: TLabel
                    Left = 11
                    Top = 7
                    Width = 41
                    Height = 13
                    Caption = #1057#1090#1072#1090#1091#1089
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label49: TLabel
                    Left = 181
                    Top = 6
                    Width = 42
                    Height = 13
                    Caption = #1051#1100#1075#1086#1090#1072
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBLookupComboBox3: TDBLookupComboBox
                    Left = 11
                    Top = 26
                    Width = 145
                    Height = 21
                    DataField = 'Status'
                    DataSource = DM.DSStudentData
                    KeyField = 'id'
                    ListField = 'status'
                    ListSource = DM.DSStatuses
                    TabOrder = 0
                    OnCloseUp = DBLookupComboBox3CloseUp
                  end
                  object DBLookupComboBox4: TDBLookupComboBox
                    Left = 176
                    Top = 25
                    Width = 145
                    Height = 21
                    DataField = 'Benefit'
                    DataSource = DM.DSStudentData
                    KeyField = 'id'
                    ListField = 'benefit'
                    ListSource = DM.DSBenefit
                    TabOrder = 1
                  end
                end
              end
              object TabSheet5: TTabSheet
                Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1048#1043#1040
                ImageIndex = 2
                object panel1iga: TPanel
                  Left = 0
                  Top = 0
                  Width = 781
                  Height = 157
                  Align = alTop
                  AutoSize = True
                  Color = clWhite
                  ParentBackground = False
                  TabOrder = 0
                  object SpeedButton4: TSpeedButton
                    Left = 295
                    Top = 134
                    Width = 23
                    Height = 22
                    Flat = True
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      20000000000000040000232E0000232E00000000000001000000EFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF9FCFDFF4D6A4EFF0A200BFF011E01FF002200FF0C33
                      0DFF385B39FFF0F3F4FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF9FDFDFF4A604CFF2C662BFF0F7E19FF1C9727FF3197
                      3BFF346037FFF1F2F5FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECEFF0FFFCFFFFFF405542FF217D1FFF0EB51BFF2DD33DFF2DB7
                      3BFF265C2AFFF4F3F8FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEEF2F2FFEEF2
                      F2FFEEF2F2FFEBEFEFFFFAFEFDFF425B44FF218020FF11B21EFF32D042FF32BD
                      3FFF26622BFFF2F2F7FFEDF2F1FFEEF2F2FFEEF2F2FFEEF2F2FFF1F4F5FFF2F6
                      F6FFF3F8F7FFF0F4F4FFFFFFFFFF426244FF1E871EFF0FAE1CFF2ECD3DFF2DBD
                      3CFF28642CFFFAF3FEFFF4F4F7FFF5F5F9FFF3F4F7FFF1F4F5FF345435FF314B
                      32FF2C452CFF2C482CFF2E492EFF113713FF379936FF069C12FF19BC29FF2EBC
                      3DFF034907FF245026FF235326FF234F25FF2B522DFF335634FF162E16FF1668
                      1CFF007106FF007809FF007F07FF0C9217FF2AAD2FFF007A0AFF0CA61CFF4FC9
                      59FF4DB754FF43B14AFF46AE4CFF46A84AFF439248FF0A3C0CFF042405FF0964
                      12FF008D0CFF04A914FF0EBA1EFF10BA20FF12AB20FF23932EFF32953CFF41B4
                      4CFF54C85EFF61D26BFF65D16EFF6BD275FF51A258FF002700FF022703FF096F
                      13FF10B01FFF37D045FF58E565FF66E872FF5AD966FF44C250FF3D9D46FF4193
                      4AFF4CA656FF58B261FF5EB467FF6CBA74FF548E59FF001A00FF0F3611FF217F
                      29FF2CA836FF4BC156FF5FD469FF71E07BFF82EA8AFF63D86DFF4CB856FF6FB4
                      74FF60A266FF4F8F53FF548A58FF5B8A5EFF5D8060FF112A12FF628063FF567C
                      5AFF437747FF408246FF448F4AFF0E6D15FF62CD6AFF7CE886FF60C86AFF59A0
                      5DFF134A17FF436C46FF415F44FF405141FF59675BFF6F8170FFF7FAFCFFF9FA
                      FDFFFBFBFFFFF9F8FCFFFFFFFFFF3D7341FF50BD58FF83E78CFF6ECD77FF478B
                      4AFF244B26FFFFFFFFFFFBFDFFFFFCFFFFFFF8FCFCFFF6F9FAFFECF1F0FFECF1
                      F0FFECF1F0FFE9EFEDFFFAFAFCFF3A6F3EFF4DAE54FF7CDB85FF74C27CFF508B
                      53FF234A26FFF2F4F6FFEBEFEFFFECF0F0FFECF0F0FFEDF1F1FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF1F0FFFDFCFFFF3A683DFF489F4DFF81CE88FF87C28DFF558B
                      58FF204322FFF5F7F9FFEDF1F1FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFFBFCFEFF446A47FF49864EFF6BA070FF6FA174FF5F86
                      61FF314E33FFF2F5F5FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF8FAFCFF547456FF18451CFF003002FF002400FF2D47
                      2FFF4E674FFFEDF0F0FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FF}
                    Visible = False
                    OnClick = SpeedButton4Click
                  end
                  object SpeedButton5: TSpeedButton
                    Left = 295
                    Top = 75
                    Width = 23
                    Height = 25
                    Flat = True
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      20000000000000040000232E0000232E00000000000001000000EFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF9FCFDFF4D6A4EFF0A200BFF011E01FF002200FF0C33
                      0DFF385B39FFF0F3F4FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF9FDFDFF4A604CFF2C662BFF0F7E19FF1C9727FF3197
                      3BFF346037FFF1F2F5FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECEFF0FFFCFFFFFF405542FF217D1FFF0EB51BFF2DD33DFF2DB7
                      3BFF265C2AFFF4F3F8FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEEF2F2FFEEF2
                      F2FFEEF2F2FFEBEFEFFFFAFEFDFF425B44FF218020FF11B21EFF32D042FF32BD
                      3FFF26622BFFF2F2F7FFEDF2F1FFEEF2F2FFEEF2F2FFEEF2F2FFF1F4F5FFF2F6
                      F6FFF3F8F7FFF0F4F4FFFFFFFFFF426244FF1E871EFF0FAE1CFF2ECD3DFF2DBD
                      3CFF28642CFFFAF3FEFFF4F4F7FFF5F5F9FFF3F4F7FFF1F4F5FF345435FF314B
                      32FF2C452CFF2C482CFF2E492EFF113713FF379936FF069C12FF19BC29FF2EBC
                      3DFF034907FF245026FF235326FF234F25FF2B522DFF335634FF162E16FF1668
                      1CFF007106FF007809FF007F07FF0C9217FF2AAD2FFF007A0AFF0CA61CFF4FC9
                      59FF4DB754FF43B14AFF46AE4CFF46A84AFF439248FF0A3C0CFF042405FF0964
                      12FF008D0CFF04A914FF0EBA1EFF10BA20FF12AB20FF23932EFF32953CFF41B4
                      4CFF54C85EFF61D26BFF65D16EFF6BD275FF51A258FF002700FF022703FF096F
                      13FF10B01FFF37D045FF58E565FF66E872FF5AD966FF44C250FF3D9D46FF4193
                      4AFF4CA656FF58B261FF5EB467FF6CBA74FF548E59FF001A00FF0F3611FF217F
                      29FF2CA836FF4BC156FF5FD469FF71E07BFF82EA8AFF63D86DFF4CB856FF6FB4
                      74FF60A266FF4F8F53FF548A58FF5B8A5EFF5D8060FF112A12FF628063FF567C
                      5AFF437747FF408246FF448F4AFF0E6D15FF62CD6AFF7CE886FF60C86AFF59A0
                      5DFF134A17FF436C46FF415F44FF405141FF59675BFF6F8170FFF7FAFCFFF9FA
                      FDFFFBFBFFFFF9F8FCFFFFFFFFFF3D7341FF50BD58FF83E78CFF6ECD77FF478B
                      4AFF244B26FFFFFFFFFFFBFDFFFFFCFFFFFFF8FCFCFFF6F9FAFFECF1F0FFECF1
                      F0FFECF1F0FFE9EFEDFFFAFAFCFF3A6F3EFF4DAE54FF7CDB85FF74C27CFF508B
                      53FF234A26FFF2F4F6FFEBEFEFFFECF0F0FFECF0F0FFEDF1F1FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF1F0FFFDFCFFFF3A683DFF489F4DFF81CE88FF87C28DFF558B
                      58FF204322FFF5F7F9FFEDF1F1FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFFBFCFEFF446A47FF49864EFF6BA070FF6FA174FF5F86
                      61FF314E33FFF2F5F5FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF8FAFCFF547456FF18451CFF003002FF002400FF2D47
                      2FFF4E674FFFEDF0F0FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FF}
                    OnClick = SpeedButton5Click
                  end
                  object SpeedButton6: TSpeedButton
                    Left = 295
                    Top = 106
                    Width = 23
                    Height = 22
                    Flat = True
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      20000000000000040000232E0000232E00000000000001000000EFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF9FCFDFF4D6A4EFF0A200BFF011E01FF002200FF0C33
                      0DFF385B39FFF0F3F4FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF9FDFDFF4A604CFF2C662BFF0F7E19FF1C9727FF3197
                      3BFF346037FFF1F2F5FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECEFF0FFFCFFFFFF405542FF217D1FFF0EB51BFF2DD33DFF2DB7
                      3BFF265C2AFFF4F3F8FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEEF2F2FFEEF2
                      F2FFEEF2F2FFEBEFEFFFFAFEFDFF425B44FF218020FF11B21EFF32D042FF32BD
                      3FFF26622BFFF2F2F7FFEDF2F1FFEEF2F2FFEEF2F2FFEEF2F2FFF1F4F5FFF2F6
                      F6FFF3F8F7FFF0F4F4FFFFFFFFFF426244FF1E871EFF0FAE1CFF2ECD3DFF2DBD
                      3CFF28642CFFFAF3FEFFF4F4F7FFF5F5F9FFF3F4F7FFF1F4F5FF345435FF314B
                      32FF2C452CFF2C482CFF2E492EFF113713FF379936FF069C12FF19BC29FF2EBC
                      3DFF034907FF245026FF235326FF234F25FF2B522DFF335634FF162E16FF1668
                      1CFF007106FF007809FF007F07FF0C9217FF2AAD2FFF007A0AFF0CA61CFF4FC9
                      59FF4DB754FF43B14AFF46AE4CFF46A84AFF439248FF0A3C0CFF042405FF0964
                      12FF008D0CFF04A914FF0EBA1EFF10BA20FF12AB20FF23932EFF32953CFF41B4
                      4CFF54C85EFF61D26BFF65D16EFF6BD275FF51A258FF002700FF022703FF096F
                      13FF10B01FFF37D045FF58E565FF66E872FF5AD966FF44C250FF3D9D46FF4193
                      4AFF4CA656FF58B261FF5EB467FF6CBA74FF548E59FF001A00FF0F3611FF217F
                      29FF2CA836FF4BC156FF5FD469FF71E07BFF82EA8AFF63D86DFF4CB856FF6FB4
                      74FF60A266FF4F8F53FF548A58FF5B8A5EFF5D8060FF112A12FF628063FF567C
                      5AFF437747FF408246FF448F4AFF0E6D15FF62CD6AFF7CE886FF60C86AFF59A0
                      5DFF134A17FF436C46FF415F44FF405141FF59675BFF6F8170FFF7FAFCFFF9FA
                      FDFFFBFBFFFFF9F8FCFFFFFFFFFF3D7341FF50BD58FF83E78CFF6ECD77FF478B
                      4AFF244B26FFFFFFFFFFFBFDFFFFFCFFFFFFF8FCFCFFF6F9FAFFECF1F0FFECF1
                      F0FFECF1F0FFE9EFEDFFFAFAFCFF3A6F3EFF4DAE54FF7CDB85FF74C27CFF508B
                      53FF234A26FFF2F4F6FFEBEFEFFFECF0F0FFECF0F0FFEDF1F1FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF1F0FFFDFCFFFF3A683DFF489F4DFF81CE88FF87C28DFF558B
                      58FF204322FFF5F7F9FFEDF1F1FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFFBFCFEFF446A47FF49864EFF6BA070FF6FA174FF5F86
                      61FF314E33FFF2F5F5FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF8FAFCFF547456FF18451CFF003002FF002400FF2D47
                      2FFF4E674FFFEDF0F0FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FF}
                    Visible = False
                    OnClick = SpeedButton6Click
                  end
                  object Label51: TLabel
                    Left = 11
                    Top = 1
                    Width = 133
                    Height = 13
                    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1082#1079#1072#1084#1077#1085#1086#1074
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label52: TLabel
                    Left = 11
                    Top = 56
                    Width = 230
                    Height = 13
                    Caption = #1048#1090#1086#1075#1086#1074#1099#1077' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1099#1077' '#1101#1082#1079#1072#1084#1077#1085#1099
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label53: TLabel
                    Left = 380
                    Top = 56
                    Width = 44
                    Height = 13
                    Caption = #1054#1094#1077#1085#1082#1072
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBLookupComboboxEh1: TDBLookupComboboxEh
                    Left = 348
                    Top = 75
                    Width = 133
                    Height = 21
                    DataField = 'igaExam1Result'
                    DataSource = DM.DSStudentData
                    EditButtons = <>
                    KeyField = 'id'
                    ListField = 'res'
                    ListSource = DM.DSResult
                    ShowHint = True
                    TabOrder = 0
                    Visible = True
                  end
                  object DBLookupComboboxEh2: TDBLookupComboboxEh
                    Left = 348
                    Top = 106
                    Width = 133
                    Height = 21
                    EditButtons = <>
                    KeyField = 'id'
                    ListField = 'res'
                    ListSource = DM.DSResult
                    ShowHint = True
                    TabOrder = 1
                    Visible = False
                  end
                  object DBLookupComboboxEh3: TDBLookupComboboxEh
                    Left = 348
                    Top = 135
                    Width = 133
                    Height = 21
                    EditButtons = <>
                    KeyField = 'id'
                    ListField = 'res'
                    ListSource = DM.DSResult
                    ShowHint = True
                    TabOrder = 2
                    Visible = False
                  end
                  object DBEdit27: TDBEdit
                    Left = 11
                    Top = 75
                    Width = 278
                    Height = 21
                    DataField = 'igaExam1Name'
                    DataSource = DM.DSStudentData
                    TabOrder = 3
                  end
                  object DBEdit28: TDBEdit
                    Left = 11
                    Top = 104
                    Width = 278
                    Height = 21
                    DataField = 'igaExam2Name'
                    DataSource = DM.DSStudentData
                    TabOrder = 4
                    Visible = False
                  end
                  object DBEdit29: TDBEdit
                    Left = 11
                    Top = 134
                    Width = 278
                    Height = 21
                    DataField = 'igaExam3Name'
                    DataSource = DM.DSStudentData
                    TabOrder = 5
                    Visible = False
                  end
                  object DBLookupComboboxEh7: TDBLookupComboboxEh
                    Left = 11
                    Top = 20
                    Width = 133
                    Height = 21
                    DataField = 'igaExamCount'
                    DataSource = DM.DSStudentData
                    EditButtons = <>
                    KeyField = 'kol'
                    ListField = 'kol_1'
                    ListSource = DM.DSkol
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 6
                    Visible = True
                    OnCloseUp = DBLookupComboboxEh7CloseUp
                  end
                end
                object Panel7: TPanel
                  Left = 0
                  Top = 310
                  Width = 781
                  Height = 147
                  Align = alTop
                  TabOrder = 1
                  object Label57: TLabel
                    Left = 11
                    Top = 37
                    Width = 80
                    Height = 13
                    Caption = #8470' '#1087#1088#1086#1090#1086#1082#1086#1083#1072
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label58: TLabel
                    Left = 348
                    Top = 37
                    Width = 31
                    Height = 13
                    Caption = #1044#1072#1090#1072
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label59: TLabel
                    Left = 11
                    Top = 13
                    Width = 275
                    Height = 13
                    Caption = #1055#1088#1086#1090#1086#1082#1086#1083' '#1086' '#1087#1088#1080#1089#1074#1086#1077#1085#1080#1080' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080'/'#1089#1090#1077#1087#1077#1085#1080
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label60: TLabel
                    Left = 11
                    Top = 88
                    Width = 194
                    Height = 13
                    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1080'/'#1089#1090#1077#1087#1077#1085#1080
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEdit33: TDBEdit
                    Left = 11
                    Top = 56
                    Width = 278
                    Height = 21
                    DataField = 'igaProtocolNumber'
                    DataSource = DM.DSStudentData
                    TabOrder = 0
                  end
                  object DBLookupComboboxEh8: TDBLookupComboboxEh
                    Left = 11
                    Top = 107
                    Width = 470
                    Height = 21
                    EditButtons = <>
                    ShowHint = True
                    TabOrder = 1
                    Visible = True
                  end
                  object DBDateTimeEditEh4: TDBDateTimeEditEh
                    Left = 348
                    Top = 56
                    Width = 133
                    Height = 21
                    DataField = 'igaProtocolDate'
                    DataSource = DM.DSStudentData
                    EditButtons = <>
                    Kind = dtkDateEh
                    ShowHint = True
                    TabOrder = 2
                    Visible = True
                  end
                end
                object Panel8: TPanel
                  Left = 0
                  Top = 157
                  Width = 781
                  Height = 153
                  Align = alTop
                  AutoSize = True
                  Color = clWhite
                  ParentBackground = False
                  TabOrder = 2
                  object Label54: TLabel
                    Left = 11
                    Top = 1
                    Width = 106
                    Height = 13
                    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1088#1072#1073#1086#1090
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label55: TLabel
                    Left = 11
                    Top = 56
                    Width = 289
                    Height = 13
                    Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1080' '#1079#1072#1097#1080#1090#1072' '#1082#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1086#1081' '#1088#1072#1073#1086#1090#1099
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object SpeedButton8: TSpeedButton
                    Left = 295
                    Top = 71
                    Width = 23
                    Height = 25
                    Flat = True
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      20000000000000040000232E0000232E00000000000001000000EFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF9FCFDFF4D6A4EFF0A200BFF011E01FF002200FF0C33
                      0DFF385B39FFF0F3F4FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF9FDFDFF4A604CFF2C662BFF0F7E19FF1C9727FF3197
                      3BFF346037FFF1F2F5FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECEFF0FFFCFFFFFF405542FF217D1FFF0EB51BFF2DD33DFF2DB7
                      3BFF265C2AFFF4F3F8FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEEF2F2FFEEF2
                      F2FFEEF2F2FFEBEFEFFFFAFEFDFF425B44FF218020FF11B21EFF32D042FF32BD
                      3FFF26622BFFF2F2F7FFEDF2F1FFEEF2F2FFEEF2F2FFEEF2F2FFF1F4F5FFF2F6
                      F6FFF3F8F7FFF0F4F4FFFFFFFFFF426244FF1E871EFF0FAE1CFF2ECD3DFF2DBD
                      3CFF28642CFFFAF3FEFFF4F4F7FFF5F5F9FFF3F4F7FFF1F4F5FF345435FF314B
                      32FF2C452CFF2C482CFF2E492EFF113713FF379936FF069C12FF19BC29FF2EBC
                      3DFF034907FF245026FF235326FF234F25FF2B522DFF335634FF162E16FF1668
                      1CFF007106FF007809FF007F07FF0C9217FF2AAD2FFF007A0AFF0CA61CFF4FC9
                      59FF4DB754FF43B14AFF46AE4CFF46A84AFF439248FF0A3C0CFF042405FF0964
                      12FF008D0CFF04A914FF0EBA1EFF10BA20FF12AB20FF23932EFF32953CFF41B4
                      4CFF54C85EFF61D26BFF65D16EFF6BD275FF51A258FF002700FF022703FF096F
                      13FF10B01FFF37D045FF58E565FF66E872FF5AD966FF44C250FF3D9D46FF4193
                      4AFF4CA656FF58B261FF5EB467FF6CBA74FF548E59FF001A00FF0F3611FF217F
                      29FF2CA836FF4BC156FF5FD469FF71E07BFF82EA8AFF63D86DFF4CB856FF6FB4
                      74FF60A266FF4F8F53FF548A58FF5B8A5EFF5D8060FF112A12FF628063FF567C
                      5AFF437747FF408246FF448F4AFF0E6D15FF62CD6AFF7CE886FF60C86AFF59A0
                      5DFF134A17FF436C46FF415F44FF405141FF59675BFF6F8170FFF7FAFCFFF9FA
                      FDFFFBFBFFFFF9F8FCFFFFFFFFFF3D7341FF50BD58FF83E78CFF6ECD77FF478B
                      4AFF244B26FFFFFFFFFFFBFDFFFFFCFFFFFFF8FCFCFFF6F9FAFFECF1F0FFECF1
                      F0FFECF1F0FFE9EFEDFFFAFAFCFF3A6F3EFF4DAE54FF7CDB85FF74C27CFF508B
                      53FF234A26FFF2F4F6FFEBEFEFFFECF0F0FFECF0F0FFEDF1F1FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF1F0FFFDFCFFFF3A683DFF489F4DFF81CE88FF87C28DFF558B
                      58FF204322FFF5F7F9FFEDF1F1FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFFBFCFEFF446A47FF49864EFF6BA070FF6FA174FF5F86
                      61FF314E33FFF2F5F5FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF8FAFCFF547456FF18451CFF003002FF002400FF2D47
                      2FFF4E674FFFEDF0F0FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FF}
                    OnClick = SpeedButton8Click
                  end
                  object SpeedButton9: TSpeedButton
                    Left = 295
                    Top = 102
                    Width = 23
                    Height = 22
                    Flat = True
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      20000000000000040000232E0000232E00000000000001000000EFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF9FCFDFF4D6A4EFF0A200BFF011E01FF002200FF0C33
                      0DFF385B39FFF0F3F4FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF9FDFDFF4A604CFF2C662BFF0F7E19FF1C9727FF3197
                      3BFF346037FFF1F2F5FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECEFF0FFFCFFFFFF405542FF217D1FFF0EB51BFF2DD33DFF2DB7
                      3BFF265C2AFFF4F3F8FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEEF2F2FFEEF2
                      F2FFEEF2F2FFEBEFEFFFFAFEFDFF425B44FF218020FF11B21EFF32D042FF32BD
                      3FFF26622BFFF2F2F7FFEDF2F1FFEEF2F2FFEEF2F2FFEEF2F2FFF1F4F5FFF2F6
                      F6FFF3F8F7FFF0F4F4FFFFFFFFFF426244FF1E871EFF0FAE1CFF2ECD3DFF2DBD
                      3CFF28642CFFFAF3FEFFF4F4F7FFF5F5F9FFF3F4F7FFF1F4F5FF345435FF314B
                      32FF2C452CFF2C482CFF2E492EFF113713FF379936FF069C12FF19BC29FF2EBC
                      3DFF034907FF245026FF235326FF234F25FF2B522DFF335634FF162E16FF1668
                      1CFF007106FF007809FF007F07FF0C9217FF2AAD2FFF007A0AFF0CA61CFF4FC9
                      59FF4DB754FF43B14AFF46AE4CFF46A84AFF439248FF0A3C0CFF042405FF0964
                      12FF008D0CFF04A914FF0EBA1EFF10BA20FF12AB20FF23932EFF32953CFF41B4
                      4CFF54C85EFF61D26BFF65D16EFF6BD275FF51A258FF002700FF022703FF096F
                      13FF10B01FFF37D045FF58E565FF66E872FF5AD966FF44C250FF3D9D46FF4193
                      4AFF4CA656FF58B261FF5EB467FF6CBA74FF548E59FF001A00FF0F3611FF217F
                      29FF2CA836FF4BC156FF5FD469FF71E07BFF82EA8AFF63D86DFF4CB856FF6FB4
                      74FF60A266FF4F8F53FF548A58FF5B8A5EFF5D8060FF112A12FF628063FF567C
                      5AFF437747FF408246FF448F4AFF0E6D15FF62CD6AFF7CE886FF60C86AFF59A0
                      5DFF134A17FF436C46FF415F44FF405141FF59675BFF6F8170FFF7FAFCFFF9FA
                      FDFFFBFBFFFFF9F8FCFFFFFFFFFF3D7341FF50BD58FF83E78CFF6ECD77FF478B
                      4AFF244B26FFFFFFFFFFFBFDFFFFFCFFFFFFF8FCFCFFF6F9FAFFECF1F0FFECF1
                      F0FFECF1F0FFE9EFEDFFFAFAFCFF3A6F3EFF4DAE54FF7CDB85FF74C27CFF508B
                      53FF234A26FFF2F4F6FFEBEFEFFFECF0F0FFECF0F0FFEDF1F1FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF1F0FFFDFCFFFF3A683DFF489F4DFF81CE88FF87C28DFF558B
                      58FF204322FFF5F7F9FFEDF1F1FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFFBFCFEFF446A47FF49864EFF6BA070FF6FA174FF5F86
                      61FF314E33FFF2F5F5FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF8FAFCFF547456FF18451CFF003002FF002400FF2D47
                      2FFF4E674FFFEDF0F0FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FF}
                    Visible = False
                    OnClick = SpeedButton9Click
                  end
                  object SpeedButton10: TSpeedButton
                    Left = 295
                    Top = 130
                    Width = 23
                    Height = 22
                    Flat = True
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      20000000000000040000232E0000232E00000000000001000000EFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF9FCFDFF4D6A4EFF0A200BFF011E01FF002200FF0C33
                      0DFF385B39FFF0F3F4FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF9FDFDFF4A604CFF2C662BFF0F7E19FF1C9727FF3197
                      3BFF346037FFF1F2F5FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECEFF0FFFCFFFFFF405542FF217D1FFF0EB51BFF2DD33DFF2DB7
                      3BFF265C2AFFF4F3F8FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEEF2F2FFEEF2
                      F2FFEEF2F2FFEBEFEFFFFAFEFDFF425B44FF218020FF11B21EFF32D042FF32BD
                      3FFF26622BFFF2F2F7FFEDF2F1FFEEF2F2FFEEF2F2FFEEF2F2FFF1F4F5FFF2F6
                      F6FFF3F8F7FFF0F4F4FFFFFFFFFF426244FF1E871EFF0FAE1CFF2ECD3DFF2DBD
                      3CFF28642CFFFAF3FEFFF4F4F7FFF5F5F9FFF3F4F7FFF1F4F5FF345435FF314B
                      32FF2C452CFF2C482CFF2E492EFF113713FF379936FF069C12FF19BC29FF2EBC
                      3DFF034907FF245026FF235326FF234F25FF2B522DFF335634FF162E16FF1668
                      1CFF007106FF007809FF007F07FF0C9217FF2AAD2FFF007A0AFF0CA61CFF4FC9
                      59FF4DB754FF43B14AFF46AE4CFF46A84AFF439248FF0A3C0CFF042405FF0964
                      12FF008D0CFF04A914FF0EBA1EFF10BA20FF12AB20FF23932EFF32953CFF41B4
                      4CFF54C85EFF61D26BFF65D16EFF6BD275FF51A258FF002700FF022703FF096F
                      13FF10B01FFF37D045FF58E565FF66E872FF5AD966FF44C250FF3D9D46FF4193
                      4AFF4CA656FF58B261FF5EB467FF6CBA74FF548E59FF001A00FF0F3611FF217F
                      29FF2CA836FF4BC156FF5FD469FF71E07BFF82EA8AFF63D86DFF4CB856FF6FB4
                      74FF60A266FF4F8F53FF548A58FF5B8A5EFF5D8060FF112A12FF628063FF567C
                      5AFF437747FF408246FF448F4AFF0E6D15FF62CD6AFF7CE886FF60C86AFF59A0
                      5DFF134A17FF436C46FF415F44FF405141FF59675BFF6F8170FFF7FAFCFFF9FA
                      FDFFFBFBFFFFF9F8FCFFFFFFFFFF3D7341FF50BD58FF83E78CFF6ECD77FF478B
                      4AFF244B26FFFFFFFFFFFBFDFFFFFCFFFFFFF8FCFCFFF6F9FAFFECF1F0FFECF1
                      F0FFECF1F0FFE9EFEDFFFAFAFCFF3A6F3EFF4DAE54FF7CDB85FF74C27CFF508B
                      53FF234A26FFF2F4F6FFEBEFEFFFECF0F0FFECF0F0FFEDF1F1FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF1F0FFFDFCFFFF3A683DFF489F4DFF81CE88FF87C28DFF558B
                      58FF204322FFF5F7F9FFEDF1F1FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFFBFCFEFF446A47FF49864EFF6BA070FF6FA174FF5F86
                      61FF314E33FFF2F5F5FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3F3FFEFF3
                      F3FFEFF3F3FFECF0F0FFF8FAFCFF547456FF18451CFF003002FF002400FF2D47
                      2FFF4E674FFFEDF0F0FFEEF2F2FFEFF3F3FFEFF3F3FFEFF3F3FF}
                    Visible = False
                    OnClick = SpeedButton10Click
                  end
                  object Label56: TLabel
                    Left = 380
                    Top = 56
                    Width = 44
                    Height = 13
                    Caption = #1054#1094#1077#1085#1082#1072
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEdit30: TDBEdit
                    Left = 11
                    Top = 75
                    Width = 278
                    Height = 21
                    DataField = 'igaDefence1Name'
                    DataSource = DM.DSStudentData
                    TabOrder = 0
                  end
                  object DBEdit31: TDBEdit
                    Left = 11
                    Top = 102
                    Width = 278
                    Height = 21
                    DataField = 'igaDefence2Name'
                    DataSource = DM.DSStudentData
                    TabOrder = 1
                    Visible = False
                  end
                  object DBEdit32: TDBEdit
                    Left = 11
                    Top = 131
                    Width = 278
                    Height = 21
                    DataField = 'igaDefence3Name'
                    DataSource = DM.DSStudentData
                    TabOrder = 2
                    Visible = False
                  end
                  object DBLookupComboboxEh4: TDBLookupComboboxEh
                    Left = 348
                    Top = 75
                    Width = 133
                    Height = 21
                    EditButtons = <>
                    KeyField = 'id'
                    ListField = 'res'
                    ListSource = DM.DSResult
                    ShowHint = True
                    TabOrder = 3
                    Visible = True
                  end
                  object DBLookupComboboxEh5: TDBLookupComboboxEh
                    Left = 348
                    Top = 102
                    Width = 133
                    Height = 21
                    EditButtons = <>
                    KeyField = 'id'
                    ListField = 'res'
                    ListSource = DM.DSResult
                    ShowHint = True
                    TabOrder = 4
                    Visible = False
                  end
                  object DBLookupComboboxEh6: TDBLookupComboboxEh
                    Left = 348
                    Top = 130
                    Width = 133
                    Height = 21
                    EditButtons = <>
                    KeyField = 'id'
                    ListField = 'res'
                    ListSource = DM.DSResult
                    ShowHint = True
                    TabOrder = 5
                    Visible = False
                  end
                  object DBLookupComboboxEh9: TDBLookupComboboxEh
                    Left = 11
                    Top = 20
                    Width = 133
                    Height = 21
                    DataField = 'igaDefenceCount'
                    DataSource = DM.DSStudentData
                    EditButtons = <>
                    KeyField = 'kol'
                    ListField = 'kol_1'
                    ListSource = DM.DSkol
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 6
                    Visible = True
                    OnCloseUp = DBLookupComboboxEh9CloseUp
                  end
                end
              end
            end
          end
        end
      end
      object TSReport: TTabSheet
        Caption = #1054#1090#1095#1077#1090#1099
        ImageIndex = 2
        ParentShowHint = False
        ShowHint = True
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 797
          Height = 728
          ActivePage = TabSheet7
          Align = alClient
          MultiLine = True
          TabOrder = 0
          object TabSheet2: TTabSheet
            Caption = #1055#1086' '#1089#1090#1091#1076#1077#1085#1090#1091
            object Button9: TButton
              Left = 3
              Top = 47
              Width = 252
              Height = 25
              Caption = #1051#1080#1095#1085#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072
              TabOrder = 2
              OnClick = Button9Click
            end
            object Button5: TButton
              Left = 3
              Top = 16
              Width = 252
              Height = 25
              Caption = #1057#1087#1088#1072#1074#1082#1072' '#1089#1090#1091#1076#1077#1085#1090#1091
              TabOrder = 0
              OnClick = Button5Click
            end
            object Panel9: TPanel
              Left = 3
              Top = 16
              Width = 252
              Height = 56
              Cursor = crHandPoint
              BorderStyle = bsSingle
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHighlight
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Visible = False
              object Label62: TLabel
                Left = 18
                Top = 4
                Width = 60
                Height = 13
                Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton13: TSpeedButton
                Left = 164
                Top = 3
                Width = 77
                Height = 22
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000232E0000232E00000000000000000001FEFEFEFEFEFE
                  FEFEFEFDFDFDFBFDFBFFFFFFFFFEFFFFFEFFFDFEFDF1F4F4E9EFEFECF1F1EBF0
                  F0ECF1F1ECF1F1ECF1F1FEFEFEFEFEFEFDFDFDFCFDFCFFFDFFC7F2CBB1F9B8DD
                  F3DFFFFEFFFDFEFCF1F5F5E9EEEEECF1F1EBF0F0ECF1F1ECF1F1FFFEFFFDFDFD
                  FAFCFAFFFFFF9DE3A423C83138DB4580F18BE2EDE3FFFEFFFCFDFCF1F4F4E9EF
                  EFECF1F1ECF1F1ECF1F1FCFDFCFBFCFBFFFFFF92D69805A9113ABA4370DF7869
                  E27275EB82D1EAD4FFFFFFFBFDFAF1F4F4EAEFEFECF1F1EBF0F0F8FBF8FFFFFF
                  8CC78F008B0023A92B5BF1686BFF7B54E55F33D73F3FD54FCEE5D1FFFFFFFBFC
                  FBF1F4F4EAEFEFECF1F1FFFFFF8AB68E00680012991E45E0536DEF7972EE7E55
                  F56546E0521FC02B24B732C8E2CCFFFFFFFBFCFAF1F4F5E9EEEE529D5613721B
                  1D892740CC4E7DE0868CE29487E28F6FE37A45E6543DCF4908981314951AC7DC
                  C9FFFFFFFBFCFBF2F4F400670051A25A6FCD7890D8969EDEA54CC45737BD427B
                  DB8565D76F34D6432EB93B06720A136514C6D4C8FFFFFFFAFBF905770A2F9E37
                  9ED4A5B9DCBD52BD5B00A10809A91916B0236DCE775DCB6720C62F1FA72C044C
                  07154716C8D2C9FFFFFFBCD9C2239A270C9F1162BE690094004FAE55C6E0CA19
                  A92308A01165C37052BD5C0DB21B119A1C08490C164F18B5C3B7FFFBFFD8E7DC
                  3BAF4217A31B5AB461EDECF0FEF9FFCEE4D2189A1A0D93136AB67352AA5A0391
                  0818912126622C003A00E6EDEBF2F3F7EFF2F4DFECE2F3F3F8EFF2F3E4EDEAF8
                  F6FCCFE2D319981A0A96116EAF7754985A117C190C5B11003900EDF1F2EAF0F0
                  ECF1F1F0F2F5EAF0EFEBF0F0ECF1F1E6EEECF9F6FDCFE4D3199C1B0E97147AB5
                  812D87350251049AB09DEDF2F2EDF2F2ECF1F1EBF1F0ECF1F1ECF1F1ECF1F1EC
                  F1F1E6EEECF9F5FCCEE3D2209D230A870D18811CABC4AFFFFFFFECF1F1EDF1F2
                  ECF1F1ECF1F1EDF2F2ECF1F1ECF1F1ECF1F1ECF1F1E7EEEDF8F5FCD7E7DD9FCD
                  A1CADECEFAFAFFE5EDEBEDF2F2EDF2F2EDF2F2EDF2F2ECF1F1EDF2F2ECF1F1EC
                  F1F1ECF1F1EDF1F1E5EEEAF7F6FBFFFFFFFDFAFFE4ECE9ECF2F1}
                ParentFont = False
                OnClick = SpeedButton13Click
              end
              object SpeedButton14: TSpeedButton
                Left = 162
                Top = 23
                Width = 74
                Height = 22
                Caption = #1054#1090#1084#1077#1085#1072
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000232E0000232E00000000000000000001E8EDF0E8EDF0
                  FFFFF34449E00002DCD7DBEBF5F9F2E6ECF0E6EBF0F6FAF2D6D8E90001DD3F41
                  DCFFFFF2E7ECF0EAEFF0EFF4F2FBFEF35E60D11315DB2C2DE8292ADBDDE0ECF2
                  F7F2F3F7F1DDE0EE2728DC2022E60709D55F61D1FBFFF4E8EDF0EBEDF26264C5
                  0000B62424E14242F50000DB2B2CD6E4E5EDE1E3EC292BD70000DA2828F21414
                  DD0000B46063C0FAFBF8544FC70908B40C0CC40302DA0000E61616EE0000D32C
                  2DCF292BCE0100D31717EE0000E40907D80D0CC10000A73F3FAD1810A8534FD4
                  1B19CE0000BE0000D00302DF1313E80000D20000D51414EA0201DE0000CD0000
                  BD1715CB2B27C3050591A8A9CE2829A00402B00908C00000B80000C40202D027
                  27E92524E80101CF0000C30000B80C0AC30000A6292AA3D7D8E8FFFFFDC9CBD9
                  19198B0604A90807B70000A90000B10403C00302BF0000B00000AA0C0BBB0100
                  9F252695DDDEE8F4F8F6E3E9EDF7FBF7D3D5E024258A0B09A41412B400009C00
                  009D00009C00009B1210B206069A323393E2E5EDF3F7F4E6EBEEE2E8E9F3F7F8
                  DBDDE1282A600E0C793E3AD80101A30101A00101A00101A52320C401016A3334
                  6BE2E4E9F2F6F7E6EBECFFFFFFDBDBDD1F203A000036120FAB0000B10000AA00
                  00AB0000AB0000AA0000B30A089B00002E272845E2E2E4F5F8F9C1C1C9353735
                  0000001A18AD0202D70202C40000C72E2BDD1E1CD80000C60303C50201D80F0E
                  9B000000343634D5D6DA00000D251D39413BA9221DEB1F1CD9231DE02824E529
                  28C92320CA2924E6221CDF211CDA221DEC2A249919113104040E2F2D3B3B3053
                  665DD6564BF2564BE9645BF01614BE2527AC1F20A01F1BC3645AF3544AE85E54
                  F74C45C11F153D41414BF2F2F55A5D5F000026827AE09C94FA1B1ABF2324B5E6
                  E7EED4D6E11315A7302DC79C92FB6E67CF000019747878FBFCFDF3F8F9F1F3F4
                  40427446439D6B68DC2829B2DDDFECF3F8F3F7FBF6CECFE01D1EA86662DA2926
                  875B5D87FBFEFDE9EEEEE0E5E8F7FAF9E1E4ED322FA52E29BEBDBEE2FFFFF7E4
                  E9EEE2E8EDFFFFFBA5A6D12520B34543B1F3F5FAF0F4F2E8ECEE}
                ParentFont = False
                OnClick = SpeedButton14Click
              end
              object RzSpinEdit1: TRzSpinEdit
                Left = 87
                Top = 4
                Width = 60
                Height = 21
                Max = 100.000000000000000000
                Min = 1.000000000000000000
                Value = 1.000000000000000000
                TabOrder = 0
              end
              object CheckBox1: TCheckBox
                Left = 18
                Top = 31
                Width = 129
                Height = 17
                Caption = #1057' '#1087#1086#1076#1087#1080#1089#1100#1102' '#1088#1077#1082#1090#1086#1088#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
            object Button10: TButton
              Left = 3
              Top = 78
              Width = 248
              Height = 25
              Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1088#1077#1076#1084#1077#1090#1072#1084
              TabOrder = 3
              OnClick = Button10Click
            end
          end
          object TabSheet3: TTabSheet
            Caption = #1055#1086' '#1075#1088#1091#1087#1087#1077
            ImageIndex = 1
            object Button7: TButton
              Left = 3
              Top = 168
              Width = 250
              Height = 25
              Caption = #1047#1072#1076#1086#1083#1078#1085#1080#1082#1080
              TabOrder = 7
              OnClick = Button7Click
            end
            object Button4: TButton
              Left = 3
              Top = 106
              Width = 250
              Height = 25
              Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
              TabOrder = 4
              OnClick = Button4Click
            end
            object Button3: TButton
              Left = 3
              Top = 75
              Width = 250
              Height = 25
              Caption = #1059#1089#1083#1086#1074#1080#1077' '#1086#1073#1091#1095#1077#1085#1080#1077
              TabOrder = 3
              OnClick = Button3Click
            end
            object Button1: TButton
              Left = 3
              Top = 15
              Width = 250
              Height = 25
              Caption = #1042' '#1087#1086#1083#1080#1082#1083#1080#1085#1085#1080#1082#1091
              TabOrder = 0
              OnClick = Button1Click
            end
            object Button2: TButton
              Left = 3
              Top = 46
              Width = 250
              Height = 25
              Caption = #1054#1090#1076#1077#1083' '#1082#1072#1076#1088#1086#1074
              TabOrder = 1
              OnClick = Button2Click
            end
            object Panel5: TPanel
              Left = 3
              Top = 75
              Width = 252
              Height = 55
              BorderStyle = bsSingle
              TabOrder = 2
              Visible = False
              object Label50: TLabel
                Left = 57
                Top = 0
                Width = 123
                Height = 16
                Caption = #1059#1089#1083#1086#1074#1080#1103' '#1086#1073#1091#1095#1077#1085#1080#1103
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object SpeedButton2: TSpeedButton
                Left = 186
                Top = 22
                Width = 23
                Height = 22
                Flat = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000232E0000232E00000000000000000001FEFEFEFEFEFE
                  FEFEFEFDFDFDFBFDFBFFFFFFFFFEFFFFFEFFFDFEFDF1F4F4E9EFEFECF1F1EBF0
                  F0ECF1F1ECF1F1ECF1F1FEFEFEFEFEFEFDFDFDFCFDFCFFFDFFC7F2CBB1F9B8DD
                  F3DFFFFEFFFDFEFCF1F5F5E9EEEEECF1F1EBF0F0ECF1F1ECF1F1FFFEFFFDFDFD
                  FAFCFAFFFFFF9DE3A423C83138DB4580F18BE2EDE3FFFEFFFCFDFCF1F4F4E9EF
                  EFECF1F1ECF1F1ECF1F1FCFDFCFBFCFBFFFFFF92D69805A9113ABA4370DF7869
                  E27275EB82D1EAD4FFFFFFFBFDFAF1F4F4EAEFEFECF1F1EBF0F0F8FBF8FFFFFF
                  8CC78F008B0023A92B5BF1686BFF7B54E55F33D73F3FD54FCEE5D1FFFFFFFBFC
                  FBF1F4F4EAEFEFECF1F1FFFFFF8AB68E00680012991E45E0536DEF7972EE7E55
                  F56546E0521FC02B24B732C8E2CCFFFFFFFBFCFAF1F4F5E9EEEE529D5613721B
                  1D892740CC4E7DE0868CE29487E28F6FE37A45E6543DCF4908981314951AC7DC
                  C9FFFFFFFBFCFBF2F4F400670051A25A6FCD7890D8969EDEA54CC45737BD427B
                  DB8565D76F34D6432EB93B06720A136514C6D4C8FFFFFFFAFBF905770A2F9E37
                  9ED4A5B9DCBD52BD5B00A10809A91916B0236DCE775DCB6720C62F1FA72C044C
                  07154716C8D2C9FFFFFFBCD9C2239A270C9F1162BE690094004FAE55C6E0CA19
                  A92308A01165C37052BD5C0DB21B119A1C08490C164F18B5C3B7FFFBFFD8E7DC
                  3BAF4217A31B5AB461EDECF0FEF9FFCEE4D2189A1A0D93136AB67352AA5A0391
                  0818912126622C003A00E6EDEBF2F3F7EFF2F4DFECE2F3F3F8EFF2F3E4EDEAF8
                  F6FCCFE2D319981A0A96116EAF7754985A117C190C5B11003900EDF1F2EAF0F0
                  ECF1F1F0F2F5EAF0EFEBF0F0ECF1F1E6EEECF9F6FDCFE4D3199C1B0E97147AB5
                  812D87350251049AB09DEDF2F2EDF2F2ECF1F1EBF1F0ECF1F1ECF1F1ECF1F1EC
                  F1F1E6EEECF9F5FCCEE3D2209D230A870D18811CABC4AFFFFFFFECF1F1EDF1F2
                  ECF1F1ECF1F1EDF2F2ECF1F1ECF1F1ECF1F1ECF1F1E7EEEDF8F5FCD7E7DD9FCD
                  A1CADECEFAFAFFE5EDEBEDF2F2EDF2F2EDF2F2EDF2F2ECF1F1EDF2F2ECF1F1EC
                  F1F1ECF1F1EDF1F1E5EEEAF7F6FBFFFFFFFDFAFFE4ECE9ECF2F1}
                OnClick = SpeedButton2Click
              end
              object SpeedButton3: TSpeedButton
                Left = 215
                Top = 21
                Width = 23
                Height = 22
                Flat = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000232E0000232E00000000000000000001E8EDF0E8EDF0
                  FFFFF34449E00002DCD7DBEBF5F9F2E6ECF0E6EBF0F6FAF2D6D8E90001DD3F41
                  DCFFFFF2E7ECF0EAEFF0EFF4F2FBFEF35E60D11315DB2C2DE8292ADBDDE0ECF2
                  F7F2F3F7F1DDE0EE2728DC2022E60709D55F61D1FBFFF4E8EDF0EBEDF26264C5
                  0000B62424E14242F50000DB2B2CD6E4E5EDE1E3EC292BD70000DA2828F21414
                  DD0000B46063C0FAFBF8544FC70908B40C0CC40302DA0000E61616EE0000D32C
                  2DCF292BCE0100D31717EE0000E40907D80D0CC10000A73F3FAD1810A8534FD4
                  1B19CE0000BE0000D00302DF1313E80000D20000D51414EA0201DE0000CD0000
                  BD1715CB2B27C3050591A8A9CE2829A00402B00908C00000B80000C40202D027
                  27E92524E80101CF0000C30000B80C0AC30000A6292AA3D7D8E8FFFFFDC9CBD9
                  19198B0604A90807B70000A90000B10403C00302BF0000B00000AA0C0BBB0100
                  9F252695DDDEE8F4F8F6E3E9EDF7FBF7D3D5E024258A0B09A41412B400009C00
                  009D00009C00009B1210B206069A323393E2E5EDF3F7F4E6EBEEE2E8E9F3F7F8
                  DBDDE1282A600E0C793E3AD80101A30101A00101A00101A52320C401016A3334
                  6BE2E4E9F2F6F7E6EBECFFFFFFDBDBDD1F203A000036120FAB0000B10000AA00
                  00AB0000AB0000AA0000B30A089B00002E272845E2E2E4F5F8F9C1C1C9353735
                  0000001A18AD0202D70202C40000C72E2BDD1E1CD80000C60303C50201D80F0E
                  9B000000343634D5D6DA00000D251D39413BA9221DEB1F1CD9231DE02824E529
                  28C92320CA2924E6221CDF211CDA221DEC2A249919113104040E2F2D3B3B3053
                  665DD6564BF2564BE9645BF01614BE2527AC1F20A01F1BC3645AF3544AE85E54
                  F74C45C11F153D41414BF2F2F55A5D5F000026827AE09C94FA1B1ABF2324B5E6
                  E7EED4D6E11315A7302DC79C92FB6E67CF000019747878FBFCFDF3F8F9F1F3F4
                  40427446439D6B68DC2829B2DDDFECF3F8F3F7FBF6CECFE01D1EA86662DA2926
                  875B5D87FBFEFDE9EEEEE0E5E8F7FAF9E1E4ED322FA52E29BEBDBEE2FFFFF7E4
                  E9EEE2E8EDFFFFFBA5A6D12520B34543B1F3F5FAF0F4F2E8ECEE}
                OnClick = SpeedButton3Click
              end
              object CBUslObuch: TComboBox
                Left = 12
                Top = 22
                Width = 168
                Height = 21
                TabOrder = 0
                Items.Strings = (
                  #1041#1102#1076#1078#1077#1090#1085#1086#1077
                  #1062#1077#1083#1077#1074#1086#1077
                  #1050#1086#1084#1084#1077#1088#1095#1077#1089#1082#1086#1077)
              end
            end
            object Button6: TButton
              Left = 3
              Top = 137
              Width = 252
              Height = 25
              Caption = #1046#1091#1088#1085#1072#1083' '#1091#1095#1077#1090#1072' '#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080
              TabOrder = 5
              OnClick = Button6Click
            end
            object Panel6: TPanel
              Left = 3
              Top = 136
              Width = 337
              Height = 87
              BorderStyle = bsSingle
              TabOrder = 6
              Visible = False
              object SpeedButton11: TSpeedButton
                Left = 136
                Top = 55
                Width = 118
                Height = 22
                Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
                Enabled = False
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000232E0000232E00000000000000000001FEFEFEFEFEFE
                  FEFEFEFDFDFDFBFDFBFFFFFFFFFEFFFFFEFFFDFEFDF1F4F4E9EFEFECF1F1EBF0
                  F0ECF1F1ECF1F1ECF1F1FEFEFEFEFEFEFDFDFDFCFDFCFFFDFFC7F2CBB1F9B8DD
                  F3DFFFFEFFFDFEFCF1F5F5E9EEEEECF1F1EBF0F0ECF1F1ECF1F1FFFEFFFDFDFD
                  FAFCFAFFFFFF9DE3A423C83138DB4580F18BE2EDE3FFFEFFFCFDFCF1F4F4E9EF
                  EFECF1F1ECF1F1ECF1F1FCFDFCFBFCFBFFFFFF92D69805A9113ABA4370DF7869
                  E27275EB82D1EAD4FFFFFFFBFDFAF1F4F4EAEFEFECF1F1EBF0F0F8FBF8FFFFFF
                  8CC78F008B0023A92B5BF1686BFF7B54E55F33D73F3FD54FCEE5D1FFFFFFFBFC
                  FBF1F4F4EAEFEFECF1F1FFFFFF8AB68E00680012991E45E0536DEF7972EE7E55
                  F56546E0521FC02B24B732C8E2CCFFFFFFFBFCFAF1F4F5E9EEEE529D5613721B
                  1D892740CC4E7DE0868CE29487E28F6FE37A45E6543DCF4908981314951AC7DC
                  C9FFFFFFFBFCFBF2F4F400670051A25A6FCD7890D8969EDEA54CC45737BD427B
                  DB8565D76F34D6432EB93B06720A136514C6D4C8FFFFFFFAFBF905770A2F9E37
                  9ED4A5B9DCBD52BD5B00A10809A91916B0236DCE775DCB6720C62F1FA72C044C
                  07154716C8D2C9FFFFFFBCD9C2239A270C9F1162BE690094004FAE55C6E0CA19
                  A92308A01165C37052BD5C0DB21B119A1C08490C164F18B5C3B7FFFBFFD8E7DC
                  3BAF4217A31B5AB461EDECF0FEF9FFCEE4D2189A1A0D93136AB67352AA5A0391
                  0818912126622C003A00E6EDEBF2F3F7EFF2F4DFECE2F3F3F8EFF2F3E4EDEAF8
                  F6FCCFE2D319981A0A96116EAF7754985A117C190C5B11003900EDF1F2EAF0F0
                  ECF1F1F0F2F5EAF0EFEBF0F0ECF1F1E6EEECF9F6FDCFE4D3199C1B0E97147AB5
                  812D87350251049AB09DEDF2F2EDF2F2ECF1F1EBF1F0ECF1F1ECF1F1ECF1F1EC
                  F1F1E6EEECF9F5FCCEE3D2209D230A870D18811CABC4AFFFFFFFECF1F1EDF1F2
                  ECF1F1ECF1F1EDF2F2ECF1F1ECF1F1ECF1F1ECF1F1E7EEEDF8F5FCD7E7DD9FCD
                  A1CADECEFAFAFFE5EDEBEDF2F2EDF2F2EDF2F2EDF2F2ECF1F1EDF2F2ECF1F1EC
                  F1F1ECF1F1EDF1F1E5EEEAF7F6FBFFFFFFFDFAFFE4ECE9ECF2F1}
                ParentFont = False
                OnClick = SpeedButton11Click
              end
              object SpeedButton12: TSpeedButton
                Left = 260
                Top = 55
                Width = 61
                Height = 22
                Caption = #1054#1090#1084#1077#1085#1072
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000232E0000232E00000000000000000001E8EDF0E8EDF0
                  FFFFF34449E00002DCD7DBEBF5F9F2E6ECF0E6EBF0F6FAF2D6D8E90001DD3F41
                  DCFFFFF2E7ECF0EAEFF0EFF4F2FBFEF35E60D11315DB2C2DE8292ADBDDE0ECF2
                  F7F2F3F7F1DDE0EE2728DC2022E60709D55F61D1FBFFF4E8EDF0EBEDF26264C5
                  0000B62424E14242F50000DB2B2CD6E4E5EDE1E3EC292BD70000DA2828F21414
                  DD0000B46063C0FAFBF8544FC70908B40C0CC40302DA0000E61616EE0000D32C
                  2DCF292BCE0100D31717EE0000E40907D80D0CC10000A73F3FAD1810A8534FD4
                  1B19CE0000BE0000D00302DF1313E80000D20000D51414EA0201DE0000CD0000
                  BD1715CB2B27C3050591A8A9CE2829A00402B00908C00000B80000C40202D027
                  27E92524E80101CF0000C30000B80C0AC30000A6292AA3D7D8E8FFFFFDC9CBD9
                  19198B0604A90807B70000A90000B10403C00302BF0000B00000AA0C0BBB0100
                  9F252695DDDEE8F4F8F6E3E9EDF7FBF7D3D5E024258A0B09A41412B400009C00
                  009D00009C00009B1210B206069A323393E2E5EDF3F7F4E6EBEEE2E8E9F3F7F8
                  DBDDE1282A600E0C793E3AD80101A30101A00101A00101A52320C401016A3334
                  6BE2E4E9F2F6F7E6EBECFFFFFFDBDBDD1F203A000036120FAB0000B10000AA00
                  00AB0000AB0000AA0000B30A089B00002E272845E2E2E4F5F8F9C1C1C9353735
                  0000001A18AD0202D70202C40000C72E2BDD1E1CD80000C60303C50201D80F0E
                  9B000000343634D5D6DA00000D251D39413BA9221DEB1F1CD9231DE02824E529
                  28C92320CA2924E6221CDF211CDA221DEC2A249919113104040E2F2D3B3B3053
                  665DD6564BF2564BE9645BF01614BE2527AC1F20A01F1BC3645AF3544AE85E54
                  F74C45C11F153D41414BF2F2F55A5D5F000026827AE09C94FA1B1ABF2324B5E6
                  E7EED4D6E11315A7302DC79C92FB6E67CF000019747878FBFCFDF3F8F9F1F3F4
                  40427446439D6B68DC2829B2DDDFECF3F8F3F7FBF6CECFE01D1EA86662DA2926
                  875B5D87FBFEFDE9EEEEE0E5E8F7FAF9E1E4ED322FA52E29BEBDBEE2FFFFF7E4
                  E9EEE2E8EDFFFFFBA5A6D12520B34543B1F3F5FAF0F4F2E8ECEE}
                ParentFont = False
                OnClick = SpeedButton12Click
              end
              object Label61: TLabel
                Left = 8
                Top = 9
                Width = 66
                Height = 13
                Caption = #1059#1095#1077#1073#1085#1099#1081' '#1075#1086#1076
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object ComboBox1: TComboBox
                Left = 8
                Top = 28
                Width = 145
                Height = 21
                TabOrder = 0
                OnCloseUp = ComboBox1CloseUp
              end
              object RadioGroup1: TRadioGroup
                Left = 159
                Top = 11
                Width = 138
                Height = 38
                Caption = #1057#1077#1089#1089#1080#1103
                Columns = 2
                ItemIndex = 0
                Items.Strings = (
                  #1047#1080#1084#1085#1103#1103
                  #1051#1077#1090#1085#1103#1103)
                TabOrder = 1
              end
            end
            object Panel10: TPanel
              Left = 3
              Top = 136
              Width = 337
              Height = 86
              BorderStyle = bsSingle
              TabOrder = 8
              Visible = False
              object SpeedButton15: TSpeedButton
                Left = 136
                Top = 55
                Width = 95
                Height = 22
                Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
                Enabled = False
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000232E0000232E00000000000000000001FEFEFEFEFEFE
                  FEFEFEFDFDFDFBFDFBFFFFFFFFFEFFFFFEFFFDFEFDF1F4F4E9EFEFECF1F1EBF0
                  F0ECF1F1ECF1F1ECF1F1FEFEFEFEFEFEFDFDFDFCFDFCFFFDFFC7F2CBB1F9B8DD
                  F3DFFFFEFFFDFEFCF1F5F5E9EEEEECF1F1EBF0F0ECF1F1ECF1F1FFFEFFFDFDFD
                  FAFCFAFFFFFF9DE3A423C83138DB4580F18BE2EDE3FFFEFFFCFDFCF1F4F4E9EF
                  EFECF1F1ECF1F1ECF1F1FCFDFCFBFCFBFFFFFF92D69805A9113ABA4370DF7869
                  E27275EB82D1EAD4FFFFFFFBFDFAF1F4F4EAEFEFECF1F1EBF0F0F8FBF8FFFFFF
                  8CC78F008B0023A92B5BF1686BFF7B54E55F33D73F3FD54FCEE5D1FFFFFFFBFC
                  FBF1F4F4EAEFEFECF1F1FFFFFF8AB68E00680012991E45E0536DEF7972EE7E55
                  F56546E0521FC02B24B732C8E2CCFFFFFFFBFCFAF1F4F5E9EEEE529D5613721B
                  1D892740CC4E7DE0868CE29487E28F6FE37A45E6543DCF4908981314951AC7DC
                  C9FFFFFFFBFCFBF2F4F400670051A25A6FCD7890D8969EDEA54CC45737BD427B
                  DB8565D76F34D6432EB93B06720A136514C6D4C8FFFFFFFAFBF905770A2F9E37
                  9ED4A5B9DCBD52BD5B00A10809A91916B0236DCE775DCB6720C62F1FA72C044C
                  07154716C8D2C9FFFFFFBCD9C2239A270C9F1162BE690094004FAE55C6E0CA19
                  A92308A01165C37052BD5C0DB21B119A1C08490C164F18B5C3B7FFFBFFD8E7DC
                  3BAF4217A31B5AB461EDECF0FEF9FFCEE4D2189A1A0D93136AB67352AA5A0391
                  0818912126622C003A00E6EDEBF2F3F7EFF2F4DFECE2F3F3F8EFF2F3E4EDEAF8
                  F6FCCFE2D319981A0A96116EAF7754985A117C190C5B11003900EDF1F2EAF0F0
                  ECF1F1F0F2F5EAF0EFEBF0F0ECF1F1E6EEECF9F6FDCFE4D3199C1B0E97147AB5
                  812D87350251049AB09DEDF2F2EDF2F2ECF1F1EBF1F0ECF1F1ECF1F1ECF1F1EC
                  F1F1E6EEECF9F5FCCEE3D2209D230A870D18811CABC4AFFFFFFFECF1F1EDF1F2
                  ECF1F1ECF1F1EDF2F2ECF1F1ECF1F1ECF1F1ECF1F1E7EEEDF8F5FCD7E7DD9FCD
                  A1CADECEFAFAFFE5EDEBEDF2F2EDF2F2EDF2F2EDF2F2ECF1F1EDF2F2ECF1F1EC
                  F1F1ECF1F1EDF1F1E5EEEAF7F6FBFFFFFFFDFAFFE4ECE9ECF2F1}
                ParentFont = False
                OnClick = SpeedButton15Click
              end
              object Label63: TLabel
                Left = 8
                Top = 9
                Width = 66
                Height = 13
                Caption = #1059#1095#1077#1073#1085#1099#1081' '#1075#1086#1076
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton16: TSpeedButton
                Left = 248
                Top = 55
                Width = 65
                Height = 22
                Caption = #1054#1090#1084#1077#1085#1072
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000232E0000232E00000000000000000001E8EDF0E8EDF0
                  FFFFF34449E00002DCD7DBEBF5F9F2E6ECF0E6EBF0F6FAF2D6D8E90001DD3F41
                  DCFFFFF2E7ECF0EAEFF0EFF4F2FBFEF35E60D11315DB2C2DE8292ADBDDE0ECF2
                  F7F2F3F7F1DDE0EE2728DC2022E60709D55F61D1FBFFF4E8EDF0EBEDF26264C5
                  0000B62424E14242F50000DB2B2CD6E4E5EDE1E3EC292BD70000DA2828F21414
                  DD0000B46063C0FAFBF8544FC70908B40C0CC40302DA0000E61616EE0000D32C
                  2DCF292BCE0100D31717EE0000E40907D80D0CC10000A73F3FAD1810A8534FD4
                  1B19CE0000BE0000D00302DF1313E80000D20000D51414EA0201DE0000CD0000
                  BD1715CB2B27C3050591A8A9CE2829A00402B00908C00000B80000C40202D027
                  27E92524E80101CF0000C30000B80C0AC30000A6292AA3D7D8E8FFFFFDC9CBD9
                  19198B0604A90807B70000A90000B10403C00302BF0000B00000AA0C0BBB0100
                  9F252695DDDEE8F4F8F6E3E9EDF7FBF7D3D5E024258A0B09A41412B400009C00
                  009D00009C00009B1210B206069A323393E2E5EDF3F7F4E6EBEEE2E8E9F3F7F8
                  DBDDE1282A600E0C793E3AD80101A30101A00101A00101A52320C401016A3334
                  6BE2E4E9F2F6F7E6EBECFFFFFFDBDBDD1F203A000036120FAB0000B10000AA00
                  00AB0000AB0000AA0000B30A089B00002E272845E2E2E4F5F8F9C1C1C9353735
                  0000001A18AD0202D70202C40000C72E2BDD1E1CD80000C60303C50201D80F0E
                  9B000000343634D5D6DA00000D251D39413BA9221DEB1F1CD9231DE02824E529
                  28C92320CA2924E6221CDF211CDA221DEC2A249919113104040E2F2D3B3B3053
                  665DD6564BF2564BE9645BF01614BE2527AC1F20A01F1BC3645AF3544AE85E54
                  F74C45C11F153D41414BF2F2F55A5D5F000026827AE09C94FA1B1ABF2324B5E6
                  E7EED4D6E11315A7302DC79C92FB6E67CF000019747878FBFCFDF3F8F9F1F3F4
                  40427446439D6B68DC2829B2DDDFECF3F8F3F7FBF6CECFE01D1EA86662DA2926
                  875B5D87FBFEFDE9EEEEE0E5E8F7FAF9E1E4ED322FA52E29BEBDBEE2FFFFF7E4
                  E9EEE2E8EDFFFFFBA5A6D12520B34543B1F3F5FAF0F4F2E8ECEE}
                ParentFont = False
                OnClick = SpeedButton16Click
              end
              object ComboBox2: TComboBox
                Left = 8
                Top = 28
                Width = 145
                Height = 21
                TabOrder = 0
                OnCloseUp = ComboBox2CloseUp
              end
              object RadioGroup2: TRadioGroup
                Left = 159
                Top = 8
                Width = 138
                Height = 41
                Caption = #1057#1077#1089#1089#1080#1103
                Columns = 2
                DragMode = dmAutomatic
                ItemIndex = 0
                Items.Strings = (
                  #1047#1080#1084#1085#1103#1103
                  #1051#1077#1090#1085#1103#1103)
                TabOrder = 1
              end
            end
          end
          object TabSheet6: TTabSheet
            Caption = #1055#1086' '#1092#1072#1082#1091#1083#1100#1090#1077#1090#1091
            ImageIndex = 2
            object Button12: TButton
              Left = 3
              Top = 50
              Width = 230
              Height = 25
              Caption = '3'#1053#1050
              TabOrder = 2
              OnClick = Button12Click
            end
            object Button8: TButton
              Left = 3
              Top = 19
              Width = 230
              Height = 25
              Caption = #1048#1090#1086#1075#1080' '#1089#1077#1089#1089#1080#1080
              TabOrder = 0
              OnClick = Button8Click
            end
            object Panel11: TPanel
              Left = 3
              Top = 20
              Width = 358
              Height = 86
              BorderStyle = bsSingle
              TabOrder = 1
              Visible = False
              object SpeedButton17: TSpeedButton
                Left = 153
                Top = 55
                Width = 105
                Height = 22
                Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
                Enabled = False
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000232E0000232E00000000000000000001FEFEFEFEFEFE
                  FEFEFEFDFDFDFBFDFBFFFFFFFFFEFFFFFEFFFDFEFDF1F4F4E9EFEFECF1F1EBF0
                  F0ECF1F1ECF1F1ECF1F1FEFEFEFEFEFEFDFDFDFCFDFCFFFDFFC7F2CBB1F9B8DD
                  F3DFFFFEFFFDFEFCF1F5F5E9EEEEECF1F1EBF0F0ECF1F1ECF1F1FFFEFFFDFDFD
                  FAFCFAFFFFFF9DE3A423C83138DB4580F18BE2EDE3FFFEFFFCFDFCF1F4F4E9EF
                  EFECF1F1ECF1F1ECF1F1FCFDFCFBFCFBFFFFFF92D69805A9113ABA4370DF7869
                  E27275EB82D1EAD4FFFFFFFBFDFAF1F4F4EAEFEFECF1F1EBF0F0F8FBF8FFFFFF
                  8CC78F008B0023A92B5BF1686BFF7B54E55F33D73F3FD54FCEE5D1FFFFFFFBFC
                  FBF1F4F4EAEFEFECF1F1FFFFFF8AB68E00680012991E45E0536DEF7972EE7E55
                  F56546E0521FC02B24B732C8E2CCFFFFFFFBFCFAF1F4F5E9EEEE529D5613721B
                  1D892740CC4E7DE0868CE29487E28F6FE37A45E6543DCF4908981314951AC7DC
                  C9FFFFFFFBFCFBF2F4F400670051A25A6FCD7890D8969EDEA54CC45737BD427B
                  DB8565D76F34D6432EB93B06720A136514C6D4C8FFFFFFFAFBF905770A2F9E37
                  9ED4A5B9DCBD52BD5B00A10809A91916B0236DCE775DCB6720C62F1FA72C044C
                  07154716C8D2C9FFFFFFBCD9C2239A270C9F1162BE690094004FAE55C6E0CA19
                  A92308A01165C37052BD5C0DB21B119A1C08490C164F18B5C3B7FFFBFFD8E7DC
                  3BAF4217A31B5AB461EDECF0FEF9FFCEE4D2189A1A0D93136AB67352AA5A0391
                  0818912126622C003A00E6EDEBF2F3F7EFF2F4DFECE2F3F3F8EFF2F3E4EDEAF8
                  F6FCCFE2D319981A0A96116EAF7754985A117C190C5B11003900EDF1F2EAF0F0
                  ECF1F1F0F2F5EAF0EFEBF0F0ECF1F1E6EEECF9F6FDCFE4D3199C1B0E97147AB5
                  812D87350251049AB09DEDF2F2EDF2F2ECF1F1EBF1F0ECF1F1ECF1F1ECF1F1EC
                  F1F1E6EEECF9F5FCCEE3D2209D230A870D18811CABC4AFFFFFFFECF1F1EDF1F2
                  ECF1F1ECF1F1EDF2F2ECF1F1ECF1F1ECF1F1ECF1F1E7EEEDF8F5FCD7E7DD9FCD
                  A1CADECEFAFAFFE5EDEBEDF2F2EDF2F2EDF2F2EDF2F2ECF1F1EDF2F2ECF1F1EC
                  F1F1ECF1F1EDF1F1E5EEEAF7F6FBFFFFFFFDFAFFE4ECE9ECF2F1}
                ParentFont = False
                OnClick = SpeedButton17Click
              end
              object SpeedButton18: TSpeedButton
                Left = 264
                Top = 55
                Width = 65
                Height = 22
                Caption = #1054#1090#1084#1077#1085#1072
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000232E0000232E00000000000000000001E8EDF0E8EDF0
                  FFFFF34449E00002DCD7DBEBF5F9F2E6ECF0E6EBF0F6FAF2D6D8E90001DD3F41
                  DCFFFFF2E7ECF0EAEFF0EFF4F2FBFEF35E60D11315DB2C2DE8292ADBDDE0ECF2
                  F7F2F3F7F1DDE0EE2728DC2022E60709D55F61D1FBFFF4E8EDF0EBEDF26264C5
                  0000B62424E14242F50000DB2B2CD6E4E5EDE1E3EC292BD70000DA2828F21414
                  DD0000B46063C0FAFBF8544FC70908B40C0CC40302DA0000E61616EE0000D32C
                  2DCF292BCE0100D31717EE0000E40907D80D0CC10000A73F3FAD1810A8534FD4
                  1B19CE0000BE0000D00302DF1313E80000D20000D51414EA0201DE0000CD0000
                  BD1715CB2B27C3050591A8A9CE2829A00402B00908C00000B80000C40202D027
                  27E92524E80101CF0000C30000B80C0AC30000A6292AA3D7D8E8FFFFFDC9CBD9
                  19198B0604A90807B70000A90000B10403C00302BF0000B00000AA0C0BBB0100
                  9F252695DDDEE8F4F8F6E3E9EDF7FBF7D3D5E024258A0B09A41412B400009C00
                  009D00009C00009B1210B206069A323393E2E5EDF3F7F4E6EBEEE2E8E9F3F7F8
                  DBDDE1282A600E0C793E3AD80101A30101A00101A00101A52320C401016A3334
                  6BE2E4E9F2F6F7E6EBECFFFFFFDBDBDD1F203A000036120FAB0000B10000AA00
                  00AB0000AB0000AA0000B30A089B00002E272845E2E2E4F5F8F9C1C1C9353735
                  0000001A18AD0202D70202C40000C72E2BDD1E1CD80000C60303C50201D80F0E
                  9B000000343634D5D6DA00000D251D39413BA9221DEB1F1CD9231DE02824E529
                  28C92320CA2924E6221CDF211CDA221DEC2A249919113104040E2F2D3B3B3053
                  665DD6564BF2564BE9645BF01614BE2527AC1F20A01F1BC3645AF3544AE85E54
                  F74C45C11F153D41414BF2F2F55A5D5F000026827AE09C94FA1B1ABF2324B5E6
                  E7EED4D6E11315A7302DC79C92FB6E67CF000019747878FBFCFDF3F8F9F1F3F4
                  40427446439D6B68DC2829B2DDDFECF3F8F3F7FBF6CECFE01D1EA86662DA2926
                  875B5D87FBFEFDE9EEEEE0E5E8F7FAF9E1E4ED322FA52E29BEBDBEE2FFFFF7E4
                  E9EEE2E8EDFFFFFBA5A6D12520B34543B1F3F5FAF0F4F2E8ECEE}
                ParentFont = False
                OnClick = SpeedButton18Click
              end
              object Label64: TLabel
                Left = 8
                Top = 5
                Width = 66
                Height = 13
                Caption = #1059#1095#1077#1073#1085#1099#1081' '#1075#1086#1076
                Color = clCaptionText
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object ComboBox3: TComboBox
                Left = 8
                Top = 24
                Width = 145
                Height = 21
                TabOrder = 0
                OnCloseUp = ComboBox3CloseUp
              end
              object RadioGroup3: TRadioGroup
                Left = 159
                Top = 0
                Width = 185
                Height = 49
                Caption = #1057#1077#1089#1089#1080#1103
                Columns = 2
                ItemIndex = 0
                Items.Strings = (
                  #1079#1080#1084#1085#1103#1103
                  #1083#1077#1090#1085#1103#1103)
                TabOrder = 1
              end
            end
            object Panel12: TPanel
              Left = 3
              Top = 50
              Width = 230
              Height = 94
              BorderStyle = bsSingle
              Caption = 'Panel12'
              ShowCaption = False
              TabOrder = 3
              Visible = False
              object Label65: TLabel
                Left = 23
                Top = 16
                Width = 49
                Height = 13
                Caption = #1055#1072#1088#1072#1084#1077#1090#1088
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object SpeedButton19: TSpeedButton
                Left = 165
                Top = 62
                Width = 23
                Height = 22
                Flat = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000232E0000232E00000000000000000001E8EDF0E8EDF0
                  FFFFF34449E00002DCD7DBEBF5F9F2E6ECF0E6EBF0F6FAF2D6D8E90001DD3F41
                  DCFFFFF2E7ECF0EAEFF0EFF4F2FBFEF35E60D11315DB2C2DE8292ADBDDE0ECF2
                  F7F2F3F7F1DDE0EE2728DC2022E60709D55F61D1FBFFF4E8EDF0EBEDF26264C5
                  0000B62424E14242F50000DB2B2CD6E4E5EDE1E3EC292BD70000DA2828F21414
                  DD0000B46063C0FAFBF8544FC70908B40C0CC40302DA0000E61616EE0000D32C
                  2DCF292BCE0100D31717EE0000E40907D80D0CC10000A73F3FAD1810A8534FD4
                  1B19CE0000BE0000D00302DF1313E80000D20000D51414EA0201DE0000CD0000
                  BD1715CB2B27C3050591A8A9CE2829A00402B00908C00000B80000C40202D027
                  27E92524E80101CF0000C30000B80C0AC30000A6292AA3D7D8E8FFFFFDC9CBD9
                  19198B0604A90807B70000A90000B10403C00302BF0000B00000AA0C0BBB0100
                  9F252695DDDEE8F4F8F6E3E9EDF7FBF7D3D5E024258A0B09A41412B400009C00
                  009D00009C00009B1210B206069A323393E2E5EDF3F7F4E6EBEEE2E8E9F3F7F8
                  DBDDE1282A600E0C793E3AD80101A30101A00101A00101A52320C401016A3334
                  6BE2E4E9F2F6F7E6EBECFFFFFFDBDBDD1F203A000036120FAB0000B10000AA00
                  00AB0000AB0000AA0000B30A089B00002E272845E2E2E4F5F8F9C1C1C9353735
                  0000001A18AD0202D70202C40000C72E2BDD1E1CD80000C60303C50201D80F0E
                  9B000000343634D5D6DA00000D251D39413BA9221DEB1F1CD9231DE02824E529
                  28C92320CA2924E6221CDF211CDA221DEC2A249919113104040E2F2D3B3B3053
                  665DD6564BF2564BE9645BF01614BE2527AC1F20A01F1BC3645AF3544AE85E54
                  F74C45C11F153D41414BF2F2F55A5D5F000026827AE09C94FA1B1ABF2324B5E6
                  E7EED4D6E11315A7302DC79C92FB6E67CF000019747878FBFCFDF3F8F9F1F3F4
                  40427446439D6B68DC2829B2DDDFECF3F8F3F7FBF6CECFE01D1EA86662DA2926
                  875B5D87FBFEFDE9EEEEE0E5E8F7FAF9E1E4ED322FA52E29BEBDBEE2FFFFF7E4
                  E9EEE2E8EDFFFFFBA5A6D12520B34543B1F3F5FAF0F4F2E8ECEE}
                OnClick = SpeedButton19Click
              end
              object SpeedButton20: TSpeedButton
                Left = 136
                Top = 62
                Width = 23
                Height = 22
                Flat = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000232E0000232E00000000000000000001FEFEFEFEFEFE
                  FEFEFEFDFDFDFBFDFBFFFFFFFFFEFFFFFEFFFDFEFDF1F4F4E9EFEFECF1F1EBF0
                  F0ECF1F1ECF1F1ECF1F1FEFEFEFEFEFEFDFDFDFCFDFCFFFDFFC7F2CBB1F9B8DD
                  F3DFFFFEFFFDFEFCF1F5F5E9EEEEECF1F1EBF0F0ECF1F1ECF1F1FFFEFFFDFDFD
                  FAFCFAFFFFFF9DE3A423C83138DB4580F18BE2EDE3FFFEFFFCFDFCF1F4F4E9EF
                  EFECF1F1ECF1F1ECF1F1FCFDFCFBFCFBFFFFFF92D69805A9113ABA4370DF7869
                  E27275EB82D1EAD4FFFFFFFBFDFAF1F4F4EAEFEFECF1F1EBF0F0F8FBF8FFFFFF
                  8CC78F008B0023A92B5BF1686BFF7B54E55F33D73F3FD54FCEE5D1FFFFFFFBFC
                  FBF1F4F4EAEFEFECF1F1FFFFFF8AB68E00680012991E45E0536DEF7972EE7E55
                  F56546E0521FC02B24B732C8E2CCFFFFFFFBFCFAF1F4F5E9EEEE529D5613721B
                  1D892740CC4E7DE0868CE29487E28F6FE37A45E6543DCF4908981314951AC7DC
                  C9FFFFFFFBFCFBF2F4F400670051A25A6FCD7890D8969EDEA54CC45737BD427B
                  DB8565D76F34D6432EB93B06720A136514C6D4C8FFFFFFFAFBF905770A2F9E37
                  9ED4A5B9DCBD52BD5B00A10809A91916B0236DCE775DCB6720C62F1FA72C044C
                  07154716C8D2C9FFFFFFBCD9C2239A270C9F1162BE690094004FAE55C6E0CA19
                  A92308A01165C37052BD5C0DB21B119A1C08490C164F18B5C3B7FFFBFFD8E7DC
                  3BAF4217A31B5AB461EDECF0FEF9FFCEE4D2189A1A0D93136AB67352AA5A0391
                  0818912126622C003A00E6EDEBF2F3F7EFF2F4DFECE2F3F3F8EFF2F3E4EDEAF8
                  F6FCCFE2D319981A0A96116EAF7754985A117C190C5B11003900EDF1F2EAF0F0
                  ECF1F1F0F2F5EAF0EFEBF0F0ECF1F1E6EEECF9F6FDCFE4D3199C1B0E97147AB5
                  812D87350251049AB09DEDF2F2EDF2F2ECF1F1EBF1F0ECF1F1ECF1F1ECF1F1EC
                  F1F1E6EEECF9F5FCCEE3D2209D230A870D18811CABC4AFFFFFFFECF1F1EDF1F2
                  ECF1F1ECF1F1EDF2F2ECF1F1ECF1F1ECF1F1ECF1F1E7EEEDF8F5FCD7E7DD9FCD
                  A1CADECEFAFAFFE5EDEBEDF2F2EDF2F2EDF2F2EDF2F2ECF1F1EDF2F2ECF1F1EC
                  F1F1ECF1F1EDF1F1E5EEEAF7F6FBFFFFFFFDFAFFE4ECE9ECF2F1}
                OnClick = SpeedButton20Click
              end
              object ComboBox4: TComboBox
                Left = 23
                Top = 35
                Width = 170
                Height = 21
                TabOrder = 0
                Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
                Items.Strings = (
                  #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
                  #1059#1089#1083#1086#1074#1080#1103' '#1086#1073#1091#1095#1077#1085#1080#1103
                  #1042#1086#1079#1088#1072#1089#1090
                  #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
                  #1051#1100#1075#1086#1090#1099)
              end
            end
          end
          object TabSheet7: TTabSheet
            Caption = #1055#1086' '#1042#1059#1047#1091
            ImageIndex = 3
            object Button11: TButton
              Left = 15
              Top = 16
              Width = 202
              Height = 25
              Caption = #1053#1077#1089#1080#1085#1093#1088#1086#1085#1080#1079#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099
              TabOrder = 0
              WordWrap = True
              OnClick = Button11Click
            end
            object Button13: TButton
              Left = 15
              Top = 47
              Width = 202
              Height = 25
              Caption = 'UpdateStudentExamination'
              TabOrder = 1
              Visible = False
              WordWrap = True
              OnClick = Button13Click
            end
          end
        end
      end
    end
  end
  object ILmain: TImageList
    Left = 24
    Top = 40
    Bitmap = {
      494C01011B002800F40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000007000000001002000000000000070
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000636B7300C69C94000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006394B500218CEF002173B500CE9C
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00DEDFDE00D6D7D600FFFBFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00D6E7CE00C6DFBD00EFF7EF00000000000000
      0000000000000000000000000000000000004AB5FF0042A5FF00218CEF007B84
      9400CE9C94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDBDE003130310000040000080C080010141000A5A6A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEEBDE00319229001886100031922100108200008CC384000000
      0000000000000000000000000000000000000000000052BDFF005ABDFF00218C
      EF002173B500CE9C940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFBFF00212421004A4D4A00F7F3F700FFFFFF00A5A6A50000040000CECB
      CE00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF003996290052A64A00F7FBF70000000000CEE3C60018860800ADD7
      AD00000000000000000000000000000000000000000031A5FF0052BDFF0042A5
      FF00218CEF0084849400CE9C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6D7D60021202100D6D7D600000000000000000000000000525152005A59
      5A00000000000000000000000000000000000000000000000000000000000000
      0000EFF3E700429A3100CEE7CE0000000000000000000000000073B66B004A9E
      39000000000000000000000000000000000000000000000000000000000052BD
      FF005ABDFF003184D60052636B00000000009C6B6B00CEA59C00D6B5A500CE9C
      9C00C69494000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B797B00292C
      2900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094C78C00218E
      18000000000000000000000000000000000000000000000000000000000031A5
      FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFFD600FFFFDE00FFFF
      D600EFDEC6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A595A004241
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000000000000000000073B66B003996
      2900000000000000000000000000000000000000000000000000000000000000
      000000000000C6ADAD00CEA59400FFE7BD00FFF7CE00FFFFD600FFFFD600FFFF
      DE00FFFFE700FFFFFF00C6A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700181C18005A595A00EFEFEF00FFFFFF00ADAEAD00000400009492
      9400000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00218E1800429E3900DEEBD600F7FBF700ADD3A500108208008CC7
      8C00000000000000000000000000000000000000000000000000000000000000
      000000000000BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFFD600FFFFDE00FFFF
      EF00FFFFF700FFFFFF00F7EFDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000029282900181C180008080800080808000000000063616300FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000004AA24200298E210018861000087D0000088200006BB26300FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFFD600FFFFDE00FFFF
      F700FFFFF700FFFFDE00FFFFDE00C69494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A595A0042454200E7E7E700B5B6B500D6D7D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007BBA730039962900F7FBF700CEE7CE00E7F3E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFD6B500FFE7B500F7C68C00F7DEB500FFFFD600FFFFDE00FFFF
      EF00FFFFEF00FFFFDE00FFFFDE00BD9C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8E8C0010141000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADD3A50010820000F7FBF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEAD00FFEFBD00EFBD8400F7C69400FFEFC600FFFFD600FFFF
      D600FFFFD600FFFFD600FFFFDE00C69494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBEBD0000000000737573007B797B007B797B007B797B00DEDB
      DE00000000000000000000000000000000000000000000000000000000000000
      000000000000DEEBDE00087D000063AA5A006BB263006BB263006BB26300CEE3
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6A500F7E7BD00FFFF
      D600FFFFD600FFFFD600FFFFD600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F3F7002928290029282900292829002928290029282900C6C3
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF004AA242004A9E39004A9E39004A9E39004A9E3900BDDF
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C69C8C00FFFFFF00FFFFFF00F7C69400EFBD8400F7C6
      9400F7D6AD00FFEFC600BD9C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFE700FFFFEF00FFE7B500F7DEAD00FFE7
      B500FFEFBD00C69C940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C69C8C00CEA59C00C69C
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700B5B6B500ADAAAD00DEDFDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00E7F3E700FFFBF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C7C600101410002120210039383900080808006B6D6B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000008CC3840018861000087D0000108208006BB26300F7FB
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E70031303100CECFCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFF3E700399A3100D6E7CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700181818005A5D5A00FFFFFF0000000000D6D7D600101010009492
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000009CCF9C0010820000B5D7AD00FFFFFF00DEEBD600399629005AAA
      5200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E3E70000000000C6C3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7F3E700087D0000C6E3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDBDE00393C3900DEDBDE000000000000000000000000006B6D6B003938
      3900000000000000000000000000000000000000000000000000000000000000
      0000000000004A9E390063AE5A00000000000000000000000000C6E3C600087D
      0000E7F3E7000000000000000000000000000000000000000000000000000000
      0000DEDBDE00D6D7D600D6D7D600D6D7D600BDBEBD0000000000A5A2A500E7E3
      E700000000000000000000000000000000000000000000000000000000000000
      0000DEEFDE00DEEBD600DEEBD600DEEBD600C6DFBD00087D0000ADD3A500E7EF
      E700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6D6B003134
      3100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000DEEFDE00087D
      0000CEE3CE000000000000000000000000000000000000000000000000000000
      000010141000000000000000000000000000000000000000000000000000393C
      3900000000000000000000000000000000000000000000000000000000000000
      0000218A1000087D0000087D0000087D0000087D0000087D0000087D00004A9E
      3900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D3D600101010008C8A
      8C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084BE84001886
      1000F7FBF7000000000000000000000000000000000000000000000000000000
      00006B6D6B0042414200F7F3F700F7F7F700D6D7D60000000000BDBABD00F7F7
      F700000000000000000000000000000000000000000000000000000000000000
      000073B66B004A9E4200F7FBF700F7FBF700DEEBD600087D0000BDDFBD00FFFB
      F700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008486840021242100080808008C8A8C00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7F3E7006BAE5A004AA2420029922100BDDF
      BD00000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700292C29008C8E8C0000000000E7E3E70000000000C6C3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7FBF7003996290094C78C0000000000E7F3E700087D0000C6E3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEBEF00B5B6B500313431004A4D4A00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7FBF70094C78C00429E3900429A3900EFF7
      EF00000000000000000000000000000000000000000000000000000000000000
      000000000000D6D7D60010101000CECFCE00E7E3E70000000000C6C3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6EBD60018861000D6E7CE00E7F3E700087D0000C6E3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00E7E7E700F7F7F7000000000000000000DEDBDE0000000000CECF
      CE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00319629007BBA
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000009496940029282900D6D7D60000000000C6C3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CCB940031922900DEEBD600087D0000C6E3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF0000040000A5A6A5000000000000000000D6D7D60000000000CECF
      CE00000000000000000000000000000000000000000000000000000000000000
      00000000000073B66B006BB2630000000000000000000000000052A64A0063AE
      5A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF004A4D4A004A494A0000000000C6C3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF005AA64A0052A24A00087D0000C6E3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073717300101410009C9E9C00ADAEAD0031343100393C3900FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000B5D7AD0010820000ADD7AD00F7FBF700B5DBB50010820800B5D7
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEBEF001818180000000000C6C3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFF7EF00218E1800087D0000C6E3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF008C8E8C00393839003134310073757300F7F3F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CCB9400218A1000087D0000218A10009CCB94000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBEBD0000000000C6C3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6DFBD0010820000C6E3C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7FBF700FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDFDE00F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEEFDE00F7FBF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018181800F7F3F700E7E3E700D6D7D600CECFCE00BDBABD00080808000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018181800F7F3F700E7E3E700D6D7D600CECFCE00BDBABD00080808000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001014
      1800EFEFEF00FFFFFF00FFFFFF00FFFFFF00E7E3E700D6D3D6008C8EAD000000
      0000000000000000000000000000000000000000000000000000000000001014
      1800EFEFEF00FFFFFF00FFFFFF00FFFFFF00E7E3E700D6D3D6008C8EAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000181C1800EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E3E700CECBCE007379
      9400000000000000000000000000000000000000000000000000181C1800EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E3E700CECBCE007379
      9400000000000000000000000000000000000000000000000000000000000000
      0000949694004245420042454200424542004245420042454200424542009492
      9400000000000000000000000000000000000000000000000000000000000000
      00008CC38C0052A2420052A2420052A2420052A2420052A2420052A24200A5CF
      A500000000000000000000000000000000000000000000000000181C1800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D7D600CECB
      CE00080808000000000000000000000000000000000000000000181C1800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D7D600CECB
      CE00080808000000000000000000000000000000000000000000000000000000
      0000ADAEAD0000000000424142005A5D5A005A5D5A005A5D5A005A5D5A009C9E
      9C00000000000000000000000000000000000000000000000000000000000000
      00009CCF9C00087D000052A24A0063AE5A0063AE5A0063AE5A0063AE5A00ADD7
      AD00000000000000000000000000000000000000000000000000181C1800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E3E700CECF
      CE00080C10000000000000000000000000000000000000000000181C1800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E3E700CECF
      CE00080C10000000000000000000000000000000000000000000000000000000
      0000FFFFFF004241420029282900E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00399A3100429A3100EFF7EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000181C1800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00CECF
      CE00080C08000000000000000000000000000000000000000000181C1800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00CECF
      CE00080C08000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF0031343100181C1800CECFCE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7F3E7003192290031922100DEEFDE0000000000000000000000
      0000000000000000000000000000000000000000000000000000181C1800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F3F700ADAA
      C600101421000000000000000000000000000000000000000000181C1800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F3F700ADAA
      C600101421000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F3F7004A4D4A00080C0800BDBABD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFF7EF004A9E4200218A1000CEE3C600000000000000
      000000000000000000000000000000000000000000000000000010101800F7F7
      F700FFFFFF00FFFFFF00FFFFFF00E7E3E700E7E3E700F7F7F700EFEFEF001010
      100000000000000000000000000000000000000000000000000010101800F7F7
      F700FFFFFF00FFFFFF00FFFFFF00E7E3E700E7E3E700F7F7F700EFEFEF001010
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF006361630000040000BDBEBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFBFF005AA64A0018860800CEE7CE000000
      000000000000000000000000000000000000000000000000000000000000181C
      1800FFFFFF00FFFFFF00FFFFFF00F7F3F700D6D7D600CECBCE00848684000000
      000000000000000000000000000000000000000000000000000000000000181C
      1800FFFFFF00FFFFFF00FFFFFF00F7F3F700D6D7D600CECBCE00848684000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF005255520010141000EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF004AA2420029922100F7FB
      F70000000000000000000000000000000000000000000000000000000000181C
      1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDBDE00C6C3C6000000
      080000000000000000000000000000000000000000000000000000000000181C
      1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDBDE00C6C3C6000000
      0800000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000EFEFEF00080808009C9A
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000E7F3E70010820000B5D7
      AD0000000000000000000000000000000000000000000000000000000000181C
      1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBFF00D6D3D6000808
      080000000000000000000000000000000000000000000000000000000000181C
      1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBFF00D6D3D6000808
      0800000000000000000000000000000000000000000000000000000000000000
      0000ADAEAD0010141000FFFFFF00000000000000000000000000212421008482
      8400000000000000000000000000000000000000000000000000000000000000
      0000A5CF9C003192210000000000000000000000000000000000188610009CCB
      940000000000000000000000000000000000000000000000000000000000181C
      1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDFDE000808
      100000000000000000000000000000000000000000000000000000000000181C
      1800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDFDE000808
      1000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700080808008C8E8C000000000000000000B5B2B50000000000C6C3
      C600000000000000000000000000000000000000000000000000000000000000
      0000DEEBD60010820000A5CFA5000000000000000000A5CFA50010820000D6EB
      D60000000000000000000000000000000000000000000000000000000000181C
      1800FFFBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6CBDE000000
      000000000000000000000000000000000000000000000000000000000000181C
      1800FFFBFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6CBDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A6A500080C0800212021002928290000040000848684000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009CCB9400108208003192210031922100108208009CCB94000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181C1800FFFBFF00FFFFFF00FFFFFF00FFFFFF00EFEBEF00101410000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181C1800FFFBFF00FFFFFF00FFFFFF00FFFFFF00EFEBEF00101410000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F3F700BDBEBD00B5B6B500E7E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFF7EF00BDDFBD00BDDBBD00EFF7EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000181C180000000000000000000000000018181800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000181C180000000000000000000000000018181800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000292829003134310031343100292C290010141000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000292829003134310031343100292C290010141000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000180800001408000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000180800001408000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4D5200525152004A4D4A004A494A004A494A0042414200212831000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4D5200525152004A4D4A004A494A004A494A0042414200212831000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000055310000652100005D1800005D1000005D100000490800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000055310000652100005D1800005D1000005D100000490800000000000000
      0000000000000000000000000000000000000000000000000000000000004241
      520063656B0063656300636163005A595A004A4D4A004A494A00393842000000
      0000000000000000000000000000000000000000000000000000000000004241
      520063656B0063656300636163005A595A004A4D4A004A494A00393842000000
      0000000000000000000000000000000000000000000000000000000000000034
      5200008E7300008A6B00007D5A00006D3900005D1800005D1000002400000000
      0000000000000000000000000000000000000000000000000000000000000034
      5200008E7300008A6B00007D5A00006D3900005D1800005D1000002400000000
      0000000000000000000000000000000000000000000000000000525563007371
      73007B7D7B007B7D7B00737573006B696B005A595A004A4D4A00424542003130
      3900000000000000000000000000000000000000000000000000525563007371
      73007B7D7B007B7D7B00737573006B696B005A595A004A4D4A00424542003130
      390000000000000000000000000000000000000000000000000000657300008E
      940000B2AD0000AEA50000A29400008E7B0000754A00005D1800005508000010
      000000000000000000000000000000000000000000000000000000657300008E
      940000B2AD0000AEA50000A29400008E7B0000754A00005D1800005508000010
      00000000000000000000000000000000000000000000000000007B7984009492
      94009C9E9C00949694008C8A8C007B797B006B696B00525552004A494A004245
      42002124290000000000000000000000000000000000000000007B7984009492
      94009C9E9C00949694008C8A8C007B797B006B696B00525552004A494A004245
      420021242900000000000000000000000000000000000000000000AEAD0000CF
      CE0000D7D60000D7D60000C3BD0000AEA500008E7B00006D4200005D10000059
      100000000000000000000000000000000000000000000000000000AEAD0000CF
      CE0000D7D60000D7D60000C3BD0000AEA500008E7B00006D4200005D10000059
      100000000000000000000000000000000000000000000000000094929C00BDBE
      BD00CECBCE00C6C7C600ADAAAD008C8A8C0073757300636163004A4D4A004A49
      4A00292C3900000000000000000000000000000000000000000094929C00BDBE
      BD00CECBCE00C6C7C600ADAAAD008C8A8C0073757300636163004A4D4A004A49
      4A00292C3900000000000000000000000000000000000000000000CFCE0000F7
      FF0000FFFF0000FFFF0000E7E70000C3C60000A294000082630000611800005D
      100000000800000000000000000000000000000000000000000000CFCE0000F7
      FF0000FFFF0000FFFF0000E7E70000C3C60000A294000082630000611800005D
      1000000008000000000000000000000000000000000000000000A5A2AD00D6D7
      D600E7E3E700DEDFDE00C6C3C600949694007B797B0063656300525152004A49
      4A00292831000000000000000000000000000000000000000000A5A2AD00D6D7
      D600E7E3E700DEDFDE00C6C3C600949694007B797B0063656300525152004A49
      4A0029283100000000000000000000000000000000000000000000E3E70000FF
      FF0000FFFF0000FFFF0000FFFF0000D7D60000AEA500008A730000652900005D
      100000000000000000000000000000000000000000000000000000E3E70000FF
      FF0000FFFF0000FFFF0000FFFF0000D7D60000AEA500008A730000652900005D
      100000000000000000000000000000000000000000000000000084869400D6D7
      D600EFEBEF00E7E3E700C6C7C600949694007B7D7B0063656300525152004241
      4A0010101000000000000000000000000000000000000000000084869400D6D7
      D600EFEBEF00E7E3E700C6C7C600949694007B7D7B0063656300525152004241
      4A0010101000000000000000000000000000000000000000000000CBD60000FF
      FF0000FFFF0000FFFF0000FBFF0000C3D60000AEAD00008E730000692900004D
      080000000000000000000000000000000000000000000000000000CBD60000FF
      FF0000FFFF0000FFFF0000FBFF0000C3D60000AEAD00008E730000692900004D
      080000000000000000000000000000000000000000000000000039385A00B5B2
      BD00D6D3D600949694005A595A004A4D4A004A4D4A0052515200525152003134
      390000000000000000000000000000000000000000000000000039385A00B5B2
      BD00D6D3D600949694005A595A004A4D4A004A4D4A0052515200525152003134
      39000000000000000000000000000000000000000000000000000000000000F3
      F70000FFFF0000A2B50000554200004D29000041390000415200005D21000014
      08000000000000000000000000000000000000000000000000000000000000F3
      F70000FFFF0000A2B50000554200004D29000041390000415200005D21000014
      0800000000000000000000000000000000000000000000000000000000005251
      6300737173005A5D5A005A595A00525152004A494A0042454200313031000000
      0000000000000000000000000000000000000000000000000000000000005251
      6300737173005A5D5A005A595A00525152004A494A0042454200313031000000
      0000000000000000000000000000000000000000000000000000000000000051
      630000868400007D5A0000754A0000693100005D100000551000000021000000
      0000000000000000000000000000000000000000000000000000000000000051
      630000868400007D5A0000754A0000693100005D100000551000000021000000
      0000000000000000000000000000000000000000000000000000000000005A5D
      6B00737173007375730073717300636563005A595A004A494A00424542000808
      0800000000000000000000000000000000000000000000000000000000005A5D
      6B00737173007375730073717300636563005A595A004A494A00424542000808
      0800000000000000000000000000000000000000000000000000000000000075
      7B0000A29C0000AA9C00009E8C00008E730000714200005D1000004118000000
      0000000000000000000000000000000000000000000000000000000000000075
      7B0000A29C0000AA9C00009E8C00008E730000714200005D1000004118000000
      0000000000000000000000000000000000000000000000000000000000007379
      84008C8E8C00949694008C8A8C007B7D7B006B696B00525552004A494A002124
      3100000000000000000000000000000000000000000000000000000000007379
      84008C8E8C00949694008C8A8C007B7D7B006B696B00525552004A494A002124
      31000000000000000000000000000000000000000000000000000000000000A6
      AD0000CFCE0000D3D60000C7C60000AEA500008E7300006D3100005910000000
      18000000000000000000000000000000000000000000000000000000000000A6
      AD0000CFCE0000D3D60000C7C60000AEA500008E7300006D3100005910000000
      1800000000000000000000000000000000000000000000000000000000008C8E
      9400BDBEBD00CECBCE00BDBABD0094929400737573005A5D5A004A4D4A002128
      3100000000000000000000000000000000000000000000000000000000008C8E
      9400BDBEBD00CECBCE00BDBABD0094929400737573005A5D5A004A4D4A002128
      31000000000000000000000000000000000000000000000000000000000000C3
      CE0000FFFF0000FFFF0000F3F70000CBC60000A29C00007D5A00005D18000000
      18000000000000000000000000000000000000000000000000000000000000C3
      CE0000FFFF0000FFFF0000F3F70000CBC60000A29C00007D5A00005D18000000
      1800000000000000000000000000000000000000000000000000000000008C8A
      9C00D6D7DE00E7E7E700D6D7D600A5A6A5007B7D7B00636563004A4D52000004
      0800000000000000000000000000000000000000000000000000000000008C8A
      9C00D6D7DE00E7E7E700D6D7D600A5A6A5007B7D7B00636563004A4D52000004
      08000000000000000000000000000000000000000000000000000000000000B2
      BD0000FFFF0000FFFF0000FFFF0000DBDE0000B2AD0000866B00005131000000
      00000000000000000000000000000000000000000000000000000000000000B2
      BD0000FFFF0000FFFF0000FFFF0000DBDE0000B2AD0000866B00005131000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBAC600DEDFE700D6D3D600A5A2A5007B7D7B0063616300393C42000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBAC600DEDFE700D6D3D600A5A2A5007B7D7B0063616300393C42000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000E3EF0000FFFF0000FFFF0000DBDE0000AEA500007D6B00001031000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000E3EF0000FFFF0000FFFF0000DBDE0000AEA500007D6B00001031000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5AAB500ADAEAD0084868400737173004A4D5200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5AAB500ADAEAD0084868400737173004A4D5200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BECE0000D7DE0000B2B500008A8C0000304A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BECE0000D7DE0000B2B500008A8C0000304A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008148C000018AD000018A50008188C00080C4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008148C000018AD000018A50008188C00080C4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008691800107D1800107918000869100000200000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008691800107D1800107918000869100000200000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001024D6000020E700001CE700001CE700001CDE000018CE00081484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001024D6000020E700001CE700001CE700001CDE000018CE00081484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000021962900189E2100189A2100189A1800189A180010921800085910000000
      0000000000000000000000000000000000000000000000000000000000000000
      000021962900189E2100189A2100189A1800189A180010921800085910000000
      0000000000000000000000000000000000000000000000000000000000002124
      BD001838EF001838EF001030EF000828EF00001CE700001CDE000018B5000000
      0000000000000000000000000000000000000000000000000000000000002124
      BD001838EF001838EF001030EF000828EF00001CE700001CDE000018B5000000
      000000000000000000000000000000000000000000000000000000000000188A
      390039AE4A0039AE420031AA390021A22900189A2100189A1800108218000000
      000000000000000000000000000000000000000000000000000000000000188A
      390039AE4A0039AE420031AA390021A22900189A2100189A1800108218000000
      00000000000000000000000000000000000000000000000000002934CE003149
      EF003151F700314DF7002949F700183CEF00082CEF00001CE7000018D6000018
      A5000000100000000000000000000000000000000000000000002934CE003149
      EF003151F700314DF7002949F700183CEF00082CEF00001CE7000018D6000018
      A500000010000000000000000000000000000000000000000000319E4A004AAE
      5A005ABE6B0052BE6B004ABA5A0039B24A0029A63100189A2100189618001079
      1800000800000000000000000000000000000000000000000000319E4A004AAE
      5A005ABE6B0052BE6B004ABA5A0039B24A0029A63100189A2100189618001079
      1800000800000000000000000000000000000000000000000000394DEF004A65
      F7005271F700526DF700395DF700294DF7001838EF000828EF00001CE700001C
      DE0008147B000000000000000000000000000000000000000000394DEF004A65
      F7005271F700526DF700395DF700294DF7001838EF000828EF00001CE700001C
      DE0008147B00000000000000000000000000000000000000000052BE6B0073CF
      84007BD3940073CF8C0063C77B0052BE630039B24A0029A23100189A1800189A
      1800085D1000000000000000000000000000000000000000000052BE6B0073CF
      84007BD3940073CF8C0063C77B0052BE630039B24A0029A23100189A1800189A
      1800085D100000000000000000000000000000000000000000005269F700849A
      FF009CAAFF0094A2FF006382F700395DF7002945F7001030EF00001CE700001C
      DE000818940000000000000000000000000000000000000000005269F700849A
      FF009CAAFF0094A2FF006382F700395DF7002945F7001030EF00001CE700001C
      DE000818940000000000000000000000000000000000000000006BCF8C009CDF
      AD00ADE3BD00A5E3B50084D79C0063C77B004ABA5A0031AA3900189E2100189A
      18000871180000000000000000000000000000000000000000006BCF8C009CDF
      AD00ADE3BD00A5E3B50084D79C0063C77B004ABA5A0031AA3900189E2100189A
      1800087118000000000000000000000000000000000000000000737DF700ADB6
      FF00C6CFFF00B5C3FF008CA2FF004A69F700314DF7001834EF000020EF00001C
      DE00081484000000000000000000000000000000000000000000737DF700ADB6
      FF00C6CFFF00B5C3FF008CA2FF004A69F700314DF7001834EF000020EF00001C
      DE0008148400000000000000000000000000000000000000000084D79C00B5EB
      C600C6EFD600BDEBCE00A5E3B50073CF8C0052BE6B0039AE4A00219E2100189A
      180008651800000000000000000000000000000000000000000084D79C00B5EB
      C600C6EFD600BDEBCE00A5E3B50073CF8C0052BE6B0039AE4A00219E2100189A
      18000865180000000000000000000000000000000000000000005A61EF00ADBA
      FF00CED7FF00BDC7FF0094A6F7005A71EF003151F7001838EF000020EF00001C
      CE00000C420000000000000000000000000000000000000000005A61EF00ADBA
      FF00CED7FF00BDC7FF0094A6F7005A71EF003151F7001838EF000020EF00001C
      CE00000C420000000000000000000000000000000000000000006BCB8C00B5EB
      CE00CEF3DE00C6EFD600A5E3BD0073C78C005ABE6B0039AE4A00219E29001092
      1800001C000000000000000000000000000000000000000000006BCB8C00B5EB
      CE00CEF3DE00C6EFD600A5E3BD0073C78C005ABE6B0039AE4A00219E29001092
      1800001C000000000000000000000000000000000000000000000000FF00848E
      F700ADB6F7006371E7002134D6001024CE001828C6002130C6000824DE000818
      A5000000000000000000000000000000000000000000000000000000FF00848E
      F700ADB6F7006371E7002134D6001024CE001828C6002130C6000824DE000818
      A5000000000000000000000000000000000000000000000000000000000094DB
      AD00B5E7C60063BA73002996310018922100218E2900298E3900189A21001079
      18000000000000000000000000000000000000000000000000000000000094DB
      AD00B5E7C60063BA73002996310018922100218E2900298E3900189A21001079
      180000000000000000000000000000000000000000000000000000000000292C
      CE003949E700102CEF000828EF000020EF00001CE700001CDE0010189C000000
      000000000000000000000000000000000000000000000000000000000000292C
      CE003949E700102CEF000828EF000020EF00001CE700001CDE0010189C000000
      0000000000000000000000000000000000000000000000000000000000002996
      390042AE520031AA390029A63100219E2900189A180018961800106921000000
      0000000000000000000000000000000000000000000000000000000000002996
      390042AE520031AA390029A63100219E2900189A180018961800106921000000
      0000000000000000000000000000000000000000000000000000000000002934
      E7002945F7002949F7002145F7001838EF000828EF00001CE700001CCE000004
      2900000000000000000000000000000000000000000000000000000000002934
      E7002945F7002949F7002145F7001838EF000828EF00001CE700001CCE000004
      29000000000000000000000000000000000000000000000000000000000031A6
      4A004ABA5A0052BA63004AB65A0039AE4A0029A23100189A1800188E21000014
      00000000000000000000000000000000000000000000000000000000000031A6
      4A004ABA5A0052BA63004AB65A0039AE4A0029A23100189A1800188E21000014
      000000000000000000000000000000000000000000000000000000000000394D
      F7004261F7004A69F7004261F700314DF7001838EF000824EF00001CDE000814
      840000000000000000000000000000000000000000000000000000000000394D
      F7004261F7004A69F7004261F700314DF7001838EF000824EF00001CDE000814
      8400000000000000000000000000000000000000000000000000000000004ABA
      6B0073CF840073CF8C006BCB7B0052BE630039B24A0021A22900189A18001055
      2100000000000000000000000000000000000000000000000000000000004ABA
      6B0073CF840073CF8C006BCB7B0052BE630039B24A0021A22900189A18001055
      2100000000000000000000000000000000000000000000000000000000005265
      F7008C9AFF009CAAFF007B96FF004A65F7002949F7001030EF00001CE7000814
      8C00000000000000000000000000000000000000000000000000000000005265
      F7008C9AFF009CAAFF007B96FF004A65F7002949F7001030EF00001CE7000814
      8C000000000000000000000000000000000000000000000000000000000063C7
      8400A5E3B500ADE3BD0094DBA5006BCB84004ABA5A0031AA3900189A21001059
      21000000000000000000000000000000000000000000000000000000000063C7
      8400A5E3B500ADE3BD0094DBA5006BCB84004ABA5A0031AA3900189A21001059
      2100000000000000000000000000000000000000000000000000000000005A61
      F700ADBAFF00C6D3FF00A5B6FF00637DF7003151F7001834EF000020DE000000
      2900000000000000000000000000000000000000000000000000000000005A61
      F700ADBAFF00C6D3FF00A5B6FF00637DF7003151F7001834EF000020DE000000
      29000000000000000000000000000000000000000000000000000000000052BE
      7300B5EBCE00C6F3DE00ADE7C6007BD394005ABE6B0039AE420018962900001C
      00000000000000000000000000000000000000000000000000000000000052BE
      7300B5EBCE00C6F3DE00ADE7C6007BD394005ABE6B0039AE420018962900001C
      0000000000000000000000000000000000000000000000000000000000000000
      0000949AF700BDCBFF00A5B2FF006379F7003151F7001834EF00081CBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000949AF700BDCBFF00A5B2FF006379F7003151F7001834EF00081CBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084D7A500BDEFD600ADE7C6007BD3940052BE6B0031AA4200187929000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084D7A500BDEFD600ADE7C6007BD3940052BE6B0031AA4200187929000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B86F700738AF700425DF7002945EF00182CC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B86F700738AF700425DF7002945EF00182CC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063C784007BCF94005ABE730039AE5A0018863100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063C784007BCF94005ABE730039AE5A0018863100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001818180018181800101410001014
      100010141000080C080000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073180000BD0C0000CE040000C604
      0000A50C0000310C000000000000000000000000000000000000000000000000
      00000000000000697300007D73000079730000696B0000202100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000697300007D73000079730000696B0000202100000000000000
      0000000000000000000000000000000000000000000000000000313431003938
      39004241420039383900101410002124210029282900292C290021242100181C
      1800101410001014100008080800000000000000000000000000104500003149
      000021590000314D0000311800007B240000EF1C1000FF1C1000FF141000FF08
      0000FF000000DE04000029080000000000000000000000000000000000000000
      000000968400009E8400009A7B00009A7B00009A7B000092730000596B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000968400009E8400009A7B00009A7B00009A7B000092730000596B000000
      000000000000000000000000000000000000000000004A4D4A00636563007371
      73006B6D6B00636563005A5D5A00313031004A4D4A00525552004A4D4A00393C
      390029282900101410001014100000000000000000003965000021860800089A
      08000096080000920000088200004A410000FF453100FF493900FF413100FF30
      2100FF141000FF0400007310000010000000000000000000000000000000008A
      940000AEA50000AEA50000AA9C0000A28C00009A7B00009A7B00008273000000
      000000000000000000000000000000000000000000000000000000000000008A
      940000AEA50000AEA50000AA9C0000A28C00009A7B00009A7B00008273000000
      000000000000000000000000000000000000000000005A5D5A008C8A8C008486
      8400848284007B797B005A595A00636163007B797B007B797B00737173005A5D
      5A0042454200292829001014100010141000000000004279100018AE290018AE
      290018AA210010A2180052711000E7594200FF755A00FF755A00FF695200FF55
      4200FF382900FF181000FF000000841000000000000000000000009EA50000AE
      B50000BEBD0000BEBD0000BAB50000B2A50000A69400009A7B00009673000079
      7300000800000000000000000000000000000000000000000000009EA50000AE
      B50000BEBD0000BEBD0000BAB50000B2A50000A69400009A7B00009673000079
      7300000800000000000000000000000000005A5D5A00848684009C9E9C009C9E
      9C00949694008C8A8C006B696B00949294009C9E9C009C9E9C00949694007B7D
      7B0063616300393C3900181C1800101410004275180031A6390031C74A0029C3
      4A0029BE420021B231009C753100FF8E7300FF9E7B00FFA27B00FF927300FF79
      5A00FF594200FF302100FF080800B5080000000000000000000000BEBD0000CF
      CE0000D3D60000CFCE0000C7C60000BEBD0000B2A50000A28C00009A7B00009A
      7B00005D6B00000000000000000000000000000000000000000000BEBD0000CF
      CE0000D3D60000CFCE0000C7C60000BEBD0000B2A50000A28C00009A7B00009A
      7B00005D6B000000000000000000000000008C8E8C00ADAEAD00B5B6B500B5B2
      B500ADAAAD009C9E9C007B7D7B00ADAEAD00C6C3C600C6C7C600B5B2B5009496
      94007375730052515200292829001014100042AA420039D3630042DB6B0042D7
      6B0039CF5A0029C34A009C8E4A00FFB28C00FFCB9C00FFCB9C00FFB68C00FF96
      7300FF6D5200FF453100FF181000BD080000000000000000000000CFCE0000DF
      DE0008E3E70000E3E70000D7D60000C7C60000BAB50000AA9C00009E7B00009A
      7B0000717300000000000000000000000000000000000000000000CFCE0000DF
      DE0008E3E70000E3E70000D7D60000C7C60000BAB50000AA9C00009E7B00009A
      7B00007173000000000000000000000000009C9A9C00C6C3C600CECBCE00CECB
      CE00BDBEBD00ADAEAD0084868400C6C3C600D6D7D600D6D7D600CECBCE00A5A6
      A500848284005A595A0031303100181818004ABA52004AE77B0052EF8C0052EB
      84004AE3730039D35A00739E4200FFCB9C00FFDFAD00FFDFAD00FFD3A500FFAA
      8400FF7D6300FF513900FF201800A5100000000000000000000000D7D60010EB
      EF0021EFEF0018EBEF0000E3E70000CFCE0000BEBD0000AEA500009E8400009A
      7B0000656B00000000000000000000000000000000000000000000D7D60010EB
      EF0021EFEF0018EBEF0000E3E70000CFCE0000BEBD0000AEA500009E8400009A
      7B0000656B000000000000000000000000009C9E9C00D6D3D600D6D7D600D6D7
      D600CECFCE00B5B6B5009C9A9C00ADAEAD00D6D7D600C6C3C600A5A6A5008C8E
      8C00737573005A595A00313031000004000052BA5A005AF38C005AF794005AF7
      940052EF8C0042DB6B0039BE4A00DEB68400F7DFAD00CECBAD0094A6B500948A
      9400CE716300FF514200E724100042000000000000000000000000CBCE0010EB
      EF0031F3F70021EFEF0008E3E70000C7CE0000BEBD0000AEA500009E84000092
      7300001C0000000000000000000000000000000000000000000000CBCE0010EB
      EF0031F3F70021EFEF0008E3E70000C7CE0000BEBD0000AEA500009E84000092
      7300001C000000000000000000000000000084828400D6D3D600D6D7D600CECF
      CE00BDBABD00A5A6A500A5A2A50084868400A5A6A5009C9E9C009C9E9C009496
      94008C8A8C00525152002120210000000000639A42005AF794005AF794005AEF
      94004AD3840039C76B0031C752004AA239007BA6B5002992F700298EFF002986
      FF002979EF008C455A00A51C00000000000000000000000000000000000000DB
      DE0010E7EF0000BAC60000968C0000928400008E8C00008E9400009A84000079
      73000000000000000000000000000000000000000000000000000000000000DB
      DE0010E7EF0000BAC60000968C0000928400008E8C00008E9400009A84000079
      730000000000000000000000000000000000292C2900A5A2A500B5B6B5009C9A
      9C00949694008C8E8C007B7D7B0084828400ADAEAD00B5B2B500ADAEAD00A5A6
      A5009C9A9C008C8A8C0031343100000000006330000063BE630042C7AD002192
      E7002986FF00297DEF0021829400189A630039A6FF0042AAFF0031A2FF00299A
      FF00298AFF002979EF0000305200000000000000000000000000000000000096
      9C0000AEAD0000AA9C0000A69400009E8400009A7B0000967B00006984000000
      0000000000000000000000000000000000000000000000000000000000000096
      9C0000AEAD0000AA9C0000A69400009E8400009A7B0000967B00006984000000
      000000000000000000000000000000000000000000008C8E8C00ADAAAD00ADAA
      AD00A5A6A5009C9E9C00949694009C9E9C00C6C7C600C6C7C600BDBEBD00B5B2
      B500A5A6A500949694006B696B000000000000000000218ACE0031A2FF0031A2
      FF00299AFF00298EFF003182FF003992E7007BBEFF007BBEFF006BB6FF0042AA
      FF00299AFF002986FF001061AD000000000000000000000000000000000000A6
      A50000BAB50000BAB50000B6B50000AEA50000A28C00009A7B00008E7B000014
      21000000000000000000000000000000000000000000000000000000000000A6
      A50000BAB50000BAB50000B6B50000AEA50000A28C00009A7B00008E7B000014
      21000000000000000000000000000000000000000000ADAEAD00BDBEBD00BDBE
      BD00B5B6B500ADAAAD009C9E9C00ADAEAD00D6D7D600D6D7D600D6D3D600C6C3
      C600ADAEAD009C9E9C007375730000000000000000004AA6EF006BB6FF0063B6
      FF0052AEFF0031A2FF00298EFF0052A2F700A5D3FF00A5D3FF0094CBFF006BBA
      FF0039A6FF00298EFF00106DBD000000000000000000000000000000000000BA
      BD0000CFCE0000CFCE0000CBC60000BEBD0000B2A50000A28C00009A7B000055
      7B000000000000000000000000000000000000000000000000000000000000BA
      BD0000CFCE0000CFCE0000CBC60000BEBD0000B2A50000A28C00009A7B000055
      7B00000000000000000000000000000000008C8E8C00BDBEBD00D6D3D600D6D3
      D600CECBCE00BDBABD00A5A6A500A5A2A500E7E3E700E7E7E700DEDBDE00CECB
      CE00B5B6B500A5A2A5006361630000000000007DFF0073B6F7009CCFFF009CCB
      FF007BC3FF0052AEFF00299EFF00399AF700B5DFFF00BDE3FF00A5D7FF0084C3
      FF004AAAFF002196FF00085D9C000000000000000000000000000000000000C7
      CE0000E3E70008E3E70000DBDE0000CBCE0000BAB50000AA9C00009A7B000059
      7B000000000000000000000000000000000000000000000000000000000000C7
      CE0000E3E70008E3E70000DBDE0000CBCE0000BAB50000AA9C00009A7B000059
      7B000000000000000000000000000000000000000000C6C7C600DEDFDE00DEDF
      DE00D6D3D600C6C3C600ADAEAD009C9A9C00CECBCE00EFEBEF00DEDBDE00CECB
      CE00B5B2B500949294000000000000000000000000007BBEF700B5DFFF00ADDB
      FF009CCFFF006BBAFF0039A6FF00218AF7008CC7EF00C6E7FF00ADD7FF0084C3
      FF004AAAFF00108ADE00000000000000000000000000000000000000000000BE
      C60010EBEF0029F3F70008E7E70000D3D60000BEBD0000AEA50000968400001C
      00000000000000000000000000000000000000000000000000000000000000BE
      C60010EBEF0029F3F70008E7E70000D3D60000BEBD0000AEA50000968400001C
      00000000000000000000000000000000000000000000ADAEAD00E7E7E700E7E7
      E700D6D7D600C6C7C600ADAEAD008C8A8C0063616300B5B6B500BDBEBD00B5B2
      B50094969400000000000000000000000000000000004AAEE700C6E7FF00BDE7
      FF00A5D3FF007BBEFF0039A6FF001082D6000055AD0052B2E70073BAF70052AE
      EF00218EDE000000000000000000000000000000000000000000000000000000
      000000D7DE0018EFEF0008E7E70000D3D60000BEBD0000AAA500007984000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000D7DE0018EFEF0008E7E70000D3D60000BEBD0000AAA500007984000000
      0000000000000000000000000000000000000000000000000000BDBABD00CECB
      CE00C6C7C600B5B6B5009C9A9C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005ABAE70084C7
      F70084BEF7005AAEF7002192DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000C7CE0000CFD60000BEC60000AEAD0000869400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000C7CE0000CFD60000BEC60000AEAD0000869400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A494A004A494A004A494A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD550000AD550000AD55000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A494A004A494A004A494A004A49
      4A004A494A004A494A005255520052555200525552004A494A004A494A004A49
      4A004A494A004A494A004A494A0000000000AD550000AD550000AD550000AD55
      0000AD550000AD550000CE610000CE610000CE610000AD550000AD550000AD55
      0000AD550000AD550000AD550000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF008C8E8C00EFEBEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFF3EF00EFF7EF00000000000000
      0000000000000000000000000000000000004A494A00BDBABD00424542004245
      4200424542004245420042454200424542004245420042454200424542004245
      420042454200424542004A494A0000000000AD550000D6BEAD006B4531006B45
      31006B4531006B4531006B4531006B4531006B4531006B4531006B4531006B45
      31006B4531006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000D6D7D60000000000CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A9E39006BB26300000000000000
      0000000000000000000000000000000000004A494A00BDBABD00E7E3E700DEDB
      DE00D6D3D600CECBCE00CECBCE0042454200CECBCE00CECFCE00D6D7D600DEDF
      DE00E7E7E700424542004A494A0000000000AD550000D6BEAD00EFE7DE00E7DB
      D600E7D3CE00DECBBD00DECBBD006B453100DECBBD00DECFC600E7D7CE00EFE3
      DE00EFEBE7006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000D6D7D60000000000CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A9E39006BB26300000000000000
      0000000000000000000000000000000000004A494A00BDBABD00EFEBEF00E7E3
      E700DEDBDE00D6D3D600CECFCE0042454200CECFCE00D6D7D600DEDFDE00E7E7
      E700EFEFEF00424542004A494A0000000000AD550000D6BEAD00F7EFEF00EFE7
      DE00E7DBD600E7D3CE00DECFC6006B453100DECFC600E7D7CE00EFE3DE00EFEB
      E700F7F3EF006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000D6D7D60000000000CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A9E39006BB26300000000000000
      0000000000000000000000000000000000004A494A00BDBABD00F7F3F700A5A6
      A500A5A6A500A5A6A500D6D7D60042454200D6D7D600A5A6A500A5A6A500A5A6
      A500F7F7F700424542004A494A0000000000AD550000D6BEAD00FFF7F700FFB2
      6300FFB26300FFB26300E7D7CE006B453100E7D7CE00FFB26300FFB26300FFB2
      6300FFFBF7006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000D6D7D60000000000CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A9E39006BB26300000000000000
      0000000000000000000000000000000000004A494A00BDBABD00FFFBFF00F7F3
      F700EFEBEF00E7E3E700DEDFDE0042454200DEDFDE00E7E7E700EFEFEF00F7F7
      F700FFFFFF00424542004A494A0000000000AD550000D6BEAD00FFFFFF00FFF7
      F700F7EFEF00EFE7DE00EFE3DE006B453100EFE3DE00EFEBE700F7F3EF00FFFB
      F700FFFFFF006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000D6D7D60000000000CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A9E39006BB26300000000000000
      0000000000000000000000000000000000004A494A00BDBABD00FFFFFF00A5A6
      A500A5A6A500A5A6A500E7E7E70042454200E7E7E700A5A6A500A5A6A500A5A6
      A500FFFFFF00424542004A494A0000000000AD550000D6BEAD00FFFFFF00FFB2
      6300FFB26300FFB26300EFEBE7006B453100EFEBE700FFB26300FFB26300FFB2
      6300FFFFFF006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000D6D7D60000000000CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A9E39006BB26300000000000000
      0000000000000000000000000000000000004A494A00BDBABD00FFFFFF00FFFF
      FF00FFFBFF00F7F3F700EFEFEF0042454200EFEFEF00F7F7F700FFFFFF00FFFF
      FF00FFFFFF00424542004A494A0000000000AD550000D6BEAD00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700F7F3EF006B453100F7F3EF00FFFBF700FFFFFF00FFFF
      FF00FFFFFF006B453100AD550000000000000000000000000000000000000000
      000000000000C6C7C600FFFFFF00D6D7D60000000000CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000004A9E39006BB26300000000000000
      0000000000000000000000000000000000004A494A00BDBABD00FFFFFF00A5A6
      A500A5A6A500A5A6A500F7F7F70042454200F7F7F700A5A6A500A5A6A500A5A6
      A500FFFFFF00424542004A494A0000000000AD550000D6BEAD00FFFFFF00FFB2
      6300FFB26300FFB26300FFFBF7006B453100FFFBF700FFB26300FFB26300FFB2
      6300FFFFFF006B453100AD550000000000000000000000000000000000000000
      0000000000002124210039383900ADAEAD0000000000CECFCE00000000000000
      00000000000000000000000000000                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   