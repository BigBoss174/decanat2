object fMain: TfMain
  Left = 501
  Top = 235
  BorderStyle = bsSingle
  Caption = #1044#1077#1082#1072#1085#1072#1090' 2'
  ClientHeight = 747
  ClientWidth = 1009
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 747
    Align = alLeft
    BevelOuter = bvNone
    Color = 16776176
    ParentBackground = False
    TabOrder = 0
    object TTVmain_: TTreeView
      Left = 59
      Top = 138
      Width = 121
      Height = 343
      DoubleBuffered = True
      Enabled = False
      HideSelection = False
      Images = ILmain
      Indent = 19
      ParentDoubleBuffered = False
      RightClickSelect = True
      TabOrder = 2
      Visible = False
      OnChange = TTVmain_Change
      OnChanging = TTVmain_Changing
      OnMouseDown = TTVmain_MouseDown
    end
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
    object TTVmain: TRzTreeView
      Left = 0
      Top = 29
      Width = 185
      Height = 718
      SelectionPen.Color = clBtnShadow
      Align = alClient
      BorderStyle = bsNone
      Color = 16776176
      DisabledColor = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = ILmain
      Indent = 19
      ParentFont = False
      SortType = stText
      TabOrder = 1
      OnChange = TTVmain_Change
      OnChanging = TTVmain_Changing
      OnCustomDrawItem = TTVmainCustomDrawItem
      OnMouseDown = TTVmain_MouseDown
    end
  end
  object Panel2: TPanel
    Left = 185
    Top = 0
    Width = 824
    Height = 747
    Align = alClient
    ParentBackground = False
    TabOrder = 1
    object Label119: TLabel
      Left = 304
      Top = 208
      Width = 43
      Height = 13
      Caption = 'Label119'
    end
    object TPCmain: TPageControl
      Left = 1
      Top = 42
      Width = 822
      Height = 704
      ActivePage = TSReport
      Align = alClient
      Images = sAlphaImageList1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object TSBase: TTabSheet
        Caption = #1054#1089#1085#1086#1074#1085#1086#1081
        DesignSize = (
          814
          675)
        object TDBGmain: TDBGrid
          Left = 3
          Top = 3
          Width = 820
          Height = 607
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DM.DSStudentList
          DrawingStyle = gdsGradient
          GradientEndColor = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = TDBGmainDrawColumnCell
          OnDblClick = TDBGmainDblClick
          OnMouseWheelDown = TDBGmainMouseWheelDown
          OnMouseWheelUp = TDBGmainMouseWheelUp
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
        object Panel16: TPanel
          Left = 0
          Top = 649
          Width = 814
          Height = 26
          Align = alBottom
          BorderStyle = bsSingle
          Caption = 'Panel16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object ScrollBar1: TScrollBar
          Left = 797
          Top = 0
          Width = 17
          Height = 649
          Align = alRight
          Kind = sbVertical
          PageSize = 0
          TabOrder = 2
          OnChange = ScrollBar1Change
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
          Width = 814
          Height = 675
          ActivePage = TSStudent
          Align = alClient
          Images = sAlphaImageList2
          TabOrder = 0
          object TSFaculty: TTabSheet
            Caption = 'TSFaculty'
            object GBDean: TGroupBox
              Left = 0
              Top = 0
              Width = 806
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
              Width = 806
              Height = 99
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
                Top = 35
                Width = 64
                Height = 13
                Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1080#1077
              end
              object Label114: TLabel
                Left = 16
                Top = 66
                Width = 44
                Height = 13
                Caption = #1058#1077#1083#1077#1092#1086#1085
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
                Top = 35
                Width = 366
                Height = 21
                DataField = 'FacultyShortName'
                DataSource = DM.DSFaculties
                TabOrder = 1
                OnExit = DBEFacultyShortNameExit
              end
              object DBEdit44: TDBEdit
                Left = 86
                Top = 62
                Width = 366
                Height = 21
                DataField = 'FacultyPhone'
                DataSource = DM.DSFaculties
                MaxLength = 100
                TabOrder = 2
              end
            end
            object GroupBox14: TGroupBox
              Left = 0
              Top = 179
              Width = 806
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
              Width = 806
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
                  A2070000424DA207000000000000360000002800000019000000190000000100
                  1800000000006C07000000000000000000000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C09A825F99805D987D5A977B
                  57967A5595785394775194754F92744D8E6E485335165335165335165D3D1E8E
                  6C448E6B428E6B428E6B428E6B428E6B428E6B428E6B428E6B42C0C0C000784F
                  259A6F409C71419D71419C70419C70409C6F409C6E3F9C6E3E9B6D3E9D6F40C2
                  9C73E7C7A2E7C7A2B2895E996B3B996B3A996B39996B39996B39996B39996B39
                  996A3A976839784D24009C7145E7CDABDDC3A0F0D2A8F2D2A8F1D1A7F0D0A5F0
                  CFA4F0CEA3EFCCA1EDCA9FD5B892CFB18DE6C398ECC79BECC79AEBC699EBC597
                  EBC497EAC497EAC497E1BE93D4B590E8CAA59A6E43009E7448B9A68B8178698D
                  7E68A38E71AF9776B09876AC94739D876A927E6488765E897F718A8177877661
                  977F61A68966AE8F68B9966BB59269A88963977C5D8674608C7D6CC8AB899B6F
                  41009F7549AF9D84918F8CB7B7B7A4A19E97948F95928C97938FA3A19FADACAB
                  B7B7B7C9C9C9A3A09EA3A2A1A4A29F94908B8C8780807971837D758F8A849F9D
                  9AB0B0B0878078C0A3819C7041009F764AA0917BABABACFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A7A4C2C0BEFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9B9C89719C7041009F764AA0917C
                  ACACACFFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFAAA7
                  A4C2C1BFFFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFA3A3A39B
                  88709C704100A0774BA1927DACACAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFAAA8A5C3C2C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFA3A3A39B88719C704100A0774BA1927DADADAEFFFFFFC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFABA8A5C4C2C1FFFFFFC0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFA3A3A39C88719C704200A077
                  4CA1927EAEAEAEFFFFFFFFFFFFECECEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFABA9A6C5C3C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  A4A4A49C89719C704200A1784CA2937EAEAEAFFFFFFFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0FFFFFFACA9A6C5C3C2FFFFFFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0FFFFFFA4A4A49C89729C704200A1784CA2937EAFAFB0FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACAAA7C6C5C3
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5A59C8A739C70
                  4300A1784CA2937EB0B0B0FFFFFF0000FFFFFFFF0000FFFFFFFFC0C0C0C0C0C0
                  C0C0C0FFFFFFADAAA7C7C5C4FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0FFFFFFA5A5A59C8A739D714400A1784CA2937EB0B0B1FFFFFF0000FFFFFFFF
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFECECEDADABA8C7C6C5FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6A69D8A749D714400A1784CA2937E
                  B0B0B2FFFFFF0000FFFFFFFF0000FFFFFFFFC0C0C0C0C0C0C0C0C0EDEDEFAEAC
                  A9C8C7C6FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFA6A6A79E
                  8C759E724400A0764BA2937EB1B1B2F3F3F50000FF0000FF0000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFAFACA9C9C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFA7A7A89E8D769D7245009D7448A2927FA3A3A4FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9D9ABBBAB8FFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99999A9F8E7A9C7144008E62
                  369074566C6156969594BCBCBECCCCCDD6D6D8CECED0C9C9CAB6B6B79C9B9C7E
                  766E6E5F4F776C618F8C8BA6A6A7B4B4B5BEBEBFC4C4C5B7B7B8AAAAAB8D8B89
                  685C509073548D613400C0C0C0D4B689CAB28B534F474A4A4A5554545B5B5C57
                  5657535253484747524F48C7B08BCDB289C8B089AA997C4242404847484F4E4E
                  5352524B4A4A444443AC9674C2A276CAA472C0C0C000C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C000}
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
              object SpeedButton57: TSpeedButton
                Left = 463
                Top = 6
                Width = 129
                Height = 34
                Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081
                Flat = True
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B0040000C40E0000C40E00000000000000000000000000000000
                  0000002B19114A33244B3A2A4D3E244D40244D42254D43264D43264D43264D42
                  254D41254D40244B3C23483522442E2040251F0F070700000000000000000099
                  6242EDBF97E2BF95EDCF95EED497EED799EEDA9AEEDA9AEEDA9AEED999EED698
                  EED296ECCC94E5BE91DDB292DA927D3B1711000000000000000000947455FAFE
                  FFE2E6FEF6F8FDF7F9FDF7F9FDF7F9FDF7F9FDF7F9FDF7F9FDF7F9FDF7F9FDF7
                  F9FDF7FAFDF8FDFFF2D7CA311204000000000000000000836743FFFEFBEAE8FD
                  FEFBFCFEFCFCFFFCFCFFFDFCFFFEFCFFFDFCFFFDFCFFFDFDFFFFFFFFFFFFFFFD
                  FDFFFFFFE9CAB4210B000000000000000000006D5730FFF7E8E0DEF5F1ECECEE
                  E9E9EBE7E6E9E6E3E6E4E1E3E1DDE2DEDBEDE6E2D7D1D1EBE7E7FDFAFAFFFEFE
                  D5B597110400000000000000000000554421FFFAE1E4E5FDF8F6F6F7F6F6F6F4
                  F4F5F4F3F4F3F2F9F4F1FBF4F1C3D5EBA9B7CBF0EEECFEFCFCFFFFFFC4A77F01
                  0000000000000000000000413310FDEDCDE6E3FBF6F1F3F9F4F3FAF5F4FBF7F4
                  FFFDF6EDF7F67FB9E592B5E4EAEFF8FFFBF9FBF7F7FFFFFFAD8E610000000000
                  000000000000002E2204F2E3C0EBECFEF2F1F6F8F7F6F7F6F6FFFBF7EDF6F83C
                  B8F007B3F3CAEBF6FFFBF7F9F7F8F9F9FAFFFEFB907648000000000000000000
                  0000001D1400DECDA6ECE9FCEBE8EFF3F0EEFDF2EEEAEDED3DB5EB00B7F787E8
                  FDECF0F0F6EEEDF3EEEEF4F0F3FFF5E57059320000000000000000000000000E
                  0800D0BC8FEFECF9E7E4EEFCF1ECE8EBEE3DB6EE00B7F789E4F8F3F0EEF7EEED
                  F1EDEDF1EEEDF2F1F5FDEFD7523E1E000000000000000000000000010000C0A8
                  75EFECF6EFE4EAE5E5E63AB3E902BBF989E7FCEFEEECF4ECE9EEEBEAEEEAEAEE
                  EAEAF0F0F5F3DEC3372508000000000000000000000000000000AC915FFAEFF3
                  DADEEA3CB8ED04BDFA8CE5F8EDEBE8F2EBE7EDEBEAECE9E9EBE9E9EDEBEBF2F3
                  F7DEC7AD2311000000000000000000000000000000009E7642E7E5E932ADEB0D
                  C6FF96EFFFE7E5E2F5EDE9F3F1EEE7E4E1EDEAE9F2EEEEE6E2E1F7F5F6CEAF93
                  0E03000000000000000000000000000000004E443440BCEE0AC4FF76CFE3C8C7
                  C6C2BCB6C0C0BECBCBCBBDBCB7BFC0BECCCCCCBDBDB8C9CAC88C776701000000
                  0000000000000000000000000B120078B31CD7FF83DAEC26292A1712118E8E8F
                  2929291212128A8A8A3737371111119090903939390304060000000000000000
                  00000000000B14007EB728E2FF53AEBF858788120D0B00000076767612121200
                  0000757575202020000000787878212121000000000000000000000000090301
                  53778747E8FF4FADBE090E100703020202020000000606060101010000000707
                  070000000000000707070202020000000000000000000003126D707EF1ECE89C
                  B0B2060E12000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000003D5BAAAECCFFA9ABAF1813110000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000041558D677EAF00020E000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                Visible = False
                OnClick = SpeedButton57Click
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
              object GroupBox33: TGroupBox
                Left = 495
                Top = 64
                Width = 122
                Height = 85
                Caption = #1057#1086#1086#1090#1085#1086#1096#1077#1085#1080#1103' '#1055#1055#1057
                TabOrder = 6
                object Label146: TLabel
                  Left = 32
                  Top = 35
                  Width = 25
                  Height = 23
                  Caption = '1 :'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit45: TDBEdit
                  Left = 63
                  Top = 32
                  Width = 34
                  Height = 31
                  DataField = 'pps'
                  DataSource = DM.dsGroupData
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  OnKeyUp = DBEdit45KeyUp
                end
              end
            end
            object GBGroupName: TGroupBox
              Left = 0
              Top = 0
              Width = 806
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
                  A2070000424DA207000000000000360000002800000019000000190000000100
                  1800000000006C07000000000000000000000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0B26B2DB26B2DB26B2DB26B2DB26B2DB26B2DB2
                  6B2DB26B2DB26B2DB26B2DC0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B26B2DB26B2DCC8645CC
                  8746CC8646CC8646CC8646CC8646CC8746CB8544B0692CB26B2DC0C0C000C0C0
                  C0C0C0C061492EA1794DA37B4EA37B4DA1784BA57F53A47D51A47D51A47E52A7
                  7745C47F40DEA266DF9D5DDD9C5BDD9C5BDD9B5ADD9B5ADD9C5BDD9C5BDF9D5D
                  DEA268C37E3EC0C0C000C0C0C0C0C0C07A5B39BC8E5CBA8C59BB8C59B68651FC
                  F2E4FCEFE0FBEEDFFCEFE2EBD0B3D2945CE5AC72E4A767E4A767E4A565E5AF78
                  E4AE76E4A565E4A767E4A767E6AF77CF8F55C0C0C000C0C0C0C0C0C07A5933DB
                  B27FD4AA76BC8E5AB5854FFAECDDF7E7D5F6E6D4F7E8D6ECCEB1DAA473ECB982
                  EAB374EAB373ECB77DEFE0CEEAD9C4EAB57AEBB374EAB374ECBD88D59A64C0C0
                  C000C0C0C0797879A49E99847D75D9AD76BE915CB6864FFAEBDCF7E5D1F6E4D0
                  F7E5D2ECCDAFDFAF81F2CCA1F1BE81F3BE7FF9DEBCF9F7F5F1EEE9F1D1ADF5BF
                  81F1BE82F3D0A7DBA775C0C0C000C0C0C0C0C0C07D5C37AC8250B58751C2945F
                  B78650F9EBDAF6E4CFF5E3CEF5E4CFF2DBC1E4BA8EEDCFB3F6D9B8E6D4B7A4C8
                  DA83B2CB73A3BC7FA3B2DDCAA9F7DCBCEACCAFB68351C0C0C000C0C0C0C0C0C0
                  7A5833DCB482D3A973C3975FB78750F9EBDAF6E3CCF5E2CBF5E2CBF5E4CDF2DC
                  C2E6BC8FECC49BC5C9C06FADCD5F94B04A7D992F6685B4B0A3EBC39BA47340C0
                  C0C0C0C0C000C0C0C06564659D9287978A7BDDB37BC59A62B78851F8EADAF5E0
                  C9F4E0C9F4E0C9F4E0C9F4E0CAF5E1CAF3D2B0C0BDAE70AECD6BA5C35D94B33C
                  7392B6AC96F0D6B7765734C0C0C0C0C0C000C0C0C01919198467489B7A51B98C
                  54C89D64B78851F9EBDAF5DEC6F4DEC6F4DEC6F4DEC6F4DEC6F6DFC7ECDBC593
                  B5C581C3E47AB9DA6FACCE5C99BC89A6B4ECE4D1785733C0C0C0C0C0C000C0C0
                  C0C0C0C07A5833DDB989D4AA71CB9F67B88952F9EBDAF4DDC3F3DCC3F3DCC2F3
                  DCC1F3DBC1FAE1C49EA2A44A83AB92D6F484C4E478B7D770AED035638CADAEB1
                  7C5A35C0C0C0C0C0C000C0C0C0515051968676A99782E2B87ECCA168B88852F9
                  EBDBF3DBC1F2DABFF7E7D3F9EDDEF9EDDEFDF0E04163883B77A180C1E085C5E5
                  84C4E47DBDDD29507B4F6A88815E36C0C0C0C0C0C000C0C0C02D2D2D8B73598B
                  7253BD9155CFA46AB98952FAEBDBF2DABEF2D8BBF7F2EBAEB0B0CDCDCDD6D4D2
                  174678235D8B39709A3E70995C91B56198BA22446F274C78846038C0C0C0C0C0
                  C000C0C0C0C0C0C0795833DDBC8FD4AA6FD1A76CB98953FAECDBF2D9BBF1D7B7
                  FBF7F2E7E7E7F0F0F0F8F8F81343751E63953B7BAD5087B54A75A13254801A37
                  65234A76856038C0C0C0C0C0C000C0C0C03C3C3C8F7A65B9A58AE7BF84D4A96E
                  BA8A53F9ECDDF1D8B8F0D6B5F8F4EEBABABAD3D3D3F2F2F2305886185E91317B
                  AE4283B34078A72D5885143767416184815E37C0C0C0C0C0C000C0C0C0414141
                  927E6A806E56C2985AD6AD70BB8B53FAEEDEF0D6B6EFD4B3F8F3EEBCBCBDEAEA
                  EACBCBCB8597A90943771A64972872A326659516497A09386DAFB5B87C5B34C0
                  C0C0C0C0C000C0C0C0C0C0C07A5833D8BC91D2A96BD8B072BB8B53FAEEE0F0D3
                  B3EFD2B2F9EEE2E9E9E8F8F7F6EEEDECEDEDEDA2B5C82F5D8B0F437A0D40772C
                  517CA4A09EF1E9D8785732C0C0C0C0C0C000C0C0C0C0C0C0886F52C8B293ECC5
                  87D9B274BB8B54FAEEE1F0D2B0F0D2B1F0D1B0F0D2AFF0D1AEF0D1AEF2D3AFF7
                  D7B3FCDCB7FCDEB8FCDEB7FCDBB6F7D6B2F5E9D8765631C0C0C0C0C0C000C0C0
                  C0565555978C816E665AC89E5FDCB676BB8C54FAEFE3EFD1AEEFD2B0EED1AFD5
                  B086E1BF98EDCEACD5B086E2C09AE2C09AE2C099F2D4B2F1D3B1F0D1AEF4E8DA
                  765531C0C0C0C0C0C000C0C0C0C0C0C07A5835CDB490D3AA69DFB778BC8D54F9
                  F1E5EECFABEED0AEEED1AEDEBB94E5C5A0EECFACDEBC94E6C6A1E5C5A0E5C59F
                  EFD1AFEED0AEEECFABF4EADC765531C0C0C0C0C0C000C0C0C0C0C0C0816240D5
                  BF9DF0C989E0B97ABC8C55F9F2E7EECDA8EECFABEECFABEED0ACEECFACEECFAB
                  EED0ACEED0ACEECFACEECFABEECFABEECFABEECDA8F4EBDF765531C0C0C0C0C0
                  C000C0C0C06A69699F958B6F675DCDA561E3BC7BBC8D54F9F1E8EECAA3EECCA6
                  EECCA6EECCA6EECCA6EECCA6EECCA6EECCA6EECCA6EECCA6EECCA6EECCA6EECA
                  A3F4EBE0765531C0C0C0C0C0C000C0C0C0C0C0C07A5934C9B593DEC497F1D9AC
                  C19460FBF7F1F7E7D5F7E8D6F7E8D6F7E8D6F7E8D6F7E8D6F7E8D6F7E8D6F7E8
                  D6F7E8D6F7E8D6F7E8D6F7E7D5F5EDE5775632C0C0C0C0C0C000C0C0C0C0C0C0
                  775937C59C6CC59C6DC59C6DBA8B57C59E73C49D72C49D72C49D72C49D72C49D
                  72C49D72C49D72C49D72C49D72C49D72C49D72C49D72C49D72C39C70765835C0
                  C0C0C0C0C000}
                OnClick = sbGroupNameByKursClick
              end
              object sbSessionGroup: TSpeedButton
                Left = 328
                Top = 11
                Width = 159
                Height = 22
                Caption = #1059#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
                Flat = True
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C000442200442200442200442200442200442200
                  4422245DC2245DC2245DC2245DC2245DC2245DC2245DC2245DC25B410D5B410D
                  5B410D5B410D5B410D5B410D5B410DC0C0C0C0C0C000452313D49500E29D00E2
                  9D00E29D00E39C0CE9A5245DC27485FF6377FF6377FF6377FF6377FF7385FF50
                  57B9FCD07AF7C675F6C676F6C675F7C676EEC06E614207C0C0C0C0C0C0004323
                  1FCD9700D59A00D59900D59A00D69814DFA42A5BBE7584FE6073FD6174FD6174
                  FD6073FD7283FE4F55B3F7C872ECBC6DEBBC6EEBBC6EECBD6EE5B96D5C410AC0
                  C0C0C0C0C000432326CB9900D19A00D19A00D19A00D29919DBA62D5ABE7383FE
                  5D70FB5E71FB5E71FB5D70FB7183FE5055B2F6C56EEAB966E9B967E9B967E9B9
                  66E2B76C5B410BC0C0C0C0C0C00043232DC99D00CD9A00CD9A00CD9A00CE991E
                  D8A82E5ABF7383FE5A6DFA5B6EFA5B6EFA5A6DFA7183FE5055B2F5C267E9B45E
                  E8B45FE8B45FE8B45DE3B66A5B410BC0C0C0C0C0C000442234C8A000C99900C9
                  9A00C99A00CA9922D6AB3159BF7183FD576BF8586CF8586CF8576BF87082FD50
                  54B1F4BF62E7B057E6B058E6B058E6B056E2B6685B410BC0C0C0C0C0C0004422
                  3AC8A200C69A00C69B00C69B00C79A26D3AD3359C07282FD5469F7556AF7556A
                  F75469F76F82FD5054B1F3BC5EE5AD4FE5AD50E5AD50E5AC4EE2B5675B410CC0
                  C0C0C0C0C000442242C7A500C09A00C19B00C19B00C29A2CD0AE3459C17082FC
                  5166F65267F65267F65166F66E82FD5054B2F1BA58E3A946E3A948E3A947E3A8
                  45E2B4655B410CC0C0C0C0C0C000442248C6A700BC9900BD9A00BD9A00BE992F
                  CEB03659C26F81FA4D64F44F65F44F65F44D64F46D81FB4F54B1F0B853E1A53E
                  E1A541E1A540E1A33EE1B4645B410CC0C0C0C0C0C00044224EC6AA00B79900B7
                  9900B79A00B99833CBB23859C37081FA4A61F34C62F34C62F34A61F36E80FA4F
                  54B2EFB54FE0A237E0A23AE0A239E0A037E1B3645B410CC0C0C0C0C0C0004524
                  40B89856C8B256C8B256C8B256C8B256C8B13556BE6F81F9465DF2485FF2485F
                  F2465DF26D81F95054B1EFB34ADF9D2EDF9D31DF9D30DF9B2DE1B2635B410CC0
                  C0C0C0C0C000442200452300442200442100442100442100452020389C6F81F7
                  435BF0465DF0465DF0435BF06C80F85054B1EDB146DD9A27DD9A2ADD9A29DD98
                  25E0B2635B410CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C02029926E81F64059EF435BEF435BEF4059EF6C80F75054B2EDAF42DC951F
                  DC9622DC9521DB941DE0B3645B410CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C01F2B906F82F53C56EE3F58EE3F58EE3C56EE6C81F750
                  54B2EFB44ADF9E2EDE9E30DE9E30DE9E2EE1B1635C410CC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01F2B8F6E81F43A53EC3D56EC3D56
                  EC3A53EC6C80F64B4EA7DAA942D1A84ED0A84FD0A84FD0A84FCD9A3F5B410DC0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01F2B8F6E82F3
                  3750EB3A53EB3A53EB3750EB6C81F5222E9A5B410D5B410D5B410D5B410D5B41
                  0D5B410D5B410DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C01F2B8F6F81F3344DEA3750EA3750EA344DEA6E81F31D2994C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C01F2B8F6E81F2304BE8344EE8344EE8314BE86E81F21F
                  2B90C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01F2B8F6F83F12D49E7314CE7314C
                  E72E49E76F83F1202B8FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01F2B8F6E81F0
                  2843E62C46E62C46E62943E66E81F0202B8FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C01F2B907B8DF3576CED586DED586DED576CED7B8DF3202B90C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0212D8F4251CE4250CD4250CD4250CD4250CD4251CE21
                  2D8FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
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
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9'
                  '10'
                  '11'
                  '12'
                  '13'
                  '14'
                  '15')
                TabOrder = 0
                OnChange = DBComboBox1Change
              end
            end
            object GroupBox13: TGroupBox
              Left = 0
              Top = 204
              Width = 806
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
                  FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
                  180000000000C80A000000000000000000000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09F764C9F764C9F764C9F764C9F764C9F
                  764C9F764C9F764C9F764C9F764C9F764C9F764C0000C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C09F764C9F764CC6A889DECEBDF8C892FFD29EFFD19BFFCE
                  94FFC88BFFC17FFAB36DC58C539F764C0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C09F764C9F764CF2C494E8C8A5EAE3DBFFD7A6FED6A7FED3A3FECF9CFECA92
                  FEC387FDBB79FFD1969F764C0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09F76
                  4CF0C190FFDAAADCC3A6F0F1F3FEDCB5FDDCB5FFD9AEFFD5A6FFCF9CFEC890FE
                  C081FFCD939F764C0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09F764CFFD6A4
                  FFDEB1D5C1A9FAFBFDFAE5C9FEE2BDFEDEB7FFD9AEFFD3A3FECD96FEC387FECA
                  919F764C0000C0C0C01B93631B93631B93631B93631B93631B93631B93631B93
                  631B93631B93631B93631B93631B9363C0C0C0C0C0C09F764CFFD7A7FFE1B7CE
                  BCA7FFFFFFF9F2E8FFE3C1FEE1BDFFDBB3FED6A7FECE9AFDC68CEFBD839F764C
                  00001B93631B93631B936333A7807CD6B727D7A72BD5A42AD19F2BCD952BC78C
                  2BC1812EBF781B93631B9363C0C0C0C0C0C09F764CE7C195FFE2B8D0BDA7F9F8
                  F8ECEDEDFCE7CAFEE2BFFEDDB5FFD7A9FECF9BFECB92CD98629F764C00001B93
                  631B93632AD29F40B897B4DFD01FDAAD2CD9AF2BD6AA2AD2A22ACC972CC58B2B
                  BE7E1B93631B9363C0C0C0C0C0C09F764CB99770F9D8B0DFC8AA8199B74C74A4
                  9AA8B8FBDDB6FDDBB3FDD5A7FFD29DF3C28BAD7C4B9F764C00001B93631B9363
                  29D7A842B096E7ECE633E1BE28E0BA2ADCB42AD8AB29D1A02BCA912BC4861B93
                  631B9363C0C0C0C0C0C09F764C9F764CAF916DE1C19938649841679035639699
                  9B9DFBD5A8FFD5A5EEBF8A9F764C9F764C9F764C00001B93631B936328D9AE3A
                  AB93F7EEEDADF0E31FE4C229E0BC2ADCB12AD4A52ACD972CC88A1B93631B9363
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0375B7B335777375C7A386A9F9F87
                  6DAE865D9F764CC0C0C0C0C0C0C0C0C000001B93631B93632AE0B52BAE95EAE1
                  E1FAF0EB49E8CC2AE2C12ADDB42AD6A82ACD982AC3891B93631E4A43154E5E1E
                  84A12397BD27A2D3C0C0C0385A7A395D7C3F6382365C7C375D7FC0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C000001B93631B936327CAA121CEAA999CA8527AA3
                  7BA7B51BD5AF2ADBB32AD5A72BD09A1B93631B6B6B63B1AD50D1E12CD6FF2BD1
                  FD2ACCF94E7397547A9E517599466A8B4E7292355A7937556FC0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C00000C0C0C01B93631B93631B93633D83953D678E3E64913E
                  83A428DAAB1B93631B93632093AF27D1FC76BCC083E5E529DFFC29DDFB30C8ED
                  688AB0688EB6668BB25E83A854799C3C5E7E6C69656C6965C0C0C0C0C0C0C0C0
                  C0C0C0C00000C0C0C0C0C0C0C0C0C0204F5B2E5E773156763459773E618C1B93
                  631B9363196D8A29C9F227DBFD79B6B9CCF4EC1DECFD28EDFE3FC5E5789CC87A
                  A0CC789EC87096BE6288AE547DA26C69656C6965C0C0C0C0C0C0C0C0C0C0C0C0
                  0000C0C0C0C0C0C03761843C61803F63823C607F345A7AC0C0C0C0C0C0C0C0C0
                  1D839A29D0F628E3FC74ADB1FFFDF74EF6FB1FF6FF50CDEAA1BEE28CB2DE84AB
                  D97DA3CF6F95BE5C82A86C69656C6965C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
                  C0C0C0C04C77A35A7FA3597EA353789C537698375B7DC0C0C0C0C0C01B819026
                  C3E229E7FF5BA6ABFFF7F3E6F3ED1EF9FE57D8F1B1CDEBB0CDECA0C2E782A9D7
                  7AA1CC6C69656C69656C69656C6965C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
                  6892BF7096BE6F95BE6A8FB75F85AA53789BC0C0C0C0C0C0C0C0C01B8A9527DD
                  F33FB9BF999CAF6C87A959C5CF3DDAF0B4CEECB4D0EAB2CFED9DBEE37AA3D16C
                  69656C69656C69656C6965C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0779FCC80
                  A6D481A9D57BA2CE6F95BD6288B14B6D8EC0C0C0C0C0C0C0C0C01A9BA121CAD2
                  436D963B648B4462946C69656C6965839FBB829FC1809DBF6672816C69656C69
                  656C69656C6965C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C091B7DF9DBFE591B6
                  E385ADDB7FA8D64C60752E3238767370C0C0C0C0C0C0C0C0C0C0C0C0315B7A32
                  56763863796C69656C69656C69656C696565625D6C69656C69656C69656C6965
                  C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0A1C9F3B4CFE9B5D0E9A2C2E6
                  85AEDD52667A767370767370C0C0C0C0C0C0C0C0C04165844064833E62813760
                  793765716C69656C69656C69656C69656C69656C69656C6965C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C00000C0C0C0C0C0C082B8F594B2D38FADCE8DABCE7A94B076
                  7370767370767370C0C0C0C0C0C052799F5D82A75B80A653789B4F7397346076
                  639CAE639CAE6C69656C69656C69656C6965C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C00000C0C0C06C69657673707673707673707673707673707673707673
                  70767370C0C0C0C0C0C07196C0749AC37197C0698FB75F84A9496E91639CAE63
                  9CAE639CAEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  0000C0C0C06C69656C6965767370767370767370767370767370767370C0C0C0
                  C0C0C0C0C0C07AA2D082AAD882A9D77BA1CD6D93BB5B80A6639CAE639CAE639C
                  AEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
                  C0C0C0C0767370767370767370767370767370767370C0C0C0C0C0C0C0C0C0C0
                  C0C0A0C1E5A3C4E893B8E384ABD97A9FCC4A7B93639CAE639CAE639CAEC0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
                  C0C0C0767370767370767370767370C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A5C5
                  E9B4CFE8B4CFEAA5C5EB82A7D84B7C96639CAE639CAEC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0639CAE639CAE628BAE8CB0D7
                  77A1C4639CAE639CAE5E97A978B3C4639CAEC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0639CAE639CAE639CAE639CAE639CAE63
                  9CAE639CAE639CAE639CAE639CAEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0639CAE639CAE639CAE639CAE639CAE639C
                  AE639CAE639CAEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0639CAE639CAE639CAE639CAE639CAE639CAE
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0639CAE639CAE639CAE639CAEC0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  0000}
                OnClick = sbStudentListGroupClick
              end
              object SpeedButton78: TSpeedButton
                Left = 20
                Top = 63
                Width = 141
                Height = 22
                Caption = #1057#1090#1080#1087#1077#1085#1076#1080#1103' '#1082#1086#1084#1084#1080#1089#1080#1103
                OnClick = SpeedButton78Click
              end
              object Panel36: TPanel
                Left = 445
                Top = 13
                Width = 337
                Height = 86
                BorderStyle = bsSingle
                TabOrder = 0
                Visible = False
                object SpeedButton76: TSpeedButton
                  Left = 136
                  Top = 56
                  Width = 106
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
                  OnClick = SpeedButton76Click
                end
                object Label148: TLabel
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
                object SpeedButton77: TSpeedButton
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
                object ComboBox21: TComboBox
                  Left = 8
                  Top = 28
                  Width = 145
                  Height = 21
                  TabOrder = 0
                  OnCloseUp = ComboBox21CloseUp
                end
                object RadioGroup11: TRadioGroup
                  Left = 159
                  Top = 9
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
            object GroupBox26: TGroupBox
              Left = 0
              Top = 309
              Width = 806
              Height = 100
              Align = alTop
              Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1099#1077' '#1094#1080#1092#1088#1099' '#1087#1088#1080#1077#1084#1072
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              object Label137: TLabel
                Left = 15
                Top = 24
                Width = 28
                Height = 16
                Caption = #1050#1062#1055
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label136: TLabel
                Left = 20
                Top = 72
                Width = 51
                Height = 16
                Caption = #1060#1080#1083#1080#1072#1083
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit56: TDBEdit
                Left = 77
                Top = 25
                Width = 121
                Height = 21
                DataField = 'KCP'
                DataSource = DM.dsGroupData
                TabOrder = 0
                OnKeyUp = DBEdit45KeyUp
              end
              object RzDBSpinner4: TRzDBSpinner
                Left = 198
                Top = 25
                Width = 33
                OnChange = RzDBSpinner1Change
                ParentColor = False
                TabOrder = 1
                DataField = 'KCP'
                DataSource = DM.dsGroupData
              end
              object DBCheckBox8: TDBCheckBox
                Left = 243
                Top = 24
                Width = 246
                Height = 17
                Caption = #1048#1085#1086#1089#1090#1088#1072#1085#1085#1099#1077' '#1075#1088#1072#1078#1076#1072#1085#1077' '#1087#1086' '#1075#1086#1089'.'#1083#1080#1085#1080#1080
                DataField = 'ForeingGL'
                DataSource = DM.dsGroupData
                TabOrder = 2
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                OnMouseUp = DBCheckBox7MouseUp
              end
              object DBEdit46: TDBEdit
                Left = 488
                Top = 25
                Width = 37
                Height = 21
                DataField = 'ForeingKCP'
                DataSource = DM.dsGroupData
                TabOrder = 3
                OnKeyUp = DBEdit46KeyUp
              end
              object RzDBSpinner2: TRzDBSpinner
                Left = 523
                Top = 25
                Width = 33
                OnChange = RzDBSpinner1Change
                ParentColor = False
                TabOrder = 4
                DataField = 'ForeingKCP'
                DataSource = DM.dsGroupData
              end
              object DBEdit55: TDBEdit
                Left = 77
                Top = 68
                Width = 121
                Height = 21
                DataField = 'filial'
                DataSource = DM.dsGroupData
                TabOrder = 5
                OnKeyUp = DBEdit45KeyUp
              end
              object RzDBSpinner3: TRzDBSpinner
                Left = 198
                Top = 68
                Width = 33
                OnChange = RzDBSpinner1Change
                ParentColor = False
                TabOrder = 6
                DataField = 'KCP'
                DataSource = DM.dsGroupData
              end
            end
            object GroupBox29: TGroupBox
              Left = 0
              Top = 409
              Width = 806
              Height = 105
              Align = alTop
              Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1086#1073#1091#1095#1077#1085#1080#1103
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              object Label134: TLabel
                Left = 15
                Top = 72
                Width = 108
                Height = 13
                Caption = #1055#1083#1072#1090#1085#1086#1077' '#1086#1073#1091#1095#1077#1085#1080#1077
                FocusControl = DBEdit52
              end
              object Label135: TLabel
                Left = 15
                Top = 32
                Width = 74
                Height = 13
                Caption = #1043#1086#1089'. '#1079#1072#1076#1072#1085#1080#1077
                FocusControl = DBEdit53
              end
              object DBEdit52: TDBEdit
                Left = 135
                Top = 72
                Width = 134
                Height = 21
                DataField = 'price'
                DataSource = DM.dsGroupData
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnKeyUp = DBEdit52KeyUp
              end
              object DBEdit53: TDBEdit
                Left = 131
                Top = 29
                Width = 134
                Height = 21
                DataField = 'GosZad'
                DataSource = DM.dsGroupData
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                OnKeyUp = DBEdit53KeyUp
              end
              object Edit12: TEdit
                Left = 318
                Top = 29
                Width = 121
                Height = 21
                TabOrder = 2
                Visible = False
              end
              object Button35: TButton
                Left = 445
                Top = 29
                Width = 106
                Height = 25
                Caption = #1047#1072#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '
                TabOrder = 3
                Visible = False
                OnClick = Button35Click
              end
              object BitBtn1: TBitBtn
                Left = 271
                Top = 24
                Width = 26
                Height = 25
                DoubleBuffered = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  200000000000000900000000000000000000000000000000000000000000215F
                  1CFF237024FF247325FF247325FF247325FF247325FF247325FF247325FF2473
                  25FF247325FF247325FF247224FF237224FF247325FF247325FF247224FF2472
                  24FF247224FF247224FF247224FF236C23FF215C1BFF00000000215E1DFF2C9E
                  3BFF33C153FF32BE51FF32BE51FF32BE51FF32BE51FF32BE51FF32BE51FF32BE
                  51FF32C052FF31BA4CFF30BE4FFF2FBB4DFF2FBB4EFF31BD4FFF32BE51FF32BE
                  51FF32BE51FF32BE51FF32BE51FF33C153FF2C9F3BFF215C1CFF247024FF33C1
                  54FF31B94FFF31B94FFF31B94FFF31B94FFF31B94FFF31B94FFF31B94FFF31B9
                  4EFF31BC4FFF226F21FF259735FF2AB446FF2AB144FF2DB449FF30B74CFF31B9
                  4EFF31B94EFF31B94EFF31B94EFF31BA4EFF33C152FF236F25FF257828FF32BF
                  53FF31BA50FF31BA50FF31BA50FF31BA50FF31BA50FF31BA50FF31BA50FF31B9
                  4FFF31BD50FF206B21FF154510FF1E882CFF26B042FF29AF44FF2DB44AFF30B7
                  4DFF31B94EFF31B94EFF31B94EFF31B94EFF32BE51FF257626FF267929FF32C0
                  56FF31BB53FF31BA52FF31BA52FF31BA52FF31BA52FF31BA52FF31BA52FF31BA
                  52FF31BE52FF1B691CFF7BAE77FF093A05FF1C8528FF25B042FF29B145FF2DB5
                  4BFF30B84DFF31B94FFF31B94FFF31B94FFF32BE52FF257827FF267C2AFF32C0
                  57FF31BB54FF31BB54FF31BB54FF31BB54FF31BB53FF31BB53FF31BB53FF31BB
                  53FF32C057FF156816FFF0F3EFFFEEF4EDFF0D4509FF197D24FF26B246FF2BB3
                  4AFF2FB74FFF31BA50FF31BA50FF31BA50FF32BF53FF267928FF267E2AFF32C2
                  5AFF32C259FF32C45AFF32C458FF32C458FF32C458FF32C458FF32C458FF32C4
                  58FF33C75BFF156D18FFE6EDE6FFFFFFFFFFF9FAFAFF0D460AFF1A691EFF2ABA
                  4CFF2EB850FF30BA52FF31BB53FF31BA52FF32BF55FF267B29FF26812CFF31C7
                  5FFF257827FF195D16FF135A0FFF12590EFF12590EFF11560EFF11560EFF1155
                  0EFF11560EFF054E02FFE2EDE2FFFFFFFFFFFFFFFFFFF9FAFAFF0F4E0DFF1D76
                  22FF30C256FF31BB54FF31BB54FF31BB54FF32C057FF267C2AFF26822DFF33C9
                  61FF1F7C25FF82B982FFEEF4EEFFE8F0E8FFE8F0E8FFE8F1E8FFE8F1E8FFE8F0
                  E7FFE8F0E7FFE3EDE2FFFCFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFF7F8F8FF3478
                  2FFF1E7C25FF32C55BFF31BE57FF31BD56FF32C257FF267F2CFF23832CFF31C8
                  63FF1C7B23FFA5CDA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF357E33FF1D6A1CFF30C158FF30C059FF2FC159FF237E29FF5BAF68FF2DC6
                  5FFF177B20FFA0CAA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF368133FF1B6C1CFF2EBF55FF2EC25CFF5AAC65FF7CC189FF80E1
                  AEFF389744FF9BC89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF40883EFF439244FF84DEA8FF7FC287FF7AC287FF7DDE
                  ADFF68B676FFC8DFC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFDFBFDFF76AD74FF78C085FF84DFABFF7AC187FF7AC388FF7CE0
                  ABFF64B772FFC2DCC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFAFAFAFF62A062FF6BBA7CFF7FDFA9FF83DEABFF7CC288FF7BC68BFF7DE0
                  AFFF66BA77FFC2DCC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF8
                  F8FF5FA160FF68BC7DFF7ADCA5FF7FDBA7FF83DFACFF7CC48AFF7BC78CFF7FE2
                  B2FF6ABF7FFFCFE2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFF62A5
                  65FF6CC88AFF79DDA7FF7EDCAAFF82DDACFF84E0AFFF7CC68AFF7ECA90FF80E2
                  B7FF78C98AFF6CBB76FF69B974FF6CBA77FF6CB976FF66B56FFF5FAE68FF5BA8
                  61FF57A65EFF489D53FFE5ECE5FFFFFFFFFFFFFFFFFFDAE8DDFF64AA67FF6DC8
                  8EFF79DDAAFF7FDDADFF82DEADFF83DFAEFF84E1B0FF7CC78EFF7ECB92FF80E3
                  B6FF7EE0B5FF7CE0B4FF7DE0B6FF7FE1B6FF7DE1B5FF7ADFB2FF76DDAEFF72DC
                  ABFF6CDCA9FF56B36FFFEAF2EBFFFFFFFFFFDAE8DBFF56A75CFF6CCD92FF7BDE
                  ACFF7FDFAEFF82E0B0FF83E0B1FF83E0B1FF84E1B2FF7DC990FF7ECD95FF81E4
                  BAFF80E2B8FF80E2B7FF80E2B5FF80E2B6FF80E0B5FF7FE0B4FF7DDFB2FF7BDF
                  B0FF74DDADFF5BB771FFF3F5F1FFD9E9D9FF51A65BFF6BCD94FF77DDAEFF7EDF
                  B2FF80E0B3FF81E0B4FF81E0B2FF83E0B2FF84E2B4FF7DCA91FF81CF96FF81E5
                  BDFF81E3B9FF81E3B9FF81E2B9FF81E2B9FF81E2B9FF80E2B8FF80E2B7FF7FE1
                  B6FF78E0B3FF63BE7BFFADD6B4FF4FA75CFF64CD8EFF74DDAEFF7CDFB2FF80E1
                  B4FF81E1B5FF81E1B5FF81E0B5FF81E0B5FF81E2B7FF7ECC94FF7DD09AFF80E6
                  BDFF81E4BBFF81E4BBFF81E4BBFF81E4BBFF81E4BAFF81E4BAFF81E3BAFF7FE3
                  BAFF7BE2B7FF6EC889FF61B872FF66CF93FF72DDAEFF7AE0B4FF7FE1B7FF81E2
                  B8FF81E2B8FF81E2B8FF81E2B8FF81E2B8FF81E4B8FF81CE96FF81D198FF80E7
                  C2FF80E5BFFF80E5BDFF80E5BDFF80E4BDFF80E4BDFF80E4BDFF80E4BDFF80E4
                  BDFF7EE5BAFF78D094FF74DCABFF74E0B3FF7BE1B6FF7FE3B9FF81E4BAFF81E4
                  BAFF81E3BAFF81E3BAFF81E3B9FF81E3B9FF81E4BDFF7DCF96FF7DCE8FFF81DF
                  B4FF80E7C2FF80E6C0FF80E6C0FF80E6C0FF80E6C0FF80E6C0FF80E6C0FF80E6
                  C0FF7EE7C1FF7DE5BDFF7CE6BDFF7DE5BCFF7FE5BEFF7FE5BFFF80E5C0FF80E5
                  C0FF80E5C0FF80E5BDFF80E5BDFF81E6BFFF81DDB0FF84CE93FF0000000085D3
                  98FF81D59BFF81D69EFF81D69EFF81D69EFF81D69EFF81D69EFF81D69EFF81D6
                  9EFF81D59EFF81D59EFF81D59EFF81D59EFF81D59EFF81D59EFF81D59DFF81D5
                  9DFF81D59DFF81D49DFF81D49DFF81D39AFF85D097FF00000000}
                ParentDoubleBuffered = False
                TabOrder = 4
                OnClick = BitBtn1Click
              end
            end
          end
          object TSStudent: TTabSheet
            Caption = 'TSStudent'
            ImageIndex = 2
            object PCStudent: TPageControl
              Left = 0
              Top = 0
              Width = 806
              Height = 646
              ActivePage = TabSheet4
              Align = alClient
              Images = sAlphaImageList3
              MultiLine = True
              ScrollOpposite = True
              TabOrder = 0
              OnChange = PCStudentChange
              object TabSheet4: TTabSheet
                Caption = #1051#1080#1095#1085#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072
                object PCStudentPersonal: TPageControl
                  Left = 0
                  Top = 0
                  Width = 798
                  Height = 617
                  ActivePage = TSStudentMain
                  Align = alClient
                  Images = sAlphaImageList4
                  TabOrder = 0
                  object TSStudentMain: TTabSheet
                    Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
                    DesignSize = (
                      790
                      588)
                    object sbLoadPhoto: TSpeedButton
                      Left = 3
                      Top = 163
                      Width = 113
                      Height = 39
                      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
                      Flat = True
                      Glyph.Data = {
                        36090000424D3609000000000000360000002800000018000000180000000100
                        2000000000000009000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        000000000000000000000000000000000000000000000000000000A467FD00A4
                        67FE00A467FE00A467FD00000000000000000000000000000001000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        00000000000000000000000000000000000000A467FC00A669FF00C486FF00CE
                        90FF00CE90FF00C487FF00A669FF000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        00000000000000000000000000000000000000A669FF00CA8DFF00C888FF60DC
                        B3FF60DCB3FF00C888FF00CA8DFF00A568F60000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000009558D800C182FF00C586FF00C17FFFBFEF
                        DDFFBFEFDEFF00C17FFF00C586FF00C183FF00A568FE00000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000001A468FB03A867FF02C283FF40CE9CFF40CB96FFCFF2
                        E4FFCFF2E4FF40CB96FF40CE9CFF02C283FF01A76AFF00A669F5000000009C98
                        95FFA29F9CFFA4A19EFFA29F9CFFA09C9AFF9F9B98FF9F9B98FF9F9B99FF9F9B
                        98FF9D9A97FF9B9794FF05A56AFF14AC6DFF0AC181FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0BC181FF01A76AFF00A669F5000000009A97
                        94FF918F8DFF9C9B99FFADABA8FFBDBBB9FFBAB6B4FFB9B5B3FFBBB7B5FFABA9
                        A6FF999795FF8F8C8AFF05A46AFF02A76AFF18C286FF40CA96FF40C791FFCFF1
                        E2FFCFF1E2FF40C791FF40CA96FF18C287FF02A76AFF00A669F5000000009A96
                        93FF9B9A97FF8E8C8AFF8F8D8BFFB3B1AFFFBEBCBAFFBBB9B7FFABA9A7FF9796
                        95FFB5B2ADFFD9CABAFFC7C5ACFF03A76AFF40C99AFF05BC7BFF00B672FFBFEC
                        DBFFBFECDBFF00B672FF06BC7BFF45CA9DFF01A569FE00000000000000009A96
                        93FF92908EFF979592FF949290FFB3B1AFFFC5C2C1FFB7B5B3FF989896FFC0BA
                        B4FFE2B692FFEAA376FFEA9E72FF01A56AFF03A76AFF4CD0A3FF1ABF83FF61CF
                        A4FF61CFA4FF1ABF82FF4ED0A3FF02A66AFF0000000000000000000000009A96
                        93FF878583FF9D9B99FF92908EFFB2B0AEFFCBC9C8FFADABA9FFAAAAABFFE1BA
                        9BFFF2AD8CFFF6B3A0FFF9B5A5FFE7B29DFF05A56AFF02A76AFF61CFA8FF73D8
                        B4FF73D8B3FF63CFA7FF02A76AFF01A568FE0000000000000000000000009A96
                        93FF9C9A98FF918F8CFF979592FFB2B0AEFFD2D0CFFFA9A7A6FFBCBEC2FFECA6
                        63FFF1B28CFFF1B28AFFF1B28AFFF3B28BFFFAB38EFFB4A572FF04A568FF02A4
                        68FF03A568FF03A56AFF9FC1B0FF9B9594F10000000000000000000000009A96
                        93FF92908EFF979592FF949290FFB2B0AEFFD7D5D4FFACAAA9FFBABDC0FFEFAB
                        65FFF0B178FFF0B27AFFF0B27AFFF0B27BFFF1B27BFFF5B071FFE6BD9CFFA79E
                        A2FFD4CACCFFCFC6C8FFDDD8D8FF9A9593F10000000000000000000000009A96
                        93FF878583FF9D9B99FF92908EFFB2B0AEFFDBDBD9FFAEADABFFB6B8BBFFEAA8
                        65FFF4B878FFF2B779FFF2B778FFF2B778FFF3B779FFF2B472FFD5B595FF9E9D
                        9DFFCDCBCAFFC9C7C6FFDCDBDAFF999593F10000000000000000000000009A96
                        93FF9C9A98FF918F8CFF969492FFB1AFADFFE0DFDEFFBEBDBBFFACABADFFCA9A
                        6EFFEAAD6FFFF6BD81FFFAC489FFF9C186FFF4BB7EFFD99F67FFB7A392FFADAB
                        ABFFCFCDCBFFCCCAC9FFE2E1DFFF999693F10000000000000000000000009A96
                        93FF92908EFF979592FF939190FFB1AFADFFE3E2E2FFCECCCBFFB0AFAEFFB0A4
                        99FFC5976EFFD7985DFFE1A263FFDE9E5FFFD09661FFB99C84FFA9A6A4FFC2C1
                        C0FFD1CFCEFFCFCDCCFFE5E4E4FF9A9693F10000000000000000000000009A96
                        93FF878583FF9D9B99FF918F8EFFB0AEACFFE8E7E6FFD4D1D0FFD1CFCEFFA9A8
                        A7FFA9A39FFFB4A699FFB8A899FFB7A799FFB1A59CFFA5A5A3FFBFBDBCFFD3D1
                        D0FFD2D0D0FFD1D0CFFFE8E8E7FF9A9694F10000000000000000000000009A96
                        93FF9A9896FF858381FF92908EFFB1AEACFFECEBEAFFD5D4D3FFD7D6D5FFD7D6
                        D6FFC9C9C8FFB4B4B5FFB0B1B2FFB0B1B1FFBCBCBBFFD3D4D2FFD7D7D6FFDFDF
                        DFFFF6EBDDFFECE6DFFFF0F0F0FF9A9694F10000000000000000000000009D9A
                        97FFA9A7A5FFB0AFAEFFB5B3B2FFB6B4B2FFEEEEEDFFD7D6D5FFD9D8D7FFDCDB
                        DBFFEFE3D3FFFAE1C1FFFAE1C3FFFAE1C2FFFAE1C0FFE1E2E3FFD9D9D7FFCDCD
                        CDFFD7C0A0FFCFC4B4FFEEEDEDFF9A9794F1000000000000000000000000A19D
                        9AFFF5F5F5FFF5F6F6FFF2F1F2FFEBECEBFFF9F9F8FFF2F3F2FFE9E9E9FFD9D9
                        DBFFE6D6BCFFFFDDA7FFFFDCA8FFFFDCA8FFFFDDA6FFD2D3D4FFE1E2E2FFECEC
                        EDFFEAECEDFFEBEDEEFFFAFAFAFF9B9895F00000000000000000948D8D249C99
                        96FE9D9996EF9C9895F29C9896FD9D9997FF9C9896FE9C9895F59C9896F0A4A1
                        9FFBC4C4C6FFC3C6CAFFC3C6CAFFC3C6CAFFC4C7CAFFC0BFC0FA9D9996FD9D99
                        96FB9D9996FB9D9996FB9D9996EF000000000000000000000000000000000000
                        0000000000009D9996FB9D9996EF9D9996EF0000000000000000000000009C98
                        95DDC0BDBDEBCBC9C9FFCAC9C9FFCAC9C9FFCCCAC9FF9D9996FB9D9996FB0000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000009D9996EF9D9996EF9D9996EF0000000000000000000000009D99
                        96EF9C9895CD9C9895D09C9895D09C9895D09C9895D09D9996EF000000000000
                        0000000000000000000000000000000000000000000000000000}
                      OnClick = sbLoadPhotoClick
                    end
                    object Gauge1: TGauge
                      Left = 3
                      Top = 629
                      Width = 758
                      Height = 28
                      ForeColor = clGreen
                      Progress = 0
                      Visible = False
                    end
                    object Label125: TLabel
                      Left = 351
                      Top = 610
                      Width = 43
                      Height = 13
                      Caption = 'Label125'
                      Visible = False
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
                      DataFieldImageFormat = ifUnknown
                      PreviewFont.Charset = DEFAULT_CHARSET
                      PreviewFont.Color = clWindowText
                      PreviewFont.Height = -11
                      PreviewFont.Name = 'Tahoma'
                      PreviewFont.Style = []
                    end
                    object GroupBox5: TGroupBox
                      Left = 135
                      Top = 3
                      Width = 664
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
                        Width = 100
                        Height = 30
                        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
                        Glyph.Data = {
                          76060000424D7606000000000000360400002800000018000000180000000100
                          08000000000040020000320B0000320B00000001000000010000392918003131
                          3100EFA5390021214A007B5A4A0073635200EFA55200FFB5520018425A00846B
                          5A000842630021526B0052636B00E7AD6B00F7BD6B00AD7B7300AD847300B584
                          730029637B00AD7B7B0084847B008C847B00AD738400AD7B8400B57B8400B584
                          8400BD848400E7B58400BD848C00C68C8C009C948C00CE948C00DEA58C00EFC6
                          8C00D69C9400DEA59400EFCE94004A6B9C009C9C9C00EFCE9C00CEADA500EFCE
                          A500F7D6A500CEBDAD00F7D6AD00E7CEB500F7D6B500F7DEB5003139BD00DEC6
                          BD00E7CEBD00EFD6BD00F7DEBD008CB5C600E7CEC600EFCEC600EFDEC600F7DE
                          C600F7E7C600E7D6CE00E7DECE00F7DECE00F7E7CE0010A5D600D6D6D600E7D6
                          D600EFDED600F7E7D60042A5DE00DEDEDE00F7E7DE00F7EFDE000010E700F7EF
                          E700299CEF00F7EFEF00FFF7EF002973F70042E7F700FFF7F700FFFFF700FF00
                          FF006BC6FF008CF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
                          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00515151131919
                          19191919191919191919191919191919515151515116383A342F2E2C2A272724
                          2424242424242419515151515116383A39342E2C2C2927272424242424242419
                          5151515151163D3E3939342E2C2C292727242424242424195151515151163E43
                          3E3934342E2C2C292727242424242419515151515116434526262626010C2626
                          26262626262624195151515151174647433E3E390400120C2C29272724242419
                          515151515118494947433E3E4035534D0B2C2927272424195151515151194945
                          262626262652534D4D0A26262626241951515151511A4B4C494947433E3E3F4E
                          4D4D0B2C2927241951515151511C4F504C494947433E3E3F4E4D4D082C292719
                          51515151511D4F4526262626262626263F4E4D4D0B26291951515151511D4F54
                          544F4C494947433E3E3F4E4D4D0A291951515151511D4F5454544F4C49494743
                          3E3E3F4E4D30011951515151511F4F4526262626262626262626263F44151401
                          51515151511F4F54545454544F4C494947433E3E095449050351515151224F54
                          54545454544F4C494747473C2B1E2D124D30515151224F452626262626262626
                          264211100F0F254A4D30515151234F54545454545454504F4C36111B0D060248
                          4851515151234F545454545454545454503611210E0719515151515151234F54
                          5454545454545454543B11210E19515151515151512354545454545454545454
                          5441112119515151515151515120323333373232323231313128111951515151
                          5151515151515151515151515151515151515151515151515151}
                        OnClick = SpeedButton21Click
                      end
                      object SpeedButton22: TSpeedButton
                        Left = 524
                        Top = 16
                        Width = 100
                        Height = 30
                        Caption = #1048#1089#1090#1086#1088#1080#1103
                        Glyph.Data = {
                          76060000424D7606000000000000360400002800000018000000180000000100
                          08000000000040020000420B0000420B00000001000000010000009C00000073
                          0800EFA5390052525200EFA55200FFB5520063636300E7AD6B00F7BD6B007373
                          7300AD7B7300AD847300B5847300AD7B7B00AD7384009C7B8400A57B8400AD7B
                          8400B57B840084848400B5848400E7B584008C8C8C00CE948C00DEA58C00EFC6
                          8C0094949400D69C9400DEA59400B5AD9400EFCE9400B5AD9C00EFCE9C00CEAD
                          A500BDB5A500DEC6A500EFCEA500BDD6A500F7D6A5000052AD00CEBDAD00F7D6
                          AD00F7D6B500F7DEB500DEC6BD00E7CEBD00EFD6BD00F7DEBD00E7CEC600EFCE
                          C600EFDEC600F7DEC600F7E7C6000063CE00E7D6CE00E7DECE00F7DECE00F7E7
                          CE00E7D6D600EFDED600F7E7D600F7E7DE00F7EFDE00F7EFE700FFF7EF00FFF7
                          F700FFFFF700FF00FF0010F7FF0084FFFF00C6FFFF00FFFFFF00FFFFFF00FFFF
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
                          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004343430D1414
                          1414141414141414141414141414141443434343430E32344444454545454646
                          4646464646461E1443434343430E323444444444444545454546464646461E14
                          43434343430E383944444444444444444545464646461E1443434343430E393C
                          27272735353535353535353535461E1443434343430E3C3E4444444545454646
                          4646464646461E144343434343113D3E44444444444545454646464646461E14
                          4343434343123F3F44444444444444444545464646461E144343434343173F40
                          27272735353535353535353535461E144343434343173F404444444444454545
                          4646464646461E14434343434317414744444444444444454545464646462014
                          4343434343174147444444444444444445454546464624144343434343174147
                          2727273535353535353535353546241443434343431741474444444445454546
                          4646464646462914434343434317414744444444444545454646464646462310
                          43434343431741474444444444444445454646462E281D0F43434343431B4147
                          44444444444444444546464628221F0F43434343431B41472727273535353535
                          353B0C0B0A0A0A0A43434343431C4147444444444545464646300C1507040214
                          43434343431C4147444444444445454546300C190805144343434343431C4147
                          444444444444444545360C190814434343434343431C47474444444444444444
                          453A0C19144343434343434343182D2E2E312D2D2D2D2C2C2C210C1443434343
                          4343434343434343434343434343434343434343434343434343}
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
                      Width = 584
                      Height = 58
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 2
                      DesignSize = (
                        584
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
                        Width = 436
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
                      Width = 664
                      Height = 95
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 4
                      DesignSize = (
                        664
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
                        Width = 649
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
                      Width = 664
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
                      Width = 790
                      Height = 113
                      Align = alTop
                      Caption = #1055#1072#1089#1087#1086#1088#1090
                      TabOrder = 0
                      DesignSize = (
                        790
                        113)
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
                        Width = 783
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
                      Top = 113
                      Width = 790
                      Height = 244
                      Align = alTop
                      TabOrder = 1
                      DesignSize = (
                        790
                        244)
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
                      object SpeedButton32: TSpeedButton
                        Left = 160
                        Top = 32
                        Width = 153
                        Height = 22
                        Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1072#1085#1082#1077#1090#1091
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                        OnClick = SpeedButton32Click
                      end
                      object Label116: TLabel
                        Left = 19
                        Top = 120
                        Width = 212
                        Height = 13
                        Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103' '#1074#1086' '#1074#1088#1077#1084#1103' '#1091#1095#1077#1073#1099' '
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
                        Width = 783
                        Height = 21
                        Anchors = [akLeft, akTop, akRight]
                        DataField = 'Registration'
                        DataSource = DM.DSStudentData
                        TabOrder = 0
                      end
                      object DBLookupComboboxEh10: TDBLookupComboboxEh
                        Left = 18
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
                      object DBCheckBox6: TDBCheckBox
                        Left = 18
                        Top = 139
                        Width = 226
                        Height = 17
                        Caption = #1057#1086#1074#1087#1072#1076#1072#1077#1090' '#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1077#1081
                        DataField = 'AdrProgP'
                        DataSource = DM.DSStudentData
                        TabOrder = 2
                        ValueChecked = 'True'
                        ValueUnchecked = 'False'
                        OnClick = DBCheckBox6Click
                      end
                      object DBEditEh2: TDBEditEh
                        Left = 18
                        Top = 207
                        Width = 751
                        Height = 21
                        DataField = 'AdrProg'
                        DataSource = DM.DSStudentData
                        EditButtons = <>
                        ShowHint = True
                        TabOrder = 3
                        Visible = False
                      end
                      object RadioGroup10: TRadioGroup
                        Left = 19
                        Top = 162
                        Width = 462
                        Height = 39
                        Columns = 3
                        Items.Strings = (
                          #1054#1073#1097#1077#1078#1080#1090#1080#1077' '#8470'1'
                          #1054#1073#1097#1077#1078#1080#1090#1080#1077' '#8470'2'
                          #1044#1088#1091#1075#1086#1077)
                        TabOrder = 4
                        Visible = False
                        OnClick = RadioGroup10Click
                      end
                    end
                    object GroupBox4: TGroupBox
                      Left = 0
                      Top = 357
                      Width = 790
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
                    object Button29: TButton
                      Left = 3
                      Top = 422
                      Width = 234
                      Height = 25
                      Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
                      TabOrder = 3
                      OnClick = Button29Click
                    end
                    object Panel25: TPanel
                      Left = 3
                      Top = 422
                      Width = 377
                      Height = 25
                      Color = clSkyBlue
                      ParentBackground = False
                      TabOrder = 4
                      Visible = False
                      object SpeedButton49: TSpeedButton
                        Left = 151
                        Top = 2
                        Width = 122
                        Height = 21
                        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        Glyph.Data = {
                          E6040000424DE604000000000000360000002800000014000000140000000100
                          180000000000B0040000C40E0000C40E00000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000143C18153C18000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000014531B3DDC4A57F06433623700000000000000000000000000000000
                          00000000000000000000000000000000000000000000000000000000000C4C13
                          21BE2F47C14E5FE16680F58A3A613E0000000000000000000000000000000000
                          0000000000000000000000000000000000000000000003420910A91E30B73976
                          F7827CFA8757DE5E61ED6C205B26000000000000000000000000000000000000
                          00000000000000000000000000000000370402970F26AB3055EF6360FD7066FE
                          7461F96E3CD9453CDC4916511C00000000000000000000000000000000000000
                          0000000000000000002A0200800B1CA42642DD505BEF6A7CF18772F27E56F666
                          53F16133D23D28C7350D48130000000000000000000000000000000000000000
                          0000290212741B1C962634CE4265E17188E79190EC9988EC9169E8754AEA5A4A
                          E8592BBC3512AB20034009000000000000000000000000000000002D00308A38
                          42A24B39BF457ADA8396E19D92E39A6BD27479D98184E68E62E06E3EDE4D3FDA
                          4D20A129018E0E0032050000000000000000000000000079034EA35576CB7E95
                          DA9CA0DEA69CDEA368CE7215B8243DC84969D5747DDD865AD56531D24033CD41
                          188B210069080021030000000000000000000036002C9C368CD294B7DCBBAED9
                          B26DC9760CB01B035A0B075F0F18BB275CCD6779D68251CB5C22C53125BF3314
                          791C004C07001A0200000000000000000000390307A11178CD808ED09408AC16
                          005705000000000000045F0C11B52057C46173CD7B46C15112B62116B3251072
                          1801450800180000000000000000000000400212AE2018B52400570600000000
                          0000000000000000005A070AA71654B85D71C3783FB44A04A41308A314197823
                          1F5C25011803000000000000000000013205003C060000000000000000000000
                          000000000000000053030AA21759B26174B47A3FA14801890A0B931741864706
                          420B000000000000000000000000000000000000000000000000000000000000
                          0000000000000054040BA7185BAE6377AD7C3F93480C7915116F19013E070000
                          0000000000000000000000000000000000000000000000000000000000000000
                          00000000000057030BA81860AE6786B48A36923E005402001101000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          000000000057030FA71D51B4591F802800150000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          000000004B04006904001B020000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          00000000000000000000}
                        ParentFont = False
                        OnClick = SpeedButton49Click
                      end
                      object SpeedButton50: TSpeedButton
                        Left = 279
                        Top = 2
                        Width = 97
                        Height = 21
                        Caption = #1054#1090#1084#1077#1085#1072
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
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
                        OnClick = SpeedButton50Click
                      end
                      object ComboBox16: TComboBox
                        Left = 2
                        Top = 2
                        Width = 145
                        Height = 21
                        Style = csDropDownList
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ItemIndex = 0
                        ParentFont = False
                        TabOrder = 0
                        Text = '1  '#1082#1091#1088#1089
                        Items.Strings = (
                          '1  '#1082#1091#1088#1089
                          '2  '#1082#1091#1088#1089
                          '3  '#1082#1091#1088#1089
                          '4  '#1082#1091#1088#1089
                          '5  '#1082#1091#1088#1089
                          #1060#1072#1082#1091#1083#1100#1090#1077#1090)
                      end
                    end
                  end
                  object TabSheet1: TTabSheet
                    Caption = #1056#1086#1076#1080#1090#1077#1083#1080
                    ImageIndex = 3
                    TabVisible = False
                    object Panel3: TPanel
                      Left = 0
                      Top = 139
                      Width = 790
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
                      Width = 790
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
                  object Tab: TTabSheet
                    Caption = #1058#1088#1091#1076#1086#1091#1089#1090#1088#1086#1081#1089#1090#1074#1086
                    ImageIndex = 3
                    object GroupBox19: TGroupBox
                      Left = 0
                      Top = 0
                      Width = 790
                      Height = 123
                      Align = alTop
                      Caption = #1056#1072#1073#1086#1090#1072' '#1076#1086' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 0
                      object Label95: TLabel
                        Left = 16
                        Top = 13
                        Width = 131
                        Height = 13
                        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label96: TLabel
                        Left = 562
                        Top = 11
                        Width = 72
                        Height = 13
                        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100' '
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label97: TLabel
                        Left = 562
                        Top = 57
                        Width = 32
                        Height = 13
                        Caption = #1057#1090#1072#1078
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label98: TLabel
                        Left = 16
                        Top = 59
                        Width = 37
                        Height = 13
                        Caption = #1040#1076#1088#1077#1089
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object DBEdit34: TDBEdit
                        Left = 16
                        Top = 32
                        Width = 498
                        Height = 21
                        DataField = 'workBeforeVuzName'
                        DataSource = DM.DSStudentData
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 0
                      end
                      object DBEdit35: TDBEdit
                        Left = 562
                        Top = 30
                        Width = 128
                        Height = 21
                        DataField = 'workBeforeVuzPost'
                        DataSource = DM.DSStudentData
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 1
                      end
                      object DBEdit36: TDBEdit
                        Left = 562
                        Top = 76
                        Width = 128
                        Height = 21
                        DataField = 'workBeforeVuzExperience'
                        DataSource = DM.DSStudentData
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 2
                      end
                      object DBEdit37: TDBEdit
                        Left = 16
                        Top = 78
                        Width = 498
                        Height = 21
                        DataField = 'workBeforeVuzAddress'
                        DataSource = DM.DSStudentData
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 3
                      end
                    end
                    object GroupBox20: TGroupBox
                      Left = 0
                      Top = 123
                      Width = 790
                      Height = 124
                      Align = alTop
                      Caption = #1042#1088#1077#1084#1077#1085#1085#1086#1077' '#1090#1088#1091#1076#1086#1091#1089#1090#1088#1086#1081#1089#1090#1074#1086
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 1
                      object Label99: TLabel
                        Left = 16
                        Top = 13
                        Width = 131
                        Height = 13
                        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label100: TLabel
                        Left = 386
                        Top = 15
                        Width = 72
                        Height = 13
                        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100' '
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label101: TLabel
                        Left = 16
                        Top = 59
                        Width = 37
                        Height = 13
                        Caption = #1040#1076#1088#1077#1089
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label102: TLabel
                        Left = 586
                        Top = 13
                        Width = 138
                        Height = 13
                        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072' '#1085#1072' '#1088#1072#1073#1086#1090#1091
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label103: TLabel
                        Left = 586
                        Top = 59
                        Width = 103
                        Height = 13
                        Caption = #1044#1072#1090#1072' '#1091#1074#1086#1083#1100#1085#1077#1085#1080#1103
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object DBEdit38: TDBEdit
                        Left = 386
                        Top = 34
                        Width = 175
                        Height = 21
                        DataField = 'workDuringVuzPost'
                        DataSource = DM.DSStudentData
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 0
                      end
                      object DBEdit39: TDBEdit
                        Left = 16
                        Top = 32
                        Width = 348
                        Height = 21
                        DataField = 'workDuringVuzName'
                        DataSource = DM.DSStudentData
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 1
                      end
                      object DBEdit40: TDBEdit
                        Left = 16
                        Top = 78
                        Width = 348
                        Height = 21
                        DataField = 'workDuringVuzAddress'
                        DataSource = DM.DSStudentData
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 2
                      end
                      object DBDateTimeEditEh5: TDBDateTimeEditEh
                        Left = 584
                        Top = 32
                        Width = 161
                        Height = 21
                        DataField = 'workDuringVuzDateIn'
                        DataSource = DM.DSStudentData
                        EditButtons = <>
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Kind = dtkDateEh
                        ParentFont = False
                        ShowHint = True
                        TabOrder = 3
                        Visible = True
                      end
                      object DBDateTimeEditEh6: TDBDateTimeEditEh
                        Left = 584
                        Top = 78
                        Width = 161
                        Height = 21
                        DataField = 'workDuringVuzDateOut'
                        DataSource = DM.DSStudentData
                        EditButtons = <>
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Kind = dtkDateEh
                        ParentFont = False
                        ShowHint = True
                        TabOrder = 4
                        Visible = True
                      end
                      object DBCheckBox3: TDBCheckBox
                        Left = 424
                        Top = 77
                        Width = 97
                        Height = 17
                        Caption = #1054#1092#1080#1094#1080#1072#1083#1100#1085#1086#1077
                        DataField = 'workDuringVuzOfficial'
                        DataSource = DM.DSStudentData
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 5
                        ValueChecked = 'True'
                        ValueUnchecked = 'False'
                      end
                    end
                    object GroupBox21: TGroupBox
                      Left = 0
                      Top = 247
                      Width = 790
                      Height = 140
                      Align = alTop
                      Caption = #1041#1072#1079#1072' '#1087#1088#1086#1093#1086#1078#1076#1077#1085#1080#1103' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1086#1081' '#1087#1088#1072#1082#1090#1080#1082#1080
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 2
                      object DBGridEh3: TDBGridEh
                        Left = 2
                        Top = 15
                        Width = 703
                        Height = 123
                        Align = alLeft
                        DataGrouping.GroupLevels = <>
                        DataSource = DM.DSPractics
                        Flat = False
                        FooterColor = clWindow
                        FooterFont.Charset = DEFAULT_CHARSET
                        FooterFont.Color = clWindowText
                        FooterFont.Height = -11
                        FooterFont.Name = 'Tahoma'
                        FooterFont.Style = [fsBold]
                        RowDetailPanel.Color = clBtnFace
                        TabOrder = 0
                        TitleFont.Charset = DEFAULT_CHARSET
                        TitleFont.Color = clWindowText
                        TitleFont.Height = -11
                        TitleFont.Name = 'Tahoma'
                        TitleFont.Style = [fsBold]
                        Columns = <
                          item
                            EditButtons = <>
                            FieldName = 'namePractice'
                            Footers = <>
                            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1072#1082#1090#1080#1082#1080
                            Width = 240
                          end
                          item
                            EditButtons = <>
                            FieldName = 'kurs'
                            Footers = <>
                            Title.Caption = #1082#1091#1088#1089
                          end
                          item
                            EditButtons = <>
                            FieldName = 'nameOfBase'
                            Footers = <>
                            Title.Caption = #1041#1072#1079#1072' '#1087#1088#1072#1082#1090#1080#1082#1080
                            Width = 238
                          end
                          item
                            EditButtons = <>
                            FieldName = 'result'
                            Footers = <>
                            Title.Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
                          end>
                        object RowDetailData: TRowDetailPanelControlEh
                        end
                      end
                      object Panel26: TPanel
                        Left = 705
                        Top = 15
                        Width = 83
                        Height = 123
                        Align = alClient
                        Color = clWhite
                        ParentBackground = False
                        TabOrder = 1
                        object SpeedButton51: TSpeedButton
                          Left = 15
                          Top = 16
                          Width = 35
                          Height = 35
                          Caption = '+'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -21
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentFont = False
                          OnClick = SpeedButton51Click
                        end
                        object DBNavigator1: TDBNavigator
                          Left = 15
                          Top = 57
                          Width = 35
                          Height = 35
                          DataSource = DM.DSPractics
                          VisibleButtons = [nbDelete]
                          TabOrder = 0
                        end
                      end
                      object Panel27: TPanel
                        Left = 705
                        Top = 15
                        Width = 83
                        Height = 123
                        Align = alClient
                        BorderStyle = bsSingle
                        Color = clSkyBlue
                        ParentBackground = False
                        TabOrder = 2
                        Visible = False
                        object Label108: TLabel
                          Left = 13
                          Top = 10
                          Width = 112
                          Height = 13
                          Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1088#1072#1082#1090#1080#1082#1080
                        end
                        object Label109: TLabel
                          Left = 13
                          Top = 52
                          Width = 84
                          Height = 13
                          Caption = #1041#1072#1079#1072' '#1087#1088#1072#1082#1090#1080#1082#1080
                        end
                        object Label110: TLabel
                          Left = 359
                          Top = 10
                          Width = 27
                          Height = 13
                          Caption = #1050#1091#1088#1089
                        end
                        object Label111: TLabel
                          Left = 496
                          Top = 10
                          Width = 62
                          Height = 13
                          Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
                        end
                        object SpeedButton53: TSpeedButton
                          Left = 496
                          Top = 64
                          Width = 105
                          Height = 33
                          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
                          Glyph.Data = {
                            36040000424D3604000000000000360000002800000010000000100000000100
                            20000000000000040000232E0000232E00000000000001000000F7FCFBFFD0D4
                            D5FFF9FEFEFFFDFFFFFFFBFFFFFFF9FEFEFFF6FBFBFFF5FAFAFFF5FBFBFFF5FB
                            FBFFF5FBFBFFF7FCFCFFF7FDFCFFF8FEFDFFFAFFFFFFF9FFFFFF4A494DFF5D5C
                            5FFFA6A9A9FFA2A5A5FFBABEBEFFBFC3C3FFC9CCCDFFCCCFCFFFCCCFCFFFCCD0
                            D0FFCCCFCFFFC8CBCBFFC2C6C6FFBFC3C3FFB9BCBCFFBEC2C2FF9EA0A1FF8988
                            8AFF8C8A8AFF1B1817FF181413FF737272FF6B6A6AFF6D6C6CFF797979FF7878
                            78FF7A7979FF747373FF25201FFF181311FF130E0DFF343231FFFFFFFFFFC6C9
                            C9FFA6A4A3FF9C9A99FF383332FF959494FF393331FF362F2DFF969696FF9797
                            97FF979797FF949393FF2F2825FF1F1815FF261E1BFF4F4C4BFFF1F7F7FFD7DC
                            DCFF37322FFFA09D9CFFA2A09FFF7A7A7AFF352E2BFF38312EFF9D9D9DFF9E9E
                            9EFF9E9E9EFF979696FF342D2AFF241C19FF29211EFF4E4B49FFF2F7F7FFD8DC
                            DCFF312A28FF302825FFA4A2A0FFAFAEAEFF35302DFF3B3430FFADADADFFADAD
                            ADFFAEAEAEFFA5A4A4FF3D3532FF29211EFF29211FFF514D4CFFF3F8F8FFD7DB
                            DBFF3B3532FF2D2521FF423B37FFBFBEBDFF969493FF585453FFA7A6A5FFAEAC
                            ACFFAFAEAEFFA4A1A1FF3D3632FF2B2421FF2F2724FF55514FFFF3F8F8FFD7DB
                            DBFF3F3935FF342B27FF2E2521FF3D3532FF8F8C8BFF8D8B8BFF463F3DFF4238
                            35FF403734FF3A312EFF312825FF352C29FF382F2CFF565250FFF3F8F8FFD9DD
                            DDFF3E3634FF665B56FFAAA09AFFA09690FFA9A09AFFB8B5B2FF8C8A89FF7E77
                            73FFA79D97FFA39993FFAAA09AFF726863FF382E2BFF5E5957FFF3F8F8FFDADE
                            DEFF3F3634FF8D827CFFF3E9E2FFE7DDD7FFE8DED7FFD8CFC8FFC0BDBBFFA5A3
                            A1FFB4ADA8FFE8DED7FFF3EAE2FF9D938DFF3A302DFF635E5CFFF3F8F8FFD9DE
                            DDFF443C39FF8D837EFFECE4DEFFE0D9D4FFE3DBD6FFE6DFD9FFDCD5D0FFBCB9
                            B8FFB1B0B1FFC9C3BEFFF0E9E3FF9B928DFF403532FF65605EFFF2F7F8FFDADE
                            DEFF48403DFF948B85FFF4EFEAFFE9E4E0FFEBE6E1FFEBE6E1FFEEE8E3FFE1DB
                            D7FFDEDBDBFFC1BDBBFFF7F2ECFFA29A95FF453B37FF686361FFF2F7F7FFDADE
                            DEFF4C4340FF99908BFFFBF7F4FFEFEBE9FFF1EDEAFFF2EEEBFFF1EDEBFFF4F0
                            EDFFEFEBE8FFE9E4E2FFFCF8F5FFA7A09CFF4A403CFF6B6663FFF3F8F8FFD9DE
                            DEFF514845FF9E9692FFFDFCFBFFF5F3F1FFF7F5F3FFF8F6F4FFF8F6F4FFF7F5
                            F4FFF7F5F4FFF6F3F2FFFDFCFBFFACA6A3FF4F4541FF6D6866FFF2F7F7FFDADE
                            DEFF514946FF9F9794FFFEFDFDFFFAF9F9FFFCFBFBFFFDFCFCFFFDFCFCFFFDFC
                            FCFFFCFBFBFFFAF8F8FFFEFDFDFFAFAAA7FF544A45FF716C69FFF0F5F5FFDFE3
                            E3FF696461FFA19B98FFE9EAE9FFE5E5E4FFE7E7E5FFE8E8E6FFE8E8E6FFE8E8
                            E6FFE7E7E6FFE5E5E4FFE9E9E9FFB2ADAAFF736B67FF989695FF}
                          OnClick = SpeedButton53Click
                        end
                        object SpeedButton54: TSpeedButton
                          Left = 607
                          Top = 64
                          Width = 82
                          Height = 33
                          Caption = #1054#1090#1084#1077#1085#1072
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
                          OnClick = SpeedButton54Click
                        end
                        object Edit3: TEdit
                          Left = 13
                          Top = 25
                          Width = 324
                          Height = 21
                          TabOrder = 0
                        end
                        object Edit4: TEdit
                          Left = 13
                          Top = 71
                          Width = 467
                          Height = 21
                          TabOrder = 1
                        end
                        object Edit5: TEdit
                          Left = 359
                          Top = 25
                          Width = 121
                          Height = 21
                          NumbersOnly = True
                          TabOrder = 2
                        end
                        object Edit6: TEdit
                          Left = 496
                          Top = 25
                          Width = 121
                          Height = 21
                          NumbersOnly = True
                          TabOrder = 3
                        end
                      end
                    end
                    object GroupBox22: TGroupBox
                      Left = 0
                      Top = 387
                      Width = 790
                      Height = 147
                      Align = alTop
                      Caption = #1058#1088#1091#1076#1086#1091#1089#1090#1088#1086#1081#1089#1090#1074#1086' '#1087#1086#1089#1083#1077' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1042#1059#1047#1072
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 3
                      object Label104: TLabel
                        Left = 16
                        Top = 13
                        Width = 131
                        Height = 13
                        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label105: TLabel
                        Left = 16
                        Top = 59
                        Width = 37
                        Height = 13
                        Caption = #1040#1076#1088#1077#1089
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label106: TLabel
                        Left = 386
                        Top = 13
                        Width = 72
                        Height = 13
                        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100' '
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label124: TLabel
                        Left = 16
                        Top = 105
                        Width = 174
                        Height = 13
                        Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1072#1102#1097#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object DBEdit41: TDBEdit
                        Left = 16
                        Top = 32
                        Width = 348
                        Height = 21
                        DataField = 'workAfterVuzName'
                        DataSource = DM.DSStudentData
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 0
                      end
                      object DBEdit42: TDBEdit
                        Left = 16
                        Top = 78
                        Width = 505
                        Height = 21
                        DataField = 'workAfterVuzAddress'
                        DataSource = DM.DSStudentData
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 1
                      end
                      object DBEdit43: TDBEdit
                        Left = 386
                        Top = 32
                        Width = 135
                        Height = 21
                        DataField = 'workAfterVuzPost'
                        DataSource = DM.DSStudentData
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 2
                      end
                      object GroupBox24: TGroupBox
                        Left = 551
                        Top = 32
                        Width = 210
                        Height = 83
                        Caption = #1058#1088#1091#1076#1086#1091#1089#1090#1088#1086#1081#1089#1090#1074#1086
                        TabOrder = 3
                        object DBCheckBox4: TDBCheckBox
                          Left = 16
                          Top = 25
                          Width = 169
                          Height = 17
                          Caption = #1055#1086' '#1087#1088#1086#1092#1080#1083#1102' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
                          DataField = 'workAfterVuzProfile'
                          DataSource = DM.DSStudentData
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentFont = False
                          TabOrder = 0
                          ValueChecked = 'True'
                          ValueUnchecked = 'False'
                        end
                        object DBCheckBox5: TDBCheckBox
                          Left = 16
                          Top = 48
                          Width = 97
                          Height = 17
                          Caption = #1054#1092#1080#1094#1080#1072#1083#1100#1085#1086#1077
                          DataField = 'workAfterVuzOfficial'
                          DataSource = DM.DSStudentData
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = []
                          ParentFont = False
                          TabOrder = 1
                          ValueChecked = 'True'
                          ValueUnchecked = 'False'
                        end
                      end
                      object DBLookupComboBox6: TDBLookupComboBox
                        Left = 16
                        Top = 120
                        Width = 505
                        Height = 21
                        DataField = 'workAfterVuzDocument'
                        DataSource = DM.DSStudentData
                        KeyField = 'id'
                        ListField = 'docum'
                        ListSource = DM.DSworkDoc
                        TabOrder = 4
                      end
                    end
                    object GroupBox23: TGroupBox
                      Left = 0
                      Top = 534
                      Width = 790
                      Height = 107
                      Align = alTop
                      Caption = #1044#1086#1089#1090#1080#1078#1077#1085#1080#1103
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 4
                      object DBMemo1: TDBMemo
                        Left = 16
                        Top = 30
                        Width = 745
                        Height = 59
                        DataField = 'workAchievement'
                        DataSource = DM.DSStudentData
                        TabOrder = 0
                      end
                    end
                  end
                end
              end
              object TSStudentAcademic: TTabSheet
                Caption = #1059#1095#1077#1073#1085#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072
                ImageIndex = 2
                object PageControl2: TPageControl
                  Left = 0
                  Top = 0
                  Width = 798
                  Height = 617
                  ActivePage = TabSheet8
                  Align = alClient
                  Images = sAlphaImageList4
                  TabOrder = 0
                  OnChange = PageControl2Change
                  object TabSheet8: TTabSheet
                    BorderWidth = 10
                    Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
                    object GroupBox8: TGroupBox
                      Left = 0
                      Top = 0
                      Width = 770
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
                        Top = 8
                        Width = 114
                        Height = 35
                        Caption = #1059#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1100
                        Flat = True
                        Glyph.Data = {
                          F6060000424DF606000000000000360000002800000018000000180000000100
                          180000000000C006000000000000000000000000000000000000C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C000442200442200442200442200442200442200
                          4422245DC2245DC2245DC2245DC2245DC2245DC2245DC2245DC25B410D5B410D
                          5B410D5B410D5B410D5B410D5B410DC0C0C0C0C0C000452313D49500E29D00E2
                          9D00E29D00E39C0CE9A5245DC27485FF6377FF6377FF6377FF6377FF7385FF50
                          57B9FCD07AF7C675F6C676F6C675F7C676EEC06E614207C0C0C0C0C0C0004323
                          1FCD9700D59A00D59900D59A00D69814DFA42A5BBE7584FE6073FD6174FD6174
                          FD6073FD7283FE4F55B3F7C872ECBC6DEBBC6EEBBC6EECBD6EE5B96D5C410AC0
                          C0C0C0C0C000432326CB9900D19A00D19A00D19A00D29919DBA62D5ABE7383FE
                          5D70FB5E71FB5E71FB5D70FB7183FE5055B2F6C56EEAB966E9B967E9B967E9B9
                          66E2B76C5B410BC0C0C0C0C0C00043232DC99D00CD9A00CD9A00CD9A00CE991E
                          D8A82E5ABF7383FE5A6DFA5B6EFA5B6EFA5A6DFA7183FE5055B2F5C267E9B45E
                          E8B45FE8B45FE8B45DE3B66A5B410BC0C0C0C0C0C000442234C8A000C99900C9
                          9A00C99A00CA9922D6AB3159BF7183FD576BF8586CF8586CF8576BF87082FD50
                          54B1F4BF62E7B057E6B058E6B058E6B056E2B6685B410BC0C0C0C0C0C0004422
                          3AC8A200C69A00C69B00C69B00C79A26D3AD3359C07282FD5469F7556AF7556A
                          F75469F76F82FD5054B1F3BC5EE5AD4FE5AD50E5AD50E5AC4EE2B5675B410CC0
                          C0C0C0C0C000442242C7A500C09A00C19B00C19B00C29A2CD0AE3459C17082FC
                          5166F65267F65267F65166F66E82FD5054B2F1BA58E3A946E3A948E3A947E3A8
                          45E2B4655B410CC0C0C0C0C0C000442248C6A700BC9900BD9A00BD9A00BE992F
                          CEB03659C26F81FA4D64F44F65F44F65F44D64F46D81FB4F54B1F0B853E1A53E
                          E1A541E1A540E1A33EE1B4645B410CC0C0C0C0C0C00044224EC6AA00B79900B7
                          9900B79A00B99833CBB23859C37081FA4A61F34C62F34C62F34A61F36E80FA4F
                          54B2EFB54FE0A237E0A23AE0A239E0A037E1B3645B410CC0C0C0C0C0C0004524
                          40B89856C8B256C8B256C8B256C8B256C8B13556BE6F81F9465DF2485FF2485F
                          F2465DF26D81F95054B1EFB34ADF9D2EDF9D31DF9D30DF9B2DE1B2635B410CC0
                          C0C0C0C0C000442200452300442200442100442100442100452020389C6F81F7
                          435BF0465DF0465DF0435BF06C80F85054B1EDB146DD9A27DD9A2ADD9A29DD98
                          25E0B2635B410CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C02029926E81F64059EF435BEF435BEF4059EF6C80F75054B2EDAF42DC951F
                          DC9622DC9521DB941DE0B3645B410CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C01F2B906F82F53C56EE3F58EE3F58EE3C56EE6C81F750
                          54B2EFB44ADF9E2EDE9E30DE9E30DE9E2EE1B1635C410CC0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01F2B8F6E81F43A53EC3D56EC3D56
                          EC3A53EC6C80F64B4EA7DAA942D1A84ED0A84FD0A84FD0A84FCD9A3F5B410DC0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01F2B8F6E82F3
                          3750EB3A53EB3A53EB3750EB6C81F5222E9A5B410D5B410D5B410D5B410D5B41
                          0D5B410D5B410DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C01F2B8F6F81F3344DEA3750EA3750EA344DEA6E81F31D2994C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C01F2B8F6E81F2304BE8344EE8344EE8314BE86E81F21F
                          2B90C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01F2B8F6F83F12D49E7314CE7314C
                          E72E49E76F83F1202B8FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C01F2B8F6E81F0
                          2843E62C46E62C46E62943E66E81F0202B8FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C01F2B907B8DF3576CED586DED586DED576CED7B8DF3202B90C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0212D8F4251CE4250CD4250CD4250CD4250CD4251CE21
                          2D8FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                        OnClick = sbSessionStudentClick
                      end
                      object SpeedButton25: TSpeedButton
                        Left = 327
                        Top = 8
                        Width = 113
                        Height = 35
                        Caption = #1056#1072#1073#1086#1095#1080#1081' '#1087#1083#1072#1085
                        Flat = True
                        Glyph.Data = {
                          A2070000424DA207000000000000360000002800000019000000190000000100
                          1800000000006C07000000000000000000000000000000000000C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C09A825F99805D987D5A977B
                          57967A5595785394775194754F92744D8E6E485335165335165335165D3D1E8E
                          6C448E6B428E6B428E6B428E6B428E6B428E6B428E6B428E6B42C0C0C000784F
                          259A6F409C71419D71419C70419C70409C6F409C6E3F9C6E3E9B6D3E9D6F40C2
                          9C73E7C7A2E7C7A2B2895E996B3B996B3A996B39996B39996B39996B39996B39
                          996A3A976839784D24009C7145E7CDABDDC3A0F0D2A8F2D2A8F1D1A7F0D0A5F0
                          CFA4F0CEA3EFCCA1EDCA9FD5B892CFB18DE6C398ECC79BECC79AEBC699EBC597
                          EBC497EAC497EAC497E1BE93D4B590E8CAA59A6E43009E7448B9A68B8178698D
                          7E68A38E71AF9776B09876AC94739D876A927E6488765E897F718A8177877661
                          977F61A68966AE8F68B9966BB59269A88963977C5D8674608C7D6CC8AB899B6F
                          41009F7549AF9D84918F8CB7B7B7A4A19E97948F95928C97938FA3A19FADACAB
                          B7B7B7C9C9C9A3A09EA3A2A1A4A29F94908B8C8780807971837D758F8A849F9D
                          9AB0B0B0878078C0A3819C7041009F764AA0917BABABACFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A7A4C2C0BEFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9B9C89719C7041009F764AA0917C
                          ACACACFFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFAAA7
                          A4C2C1BFFFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFA3A3A39B
                          88709C704100A0774BA1927DACACAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFAAA8A5C3C2C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFA3A3A39B88719C704100A0774BA1927DADADAEFFFFFFC0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFABA8A5C4C2C1FFFFFFC0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFA3A3A39C88719C704200A077
                          4CA1927EAEAEAEFFFFFFFFFFFFECECEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFABA9A6C5C3C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          A4A4A49C89719C704200A1784CA2937EAEAEAFFFFFFFC0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0FFFFFFACA9A6C5C3C2FFFFFFC0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0FFFFFFA4A4A49C89729C704200A1784CA2937EAFAFB0FF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACAAA7C6C5C3
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5A59C8A739C70
                          4300A1784CA2937EB0B0B0FFFFFF0000FFFFFFFF0000FFFFFFFFC0C0C0C0C0C0
                          C0C0C0FFFFFFADAAA7C7C5C4FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0FFFFFFA5A5A59C8A739D714400A1784CA2937EB0B0B1FFFFFF0000FFFFFFFF
                          0000FFFFFFFFFFFFFFFFFFFFFFFFFFECECEDADABA8C7C6C5FFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6A69D8A749D714400A1784CA2937E
                          B0B0B2FFFFFF0000FFFFFFFF0000FFFFFFFFC0C0C0C0C0C0C0C0C0EDEDEFAEAC
                          A9C8C7C6FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFA6A6A79E
                          8C759E724400A0764BA2937EB1B1B2F3F3F50000FF0000FF0000FFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFAFACA9C9C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFA7A7A89E8D769D7245009D7448A2927FA3A3A4FFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9D9ABBBAB8FFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99999A9F8E7A9C7144008E62
                          369074566C6156969594BCBCBECCCCCDD6D6D8CECED0C9C9CAB6B6B79C9B9C7E
                          766E6E5F4F776C618F8C8BA6A6A7B4B4B5BEBEBFC4C4C5B7B7B8AAAAAB8D8B89
                          685C509073548D613400C0C0C0D4B689CAB28B534F474A4A4A5554545B5B5C57
                          5657535253484747524F48C7B08BCDB289C8B089AA997C4242404847484F4E4E
                          5352524B4A4A444443AC9674C2A276CAA472C0C0C000C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C000}
                        Visible = False
                        OnClick = SpeedButton25Click
                      end
                      object SpeedButton26: TSpeedButton
                        Left = 519
                        Top = 13
                        Width = 129
                        Height = 30
                        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1086' '#1082#1091#1088#1089#1072#1084
                        Flat = True
                        Glyph.Data = {
                          A2070000424DA207000000000000360000002800000019000000190000000100
                          1800000000006C07000000000000000000000000000000000000C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0B26B2DB26B2DB26B2DB26B2DB26B2DB26B2DB2
                          6B2DB26B2DB26B2DB26B2DC0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B26B2DB26B2DCC8645CC
                          8746CC8646CC8646CC8646CC8646CC8746CB8544B0692CB26B2DC0C0C000C0C0
                          C0C0C0C061492EA1794DA37B4EA37B4DA1784BA57F53A47D51A47D51A47E52A7
                          7745C47F40DEA266DF9D5DDD9C5BDD9C5BDD9B5ADD9B5ADD9C5BDD9C5BDF9D5D
                          DEA268C37E3EC0C0C000C0C0C0C0C0C07A5B39BC8E5CBA8C59BB8C59B68651FC
                          F2E4FCEFE0FBEEDFFCEFE2EBD0B3D2945CE5AC72E4A767E4A767E4A565E5AF78
                          E4AE76E4A565E4A767E4A767E6AF77CF8F55C0C0C000C0C0C0C0C0C07A5933DB
                          B27FD4AA76BC8E5AB5854FFAECDDF7E7D5F6E6D4F7E8D6ECCEB1DAA473ECB982
                          EAB374EAB373ECB77DEFE0CEEAD9C4EAB57AEBB374EAB374ECBD88D59A64C0C0
                          C000C0C0C0797879A49E99847D75D9AD76BE915CB6864FFAEBDCF7E5D1F6E4D0
                          F7E5D2ECCDAFDFAF81F2CCA1F1BE81F3BE7FF9DEBCF9F7F5F1EEE9F1D1ADF5BF
                          81F1BE82F3D0A7DBA775C0C0C000C0C0C0C0C0C07D5C37AC8250B58751C2945F
                          B78650F9EBDAF6E4CFF5E3CEF5E4CFF2DBC1E4BA8EEDCFB3F6D9B8E6D4B7A4C8
                          DA83B2CB73A3BC7FA3B2DDCAA9F7DCBCEACCAFB68351C0C0C000C0C0C0C0C0C0
                          7A5833DCB482D3A973C3975FB78750F9EBDAF6E3CCF5E2CBF5E2CBF5E4CDF2DC
                          C2E6BC8FECC49BC5C9C06FADCD5F94B04A7D992F6685B4B0A3EBC39BA47340C0
                          C0C0C0C0C000C0C0C06564659D9287978A7BDDB37BC59A62B78851F8EADAF5E0
                          C9F4E0C9F4E0C9F4E0C9F4E0CAF5E1CAF3D2B0C0BDAE70AECD6BA5C35D94B33C
                          7392B6AC96F0D6B7765734C0C0C0C0C0C000C0C0C01919198467489B7A51B98C
                          54C89D64B78851F9EBDAF5DEC6F4DEC6F4DEC6F4DEC6F4DEC6F6DFC7ECDBC593
                          B5C581C3E47AB9DA6FACCE5C99BC89A6B4ECE4D1785733C0C0C0C0C0C000C0C0
                          C0C0C0C07A5833DDB989D4AA71CB9F67B88952F9EBDAF4DDC3F3DCC3F3DCC2F3
                          DCC1F3DBC1FAE1C49EA2A44A83AB92D6F484C4E478B7D770AED035638CADAEB1
                          7C5A35C0C0C0C0C0C000C0C0C0515051968676A99782E2B87ECCA168B88852F9
                          EBDBF3DBC1F2DABFF7E7D3F9EDDEF9EDDEFDF0E04163883B77A180C1E085C5E5
                          84C4E47DBDDD29507B4F6A88815E36C0C0C0C0C0C000C0C0C02D2D2D8B73598B
                          7253BD9155CFA46AB98952FAEBDBF2DABEF2D8BBF7F2EBAEB0B0CDCDCDD6D4D2
                          174678235D8B39709A3E70995C91B56198BA22446F274C78846038C0C0C0C0C0
                          C000C0C0C0C0C0C0795833DDBC8FD4AA6FD1A76CB98953FAECDBF2D9BBF1D7B7
                          FBF7F2E7E7E7F0F0F0F8F8F81343751E63953B7BAD5087B54A75A13254801A37
                          65234A76856038C0C0C0C0C0C000C0C0C03C3C3C8F7A65B9A58AE7BF84D4A96E
                          BA8A53F9ECDDF1D8B8F0D6B5F8F4EEBABABAD3D3D3F2F2F2305886185E91317B
                          AE4283B34078A72D5885143767416184815E37C0C0C0C0C0C000C0C0C0414141
                          927E6A806E56C2985AD6AD70BB8B53FAEEDEF0D6B6EFD4B3F8F3EEBCBCBDEAEA
                          EACBCBCB8597A90943771A64972872A326659516497A09386DAFB5B87C5B34C0
                          C0C0C0C0C000C0C0C0C0C0C07A5833D8BC91D2A96BD8B072BB8B53FAEEE0F0D3
                          B3EFD2B2F9EEE2E9E9E8F8F7F6EEEDECEDEDEDA2B5C82F5D8B0F437A0D40772C
                          517CA4A09EF1E9D8785732C0C0C0C0C0C000C0C0C0C0C0C0886F52C8B293ECC5
                          87D9B274BB8B54FAEEE1F0D2B0F0D2B1F0D1B0F0D2AFF0D1AEF0D1AEF2D3AFF7
                          D7B3FCDCB7FCDEB8FCDEB7FCDBB6F7D6B2F5E9D8765631C0C0C0C0C0C000C0C0
                          C0565555978C816E665AC89E5FDCB676BB8C54FAEFE3EFD1AEEFD2B0EED1AFD5
                          B086E1BF98EDCEACD5B086E2C09AE2C09AE2C099F2D4B2F1D3B1F0D1AEF4E8DA
                          765531C0C0C0C0C0C000C0C0C0C0C0C07A5835CDB490D3AA69DFB778BC8D54F9
                          F1E5EECFABEED0AEEED1AEDEBB94E5C5A0EECFACDEBC94E6C6A1E5C5A0E5C59F
                          EFD1AFEED0AEEECFABF4EADC765531C0C0C0C0C0C000C0C0C0C0C0C0816240D5
                          BF9DF0C989E0B97ABC8C55F9F2E7EECDA8EECFABEECFABEED0ACEECFACEECFAB
                          EED0ACEED0ACEECFACEECFABEECFABEECFABEECDA8F4EBDF765531C0C0C0C0C0
                          C000C0C0C06A69699F958B6F675DCDA561E3BC7BBC8D54F9F1E8EECAA3EECCA6
                          EECCA6EECCA6EECCA6EECCA6EECCA6EECCA6EECCA6EECCA6EECCA6EECCA6EECA
                          A3F4EBE0765531C0C0C0C0C0C000C0C0C0C0C0C07A5934C9B593DEC497F1D9AC
                          C19460FBF7F1F7E7D5F7E8D6F7E8D6F7E8D6F7E8D6F7E8D6F7E8D6F7E8D6F7E8
                          D6F7E8D6F7E8D6F7E8D6F7E7D5F5EDE5775632C0C0C0C0C0C000C0C0C0C0C0C0
                          775937C59C6CC59C6DC59C6DBA8B57C59E73C49D72C49D72C49D72C49D72C49D
                          72C49D72C49D72C49D72C49D72C49D72C49D72C49D72C49D72C39C70765835C0
                          C0C0C0C0C000}
                        Visible = False
                        OnClick = SpeedButton26Click
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
                      object DBEditEh1: TDBEditEh
                        Left = 438
                        Top = 14
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
                        TabOrder = 1
                        Visible = False
                      end
                    end
                    object GroupBox9: TGroupBox
                      Left = 0
                      Top = 49
                      Width = 770
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
                      Width = 770
                      Height = 95
                      Align = alTop
                      TabOrder = 2
                      DesignSize = (
                        770
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
                        Width = 415
                        Height = 89
                        Anchors = [akLeft, akTop, akRight, akBottom]
                        TabOrder = 3
                        DesignSize = (
                          415
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
                          Width = 391
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
                      Width = 770
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
                        Enabled = False
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
                    object GroupBox25: TGroupBox
                      Left = 0
                      Top = 255
                      Width = 770
                      Height = 132
                      Align = alTop
                      Caption = #1042#1089#1090#1091#1087#1080#1090#1077#1083#1100#1085#1099#1077' '#1080#1089#1087#1099#1090#1072#1085#1080#1103
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 4
                      object DBGridEh2: TDBGridEh
                        Left = 2
                        Top = 15
                        Width = 766
                        Height = 115
                        Align = alTop
                        DataGrouping.GroupLevels = <>
                        DataSource = DM.DSEntranceExam
                        Flat = False
                        FooterColor = clWindow
                        FooterFont.Charset = DEFAULT_CHARSET
                        FooterFont.Color = clWindowText
                        FooterFont.Height = -11
                        FooterFont.Name = 'Tahoma'
                        FooterFont.Style = [fsBold]
                        RowDetailPanel.Color = clBtnFace
                        TabOrder = 0
                        TitleFont.Charset = DEFAULT_CHARSET
                        TitleFont.Color = clWindowText
                        TitleFont.Height = -11
                        TitleFont.Name = 'Tahoma'
                        TitleFont.Style = [fsBold]
                        Columns = <
                          item
                            EditButtons = <>
                            FieldName = 'SubName'
                            Footers = <>
                            Title.Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
                            Width = 300
                          end
                          item
                            EditButtons = <>
                            FieldName = 'result'
                            Footers = <>
                            Title.Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
                            Width = 82
                          end>
                        object RowDetailData: TRowDetailPanelControlEh
                        end
                      end
                    end
                    object GroupBox28: TGroupBox
                      Left = 0
                      Top = 387
                      Width = 770
                      Height = 155
                      Align = alTop
                      Caption = #1059#1095#1077#1073#1085#1099#1081' '#1087#1083#1072#1085
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 5
                      Visible = False
                      object Label128: TLabel
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
                      object Label129: TLabel
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
                      object Label130: TLabel
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
                      object Label131: TLabel
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
                      object Label132: TLabel
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
                      object SpeedButton64: TSpeedButton
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
                      object Label133: TLabel
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
                      object SpeedButton65: TSpeedButton
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
                          A2070000424DA207000000000000360000002800000019000000190000000100
                          1800000000006C07000000000000000000000000000000000000C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C09A825F99805D987D5A977B
                          57967A5595785394775194754F92744D8E6E485335165335165335165D3D1E8E
                          6C448E6B428E6B428E6B428E6B428E6B428E6B428E6B428E6B42C0C0C000784F
                          259A6F409C71419D71419C70419C70409C6F409C6E3F9C6E3E9B6D3E9D6F40C2
                          9C73E7C7A2E7C7A2B2895E996B3B996B3A996B39996B39996B39996B39996B39
                          996A3A976839784D24009C7145E7CDABDDC3A0F0D2A8F2D2A8F1D1A7F0D0A5F0
                          CFA4F0CEA3EFCCA1EDCA9FD5B892CFB18DE6C398ECC79BECC79AEBC699EBC597
                          EBC497EAC497EAC497E1BE93D4B590E8CAA59A6E43009E7448B9A68B8178698D
                          7E68A38E71AF9776B09876AC94739D876A927E6488765E897F718A8177877661
                          977F61A68966AE8F68B9966BB59269A88963977C5D8674608C7D6CC8AB899B6F
                          41009F7549AF9D84918F8CB7B7B7A4A19E97948F95928C97938FA3A19FADACAB
                          B7B7B7C9C9C9A3A09EA3A2A1A4A29F94908B8C8780807971837D758F8A849F9D
                          9AB0B0B0878078C0A3819C7041009F764AA0917BABABACFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A7A4C2C0BEFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9B9C89719C7041009F764AA0917C
                          ACACACFFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFAAA7
                          A4C2C1BFFFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFA3A3A39B
                          88709C704100A0774BA1927DACACAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFAAA8A5C3C2C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFA3A3A39B88719C704100A0774BA1927DADADAEFFFFFFC0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFABA8A5C4C2C1FFFFFFC0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFA3A3A39C88719C704200A077
                          4CA1927EAEAEAEFFFFFFFFFFFFECECEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFABA9A6C5C3C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          A4A4A49C89719C704200A1784CA2937EAEAEAFFFFFFFC0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0FFFFFFACA9A6C5C3C2FFFFFFC0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0FFFFFFA4A4A49C89729C704200A1784CA2937EAFAFB0FF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACAAA7C6C5C3
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5A59C8A739C70
                          4300A1784CA2937EB0B0B0FFFFFF0000FFFFFFFF0000FFFFFFFFC0C0C0C0C0C0
                          C0C0C0FFFFFFADAAA7C7C5C4FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0FFFFFFA5A5A59C8A739D714400A1784CA2937EB0B0B1FFFFFF0000FFFFFFFF
                          0000FFFFFFFFFFFFFFFFFFFFFFFFFFECECEDADABA8C7C6C5FFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6A69D8A749D714400A1784CA2937E
                          B0B0B2FFFFFF0000FFFFFFFF0000FFFFFFFFC0C0C0C0C0C0C0C0C0EDEDEFAEAC
                          A9C8C7C6FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFA6A6A79E
                          8C759E724400A0764BA2937EB1B1B2F3F3F50000FF0000FF0000FFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFAFACA9C9C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFA7A7A89E8D769D7245009D7448A2927FA3A3A4FFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9D9ABBBAB8FFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99999A9F8E7A9C7144008E62
                          369074566C6156969594BCBCBECCCCCDD6D6D8CECED0C9C9CAB6B6B79C9B9C7E
                          766E6E5F4F776C618F8C8BA6A6A7B4B4B5BEBEBFC4C4C5B7B7B8AAAAAB8D8B89
                          685C509073548D613400C0C0C0D4B689CAB28B534F474A4A4A5554545B5B5C57
                          5657535253484747524F48C7B08BCDB289C8B089AA997C4242404847484F4E4E
                          5352524B4A4A444443AC9674C2A276CAA472C0C0C000C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C000}
                        ParentFont = False
                        OnClick = sbEditPlanClick
                      end
                      object SpeedButton66: TSpeedButton
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
                      object SpeedButton67: TSpeedButton
                        Left = 463
                        Top = 6
                        Width = 129
                        Height = 34
                        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081
                        Flat = True
                        Glyph.Data = {
                          E6040000424DE604000000000000360000002800000014000000140000000100
                          180000000000B0040000C40E0000C40E00000000000000000000000000000000
                          0000002B19114A33244B3A2A4D3E244D40244D42254D43264D43264D43264D42
                          254D41254D40244B3C23483522442E2040251F0F070700000000000000000099
                          6242EDBF97E2BF95EDCF95EED497EED799EEDA9AEEDA9AEEDA9AEED999EED698
                          EED296ECCC94E5BE91DDB292DA927D3B1711000000000000000000947455FAFE
                          FFE2E6FEF6F8FDF7F9FDF7F9FDF7F9FDF7F9FDF7F9FDF7F9FDF7F9FDF7F9FDF7
                          F9FDF7FAFDF8FDFFF2D7CA311204000000000000000000836743FFFEFBEAE8FD
                          FEFBFCFEFCFCFFFCFCFFFDFCFFFEFCFFFDFCFFFDFCFFFDFDFFFFFFFFFFFFFFFD
                          FDFFFFFFE9CAB4210B000000000000000000006D5730FFF7E8E0DEF5F1ECECEE
                          E9E9EBE7E6E9E6E3E6E4E1E3E1DDE2DEDBEDE6E2D7D1D1EBE7E7FDFAFAFFFEFE
                          D5B597110400000000000000000000554421FFFAE1E4E5FDF8F6F6F7F6F6F6F4
                          F4F5F4F3F4F3F2F9F4F1FBF4F1C3D5EBA9B7CBF0EEECFEFCFCFFFFFFC4A77F01
                          0000000000000000000000413310FDEDCDE6E3FBF6F1F3F9F4F3FAF5F4FBF7F4
                          FFFDF6EDF7F67FB9E592B5E4EAEFF8FFFBF9FBF7F7FFFFFFAD8E610000000000
                          000000000000002E2204F2E3C0EBECFEF2F1F6F8F7F6F7F6F6FFFBF7EDF6F83C
                          B8F007B3F3CAEBF6FFFBF7F9F7F8F9F9FAFFFEFB907648000000000000000000
                          0000001D1400DECDA6ECE9FCEBE8EFF3F0EEFDF2EEEAEDED3DB5EB00B7F787E8
                          FDECF0F0F6EEEDF3EEEEF4F0F3FFF5E57059320000000000000000000000000E
                          0800D0BC8FEFECF9E7E4EEFCF1ECE8EBEE3DB6EE00B7F789E4F8F3F0EEF7EEED
                          F1EDEDF1EEEDF2F1F5FDEFD7523E1E000000000000000000000000010000C0A8
                          75EFECF6EFE4EAE5E5E63AB3E902BBF989E7FCEFEEECF4ECE9EEEBEAEEEAEAEE
                          EAEAF0F0F5F3DEC3372508000000000000000000000000000000AC915FFAEFF3
                          DADEEA3CB8ED04BDFA8CE5F8EDEBE8F2EBE7EDEBEAECE9E9EBE9E9EDEBEBF2F3
                          F7DEC7AD2311000000000000000000000000000000009E7642E7E5E932ADEB0D
                          C6FF96EFFFE7E5E2F5EDE9F3F1EEE7E4E1EDEAE9F2EEEEE6E2E1F7F5F6CEAF93
                          0E03000000000000000000000000000000004E443440BCEE0AC4FF76CFE3C8C7
                          C6C2BCB6C0C0BECBCBCBBDBCB7BFC0BECCCCCCBDBDB8C9CAC88C776701000000
                          0000000000000000000000000B120078B31CD7FF83DAEC26292A1712118E8E8F
                          2929291212128A8A8A3737371111119090903939390304060000000000000000
                          00000000000B14007EB728E2FF53AEBF858788120D0B00000076767612121200
                          0000757575202020000000787878212121000000000000000000000000090301
                          53778747E8FF4FADBE090E100703020202020000000606060101010000000707
                          070000000000000707070202020000000000000000000003126D707EF1ECE89C
                          B0B2060E12000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000003D5BAAAECCFFA9ABAF1813110000
                          0000000000000000000000000000000000000000000000000000000000000000
                          000000000000000000000000000041558D677EAF00020E000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          00000000000000000000}
                        Visible = False
                        OnClick = SpeedButton57Click
                      end
                      object DBEditEh3: TDBEditEh
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
                      object DBEdit47: TDBEdit
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
                      object DBEdit48: TDBEdit
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
                      object DBEdit49: TDBEdit
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
                      object DBEdit50: TDBEdit
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
                      object DBEdit51: TDBEdit
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
                  end
                  object TabSheet9: TTabSheet
                    Caption = #1055#1088#1080#1082#1072#1079#1099
                    ImageIndex = 1
                    object Panel17: TPanel
                      Left = 0
                      Top = 0
                      Width = 790
                      Height = 153
                      Align = alTop
                      Color = clSkyBlue
                      ParentBackground = False
                      TabOrder = 0
                      object Label76: TLabel
                        Left = 17
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
                      object Label77: TLabel
                        Left = 17
                        Top = 51
                        Width = 75
                        Height = 13
                        Caption = #1055#1088#1080#1082#1072#1079' '#1086'('#1086#1073')'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label82: TLabel
                        Left = 17
                        Top = 99
                        Width = 48
                        Height = 13
                        Caption = #1055#1088#1080#1095#1080#1085#1072
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label78: TLabel
                        Left = 240
                        Top = 56
                        Width = 14
                        Height = 13
                        Caption = #8470
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label79: TLabel
                        Left = 328
                        Top = 56
                        Width = 14
                        Height = 13
                        Caption = #1086#1090
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label80: TLabel
                        Left = 456
                        Top = 56
                        Width = 6
                        Height = 13
                        Caption = #1089
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                        Visible = False
                      end
                      object Label81: TLabel
                        Left = 536
                        Top = 56
                        Width = 14
                        Height = 13
                        Caption = #1087#1086
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                        Visible = False
                      end
                      object SpeedButton33: TSpeedButton
                        Left = 215
                        Top = 112
                        Width = 129
                        Height = 27
                        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
                        Glyph.Data = {
                          E6040000424DE604000000000000360000002800000014000000140000000100
                          180000000000B004000000000000000000000000000000000000C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                          571ED96D21D96E16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05715CD63
                          17CD6316B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570DCB5C0DC95C16
                          B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570CCA5B0CC85B16B057C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C016B05715B85A16AF5715AD5517B85B1AC6621AC66219C05F16B05716B057
                          16B05716B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                          573FEA8744E18642E18543D98340CD7C40CD7C42D17F43DF8542E08545E4892D
                          D675C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B057
                          16B05716B05734AB6765DB986BDD9C4CC78016B05716B05716B05716B057C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C016B05774E5A583E9AF16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                          5779E7A88BEAB516B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0577DF2AE
                          91F5BC16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B05716B05716
                          B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                          C0C0C0C0C0C0C0C0C0C0}
                        OnClick = SpeedButton33Click
                      end
                      object DBLookupComboBox5: TDBLookupComboBox
                        Left = 16
                        Top = 26
                        Width = 145
                        Height = 21
                        DataField = 'Status'
                        DataSource = DM.DSStudentData
                        Enabled = False
                        KeyField = 'id'
                        ListField = 'status'
                        ListSource = DM.DSStatuses
                        TabOrder = 0
                        OnCloseUp = DBLookupComboBox3CloseUp
                      end
                      object ComboBox10: TComboBox
                        Left = 16
                        Top = 70
                        Width = 185
                        Height = 21
                        TabOrder = 1
                        OnCloseUp = ComboBox10CloseUp
                        Items.Strings = (
                          #1086#1090#1095#1080#1089#1083#1077#1085#1080#1080
                          #1074#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1080
                          #1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1080' '#1072#1082#1072#1076#1077#1084'. '#1086#1090#1087#1091#1089#1082#1072
                          #1074#1099#1093#1086#1076#1077' '#1080#1079' '#1072#1082#1072#1076#1077#1084'. '#1086#1090#1087#1091#1089#1082#1072
                          #1089#1084#1077#1085#1077' '#1080#1084#1077#1085#1080
                          #1087#1077#1088#1077#1074#1086#1076#1077' '#1074' '#1048#1047#1054
                          #1087#1077#1088#1077#1074#1086#1076#1077' '#1080#1079' '#1048#1047#1054
                          #1087#1077#1088#1077#1074#1086#1076#1077' '#1085#1072' '#1076#1088#1091#1075#1091#1102' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
                          #1087#1077#1088#1077#1074#1086#1076#1077' '#1085#1072' '#1076#1088#1091#1075#1086#1081' '#1092#1072#1082#1091#1083#1100#1090#1077#1090
                          #1087#1077#1088#1077#1074#1086#1076#1077' '#1080#1079' '#1076#1088#1091#1075#1086#1075#1086' '#1074#1091#1079#1072
                          #1087#1077#1088#1077#1074#1086#1076#1077' '#1085#1072' '#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1082#1091#1088#1089
                          #1079#1072#1095#1080#1089#1083#1077#1085#1080#1080' '#1085#1072' '#1074#1090#1086#1088#1086#1081' '#1080' '#1087#1086#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1082#1091#1088#1089#1099
                          #1087#1077#1088#1077#1074#1086#1076#1077' '#1089' '#1082#1086#1084#1084#1077#1088#1095#1077#1089#1082#1086#1081' '#1086#1089#1085#1086#1074#1099' '#1086#1073#1091#1095#1077#1085#1080#1103' '#1085#1072' '#1073#1102#1076#1078#1077#1090#1085#1091#1102
                          #1079#1072#1089#1077#1083#1077#1085#1080#1080' '#1074' '#1086#1073#1097#1077#1078#1080#1090#1080#1077
                          #1074#1099#1089#1077#1083#1077#1085#1080#1080' '#1080#1079' '#1086#1073#1097#1077#1078#1080#1090#1080#1103
                          #1074' '#1076#1086#1087#1086#1083#1085#1077#1085#1080#1077' '#1082' '#1087#1088#1080#1082#1072#1079#1091
                          #1086#1073' '#1086#1090#1084#1077#1085#1077' '#1087#1088#1080#1082#1072#1079#1072
                          #1074#1086' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1087#1088#1080#1082#1072#1079#1072)
                      end
                      object ComboBox11: TComboBox
                        Left = 17
                        Top = 118
                        Width = 185
                        Height = 21
                        TabOrder = 2
                        OnCloseUp = ComboBox11CloseUp
                        Items.Strings = (
                          #1047#1072' '#1072#1082#1072#1076#1077#1084#1080#1095#1077#1089#1082#1091#1102' '#1085#1077#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1100
                          #1055#1086' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1084#1091' '#1078#1077#1083#1072#1085#1080#1102
                          #1042' '#1089#1074#1103#1079#1080' '#1089' '#1074#1099#1087#1091#1089#1082#1086#1084
                          #1042' '#1089#1074#1103#1079#1080' '#1089' '#1087#1088#1080#1079#1099#1074#1086#1084' '#1074' '#1042#1057' '#1056#1060
                          #1055#1086' '#1089#1077#1084#1077#1081#1085#1099#1084' '#1086#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1072#1084
                          #1055#1086' '#1089#1086#1089#1090#1086#1103#1085#1080#1102' '#1079#1076#1086#1088#1086#1074#1100#1103
                          #1053#1077#1074#1099#1093#1086#1076' '#1080#1079' '#1040#1054
                          #1053#1077#1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1091#1089#1083#1086#1074#1080#1081' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1086' '#1087#1086#1076#1075#1086#1090#1086#1074#1082#1077' '#1089#1087#1077#1094'./'#1073#1072#1082'./'#1084#1072#1075'.'
                          #1044#1088#1091#1075#1072#1103)
                      end
                      object DateTimePicker2: TDateTimePicker
                        Left = 424
                        Top = 70
                        Width = 81
                        Height = 21
                        Date = 41220.674476608790000000
                        Time = 41220.674476608790000000
                        TabOrder = 3
                        Visible = False
                      end
                      object DateTimePicker3: TDateTimePicker
                        Left = 528
                        Top = 70
                        Width = 81
                        Height = 21
                        Date = 41220.674639548610000000
                        Time = 41220.674639548610000000
                        TabOrder = 4
                        Visible = False
                      end
                      object Edit1: TEdit
                        Left = 215
                        Top = 70
                        Width = 75
                        Height = 21
                        TabOrder = 5
                      end
                      object DateTimePicker1: TDateTimePicker
                        Left = 313
                        Top = 70
                        Width = 88
                        Height = 21
                        CalColors.TitleBackColor = clSkyBlue
                        Date = 0.674139317132358000
                        Time = 0.674139317132358000
                        TabOrder = 6
                      end
                      object Edit2: TEdit
                        Left = 208
                        Top = 118
                        Width = 186
                        Height = 21
                        TabOrder = 7
                        Text = #1042#1042#1077#1076#1080#1090#1077' '#1087#1088#1080#1095#1080#1085#1091
                        Visible = False
                      end
                      object Button34: TButton
                        Left = 576
                        Top = 112
                        Width = 187
                        Height = 27
                        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1089#1077#1084' '#1089#1090#1091#1076#1077#1085#1090#1072#1084' '#1075#1088#1091#1087#1087#1099
                        TabOrder = 8
                        OnClick = Button34Click
                      end
                    end
                    object DBGridEh1: TDBGridEh
                      Left = 0
                      Top = 153
                      Width = 790
                      Height = 379
                      Align = alClient
                      BorderStyle = bsNone
                      Color = clWhite
                      DataGrouping.GroupLevels = <>
                      DataSource = DM.DSPrikaz
                      Flat = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      FooterColor = clHotLight
                      FooterFont.Charset = DEFAULT_CHARSET
                      FooterFont.Color = clWindowText
                      FooterFont.Height = -11
                      FooterFont.Name = 'Tahoma'
                      FooterFont.Style = []
                      ImeMode = imDisable
                      ParentFont = False
                      ReadOnly = True
                      RowDetailPanel.Color = clBtnFace
                      TabOrder = 1
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'Tahoma'
                      TitleFont.Style = [fsBold]
                      Columns = <
                        item
                          EditButtons = <>
                          FieldName = 'id'
                          Footers = <>
                          Visible = False
                        end
                        item
                          EditButtons = <>
                          FieldName = 'id_stud'
                          Footers = <>
                          Title.Alignment = taCenter
                          Visible = False
                        end
                        item
                          EditButtons = <>
                          FieldName = 'Prikaz'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.Caption = #1055#1088#1080#1082#1072#1079' '#1086'('#1086#1073')'
                          Width = 227
                        end
                        item
                          EditButtons = <>
                          FieldName = 'Nomer'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.Caption = #1053#1086#1084#1077#1088
                          Width = 89
                        end
                        item
                          EditButtons = <>
                          FieldName = 'Ot'
                          Footers = <>
                          Title.Caption = #1054#1090
                          Width = 61
                        end
                        item
                          EditButtons = <>
                          FieldName = 'S'
                          Footers = <>
                          Title.Caption = #1057
                          Width = 63
                        end
                        item
                          EditButtons = <>
                          FieldName = 'Po'
                          Footers = <>
                          Title.Caption = #1055#1086
                          Width = 68
                        end
                        item
                          EditButtons = <>
                          FieldName = 'Prichina'
                          Footers = <>
                          Title.Alignment = taCenter
                          Title.Caption = #1055#1088#1080#1095#1080#1085#1072
                          Width = 232
                        end>
                      object RowDetailData: TRowDetailPanelControlEh
                      end
                    end
                    object Panel18: TPanel
                      Left = 0
                      Top = 532
                      Width = 790
                      Height = 56
                      Align = alBottom
                      Color = clSkyBlue
                      ParentBackground = False
                      TabOrder = 2
                      object Button21: TButton
                        Left = 7
                        Top = 16
                        Width = 247
                        Height = 33
                        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1087#1088#1080#1082#1072#1079
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = [fsBold]
                        ParentFont = False
                        TabOrder = 0
                        OnClick = Button21Click
                      end
                    end
                  end
                end
              end
              object TabSheet5: TTabSheet
                Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1048#1043#1040
                ImageIndex = 3
                object panel1iga: TPanel
                  Left = 0
                  Top = 0
                  Width = 798
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
                      E6040000424DE604000000000000360000002800000014000000140000000100
                      180000000000B004000000000000000000000000000000000000C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      571ED96D21D96E16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05715CD63
                      17CD6316B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570DCB5C0DC95C16
                      B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570CCA5B0CC85B16B057C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C016B05715B85A16AF5715AD5517B85B1AC6621AC66219C05F16B05716B057
                      16B05716B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      573FEA8744E18642E18543D98340CD7C40CD7C42D17F43DF8542E08545E4892D
                      D675C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B057
                      16B05716B05734AB6765DB986BDD9C4CC78016B05716B05716B05716B057C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C016B05774E5A583E9AF16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      5779E7A88BEAB516B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0577DF2AE
                      91F5BC16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B05716B05716
                      B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0}
                    Visible = False
                    OnClick = SpeedButton4Click
                  end
                  object SpeedButton5: TSpeedButton
                    Left = 295
                    Top = 73
                    Width = 23
                    Height = 23
                    Flat = True
                    Glyph.Data = {
                      E6040000424DE604000000000000360000002800000014000000140000000100
                      180000000000B004000000000000000000000000000000000000C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      571ED96D21D96E16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05715CD63
                      17CD6316B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570DCB5C0DC95C16
                      B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570CCA5B0CC85B16B057C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C016B05715B85A16AF5715AD5517B85B1AC6621AC66219C05F16B05716B057
                      16B05716B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      573FEA8744E18642E18543D98340CD7C40CD7C42D17F43DF8542E08545E4892D
                      D675C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B057
                      16B05716B05734AB6765DB986BDD9C4CC78016B05716B05716B05716B057C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C016B05774E5A583E9AF16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      5779E7A88BEAB516B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0577DF2AE
                      91F5BC16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B05716B05716
                      B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0}
                    OnClick = SpeedButton5Click
                  end
                  object SpeedButton6: TSpeedButton
                    Left = 295
                    Top = 102
                    Width = 23
                    Height = 26
                    Flat = True
                    Glyph.Data = {
                      E6040000424DE604000000000000360000002800000014000000140000000100
                      180000000000B004000000000000000000000000000000000000C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      571ED96D21D96E16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05715CD63
                      17CD6316B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570DCB5C0DC95C16
                      B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570CCA5B0CC85B16B057C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C016B05715B85A16AF5715AD5517B85B1AC6621AC66219C05F16B05716B057
                      16B05716B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      573FEA8744E18642E18543D98340CD7C40CD7C42D17F43DF8542E08545E4892D
                      D675C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B057
                      16B05716B05734AB6765DB986BDD9C4CC78016B05716B05716B05716B057C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C016B05774E5A583E9AF16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      5779E7A88BEAB516B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0577DF2AE
                      91F5BC16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B05716B05716
                      B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0}
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
                    DataField = 'igaExam2Result'
                    DataSource = DM.DSStudentData
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
                    DataField = 'igaExam3Result'
                    DataSource = DM.DSStudentData
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
                  Width = 798
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
                    DataField = 'igaSpeciality'
                    DataSource = DM.DSStudentData
                    EditButtons = <>
                    KeyField = 'id'
                    ListField = 'name'
                    ListSource = fDMfromUplan.DSQualifications
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
                  Width = 798
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
                      E6040000424DE604000000000000360000002800000014000000140000000100
                      180000000000B004000000000000000000000000000000000000C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      571ED96D21D96E16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05715CD63
                      17CD6316B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570DCB5C0DC95C16
                      B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570CCA5B0CC85B16B057C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C016B05715B85A16AF5715AD5517B85B1AC6621AC66219C05F16B05716B057
                      16B05716B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      573FEA8744E18642E18543D98340CD7C40CD7C42D17F43DF8542E08545E4892D
                      D675C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B057
                      16B05716B05734AB6765DB986BDD9C4CC78016B05716B05716B05716B057C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C016B05774E5A583E9AF16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      5779E7A88BEAB516B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0577DF2AE
                      91F5BC16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B05716B05716
                      B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0}
                    OnClick = SpeedButton8Click
                  end
                  object SpeedButton9: TSpeedButton
                    Left = 295
                    Top = 102
                    Width = 23
                    Height = 22
                    Flat = True
                    Glyph.Data = {
                      E6040000424DE604000000000000360000002800000014000000140000000100
                      180000000000B004000000000000000000000000000000000000C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      571ED96D21D96E16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05715CD63
                      17CD6316B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570DCB5C0DC95C16
                      B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570CCA5B0CC85B16B057C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C016B05715B85A16AF5715AD5517B85B1AC6621AC66219C05F16B05716B057
                      16B05716B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      573FEA8744E18642E18543D98340CD7C40CD7C42D17F43DF8542E08545E4892D
                      D675C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B057
                      16B05716B05734AB6765DB986BDD9C4CC78016B05716B05716B05716B057C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C016B05774E5A583E9AF16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      5779E7A88BEAB516B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0577DF2AE
                      91F5BC16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B05716B05716
                      B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0}
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
                      E6040000424DE604000000000000360000002800000014000000140000000100
                      180000000000B004000000000000000000000000000000000000C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      571ED96D21D96E16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05715CD63
                      17CD6316B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570DCB5C0DC95C16
                      B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0570CCA5B0CC85B16B057C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C016B05715B85A16AF5715AD5517B85B1AC6621AC66219C05F16B05716B057
                      16B05716B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      573FEA8744E18642E18543D98340CD7C40CD7C42D17F43DF8542E08545E4892D
                      D675C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B057
                      16B05716B05734AB6765DB986BDD9C4CC78016B05716B05716B05716B057C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C016B05774E5A583E9AF16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0
                      5779E7A88BEAB516B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B0577DF2AE
                      91F5BC16B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C016B05716B05716B05716
                      B057C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                      C0C0C0C0C0C0C0C0C0C0}
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
                    DataField = 'igaDefence1Result'
                    DataSource = DM.DSStudentData
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
                    DataField = 'igaDefence2Result'
                    DataSource = DM.DSStudentData
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
                    DataField = 'igaDefence3Result'
                    DataSource = DM.DSStudentData
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
          Width = 814
          Height = 675
          ActivePage = TabSheet6
          Align = alClient
          Images = sAlphaImageList2
          MultiLine = True
          TabOrder = 0
          object TabSheet2: TTabSheet
            Caption = #1055#1086' '#1089#1090#1091#1076#1077#1085#1090#1091
            object SpeedButton75: TSpeedButton
              Left = 3
              Top = 140
              Width = 252
              Height = 29
              OnClick = SpeedButton75Click
            end
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
              Left = 295
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
              Width = 252
              Height = 25
              Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1088#1077#1076#1084#1077#1090#1072#1084
              TabOrder = 3
              OnClick = Button10Click
            end
            object Button27: TButton
              Left = 3
              Top = 109
              Width = 252
              Height = 25
              Caption = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077' '
              TabOrder = 4
              OnClick = Button27Click
            end
            object Panel23: TPanel
              Left = 295
              Top = 20
              Width = 404
              Height = 241
              BorderStyle = bsSingle
              TabOrder = 5
              Visible = False
              object SpeedButton45: TSpeedButton
                Left = 264
                Top = 176
                Width = 106
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
                OnClick = SpeedButton45Click
              end
              object Label94: TLabel
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
              object SpeedButton46: TSpeedButton
                Left = 288
                Top = 204
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
                OnClick = SpeedButton46Click
              end
              object Label112: TLabel
                Left = 16
                Top = 62
                Width = 107
                Height = 13
                Caption = #1042#1099#1076#1072#1085#1072' '#1089#1090#1091#1076#1077#1085#1090#1091
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label127: TLabel
                Left = 248
                Top = 130
                Width = 131
                Height = 13
                Caption = #1044#1072#1090#1072' '#1080#1089#1090#1077#1095#1077#1085#1080#1103' '#1089#1088#1086#1082#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ComboBox14: TComboBox
                Left = 8
                Top = 28
                Width = 145
                Height = 21
                TabOrder = 0
                OnCloseUp = ComboBox14CloseUp
              end
              object RadioGroup7: TRadioGroup
                Left = 159
                Top = 9
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
                OnClick = RadioGroup7Click
              end
              object Edit8: TEdit
                Left = 16
                Top = 81
                Width = 377
                Height = 21
                Ctl3D = True
                ParentCtl3D = False
                TabOrder = 2
              end
              object RadioGroup9: TRadioGroup
                Left = 24
                Top = 108
                Width = 209
                Height = 65
                ItemIndex = 0
                Items.Strings = (
                  #1042#1099#1076#1072#1090#1100' '#1085#1072' '#1088#1091#1082#1080
                  #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1087#1086' '#1087#1086#1095#1090#1077)
                TabOrder = 3
              end
              object DateTimePicker4: TDateTimePicker
                Left = 249
                Top = 149
                Width = 145
                Height = 21
                Date = 41561.664030254630000000
                Time = 41561.664030254630000000
                TabOrder = 4
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = #1055#1086' '#1075#1088#1091#1087#1087#1077
            ImageIndex = 1
            object Panel5: TPanel
              Left = 263
              Top = 15
              Width = 252
              Height = 55
              BorderStyle = bsSingle
              TabOrder = 0
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
            object Panel6: TPanel
              Left = 260
              Top = 13
              Width = 337
              Height = 87
              BorderStyle = bsSingle
              TabOrder = 1
              Visible = False
              object SpeedButton11: TSpeedButton
                Left = 144
                Top = 54
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
            object Panel13: TPanel
              Left = 284
              Top = 24
              Width = 253
              Height = 46
              BorderStyle = bsSingle
              TabOrder = 3
              Visible = False
              object Label69: TLabel
                Left = 16
                Top = 20
                Width = 7
                Height = 13
                Caption = 'C'
              end
              object Label70: TLabel
                Left = 82
                Top = 20
                Width = 12
                Height = 13
                Caption = #1087#1086
              end
              object Label71: TLabel
                Left = 153
                Top = 20
                Width = 33
                Height = 13
                Caption = #1089#1077#1089#1089#1080#1081
              end
              object SpeedButton23: TSpeedButton
                Left = 192
                Top = 10
                Width = 23
                Height = 22
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
                OnClick = SpeedButton23Click
              end
              object SpeedButton24: TSpeedButton
                Left = 219
                Top = 10
                Width = 23
                Height = 22
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
                OnClick = SpeedButton24Click
              end
              object RzSpinEdit2: TRzSpinEdit
                Left = 29
                Top = 10
                Width = 47
                Height = 21
                Max = 14.000000000000000000
                Min = 1.000000000000000000
                Value = 1.000000000000000000
                TabOrder = 0
              end
              object RzSpinEdit3: TRzSpinEdit
                Left = 100
                Top = 10
                Width = 47
                Height = 21
                Max = 14.000000000000000000
                Min = 1.000000000000000000
                Value = 10.000000000000000000
                TabOrder = 1
              end
            end
            object Panel10: TPanel
              Left = 260
              Top = 14
              Width = 337
              Height = 86
              BorderStyle = bsSingle
              TabOrder = 2
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
                Top = 9
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
            object Panel22: TPanel
              Left = 260
              Top = 8
              Width = 337
              Height = 86
              BorderStyle = bsSingle
              TabOrder = 4
              Visible = False
              object SpeedButton41: TSpeedButton
                Left = 136
                Top = 56
                Width = 106
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
                OnClick = SpeedButton41Click
              end
              object Label93: TLabel
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
              object SpeedButton42: TSpeedButton
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
              object ComboBox13: TComboBox
                Left = 8
                Top = 28
                Width = 145
                Height = 21
                TabOrder = 0
                OnCloseUp = ComboBox13CloseUp
              end
              object RadioGroup6: TRadioGroup
                Left = 159
                Top = 9
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
            object Panel24: TPanel
              Left = 260
              Top = 3
              Width = 337
              Height = 86
              BorderStyle = bsSingle
              TabOrder = 5
              Visible = False
              object SpeedButton47: TSpeedButton
                Left = 147
                Top = 56
                Width = 106
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
                OnClick = SpeedButton47Click
              end
              object Label107: TLabel
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
              object SpeedButton48: TSpeedButton
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
              object ComboBox15: TComboBox
                Left = 8
                Top = 28
                Width = 145
                Height = 21
                TabOrder = 0
                OnCloseUp = ComboBox15CloseUp
              end
              object RadioGroup8: TRadioGroup
                Left = 159
                Top = 9
                Width = 154
                Height = 41
                Caption = #1057#1077#1089#1089#1080#1103
                Columns = 2
                DragMode = dmAutomatic
                ItemIndex = 0
                Items.Strings = (
                  '1 '#1089#1077#1084#1077#1089#1090#1088
                  '2 '#1089#1077#1084#1077#1089#1090#1088)
                TabOrder = 1
              end
            end
            object Panel34: TPanel
              Left = 0
              Top = 0
              Width = 254
              Height = 646
              Align = alLeft
              TabOrder = 6
              object SpeedButton63: TSpeedButton
                Left = 1
                Top = 301
                Width = 252
                Height = 30
                Align = alTop
                Caption = #1056#1072#1079#1085#1080#1094#1072' '#1059#1055' '#1080' '#1056#1059#1055
                OnClick = SpeedButton63Click
              end
              object Button7: TButton
                Left = 1
                Top = 151
                Width = 252
                Height = 30
                Align = alTop
                Caption = #1047#1072#1076#1086#1083#1078#1085#1080#1082#1080
                TabOrder = 0
                OnClick = Button7Click
              end
              object Button6: TButton
                Left = 1
                Top = 121
                Width = 252
                Height = 30
                Align = alTop
                Caption = #1046#1091#1088#1085#1072#1083' '#1091#1095#1077#1090#1072' '#1091#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1080
                TabOrder = 1
                OnClick = Button6Click
              end
              object Button4: TButton
                Left = 1
                Top = 91
                Width = 252
                Height = 30
                Align = alTop
                Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
                TabOrder = 2
                OnClick = Button4Click
              end
              object Button3: TButton
                Left = 1
                Top = 61
                Width = 252
                Height = 30
                Align = alTop
                Caption = #1059#1089#1083#1086#1074#1080#1077' '#1086#1073#1091#1095#1077#1085#1080#1077
                TabOrder = 3
                OnClick = Button3Click
              end
              object Button28: TButton
                Left = 1
                Top = 271
                Width = 252
                Height = 30
                Align = alTop
                Caption = #1043#1088#1072#1092#1080#1082' '#1089#1072#1084#1086#1089#1090#1086#1103#1090#1077#1083#1100#1085#1086#1081' '#1088#1072#1073#1086#1090#1099
                TabOrder = 4
                OnClick = Button28Click
              end
              object Button25: TButton
                Left = 1
                Top = 241
                Width = 252
                Height = 30
                Align = alTop
                Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1087#1086' '#1086#1087#1083#1072#1090#1077
                TabOrder = 5
                OnClick = Button25Click
              end
              object Button2: TButton
                Left = 1
                Top = 31
                Width = 252
                Height = 30
                Align = alTop
                Caption = #1054#1090#1076#1077#1083' '#1082#1072#1076#1088#1086#1074
                TabOrder = 6
                OnClick = Button2Click
              end
              object Button15: TButton
                Left = 1
                Top = 211
                Width = 252
                Height = 30
                Align = alTop
                Caption = #1057#1090#1080#1087#1077#1085#1076#1080#1103'('#1082#1086#1084#1084#1080#1089#1080#1103')'
                TabOrder = 7
                OnClick = Button15Click
              end
              object Button14: TButton
                Left = 1
                Top = 181
                Width = 252
                Height = 30
                Align = alTop
                Caption = #1056#1077#1081#1090#1080#1085#1075' '#1085#1072' '#1073#1102#1076#1078#1077#1090#1085#1086#1077' '#1084#1077#1089#1090#1086
                TabOrder = 8
                OnClick = Button14Click
              end
              object Button1: TButton
                Left = 1
                Top = 1
                Width = 252
                Height = 30
                Align = alTop
                Caption = #1042' '#1087#1086#1083#1080#1082#1083#1080#1085#1085#1080#1082#1091
                TabOrder = 9
                OnClick = Button1Click
              end
            end
          end
          object TabSheet6: TTabSheet
            Caption = #1055#1086' '#1092#1072#1082#1091#1083#1100#1090#1077#1090#1091
            ImageIndex = 2
            object Panel11: TPanel
              Left = 271
              Top = 19
              Width = 355
              Height = 172
              BorderStyle = bsSingle
              TabOrder = 0
              Visible = False
              object SpeedButton17: TSpeedButton
                Left = 161
                Top = 135
                Width = 105
                Height = 22
                Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
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
                Left = 272
                Top = 135
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
                Top = 48
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
              object Label68: TLabel
                Left = 12
                Top = 2
                Width = 49
                Height = 13
                Caption = #1055#1072#1088#1072#1084#1077#1090#1088
                Color = clGradientActiveCaption
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label121: TLabel
                Left = 191
                Top = 72
                Width = 43
                Height = 13
                Caption = #1053#1072#1095#1072#1083#1086
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label138: TLabel
                Left = 191
                Top = 116
                Width = 36
                Height = 13
                Caption = #1050#1086#1085#1077#1094
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ComboBox3: TComboBox
                Left = 8
                Top = 67
                Width = 153
                Height = 21
                TabOrder = 0
                OnCloseUp = ComboBox3CloseUp
              end
              object RadioGroup3: TRadioGroup
                Left = 7
                Top = 94
                Width = 148
                Height = 49
                Caption = #1057#1077#1089#1089#1080#1103
                Columns = 2
                Items.Strings = (
                  #1079#1080#1084#1085#1103#1103
                  #1083#1077#1090#1085#1103#1103)
                TabOrder = 1
                OnClick = RadioGroup3Click
              end
              object ComboBox5: TComboBox
                Left = 8
                Top = 21
                Width = 337
                Height = 21
                TabOrder = 2
                Items.Strings = (
                  '1.'#1056#1077#1079'-'#1090#1099' '#1089#1077#1089#1089#1080#1080
                  '2.'#1056#1077#1079'-'#1090#1099' '#1089#1077#1089#1089#1080#1080'('#1087#1086' '#1089#1087#1077#1094'./'#1085#1072#1087#1088#1072#1074'-'#1103#1084')'
                  '3. '#1054#1090#1083#1080#1095#1085#1080#1082#1080
                  '4. '#1056#1077#1079'-'#1090#1099' '#1089#1077#1089#1089#1080#1080'('#1082#1086#1084#1084#1077#1088#1094#1080#1103')'
                  '5.'#1047#1072#1076#1086#1083#1078#1085#1080#1082#1080' '#1087#1086' '#1082#1072#1092#1077#1076#1088#1072#1084
                  '6. '#1056#1077#1079'-'#1090#1099' '#1089#1077#1089#1089#1080#1080'('#1073#1102#1076#1078#1077#1090')')
              end
              object DateTimePicker5: TDateTimePicker
                Left = 240
                Top = 68
                Width = 81
                Height = 21
                Date = 41681.387424143520000000
                Time = 41681.387424143520000000
                TabOrder = 3
              end
              object DateTimePicker6: TDateTimePicker
                Left = 240
                Top = 108
                Width = 81
                Height = 21
                Date = 41681.387424143520000000
                Time = 41681.387424143520000000
                TabOrder = 4
              end
            end
            object Panel12: TPanel
              Left = 280
              Top = 22
              Width = 234
              Height = 94
              BorderStyle = bsSingle
              Caption = 'Panel12'
              ShowCaption = False
              TabOrder = 1
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
                ItemIndex = 0
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
            object Panel14: TPanel
              Left = 280
              Top = 15
              Width = 356
              Height = 146
              BorderStyle = bsSingle
              TabOrder = 2
              Visible = False
              object SpeedButton27: TSpeedButton
                Left = 176
                Top = 107
                Width = 105
                Height = 22
                Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B004000000000000000000000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C000800B00800BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C000800B3DDC4A57F06400800BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000800B
                  21BE2F47C14E5FE16680F58A00800BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000800B10A91E30B73976
                  F7827CFA8757DE5E61ED6C00800BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000800B02970F26AB3055EF6360FD7066FE
                  7461F96E3CD9453CDC4900800BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C000800B00800B1CA42642DD505BEF6A7CF18772F27E56F666
                  53F16133D23D28C73500800BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C000800B12741B1C962634CE4265E17188E79190EC9988EC9169E8754AEA5A4A
                  E8592BBC3512AB2000800BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C000800B308A38
                  42A24B39BF457ADA8396E19D92E39A6BD27479D98184E68E62E06E3EDE4D3FDA
                  4D20A129018E0E00800BC0C0C0C0C0C0C0C0C0C0C0C00079034EA35576CB7E95
                  DA9CA0DEA69CDEA368CE7215B8243DC84969D5747DDD865AD56531D24033CD41
                  188B2100690800800BC0C0C0C0C0C0C0C0C000800B2C9C368CD294B7DCBBAED9
                  B26DC9760CB01B00800B00800B18BB275CCD6779D68251CB5C22C53125BF3314
                  791C00800B00800BC0C0C0C0C0C0C0C0C000800B07A11178CD808ED09408AC16
                  00800BC0C0C0C0C0C000800B11B52057C46173CD7B46C15112B62116B3251072
                  1800800B00800BC0C0C0C0C0C0C0C0C000800B12AE2018B52400800BC0C0C0C0
                  C0C0C0C0C0C0C0C000800B0AA71654B85D71C3783FB44A04A41308A314197823
                  00800B00800BC0C0C0C0C0C0C0C0C000800B00800BC0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C000800B0AA21759B26174B47A3FA14801890A0B931741864700
                  800BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C000800B0BA7185BAE6377AD7C3F93480C7915116F1900800BC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C000800B0BA81860AE6786B48A36923E00800BC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C000800B0FA71D51B4591F8028C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C000800B00800B00800BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0}
                ParentFont = False
                OnClick = SpeedButton27Click
              end
              object SpeedButton28: TSpeedButton
                Left = 279
                Top = 111
                Width = 73
                Height = 22
                Caption = #1054#1090#1084#1077#1085#1072
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBackground
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B004000000000000000000000000000000000000C0C0C0C0C0C0
                  C0C0C00506AA3A3BF40506AAC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C00506AA3B3FF500008BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00506AA00
                  00D3BAB8FF0506E80506AAC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00506AA0000DF
                  5153F70404D90506AAC0C0C0C0C0C0C0C0C0C0C0C00506AA0203C2191BEC0403
                  EA2324FE0808DB0506AAC0C0C0C0C0C0C0C0C00506AA0101DA3031F60000F11D
                  1AF0090ACA000082C0C0C0C0C0C00506AA0102BE1717D40302D10000DB0000EA
                  2224FA0A0BDD0506AAC0C0C00506AA0203DD2324EF0505F30000DB0000D01918
                  D90506BA0506AAC0C0C0241EB7C9C2FF0000B60000C20000CF0000D70000DC20
                  21FE0505CD0506AA0000CA2629F70000E60000D60000D00000C50000B44139ED
                  4C47CEC0C0C0C0C0C00506AA1515D20101B60000BD0000C80000CD0101D21315
                  FA4C4EE8191DF70505DB0000CB0000C90000BF0000B31514D40A0A9BC0C0C0C0
                  C0C0C0C0C0C0C0C00506AA1917D70000B20000B70000BF0000C20000C2433EFE
                  0000D30000BF0000BF0000B80000B11917D9090999C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C00506AA1E1BCF0000A50000AA0000B00000B20000B20000B200
                  00B20000AD0000A21A19D4040491C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C00506AA1816CB0000A400009600009E00009F00009F0000990000
                  981615CD0A0A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C024219F9E96FF0000A00000A00000A10000A00000971C19DF4C45B6
                  0506AAC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00506
                  AA1E1CC90808BA0000A80000AB0000AB0000AC0000AA0000B10A09C60506AA05
                  06AAC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00506AA1A18A10000BF
                  0000AD0000B00000AF0000AF0000AF0000B00000AE0000B30F0BC40506AA0506
                  AAC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00506AA3831B20000EC0000CF0000D000
                  00D00000D1524BFD0000D30000CF0000D10000D00000DB1414E20506AA0506AA
                  C0C0C0C0C0C0C0C0C00506AA2F2A761D19FC1614DA1B17DD1A16DC1B17E22423
                  EC8F8CE11E1BE3201BE81A16DC1A17DD1A17DC1512EC2A25BA0506AA0506AAC0
                  C0C00506AAEFDEF45B50FC3F36E84239E74239E7433AEC6158F90304AFC0C0C0
                  0000994F47E5483DEF4339E74339E74239E84137F87365F60506AA0506AAC0C0
                  C00506AA5A54B57569FD665CF16E63F67F79F10406AAC0C0C0C0C0C0C0C0C001
                  0288645DE3776CF8685EF06C61F97A70E30506AA0506AAC0C0C0C0C0C0C0C0C0
                  0506AA8980DCAFA4FFA8A2F70506AAC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00202
                  9C8E86ECA89CFFA69CF30506AA0506AAC0C0C0C0C0C0C0C0C0C0C0C0C0C0C005
                  06AAFEF8FF0304B9C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000095
                  B7B2FA0506AA0506AAC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00506
                  AAC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00506AA05
                  06AAC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0}
                ParentFont = False
                OnClick = SpeedButton28Click
              end
              object Label72: TLabel
                Left = 9
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
              object Label141: TLabel
                Left = 183
                Top = 32
                Width = 43
                Height = 13
                Caption = #1053#1072#1095#1072#1083#1086
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label142: TLabel
                Left = 183
                Top = 68
                Width = 36
                Height = 13
                Caption = #1050#1086#1085#1077#1094
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ComboBox6: TComboBox
                Left = 9
                Top = 28
                Width = 145
                Height = 21
                TabOrder = 0
                OnCloseUp = ComboBox6CloseUp
              end
              object RadioGroup4: TRadioGroup
                Left = 7
                Top = 67
                Width = 152
                Height = 50
                Caption = #1057#1077#1089#1089#1080#1103
                Columns = 2
                Items.Strings = (
                  #1079#1080#1084#1085#1103#1103
                  #1083#1077#1090#1085#1103#1103)
                TabOrder = 1
                OnClick = RadioGroup4Click
              end
              object DateTimePicker9: TDateTimePicker
                Left = 240
                Top = 28
                Width = 81
                Height = 21
                Date = 41681.387424143520000000
                Time = 41681.387424143520000000
                TabOrder = 2
              end
              object DateTimePicker10: TDateTimePicker
                Left = 240
                Top = 68
                Width = 81
                Height = 21
                Date = 41681.387424143520000000
                Time = 41681.387424143520000000
                TabOrder = 3
              end
            end
            object Panel15: TPanel
              Left = 271
              Top = 17
              Width = 249
              Height = 68
              BorderStyle = bsSingle
              TabOrder = 3
              Visible = False
              object SpeedButton29: TSpeedButton
                Left = 175
                Top = 4
                Width = 57
                Height = 22
                Caption = #1054#1050
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B0040000C40E0000C40E00000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000143C18153C18000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000014531B3DDC4A57F06433623700000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000C4C13
                  21BE2F47C14E5FE16680F58A3A613E0000000000000000000000000000000000
                  0000000000000000000000000000000000000000000003420910A91E30B73976
                  F7827CFA8757DE5E61ED6C205B26000000000000000000000000000000000000
                  00000000000000000000000000000000370402970F26AB3055EF6360FD7066FE
                  7461F96E3CD9453CDC4916511C00000000000000000000000000000000000000
                  0000000000000000002A0200800B1CA42642DD505BEF6A7CF18772F27E56F666
                  53F16133D23D28C7350D48130000000000000000000000000000000000000000
                  0000290212741B1C962634CE4265E17188E79190EC9988EC9169E8754AEA5A4A
                  E8592BBC3512AB20034009000000000000000000000000000000002D00308A38
                  42A24B39BF457ADA8396E19D92E39A6BD27479D98184E68E62E06E3EDE4D3FDA
                  4D20A129018E0E0032050000000000000000000000000079034EA35576CB7E95
                  DA9CA0DEA69CDEA368CE7215B8243DC84969D5747DDD865AD56531D24033CD41
                  188B210069080021030000000000000000000036002C9C368CD294B7DCBBAED9
                  B26DC9760CB01B035A0B075F0F18BB275CCD6779D68251CB5C22C53125BF3314
                  791C004C07001A0200000000000000000000390307A11178CD808ED09408AC16
                  005705000000000000045F0C11B52057C46173CD7B46C15112B62116B3251072
                  1801450800180000000000000000000000400212AE2018B52400570600000000
                  0000000000000000005A070AA71654B85D71C3783FB44A04A41308A314197823
                  1F5C25011803000000000000000000013205003C060000000000000000000000
                  000000000000000053030AA21759B26174B47A3FA14801890A0B931741864706
                  420B000000000000000000000000000000000000000000000000000000000000
                  0000000000000054040BA7185BAE6377AD7C3F93480C7915116F19013E070000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000057030BA81860AE6786B48A36923E005402001101000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000057030FA71D51B4591F802800150000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000004B04006904001B020000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                ParentFont = False
                OnClick = SpeedButton29Click
              end
              object SpeedButton30: TSpeedButton
                Left = 175
                Top = 31
                Width = 66
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
                OnClick = SpeedButton30Click
              end
              object Label73: TLabel
                Left = 9
                Top = 31
                Width = 92
                Height = 26
                Caption = #1050#1086#1083'-'#1074#1086' '#1087#1086#1089#1083#1077#1076#1085#1080#1093#13'       '#1089#1077#1089#1089#1080#1081
              end
              object CheckBox2: TCheckBox
                Left = 12
                Top = 63
                Width = 147
                Height = 17
                Caption = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1087#1077#1088#1074#1099#1081' '#1082#1091#1088#1089
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlight
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object ComboBox7: TComboBox
                Left = 107
                Top = 31
                Width = 57
                Height = 21
                ItemIndex = 1
                TabOrder = 1
                Text = '2'
                Items.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9')
              end
            end
            object Panel19: TPanel
              Left = 271
              Top = 18
              Width = 453
              Height = 173
              BorderStyle = bsSingle
              TabOrder = 4
              Visible = False
              object Label83: TLabel
                Left = 8
                Top = 21
                Width = 42
                Height = 13
                Caption = #1057#1090#1088#1072#1085#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label84: TLabel
                Left = 8
                Top = 48
                Width = 106
                Height = 13
                Caption = #1059#1089#1083#1086#1074#1080#1103' '#1086#1073#1091#1095#1077#1085#1080#1103
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label85: TLabel
                Left = 7
                Top = 70
                Width = 114
                Height = 13
                Caption = #1057#1087#1077#1094'./'#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object SpeedButton34: TSpeedButton
                Left = 208
                Top = 129
                Width = 122
                Height = 25
                Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B0040000C40E0000C40E00000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000143C18153C18000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000014531B3DDC4A57F06433623700000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000C4C13
                  21BE2F47C14E5FE16680F58A3A613E0000000000000000000000000000000000
                  0000000000000000000000000000000000000000000003420910A91E30B73976
                  F7827CFA8757DE5E61ED6C205B26000000000000000000000000000000000000
                  00000000000000000000000000000000370402970F26AB3055EF6360FD7066FE
                  7461F96E3CD9453CDC4916511C00000000000000000000000000000000000000
                  0000000000000000002A0200800B1CA42642DD505BEF6A7CF18772F27E56F666
                  53F16133D23D28C7350D48130000000000000000000000000000000000000000
                  0000290212741B1C962634CE4265E17188E79190EC9988EC9169E8754AEA5A4A
                  E8592BBC3512AB20034009000000000000000000000000000000002D00308A38
                  42A24B39BF457ADA8396E19D92E39A6BD27479D98184E68E62E06E3EDE4D3FDA
                  4D20A129018E0E0032050000000000000000000000000079034EA35576CB7E95
                  DA9CA0DEA69CDEA368CE7215B8243DC84969D5747DDD865AD56531D24033CD41
                  188B210069080021030000000000000000000036002C9C368CD294B7DCBBAED9
                  B26DC9760CB01B035A0B075F0F18BB275CCD6779D68251CB5C22C53125BF3314
                  791C004C07001A0200000000000000000000390307A11178CD808ED09408AC16
                  005705000000000000045F0C11B52057C46173CD7B46C15112B62116B3251072
                  1801450800180000000000000000000000400212AE2018B52400570600000000
                  0000000000000000005A070AA71654B85D71C3783FB44A04A41308A314197823
                  1F5C25011803000000000000000000013205003C060000000000000000000000
                  000000000000000053030AA21759B26174B47A3FA14801890A0B931741864706
                  420B000000000000000000000000000000000000000000000000000000000000
                  0000000000000054040BA7185BAE6377AD7C3F93480C7915116F19013E070000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000057030BA81860AE6786B48A36923E005402001101000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000057030FA71D51B4591F802800150000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000004B04006904001B020000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                ParentFont = False
                OnClick = SpeedButton34Click
              end
              object SpeedButton35: TSpeedButton
                Left = 336
                Top = 129
                Width = 97
                Height = 25
                Caption = #1054#1090#1084#1077#1085#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
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
                OnClick = SpeedButton35Click
              end
              object Label145: TLabel
                Left = 7
                Top = 97
                Width = 94
                Height = 13
                Caption = #1051#1080#1085#1080#1103' '#1087#1088#1080#1073#1099#1090#1080#1103
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBLookupComboboxEh11: TDBLookupComboboxEh
                Left = 128
                Top = 16
                Width = 313
                Height = 21
                EditButtons = <>
                KeyField = 'id'
                ListField = 'Name'
                ListSource = DM.DSCityRep
                ShowHint = True
                TabOrder = 0
                Visible = True
              end
              object DBLookupComboboxEh12: TDBLookupComboboxEh
                Left = 128
                Top = 43
                Width = 313
                Height = 21
                EditButtons = <>
                KeyField = 'id'
                ListField = 'condition'
                ListSource = DM.DSEducCon
                ShowHint = True
                TabOrder = 1
                Visible = True
              end
              object DBLookupComboboxEh13: TDBLookupComboboxEh
                Left = 127
                Top = 70
                Width = 313
                Height = 21
                EditButtons = <>
                KeyField = 'id'
                ListField = 'Speciality'
                ListSource = DM.DSSpec
                ShowHint = True
                TabOrder = 2
                Visible = True
              end
              object DBLookupComboboxEh19: TDBLookupComboboxEh
                Left = 127
                Top = 97
                Width = 314
                Height = 21
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                KeyField = 'id'
                ListField = 'type'
                ListSource = DM.DSLineCom
                ParentFont = False
                ShowHint = True
                TabOrder = 3
                Visible = True
              end
            end
            object Panel28: TPanel
              Left = 271
              Top = 27
              Width = 455
              Height = 83
              BorderStyle = bsSingle
              TabOrder = 5
              Visible = False
              object Label113: TLabel
                Left = 16
                Top = 8
                Width = 76
                Height = 13
                Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label115: TLabel
                Left = 200
                Top = 8
                Width = 41
                Height = 13
                Caption = #1043#1088#1091#1087#1087#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object SpeedButton52: TSpeedButton
                Left = 216
                Top = 38
                Width = 122
                Height = 25
                Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B0040000C40E0000C40E00000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000143C18153C18000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000014531B3DDC4A57F06433623700000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000C4C13
                  21BE2F47C14E5FE16680F58A3A613E0000000000000000000000000000000000
                  0000000000000000000000000000000000000000000003420910A91E30B73976
                  F7827CFA8757DE5E61ED6C205B26000000000000000000000000000000000000
                  00000000000000000000000000000000370402970F26AB3055EF6360FD7066FE
                  7461F96E3CD9453CDC4916511C00000000000000000000000000000000000000
                  0000000000000000002A0200800B1CA42642DD505BEF6A7CF18772F27E56F666
                  53F16133D23D28C7350D48130000000000000000000000000000000000000000
                  0000290212741B1C962634CE4265E17188E79190EC9988EC9169E8754AEA5A4A
                  E8592BBC3512AB20034009000000000000000000000000000000002D00308A38
                  42A24B39BF457ADA8396E19D92E39A6BD27479D98184E68E62E06E3EDE4D3FDA
                  4D20A129018E0E0032050000000000000000000000000079034EA35576CB7E95
                  DA9CA0DEA69CDEA368CE7215B8243DC84969D5747DDD865AD56531D24033CD41
                  188B210069080021030000000000000000000036002C9C368CD294B7DCBBAED9
                  B26DC9760CB01B035A0B075F0F18BB275CCD6779D68251CB5C22C53125BF3314
                  791C004C07001A0200000000000000000000390307A11178CD808ED09408AC16
                  005705000000000000045F0C11B52057C46173CD7B46C15112B62116B3251072
                  1801450800180000000000000000000000400212AE2018B52400570600000000
                  0000000000000000005A070AA71654B85D71C3783FB44A04A41308A314197823
                  1F5C25011803000000000000000000013205003C060000000000000000000000
                  000000000000000053030AA21759B26174B47A3FA14801890A0B931741864706
                  420B000000000000000000000000000000000000000000000000000000000000
                  0000000000000054040BA7185BAE6377AD7C3F93480C7915116F19013E070000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000057030BA81860AE6786B48A36923E005402001101000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000057030FA71D51B4591F802800150000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000004B04006904001B020000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                ParentFont = False
                OnClick = SpeedButton52Click
              end
              object SpeedButton55: TSpeedButton
                Left = 344
                Top = 38
                Width = 97
                Height = 25
                Caption = #1054#1090#1084#1077#1085#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
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
                OnClick = SpeedButton35Click
              end
              object ComboBox17: TComboBox
                Left = 98
                Top = 8
                Width = 87
                Height = 21
                TabOrder = 0
                OnCloseUp = ComboBox17CloseUp
              end
              object DBLookupComboboxEh17: TDBLookupComboboxEh
                Left = 247
                Top = 11
                Width = 145
                Height = 21
                EditButtons = <>
                KeyField = 'id'
                ListField = 'GroupName'
                ListSource = DM.DSGroupExpiri
                ShowHint = True
                TabOrder = 1
                Visible = True
              end
            end
            object Panel35: TPanel
              Left = 0
              Top = 0
              Width = 237
              Height = 646
              Align = alLeft
              TabOrder = 6
              OnClick = Panel35Click
              ExplicitLeft = -3
              object Button16: TButton
                Left = 1
                Top = 61
                Width = 235
                Height = 30
                Align = alTop
                Caption = #1047#1072#1076#1086#1083#1078#1085#1080#1082#1080
                TabOrder = 0
                OnClick = Button16Click
              end
              object Button8: TButton
                Left = 1
                Top = 1
                Width = 235
                Height = 30
                Align = alTop
                Caption = #1048#1090#1086#1075#1080' '#1089#1077#1089#1089#1080#1080
                TabOrder = 1
                OnClick = Button8Click
              end
              object Button30: TButton
                Left = 1
                Top = 241
                Width = 235
                Height = 30
                Align = alTop
                Caption = #1058#1088#1091#1076#1086#1091#1089#1090#1088#1086#1081#1089#1090#1074#1086
                TabOrder = 2
                OnClick = Button30Click
              end
              object Button24: TButton
                Left = 1
                Top = 211
                Width = 235
                Height = 30
                Align = alTop
                Caption = #1041#1102#1076#1078#1077#1090#1085#1080#1082#1080
                TabOrder = 3
                OnClick = Button24Click
              end
              object Button23: TButton
                Left = 1
                Top = 181
                Width = 235
                Height = 30
                Align = alTop
                Caption = #1055#1088#1086#1087#1080#1089#1082#1072
                TabOrder = 4
                OnClick = Button23Click
              end
              object Button22: TButton
                Left = 1
                Top = 151
                Width = 235
                Height = 30
                Align = alTop
                Caption = #1048#1085#1086#1089#1090#1088#1072#1085#1094#1099
                TabOrder = 5
                OnClick = Button22Click
              end
              object Button19: TButton
                Left = 1
                Top = 121
                Width = 235
                Height = 30
                Align = alTop
                Caption = #1056#1077#1081#1090#1080#1085#1075' '#1085#1072' '#1076#1086#1087'.'#1089#1090#1080#1087#1077#1085#1076#1080#1102
                TabOrder = 6
                OnClick = Button19Click
              end
              object Button18: TButton
                Left = 1
                Top = 91
                Width = 235
                Height = 30
                Align = alTop
                Caption = #1050#1086#1085#1090#1080#1085#1075#1077#1085#1090
                TabOrder = 7
                OnClick = Button18Click
              end
              object Button12: TButton
                Left = 1
                Top = 31
                Width = 235
                Height = 30
                Align = alTop
                Caption = '3'#1053#1050
                TabOrder = 8
                OnClick = Button12Click
              end
              object Button20: TButton
                Left = 1
                Top = 271
                Width = 235
                Height = 25
                Align = alTop
                Caption = #1057#1087#1080#1089#1086#1082' '#1080#1085#1086#1075#1086#1088#1086#1076#1085#1080#1093
                TabOrder = 9
                OnClick = Button20Click
                ExplicitLeft = -3
                ExplicitTop = 277
              end
            end
          end
          object TabSheet7: TTabSheet
            Caption = #1055#1086' '#1042#1059#1047#1091
            ImageIndex = 3
            object Button11: TButton
              Left = 384
              Top = 568
              Width = 202
              Height = 25
              Caption = #1053#1077#1089#1080#1085#1093#1088#1086#1085#1080#1079#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099
              TabOrder = 0
              Visible = False
              WordWrap = True
              OnClick = Button11Click
            end
            object Button13: TButton
              Left = 384
              Top = 630
              Width = 202
              Height = 25
              Caption = 'UpdateStudentExamination'
              TabOrder = 1
              Visible = False
              WordWrap = True
              OnClick = Button13Click
            end
            object GroupBox15: TGroupBox
              Left = 0
              Top = 41
              Width = 806
              Height = 74
              Align = alTop
              Caption = #1048#1090#1086#1075#1080#1080' '#1089#1077#1089#1089#1080#1080
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object SpeedButton31: TSpeedButton
                Left = 664
                Top = 24
                Width = 101
                Height = 33
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B0040000C40E0000C40E00000000000000000000000000000000
                  0000000000001918172928272626252626252626252626252626252626252626
                  2526262527262526252405050500000000000000000000000000000000000055
                  5352DBD9D6ECEAE8EAE8E5E9E7E5E9E8E5E9E8E5E8E6E4E7E5E3E7E5E3E7E5E3
                  E8E6E4EBE8E6A9A7A3131212000000000000000000000000030303C0BEBCFFFF
                  FFFEFEFEFDFDFDFFFFFFFDFDFDFCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF504F4E000000000000000000000000060606C6C4C3FFFFFFDFDEDE
                  CCCCCCD5D5D4D1D1D0CFCFCFE6E6E6EFEFEFF3F3F3EDECECF4F4F4FFFFFFFFFF
                  FF5C5A59000000000000000000000000060606C4C3C1FFFFFFDFDFDFCECECED3
                  D3D3D4D3D3D3D3D3D2D3D2D0D1D1D0D0D0CDCDCDEEEEEEFFFFFFFFFFFF5A5958
                  000000000000000000000000060606C5C3C2FFFFFFDEDEDECFCFCFD3D3D2D1D1
                  D1E4E4E4ECECECECECECE9E9E9EFEEEEFFFFFFFFFFFFFFFFFF5C5A5900000000
                  0000000000000000070606C6C5C3FFFFFFE1E1E1CDCDCDD1D1D1CFCFCFDCDCDC
                  E6E6E6E1E1E1E2E2E2E3E2E2DCDCDCF5F4F4FFFFFF5C5B5A0000000000000000
                  00000000070707C7C6C4FFFFFFDEDDDDCDCDCCD1D1D1D2D2D2D2D2D1C9C8C8CF
                  CFCECDCDCDCFCFCECBCBCAEAEAE9FFFFFF5D5C5B000000000000000000000000
                  070707C7C6C5FFFFFFDDDDDCCDCCCCD4D3D2D6D5D4D2D1D0D1D1D0D3D3D2D3D2
                  D2DADAD9F6F6F5FBFBFAFFFFFF5D5D5C000000000000000000000000070707C8
                  C7C6FFFFFFDDDCDBC9C9C8D5D4D3CBCAC9CAC9C8CBCBCACFCECDD4D3D2D0CFCE
                  E5E4E3FBFAF9FFFFFE5D5C5B000000000000000000000000080808C8C7C6FFFF
                  FFD9D9D8CAC9C8D2D1D0CCCBCACCCBCACBCAC9CFCDCCCBCAC9CBCAC9D3D2D2EF
                  EEEDFEFCFA5B5A59000000000000000000000000080808C9C7C6FFFFFED7D5D5
                  CCCBCACCCBCACBCBC9CFCECCCFCCCCCCCAC9CCCBCAC9C7C7CDCCCBECEAE8F3F0
                  EB565452000000000000000000000000080808C9C7C7FFFDFCD5D3D2C2C0BFC5
                  C3C2C4C3C2C4C3C1C8C7C6C5C4C2CECDCBC9C6C6C8C5C3DDD9D3D9D0C64C4742
                  000000000000000000000000080909C9C8C7FCFAF8DAD8D6CAC8C6CDCBC9CDCB
                  C9CBC9C8D2D0CFE6E4E3E3E0DDDCD7D3D9D4D0D7D0CAD0C6BB3A353000000000
                  0000000000000000090909C9C8C7FBF9F6ADACAA969593A4A2A09A98979A9896
                  989695BBB9B7E7E1DBEAE7E3ECE9E6FEFCFA9594940A0A0A0000000000000000
                  0000000009090ACAC8C8F8F5F2AEACAAB1AFACC6C3C1BBB9B6B8B6B3B6B4B1BD
                  B9B6E4DFDAE9E5E2F5F2EE949493030304000000000000000000000000000000
                  080809CFCECCF1EDEAEBE8E5EFEBE8EDE9E6EEEBE8EEEAE6ECE8E4DBD4CFDED8
                  D2FCF9F7949393030303000000000000000000000000000000000000010101A7
                  A7A6FFFFFFF6F3F0F6F3F0F6F3F0F5F2EFF1EDE9E8E2DDCEC3B9E2DBD2969797
                  0202030000000000000000000000000000000000000000000000001718188484
                  849E9D9D999999999998979695939190888582766F665B575103030300000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                ParentFont = False
                OnClick = SpeedButton31Click
              end
              object Label74: TLabel
                Left = 14
                Top = 18
                Width = 75
                Height = 13
                Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label75: TLabel
                Left = 173
                Top = 18
                Width = 77
                Height = 13
                Caption = #1059#1095#1077#1073#1085#1099#1081' '#1075#1086#1076
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label139: TLabel
                Left = 484
                Top = 16
                Width = 43
                Height = 13
                Caption = #1053#1072#1095#1072#1083#1086
              end
              object Label140: TLabel
                Left = 484
                Top = 47
                Width = 36
                Height = 13
                Caption = #1050#1086#1085#1077#1094
              end
              object ComboBox8: TComboBox
                Left = 22
                Top = 37
                Width = 145
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                Text = #1055#1086' '#1092#1072#1082#1091#1083#1100#1090#1077#1090#1072#1084
                OnChange = ComboBox8Change
                Items.Strings = (
                  #1055#1086' '#1092#1072#1082#1091#1083#1100#1090#1077#1090#1072#1084
                  #1055#1086' '#1089#1087#1077#1094'./'#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103#1084
                  #1055#1086' '#1082#1091#1088#1089#1072#1084'/'#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084
                  #1055#1086' '#1092#1072#1082#1091#1083#1100#1090#1077#1090#1072#1084'('#1041#1102#1076#1078#1077#1090')'
                  #1055#1086' '#1092#1072#1082#1091#1083#1100#1090#1077#1090#1072#1084'('#1050#1086#1084#1084#1077#1088#1094#1080#1103')')
              end
              object ComboBox9: TComboBox
                Left = 173
                Top = 37
                Width = 145
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                Text = 'ComboBox9'
              end
              object RadioGroup5: TRadioGroup
                Left = 324
                Top = 6
                Width = 154
                Height = 62
                Columns = 2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Items.Strings = (
                  #1047#1080#1084#1085#1103#1103
                  #1051#1077#1090#1085#1103#1103)
                ParentFont = False
                TabOrder = 2
                OnClick = RadioGroup5Click
              end
              object DateTimePicker7: TDateTimePicker
                Left = 533
                Top = 10
                Width = 81
                Height = 21
                Date = 41681.444351446760000000
                Time = 41681.444351446760000000
                TabOrder = 3
              end
              object DateTimePicker8: TDateTimePicker
                Left = 533
                Top = 45
                Width = 81
                Height = 21
                Date = 41681.444351446760000000
                Time = 41681.444351446760000000
                TabOrder = 4
              end
            end
            object GroupBox16: TGroupBox
              Left = 0
              Top = 115
              Width = 806
              Height = 79
              Align = alTop
              Caption = #1048#1085#1086#1089#1090#1088#1072#1085#1085#1099#1077' '#1075#1088#1072#1078#1076#1072#1085#1077
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              object Panel20: TPanel
                Left = 2
                Top = 15
                Width = 802
                Height = 62
                Align = alClient
                TabOrder = 0
                object Label86: TLabel
                  Left = 8
                  Top = 6
                  Width = 42
                  Height = 13
                  Caption = #1057#1090#1088#1072#1085#1072
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clActiveCaption
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label87: TLabel
                  Left = 120
                  Top = 6
                  Width = 106
                  Height = 13
                  Caption = #1059#1089#1083#1086#1074#1080#1103' '#1086#1073#1091#1095#1077#1085#1080#1103
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clActiveCaption
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label88: TLabel
                  Left = 232
                  Top = 6
                  Width = 114
                  Height = 13
                  Caption = #1057#1087#1077#1094'./'#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clActiveCaption
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object SpeedButton36: TSpeedButton
                  Left = 646
                  Top = 18
                  Width = 122
                  Height = 32
                  Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    E6040000424DE604000000000000360000002800000014000000140000000100
                    180000000000B0040000C40E0000C40E00000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000143C18153C18000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000014531B3DDC4A57F06433623700000000000000000000000000000000
                    00000000000000000000000000000000000000000000000000000000000C4C13
                    21BE2F47C14E5FE16680F58A3A613E0000000000000000000000000000000000
                    0000000000000000000000000000000000000000000003420910A91E30B73976
                    F7827CFA8757DE5E61ED6C205B26000000000000000000000000000000000000
                    00000000000000000000000000000000370402970F26AB3055EF6360FD7066FE
                    7461F96E3CD9453CDC4916511C00000000000000000000000000000000000000
                    0000000000000000002A0200800B1CA42642DD505BEF6A7CF18772F27E56F666
                    53F16133D23D28C7350D48130000000000000000000000000000000000000000
                    0000290212741B1C962634CE4265E17188E79190EC9988EC9169E8754AEA5A4A
                    E8592BBC3512AB20034009000000000000000000000000000000002D00308A38
                    42A24B39BF457ADA8396E19D92E39A6BD27479D98184E68E62E06E3EDE4D3FDA
                    4D20A129018E0E0032050000000000000000000000000079034EA35576CB7E95
                    DA9CA0DEA69CDEA368CE7215B8243DC84969D5747DDD865AD56531D24033CD41
                    188B210069080021030000000000000000000036002C9C368CD294B7DCBBAED9
                    B26DC9760CB01B035A0B075F0F18BB275CCD6779D68251CB5C22C53125BF3314
                    791C004C07001A0200000000000000000000390307A11178CD808ED09408AC16
                    005705000000000000045F0C11B52057C46173CD7B46C15112B62116B3251072
                    1801450800180000000000000000000000400212AE2018B52400570600000000
                    0000000000000000005A070AA71654B85D71C3783FB44A04A41308A314197823
                    1F5C25011803000000000000000000013205003C060000000000000000000000
                    000000000000000053030AA21759B26174B47A3FA14801890A0B931741864706
                    420B000000000000000000000000000000000000000000000000000000000000
                    0000000000000054040BA7185BAE6377AD7C3F93480C7915116F19013E070000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000057030BA81860AE6786B48A36923E005402001101000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000057030FA71D51B4591F802800150000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000004B04006904001B020000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000}
                  ParentFont = False
                  OnClick = SpeedButton36Click
                end
                object Label143: TLabel
                  Left = 455
                  Top = 6
                  Width = 94
                  Height = 13
                  Caption = #1051#1080#1085#1080#1103' '#1087#1088#1080#1073#1099#1090#1080#1103
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clActiveCaption
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label144: TLabel
                  Left = 583
                  Top = 6
                  Width = 27
                  Height = 13
                  Caption = #1050#1091#1088#1089
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clActiveCaption
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBLookupComboboxEh14: TDBLookupComboboxEh
                  Left = 8
                  Top = 25
                  Width = 106
                  Height = 21
                  EditButtons = <>
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  KeyField = 'id'
                  ListField = 'Name'
                  ListSource = DM.DSCityRep
                  ParentFont = False
                  ShowHint = True
                  TabOrder = 0
                  Visible = True
                end
                object DBLookupComboboxEh15: TDBLookupComboboxEh
                  Left = 120
                  Top = 25
                  Width = 106
                  Height = 21
                  EditButtons = <>
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  KeyField = 'id'
                  ListField = 'condition'
                  ListSource = DM.DSEducCon
                  ParentFont = False
                  ShowHint = True
                  TabOrder = 1
                  Visible = True
                end
                object DBLookupComboboxEh16: TDBLookupComboboxEh
                  Left = 232
                  Top = 25
                  Width = 217
                  Height = 21
                  EditButtons = <>
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  KeyField = 'id'
                  ListField = 'Speciality'
                  ListSource = DM.DSSpec
                  ParentFont = False
                  ShowHint = True
                  TabOrder = 2
                  Visible = True
                end
                object ComboBox19: TComboBox
                  Left = 583
                  Top = 24
                  Width = 57
                  Height = 21
                  ImeName = '11'
                  ItemIndex = 0
                  TabOrder = 3
                  Text = #1042#1089#1077
                  Items.Strings = (
                    #1042#1089#1077
                    '1'
                    '2'
                    '3'
                    '4'
                    '5'
                    '6')
                end
                object DBLookupComboboxEh18: TDBLookupComboboxEh
                  Left = 455
                  Top = 25
                  Width = 122
                  Height = 21
                  EditButtons = <>
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  KeyField = 'id'
                  ListField = 'type'
                  ListSource = DM.DSLineCom
                  ParentFont = False
                  ShowHint = True
                  TabOrder = 4
                  Visible = True
                end
              end
            end
            object GroupBox17: TGroupBox
              Left = 0
              Top = 194
              Width = 806
              Height = 98
              Align = alTop
              Caption = #1050#1086#1085#1090#1080#1085#1075#1077#1085#1090
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBtnText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              object SpeedButton37: TSpeedButton
                Left = 324
                Top = 12
                Width = 100
                Height = 30
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                Glyph.Data = {
                  36050000424D3605000000000000360400002800000010000000100000000100
                  08000000000000010000230B0000230B00000001000000010000183952000031
                  63006363630021526B00296B940000639C0063639C00639CCE0029ADD60073DE
                  F700FF00FF007BBDFF009CCEFF008CEFFF009CFFFF00FFFFFF00FFFFFF00FFFF
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
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0A0A0A0A03
                  0302020A0A0A0A0A0A0A0A0A0A030307050302020A0A0A0A0A0A0A0303040C07
                  05050302020A0A0A0A0A03070C0B05070505050302020A0A0A0A030701050107
                  050C05050302020A0A0A030701010C0C0B020C05050302020A0A03070C0C0B02
                  0909080C05050302020A030C0B0009090D0D08020C0505030202030101000D0D
                  0D0E0809080C050503020A0301000D0E0E08080D08060C05030A0A0A03000E08
                  080D0D0E0809080C030A0A0A0A03000D0D0E0E08080D0801030A0A0A0A0A030E
                  0E08080D0D0E08030A0A0A0A0A0A0A03000D0D0E0E08080A0A0A0A0A0A0A0A0A
                  030E0E08080A0A0A0A0A0A0A0A0A0A0A0A03030A0A0A0A0A0A0A}
                OnClick = SpeedButton37Click
              end
              object Label89: TLabel
                Left = 15
                Top = 20
                Width = 60
                Height = 13
                Caption = #1055#1086' '#1082#1091#1088#1089#1072#1084
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label90: TLabel
                Left = 194
                Top = 20
                Width = 124
                Height = 13
                Caption = #1055#1086' '#1089#1087#1077#1094'-'#1103#1084'('#1085#1072#1087#1088'-'#1103#1084')'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object SpeedButton38: TSpeedButton
                Left = 81
                Top = 12
                Width = 100
                Height = 30
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                Glyph.Data = {
                  36050000424D3605000000000000360400002800000010000000100000000100
                  08000000000000010000230B0000230B00000001000000010000183952000031
                  63006363630021526B00296B940000639C0063639C00639CCE0029ADD60073DE
                  F700FF00FF007BBDFF009CCEFF008CEFFF009CFFFF00FFFFFF00FFFFFF00FFFF
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
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0A0A0A0A03
                  0302020A0A0A0A0A0A0A0A0A0A030307050302020A0A0A0A0A0A0A0303040C07
                  05050302020A0A0A0A0A03070C0B05070505050302020A0A0A0A030701050107
                  050C05050302020A0A0A030701010C0C0B020C05050302020A0A03070C0C0B02
                  0909080C05050302020A030C0B0009090D0D08020C0505030202030101000D0D
                  0D0E0809080C050503020A0301000D0E0E08080D08060C05030A0A0A03000E08
                  080D0D0E0809080C030A0A0A0A03000D0D0E0E08080D0801030A0A0A0A0A030E
                  0E08080D0D0E08030A0A0A0A0A0A0A03000D0D0E0E08080A0A0A0A0A0A0A0A0A
                  030E0E08080A0A0A0A0A0A0A0A0A0A0A0A03030A0A0A0A0A0A0A}
                OnClick = SpeedButton38Click
              end
              object Label92: TLabel
                Left = 15
                Top = 57
                Width = 22
                Height = 13
                Caption = #1055#1086#1083
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object SpeedButton40: TSpeedButton
                Left = 81
                Top = 48
                Width = 100
                Height = 26
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                OnClick = SpeedButton40Click
              end
              object SpeedButton56: TSpeedButton
                Left = 324
                Top = 54
                Width = 100
                Height = 27
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                OnClick = SpeedButton56Click
              end
              object Label147: TLabel
                Left = 194
                Top = 60
                Width = 104
                Height = 13
                Caption = #1057#1086#1086#1090#1085#1086#1096#1077#1085#1080#1103' '#1055#1055#1057
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clActiveCaption
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object GroupBox18: TGroupBox
              Left = 0
              Top = 292
              Width = 806
              Height = 82
              Align = alTop
              Caption = #1056#1077#1081#1090#1080#1085#1075' '#1085#1072' '#1076#1086#1087'.'#1089#1090#1080#1087#1077#1085#1076#1080#1102
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              object Panel21: TPanel
                Left = 2
                Top = 15
                Width = 802
                Height = 68
                Align = alTop
                TabOrder = 0
                object SpeedButton39: TSpeedButton
                  Left = 170
                  Top = 23
                  Width = 121
                  Height = 29
                  Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHighlight
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    E6040000424DE604000000000000360000002800000014000000140000000100
                    180000000000B0040000C40E0000C40E00000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000143C18153C18000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000014531B3DDC4A57F06433623700000000000000000000000000000000
                    00000000000000000000000000000000000000000000000000000000000C4C13
                    21BE2F47C14E5FE16680F58A3A613E0000000000000000000000000000000000
                    0000000000000000000000000000000000000000000003420910A91E30B73976
                    F7827CFA8757DE5E61ED6C205B26000000000000000000000000000000000000
                    00000000000000000000000000000000370402970F26AB3055EF6360FD7066FE
                    7461F96E3CD9453CDC4916511C00000000000000000000000000000000000000
                    0000000000000000002A0200800B1CA42642DD505BEF6A7CF18772F27E56F666
                    53F16133D23D28C7350D48130000000000000000000000000000000000000000
                    0000290212741B1C962634CE4265E17188E79190EC9988EC9169E8754AEA5A4A
                    E8592BBC3512AB20034009000000000000000000000000000000002D00308A38
                    42A24B39BF457ADA8396E19D92E39A6BD27479D98184E68E62E06E3EDE4D3FDA
                    4D20A129018E0E0032050000000000000000000000000079034EA35576CB7E95
                    DA9CA0DEA69CDEA368CE7215B8243DC84969D5747DDD865AD56531D24033CD41
                    188B210069080021030000000000000000000036002C9C368CD294B7DCBBAED9
                    B26DC9760CB01B035A0B075F0F18BB275CCD6779D68251CB5C22C53125BF3314
                    791C004C07001A0200000000000000000000390307A11178CD808ED09408AC16
                    005705000000000000045F0C11B52057C46173CD7B46C15112B62116B3251072
                    1801450800180000000000000000000000400212AE2018B52400570600000000
                    0000000000000000005A070AA71654B85D71C3783FB44A04A41308A314197823
                    1F5C25011803000000000000000000013205003C060000000000000000000000
                    000000000000000053030AA21759B26174B47A3FA14801890A0B931741864706
                    420B000000000000000000000000000000000000000000000000000000000000
                    0000000000000054040BA7185BAE6377AD7C3F93480C7915116F19013E070000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000057030BA81860AE6786B48A36923E005402001101000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000057030FA71D51B4591F802800150000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000004B04006904001B020000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000}
                  ParentFont = False
                  OnClick = SpeedButton39Click
                end
                object Label91: TLabel
                  Left = 9
                  Top = 31
                  Width = 92
                  Height = 26
                  Caption = #1050#1086#1083'-'#1074#1086' '#1087#1086#1089#1083#1077#1076#1085#1080#1093#13'       '#1089#1077#1089#1089#1080#1081
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object CheckBox3: TCheckBox
                  Left = 6
                  Top = 8
                  Width = 147
                  Height = 17
                  Caption = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1087#1077#1088#1074#1099#1081' '#1082#1091#1088#1089
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clHighlight
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object ComboBox12: TComboBox
                  Left = 107
                  Top = 31
                  Width = 57
                  Height = 21
                  ItemIndex = 1
                  TabOrder = 1
                  Text = '2'
                  Items.Strings = (
                    '1'
                    '2'
                    '3'
                    '4'
                    '5'
                    '6'
                    '7'
                    '8'
                    '9')
                end
              end
            end
            object Button26: TButton
              Left = 3
              Top = 501
              Width = 203
              Height = 25
              Caption = #1055#1086' '#1087#1086#1083#1091'('#1088#1072#1079'.'#1087#1086' '#1082#1091#1088#1089#1072#1084')'
              TabOrder = 6
              Visible = False
              OnClick = Button26Click
            end
            object GroupBox32: TGroupBox
              Left = 0
              Top = 374
              Width = 806
              Height = 52
              Align = alTop
              TabOrder = 7
              object SpeedButton58: TSpeedButton
                Left = 152
                Top = 15
                Width = 150
                Height = 35
                Align = alLeft
                Caption = #1050#1062#1055'('#1089#1074#1086#1076#1085#1072#1103')'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B0040000C40E0000C40E00000000000000000000000000000000
                  1213124C4C4749484349484349484249484248484148484048474048473F4847
                  3F48473E48473E48473D4B4A401515130000000000000000000000003F3F3BFF
                  FFF7F9F7F2F8F6EFF8F6EEF8F6EEF7F6EDF7F6EBF7F5EAF6F5E7F6F4E5F6F3E3
                  F5F3E0F7F3DFFFFCE047453D0000000000000000000000003C3B37F8F7EFF0EF
                  F0EFEEEEEFEEEFEFEEEEEFEEEEEFEEECEEEEEAEEEDE7EEECE5EDECE2EDEBDFED
                  ECDEF5F2D84442380000000000000000000000003C3B36F7F5ECF3EFF1F4EFF0
                  F4EFF0F2EEEFF2EEEBF4EFE8F4EEE5F3ECE3F0EDDFF2F0DCF2EFDAF2EFD9F6F1
                  D44342370000000000000000000000003D3B36F6F5EB8CD7B868CDA26ACDA388
                  D5AF84C6E152B1E652B4E466C2E48FA2E35A5FE65A62E45961E4CCCBD54C4936
                  0000000000000000000000003E3B36F6F4E960CC9F2CBF832EC38E58CD9C57B1
                  DB0F91E40F98E42AAEE56681E41820E71824E41622E5BAB9D3504D3500000000
                  00000000000000003E3B35F6F4E867CFA634C79835CCA65ED4AD62B1DA1E91E1
                  1D99E336AFE36C85DF2329E0232DDD212BDDBDBBCF4F4B340000000000000000
                  000000003D3B34F6F3E565D2AF31CDA933D2B65CD9BA61B2DC1E92E11C99E336
                  B0E46C84DC2226DA222AD72028D7BDBACA4E4C33000000000000000000000000
                  3D3A33F6F2E363D6BA30D2B731D6C35ADCC55EB6DE1B96E31B9DE435B3E5677F
                  D7191BD31920D2171DD1B9B7C74E4C330000000000000000000000003E3A32F5
                  F2E162DAC42ED6C230DACE59E0CF5CBAE0179DE618A2E62DAFE6A6BAD2A39CCA
                  9D9CCA9D9BC8DCD8C24744320000000000000000000000003D3A32F5F1DF61DC
                  CC2DD9CC2EDDD757E2D658BDE112A2E813A6E923AEE8CEE1D0FCF1C7F2EDC4F3
                  EDC1F3ECBD4240320000000000000000000000003D3A31F4F1DC60DED22BDCD5
                  2DE0DF56E4DC59C4E313ADEB15B0EC26B7EAC9DCCEF0E4C3E6E1C0E7E1BDF0E8
                  B94240310000000000000000000000003D3930F3F0D95FE0D82ADEDB2BE2E54E
                  E4E2C1E0D7C1DDD5BDDCD2C0DCCFE1E1C6E8E2C0E6E0BCE6E0BAEFE7B6424030
                  0000000000000000000000003D392FF3EFD75DE2DD28E0E22AE3EA4AE4E7E2E6
                  D1F8E7CAF3E6C7F1E4C3E8E2BFE5E0B9E5DEB5E5DEB2F0E7B044423000000000
                  00000000000000003D392EF3EFD356E2DE1FE0E221E2E843E3E5DAE5CEEDE4C8
                  E7E3C5E7E2C0E6E1BDE7E3C6E6E1BEE6E0B6EFE8BB3C3B2F0000000000000000
                  000000003B392DF2EED1B3E5DA9EE3D59FE2D3AAE2D1E3E4C9EAE3C5E7E2C1E6
                  E0BBE6E1C0EDEDECEDEDEFFEFDF8AFAEAB080808000000000000000000000000
                  3A382DF2EDCFF3E9D7F4E6D1F3E5CCF1E4C9E8E3C6E6E2C1E6E1BEE5DFB7E6E1
                  BEEDECEAFBFAF7D6D5CF2828270000000000000000000000000000003C3A2DFA
                  F5D0F2EFD8F0ECD1F0EBCDEFEACAEFE9C6EEE8C2EEE7BEECE5B6EEE8C0FFFEF8
                  D1D0CB2F2F2D000000000000000000000000000000000000333227D1CCA4C8C3
                  9FC7C29CC7C19BC7C198C7C196C7C094C6BF92C6BE8DCBC59D9998921B1A1A00
                  0000000000000000000000000000000000000000020202080808070706080707
                  0807070807070807070808070707070808080606060000000000000000000000
                  00000000000000000000}
                ParentFont = False
                OnClick = SpeedButton58Click
                ExplicitLeft = 150
              end
              object SpeedButton61: TSpeedButton
                Left = 2
                Top = 15
                Width = 150
                Height = 35
                Align = alLeft
                Caption = #1050#1062#1055'('#1089#1087#1077#1094'.\'#1085#1072#1087#1088#1072#1074'.)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B0040000C40E0000C40E00000000000000000000000000000000
                  1213124C4C4749484349484349484249484248484148484048474048473F4847
                  3F48473E48473E48473D4B4A401515130000000000000000000000003F3F3BFF
                  FFF7F9F7F2F8F6EFF8F6EEF8F6EEF7F6EDF7F6EBF7F5EAF6F5E7F6F4E5F6F3E3
                  F5F3E0F7F3DFFFFCE047453D0000000000000000000000003C3B37F8F7EFF0EF
                  F0EFEEEEEFEEEFEFEEEEEFEEEEEFEEECEEEEEAEEEDE7EEECE5EDECE2EDEBDFED
                  ECDEF5F2D84442380000000000000000000000003C3B36F7F5ECF3EFF1F4EFF0
                  F4EFF0F2EEEFF2EEEBF4EFE8F4EEE5F3ECE3F0EDDFF2F0DCF2EFDAF2EFD9F6F1
                  D44342370000000000000000000000003D3B36F6F5EB8CD7B868CDA26ACDA388
                  D5AF84C6E152B1E652B4E466C2E48FA2E35A5FE65A62E45961E4CCCBD54C4936
                  0000000000000000000000003E3B36F6F4E960CC9F2CBF832EC38E58CD9C57B1
                  DB0F91E40F98E42AAEE56681E41820E71824E41622E5BAB9D3504D3500000000
                  00000000000000003E3B35F6F4E867CFA634C79835CCA65ED4AD62B1DA1E91E1
                  1D99E336AFE36C85DF2329E0232DDD212BDDBDBBCF4F4B340000000000000000
                  000000003D3B34F6F3E565D2AF31CDA933D2B65CD9BA61B2DC1E92E11C99E336
                  B0E46C84DC2226DA222AD72028D7BDBACA4E4C33000000000000000000000000
                  3D3A33F6F2E363D6BA30D2B731D6C35ADCC55EB6DE1B96E31B9DE435B3E5677F
                  D7191BD31920D2171DD1B9B7C74E4C330000000000000000000000003E3A32F5
                  F2E162DAC42ED6C230DACE59E0CF5CBAE0179DE618A2E62DAFE6A6BAD2A39CCA
                  9D9CCA9D9BC8DCD8C24744320000000000000000000000003D3A32F5F1DF61DC
                  CC2DD9CC2EDDD757E2D658BDE112A2E813A6E923AEE8CEE1D0FCF1C7F2EDC4F3
                  EDC1F3ECBD4240320000000000000000000000003D3A31F4F1DC60DED22BDCD5
                  2DE0DF56E4DC59C4E313ADEB15B0EC26B7EAC9DCCEF0E4C3E6E1C0E7E1BDF0E8
                  B94240310000000000000000000000003D3930F3F0D95FE0D82ADEDB2BE2E54E
                  E4E2C1E0D7C1DDD5BDDCD2C0DCCFE1E1C6E8E2C0E6E0BCE6E0BAEFE7B6424030
                  0000000000000000000000003D392FF3EFD75DE2DD28E0E22AE3EA4AE4E7E2E6
                  D1F8E7CAF3E6C7F1E4C3E8E2BFE5E0B9E5DEB5E5DEB2F0E7B044423000000000
                  00000000000000003D392EF3EFD356E2DE1FE0E221E2E843E3E5DAE5CEEDE4C8
                  E7E3C5E7E2C0E6E1BDE7E3C6E6E1BEE6E0B6EFE8BB3C3B2F0000000000000000
                  000000003B392DF2EED1B3E5DA9EE3D59FE2D3AAE2D1E3E4C9EAE3C5E7E2C1E6
                  E0BBE6E1C0EDEDECEDEDEFFEFDF8AFAEAB080808000000000000000000000000
                  3A382DF2EDCFF3E9D7F4E6D1F3E5CCF1E4C9E8E3C6E6E2C1E6E1BEE5DFB7E6E1
                  BEEDECEAFBFAF7D6D5CF2828270000000000000000000000000000003C3A2DFA
                  F5D0F2EFD8F0ECD1F0EBCDEFEACAEFE9C6EEE8C2EEE7BEECE5B6EEE8C0FFFEF8
                  D1D0CB2F2F2D000000000000000000000000000000000000333227D1CCA4C8C3
                  9FC7C29CC7C19BC7C198C7C196C7C094C6BF92C6BE8DCBC59D9998921B1A1A00
                  0000000000000000000000000000000000000000020202080808070706080707
                  0807070807070807070808070707070808080606060000000000000000000000
                  00000000000000000000}
                ParentFont = False
                OnClick = SpeedButton61Click
                ExplicitLeft = 0
              end
              object SpeedButton69: TSpeedButton
                Left = 462
                Top = 15
                Width = 160
                Height = 35
                Align = alLeft
                Caption = #1044#1086#1093#1086#1076#1099' ('#1041#1102#1076#1078#1077#1090')'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000000000000000
                  0002000000070000000F00000015000000160000001600000016000000160000
                  0016000000150000000F00000007000000020000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000040000
                  0010000000230000003500000040000000430000004300000043000000430000
                  0043000000400000003500000023000000100000000400000000000000000000
                  0000000000000000000000000000000000000000000000000000000000010000
                  00000000000000000000000000000000000000000000000000000000000D0000
                  002D316C8B7B479DD3D14DAEEAFF4BAAE9FF4CAAE9FF4FABE9FF51ABE9FF53AC
                  E9FF54B0EAFF4B9FD3D1336D8B7B0000002D0000000D00000000000000000000
                  000000000002000000070000000F000000150000001600000017000000180000
                  001700000016000000150000000F00000007000000020000000000000015499C
                  D2C256BBEDFF68CFF4FF90E3FAFFB0EFFDFF9CEAFEFF7EE3FDFF5EDBFEFF49D6
                  FEFF46D3FDFF48C8F9FF4EB9F1FF4C9CD2C20000001500000000000000000000
                  000400000010000000230000003500000040000000430000004310222D4E0000
                  0043000000430000004000000035000000230000001000000004000000164DAC
                  EAFFA2ECFAFFD7F9FEFFF4FFFFFFF7FFFFFFE6FCFFFFC5EFFDFFB3F0FFFF95E8
                  FFFF7BE1FFFF5BDBFFFF42D8FFFF55ADE9FF0000001700000001000000000000
                  000D0000002C316C8B7B479DD3D14DAEEAFF4BAAE9FF4CAAE9FF4FABE9FF51AB
                  E9FF53ACE9FF54B0EAFF4B9FD3D1336D8B7B0000002D0000000D000000164CAB
                  EAFFECF4FDFF95CCF2FF89C6F0FF9ECFF2FF8DC7F1FF74BAEDFF5BAEEAFF4DA7
                  E7FF56AEEAFF5BBCF0FF4DCDFCFF55ADE9FF0000002700000017000000170000
                  0025489ACFC356BBEDFF68CFF4FF90E3FAFFB0EFFDFF9CEAFEFF7EE3FDFF5EDB
                  FEFF49D6FEFF46D3FDFF48C8F9FF4EB9F1FF4C9CD2C200000015000000164EAC
                  EAFF4EB7ECFF5FCBF3FF88E0F9FFA8EBFCFF95E7FDFF79E1FCFF5BDAFEFF48D5
                  FEFF45D2FCFF48C7F8FF4EB8F0FF55ADE9FF000000490D1B254C000000430000
                  00484DABEAFFA2ECFAFFD7F9FEFFF4FFFFFFF7FFFFFFE6FCFFFFC5EFFDFFB3F0
                  FFFF95E8FFFF7BE1FFFF5BDBFFFF42D8FFFF55ADE9FF00000016000000164DAB
                  EAFFA1ECFAFFD5F8FEFFF3FFFFFFF6FFFFFFE5FBFFFFC4EFFDFFB3F0FFFF95E8
                  FFFF7BE1FFFF5BDBFFFF42D8FFFF54ACE9FF52ADE9FF52ACE9FF53ACE9FF52AD
                  E9FF4CAAE9FFECF4FDFF95CCF2FF89C6F0FF9ECFF2FF8DC7F1FF74BAEDFF5BAE
                  EAFF4DA7E7FF56AEEAFF5BBCF0FF4DCDFCFF55ADE9FF00000016000000164CAB
                  EAFFECF4FDFF95CCF2FF89C6F0FF9ECFF2FF8DC7F1FF74BAEDFF5BAEEAFF4DA7
                  E7FF56AEEAFF5BBCF0FF4CCDFCFF51AAE8FF6BE1FCFF53D8FCFF4ED7FDFF4AD8
                  FFFF4DA9E9FF4EB7ECFF5FCBF3FF88E0F9FFA8EBFCFF95E7FDFF79E1FCFF5BDA
                  FEFF48D5FEFF45D2FCFF48C7F8FF4EB8F0FF55AEEAFF00000016000000164EAC
                  EAFF4EB7ECFF5FCBF3FF88E0F9FFA8EBFCFF95E7FDFF79E1FCFF5BDAFEFF48D5
                  FEFF45D2FCFF48C7F8FF4DB7F0FF4FAAE8FFE1FDFFFFB2E9FDFFACF0FFFF96EB
                  FFFF4AA8E8FFA0EBFAFFD5F8FEFFF3FFFFFFF6FFFFFFE5FBFFFFC4EFFDFFB3F0
                  FFFF95E8FFFF7BE1FFFF5BDBFFFF42D8FFFF55ADE9FF00000016000000164DAB
                  EAFFA1ECFAFFD5F8FEFFF3FFFFFFF6FFFFFFE5FBFFFFC4EFFDFFB3F0FFFF95E8
                  FFFF7BE1FFFF5BDBFFFF41D7FFFF51AAE8FF5FB1EBFF4AA6E8FF4CA7E8FF4EA9
                  E8FF4BA9E9FFECF3FDFF95CCF2FF89C6F0FF9ECFF2FF8DC7F1FF74BAEDFF5BAE
                  EAFF4DA7E7FF56AEEAFF5BBCF0FF4DCDFCFF55ADE9FF00000016000000164CAB
                  EAFFECF4FDFF95CCF2FF89C6F0FF9ECFF2FF8DC7F1FF74BAEDFF5BAEEAFF4DA7
                  E7FF56AEEAFF5BBCF0FF4CCDFCFF50AAE8FF6AE0FCFF51D7FCFF4CD6FDFF49D8
                  FFFF4CA9E9FF4EB7ECFF5FCBF3FF88E0F9FFA8EBFBFF96E6FDFF79E0FBFF5BD9
                  FDFF48D4FDFF45D1FCFF48C6F8FF4EB7F0FF55AEEAFF00000016000000164EAC
                  EAFF4EB7ECFF5FCBF3FF88E0F9FFA8EBFBFF96E6FDFF79E0FBFF5BD9FDFF48D4
                  FDFF45D1FCFF48C6F8FF4DB7EFFF4FA9E8FFE1FDFFFFB2E9FDFFACF0FFFF96EB
                  FFFF49A7E8FF9EE9F9FFD4F6FDFFF5FDFFFFFBFFFFFFEAFAFFFFD3F5FFFFB3ED
                  FDFF94E5FDFF7ADEFDFF5AD8FFFF41D6FFFF55ADE9FF00000016000000164CAB
                  E9FF9FEAF9FFD4F6FDFFF5FDFFFFFBFFFFFFEAFAFFFFD3F5FFFFB3EDFDFF94E5
                  FDFF7ADEFDFF5AD8FFFF41D6FFFF51AAE8FF5FB1EBFF4AA6E8FF4CA7E8FF4EA8
                  E8FF48A7E8FFFFFFFFFFB6F0FEFF81E3FCFF5FDBFCFF4ED7FCFF50D7FCFF51D8
                  FCFF5BDAFCFF62DCFDFF5FDAFEFF4BD7FFFF54ACE9FF00000015000000154AAA
                  E9FFFFFFFFFFB6F0FEFF81E3FCFF5FDBFCFF4ED7FCFF50D7FCFF51D8FCFF5BDA
                  FCFF62DCFDFF5FDAFEFF4AD7FFFF4FA8E8FF69E0FCFF51D7FCFF4CD6FDFF49D7
                  FFFF4CA7E8FF88ECFCFF60E1FBFF62E0FAFF65E0FAFF66E0FAFF67E1FAFF67E1
                  FAFF68E1FAFF68E2FAFF6AE3FBFF64E5FCFF53ACEAFF0000000D0000000D4EAB
                  EAFF89EEFCFF60E1FBFF62E0FAFF65E0FAFF66E0FAFF67E1FAFF67E1FAFF67E1
                  FAFF68E1FAFF69E3FBFF62E4FCFF4CA7E8FFE0FDFFFFB2E9FDFFACEFFFFF96EB
                  FFFF63BFF2FF5ABDEDFF6AD6F3FF77E7F7FF7AEBF7FF7AEBF7FF7AEBF7FF7AEB
                  F7FF7AEBF7FF78E7F7FF6CD7F3FF5EC0EFFF51A9E4B3000000040000000450A8
                  E4B35BBFEFFF6AD7F3FF77E7F7FF7AEBF7FF7AEBF7FF7AEBF7FF7AEBF7FF79EB
                  F6FF75E5F6FF67D4F2FF56BBEDFF5BAFEBFF5DAFEAFF4AA6E8FF4CA7E8FF4FA8
                  E8FF57B0EBFF55B1EBFF51B0ECFF51ABE9FF51ABEAFF51ABEAFF51ABEAFF51AB
                  EAFF51ABEAFF51AAE9F650A7E4AD4C9FD7390000000100000000000000000000
                  00014B9FD73950A7E4AD51AAE9F651ABEAFF51ABEAFF51AAEAFF50AAE9FF4CA8
                  E9FF52AEEBFF6FC0EFFF88D8F6FF83E3FBFF63DCFBFF50D7FBFF4CD6FDFF4AD5
                  FEFF45D2FDFF48C8F9FF4EB8F1FF54AEEAFF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000165AB1
                  ECFFBFF5FCFFF0FFFFFFFAFFFFFFEFFFFFFFD8F8FFFFB1E9FDFFACEFFFFF96E9
                  FFFF7BE1FFFF5BDBFFFF42D8FFFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001657B1
                  ECFFF8FAFEFFC7E4F8FF98CEF2FF70B9EDFF57ADEAFF49A6E8FF4CA7E8FF4FA7
                  E7FF56AEEAFF5BBCF0FF4DCDFCFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001658B1
                  ECFF82CCF2FFA7E3F9FF97E6FAFF7DE1FBFF62DCFBFF50D7FBFF4CD6FDFF4AD5
                  FEFF45D2FCFF48C7F8FF4EB8F0FF55AEEAFF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001657B1
                  ECFFBBF3FCFFEBFDFFFFF7FEFFFFEDFEFFFFD7F8FFFFB1E9FDFFACEFFFFF96E9
                  FFFF7BE1FFFF5BDBFFFF42D8FFFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001656B1
                  ECFFF7FAFEFFC6E4F8FF98CEF2FF70B9EDFF57ADEAFF49A6E8FF4CA7E8FF4FA7
                  E7FF56AEEAFF5BBCF0FF4DCDFCFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001658B1
                  ECFF82CCF2FFA7E3F9FF97E6FAFF7DE1FBFF62DCFBFF50D7FBFF4CD6FDFF4AD5
                  FEFF45D2FCFF48C7F8FF4EB8F0FF55AEEAFF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001657B1
                  ECFFBBF3FCFFEBFDFFFFF7FEFFFFEDFEFFFFD7F8FFFFB1E9FDFFACEFFFFF96E9
                  FFFF7BE1FFFF5BDBFFFF42D8FFFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001656B1
                  ECFFF7FAFEFFC6E4F8FF98CEF2FF70B9EDFF57ADEAFF49A6E8FF4CA7E8FF4FA7
                  E7FF56AEEAFF5BBCF0FF4DCDFCFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001658B1
                  ECFF82CCF2FFA7E3F9FF97E5FAFF7DE0FAFF62DBFBFF4FD6FBFF4CD5FCFF49D5
                  FEFF45D1FCFF48C6F8FF4EB7F0FF55AEEAFF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001658B1
                  ECFFBBF2FBFFEDFCFFFFFAFDFFFFEFFBFFFFD7F5FEFFBFF0FEFFAAEBFEFF95E5
                  FEFF7ADEFDFF5AD8FFFF41D6FFFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001548A9
                  E9FFFFFFFFFFB4EFFEFF80E3FCFF60DBFCFF50D7FCFF52D8FCFF52D8FCFF5CDA
                  FCFF62DCFDFF5FDAFEFF4BD7FFFF54ACE9FF0000001500000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000D4EAB
                  EAFF88EEFCFF5FE1FBFF62E0FAFF65E0FAFF66E0FAFF67E1FAFF67E1FAFF68E1
                  FAFF68E2FAFF6AE3FBFF64E5FCFF53ACEAFF0000000D00000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000450A8
                  E4B35BBFEFFF6AD7F3FF77E7F7FF7AEBF7FF7AEBF7FF7AEBF7FF7AEBF7FF7AEB
                  F7FF78E7F7FF6CD7F3FF5EC0EFFF51A9E4B30000000400000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00014B9FD73950A7E4AD51AAE9F651ABEAFF51ABEAFF51ABEAFF51ABEAFF51AB
                  EAFF51AAE9F650A7E4AD4C9FD739000000010000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                ParentFont = False
                OnClick = SpeedButton69Click
                ExplicitLeft = 456
              end
              object SpeedButton68: TSpeedButton
                Left = 622
                Top = 15
                Width = 160
                Height = 35
                Align = alLeft
                Caption = #1044#1086#1093#1086#1076#1099' ('#1050#1086#1084'.'#1086#1073#1091#1095'.)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  36100000424D3610000000000000360000002800000020000000200000000100
                  2000000000000010000000000000000000000000000000000000000000000000
                  0002000000070000000F00000015000000160000001600000016000000160000
                  0016000000150000000F00000007000000020000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000040000
                  0010000000230000003500000040000000430000004300000043000000430000
                  0043000000400000003500000023000000100000000400000000000000000000
                  0000000000000000000000000000000000000000000000000000000000010000
                  00000000000000000000000000000000000000000000000000000000000D0000
                  002D316C8B7B479DD3D14DAEEAFF4BAAE9FF4CAAE9FF4FABE9FF51ABE9FF53AC
                  E9FF54B0EAFF4B9FD3D1336D8B7B0000002D0000000D00000000000000000000
                  000000000002000000070000000F000000150000001600000017000000180000
                  001700000016000000150000000F00000007000000020000000000000015499C
                  D2C256BBEDFF68CFF4FF90E3FAFFB0EFFDFF9CEAFEFF7EE3FDFF5EDBFEFF49D6
                  FEFF46D3FDFF48C8F9FF4EB9F1FF4C9CD2C20000001500000000000000000000
                  000400000010000000230000003500000040000000430000004310222D4E0000
                  0043000000430000004000000035000000230000001000000004000000164DAC
                  EAFFA2ECFAFFD7F9FEFFF4FFFFFFF7FFFFFFE6FCFFFFC5EFFDFFB3F0FFFF95E8
                  FFFF7BE1FFFF5BDBFFFF42D8FFFF55ADE9FF0000001700000001000000000000
                  000D0000002C316C8B7B479DD3D14DAEEAFF4BAAE9FF4CAAE9FF4FABE9FF51AB
                  E9FF53ACE9FF54B0EAFF4B9FD3D1336D8B7B0000002D0000000D000000164CAB
                  EAFFECF4FDFF95CCF2FF89C6F0FF9ECFF2FF8DC7F1FF74BAEDFF5BAEEAFF4DA7
                  E7FF56AEEAFF5BBCF0FF4DCDFCFF55ADE9FF0000002700000017000000170000
                  0025489ACFC356BBEDFF68CFF4FF90E3FAFFB0EFFDFF9CEAFEFF7EE3FDFF5EDB
                  FEFF49D6FEFF46D3FDFF48C8F9FF4EB9F1FF4C9CD2C200000015000000164EAC
                  EAFF4EB7ECFF5FCBF3FF88E0F9FFA8EBFCFF95E7FDFF79E1FCFF5BDAFEFF48D5
                  FEFF45D2FCFF48C7F8FF4EB8F0FF55ADE9FF000000490D1B254C000000430000
                  00484DABEAFFA2ECFAFFD7F9FEFFF4FFFFFFF7FFFFFFE6FCFFFFC5EFFDFFB3F0
                  FFFF95E8FFFF7BE1FFFF5BDBFFFF42D8FFFF55ADE9FF00000016000000164DAB
                  EAFFA1ECFAFFD5F8FEFFF3FFFFFFF6FFFFFFE5FBFFFFC4EFFDFFB3F0FFFF95E8
                  FFFF7BE1FFFF5BDBFFFF42D8FFFF54ACE9FF52ADE9FF52ACE9FF53ACE9FF52AD
                  E9FF4CAAE9FFECF4FDFF95CCF2FF89C6F0FF9ECFF2FF8DC7F1FF74BAEDFF5BAE
                  EAFF4DA7E7FF56AEEAFF5BBCF0FF4DCDFCFF55ADE9FF00000016000000164CAB
                  EAFFECF4FDFF95CCF2FF89C6F0FF9ECFF2FF8DC7F1FF74BAEDFF5BAEEAFF4DA7
                  E7FF56AEEAFF5BBCF0FF4CCDFCFF51AAE8FF6BE1FCFF53D8FCFF4ED7FDFF4AD8
                  FFFF4DA9E9FF4EB7ECFF5FCBF3FF88E0F9FFA8EBFCFF95E7FDFF79E1FCFF5BDA
                  FEFF48D5FEFF45D2FCFF48C7F8FF4EB8F0FF55AEEAFF00000016000000164EAC
                  EAFF4EB7ECFF5FCBF3FF88E0F9FFA8EBFCFF95E7FDFF79E1FCFF5BDAFEFF48D5
                  FEFF45D2FCFF48C7F8FF4DB7F0FF4FAAE8FFE1FDFFFFB2E9FDFFACF0FFFF96EB
                  FFFF4AA8E8FFA0EBFAFFD5F8FEFFF3FFFFFFF6FFFFFFE5FBFFFFC4EFFDFFB3F0
                  FFFF95E8FFFF7BE1FFFF5BDBFFFF42D8FFFF55ADE9FF00000016000000164DAB
                  EAFFA1ECFAFFD5F8FEFFF3FFFFFFF6FFFFFFE5FBFFFFC4EFFDFFB3F0FFFF95E8
                  FFFF7BE1FFFF5BDBFFFF41D7FFFF51AAE8FF5FB1EBFF4AA6E8FF4CA7E8FF4EA9
                  E8FF4BA9E9FFECF3FDFF95CCF2FF89C6F0FF9ECFF2FF8DC7F1FF74BAEDFF5BAE
                  EAFF4DA7E7FF56AEEAFF5BBCF0FF4DCDFCFF55ADE9FF00000016000000164CAB
                  EAFFECF4FDFF95CCF2FF89C6F0FF9ECFF2FF8DC7F1FF74BAEDFF5BAEEAFF4DA7
                  E7FF56AEEAFF5BBCF0FF4CCDFCFF50AAE8FF6AE0FCFF51D7FCFF4CD6FDFF49D8
                  FFFF4CA9E9FF4EB7ECFF5FCBF3FF88E0F9FFA8EBFBFF96E6FDFF79E0FBFF5BD9
                  FDFF48D4FDFF45D1FCFF48C6F8FF4EB7F0FF55AEEAFF00000016000000164EAC
                  EAFF4EB7ECFF5FCBF3FF88E0F9FFA8EBFBFF96E6FDFF79E0FBFF5BD9FDFF48D4
                  FDFF45D1FCFF48C6F8FF4DB7EFFF4FA9E8FFE1FDFFFFB2E9FDFFACF0FFFF96EB
                  FFFF49A7E8FF9EE9F9FFD4F6FDFFF5FDFFFFFBFFFFFFEAFAFFFFD3F5FFFFB3ED
                  FDFF94E5FDFF7ADEFDFF5AD8FFFF41D6FFFF55ADE9FF00000016000000164CAB
                  E9FF9FEAF9FFD4F6FDFFF5FDFFFFFBFFFFFFEAFAFFFFD3F5FFFFB3EDFDFF94E5
                  FDFF7ADEFDFF5AD8FFFF41D6FFFF51AAE8FF5FB1EBFF4AA6E8FF4CA7E8FF4EA8
                  E8FF48A7E8FFFFFFFFFFB6F0FEFF81E3FCFF5FDBFCFF4ED7FCFF50D7FCFF51D8
                  FCFF5BDAFCFF62DCFDFF5FDAFEFF4BD7FFFF54ACE9FF00000015000000154AAA
                  E9FFFFFFFFFFB6F0FEFF81E3FCFF5FDBFCFF4ED7FCFF50D7FCFF51D8FCFF5BDA
                  FCFF62DCFDFF5FDAFEFF4AD7FFFF4FA8E8FF69E0FCFF51D7FCFF4CD6FDFF49D7
                  FFFF4CA7E8FF88ECFCFF60E1FBFF62E0FAFF65E0FAFF66E0FAFF67E1FAFF67E1
                  FAFF68E1FAFF68E2FAFF6AE3FBFF64E5FCFF53ACEAFF0000000D0000000D4EAB
                  EAFF89EEFCFF60E1FBFF62E0FAFF65E0FAFF66E0FAFF67E1FAFF67E1FAFF67E1
                  FAFF68E1FAFF69E3FBFF62E4FCFF4CA7E8FFE0FDFFFFB2E9FDFFACEFFFFF96EB
                  FFFF63BFF2FF5ABDEDFF6AD6F3FF77E7F7FF7AEBF7FF7AEBF7FF7AEBF7FF7AEB
                  F7FF7AEBF7FF78E7F7FF6CD7F3FF5EC0EFFF51A9E4B3000000040000000450A8
                  E4B35BBFEFFF6AD7F3FF77E7F7FF7AEBF7FF7AEBF7FF7AEBF7FF7AEBF7FF79EB
                  F6FF75E5F6FF67D4F2FF56BBEDFF5BAFEBFF5DAFEAFF4AA6E8FF4CA7E8FF4FA8
                  E8FF57B0EBFF55B1EBFF51B0ECFF51ABE9FF51ABEAFF51ABEAFF51ABEAFF51AB
                  EAFF51ABEAFF51AAE9F650A7E4AD4C9FD7390000000100000000000000000000
                  00014B9FD73950A7E4AD51AAE9F651ABEAFF51ABEAFF51AAEAFF50AAE9FF4CA8
                  E9FF52AEEBFF6FC0EFFF88D8F6FF83E3FBFF63DCFBFF50D7FBFF4CD6FDFF4AD5
                  FEFF45D2FDFF48C8F9FF4EB8F1FF54AEEAFF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000165AB1
                  ECFFBFF5FCFFF0FFFFFFFAFFFFFFEFFFFFFFD8F8FFFFB1E9FDFFACEFFFFF96E9
                  FFFF7BE1FFFF5BDBFFFF42D8FFFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001657B1
                  ECFFF8FAFEFFC7E4F8FF98CEF2FF70B9EDFF57ADEAFF49A6E8FF4CA7E8FF4FA7
                  E7FF56AEEAFF5BBCF0FF4DCDFCFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001658B1
                  ECFF82CCF2FFA7E3F9FF97E6FAFF7DE1FBFF62DCFBFF50D7FBFF4CD6FDFF4AD5
                  FEFF45D2FCFF48C7F8FF4EB8F0FF55AEEAFF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001657B1
                  ECFFBBF3FCFFEBFDFFFFF7FEFFFFEDFEFFFFD7F8FFFFB1E9FDFFACEFFFFF96E9
                  FFFF7BE1FFFF5BDBFFFF42D8FFFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001656B1
                  ECFFF7FAFEFFC6E4F8FF98CEF2FF70B9EDFF57ADEAFF49A6E8FF4CA7E8FF4FA7
                  E7FF56AEEAFF5BBCF0FF4DCDFCFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001658B1
                  ECFF82CCF2FFA7E3F9FF97E6FAFF7DE1FBFF62DCFBFF50D7FBFF4CD6FDFF4AD5
                  FEFF45D2FCFF48C7F8FF4EB8F0FF55AEEAFF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001657B1
                  ECFFBBF3FCFFEBFDFFFFF7FEFFFFEDFEFFFFD7F8FFFFB1E9FDFFACEFFFFF96E9
                  FFFF7BE1FFFF5BDBFFFF42D8FFFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001656B1
                  ECFFF7FAFEFFC6E4F8FF98CEF2FF70B9EDFF57ADEAFF49A6E8FF4CA7E8FF4FA7
                  E7FF56AEEAFF5BBCF0FF4DCDFCFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001658B1
                  ECFF82CCF2FFA7E3F9FF97E5FAFF7DE0FAFF62DBFBFF4FD6FBFF4CD5FCFF49D5
                  FEFF45D1FCFF48C6F8FF4EB7F0FF55AEEAFF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001658B1
                  ECFFBBF2FBFFEDFCFFFFFAFDFFFFEFFBFFFFD7F5FEFFBFF0FEFFAAEBFEFF95E5
                  FEFF7ADEFDFF5AD8FFFF41D6FFFF55ADE9FF0000001600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000001548A9
                  E9FFFFFFFFFFB4EFFEFF80E3FCFF60DBFCFF50D7FCFF52D8FCFF52D8FCFF5CDA
                  FCFF62DCFDFF5FDAFEFF4BD7FFFF54ACE9FF0000001500000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000D4EAB
                  EAFF88EEFCFF5FE1FBFF62E0FAFF65E0FAFF66E0FAFF67E1FAFF67E1FAFF68E1
                  FAFF68E2FAFF6AE3FBFF64E5FCFF53ACEAFF0000000D00000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000450A8
                  E4B35BBFEFFF6AD7F3FF77E7F7FF7AEBF7FF7AEBF7FF7AEBF7FF7AEBF7FF7AEB
                  F7FF78E7F7FF6CD7F3FF5EC0EFFF51A9E4B30000000400000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00014B9FD73950A7E4AD51AAE9F651ABEAFF51ABEAFF51ABEAFF51ABEAFF51AB
                  EAFF51AAE9F650A7E4AD4C9FD739000000010000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                ParentFont = False
                OnClick = SpeedButton68Click
                ExplicitLeft = 627
                ExplicitTop = 7
              end
              object SpeedButton73: TSpeedButton
                Left = 302
                Top = 15
                Width = 160
                Height = 35
                Align = alLeft
                Caption = #1060#1080#1083#1080#1072#1083
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B0040000C40E0000C40E00000000000000000000000000000000
                  1213124C4C4749484349484349484249484248484148484048474048473F4847
                  3F48473E48473E48473D4B4A401515130000000000000000000000003F3F3BFF
                  FFF7F9F7F2F8F6EFF8F6EEF8F6EEF7F6EDF7F6EBF7F5EAF6F5E7F6F4E5F6F3E3
                  F5F3E0F7F3DFFFFCE047453D0000000000000000000000003C3B37F8F7EFF0EF
                  F0EFEEEEEFEEEFEFEEEEEFEEEEEFEEECEEEEEAEEEDE7EEECE5EDECE2EDEBDFED
                  ECDEF5F2D84442380000000000000000000000003C3B36F7F5ECF3EFF1F4EFF0
                  F4EFF0F2EEEFF2EEEBF4EFE8F4EEE5F3ECE3F0EDDFF2F0DCF2EFDAF2EFD9F6F1
                  D44342370000000000000000000000003D3B36F6F5EB8CD7B868CDA26ACDA388
                  D5AF84C6E152B1E652B4E466C2E48FA2E35A5FE65A62E45961E4CCCBD54C4936
                  0000000000000000000000003E3B36F6F4E960CC9F2CBF832EC38E58CD9C57B1
                  DB0F91E40F98E42AAEE56681E41820E71824E41622E5BAB9D3504D3500000000
                  00000000000000003E3B35F6F4E867CFA634C79835CCA65ED4AD62B1DA1E91E1
                  1D99E336AFE36C85DF2329E0232DDD212BDDBDBBCF4F4B340000000000000000
                  000000003D3B34F6F3E565D2AF31CDA933D2B65CD9BA61B2DC1E92E11C99E336
                  B0E46C84DC2226DA222AD72028D7BDBACA4E4C33000000000000000000000000
                  3D3A33F6F2E363D6BA30D2B731D6C35ADCC55EB6DE1B96E31B9DE435B3E5677F
                  D7191BD31920D2171DD1B9B7C74E4C330000000000000000000000003E3A32F5
                  F2E162DAC42ED6C230DACE59E0CF5CBAE0179DE618A2E62DAFE6A6BAD2A39CCA
                  9D9CCA9D9BC8DCD8C24744320000000000000000000000003D3A32F5F1DF61DC
                  CC2DD9CC2EDDD757E2D658BDE112A2E813A6E923AEE8CEE1D0FCF1C7F2EDC4F3
                  EDC1F3ECBD4240320000000000000000000000003D3A31F4F1DC60DED22BDCD5
                  2DE0DF56E4DC59C4E313ADEB15B0EC26B7EAC9DCCEF0E4C3E6E1C0E7E1BDF0E8
                  B94240310000000000000000000000003D3930F3F0D95FE0D82ADEDB2BE2E54E
                  E4E2C1E0D7C1DDD5BDDCD2C0DCCFE1E1C6E8E2C0E6E0BCE6E0BAEFE7B6424030
                  0000000000000000000000003D392FF3EFD75DE2DD28E0E22AE3EA4AE4E7E2E6
                  D1F8E7CAF3E6C7F1E4C3E8E2BFE5E0B9E5DEB5E5DEB2F0E7B044423000000000
                  00000000000000003D392EF3EFD356E2DE1FE0E221E2E843E3E5DAE5CEEDE4C8
                  E7E3C5E7E2C0E6E1BDE7E3C6E6E1BEE6E0B6EFE8BB3C3B2F0000000000000000
                  000000003B392DF2EED1B3E5DA9EE3D59FE2D3AAE2D1E3E4C9EAE3C5E7E2C1E6
                  E0BBE6E1C0EDEDECEDEDEFFEFDF8AFAEAB080808000000000000000000000000
                  3A382DF2EDCFF3E9D7F4E6D1F3E5CCF1E4C9E8E3C6E6E2C1E6E1BEE5DFB7E6E1
                  BEEDECEAFBFAF7D6D5CF2828270000000000000000000000000000003C3A2DFA
                  F5D0F2EFD8F0ECD1F0EBCDEFEACAEFE9C6EEE8C2EEE7BEECE5B6EEE8C0FFFEF8
                  D1D0CB2F2F2D000000000000000000000000000000000000333227D1CCA4C8C3
                  9FC7C29CC7C19BC7C198C7C196C7C094C6BF92C6BE8DCBC59D9998921B1A1A00
                  0000000000000000000000000000000000000000020202080808070706080707
                  0807070807070807070808070707070808080606060000000000000000000000
                  00000000000000000000}
                ParentFont = False
                OnClick = SpeedButton73Click
                ExplicitLeft = 320
                ExplicitHeight = 22
              end
            end
            object Panel32: TPanel
              Left = 0
              Top = 0
              Width = 806
              Height = 41
              Align = alTop
              BorderStyle = bsSingle
              Caption = 'Panel32'
              Color = 16776176
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 8
              object Image1: TImage
                Left = 1
                Top = 1
                Width = 37
                Height = 35
                Align = alLeft
                Picture.Data = {
                  0B54504E4747726170686963C65F0100424DC65F010000000000360000002800
                  000096000000960000000100200000000000905F010000000000000000000000
                  000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
                  FF00FFFFFF00FFFFFF00FFFFFF00030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000206980002059700020597000205970002059600020596000205
                  9600020596000205960002059600020596000205950002059500020595000104
                  9400010494000104930000039100000390000003900000039000000390000003
                  9000000390000003900000039000000390000003900000039000000390000003
                  90000003901A000390AC00039089000390000003910000039100000391000003
                  9100000391000003910000049200000492000104920001049200010492000104
                  9200010492000104920001049200010492000104920001049200010492000104
                  9200000492000003910000039100000391000003910000039100000391000003
                  91000003903A000390C00003905A000390000003900000039000000390000003
                  9000000390000003900000039000000390000003900000039000000390000003
                  9000010493000104940001049400010494000105950002059500020595000205
                  9500020596000205960002059600020596000205960002059600020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000206
                  9800020597000205970002059700020596000205960002059600020596000205
                  9600020596000205960002059500020595000205950001049400010494000104
                  9400010494000104910000039000000390000003900000039000000390000003
                  900000039000000390000003900000039000000390000003900E000390B30003
                  90FF000390EB0003904E00039100000391000003910000039100000391000003
                  9100000492000004920001049200010492000104920001049200010492000104
                  9200010492000104920001049200010492000104920001049200000492000003
                  910000039100000391000003910000039100000391000003910E000390AE0003
                  90FF000390F30003904F00039000000390000003900000039000000390000003
                  9000000390000003900000039000000390000003900000039000010493000104
                  9400010494000104940001059500020595000205950002059500020596000205
                  9600020596000205960002059600020596000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980002069800020597000205
                  9700020597000205960002059600020596000205960002059600020596000205
                  9600020595000205950002059500010494000104940001049400010494000104
                  9200010492000003900000039100000391000003910000039100000391000003
                  910000039100000391000003910000039169000391FF000391FF000391FF0003
                  91E5000391520003910000039100000391000003910000039100000492000004
                  9200010492000104920001049200010492000104920001049200010492000104
                  9200010492000104920001049200010492000004920000039100000391000003
                  9100000391000003910000039117000391A6000391FF000391FF000391FF0003
                  91D00003910E0003910000039100000391000003910000039100000391000003
                  9100000391000003910000039000010491000104940001049400010494000104
                  9400010595000205950002059500020595000205960002059600020596000205
                  9600020596000205960002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  970002059700020597000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800020698000205970002059700020597000205
                  9600020596000205960002059600020596000205960002059600020595000205
                  9500020595000104940001049400010494000104940001049300010493000104
                  9200000391000003910000039100000391000003910000039100000391000003
                  9100000391000003917B000391FF000391FF000391FF000391FF000391EF0003
                  916C000391010003910000039100000391000004920000049200010492000104
                  9200010492000104920001049200010492000104920001049200010492000104
                  9200010492000104920000049200000391000003910000039100000391000003
                  9131000391BE000391FF000391FF000391FF000391FF000391E0000391150003
                  9100000391000003910000039100000391000003910000039100000391000003
                  9100010492000104930001049400010494000104940001049400010595000205
                  9500020595000205950002059600020596000205960002059600020596000205
                  9600020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  97000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000206980002059700020597000205970002059600020596000205
                  9600020596000205960002059600020596000205950002059500020595000104
                  9400010494000104940001049400010493000104930001049300010493000003
                  9100000391000003910000039100000391000003910000039100000391000003
                  9122000391D2000391FF000391FF000391FF000391FF000391F90003919A0003
                  911A000391000003910000049200000492000104920001049200010492000104
                  9200010492000104920001049200010492000104920001049200010492000104
                  92000004920000039100000391000003910000039156000391E0000391FF0003
                  91FF000391FF000391FF000391FE000391730003910200039100000391000003
                  9100000391000003910000039100000391000003910001049300010493000104
                  9300010494000104940001049400010494000105950002059500020595000205
                  9500020596000205960002059600020596000205960002059600020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000206
                  9800020597000205970002059700020596000205960002059600020596000205
                  9600020596000205960002059500020595000205950001049400010494000104
                  9400010494000104930001049300010493000104930001049200000391000003
                  91000003910000039100000391000003910000039100000391000003912B0003
                  91B9000391FF000391FF000391FF000391FF000391FF000391CF000391490003
                  9103000492000004920001049200010492000104920001049200010492000104
                  9200010492000104920001049200010492000104920001049200000492000003
                  91000003911B00039194000391FA000391FF000391FF000391FF000391FF0003
                  91EB0003916E0003910000039100000391000003910000039100000391000003
                  9100000391000003910001049300010493000104930001049300010494000104
                  9400010494000104940001059500020595000205950002059500020596000205
                  9600020596000205960002059600020596000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980002069800020597000205
                  9700020597000205960002059600020596000205960002059600020596000205
                  9600020595000205950002059500010494000104940001049400010494000104
                  9300010493000104930001049300010493000104930000039200000392000003
                  910000039100000391000003910000039100000391000003910C000391850003
                  91E7000391FF000391FF000391FF000391FF000391F70003918A0004921F0004
                  9200010492000104920001049200010492000104920001049200010492000104
                  920001049200010492000104920001049200000492050003914F000391CC0003
                  91FF000391FF000391FF000391FF000391FF000391BD0003913D000391000003
                  9100000391000003910000039100000391000003910000039200010492000104
                  9300010493000104930001049300010493000104940001049400010494000104
                  9400010595000205950002059500020595000205960002059600020596000205
                  9600020596000205960002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  970002059700020597000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800020698000205970002059700020597000205
                  9600020596000205960002059600020596000205960002059600020595000205
                  9500020595000104940001049400010494000104940001049300010493000104
                  9300010493000104930001049300010493000104930001049200010491000003
                  910000039100000391000003910000039100000391000004923B010492A50104
                  92F4010492FF010492FF010492FF010492FF010492CF01049263010492090104
                  9200010492000104920001049200010492000104920001049200010492000104
                  92000104920001049233010492A2010492F8010492FF010492FF010492FF0104
                  92FF010492CF0104926E0004920F000391000003910000039100000391000003
                  9100000391000104920001049200010493000104930001049300010493000104
                  9300010493000104930001049400010494000104940001049400010595000205
                  9500020595000205950002059600020596000205960002059600020596000205
                  9600020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  97000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000206980002059700020597000205970002059600020596000205
                  9600020596000205960002059600020596000205950002059500020595000104
                  9400010494000104940001049400010493000104930001049300010493000104
                  9300010493000104930001049300010493000104930001049200000391000003
                  9100000391000003910000039100000492000104920601049246010492AC0104
                  92FB010492FF010492FF010492FF010492FC010492B601049249010492000104
                  9200010492000104920001049200010492000104920001049219010492850104
                  92E2010492FF010492FF010492FF010492FF010492D9010492730104921F0104
                  9200000492000003910000039100000391000003910000039100010492000104
                  9300010493000104930001049300010493000104930001049300010493000104
                  9300010494000104940001049400010494000105950002059500020595000205
                  9500020596000205960002059600020596000205960002059600020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000206
                  9800020597000205970002059700020596000205960002059600020596000205
                  9600020596000205960002059500020595000205950001049400010494000104
                  9400010494000104930001049300010493000104930001049300010493000104
                  9300010493000104930001049300010493000104930000039100000391000003
                  9100000391000004920001049200010492000104920B01049249010492B10104
                  92F8010492FF010492FF010492FF010492F1010492970104922B010492000104
                  9200010492000104920B01049264010492CF010492FF010492FF010492FF0104
                  92FF010492DC010492790104921E010492000104920001049200000492000003
                  9100000391000003910000039200010493000104930001049300010493000104
                  9300010493000104930001049300010493000104930001049300010494000104
                  9400010494000104940001059500020595000205950002059500020596000205
                  9600020596000205960002059600020596000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980002069800020597000205
                  9700020597000205960002059600020596000205960002059600020596000205
                  9600020595000205950002059500010494000104940001049400010494000104
                  9300010493000104930001049300010493000104930001049300010493000104
                  9300010493000104930001049300010493000104930000039100000391000004
                  9200010492000104920001049200010492000104920501049244010492A00104
                  92EA010492FF010492FF010492FF010492E80104928701049221010492510104
                  92C0010492FF010492FF010492FF010492F6010492CD0104926E0104921D0104
                  9200010492000104920001049200010492000004920000039100010493000104
                  9300010493000104930001049300010493000104930001049300010493000104
                  9300010493000104930001049300010493000104940001049400010494000104
                  9400010595000205950002059500020595000205960002059600020596000205
                  9600020596000205960002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  970002059700020597000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800020698000205970002059700020597000205
                  9600020596000205960002059600020596000205960002059600020595000205
                  9500020595000104940001049400010494000104940001049300010493000104
                  9300010493000104930001049300010493000104930001049300010493000104
                  9300010493000104930001049300010493000103920000049200010492000104
                  9200010492000104920001049200010492000104920001049331010493880104
                  93C6010493EE010493FF010493FF010493E8010493FA010493FF010493FC0104
                  93D9010493AB0104935A0104930D010492000104920001049200010492000104
                  9200010492000104920000039200010492000104930001049300010493000104
                  9300010493000104930001049300010493000104930001049300010493000104
                  9300010493000104930001049400010494000104940001049400010595000205
                  9500020595000205950002059600020596000205960002059600020596000205
                  9600020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  97000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000206980002059700020597000205970002059600020596000205
                  9600020596000205960002059600020596000205950002059500020595000104
                  9400010494000104940001049400010493000104930001049300010493000104
                  9300010493000104930001049300010493000104930001049300010493000104
                  9300010493000104930001049300010493000104930001049300010493000104
                  9300010493000104930001049300010493000104930001049321010493C10104
                  93FF010493FF010493FF010493FF010493FF010493F50104936B010493000104
                  9300010493000104930001049300010493000104930001049300010493000104
                  9300010493000104930001049300010493000104930001049300010493000104
                  9300010493000104930001049300010493000104930001049300010493000104
                  9300010494000104940001049400010494000105950002059500020595000205
                  9500020596000205960002059600020596000205960002059600020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000206
                  9800020597000205970002059700020596000205960002059600020596000205
                  9600020596000205960002059500020595000205950001049400010494000104
                  940001049400010493000104930001049317010493370104934C0104934F0104
                  933E010493250104930C01049300010493000104930001049300010493000104
                  9300010493000104940001049400010494000104940001049400010494000104
                  9300010493000104932301049379010493C0010493F3010493FF010493EB0104
                  93AE010493C9010493FF010493FF010493D8010493A001049349010493030104
                  9300010493000104940001049400010494000104940001049400010493000104
                  93000104930001049300010493000104930001049300010493030104931C0104
                  9334010493490104935001049341010493230104930301049300010494000104
                  9400010494000104940001059500020595000205950002059500020596000205
                  9600020596000205960002059600020596000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980002069800020597000205
                  9700020597000205960002059600020596000205960002059600020596000205
                  9600020595000205950002059500010494000104940001049400010494020104
                  933D010493A3010493D8010493EB010493F2010493F2010493ED010493DF0104
                  93CE010493A2010493650104934101049340010493410104930B010493000104
                  940001049400010494000104940001049400010494090104933D010493960104
                  93E6010493FF010493FF010493C9010493750104932A0104930C010493180104
                  934D010493A5010493EB010493FF010493F4010493C4010493640104931C0104
                  94000104940001049400010494000104940001049300010493010104932E0104
                  93470104933C010493540104938C010493C2010493D9010493E8010493F10104
                  93F3010493EE010493E1010493BF010493650104940F01049400010494000104
                  9400010595000205950002059500020595000205960002059600020596000205
                  9600020596000205960002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  970002059700020597000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800020698000205970002059700020597000205
                  9600020596000205960002059600020596000205960002059600020595000205
                  95000205950001049400010494000104941F0104949F010494F7010494FF0104
                  94FF010494FF010494FF010494FF010494FF010494FF010494FF010494FF0104
                  94FE010494FF010494F101049460010493000104940001049400010494000104
                  94060104942501049471010494C9010494FC010494F4010494D4010494850104
                  943F010493060104930001049300010493000104930001049300010493020104
                  941C01049466010494AE010494EB010494F9010494ED01049498010494460104
                  9411010494000104940001049400010493000104942A010494CA010494FF0104
                  94FE010494FF010494FF010494FF010494FF010494FF010494FF010494FF0104
                  94FF010494FF010494FE010494CD010494500104940201049400010595000205
                  9500020595000205950002059600020596000205960002059600020596000205
                  9600020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  97000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000206980002059700020597000205970002059600020596000205
                  9600020596000205960002059600020596000205950002059500020595000104
                  940001049446010494D1010494FF010494FF010494FF010494FF010494FF0104
                  94FF010494FF010494FF010494FF010494FF010494FF010494FF010494E90104
                  945C0104940001049400010494060104942901049465010494AA010494EA0104
                  94F0010494CC010494860104944B0104940E0104940001049400010493000104
                  9300010493000104930001049300010493000104930001049400010494000104
                  94000104942C0104946B010494AA010494E1010494F7010494CE010494860104
                  944101049416010494000104940001049423010494BC010494FF010494FF0104
                  94FF010494FF010494FF010494FF010494FF010494FF010494FF010494FF0104
                  94FF010494FF010494F6010494840104940A0105950002059500020595000205
                  9500020596000205960002059600020596000205960002059600020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000206
                  9800020597000205970002059700020596000205960002059600020596000205
                  960002059600020596000205950002059500020595000105955B010595EE0105
                  95FF010595FF010595FF010595FF010595FF010595FF010595FF010595FF0105
                  95FF010595FF010595FF010595FF010595C80104943A010595000105951D0105
                  9564010595B6010595DB010595D5010595B5010494780104943B0104940E0104
                  9400010494000104940001049400010494000104930001049300010493000205
                  9500010493000104930001049300010494000104940001049400010494000104
                  94000104940001049428010494560104949F010595C9010595DA010595CF0105
                  95890105953E010595000104940D01059593010595FE010595FF010595FF0105
                  95FF010595FF010595FF010595FF010595FF010595FF010595FF010595FF0105
                  95FF010595FF0105959D0105950E020595000205950002059500020596000205
                  9600020596000205960002059600020596000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980002069800020597000205
                  9700020597000205960002059600020596000205960002059600020596000205
                  9600020595000205950002059563010595F6010595F6010595E5010595E70105
                  95F1010595FE010595FF010595FF010595FF010595FF010595FF010595FF0105
                  95E301059583010494160205950B01059575010595D4010595F50105959B0105
                  954E0105951F0105950401049400010494000104940001049400010494000104
                  9400010494000104940002059500020595000205950002059700020595000205
                  9500020595000205950001049400010494000104940001049400010494000104
                  94000104940001049400010595100105953701059572010595D4010595EF0105
                  95A90105953B0205950001059555010595C1010595FE010595FF010595FF0105
                  95FF010595FF010595FF010595FF010595F3010595E7010595E1010595E80105
                  95FF010595A90205951602059500020595000205960002059600020596000205
                  9600020596000205960002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  970002059700020597000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800020698000205970002059700020597000205
                  9600020596000205960002059600020596000205960002059600020595000205
                  95180205956D02059556020595350205952B0205952C0205953A0205954A0205
                  956902059592020595B1020595B90205959D0205956602059523010595030205
                  9555020595D2020595FE020595F1020595500105950201059500010595000105
                  9500010494000104940001049400020596000205960002059600020596000205
                  9600020596000205960002059600020596000205960002059600020596000205
                  9600020596000205960002059600020596000104940001049400010494000104
                  940001059500010595000105950002059517020595AA020595FF020595EE0205
                  9594010595140105950F0205954802059584020595AC020595B10205959A0205
                  95720205954F0205953D0205952C020595260205952D020595410205956D0205
                  9537020595000205960002059600020596000205960002059600020596000205
                  9600020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  97000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000206980002059700020597000205970002059600020596000205
                  9600020596000205960002059600020596000205960002059500020595000205
                  9500020595000205950002059508020595000205950002059500020595000205
                  95030205950302059501020595000205951C020595AE020595FD020595FF0205
                  95FF0205957F0205950001059500010595000105950001059500010495000205
                  9600020596000205960002059600020596000205960002059600020596000205
                  9600020596000205960002059600020596000205960002059600020596000205
                  9600020596000205960002059600020596000104950001049400010595000105
                  950001059500020595000205951A020595E1020595FF020595FF020595DE0205
                  955F020595000205950002059502020595030205950102059500020595000205
                  9500020595070205950102059500020595000205950002059500020596000205
                  9600020596000205960002059600020596000205960002059600020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000206
                  9800020597000205970002059700020596000205960002059600020596130205
                  962E0205964B0205966102059669020596650205965E020596580205965E0205
                  9681020596690205960C02059500020595000205950002059500020595000205
                  960002059626020596CD020596FF020596FF020596FF020596F80205962D0205
                  9600020596000105960001059600020597000205960002059600020596000205
                  9600020596000205960E0205961E02059632020596470205965E0205966B0205
                  96700205966E02059664020596500205963A0205962502059613020596040205
                  9600020596000205960002059600020596000205970001059600010596000205
                  950002059500020596A7020596FF020596FF020596FF020596FC020596770205
                  96020205950002059500020595000205950002059500020596000205963E0205
                  968F0205966F02059661020596640205966B020596700205966D0205965E0205
                  963F020596200205960402059600020596000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980002069800020597000205
                  970002059700020596000205962502059680020596BC020596E5020596FF0205
                  96FF020596FF020596FF020596FF020596FF020596FF020596EB020596340205
                  960002059600020595000205950002059600020597000205960F020596BD0205
                  96FF020596FF020596FF020596FF020596D00205960B02059600020597000205
                  9700020597000205970002059600020596000205962802059657020596930205
                  96B6020596CD020596EA020596FF020596FF020596FF020596FF020596FF0205
                  96FF020596FF020596F3020596D8020596BD020596A50205966E020596390205
                  960B020596000205960002059700020597000205970002059600020596000205
                  9667020596FF020596FF020596FF020596FF020596F902059656020596000205
                  9600020596000205950002059600020596000205960E020596A4020596FF0205
                  96FF020596FF020596FF020596FF020596FF020596FF020596F8020596D00205
                  96A60205964B0205960302059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  970002059700020597000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800020698000205970002059700020597040205
                  966A020596D8020596FF020596FF020596FF020596FF020596FF020596FF0205
                  96FF020596FF020596FF020596E5020596400205960002059700020597000205
                  960002059600020597000205970002059669020596FF020596FF020596FF0205
                  96FF020596FF0205968A02059600020596000205970002059700020597000205
                  97130205965C020596A9020596DA020596F8020596FF020596FF020596FF0205
                  96FF020596FF020596FF020596FF020596FF020596FF020596FF020596FF0205
                  96FF020596FF020596FF020596FF020596FF020596E6020596C2020596780205
                  962D02059700020597000205970002059600020596000205962A020596EE0205
                  96FF020596FF020596FF020596FF020596C40205961002059600020596000205
                  96000205970002059700020596000205960D020596AA020596FF020596FF0205
                  96FF020596FF020596FF020596FF020596FF020596FF020596FF020596F10205
                  96A7020597230205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  97000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  98000306980002069800020597000205970A02059790020597F9020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597FF020597FF020597FF0205
                  97E70205974B0205960002059600020597000205970102059700020597000205
                  970002059703020597BA020597FF020597FF020597FF020597FF020597FB0205
                  97470205970002069700020597000205971C02059777020597CF020597F60205
                  97FF020597FF020597FF020597FF020597FF020597FF020597FF020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597FF020597FF020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597FE020597E90205979B0205
                  97390205970102059700020596000205960C020597B3020597FF020597FF0205
                  97FF020597FF020597F50205974C020597000205970002059700020597010205
                  9700020697000205960002059614020597B2020597FF020597FF020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597FF020597FF020597D00205
                  9735020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000206
                  98000205970302059792020597FF020597FF020597FF020597FF020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597D502059741020597000205
                  9600020697000205972C02059738020597050205970002059700020597380205
                  97E9020597FF020597FF020597FF020597FF020597B90205970E020697000206
                  970F0205976A020597DD020597FF020597FF020597FF020597FF020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597FF020597FF020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597FF020597FF020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597FF020597F60205979B0205
                  9726020697000205970002059757020597FE020597FF020597FF020597FF0205
                  97FF0205979102059700020597000205970002059725020597450206970A0206
                  980002059600020597120205979D020597F8020597FF020597FF020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597FF020597D5020597280205
                  9700020597000205970002059700020597000205970002059700020597000205
                  9700020597000205970002059700020597000205970002059700FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980002069800020597730205
                  97FF020597FF020597FF020597FF020597FF020597FF020597FF020597FF0205
                  97FF020597DC020597980205972402059700020597000206980C0206976E0205
                  97CF0205973E02069800020698000205970002059772020597FF020597FF0205
                  97FF020597FF020597F702059748020597000206973D020697B8020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597FF020597FF020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597FF020597FF020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597FF020597FF020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597FF020597DF0206976D0206
                  980C02059708020597B4020597FF020597FF020597FF020597FF020697C80206
                  9818020698000206980002059706020597AF020697A80206982B020698000205
                  97000205970502059762020597C5020597EE020597FF020597FF020597FF0205
                  97FF020597FF020597FF020597FF020597FF020597C702059713020597000205
                  9700020597000205970002059700020597000205970002059700020597000205
                  970002059700020597000205970002059700FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  98000306980003069800030698000206984E020698EF020698CE0206989C0206
                  98800206987A0206987A0206987B0206987D0206987A020698610206982B0206
                  980003059700030698000206982C020698B0020698FF020698BD020698480206
                  9867020698040306980E020698BD020698FF020698FF020698FF020698FF0206
                  98760306980202069874020698ED020698FF020698FF020698FF020698FF0206
                  98FF020698FF020698FF020698FF020698FF020698FF020698FF020698FF0206
                  98FF020698FF020698FF020698FF020698FF020698FF020698FF020698FF0206
                  98FF020698FF020698FF020698FF020698FF020698FF020698FF020698FF0206
                  98FF020698FF020698FF020698FF020698FF020698FF020698AD020698250306
                  9821020698DF020698FF020698FF020698FF020698FA03069850020698000206
                  984E0206985E02069875020698FF020698DD0206986603069800030597000206
                  97000206980C020698450206986A020698760206987402069872020698710206
                  987602069884020698AD020698EE0206989E0206980A02069800020698000206
                  9800020698000206980002069800020698000206980002069800020698000206
                  98000206980002069800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00030698000306980003069800030698000306
                  9800030698000306980003069800030698000306980003069800030698000306
                  98000306980603069864030698550206981E0206980102069800020698000206
                  9800020698000306980002069800020698000206980002069800030698000306
                  9841030698D8030698FF030698FF0306988803069866030698CA030698050306
                  9853030698FA030698FF030698FF030698FF0306987F030698170306989F0306
                  98FF030698FF030698FF030698FF030698FF030698FF030698FF030698FF0306
                  98FF030698FF030698FF030698FF030698FF030698FF030698FF030698FF0306
                  98FF030698FF030698FF030698FF030698FF030698FF030698FF030698FF0306
                  98FF030698FF030698FF030698FF030698FF030698FF030698FF030698FF0306
                  98FF030698FF030698FF030698FF030698FF030698D6030698380306982C0306
                  98D3030698FF030698FF030698FF030698B70306990A0306987C030698A50306
                  984C030698EA030698FF030698FA030698860306990702069800020698000206
                  9800020698000306980003069800020698000206980002069800020698000206
                  980A020698300306986903069824030698000306980003069800030699000306
                  9900030799000307990003079900030799000307990003079900030799000307
                  9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF0004079B0004079B0004079B0004079B0004079B0004079B000407
                  9B0004079B0003079A0003069A0003069A000306990003069800030698010306
                  98040306980003069900030699000306990003069901030699330306986A0306
                  981C0206980003069900020698000306990003069934030698DB030698FF0306
                  98FF030698FF030698820306980B030698160306991C030698D3030698FF0306
                  98FF030698D90306985803069820030698B8030698FF030698FF030698FF0306
                  98FF030698FF030698FF030698FF030698FF030698FF030698FF030698FF0306
                  98FF030698FF030698FF030698FF030698FF030698FF030698FF030698FF0306
                  98FF030698FF030698FF030698FF030698FF030698FF030698FF030698FF0306
                  98FF030698FF030698FF030698FF030698FF030698FF030698FF030698FF0306
                  98FF030698FF030698FF030698FF030698EB030698480306981C030698A70306
                  98FA030698FF030698FF030699690306980B030698110306983B030698E60306
                  98FF030698FF030698FE0306997C030699000306990002069800020698000306
                  9800030698600306995D03069914030699010306990003069900030699000306
                  980003069804030698000306990003069A0003069A0003069A0003079A000307
                  9A0003079A0003079A0003079A0003079A0003079A0003079A00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000407
                  9B0004079B0004079B0004079B0004079B0004079B0004079B0004079B000307
                  9A0003069A0003069A0003069A00030699000306980003069909030699180306
                  99390306996A0306998B030699B3030699EF0306998E03069902030699030306
                  9903030699000306990F030699B6030699FF030699FF030699FF030699FF0306
                  996F030699000306990D030699AA030699F4030699D20306997C030699130306
                  981D030699C3030699FF030699FF030699FF030699FF030699FF030699FF0306
                  99FF030699FF030699FF030699FF030699FF030699FF030699FF030699FF0306
                  99FF030699FF030699FF030699FF030699FF030699FF030699FF030699FF0306
                  99FF030699FF030699FF030699FF030699FF030699FF030699FF030699FF0306
                  99FF030699FF030699FF030699FF030699FF030699FF030699FF030699FF0306
                  99FF030699FF030699FF030699F103069956030698000306994C030699AF0306
                  99EB030699F00306994A0306990003069933030699E2030699FF030699FF0306
                  99FF030699F403069942030699000306990002069800030698000306993B0306
                  99E8030699D7030699A3030699840306995E0306992E03069912030699030306
                  99000306990003069A0003069A0003069A0003079A0003079A0003079A000307
                  9A0003079A0003079A0003079A0003079A00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0004079B0004079B000407
                  9B0004079B0004079B0004079B0004079B0004079B0003079A0003069A000306
                  9A0003069A000306992403069968030699AA030699D6030699FD030699FF0306
                  99FF030699FF030699D90306991B03069900030699730306998E030699010306
                  9953030699FB030699FF030699FF030699FF030699FE0306995F030699000306
                  994D0306998E0306994F030699110306990003069916030699C6030699FF0306
                  99FF030699FF030699FF030699FF030699FF030699FF030699FF030699FF0306
                  99FF030699FF030699FF030699FF030699FF030699FF030699FF030699FF0306
                  99FF030699FF030699FF030699FF030699FF030699FF030699FF030699FF0306
                  99FF030699FF030699FF030699FF030699FF030699FF030699FF030699FF0306
                  99FF030699FF030699FF030699FF030699FF030699FF030699FF030699FF0306
                  99FF030699FF030699EF03069951030699000306990003069931030699730306
                  99820306990A03069923030699DB030699FF030699FF030699FF030699FF0306
                  99A7030699080306990003069900030699000306990003069986030699FF0306
                  99FF030699FF030699FF030699F4030699C703069993030699460306990B0306
                  9A0003069A0003069A0003079A0003079A0003079A0003079A0003079A000307
                  9A0003079A0003079A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF0004079B0004079B0004079B0004079B000407
                  9B0004079B0004079B0004079B0003079A0003069A0003069A0A03069A720306
                  9AD603069AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF0306
                  9A5C0306990003069A0003069A8B03069AAA03069A0803069A9503069AFF0306
                  9AFF03069AFF03069AFF03069AF203069A4B030699000306990C030699000306
                  990003069A0003069A1103069AB403069AFF03069AFF03069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF0306
                  9AFF03069AE903069A4203069A00030699000306990003069905030699060306
                  990C03069AC303069AFF03069AFF03069AFF03069AFF03069ADE03069A200306
                  9A0003069A0003069900030699000306991403069AD403069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AF703069AAD03069A3803069A000306
                  9A0003079A0003079A0003079A0003079A0003079A0003079A0003079A000307
                  9A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF0004079B0004079B0004079B0004079B0004079B0004079B000407
                  9B0004079B0003079A0003069A1E03069AAC03069AFF03069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AFF03069AA103069A04030699000306
                  9A0003069A0903069A0B03079A0F03069ABA03069AFF03069AFF03069AFF0306
                  9AFF03069AD503069A2103069900030699000306990003079A0003079A000306
                  9A8F03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF03069AFF0306
                  9AD003079B2203079A0003069900030699000306990003069A0003069A8E0306
                  9AFF03069AFF03069AFF03069AFF03069AFB03069A4103069A0003069A000307
                  9B0003079A0003069A0003069A4603069AF203069AFF03069AFF03069AFF0306
                  9AFF03069AFF03069AFF03069AFF03069AE503069A5A03069A0003079A000307
                  9A0003079A0003079A0003079A0003079A0003079A0003079A00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000407
                  9B0004079B0004079B0004079B0004079B0004079B0004079B0004079B000307
                  9A1C03079AC103079AFF03079AFF03079AFF03079AFF03079AFF03079AFF0307
                  9AFF03079AFF03079ABB03069A1703069A0003079B0003079B0003069A000307
                  9A0003079A2103079ADA03079AFF03079AFF03079AFF03079AFF03079AA10307
                  9A0103079A000306990003079A0003079A0003079A5703079AFA03079AFF0307
                  9AFF03079AFF03079AFF03079AFF03079AFF03079AFF03079AFF03079AFF0307
                  9AFF03079AFF03079AFF03079AFF03079AFF03079AFF03079AFF03079AFF0307
                  9AFF03079AFF03079AFF03079AFF03079AFF03079AFF03079AFF03079AFF0307
                  9AFF03079AFF03079AFF03079AFF03079AFF03079AFF03079AFF03079AFF0307
                  9AFF03079AFF03079AFF03079AFF03079AFF03079AFF03079AFF03079AFF0307
                  9AFF03079AFF03079AFF03079AFF03079AFF03079AFF03079AFF03079B9F0307
                  9B0703079B00030699000306990003069A0003079A5303079AF603079AFF0307
                  9AFF03079AFF03079AFF03079A6703079A0003079A0003079B0003079B000306
                  9A0003069A0003079A6C03079AFA03079AFF03079AFF03079AFF03079AFF0307
                  9AFF03079AFF03079AFF03079AF103079A5F03079A0003079A0003079A000307
                  9A0003079A0003079A0003079A0003079A00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0004079B0004079B000407
                  9B0004079B0004079B0004079B0004079B0004079B0503079BA503079BFF0307
                  9BFF03079BFF03079BFF03079BFF03079BFF03079BFF03079BFD03079BB50307
                  9A1C03069A0004079B0003079B0E03079B0104079B0004079B0004079B380307
                  9BF703079BFF03079BFF03079BFF03079BF703079B4E03079A0003079A000407
                  9B0004079B0004079B1E03079BCF03079BFF03079BF503079BAB03079BA30307
                  9BA503079BA503079BA503079BA503079BA503079BA503079BA503079BA50307
                  9BA503079BA503079BA503079BA503079BA503079BA503079BA503079BA50307
                  9BA503079BA503079BA503079BA503079BA503079BA503079BA503079BA50307
                  9BA503079BA503079BA503079BA503079BA503079BA503079BA503079BA50307
                  9BA503079BA503079BA503079BA503079BA503079BA503079BA503079BA50307
                  9BA503079BA503079BA403079BD903079BFF03079BFE03079B5503079B000307
                  9B0003079B0003079B0003079B0803079BC503079BFF03079BFF03079BFF0307
                  9BFF03079B8A03079B0003079B0003079B0003079B0B04079B0803069A000307
                  9A0003079B6803079BEA03079BFF03079BFF03079BFF03079BFF03079BFF0307
                  9BFF03079BFF03079BE504079B3B04079B0004079B0004079B0004079B000407
                  9B0004079B0004079B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF0004079B0004079B0004079B0004079B000407
                  9B0004079B0004079B0004079B6204079BF804079BFF04079BFF04079BFF0407
                  9BFF04079BFC04079BEC04079BCC04079B7204079B0D03079A0004079B000407
                  9B5604079B4903079B0004079B0004079B0004079B5404079BFF04079BFF0407
                  9BFF04079BFF04079BA804079B0104079B0004079B0004079B0004079B000407
                  9B8404079BFF04079BFF04079BE304079B0F03079B0003079B0003079B000307
                  9B0003079B0003079B0003079B0003079B0003079B0003079B0003079B000307
                  9B0003079B0003079B0003079B0003079B0003079B0003079B0003079B000307
                  9B0003079B0003079B0003079B0003079B0003079B0003079B0003079B000307
                  9B0003079B0003079B0003079B0003079B0003079B0003079B0003079B000307
                  9B0003079B0003079B0003079B0003079B0003079B0003079B0003079B000307
                  9B0004079B9304079BFF04079BFF04079BD004079B1804079C0004079C000307
                  9B0003079B0004079B4C04079BF604079BFF04079BFF04079BFF04079BA60407
                  9B0004079B0004079B0004079B1B04079B7904079B1103079B0004079B000407
                  9B3904079B9E04079BD904079BF004079BFE04079BFF04079BFF04079BFF0407
                  9BFF04079BB704079B0A04079B0004079B0004079B0004079B0004079B000407
                  9B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF0004079C0004079C0004079C0004079C0004079C0004079C000407
                  9C1504079CD104079CFF04079CFF04079CD704079CB404079C8D04079B600407
                  9B4204079B1504079B0003079C0004079C0004079C3B04079CE004079C4A0407
                  9B0004079C0004079C0004079C7E04079CFF04079CFF04079CFF04079CCC0407
                  9B1C04079B0004079C0004079C0004079C0004079C3204079CF004079CFF0407
                  9CFF04079CE504079C1504079C0003079B0003079B0003079B0003079B000307
                  9B0003079B0003079B0003079B0003079B0003079B0003079B0003079B000307
                  9B0003079B0003079B0003079B0003079B0003079B0003079B0003079B000307
                  9B0003079B0003079B0003079B0003079B0003079B0003079B0003079B000307
                  9B0003079B0003079B0003079B0003079B0003079B0003079B0003079B000307
                  9B0003079B0003079B0003079B0003079B0003079B0004079C0004079C960407
                  9CFF04079CFF04079CFF04079C7B04079C0004079C0004079C0004079B000407
                  9B0004079C7504079CFF04079CFF04079CFF04079CD704079C1104079C000407
                  9B0004079C0D04079CD104079C9804079C0103079C0004079B0004079B000407
                  9B2704079B4804079B6204079C9504079CBB04079CE504079CFF04079CFF0407
                  9C5A04079C0004079C0004079C0004079C0004079C0004079C00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000407
                  9D0004079D0004079D0004079D0004079D0004079D0004079C7804079CFF0407
                  9CAB04079C5304079C2504079C0A04079C0504079B0004079B0004079B000407
                  9B0004079C0004079C1B04079CCE04079CFE04079C5704079D0004079C000407
                  9C0904079CCB04079CFF04079CFF04079CCA04079C2904079B0004079B000407
                  9C0004079C0004079C0004079C9804079CFF04079CFF04079CFF04079CE40407
                  9C0E04079C0004079C0004079C0004079C0004079C0004079C0004079C000407
                  9C0004079C0004079C0004079C0004079C0004079C0004079C0004079C000407
                  9C0004079C0004079C0004079C0004079C0004079C0004079C0004079C000407
                  9C0004079C0004079C0004079C0004079C0004079C0004079C0004079C000407
                  9C0004079C0004079C0004079C0004079C0004079C0004079C0004079C000407
                  9C0004079C0004079C0004079C0004079C0004079C9204079CFF04079CFF0407
                  9CFF04079CE304079C1C04079C0004079C0004079B0004079B0004079C030407
                  9C7E04079CFB04079CFF04079CFC04079C4E04079D0004079D0004079C170407
                  9CD904079CFE04079C6204079C0004079C0004079B0004079B0004079C000407
                  9C1004079C0604079C1104079C2E04079C7104079CD804079CD504079C180407
                  9C0004079C0004079C0004079C0004079C00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0004079D0004079D000407
                  9D0004079D0004079D0004079D1904079CA104079C6104079C0B04079C000407
                  9D0004079D2204079C8404079C2104079C0004079B0004079C0004079C000407
                  9C9504079CFF04079CFF04079C8A04079D0004079D0004079C4804079CFF0407
                  9CFE04079CAF04079C2204079C0004079B0004079B0004079C0004079C000407
                  9C2904079CEC04079CFF04079CFF04079CFF04079CEA04079C4304079C330407
                  9C3504079C3504079C3904079C3B04079C3A04079C3A04079C3A04079C3A0407
                  9C3A04079C3A04079C3A04079C3A04079C3A04079C3A04079C3A04079C3A0407
                  9C3A04079C3A04079C3A04079C3A04079C3A04079C3A04079C3A04079C3A0407
                  9C3A04079C3A04079C3A04079C3A04079C3A04079C3A04079C3A04079C3A0407
                  9C3A04079C3A04079C3A04079C3A04079C3A04079C3B04079C3A04079C360407
                  9C3504079C3504079C3304079CAA04079CFF04079CFF04079CFF04079CFF0407
                  9C7604079D0004079D0004079C0004079B0004079C0004079C0304079C600407
                  9CE704079CFF04079CA704079D0004079D0004079C3E04079CED04079CFF0407
                  9CDD04079D2E04079D0004079D0004079D0004079D0104079C7104079C660407
                  9D0004079C0004079C0004079C2004079C9704079C4504079C0004079C000407
                  9C0004079C0004079C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF0004079D0004079D0004079D0004079D000407
                  9D0004079D0704079D1604079C0004079C0004079D0004079D2D04079DC90407
                  9DB704079D0904079D0004089D0004089D0004089D4504079DEE04079DFF0407
                  9DFF04079DC004079D0304079D0D04079DC604079DE004079D6904079D090407
                  9C0004079C0004079B0004079D0004079D0004079D0004079D7904079DFF0407
                  9DFF04079DFF04079DFF04079DFF04079DFB04079DFA04079DFB04079DFB0407
                  9DEF04079DE804079DEA04079DEA04079DEA04079DEA04079DEA04079DEA0407
                  9DEA04079DEA04079DEA04079DEA04079DEA04079DEA04079DEA04079DEA0407
                  9DEA04079DEA04079DEA04079DEA04079DEA04079DEA04079DEA04079DEA0407
                  9DEA04079DEA04079DEA04079DEA04079DEA04079DEA04079DEA04079DEA0407
                  9DEA04079DEA04079DEA04079DE904079DEA04079DF704079DFB04079DFB0407
                  9DFA04079DFD04079DFF04079DFF04079DFF04079DFF04079DC904079D070407
                  9D0004079D0004079B0004079C0004079C0004079C0004079D2C04079DA50407
                  9DE504079D5504079D0004079D7604079DFD04079DFF04079DFF04079D960407
                  9D0004079D5504079D7804079D0004079D6004079DF104079D7604079D0A0407
                  9D0004079C0004079D0304079D0904079D0004089D0004089D0004089D000408
                  9D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF0004079D0004079D0004079D0004079D0004079D5204079D340407
                  9D0004089D0004089D0A04079D6704079DDD04079DFF04079D8A04079D000407
                  9D0004089D0004089D0404089D9C04079DFF04079DFF04079DFF04079DD60407
                  9D1704079D3904079D8504079D2004079D0004079D0004079C0004079C000407
                  9D0004079D0004079D0004079D0A04079DC804079DFF04079DFF04079DFF0407
                  9DFF04079DFF04079DFF04079DFF04079DFF04079DFC04079D7604079D3C0407
                  9D4104079D4104079D4104079D4104079D4104079D4104079D4104079D410407
                  9D4104079D4104079D4104079D4104079D4104079D4104079D4104079D410407
                  9D4104079D4104079D4104079D4104079D4104079D4104079D4104079D410407
                  9D4104079D4104079D4104079D4104079D4104079D4104079D4104079D410407
                  9D4104079D3F04079D4B04079DD604079DFF04079DFF04079DFF04079DFF0407
                  9DFF04079DFF04079DFF04079DFF04079DF304079D4A04079D0004079D000407
                  9D0004079C0004079C0004079C0004079D0004079D0004079D4D04079D660407
                  9D0004079D9F04079DFF04079DFF04079DFF04079DE104089E2304079D830407
                  9DBE04079D0004079D3704079DE904079DFF04079DA804079D3104089D000407
                  9D0004079D3B04079D4C04089D0004089D0004089D0004089D00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000408
                  9E0004089E0004089E0004089E0004089E8604089E5304089E0004089E2A0408
                  9EA804089EFF04089EFF04089EFA04089E5D04089E0004089E0004089E000408
                  9E2404089ED604089EFF04089EFF04089EFF04089EEA04089E3E04089D060407
                  9D0004079D0004079D0004079D0004079C0004089D0004089E0004089E000408
                  9E0004089E3D04089EF004089EFF04089EFF04089EFF04089EFF04089EFF0408
                  9EFF04089EFF04089EFF04089EF904089E4004089E0004079D0004079D000407
                  9D0004079D0004079D0004079D0004079D0004079D0004079D0004079D000407
                  9D0004079D0004079D0004079D0004079D0004079D0004079D0004079D000407
                  9D0004079D0004079D0004079D0004079D0004079D0004079D0004079D000407
                  9D0004079D0004079D0004079D0004079D0004079D0004079D0004079D000408
                  9E0C04089EC404089EFF04089EFF04089EFF04089EFF04089EFF04089EFF0408
                  9EFF04089EFF04089EFF04089E8504089E0004089E0004089E0004089D000407
                  9C0004079C0004079D0004079D0004079D0004089D0004089E0604089EBE0408
                  9EFF04089EFF04089EFF04089EFF04089E6704089D0804089D1604089D000408
                  9E1B04089ED204089EFF04089EFF04089EE204089E6A04089E0004089E560408
                  9E7B04089D0004089D0004089D0004089D00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0004089E0004089E000408
                  9E0004089E0004089E0804089E0004089E5104089EDB04089EFF04089EFF0408
                  9EFF04089EE604089E3704089E0004089E0004089E0004089E4704089EF80408
                  9EFF04089EFF04089EFF04089EFC04089E5B04089E0004079D0004079D000407
                  9D0004079C0004089D0004089E0004089E0004089E0004089E0004089E730408
                  9EFC04089EFF04089EFF04089EFF04089EFF04089EFF04089EFF04089EFF0408
                  9EFF04089EFA04089E4D04089E0005089E0005089E0005089E0005089E000508
                  9E0005089E0005089E0005089E0005089E0005089E0005089E0005089E000508
                  9E0005089E0005089E0005089E0005089E0005089E0005089E0005089E000508
                  9E0005089E0005089E0005089E0005089E0005089E0005089E0005089E000508
                  9E0005089E0005089E0005089E0005089E0005089E0004089E1404089EC80408
                  9EFF04089EFF04089EFF04089EFF04089EFF04089EFF04089EFF04089EFF0408
                  9EFF04089EC004089E0D04089E0004089E0004089E0004089D0004079C000407
                  9D0004079D0004079D0004089D0004089E1B04089ED204089EFF04089EFF0408
                  9EFF04089EFF04089E9004089E0004089D0004089D0004089E0404089EB40408
                  9EFF04089EFF04089EFF04089EFC04089E9F05089E1504089E0504089D000408
                  9D0004089D0004089D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF0004089E0004089E0004089E0004089E000508
                  9F0005089F6605089FF305089FFF05089FFF05089FFF05089FFF05089FC60508
                  9E1305089E0005089F0005089F0005089F5605089FFF05089FFF05089FFF0508
                  9FFF05089FFF05089F6705089F0005089F0005089F0005089E0004079C000508
                  9E0005089F0005089F0005089F0005089F0305089FAD05089FFF05089FFF0508
                  9FFF05089FFF05089FFF05089FFF05089FFF05089FFF05089FFF05089FF90508
                  9F4705089F0105089F0105089F0105089F0105089F0105089F0105089F010508
                  9F0105089F0105089F0105089F0105089F0105089F0105089F0105089F010508
                  9F0105089F0105089F0105089F0105089F0105089F0105089F0105089F010508
                  9F0105089F0105089F0105089F0105089F0105089F0105089F0105089F010508
                  9F0105089F0105089F0105089F0105089F1405089FC605089FFF05089FFF0508
                  9FFF05089FFF05089FFF05089FFF05089FFF05089FFF05089FFF05089FE50508
                  9F3405089F0005089F0005089F0005089E0004079C0004079D0004079D000508
                  9F0005089F0005089F2605089FD805089FFF05089FFF05089FFF05089FFF0508
                  9F9605089F0405089F0004089D0004089E0005089F7405089FFD05089FFF0508
                  9FFF05089FFF05089FFF05089FBC05089F1D05089F0005089F0005089F000508
                  9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000508A0000508A0000508A00005089F0005089F5E05089FF90508
                  9FFF05089FFF05089FFF05089FFF05089FFF05089F7905089F0005089F000508
                  9F0005089F0005089F4B05089FFB05089FFF05089FFF05089FFF05089FFF0508
                  9F6205089F0005089F0005089F0005089F0005089F0005089F0005089F000508
                  9F0005089F0005089F1805089FCF05089FFF05089FFF05089FFF05089FFF0508
                  9FFF05089FFF05089FFF05089FFF05089FFF05089FFD05089FB805089F990508
                  9F9D05089F9D05089FA505089FAB05089FAA05089FAB05089FA505089F9D0508
                  9F9D05089F9D05089FA305089FAB05089FAA05089FAB05089FA605089F9D0508
                  9F9D05089F9D05089FA205089FAA05089FAA05089FAB05089FA705089F9E0508
                  9F9D05089F9D05089FA105089FAA05089FAA05089FAB05089FA805089F9E0508
                  9F9D05089F9B05089FA105089FEA05089FFF05089FFF05089FFF05089FFF0508
                  9FFF05089FFF05089FFF05089FFF05089FFF05089FF505089F4E05089F000508
                  9F0005089F0005089F0005089F0005089F0005089F0005089F0005089F000508
                  9F1E05089FD405089FFF05089FFF05089FFF05089FFF05089F8E05089F020508
                  9F0005089F0005089F0005089F2605089FE505089FFF05089FFF05089FFF0508
                  9FFF05089FFF05089FB905089F1005089F0005089F0005089F00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000508
                  A0000508A0000508A00005089F2F05089FE405089FFF05089FFF05089FFF0508
                  9FFF05089FFF05089FDD05089F2305089F0005089F0005089F0005089F000508
                  9F3105089FE505089FFF05089FFF05089FFF05089FF205089F4B05089F000508
                  9F0005089F0005089F0005089F0005089F0005089F0005089F0005089F000508
                  9F2805089FDA05089FFF05089FFF05089FFF05089FFF05089FFF05089FFF0508
                  9FFF05089FFF05089FFF05089FFF05089FFF05089FFF05089FFF05089FFF0508
                  9FE505089FC905089FCC05089FC705089FE305089FFF05089FFF05089FFF0508
                  9FEA05089FC705089FCD05089FC905089FDE05089FFF05089FFF05089FFF0508
                  9FED05089FCB05089FCD05089FC905089FD805089FFF05089FFF05089FFF0508
                  9FF205089FCC05089FCB05089FC905089FD505089FFE05089FFF05089FFF0508
                  9FFF05089FFF05089FFF05089FFF05089FFF05089FFF05089FFF05089FFF0508
                  9FFF05089FFF05089FFF05089FFF0508A0650508A0000508A0000508A0000508
                  A0000508A00005089F0005089F0005089F0005089F0005089F0905089FC30508
                  9FFF05089FFF05089FFF05089FFF05089F7205089F0005089F000508A0000508
                  A00005089F0005089F8605089FFF05089FFF05089FFF05089FFF05089FFF0508
                  9FFF05089F8B0508A0030508A0000508A000FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000509A0000509A0000509
                  A0090508A0AD0508A0FF0508A0FF0508A0FF0508A0FF0508A0FF0508A0F80508
                  A05905089F000508A0000508A0010508A0000508A0000508A0170508A0C40508
                  A0FF0508A0FF0508A0FF0508A0DB0508A0240508A0000508A0000508A0000508
                  A0000508A0000508A0000508A0000508A0000508A0000508A03C0508A0E80508
                  A0FF0508A0FF0508A0FF0508A0FF0508A0FF0508A0FF0508A0FF0508A0FF0508
                  A0FF0508A0FF0508A0FF0508A0FF0508A0FF0508A0FF0508A06F0508A0070508
                  A00B0508A0040508A06A0508A0FF0508A0FF0508A0FF0508A08A0508A0030508
                  A00C0508A0070508A0540508A0FC0508A0FF0508A0FF0508A0940508A0090508
                  A00C0508A0070508A0390508A0EA0508A0FF0508A0FF0508A0A80508A00C0508
                  A0090508A0070508A0310508A0DF0508A0FF0508A0FF0508A0FF0508A0FF0508
                  A0FF0508A0FF0508A0FF0508A0FF0508A0FF0508A0FF0508A0FF0508A0FF0508
                  A0FF0508A0FF0508A0870508A0000508A0000508A0000508A0000508A0000508
                  A0000508A0000508A0000508A0000508A0000508A09D0508A0FF0508A0FF0508
                  A0FF0508A0F80508A0480508A0000508A0000508A0000508A0040509A0000508
                  A0120508A0BD0508A0FF0508A0FF0508A0FF0508A0FF0508A0FF0508A0F10508
                  A03E0508A0000508A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000509A0000509A0000509A0460509A0F30509
                  A0FF0509A0FF0509A0FF0509A0FF0509A0F20509A0660508A0000509A0110509
                  A0450509A0130509A0000509A0000509A0070509A0A80509A0FF0509A0FF0509
                  A0FF0509A0AE0509A0030509A0000509A0000509A0000509A0000509A0000509
                  A0000509A0000509A0000509A0000509A04F0509A0F40509A0FF0509A0FF0509
                  A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509
                  A0FF0509A0FF0509A0FF0509A0FF0509A0670509A0000508A0000509A0000509
                  A0600509A0FF0509A0FF0509A0FF0509A0830509A0000508A0000509A0000509
                  A04A0509A0FC0509A0FF0509A0FF0509A08E0509A0000508A0000509A0000509
                  A02E0509A0E90509A0FF0509A0FF0509A0A40509A0000508A0000508A0000509
                  A0250509A0DD0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509
                  A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509
                  A09D0509A0010509A0000509A0000509A0000509A0000508A0000508A0000508
                  A0000508A0000508A0000509A0500509A0F50509A0FF0509A0FF0509A0DE0508
                  A02A0508A0000508A0000508A0000509A0450509A02E0509A0000508A01D0509
                  A0B60509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A09B0509A0060509
                  A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000509A1000509A1000509A1900509A0FF0509A0FF0509A0FF0509
                  A0FF0509A0D50509A04A0509A0000509A0000509A0440509A0B30509A01F0509
                  A0000509A0000509A0010509A0970509A0FF0509A0FF0509A0F30509A04D0509
                  A0000509A0000509A0000509A0000509A0000509A0000509A0000509A0000509
                  A0000509A0000509A0590509A0FB0509A0FF0509A0FF0509A0FF0509A0FF0509
                  A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509
                  A0FF0509A0FF0509A06C0509A0000509A0000509A0000509A0640509A0FF0509
                  A0FF0509A0FF0509A0860509A0000509A0000509A0000509A0500509A0FC0509
                  A0FF0509A0FF0509A0920509A0000509A0000509A0000509A0340509A0EA0509
                  A0FF0509A0FF0509A0A80509A0060509A0000509A0000509A02A0509A0DF0509
                  A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509
                  A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0FF0509A0A70509A0060509
                  A0000509A0000509A0000509A0000509A0000509A0000509A0000509A0000509
                  A0000509A0070509A0BD0509A0FF0509A0FF0509A0CD0509A01E0509A0000509
                  A1000509A1000509A18F0509A0950509A0020508A0000509A0100509A0880509
                  A0F60509A0FF0509A0FF0509A0FF0509A0D40509A1200509A100FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000509
                  A1000509A1110509A1BB0509A1FF0509A1FF0509A1F60509A19A0509A1180509
                  A0000509A0000509A1000509A1900509A1F30609A1310609A1000509A1000509
                  A1000509A18D0509A1FF0509A1FF0509A1AD0509A1040509A1000509A1000509
                  A1000509A1000509A1000509A1000509A1000509A1000509A1000509A1000509
                  A15C0509A1FD0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509
                  A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509
                  A16C0509A1000509A1000509A1000509A1640509A1FF0509A1FF0509A1FF0509
                  A1860509A1000509A1000509A1000509A1500509A1FC0509A1FF0509A1FF0509
                  A1920509A1000509A1000509A1000509A1340509A1EA0509A1FF0509A1FF0509
                  A1A80509A1060509A1000509A1000509A12A0509A1DF0509A1FF0509A1FF0509
                  A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509
                  A1FF0509A1FF0509A1FF0509A1FF0509A1AC0509A1080509A1000509A1000509
                  A1000509A1000509A0000509A0000509A0000509A0000509A0000509A0000509
                  A14A0509A1FA0509A1FF0509A1C70509A11B0509A1000509A1000509A10C0509
                  A1BC0509A1ED0509A11F0609A1000609A1000509A0000509A1470509A1CE0509
                  A1FF0509A1FF0509A1FD0509A14A0509A100FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000609A2000609A22E0509
                  A1E60509A1FF0509A1E70509A15C0509A1000609A12A0609A1560609A2070609
                  A21C0509A1DE0509A1FF0609A1840609A1000509A1000509A1000509A18C0509
                  A1FF0509A1E90509A12C0509A1000509A1000509A1000509A1000509A1000509
                  A1000509A1000509A1000509A1000509A1000509A1000509A15D0509A1FE0509
                  A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509
                  A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A16C0509A1000509
                  A1000509A1000509A1640509A1FF0509A1FF0509A1FF0509A1860509A1000509
                  A1000509A1000509A1500509A1FC0509A1FF0509A1FF0509A1920509A1000509
                  A1000509A1000509A1340509A1EA0509A1FF0509A1FF0509A1A80509A1060509
                  A1000509A1000509A12A0509A1DF0509A1FF0509A1FF0509A1FF0509A1FF0509
                  A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509A1FF0509
                  A1FF0509A1FF0509A1AC0509A1090509A1000509A1000509A1000509A1000509
                  A1000509A1000509A1000509A1000509A1000509A1000509A1000509A1900509
                  A1FF0509A1C80509A11B0509A1000509A1000509A14A0509A1F50509A1FF0509
                  A16E0609A1030609A1580609A1690509A1050509A1170509A19F0509A1FF0509
                  A1FF0509A17B0509A100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000609A2000609A2440609A2FF0609A2DC0609
                  A2410609A2000609A1000609A2910609A2FF0609A21F0609A2540609A2FF0609
                  A2FF0609A2E40609A2260609A2000609A2000609A2A00609A2FF0609A25D0609
                  A2000609A2000609A2000609A2000609A2000609A2000609A2000609A2000609
                  A2000609A2000609A2000609A2000609A25D0609A2FE0609A2FF0609A2FF0609
                  A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609
                  A2FF0609A2FF0609A2FF0609A2FF0609A26C0609A2000609A2000609A2000609
                  A2640609A2FF0609A2FF0609A2FF0609A2860609A2000609A2000609A2000609
                  A2500609A2FC0609A2FF0609A2FF0609A2920609A2000609A2000609A2000609
                  A2340609A2EA0609A2FF0609A2FF0609A2A80609A2060609A2000609A2000609
                  A22A0609A2DF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609
                  A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609
                  A2AC0609A2090609A2000609A2000609A2000609A2000609A2000509A1000509
                  A1000509A1000509A1000509A1000509A1000609A1120609A2C70609A2E20609
                  A3210609A2000609A2080609A2AE0609A2FF0609A2FF0609A2B70609A20C0609
                  A2B70609A2DE0609A2190609A2030609A1060609A28B0609A2FF0609A2940609
                  A203FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000609A2000609A2620609A2F20609A2440609A2000609A2420609
                  A3240609A2360609A26F0609A30F0609A29F0609A2FF0609A2FF0609A2FF0609
                  A2860609A3000609A2120609A2BC0609A28A0609A2000609A2000609A2000609
                  A2000609A2000609A2000609A2000609A2000609A2000609A2000609A2000609
                  A2000609A2000609A25D0609A2FE0609A2FF0609A2FF0609A2FF0609A2FF0609
                  A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609
                  A2FF0609A2FF0609A26C0609A2000609A2000609A2000609A2640609A2FF0609
                  A2FF0609A2FF0609A2860609A2000609A2000609A2000609A2500609A2FC0609
                  A2FF0609A2FF0609A2920609A2000609A2000609A2000609A2340609A2EA0609
                  A2FF0609A2FF0609A2A80609A2060609A2000609A2000609A22A0609A2DF0609
                  A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609
                  A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2FF0609A2AC0609A2090609
                  A2000609A2000609A2000609A2000609A2000609A2000509A1000509A1000509
                  A1000509A1000509A1000609A1000609A2290609A2C40609A34D0609A2000609
                  A2460609A2FA0609A2FF0609A2FF0609A2EE0609A22D0609A22D0609A23C0609
                  A2050609A2670609A2020609A2060609A2AD0609A2AE0609A20AFFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000609
                  A3000609A3640609A37A0609A200060AA3030609A3AC0609A35E060AA3000609
                  A2000609A3140609A3D40609A3FF0609A3FF0609A3FF0609A3E40609A3180609
                  A3230609A3630609A20B0609A2000609A2000609A2000609A2000609A2000609
                  A2000609A2000609A3000609A3000609A3000609A3000609A3000609A3000609
                  A35D0609A3FE0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609
                  A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609
                  A36C0609A3000609A3000609A3000609A3640609A3FF0609A3FF0609A3FF0609
                  A3860609A3000609A3000609A3000609A3500609A3FC0609A3FF0609A3FF0609
                  A3920609A3000609A3000609A3000609A3340609A3EA0609A3FF0609A3FF0609
                  A3A80609A3060609A3000609A3000609A32A0609A3DF0609A3FF0609A3FF0609
                  A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609A3FF0609
                  A3FF0609A3FF0609A3FF0609A3FF0609A3AC0609A3090609A3000609A3000609
                  A3000609A3000609A3000609A3000509A1000509A1000509A1000509A1000509
                  A1000609A1000609A2000609A3380609A342060AA3050609A3AD0609A3FF0609
                  A3FF0609A3FF0609A3FE0609A3560609A3000609A2000609A3150609A3C40609
                  A339060AA3000609A22C0609A3770609A311FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00060AA302060AA31A0609
                  A20E060AA300060AA33B060AA3F7060AA389060AA300060AA300060AA327060A
                  A3E4060AA3FF060AA3FF060AA3FF060AA3FF060AA364060AA3010609A3030609
                  A2000609A2000609A2000609A2000609A2000609A2000609A200060AA300060A
                  A300060AA300060AA300060AA300060AA300060AA300060AA35D060AA3FE060A
                  A3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060A
                  A3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA36C060AA300060A
                  A300060AA300060AA364060AA3FF060AA3FF060AA3FF060AA386060AA300060A
                  A300060AA300060AA350060AA3FC060AA3FF060AA3FF060AA392060AA300060A
                  A300060AA300060AA334060AA3EA060AA3FF060AA3FF060AA3A8060AA306060A
                  A300060AA300060AA32A060AA3DF060AA3FF060AA3FF060AA3FF060AA3FF060A
                  A3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060A
                  A3FF060AA3FF060AA3AC060AA309060AA300060AA300060AA300060AA300060A
                  A300060AA300060AA3000509A1000509A1000509A1000509A1000609A1000609
                  A2000609A3000609A301060AA324060AA3E9060AA3FF060AA3FF060AA3FF060A
                  A3FE060AA363060AA3000609A200060AA340060AA3F2060AA3A1060AA301060A
                  A3000609A30B0609A303FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00060AA300060AA300060AA400060AA407060A
                  A3B5060AA3FF060AA3BA060AA406060AA300060AA327060AA3E6060AA3FF060A
                  A3FF060AA3FF060AA3FF060AA3AF060AA3030609A3000609A3000609A3000609
                  A3000609A3000609A3000609A3000609A300060AA300060AA300060AA300060A
                  A300060AA300060AA300060AA300060AA35D060AA3FE060AA3FF060AA3FF060A
                  A3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060A
                  A3FF060AA3FF060AA3FF060AA3FF060AA36C060AA300060AA300060AA300060A
                  A364060AA3FF060AA3FF060AA3FF060AA386060AA300060AA300060AA300060A
                  A350060AA3FC060AA3FF060AA3FF060AA392060AA300060AA300060AA300060A
                  A334060AA3EA060AA3FF060AA3FF060AA3A8060AA306060AA300060AA300060A
                  A32A060AA3DF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060A
                  A3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060A
                  A3AC060AA309060AA300060AA300060AA300060AA300060AA300060AA300060A
                  A3000509A2000509A2000509A2000509A2000609A2000609A3000609A3000609
                  A300060AA467060AA3FF060AA3FF060AA3FF060AA3FF060AA3FF060AA362060A
                  A300060AA400060AA372060AA3FF060AA3F5060AA34D060AA4000609A3000609
                  A300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00070AA400070AA400070AA400060AA470060AA4FD060AA4FF060A
                  A4D2060AA41A060AA400060AA412060AA4D2060AA4FF060AA4FF060AA4FF060A
                  A4FF060AA4D7060AA40F060AA400060AA400060AA400060AA400060AA400060A
                  A400060AA400060AA400060AA400060AA400060AA400060AA400060AA400060A
                  A400060AA400060AA45D060AA4FE060AA4FF060AA4FF060AA4FF060AA4FF060A
                  A4FF060AA4FF060AA4FF060AA4FF060AA4FF060AA4FF060AA4FF060AA4FF060A
                  A4FF060AA4FF060AA46C060AA400060AA400060AA400060AA464060AA4FF060A
                  A4FF060AA4FF060AA486060AA400060AA400060AA400060AA450060AA4FC060A
                  A4FF060AA4FF060AA492060AA400060AA400060AA400060AA434060AA4EA060A
                  A4FF060AA4FF060AA4A8060AA406060AA400060AA400060AA42A060AA4DF060A
                  A4FF060AA4FF060AA4FF060AA4FF060AA4FF060AA4FF060AA4FF060AA4FF060A
                  A4FF060AA4FF060AA4FF060AA4FF060AA4FF060AA4FF060AA4AC060AA409060A
                  A400060AA400060AA400060AA400060AA400060AA400060AA400060AA400060A
                  A400060AA400060AA400060AA400060AA400060AA400060AA400060AA492060A
                  A4FF060AA4FF060AA4FF060AA4FF060AA4FB060AA449060AA400060AA400060A
                  A498060AA4FF060AA4FF060AA4CD070AA41A070AA400070AA400FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00070A
                  A400070AA400070AA430070AA4E4070AA4FF070AA4FF070AA4D8070AA425060A
                  A400060AA400070AA493070AA4FF070AA4FF070AA4FF070AA4FF070AA4E0070A
                  A419070AA400070AA400070AA400070AA400070AA400070AA400070AA400070A
                  A400070AA400070AA400070AA400070AA400070AA400070AA400070AA400070A
                  A45D070AA4FE070AA4FF070AA4FF070AA4FF070AA4FF070AA4FF070AA4FF070A
                  A4FF070AA4FF070AA4FF070AA4FF070AA4FF070AA4FF070AA4FF070AA4FF070A
                  A46C070AA400070AA400070AA400070AA464070AA4FF070AA4FF070AA4FF070A
                  A486070AA400070AA400070AA400070AA450070AA4FC070AA4FF070AA4FF070A
                  A492070AA400070AA400070AA400070AA434070AA4EA070AA4FF070AA4FF070A
                  A4A8070AA406070AA400070AA400070AA42A070AA4DF070AA4FF070AA4FF070A
                  A4FF070AA4FF070AA4FF070AA4FF070AA4FF070AA4FF070AA4FF070AA4FF070A
                  A4FF070AA4FF070AA4FF070AA4FF070AA4AC070AA409070AA400070AA400070A
                  A400070AA400070AA400070AA400070AA400070AA400070AA400070AA400070A
                  A400070AA400070AA400070AA400070AA400070AA49F070AA4FF070AA4FF070A
                  A4FF070AA4FF070AA4D1070AA414070AA400070AA400070AA4A9070AA4FF070A
                  A4FF070AA4FF070AA48A070AA501070AA500FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00070AA500070AA505070A
                  A5A1070AA5FF070AA5FF070AA5FF070AA5DC070AA52A070AA500070AA500070A
                  A545070AA5FE070AA5FF070AA5FF070AA5FF070AA5E1070AA51A070AA500070A
                  A500070AA500070AA500070AA500070AA500070AA500070AA500070AA500070A
                  A500070AA500070AA500070AA500070AA500070AA500070AA55D070AA5FE070A
                  A5FF070AA5FF070AA5FF070AA5FF070AA5FF070AA5FF070AA5FF070AA5F8070A
                  A5E2070AA5D6070AA5E6070AA5FA070AA5FF070AA5FF070AA56C070AA500070A
                  A500070AA500070AA564070AA5FF070AA5FF070AA5FF070AA586070AA500070A
                  A500070AA500070AA550070AA5FC070AA5FF070AA5FF070AA592070AA500070A
                  A500070AA500070AA534070AA5EA070AA5FF070AA5FF070AA5A8070AA506070A
                  A500070AA500070AA52A070AA5E2070AA5FF070AA5FE070AA5EE070AA5D9070A
                  A5D9070AA5F0070AA5FE070AA5FF070AA5FF070AA5FF070AA5FF070AA5FF070A
                  A5FF070AA5FF070AA5AC070AA509070AA500070AA500070AA500070AA500070A
                  A500070AA500070AA500070AA500070AA500070AA500070AA500070AA500070A
                  A500070AA500070AA500070AA59D070AA5FF070AA5FF070AA5FF070AA5FF070A
                  A585070AA400070AA400070AA500070AA5AC070AA5FF070AA5FF070AA5FF070A
                  A5EE070AA539070AA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00070AA500070AA545070AA5F8070AA5FF070A
                  A5FF070AA5FF070AA5D9070AA526070AA500070AA500070AA50D070AA5B7070A
                  A5FF070AA5FF070AA5FF070AA5D8070AA510070AA500070AA500070AA500070A
                  A500070AA500070AA500070AA500070AA500070AA500070AA500070AA500070A
                  A500070AA500070AA500070AA500070AA55D070AA5FE070AA5FF070AA5FF070A
                  A5FF070AA5FF070AA5FF070AA5E9070AA589070AA540070AA515070AA508070A
                  A51A070AA54A070AA594070AA5F2070AA576070AA500070AA500070AA500070A
                  A564070AA5FF070AA5FF070AA5FF070AA586070AA500070AA500070AA500070A
                  A550070AA5FC070AA5FF070AA5FF070AA592070AA500070AA500070AA500070A
                  A534070AA5EA070AA5FF070AA5FF070AA5A8070AA506070AA500070AA600070A
                  A62F070AA5E3070AA5C2070AA561070AA529070AA50A070AA50A070AA52D070A
                  A569070AA5C9070AA5FF070AA5FF070AA5FF070AA5FF070AA5FF070AA5FF070A
                  A5AC070AA509070AA500070AA500070AA500070AA500070AA500070AA500070A
                  A500070AA500070AA500070AA500070AA500070AA500070AA500070AA500070A
                  A500070AA58B070AA5FF070AA5FF070AA5FF070AA5EB070AA52A070AA500070A
                  A500070AA500070AA5A7070AA5FF070AA5FF070AA5FF070AA5FF070AA5A2070A
                  A608FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00070BA606070AA6A3070AA6FF070AA6FF070AA6FF070AA6FF070A
                  A6D4070AA619070AA600070AA600070AA600070AA663070AA6FB070AA6FF070A
                  A6FF070AA6BC070AA605070AA600070AA600070AA600070AA600070AA600070A
                  A600070AA600070AA600070AA600070AA600070AA600070AA600070AA600070A
                  A600070AA600070AA65D070AA6FE070AA6FF070AA6FF070AA6FF070AA6FF070A
                  A6C9070AA639070AA500070AA500070AA500070AA500070AA500070AA500070A
                  A500070AA652070AA64C070AA601070AA600070AA600070AA664070AA6FF070A
                  A6FF070AA6FF070AA686070AA600070AA600070AA600070AA650070AA6FC070A
                  A6FF070AA6FF070AA692070AA600070AA600070AA600070AA634070AA6EA070A
                  A6FF070AA6FF070AA6A8070AA606070AA600070AA600070AA625070AA666070A
                  A512070AA500070AA500070AA500070AA500070AA500070AA500070AA516070A
                  A690070AA6FC070AA6FF070AA6FF070AA6FF070AA6FF070AA6AC070AA609070A
                  A600070AA600070AA600070AA600070AA600070AA600070AA600070AA600070A
                  A600070AA600070AA600070AA600070AA600070AA600070AA600070AA65B070A
                  A6FD070AA6FF070AA6FF070AA69D070AA507070AA500070AA600070AA600070A
                  A68C070AA6FF070AA6FF070AA6FF070AA6FF070AA6EF070AA637FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00070B
                  A72A070BA7E9070BA7FF070BA7FF070BA7FF070BA7FF070BA7AA070BA704070B
                  A700070AA600070AA600070AA621070BA7D8070BA7FF070BA7FF070BA67B070B
                  A600070BA600070BA600070BA600070BA600070BA600070BA600070BA600070B
                  A700070BA700070BA700070BA700070BA700070BA700070BA700070BA700070B
                  A75D070BA7FE070BA7FF070BA7FF070BA7FF070BA7D8070BA628070AA600070B
                  A700070BA600070BA600070BA600070BA600070BA600070BA600070AA500070B
                  A600070BA601070BA700070BA700070BA764070BA7FF070BA7FF070BA7FF070B
                  A786070BA700070BA700070BA700070BA750070BA7FC070BA7FF070BA7FF070B
                  A792070BA700070BA700070BA700070BA734070BA7EA070BA7FF070BA7FF070B
                  A7A8070BA706070BA700070BA600070BA600070BA600070AA500070BA600070B
                  A600070BA600070BA600070BA600070BA600070AA500070BA603070BA79B070B
                  A7FF070BA7FF070BA7FF070BA7FF070BA7AC070BA709070BA700070BA700070B
                  A700070BA700070BA700070BA700070BA700070BA700070BA700070BA700070B
                  A700070BA700070BA700070BA700070BA700070BA71C070BA7E6070BA7FF070B
                  A7F9070BA74D070BA700070BA700080BA700070BA700070BA748070BA7F4070B
                  A7FF070BA7FF070BA7FF070BA7FF070BA77CFFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00070BA761070BA7FF070B
                  A7FF070BA7FF070BA7FF070BA7F5070BA750070BA700070BA700070BA700070B
                  A700070BA705070BA7A2070BA7FF070BA7F2070BA730070BA700070BA700070B
                  A700070BA700070BA700070BA700070BA700070BA700070BA700070BA700070B
                  A700070BA700070BA700070BA700070BA700070BA700070BA75D070BA7FE070B
                  A7FF070BA7FF070BA7F4070BA75A070BA600070BA700070BA800070BA701070B
                  A734070BA74E070BA728070BA700070BA800080AA600070BA600070BA600070B
                  A700070BA700070BA764070BA7FF070BA7FF070BA7FF070BA786070BA700070B
                  A700070BA700070BA750070BA7FC070BA7FF070BA7FF070BA792070BA700070B
                  A700070BA700070BA734070BA7EA070BA7FF070BA7FF070BA7A8070BA706070B
                  A700070BA600070BA600070AA600070BA600070BA700070BA713070BA746070B
                  A749070BA711070BA700080BA700070BA600070BA719070BA7D1070BA7FF070B
                  A7FF070BA7FF070BA7AC070BA709070BA700070BA700070BA700070BA700070B
                  A700070BA700070BA700070BA700070BA700070BA700070BA700070BA700070B
                  A700070BA700070BA700070BA700070BA7A8070BA7FF070BA7D8070BA723070B
                  A700070BA800080BA800070BA700070BA708070BA7C0070BA7FF070BA7FF070B
                  A7FF070BA7FF070BA7C6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00070BA797070BA7FF070BA7FF070BA7FF070B
                  A7FF070BA7B5070BA705070BA700070BA800070BA800070BA800070BA700070B
                  A769070BA7FF070BA7B2070BA703070BA700070BA700070BA700070BA700070B
                  A700070BA700070BA700070BA700070BA700070BA700070BA700070BA700070B
                  A700070BA700070BA700070BA700070BA75D070BA7FE070BA7FF070BA7FF070B
                  A7C8070BA711070BA800070BA800070BA80B070BA792070BA7EA070BA7F2070B
                  A7E5070BA76E070BA800080BA800070BA700070BA700070BA700070BA700070B
                  A764070BA7FF070BA7FF070BA7FF070BA786070BA700070BA700070BA700070B
                  A750070BA7FC070BA7FF070BA7FF070BA792070BA700070BA700070BA700070B
                  A734070BA7EA070BA7FF070BA7FF070BA7A8070BA706070BA700070BA700070B
                  A600080BA700070BA800070BA741070BA7C8070BA7F0070BA7F1070BA7C4070B
                  A731080BA800080BA700070BA600070BA784070BA7FF070BA7FF070BA7FF070B
                  A7AC070BA709070BA700070BA700070BA700070BA700070BA700070BA700070B
                  A700070BA700070BA700070BA700070BA700070BA700070BA700070BA700070B
                  A700070BA700070BA747070BA7FF070BA7B3070BA70B080BA800070BA800080B
                  A800080BA800070BA700070BA74A070BA7FC070BA7FF070BA7FF070BA7FF070B
                  A7E7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00070BA8BC070BA8FF070BA8FF070BA8FF070BA8F0070BA83A070B
                  A700080BA800070BA800070BA81B070BA80C070BA800070BA74E070BA8F7070B
                  A850070BA800070BA800070BA800070BA800070BA800070BA800070BA800070B
                  A800070BA800070BA800070BA800070BA800070BA800070BA800070BA800070B
                  A800070BA800070BA85D070BA8FE070BA8FF070BA8FF070BA896070BA800070B
                  A800070BA800070BA86B070BA8FF070BA8FF070BA8FF070BA8FF070BA8F9070B
                  A872080BA800080BA800080BA900070BA800070BA800070BA864070BA8FF070B
                  A8FF070BA8FF070BA886070BA800070BA800070BA800070BA850070BA8FC070B
                  A8FF070BA8FF070BA892070BA800070BA800070BA800070BA834070BA8EA070B
                  A8FF070BA8FF070BA8A8070BA806070BA800080BA900080BA900080BA800070B
                  A841070BA8E5070BA8FF070BA8FF070BA8FF070BA8FF070BA8B5080BA808080B
                  A800070BA800070BA844070BA8EF070BA8FF070BA8FF070BA8AC070BA809070B
                  A800070BA800070BA800070BA800070BA800070BA800070BA800070BA800070B
                  A700070BA700070BA700070BA700070BA700070BA700070BA700070BA700070B
                  A70E070BA8CB070BA8A4070BA800080BA800070BA83F080BA806080BA809080B
                  A809070BA700070BA89D070BA8FF070BA8FF070BA8FF070BA8EDFFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00080B
                  A8C8080BA8FF080BA8FF080BA8FF080BA881070BA800070BA70A080BA826080B
                  A808080BA872080BA85E080BA900080BA854080BA8A9080BA814080BA800080B
                  A800080BA800080BA800080BA800080BA800080BA800080BA800080BA800080B
                  A800080BA800080BA800080BA800080BA800080BA800080BA800080BA800080B
                  A85D080BA8FE080BA8FF080BA8FF080BA876070BA800080BA800080BA803080B
                  A8AF080BA8FF080BA8FF080BA8FF080BA8FF080BA8FF080BA8EE080BA84A080B
                  A900080BA900080BA900080BA800080BA862080BA8FF080BA8FF080BA8FF080B
                  A886080BA900080BA900080BA800080BA84F080BA8FC080BA8FF080BA8FF080B
                  A891080BA800080BA900080BA900080BA833080BA8EA080BA8FF080BA8FF080B
                  A8A7080BA804080BA900080BA900080BA900080BA819080BA8CF080BA8FF080B
                  A8FF080BA8FF080BA8FF080BA8FF080BA8FA080BA82A080BA800080BA800080B
                  A824080BA8E5080BA8FF080BA8FF080BA8AC080BA809080BA800080BA800080B
                  A800080BA800080BA800080BA800080BA800080BA800080BA800080BA800080B
                  A800080BA800080BA800080BA800080BA800080BA800080BA800080BA85B080B
                  A886080BA800080BA82A080BA8B7080BA80B080BA865080BA867080BA800080B
                  A822080BA8DE080BA8FF080BA8FF080BA8EFFFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00080BA9BE080BA9FF080B
                  A9FF080BA9CA080BA813080CA900080BA92C080BA9A9080BA927080BA9A1080B
                  A9DC080BA922080CA91D080BA82D080BA801080BA800080BA800080BA800080B
                  A800080BA800080BA800080BA800080BA800080BA900080BA900080BA900080B
                  A900080BA900080BA900080BA900080BA900080BA900080BA95D080BA9FE080B
                  A9FF080BA9FE080BA97A080BA900080BA800080BA802080BA9A5080BA9FF080B
                  A9FF080BA9FF080BA9FF080BA9FF080BA9FF080BA9CF080BA919080BA900080B
                  A900080BA900080BA95B080BA9FF080BA9FF080BA9FF080BA97E080BA900080B
                  A900080BA900080BA944080BA9FC080BA9FF080BA9FF080BA98A080BA900080B
                  A900080BA900080BA924080BA9E9080BA9FF080BA9FF080BA9A1080BA900080B
                  A900080BA900080BA900080BA98F080BA9FF080BA9FF080BA9FF080BA9FF080B
                  A9FF080BA9FF080BA9F3080BA924080BA900080BA900080BA927080BA9E6080B
                  A9FF080BA9FF080BA9AC080BA909080BA900080BA900080BA900080BA900080B
                  A900080BA900080BA900080BA900080BA900080BA900080BA900080BA900080B
                  A900080BA900080BA900080BA900080BA900080BA90D080BA820080BA911080B
                  A9BA080BA9F0080BA928080BA93E080BA841080CA900080BA900080BA960080B
                  A9FA080BA9FF080BA9ECFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00080CA9A0080CA9FF080CA9FA080BA951080C
                  A904080CA91B080CA90C080BA934080CA90F080CA9C2080CA9FF080CA9BE080C
                  A916080BA800080BA800080BA800080BA800080BA800080BA800080BA800080B
                  A800080BA800080CA900080CA900080CA900080CA900080CA900080CA900080C
                  A900080CA900080CA900080CA900080CA95D080CA9FE080CA9FF080CA9FF080C
                  A9A2080CA900080BA900080BA900080BA94D080CA9F6080CA9FF080CA9FF080C
                  A9FF080CA9FF080CA9FF080CA9FF080CA9C8080CA9A6080CA9AB080CA9A5080C
                  A9D1080CA9FF080CA9FF080CA9FF080CA9D9080CA99F080CA9A4080CA99F080C
                  A9C4080CA9FF080CA9FF080CA9FF080CA9E0080CA9A2080CA9A3080CA99F080C
                  A9B9080CA9FD080CA9FF080CA9FF080CA9E7080CA9AD080CA9A9080CA9A8080C
                  A9B2080CA9F4080CA9FF080CA9FF080CA9FF080CA9FF080CA9FF080CA9FF080C
                  A99A080BA903080BA900080CA900080CA953080CA9F4080CA9FF080CA9FF080C
                  A9AC080CA909080CA900080CA900080CA900080CA900080CA900080CA900080C
                  A900080CA900080CA900080BA900080BA900080BA900080BA900080BA900080B
                  A900080BA900080BA900080BA900080CA906080CA9A4080CA9FF080CA9F1080C
                  A945080BA900080CA900080CA918080CA92A080BA90B080CA9BF080CA9FF080C
                  A9E3FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00080CA96F080CA9FF080CA9C3080BA912080CA908080CA991080C
                  A916080BA900080CA90A080CA9D6080CA9FF080CA9FF080CA9B8080CAA19080C
                  AA00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090C
                  AB00080CAA00080CA900080CA900080CA900080CA900080CA900080CA900080C
                  A900080CA900080CA95D080CA9FE080CA9FF080CA9FF080CA9D5080CAA1E080C
                  AA00080BA900080BA903080CA96B080CA9F5080CA9FF080CA9FF080CA9FF080C
                  A9FF080CA9FF080CA9DF080CA9BD080CA9C0080CA9C2080CA9BA080CA9AE080C
                  A9AE080CA9AE080CA9B9080CA9C2080CA9C1080CA9C1080CA9BB080CA9AE080C
                  A9AE080CA9AE080CA9B8080CA9C1080CA9C1080CA9C1080CA9BE080CA9B0080C
                  A9AE080CA9AD080CA9B5080CA9C1080CA9C1080CA9BD080CA9CC080CA9FA080C
                  A9FF080CA9FF080CA9FF080CA9FF080CA9FF080CA9A9080CA914080BA900080C
                  A900080CA900080CA998080CA9FF080CA9FF080CA9FF080CA9AC080CA909080C
                  A900080CA900080CA900080CA900080CA900080CA900080CA900080CA900080C
                  AA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080C
                  AA00080CAA0B080CA99D080CA9FF080CA9FF080CA9F2080CA94E080CAA00080C
                  AA00080CA998080CA959080CA900080CA966080CA9FF080CA9BFFFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00080C
                  AA3F080CAAFF080CAA7E080CAA00080CA906080CAADE080CAA8F080CAA01080C
                  AA0F080CAAD9080CAAFF080CAAFF080CAAFF080CAAAB080CAA0E090CAB00090C
                  AB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00080CAA00080C
                  AA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080C
                  AA5D080CAAFE080CAAFF080CAAFF080CAAFF080CAA79080CAA00090CAB00080B
                  A900080CA900080CAA5A080CAAE9080CAAFF080CAAFF080CAAFF080CAAFF080C
                  AA6B080CA903080CA903080CA904080CA903080CA902080CA902080CA902080C
                  A903080CA904080CA904080CA904080CA903080CA902080CA902080CA902080C
                  A903080CA904080CA904080CA904080CA903080CA902080CA902080CA902080C
                  A903080CA903080CA904080CA903080CA92B080CAADD080CAAFF080CAAFF080C
                  AAFF080CAAFD080CAA99080CA90F080CA900080BA900080CAB00080CAA35080C
                  AAE1080CAAFF080CAAFF080CAAFF080CAAAC080CAA09080CAA00080CAA00080C
                  AA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080C
                  AA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA02080CAA89080C
                  AAFF080CAAFF080CAAFF080CAAF3080CAA51080CAA00080CAA60080CAAF5080C
                  AA5A080CAA00080CA92E080CAAEB080CAA81FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00080CAA20080CAAD3080C
                  AA5C080CAA00080CAA20080CAAED080CAAEE080CAB3F080CAA02080CAAD9080C
                  AAFF080CAAFF080CAAFF080CAAFF080CAA85090CAB00090CAB00090CAB00090C
                  AB00090CAB00090CAB00090CAB00090CAB00090CAB00080CAA00080CAA00080C
                  AA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA5D080CAAFE080C
                  AAFF080CAAFF080CAAFF080CAAE7080CAB4A090CAB00090CAB00080CAA00080C
                  AA00080CAA46080CAAE0080CAAFF080CAAFF080CAAFF080CAA6C080CAA00080C
                  AA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080C
                  AA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080C
                  AA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080C
                  AA00080CAA00080CAA2A080CAADF080CAAFF080CAAFF080CAAFA080CAA83080C
                  AA05080CA900080CAA00090CAB00080CAB18080CAABC080CAAFF080CAAFF080C
                  AAFF080CAAFF080CAAAC080CAA09080CAA00080CAA00080CAA00080CAA00080C
                  AA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080CAA00080C
                  AA00080CAA00080CAA00080CAA00080CAA5A080CAAFC080CAAFF080CAAFF080C
                  AAFF080CAAF2080CAA44080CAA12080CAAD8080CAAFF080CAA78080CAA00080C
                  AA09080CAABB080CAA4EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00090CAB0B090CAB5F090CAB31090CAB00090C
                  AB4C090CABF9090CABFF090CABAB090CAB07090CABC1090CABFF090CABFF090C
                  ABFF090CABFF090CABF3090CAB38090CAB00090CAB00090CAB00090CAB00090C
                  AB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090C
                  AB00090CAB00090CAB00090CAB00090CAB5D090CABFE090CABFF090CABFF090C
                  ABFF090CABFF090CABE4090CAB5A090CAB00090CAB00090CAA00080CAA00080C
                  AB36090CABD4090CABFF090CABFF090CAB63090CAB00090CAB00090CAB00090C
                  AB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090C
                  AB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090C
                  AB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090C
                  AB22090CABDB090CABFF090CABF4090CAB72080CAA00090CAA00090CAA00090C
                  AB00090CAB27090CABBA090CABFF090CABFF090CABFF090CABFF090CABFF090C
                  ABAC090CAB09090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090C
                  AB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090C
                  AB00090CAB15090CABD6090CABFF090CABFF090CABFF090CABFF090CABEC090C
                  AB2C090CAB75090CABFF090CABFF090CAB9B090CAB00090CAB00090CAB43080C
                  AB15FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00090CAB00090CAB04090CAB05090CAB00090CAB6F090CABFF090C
                  ABFF090CABF7090CAB3D090CAB7F090CABFF090CABFF090CABFF090CABFF090C
                  ABFF090CABAE090CAB02090CAB00090CAB00090CAB00090CAB00090CAB00090C
                  AB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090C
                  AB00090CAB00090CAB5D090CABFE090CABFF090CABFF090CABFF090CABFF090C
                  ABFF090CABF5090CAB70090CAB00090DAC00080CAB00080CAB00090CAB29090C
                  ABC2090CABFF090CAB8A090CAB32090CAB36090CAB37090CAB37090CAB37090C
                  AB37090CAB37090CAB37090CAB37090CAB37090CAB37090CAB37090CAB37090C
                  AB37090CAB37090CAB37090CAB37090CAB37090CAB37090CAB37090CAB37090C
                  AB37090CAB37090CAB37090CAB37090CAB37090CAB31090CAB56090CABEC090C
                  ABEC090CAB5A090CAB00080CAB00090DAC00090CAB00090CAB36090CABD1090C
                  ABFF090CABFF090CABFF090CABFF090CABFF090CABFF090CABAC090CAB09090C
                  AB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090C
                  AB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB72090C
                  ABFF090CABFF090CABFF090CABFF090CABFF090CABC5090CAB24090CABD0090C
                  ABFF090CABFF090CABC9090CAB0A090CAB00090CAB00080CAB00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00090C
                  AB00090CAB00090CAB00090CAB00090CAB9E090CABFF090CABFF090CABFF090C
                  AB85090CAB35090CABF5090CABFF090CABFF090CABFF090CABFF090CABE8090C
                  AB25090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090C
                  AB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090CAB00090C
                  AB5D090CABFE090CABFF090CABFF090CABFF090CABFF090CABFF090CABFF090C
                  ABFA090CAB81090DAC02090DAC00080CAB00090CAB00090CAB1D090CABB3090C
                  ABF7090CABEC090CABEB090CABEB090CABEB090CABEB090CABEB090CABEB090C
                  ABEB090CABEB090CABEB090CABEB090CABEB090CABEB090CABEB090CABEB090C
                  ABEB090CABEB090CABEB090CABEB090CABEB090CABEB090CABEB090CABEB090C
                  ABEB090CABEB090CABEB090CABEA090CABF2090CABDC090CAB45090CAB00090C
                  AB00090DAC00090DAC00090CAB49090CABE1090CABFF090CABFF090CABFF090C
                  ABFF090CABFF090CABFF090CABFF090CABAC090CAB09090CAB00090CAB00090C
                  AB00090CAB00090CAB00090CAB00090CAB00090CAC00090CAC00090CAC00090C
                  AC00090CAC00090CAC00090CAC00090CAC03090CABB8090CABFF090CABFF090C
                  ABFF090CABFF090CABFF090CAB63090CAC48090CABFE090CABFF090CABFF090C
                  ABEB090CAB34090CAB00090CAB00080CAB00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00090CAB00090CAB00090D
                  AC00090DAC10090DACD0090DACFF090DACFF090DACFF090DACCF090DAC19090D
                  AC9D090DACFF090DACFF090DACFF090DACFF090DACF9090DAC61090DAC00090D
                  AC00090DAC00090DAC00090DAC00090DAC00090DAC00090DAC00090DAC00090D
                  AC00090DAC00090DAC00090DAC00090DAC00090DAC00090DAC5D090DACFE090D
                  ACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090D
                  AC91090DAC0A090DAD00090CAB00090CAB00090CAC15090DACA9090DACFF090D
                  ACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090D
                  ACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090D
                  ACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090D
                  ACFF090DACFF090DACD9090DAC3C090CAB00090CAB00090DAD00090DAC00090D
                  AC52090DACE8090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090D
                  ACFF090DACFF090DACAC090DAC09090DAC00090DAC00090DAC00090DAC00090D
                  AC00090DAC00090DAC00090DAC00090DAC00090DAC00090DAC00090DAC00090D
                  AC00090DAC00090DAC1D090DACE1090DACFF090DACFF090DACFF090DACFF090D
                  ACCA090CAC12090DAC88090DACFF090DACFF090DACFF090DACF6090DAC59090D
                  AC00090CAB00080CAB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00090DAC00090DAC00090DAC00090DAC27090D
                  ACE7090DACFF090DACFF090DACFF090DACEE090DAC1D090DAC1F090DACD8090D
                  ACFF090DACFF090DACFF090DACFF090DAC8A090DAD00090DAD00090DAD00090D
                  AD00090DAD00090DAD00090DAD00090DAD00090DAC00090DAC00090DAC00090D
                  AC00090DAC00090DAC00090DAC00090DAC5D090DACFE090DACFF090DACFF090D
                  ACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACA5090D
                  AD14090DAD00090CAB00090CAB00090DAC0D090DAC90090DACFD090DACFF090D
                  ACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090D
                  ACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090D
                  ACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACC5090D
                  AC2B090DAC00090CAC00090DAD00090DAD00090DAC65090DACF1090DACFF090D
                  ACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090DACFF090D
                  ACAC090DAC09090DAC00090DAC00090DAC00090DAC00090DAC00090DAC00090D
                  AC00090DAC00090DAC00090DAC00090DAC00090DAC00090DAC00090DAC00090D
                  AC40090DACEE090DACFF090DACFF090DACFF090DACEA090DAC38090CAC08090D
                  ACAF090DACFF090DACFF090DACFF090DACFC090DAC70090DAC00090DAC00090D
                  AC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00090DAD00090DAD00090DAD00090DAD35090DADEB090DADFF090D
                  ADFF090DADFF090DADF0090DAD28090DAD00090DAC3D090DADE6090DADFF090D
                  ADFF090DADFF090DAD9B090DAD00090DAD00090DAD00090DAD00090DAD00090D
                  AD00090DAD00090DAD00090DAD00090DAD00090DAD00090DAD00090DAD00090D
                  AD00090DAD00090DAD5D090DADFE090DADFF090DADFF090DADFF090DADFF090D
                  ADFF090DADFF090DADFF090DADFF090DADFF090DADFF090DADB8090DAD1D090D
                  AD00090DAC00090DAC00090DAC03090DAD79090DADF9090DADFF090DADFF090D
                  ADFF090DADFF090DADFF090DADFF090DADFF090DADFF090DADFF090DADFF090D
                  ADFF090DADFF090DADFF090DADFF090DADFF090DADFF090DADFF090DADFF090D
                  ADFF090DADFF090DADFF090DADFF090DADB5090DAC1F090DAC00090CAC00090D
                  AD00090DAD00090DAD77090DADF7090DADFF090DADFF090DADFF090DADFF090D
                  ADFF090DADFF090DADFF090DADFF090DADFF090DADFF090DADAC090DAD09090D
                  AD00090DAD00090DAD00090DAD00090DAD00090DAD00090DAD00090DAD00090D
                  AD00090DAD00090DAD00090DAD00090DAD00090DAD00090DAD51090DADF3090D
                  ADFF090DADFF090DADF1090DAD55090DAC00090DAD0C090DADB3090DADFF090D
                  ADFF090DADFF090DADFF090DAD87090DAD00090DAD00090DAD00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00090D
                  AD00090DAD00090DAD00090DAD3E090DADEE090DADFF090DADFF090DADFF090D
                  ADED090DAD23090DAD00090DAC00090DAD56090DADEF090DADFF090DADFF090D
                  AD9C090DAD00090DAD00090DAD00090DAD00090DAD00090DAD00090DAD00090D
                  AD00090DAD00090DAD00090DAD00090DAD00090DAD00090DAD00090DAD00090D
                  AD5D090DADFE090DADFF090DADFF090DADFF090DADFF090DADFF090DADFF090D
                  ADFF090DADFF090DADFF090DADFF090DADFF090DADC6090DAD2D090DAE000A0D
                  AE00090DAC00090DAD00090DAD69090DADF0090DADFF090DADFF090DADFF090D
                  ADFF090DADFF090DADFF090DADFF090DADFF090DADFF090DADFF090DADFF090D
                  ADFF090DADFF090DADFF090DADFF090DADFF090DADFF090DADFF090DADFF090D
                  ADFF090DADA4090DAD14090DAC00090DAD000A0DAE00090DAD09090DAD88090D
                  ADFB090DADFF090DADFF090DADFF090DADFF090DADFF090DADFF090DADFF090D
                  ADFF090DADFF090DADFF090DADFF090DADAC090DAD09090DAD00090DAD00090D
                  AD00090DAD00090DAD00090DAD00090DAD00090DAD00090DAD00090DAD00090D
                  AD00090DAD00090DAD00090DAD00090DAD4E090DADF2090DADFF090DADFA090D
                  AD70090DAD00090DAD00090DAD08090DADA2090DADFF090DADFF090DADFF090D
                  ADFF090DAD94090DAD00090DAD00090DAD00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00090DAE00090DAE00090D
                  AE00090DAE3E090DAEED090DAEFF090DAEFF090DAEFF090DAED8090DAD19090D
                  AD000A0DAE00090DAD00090DAE82090DAEFF090DAEFF090DAE94090DAE00090D
                  AE00090DAE00090DAE00090DAE00090DAE00090DAE00090DAE00090DAE00090D
                  AE00090DAE00090DAE00090DAE00090DAE00090DAE00090DAE5D090DAEFE090D
                  AEFF090DAEFF090DAEFF090DAEFF090DAEFF090DAEFF090DAEFF090DAEFF090D
                  AEFF090DAEFF090DAEFF090DAEFF090DAED5090DAE370A0DAE000A0DAE00090D
                  AD00090DAD00090DAE59090DAEEC090DAEFF090DAEFF090DAEFF090DAEFF090D
                  AEFF090DAEFF090DAEFF090DAEFF090DAEFF090DAEFF090DAEFF090DAEFF090D
                  AEFF090DAEFF090DAEFF090DAEFF090DAEFF090DAEFF090DAE8F090DAD09090D
                  AD00090DAC000A0DAE000A0DAE11090DAE9F090DAEFF090DAEFF090DAEFF090D
                  AEFF090DAEFF090DAEFF090DAEFF090DAEFF090DAEFF090DAEFF090DAEFF090D
                  AEFF090DAEFF090DAEAC090DAE09090DAE00090DAE00090DAE00090DAE00090D
                  AE00090DAE00090DAE00090DAE00090DAE00090DAE00090DAE00090DAE00090D
                  AE00090DAE00090DAE3D090DAEEF090DAEFF090DAEA7090DAD030A0DAE000A0D
                  AE00090DAE01090DAE7C090DAEFF090DAEFF090DAEFF090DAEFF090DAE8E090D
                  AE00090DAE00090DAE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000A0DAE000A0DAE000A0DAE000A0DAE330A0D
                  AEEB0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEA50A0DAE090A0DAE000A0DAE02090D
                  AE000A0DAE0E0A0DAEC90A0DAEFF0A0DAE7C090DAE00090DAE00090DAE00090D
                  AE00090DAE00090DAE00090DAE00090DAE000A0DAE000A0DAE000A0DAE000A0D
                  AE000A0DAE000A0DAE000A0DAE000A0DAE5D0A0DAEFE0A0DAEFF0A0DAEFF0A0D
                  AEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0D
                  AEFF0A0DAEFF0A0DAEFF0A0DAEDF0A0DAE480A0DAE000A0EAF00090DAD00090D
                  AE000A0DAE490A0DAEE30A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0D
                  AEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0D
                  AEFF0A0DAEFF0A0DAEF90A0DAE7F0A0DAE02090DAD00090DAD000A0DAF000A0D
                  AE1B0A0DAEAD0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0D
                  AEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0D
                  AEAC0A0DAE090A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0D
                  AE000A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0D
                  AE210A0DAEE90A0DAEEA0A0DAE2D090DAD000A0DAE0B0A0DAE0E0A0DAE00090D
                  AE4C0A0DAEF90A0DAEFF0A0DAEFF0A0DAEFE0A0DAE77090DAE00090DAE00090D
                  AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000A0DAE000A0DAE000A0DAE000A0DAE200A0DAEE40A0DAEFF0A0D
                  AEFF0A0DAEFF0A0DAE760A0DAE000A0DAE4E0A0DAE860A0DAF160A0DAE000A0D
                  AE5F0A0DAEF60A0DAE560A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0D
                  AE000A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0D
                  AE000A0DAE000A0DAE5D0A0DAEFE0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0D
                  AEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0D
                  AEFF0A0DAEFF0A0DAEE80A0DAE590A0EAF000A0EAE00090DAD000A0DAE000A0D
                  AE3C0A0DAED70A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0D
                  AEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEF20A0D
                  AE6C0A0DAE000A0DAE00090DAE000A0EAF000A0DAF250A0DAEBE0A0DAEFF0A0D
                  AEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0D
                  AEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEFF0A0DAEAC0A0DAE090A0D
                  AE000A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0D
                  AE000A0DAE000A0DAE000A0DAE000A0DAE000A0DAE000A0DAE070A0DAED00A0D
                  AE9D0A0DAE000A0DAE020A0DAE950A0DAEC00A0DAE030A0DAE2C0A0DAEE60A0D
                  AEFF0A0DAEFF0A0DAEF80A0DAE5B0A0DAE000A0DAE000A0DAE00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0E
                  AF000A0EAF000A0EAF000A0EAF050A0EAFB30A0EAFFF0A0EAFFF0A0EAFFD0A0E
                  AF590A0EAF000A0EAF890A0EAFEB0A0EAF2D0A0EB0000A0EAF160A0EAFCB0A0E
                  AF310A0EAF000A0EAF000A0EAF000A0EAF000A0EB0000B0EB1000B0EB1000B0E
                  B1000A0EAF000A0EAF000A0EAF000A0EAF000A0EAF000A0EAF000A0EAF000A0E
                  AF5D0A0EAFFE0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0E
                  AFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0E
                  AFFF0A0EAFF30A0EAF6D0A0EAF000A0EB0000A0DAE000A0DAE000A0DAF280A0E
                  AFC10A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0E
                  AFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFEB0A0EAF5C0A0DAF000A0DAE000A0E
                  B0000A0EAF000A0EAF320A0EAFD00A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0E
                  AFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0E
                  AFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFAC0A0EAF090A0EAF000A0EAF000A0E
                  AF000A0EAF000A0EAF000A0EAF000A0EAF000A0DAF000A0DAF000A0EAF000A0E
                  AF000A0EAF000A0EAF000A0EAF000A0EAF000A0EAFA80A0EAF490A0EAF000A0E
                  AF030A0EAF940A0EAFB60A0EAF120A0EAF230A0EAFC90A0EAFFF0A0EAFFF0A0E
                  AFE10A0EAF240A0EAF000A0EAF000A0EAF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0EAF000A0EAF000A0E
                  AF000A0EAF000A0EAF650A0EAFFF0A0EAFFF0A0EAFEE0A0EAF3A0A0EAF3C0A0E
                  AF410A0EAF310A0EB0060A0EB0020A0EAF020A0EAF600A0EAF180A0EAF000A0E
                  AF000A0EB0000B0EB0000B0EB1000B0EB2000B0EB2000B0EB2000A0EAF000A0E
                  AF000A0EAF000A0EAF000A0EAF000A0EAF000A0EAF000A0EAF5D0A0EAFFE0A0E
                  AFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0E
                  AFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0E
                  AFFA0A0EAF820A0EB0070A0EB0000A0DAE000A0DAF000A0EAF190A0EAFB10A0E
                  AFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0E
                  AFFF0A0EAFDE0A0EAF470A0EAF000A0DAF000A0EB0000A0EB0000A0EAF460A0E
                  AFDC0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0E
                  AFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0EAFFF0A0E
                  AFFF0A0EAFFF0A0EAFAC0A0EAF090A0EAF000A0EAF000A0EAF000A0EAF000A0E
                  AF000A0EAF000A0EB0000B0FB2000B0FB1000B0EB0000B0EB0000A0EB0000A0E
                  AF000A0EAF000A0EAF000A0EAF3F0A0EAF130A0EB0070A0EAF020A0EAF0A0A0E
                  AF240A0EAF760A0EAF100A0EAFA80A0EAFFF0A0EAFFF0A0EAF9E0A0EAF000A0E
                  AF000A0EAF000A0EAF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000A0EB0000A0EB0000A0EB0000A0EB0000A0E
                  B0170A0EB0DA0A0EB0FF0A0EB0DE0A0EAF250A0EB0500A0EB0BA0A0EB00B0A0E
                  B0000A0EB0330A0EB0360A0EAF020A0EAF000A0EB0000A0EB1000A0EB1000B0E
                  B1000B0EB1000B0EB2000B0EB2000B0EB2000B0EB2000A0EB0000A0EB0000A0E
                  B0000A0EB0000A0EB0000A0EB0000A0EB05D0A0EB0FE0A0EB0FF0A0EB0FF0A0E
                  B0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0E
                  B0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FD0A0E
                  B08E0A0EB0080A0EB1000A0DAF000A0EAF000A0EB0100A0EB0A30A0EB0FF0A0E
                  B0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0D70A0EB03A0A0E
                  AF000A0EAF000A0EB1000A0EB0000A0EB0520A0EB0E80A0EB0FF0A0EB0FF0A0E
                  B0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0E
                  B0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0E
                  B0AC0A0EB0090A0EB0000A0EB0000A0EB0000A0EB0000A0EB0000A0EB0000B0F
                  B3000B0FB3000B0FB2000B0EB1000B0EB1000A0EB1000A0EB1000A0EB1000A0E
                  B0000A0EAF000A0EB03A0A0EB0660A0EB0000A0EB0050A0EB0AE0A0EB0A60A0E
                  AF000A0EB0950A0EB0FF0A0EB0F50A0EB03B0A0EB0000A0EB0000A0EB0000A0E
                  B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000A0EB0000A0EB0000A0EB0000A0EB0000A0EB0000A0EB06A0A0E
                  B0FF0A0EB0D70A0EB0200A0EB0310A0EB0FF0A0EB0AB0A0EB1070A0EB0280A0E
                  B0C50A0EB0600A0EB00F0A0EB1000A0EB1000A0EB1000B0EB1000B0EB1000B0E
                  B2000B0EB2000B0EB2000B0EB2000A0EB0000A0EB0000A0EB0000A0EB0000A0E
                  B0000A0EB0000A0EB05D0A0EB0FE0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0E
                  B0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0E
                  B0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB09F0A0E
                  B1110A0EB1000A0EB0000A0EAF000A0EB0090A0EB08F0A0EB0FD0A0EB0FF0A0E
                  B0FF0A0EB0FF0A0EB0FF0A0EB0C70A0EB02F0A0EB0000A0EAF000A0EB1000A0E
                  B1000A0EB0610A0EB0EF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0E
                  B0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0E
                  B0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0FF0A0EB0AC0A0EB0090A0E
                  B0000A0EB0000A0EB0000A0EB0000A0EB0000A0EB0000B0FB3000B0FB3000B0F
                  B2000B0EB1000B0EB1000A0EB1000A0EB1000A0EB1000A0EB01D0A0EB06B0A0E
                  B0E40A0EB06A0A0EB0020A0EB0920A0EB0FF0A0EB08D0A0EB0000A0EB0910A0E
                  B0FF0A0EB0950A0EB0000A0EB0000A0EB0000A0EB0000A0EB000FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0E
                  B0000A0EB0000A0EB0000A0EB0000A0EB0000A0EB00D0A0EB1BA0A0EB1EC0A0E
                  B1240A0EB1330A0EB1FD0A0EB1FF0A0EB1820A0EB1000A0EB1C40A0EB1FF0A0E
                  B1B90A0EB15C0A0EB1190A0EB1000B0EB1000B0EB1000B0EB2000B0EB2000B0E
                  B2000B0EB2000B0EB2000A0EB1000A0EB1000A0EB1000A0EB1000A0EB1000A0E
                  B15D0A0EB1FE0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0E
                  B1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0E
                  B1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1AF0A0EB11C0A0E
                  B1000B0EB1000A0EB0000A0EB0030A0EB1800A0EB1F50A0EB1FF0A0EB1FF0A0E
                  B1B70A0EB1210A0EB0000A0EAF000B0EB0000A0EB1040A0EB1750A0EB1F80A0E
                  B1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0E
                  B1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0E
                  B1FF0A0EB1FF0A0EB1FF0A0EB1FF0A0EB1AC0A0EB1090A0EB1000A0EB1000A0E
                  B1000A0EB1000A0EB1000B0FB3000B0FB3000B0FB3000B0FB2000B0EB1000B0E
                  B1000A0EB1000A0EB1270A0EB1770A0EB1D00A0EB1FF0A0EB1EA0A0EB1250A0E
                  B15A0A0EB1F90A0EB1FF0A0EB1960A0EB1000A0EB1AC0A0EB1E00A0EB01B0A0E
                  B0000A0EB0000A0EB0000A0EB0000A0EB000FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0EB0000A0EB0000A0E
                  B0000A0EB0000A0EB0000A0EB0000A0EB12E0B0EB1D10B0EB1420B0EB1410B0E
                  B1FC0B0EB1FF0B0EB1F20B0EB13A0B0EB18A0B0EB1FF0B0EB1FF0B0EB1FF0B0E
                  B1C60B0EB1690B0EB10D0B0EB1000B0EB2000B0EB2000B0EB2000B0EB2000B0E
                  B2000B0EB2000B0EB1000B0EB1000B0EB1000B0EB1000B0EB15D0B0EB1FE0B0E
                  B1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0E
                  B1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0E
                  B1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1C60B0EB12D0B0EB2000B0E
                  B2000A0EB0000A0EB1000A0EB1690B0EB1EE0A0EB1AB0A0EB1170A0EB1000A0E
                  B0000B0EB2000B0EB1090B0EB18A0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0E
                  B1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0E
                  B1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0E
                  B1FF0B0EB1FF0B0EB1AC0B0EB1090B0EB1000B0EB1000B0EB1000B0EB1000B0F
                  B2000B0FB3000B0FB3000B0FB3000B0FB2000B0EB1000B0EB1110B0EB1790B0E
                  B1DA0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1C50B0EB12C0B0EB1DB0B0EB1FF0B0E
                  B1FF0B0EB1A70B0EB1120B0EB1A60A0EB1450A0EB0000A0EB0000A0EB0000A0E
                  B0000A0EB0000A0EB000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000A0EB0000A0EB0000A0EB0000A0EB0000A0E
                  B0000A0EB0000A0EB1000B0EB1410B0EB12F0B0EB1600B0EB1FE0B0EB1FF0B0E
                  B1FF0B0EB1A40B0EB1580B0EB1FA0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FE0B0E
                  B1B70B0EB12D0B0EB2000B0EB2000B0EB2000B0EB2000B0EB2000B0EB2000B0E
                  B1000B0EB1000B0EB1000B0EB1000B0EB15D0B0EB1FE0B0EB1FF0B0EB1FF0B0E
                  B1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0E
                  B1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0E
                  B1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1D60B0EB2380B0EB2000B0FB1000A0E
                  B1000A0EB1000B0EB13A0A0EB1140A0EB1000B0FB2000B0FB2000B0EB2100B0E
                  B19F0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0E
                  B1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0E
                  B1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0EB1FF0B0E
                  B1AC0B0EB1090B0EB1000B0EB1000B0EB1000B0EB1000B0FB2000B0FB3000B0F
                  B3000B0FB3000B0FB2000B0EB12C0B0EB1BB0B0EB1FF0B0EB1FF0B0EB1FF0B0E
                  B1FF0B0EB1FE0B0EB18D0B0EB1750B0EB1FF0B0EB1FF0B0EB1FF0B0EB1C00B0E
                  B1140B0EB12B0A0EB1000A0EB0000A0EB0000A0EB0000A0EB0000A0EB0000A0E
                  B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000A0EB0000A0EB0000A0EB0000A0EB0000A0EB0000A0EB0000A0E
                  B1000B0EB1000B0EB1020B0EB27B0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FA0B0E
                  B1540B0EB2D70B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2D30B0F
                  B2310B0FB3000B0FB3000B0FB3000B0FB3000B0FB3000B0EB2000B0EB2000B0E
                  B2000B0EB2000B0EB25D0B0EB2FE0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0E
                  B2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0E
                  B2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0E
                  B2FF0B0EB2FF0B0EB2FF0B0EB2DE0B0EB2460B0FB2000B0FB2000A0EB1000B0E
                  B1000A0EB1000B0FB3000B0FB2000B0FB2190B0EB2AE0B0EB2FF0B0EB2FF0B0E
                  B2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0E
                  B2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0E
                  B2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2AC0B0EB2090B0E
                  B2000B0EB2000B0EB2000B0FB3000B0FB3000B0FB3000B0FB3000B0FB3000B0F
                  B2250B0EB2CB0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2FF0B0EB2F80B0E
                  B2580B0EB2C80B0EB2FF0B0EB2FF0B0EB2FF0B0EB2D60B0EB20E0B0EB1000A0E
                  B1000A0EB0000A0EB0000A0EB0000A0EB0000A0EB0000A0EB000FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0E
                  B0000A0EB0000A0EB0000A0EB0000A0EB0000A0EB0000A0EB1000B0EB1000B0F
                  B2000B0FB2890B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB26F0B0FB2830B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2C10B0FB3160B0F
                  B3000B0FB3000B0FB3000B0FB3000B0FB2000B0FB2000B0FB2000B0FB2000B0F
                  B25D0B0FB2FE0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2EA0B0FB2580B0FB2000B0FB2000B0EB1000B0FB2000B0F
                  B3000B0FB2230B0FB2BD0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2AC0B0FB2090B0FB2000B0FB2000B0F
                  B2000B0FB3000B0FB3000B0FB3000B0FB3000B0FB3070B0FB2A90B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2B40B0FB23F0B0FB2F70B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2E00B0FB2160B0FB2000B0FB2000B0FB2000B0F
                  B2000B0FB2000B0FB2000B0FB2000B0FB200FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B0FB2000B0FB2000B0F
                  B2000B0FB2000B0FB2000B0FB2000B0FB2000B0FB2000B0FB2000B0FB28F0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2A30B0FB2240B0FB2E50B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB37C0B0FB3010B0FB3000B0F
                  B3000B0FB3000B0FB2000B0FB2000B0FB2000B0FB2000B0FB25D0B0FB2FE0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2F20B0FB2650B0FB3000B0FB3000B0FB3000B0FB32D0B0FB2CC0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2AC0B0FB2090B0FB2000B0FB2000B0FB2000B0FB3000B0F
                  B3000B0FB3000B0FB3000B0FB3540B0FB2FA0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2FF0B0FB2F40B0FB2380B0FB24B0B0FB2FF0B0FB2FF0B0FB2FF0B0F
                  B2FF0B0FB2E10B0FB2180B0FB2000B0FB2000B0FB2000B0FB2000B0FB2000B0F
                  B2000B0FB2000B0FB200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000B0FB3000B0FB3000B0FB3000B0FB3000B0F
                  B3000B0FB3000B0FB3000B0FB3000B0FB3000B0FB3870B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3BC0B0FB3010B0FB3560B0FB3F40B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3E40B0FB3220B0FB3000B0FB3000B0FB3000B0F
                  B3000B0FB3000B0FB3000B0FB3000B0FB35D0B0FB3FE0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3F90B0FB37D0B0FB3000B0FB33B0B0FB3D60B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3AC0B0FB3090B0FB3000B0FB3000B0FB3000B0FB3000B0FB3000B0FB3000B0F
                  B30B0B0FB3B90B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3F30B0F
                  B3630B0FB3000B0FB3630B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3D80B0F
                  B30D0B0FB3000B0FB3000B0FB3000B0FB3000B0FB3000B0FB3000B0FB3000B0F
                  B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000B0FB3000B0FB3000B0FB3000B0FB3000B0FB3000B0FB3000B0F
                  B3000B0FB3000B0FB3000B0FB36F0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3B90B0FB3010B0FB3000B0FB3560B0FB3D80B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3720B0FB4000B0FB4000B0FB4000B0FB4000B0FB3000B0F
                  B3000B0FB3000B0FB35D0B0FB3FE0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FC0B0F
                  B3AB0B0FB3DC0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3AC0B0FB3090B0F
                  B3000B0FB3000B0FB3000B0FB4000B0FB4000B0FB4000B0FB43E0B0FB3F80B0F
                  B3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3C50B0FB34E0B0FB3000B0FB3000B0F
                  B35C0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3FF0B0FB3BC0B0FB3010B0FB3000B0F
                  B3000B0FB3000B0FB3000B0FB3000B0FB3000B0FB3000B0FB300FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B0F
                  B4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0F
                  B4000B0FB4470B0FB4FB0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4A90B0FB4020B0F
                  B4000B0FB3000B0FB3230B0FB48A0B0FB4E40B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4BF0B0FB4080B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0F
                  B45D0B0FB4FE0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4AC0B0FB4090B0FB4000B0FB4000B0F
                  B4000B0FB4000B0FB4000B0FB4000B0FB4840B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4D50B0FB46F0B0FB3130B0FB3000B0FB4000B0FB4000B0FB4470B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB48A0B0FB3000B0FB3000B0FB3000B0FB3000B0F
                  B3000B0FB3000B0FB3000B0FB3000B0FB300FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B0FB4000B0FB4000B0F
                  B4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB4240B0F
                  B4E60B0FB4FF0B0FB4FF0B0FB4FF0B0FB4930B0FB4010B0FB4000B0FB3000B0F
                  B3000B0FB4040B0FB43C0B0FB4950B0FB4F30B0FB4FF0B0FB4E90B0FB41B0B0F
                  B4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB45D0B0FB4FE0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0FB4FF0B0F
                  B4FF0B0FB4FF0B0FB4AC0B0FB4090B0FB4000B0FB4000B0FB4000C0FB4000C0F
                  B4000C0FB4030B0FB4AB0B0FB4FF0B0FB4F10B0FB4800B0FB4110B0FB4000B0F
                  B3000B0FB3000B0FB4000B0FB4000B0FB4360B0FB4F80B0FB4FF0B0FB4FF0B0F
                  B4FD0B0FB4530B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0F
                  B4000B0FB4000B0FB400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000C0FB4000C0FB4000C0FB4000C0FB4000C0F
                  B4000C0FB4000C0FB4000C0FB4000C0FB4000C0FB4020C0FB4A60C0FB4FF0C0F
                  B4FF0C0FB4FF0C0FB4800C0FB4000C10B5000C10B5000C0FB5000C0FB4710C0F
                  B4BF0C0FB4540C0FB44F0C0FB4E30C0FB4FF0C0FB4450C0FB4000C0FB4000C10
                  B5000C10B6000C0FB5000C0FB4000C0FB45F0C0FB4FF0C0FB4FF0C0FB4FF0C0F
                  B4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0F
                  B4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0F
                  B4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0F
                  B4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0F
                  B4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0F
                  B4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0F
                  B4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0FB4FF0C0F
                  B4AE0C0FB4090C0FB4000C0FB4000C10B5000C0FB4000C0FB4000C0FB4110C0F
                  B4E10C0FB4E60C0FB44C0B0FB4350C0FB48A0C0FB4110C0FB4000C10B5000C10
                  B5000C0FB5000C0FB4330C0FB4F20C0FB4FF0C0FB4FF0C0FB4D40B0FB4160B0F
                  B4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0FB4000B0F
                  B400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5430C10B5F90C10B5FF0C10B5FF0C10
                  B5770C10B5050C10B5120C10B5000C0FB5000C10B5BE0C10B5FF0C10B5B10C10
                  B4000C0FB53C0C10B5E50C10B5840C10B5000C10B5000C10B5000C10B6000C10
                  B6000C10B5000C10B5630C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10
                  B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10
                  B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10
                  B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10
                  B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10
                  B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10
                  B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10
                  B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5FF0C10B5B30C10B50A0C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5370C10B5E70C0FB5420C10
                  B4000C10B55B0C10B5CA0C0FB5180C10B5000C10B5000C10B5350C0FB5180C10
                  B52D0C10B5F10C10B5FF0C10B5FF0C10B56D0C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B500FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5040C10B5A10C10B5FF0C10B5FF0C10B57D0C10B5040C10
                  B56F0C10B5800C10B5100C10B5340C10B58C0C10B53C0C10B5000C0FB5000C10
                  B5490C10B5840C10B5000C10B5000C10B5000C10B6000C10B6000C10B5000C10
                  B5260C10B5680C10B5690C10B5670C10B5670C10B5670C10B5670C10B5670C10
                  B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10
                  B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10
                  B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10
                  B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10
                  B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10
                  B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10B5670C10
                  B5670C10B5670C10B5670C10B56F0C10B5460C10B6040C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5330C10B54D0C0FB5000C10B5100C10B5120C10
                  B5140C0FB5000C10B52A0C10B5A00C10B5AB0C0FB5140C10B5300C10B5F80C10
                  B5FF0C10B5BF0C10B5100C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B500FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5270C10B5D30C10B5FF0C10B59D0C10B6000C10B5400C10B5EF0C10
                  B5D20C10B5550C10B5030C10B5000C10B54F0C10B5550C10B5260C10B5440C10
                  B52F0C10B5300C10B52A0C10B61A0C10B6070C10B6000C10B6000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B6020C10B5240C10B5460C10B5620C10B5710C10
                  B5700C10B56D0C10B5620C10B5970C10B58D0C10B60A0C10B6000C10B5730C10
                  B5E30C10B5FF0C10B5640C10B5000C10B54D0C10B5FF0C10B5DE0C10B5340C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B6420C10B6E80C10B6D70C10B6020C10B6060C10B6B00C10B6FF0C10B6FD0C10
                  B69E0C10B6100C10B5300C10B6E10C10B6FB0C10B6F10C10B6F90C10B6FA0C10
                  B6F70C10B6E40C10B6B60C10B6770C10B6280C10B6000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B6000C10
                  B63D0C10B6A30C10B6F00C10B6FC0C10B6FE0C10B6FF0C10B6FF0C10B6FD0C10
                  B6FF0C10B6F50C10B5440C10B6140C10B6AE0C10B6FF0C10B6FF0C10B6D80C10
                  B5220C10B6000C10B6940C10B6EF0C10B6470C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B6000C10B64E0C10
                  B6D60C10B6340C10B6000C10B6800C10B6FF0C10B6FF0C10B6FF0C10B6BE0C10
                  B6130C10B6600C10B6FF0C10B6FF0C10B6FF0C10B6FF0C10B6FF0C10B6FF0C10
                  B6FF0C10B6FF0C10B6DC0C10B6670C10B6070C10B7000C10B6000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B6000C10B7000C10B6090C10B6790C10B6F10C10B6FF0C10
                  B6FF0C10B6FF0C10B6FF0C10B6FF0C10B6FF0C10B6FF0C10B6FF0C10B67A0C10
                  B60F0C10B6BF0C10B6FF0C10B6FF0C10B6FF0C10B6B50C10B60C0C10B6080C10
                  B6A90C10B6510C10B6000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B500FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B6000C10B6000C10B63A0C10B7390C10
                  B7000C10B6490C10B7F20C10B7FF0C10B7FF0C10B7FF0C10B7AD0C10B6090C10
                  B6980C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10
                  B7FF0C10B7FF0C10B7980C10B70E0C10B7000D10B7000D10B6000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B6000C10B7000C10
                  B7000C10B70B0C10B7980C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10
                  B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7A70C10B6090C10B7970C10B7FF0C10
                  B7FF0C10B7FF0C10B7FF0C10B77E0C10B6000C10B60D0C10B6220C10B6000C10
                  B6000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B500FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B6000C10B6000C10B6000C10B7030C10B7000C10B7200C10
                  B7D60C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7650C10B60B0C10B7B40C10
                  B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10
                  B7FF0C10B79B0C10B7050D10B7000D10B7000D10B6000D10B6000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B6000C10B6000C10B7000C10B7000C10B7000C10B7900C10
                  B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10
                  B7FF0C10B7B70C10B7120C10B7410C10B7F90C10B7FF0C10B7FF0C10B7FF0C10
                  B7F60C10B74E0C10B6000C10B6000C10B6000C10B6000C10B6000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B6000C10B6000C10B6000C10B7000C10B7000C10B7020C10B7B70C10B7FF0C10
                  B7FF0C10B7FF0C10B7FF0C10B7CF0D10B70C0C10B7150C10B7B20C10B7FF0C10
                  B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10
                  B7760D10B7000D10B7000D10B7000D10B7000D11B8000D11B8000D11B8000D11
                  B8000D11B8000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000C10B7640C10B7FD0C10B7FF0C10B7FF0C10
                  B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7FC0C10B7A00C10B7130C10
                  B7000C10B79D0C10B7FF0C10B7FF0C10B7FF0C10B7FF0C10B7DB0C10B7270C10
                  B7000C10B6000C10B6000C10B6000C10B6000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B6000C10B6000C10
                  B6000C10B7000C10B7000C10B7000D10B76D0D10B7FC0D10B7FF0D10B7FF0D10
                  B7FF0D10B7F90D10B7410C10B7000C10B7080D10B76B0D10B7CB0D10B7ED0D10
                  B7F60D10B7FA0D10B7FC0D10B7FF0D10B7FF0D10B7FF0D10B7EF0D10B7410D10
                  B7000D10B7000D10B7000D11B8000D11B8000D11B9000D11B9000D11B9000D11
                  B9000D11B9000C10B6000C10B6000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B6000C10B6000D11B9000D11
                  B9000D11B9000D11B9000D11B9000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B82E0D10B7E70D10B7FF0D10B7F60D10B7E90D10B7DD0D10B7D20D10
                  B7CB0D10B7C40D10B7A10D10B7400C10B7010C10B7000D11B8190D10B7D70D10
                  B7FF0D10B7FF0D10B7FF0D10B7FF0D10B7A20D10B7000D10B7000C10B6000C10
                  B6000C10B6000C10B6000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B500FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B6000C10B6000C10B6000C10B7000C10
                  B7000C10B7000D10B7290D11B8E50D11B8FF0D11B8FF0D11B8FF0D11B8FF0D11
                  B8830D11B8050D11B82C0D10B7120D10B7000D11B8360D11B85A0D11B8670D11
                  B8710D11B87F0D11B8920D11B8C00D11B8F20D11B8C80D11B8140D11B8000D11
                  B8000D11B8000D11B8000D11B9000D11B9000D11B9000D11B9000D11B9000D11
                  B9000D11BA000C10B7000C10B6000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B6000C10B7000D11B9000D11B9000D11B9000D11B9000D11B9000D11
                  B9000D11B9000D11B8000D11B8000D11B8000D11B8000D11B80F0D11B8A60D11
                  B8DA0D11B8910D11B85C0D11B8330D10B7220D10B71A0D10B7140D10B7010D10
                  B7000D11B8230D11B8210D11B8000D11B8480D11B8F90D11B8FF0D11B8FF0D11
                  B8FF0D11B8F80D11B8530D10B7000D10B7000C10B7000C10B7000C10B6000C10
                  B6000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B500FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B6000C10B6000C10B6000D11B8000D11B8000D11B8000D11
                  B8020D11B89E0D11B8FF0D11B8FF0D11B8FF0D11B8FF0D11B8BD0D11B8030D11
                  B8590D11B8C50D11B8660D11B8090D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8040D11B8460D11B89A0D11B8480D11B8000D11B8000D11B8000D11
                  B8000D11B9000D11B9000D11B9000D11B9000D11B9000D11B9000D11BA000D11
                  BA000D11B9000D11B8000C10B6000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B6000D11B8000D11B9000D11
                  BA000D11B9000D11B9000D11B9000D11B9000D11B9000D11B9000D11B9000D11
                  B8000D11B8000D11B8000D11B8000D11B81B0D11B8680D11B8230D11B8000D11
                  B8000D11B8000D10B7000D11B8000D11B8000D11B8260D11B88E0D11B8B30D11
                  B82C0D11B9000D11B8850D11B8FF0D11B8FF0D11B8FF0D11B8FF0D11B8C30D11
                  B80D0D11B8000D11B8000D11B8000D11B8000D11B7000D11B7000D11B7000D11
                  B7000D11B7000D11B7000D11B7000D11B7000D11B7000D11B7000D11B7000D11
                  B7000D11B7000D11B700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000D11B7000D11B7000D11B7000D11B7000D11
                  B7000D11B7000D11B7000D11B7000D11B7000D11B7000D11B7000D11B7000D11
                  B7000D11B7000D11B7000D11B8000D11B8000D11B8000D11B8000D11B8300D11
                  B8EC0D11B8FF0D11B8FF0D11B8FF0D11B8E90D11B8140D11B80C0D11B8CE0D11
                  B8FF0D11B8C30D11B8500D11B8000D11B9000D11B8080D11B8320D11B90D0D11
                  B9000D11B9100D11B83E0D11B83F0D11B8430D11B8430D11B82D0D11B9090D11
                  B9000D11B9000D11B9000D11B9000D11B9000D11BA000D11BA000D11BA000D11
                  BA000D11B9000D11B8000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000D11B8000D11B9000D11BA000D11BA000D11BA000D11B9000D11
                  B9000D11B9000D11B9000D11B9000D11B9000D11B9140D11B8390D11B8440D11
                  B8420D11B8390D11B8210D11B9020D11B9000D11B8200D11B82C0D11B8000D11
                  B8000D11B8130D11B8790D11B8DA0D11B8FF0D11B87F0D11B9000D11B9030D11
                  B8B60D11B8FF0D11B8FF0D11B8FF0D11B8FA0D11B8490D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B9750D11B9FF0D11
                  B9FF0D11B9FF0D11B9FE0D11B95F0D11B8000D11B9660D11B9FF0D11B9FF0D11
                  B9F30D11B9880D11B90A0D11B9000D11B9740D11B9DB0D11B9C70D11B9D30D11
                  B9E30D11B9ED0D11B9EF0D11B9EF0D11B9E90D11B9C30D11B9790D11B91D0D11
                  B9000D11B9000D11B9000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11B9000D11B8000C10B5000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B5000C10B5000C10B5000C10B5000C10B5000D11B8000D11B9000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11B9000D11B9000D11B9000D11
                  B9000D11B93A0D11B9930D11B9D50D11B9EC0D11B9EF0D11B9EF0D11B9EC0D11
                  B9E20D11B9CE0D11B9CA0D11B9CE0D11B93F0D11B8000D11B9260D11B9BB0D11
                  B9FE0D11B9FF0D11B9E30D11B82E0D11B9000D11B92D0D11B9F10D11B9FF0D11
                  B9FF0D11B9FF0D11B9880D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B800FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B9070D11B9940D11B9FF0D11B9FF0D11
                  B9FF0D11B9AE0D11B9000D11B8340D11B9E60D11B9FF0D11B9FF0D11B9FF0D11
                  B99B0D11B9050D11B9070D11B9AE0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11
                  B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9D90D11B95D0D11B9020D11
                  B9000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000C10B7000C10B6000C10B5000C10B5000C10B5000C10B5000C10
                  B5000C10B6000C10B7000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000D11BA000D11B9000D11B9000D11B90D0D11B9890D11B9F20D11
                  B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11
                  B9FF0D11B9670D11B9000D11B9250D11B9CC0D11B9FF0D11B9FF0D11B9FF0D11
                  B9B40D11B9060D11B9000D11B97F0D11B9FF0D11B9FF0D11B9FE0D11B9900D11
                  B9070D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B800FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B9000D11B90B0D11B9910D11B9FA0D11B9FF0D11B9EC0D11
                  B9320D11B90B0D11B9C40D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B96E0D11
                  B9000D11B91B0D11B9BF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11
                  B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FB0D11B97A0D11B9030D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000C10B7000C10B6000C10B4000C10B6000C10B7000D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11B9000D11B9190D11B9AF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11
                  B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B97D0D11B9000D11
                  B90A0D11B9B60D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B98A0D11B9000D11
                  B91B0D11B9DF0D11B9FF0D11B9EB0D11B9800D11B9070D11B9000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B9000D11B9000D11B9010D11B9610D11B9CD0D11B9FF0D11B9B40D11B9020D11
                  B9840D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9E70D11B9250D11B9000D11
                  B91C0D11B9B50D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11
                  B9FF0D11B9FF0D11B9FF0D11B9FD0D11B97B0D11BA030D11BA000D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11B9000D11B7000D11B9000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11B9190D11
                  B9BD0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11B9FF0D11
                  B9FF0D11B9FF0D11B9FB0D11B97F0D11B9030D11BA000D11B9610D11B9FF0D11
                  B9FF0D11B9FF0D11B9FF0D11B9F20D11B9410D11BA080D11B9AA0D11B9F90D11
                  B9A90D11B9410D11B9000D11B9000D11B9000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B9000D11B9000D11
                  B9000D11B9000D11B91E0D11BA6C0D11BAC40D11BA580D11BA470D11BAF20D11
                  BAFF0D11BAFF0D11BAFF0D11BAFF0D11BA7B0D11BA000D11BA000D11BA1C0D11
                  BA970D11BAFB0D11BAFF0D11BAFF0D11BAFF0D11BAFF0D11BAFF0D11BAFF0D11
                  BAFF0D11BAFF0D11BAFB0D11BA690D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BB000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA0A0D11BAAA0D11BAFF0D11BAFF0D11
                  BAFF0D11BAFF0D11BAFF0D11BAFF0D11BAFF0D11BAFF0D11BAFF0D11BAE00D11
                  BA640D11BA050D11BA020D11BA0A0D11BAC60D11BAFF0D11BAFF0D11BAFF0D11
                  BAFF0D11BAD50D11BA040D11BA370D11BA8A0D11BA440D11B9060D11B9000D11
                  B9000D11B9000D11B9000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B800FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B9000D11B9000D11B9000D11B9000D11
                  B9000D11BA000D11BA180D11BA220D11BA0C0D11BACC0D11BAFF0D11BAFF0D11
                  BAFF0D11BAFF0D11BABF0D11BA0D0D11BAA40D11BA8D0D11BA060D11BA430D11
                  BAA50D11BACA0D11BAD10D11BACE0D11BAC80D11BAC60D11BAC60D11BAD40D11
                  BAF90D11BAF60D11BA410D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA020D11BA860D11BAFF0D11BAEC0D11BACC0D11BAC50D11BAC70D11
                  BACA0D11BAD00D11BAD00D11BAC30D11BA890D11BA1D0D11BA1F0D11BACB0D11
                  BA540D11BA260D11BAF40D11BAFF0D11BAFF0D11BAFF0D11BAFF0D11BA880D11
                  BA000D11BA0D0D11BA060D11BA000D11B9000D11B9000D11B9000D11B9000D11
                  B9000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B800FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B9000D11B9000D11B9000D11B9000D11B9000D11BA000D11
                  BA000D11BA000D11BA000D11BA7B0D11BAFF0D11BAFF0D11BAFF0D11BAFF0D11
                  BAEF0D11BA340D11BA680D11BA690D11BA000D11BA000D11BA020D11BA0A0D11
                  BA140D11BA110D11BA090D11BA070D11BA080D11BA150D11BA3F0D11BA840D11
                  BA940D11BA120D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA3A0D11
                  BAA80D11BA6C0D11BA2D0D11BA0F0D11BA060D11BA070D11BA0C0D11BA130D11
                  BA130D11BA060D11BA000D11BA000D11BA170D11BA8F0D11BA320D11BA6A0D11
                  BAFF0D11BAFF0D11BAFF0D11BAFF0D11BAF20D11BA330D11BA000D11BA000D11
                  BA000D11BA000D11B9000D11B9000D11B9000D11B9000D11B9000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B9000D11B9000D11B9000D11B9000D11B9000D11BA000D11BA000D11BA000D11
                  BA000D11BA1A0D11BADB0D11BAFF0D11BAFF0D11BAFF0D11BAFF0D11BA670D11
                  BA000D11BA000E12BB040D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA150D11BA100D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA1D0D11BA070D11BA000D11
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000E12BB000E12BB030D11BA000D11BA000D11BAB70D11BAFF0D11BAFF0D11
                  BAFF0D11BAFF0D11BA940D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  B9000D11B9000D11B9000D11B9000D11B9000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B9000D11B9000D11
                  B9000D11B9000D11B9000D11BA000D11BA000E12BB000E12BB000E12BB000E12
                  BB580E12BBFB0E12BBFF0E12BBFF0E12BBFF0E12BBB00E12BB020E12BB010E12
                  BB310E12BB5A0E12BB430E12BB450E12BB4F0E12BB5D0E12BB700E12BB770E12
                  BB660E12BB4C0E12BB1E0E12BB000E12BB000D11BA000E12BB000E12BB000E12
                  BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12
                  BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11BA000D11
                  BA000D11BA000D11BA000E12BB000E12BB000E12BB000E12BB310E12BB560E12
                  BB6D0E12BB770E12BB6B0E12BB580E12BB4B0E12BB420E12BB480E12BB580E12
                  BB160E12BB000E12BB260E12BBE40E12BBFF0E12BBFF0E12BBFF0E12BBDD0E12
                  BB210D11BA000D11BA000D11BA000D11BA000D11BA000D11B9000D11B9000D11
                  B9000D11B9000D11B9000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B800FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B9000D11B9000D11B9000D11B9000D11
                  B9000D11BA000D11BA000E12BB000E12BB000E12BB000E12BB010E12BB8A0E12
                  BBFF0E12BBFF0E12BBFF0E12BBEA0E12BB2D0E12BB000E12BB170E12BBB10E12
                  BBF00E12BBEE0E12BBF50E12BBFE0E12BBFF0E12BBFF0E12BBFF0E12BBF30E12
                  BBD30E12BB850E12BB1D0E12BB000E12BB000E12BC000E12BC000E12BC000E12
                  BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BB000E12
                  BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12
                  BB000E12BB000E12BB3D0E12BBA30E12BBE00E12BBF90E12BBFF0E12BBFF0E12
                  BBFF0E12BBFB0E12BBF20E12BBEC0E12BBF40E12BB730E12BB070E12BB000E12
                  BB7D0E12BBFD0E12BBFF0E12BBFF0E12BBEC0E12BB4B0E12BB000E12BB000E12
                  BB000E12BB000D11BA000D11BA000D11B9000D11B9000D11B9000D11B9000D11
                  B9000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B800FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B9000D11B9000D11B9000D11B9000D11B9000D11BA000D11
                  BA000E12BB000E12BB000E12BB000E12BB000E12BB070E12BB8F0E12BBFE0E12
                  BBFF0E12BBFF0E12BB900E12BB000E12BB000E12BB230E12BBD50E12BBFF0E12
                  BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12
                  BBD20E12BB470E12BB000E12BC000E12BC000E12BC000E12BC000E12BC000E12
                  BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12
                  BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BB050E12BB780E12
                  BBEB0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12
                  BBFF0E12BBFF0E12BB9D0E12BB080E12BB000E12BB170E12BBCC0E12BBFF0E12
                  BBFF0E12BBE80E12BB560E12BB000E12BB000E12BB000E12BB000E12BB000D11
                  BA000D11BA000D11B9000D11B9000D11B9000D11B9000D11B9000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B9000D11B9000D11B9000D11B9000D11B9000D11BA000D11BA000E12BB000E12
                  BB000E12BB000E12BB000E12BB000E12BB010E12BB660E12BBE10E12BBFF0E12
                  BBEF0E12BB3F0E12BB000E12BB000E12BB350E12BBDE0E12BBFF0E12BBFF0E12
                  BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBED0E12
                  BB5B0E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12
                  BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12
                  BC000E12BC000E12BC000E12BC060E12BB940E12BBFF0E12BBFF0E12BBFF0E12
                  BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBAA0E12
                  BB0E0E12BB000E12BC010E12BB7B0E12BBFF0E12BBFA0E12BBBD0E12BB380E12
                  BB000E12BB000E12BB000E12BB000E12BB000E12BB000D11BA000D11BA000D11
                  B9000D11B9000D11B9000D11B9000D11B9000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B9000D11B9000D11
                  B9000D11B9000D11B9000D11BA000D11BA000E12BB000E12BB000E12BB000E12
                  BB000E12BB000E12BB000E12BB000E12BB260E12BB880E12BBDA0E12BBBE0E12
                  BC190E12BB000E12BB000E12BB3B0E12BBD20E12BBFF0E12BBFF0E12BBFF0E12
                  BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBEB0E12BC490E12
                  BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12
                  BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12
                  BC030E12BC8A0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBFF0E12
                  BBFF0E12BBFF0E12BBFF0E12BBFF0E12BBA70E12BB170E12BB000E12BC010E12
                  BC460E12BBDF0E12BBC70E12BB6A0E12BB0D0E12BB000E12BB000E12BB000E12
                  BB000E12BB000E12BB000E12BB000D11BA000D11BA000D11B9000D11B9000D11
                  B9000D11B9000D11B9000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B800FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B9000D11B9000D11B9000D11B9000D11
                  B9000D11BA000D11BA000E12BB000E12BB000E12BB000E12BB000E12BB000E12
                  BB000E12BB000E12BB000E12BB000E12BC250E12BC640E12BC310E12BC010E12
                  BC000E12BB000E12BC250E12BCA00E12BCEF0E12BCFF0E12BCFF0E12BCFF0E12
                  BCFF0E12BCFF0E12BCFF0E12BCFF0E12BCFF0E12BCE50E12BC2F0E12BC000E12
                  BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12
                  BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC6A0E12BCFF0E12
                  BCFF0E12BCFF0E12BCFF0E12BCFF0E12BCFF0E12BCFF0E12BCFF0E12BCFF0E12
                  BCD80E12BC770E12BC090E12BB000E12BC000E12BC050E12BC4D0E12BC560E12
                  BC0B0E12BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12
                  BB000E12BB000D11BA000D11BA000D11B9000D11B9000D11B9000D11B9000D11
                  B9000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B800FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B9000D11B9000D11B9000D11B9000D11B9000D11BA000D11
                  BA000E12BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12
                  BB000E12BB000E12BC000E12BC000E12BC020E12BC000E12BC000E12BB000E12
                  BC000E12BC060E12BC390E12BC7E0E12BC9A0E12BC9A0E12BC960E12BC910E12
                  BC8F0E12BC950E12BCAB0E12BCEA0E12BCCC0E12BC190E12BC000E12BC000E12
                  BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12
                  BC000E12BC000E12BC000E12BC4A0E12BCF50E12BCD00E12BCA00E12BC920E12
                  BC8E0E12BC920E12BC980E12BC9B0E12BC950E12BC6B0E12BC260E12BC000E12
                  BC000E12BB000E12BC000E12BC020E12BC000E12BC000E12BC000E12BB000E12
                  BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12BB000D11
                  BA000D11BA000D11B9000D11B9000D11B9000D11B9000D11B9000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B9000D11B9000D11B9000D11B9000D11B9000D11BA000D11BA000E12BB000E12
                  BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12BB000E12
                  BC000E12BC000E12BC000E12BC000E12BC000E12BB000E12BC000E12BC000E12
                  BC000E12BC000E12BC060E12BC060E12BC050E12BC030E12BC030E12BC050E12
                  BC0B0E12BC290E12BC7B0E12BC4B0E12BC000E12BC000E12BC000E12BC000E12
                  BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12BC000E12
                  BC0B0E12BC700E12BC5E0E12BC170E12BC080E12BC040E12BC030E12BC040E12
                  BC050E12BC060E12BC040E12BC000E12BC000E12BC000E12BC000E12BB000E12
                  BC000E12BC000E12BC000E12BC000E12BC000E12BB000E12BB000E12BB000E12
                  BB000E12BB000E12BB000E12BB000E12BB000E12BB000D11BA000D11BA000D11
                  B9000D11B9000D11B9000D11B9000D11B9000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11B8000D11
                  B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
                Stretch = True
              end
            end
          end
          object TabSheet10: TTabSheet
            Caption = #1054#1090#1076#1077#1083' '#1082#1072#1076#1088#1086#1074
            ImageIndex = 4
            object SpeedButton43: TSpeedButton
              Left = 13
              Top = 59
              Width = 250
              Height = 30
              Caption = #1057#1087#1088#1072#1074#1082#1072' '#1074#1099#1087#1091#1089#1082#1085#1080#1082#1091
              OnClick = SpeedButton43Click
            end
            object SpeedButton44: TSpeedButton
              Left = 13
              Top = 23
              Width = 250
              Height = 30
              Caption = #1057#1087#1088#1072#1074#1082#1072' '#1089#1090#1091#1076#1077#1085#1090#1091
              OnClick = SpeedButton44Click
            end
            object Button31: TButton
              Left = 13
              Top = 95
              Width = 250
              Height = 30
              Caption = #1057#1087#1088#1072#1074#1082#1091' '#1086#1090#1095#1080#1089#1083#1077#1085#1085#1086#1084#1091
              TabOrder = 0
              OnClick = Button31Click
            end
            object Panel29: TPanel
              Left = 269
              Top = 23
              Width = 444
              Height = 330
              BorderStyle = bsSingle
              Color = clSkyBlue
              ParentBackground = False
              TabOrder = 1
              Visible = False
              object Label117: TLabel
                Left = 16
                Top = 8
                Width = 43
                Height = 18
                Caption = #1044#1040#1053#1040
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label118: TLabel
                Left = 16
                Top = 54
                Width = 200
                Height = 18
                Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1086#1073#1091#1095#1077#1085#1080#1103
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object SpeedButton59: TSpeedButton
                Left = 304
                Top = 287
                Width = 121
                Height = 25
                Caption = #1054#1090#1084#1077#1085#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
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
                OnClick = SpeedButton59Click
              end
              object SpeedButton60: TSpeedButton
                Left = 176
                Top = 287
                Width = 122
                Height = 25
                Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E6040000424DE604000000000000360000002800000014000000140000000100
                  180000000000B0040000C40E0000C40E00000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000143C18153C18000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000014531B3DDC4A57F06433623700000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000C4C13
                  21BE2F47C14E5FE16680F58A3A613E0000000000000000000000000000000000
                  0000000000000000000000000000000000000000000003420910A91E30B73976
                  F7827CFA8757DE5E61ED6C205B26000000000000000000000000000000000000
                  00000000000000000000000000000000370402970F26AB3055EF6360FD7066FE
                  7461F96E3CD9453CDC4916511C00000000000000000000000000000000000000
                  0000000000000000002A0200800B1CA42642DD505BEF6A7CF18772F27E56F666
                  53F16133D23D28C7350D48130000000000000000000000000000000000000000
                  0000290212741B1C962634CE4265E17188E79190EC9988EC9169E8754AEA5A4A
                  E8592BBC3512AB20034009000000000000000000000000000000002D00308A38
                  42A24B39BF457ADA8396E19D92E39A6BD27479D98184E68E62E06E3EDE4D3FDA
                  4D20A129018E0E0032050000000000000000000000000079034EA35576CB7E95
                  DA9CA0DEA69CDEA368CE7215B8243DC84969D5747DDD865AD56531D24033CD41
                  188B210069080021030000000000000000000036002C9C368CD294B7DCBBAED9
                  B26DC9760CB01B035A0B075F0F18BB275CCD6779D68251CB5C22C53125BF3314
                  791C004C07001A0200000000000000000000390307A11178CD808ED09408AC16
                  005705000000000000045F0C11B52057C46173CD7B46C15112B62116B3251072
                  1801450800180000000000000000000000400212AE2018B52400570600000000
                  0000000000000000005A070AA71654B85D71C3783FB44A04A41308A314197823
                  1F5C25011803000000000000000000013205003C060000000000000000000000
                  000000000000000053030AA21759B26174B47A3FA14801890A0B931741864706
                  420B000000000000000000000000000000000000000000000000000000000000
                  0000000000000054040BA7185BAE6377AD7C3F93480C7915116F19013E070000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000057030BA81860AE6786B48A36923E005402001101000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000057030FA71D51B4591F802800150000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000004B04006904001B020000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000}
                ParentFont = False
                OnClick = SpeedButton60Click
              end
              object Label120: TLabel
                Left = 87
                Top = 111
                Width = 55
                Height = 18
                Caption = #1056#1077#1082#1090#1086#1088
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label126: TLabel
                Left = 15
                Top = 168
                Width = 60
                Height = 18
                Caption = #1044#1080#1087#1083#1086#1084
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Edit7: TEdit
                Left = 16
                Top = 27
                Width = 393
                Height = 26
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object Edit9: TEdit
                Left = 16
                Top = 76
                Width = 153
                Height = 26
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object CheckBox4: TCheckBox
                Left = 24
                Top = 139
                Width = 138
                Height = 17
                Caption = #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1054#1050
                Checked = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                State = cbChecked
                TabOrder = 2
              end
              object Edit10: TEdit
                Left = 163
                Top = 108
                Width = 121
                Height = 26
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                Text = #1042'.'#1071'.'#1056#1091#1096#1072#1085#1080#1085
              end
              object Memo1: TMemo
                Left = 16
                Top = 199
                Width = 409
                Height = 82
                TabOrder = 4
              end
              object Edit11: TEdit
                Left = 81
                Top = 165
                Width = 344
                Height = 21
                TabOrder = 5
              end
              object CheckBox5: TCheckBox
                Left = 24
                Top = 112
                Width = 57
                Height = 17
                Caption = #1048'.'#1054'.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 6
              end
            end
          end
          object TabSheet11: TTabSheet
            Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072
            ImageIndex = 5
            object Button32: TButton
              Left = 15
              Top = 55
              Width = 225
              Height = 35
              Caption = #1063#1080#1090#1072#1090#1077#1083#1100#1089#1082#1080#1077' '#1073#1080#1083#1077#1090#1099
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = Button32Click
            end
            object Button33: TButton
              Left = 15
              Top = 16
              Width = 225
              Height = 35
              Caption = #1060#1086#1088#1084#1091#1083#1103#1088#1099
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = Button33Click
            end
          end
          object TabSheet12: TTabSheet
            Caption = #1042#1086#1089#1087#1080#1090#1072#1090#1077#1083#1100#1085#1099#1081' '#1086#1090#1076#1077#1083
            ImageIndex = 6
            object Panel30: TPanel
              Left = 0
              Top = 0
              Width = 806
              Height = 265
              Align = alTop
              TabOrder = 0
              object SpeedButton70: TSpeedButton
                Left = 8
                Top = 16
                Width = 194
                Height = 25
                Caption = #1059#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1100
                OnClick = SpeedButton70Click
              end
              object Panel31: TPanel
                Left = 481
                Top = 16
                Width = 257
                Height = 180
                BorderStyle = bsSingle
                Color = 16776176
                Ctl3D = True
                ParentBackground = False
                ParentCtl3D = False
                TabOrder = 0
                Visible = False
                object SpeedButton71: TSpeedButton
                  Left = 140
                  Top = 150
                  Width = 109
                  Height = 22
                  Caption = #1054#1090#1084#1077#1085#1072
                  OnClick = SpeedButton71Click
                end
                object SpeedButton72: TSpeedButton
                  Left = 8
                  Top = 150
                  Width = 126
                  Height = 22
                  Caption = #1054#1050
                  OnClick = SpeedButton72Click
                end
                object ComboBox20: TComboBox
                  Left = 5
                  Top = 7
                  Width = 129
                  Height = 21
                  TabOrder = 0
                  Text = #1058#1086#1083#1100#1082#1086' '#1085#1072' 5'
                  Items.Strings = (
                    #1058#1086#1083#1100#1082#1086' '#1085#1072' 5'
                    #1058#1086#1083#1100#1082#1086' '#1085#1072' 4 '#1080' 5'
                    #1059#1076#1072#1088#1085#1080#1082#1080' + '#1086#1090#1083#1080#1095#1085#1080#1082#1080)
                end
                object GroupBox30: TGroupBox
                  Left = 140
                  Top = 7
                  Width = 105
                  Height = 141
                  Caption = #1042#1099#1073#1086#1088' '#1082#1091#1088#1089#1072
                  Color = 16776176
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 1
                  OnMouseMove = GroupBox30MouseMove
                  object CheckBox6: TCheckBox
                    Left = 16
                    Top = 17
                    Width = 97
                    Height = 17
                    Caption = '1 '#1082#1091#1088#1089
                    Color = 16776176
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentColor = False
                    ParentFont = False
                    TabOrder = 0
                  end
                  object CheckBox7: TCheckBox
                    Left = 16
                    Top = 40
                    Width = 97
                    Height = 17
                    Caption = '2 '#1082#1091#1088#1089
                    Color = 16776176
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentColor = False
                    ParentFont = False
                    TabOrder = 1
                  end
                  object CheckBox8: TCheckBox
                    Left = 16
                    Top = 60
                    Width = 97
                    Height = 17
                    Caption = '3 '#1082#1091#1088#1089
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 2
                  end
                  object CheckBox9: TCheckBox
                    Left = 16
                    Top = 80
                    Width = 97
                    Height = 17
                    Caption = '4 '#1082#1091#1088#1089
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 3
                  end
                  object CheckBox10: TCheckBox
                    Left = 16
                    Top = 100
                    Width = 97
                    Height = 17
                    Caption = '5 '#1082#1091#1088#1089
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 4
                  end
                  object CheckBox11: TCheckBox
                    Left = 16
                    Top = 120
                    Width = 97
                    Height = 17
                    Caption = '6 '#1082#1091#1088#1089
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 5
                  end
                end
                object GroupBox31: TGroupBox
                  Left = 5
                  Top = 34
                  Width = 129
                  Height = 114
                  Caption = #1060#1086#1088#1084#1072' '#1086#1073#1091#1095#1077#1085#1080#1103
                  Color = 16776176
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 2
                  OnMouseMove = GroupBox31MouseMove
                  object CheckBox12: TCheckBox
                    Left = 24
                    Top = 24
                    Width = 89
                    Height = 17
                    Caption = #1041#1102#1076#1078#1077#1090
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                  object CheckBox13: TCheckBox
                    Left = 24
                    Top = 55
                    Width = 97
                    Height = 17
                    Caption = #1050#1086#1084#1084#1077#1088#1094#1080#1103
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                  end
                end
              end
              object GroupBox27: TGroupBox
                Left = 1
                Top = 195
                Width = 804
                Height = 69
                Align = alBottom
                Caption = #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object SpeedButton62: TSpeedButton
                  Left = 480
                  Top = 24
                  Width = 137
                  Height = 29
                  Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
                  Glyph.Data = {
                    E6040000424DE604000000000000360000002800000014000000140000000100
                    180000000000B0040000C40E0000C40E00000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000143C18153C18000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000014531B3DDC4A57F06433623700000000000000000000000000000000
                    00000000000000000000000000000000000000000000000000000000000C4C13
                    21BE2F47C14E5FE16680F58A3A613E0000000000000000000000000000000000
                    0000000000000000000000000000000000000000000003420910A91E30B73976
                    F7827CFA8757DE5E61ED6C205B26000000000000000000000000000000000000
                    00000000000000000000000000000000370402970F26AB3055EF6360FD7066FE
                    7461F96E3CD9453CDC4916511C00000000000000000000000000000000000000
                    0000000000000000002A0200800B1CA42642DD505BEF6A7CF18772F27E56F666
                    53F16133D23D28C7350D48130000000000000000000000000000000000000000
                    0000290212741B1C962634CE4265E17188E79190EC9988EC9169E8754AEA5A4A
                    E8592BBC3512AB20034009000000000000000000000000000000002D00308A38
                    42A24B39BF457ADA8396E19D92E39A6BD27479D98184E68E62E06E3EDE4D3FDA
                    4D20A129018E0E0032050000000000000000000000000079034EA35576CB7E95
                    DA9CA0DEA69CDEA368CE7215B8243DC84969D5747DDD865AD56531D24033CD41
                    188B210069080021030000000000000000000036002C9C368CD294B7DCBBAED9
                    B26DC9760CB01B035A0B075F0F18BB275CCD6779D68251CB5C22C53125BF3314
                    791C004C07001A0200000000000000000000390307A11178CD808ED09408AC16
                    005705000000000000045F0C11B52057C46173CD7B46C15112B62116B3251072
                    1801450800180000000000000000000000400212AE2018B52400570600000000
                    0000000000000000005A070AA71654B85D71C3783FB44A04A41308A314197823
                    1F5C25011803000000000000000000013205003C060000000000000000000000
                    000000000000000053030AA21759B26174B47A3FA14801890A0B931741864706
                    420B000000000000000000000000000000000000000000000000000000000000
                    0000000000000054040BA7185BAE6377AD7C3F93480C7915116F19013E070000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000057030BA81860AE6786B48A36923E005402001101000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000057030FA71D51B4591F802800150000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000004B04006904001B020000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000}
                  OnClick = SpeedButton62Click
                end
                object Label122: TLabel
                  Left = 12
                  Top = 32
                  Width = 27
                  Height = 13
                  Caption = #1050#1091#1088#1089
                end
                object Label123: TLabel
                  Left = 224
                  Top = 32
                  Width = 86
                  Height = 13
                  Caption = #1043#1086#1076' '#1088#1086#1078#1076#1077#1085#1080#1103
                end
                object SpinEdit1: TSpinEdit
                  Left = 321
                  Top = 32
                  Width = 121
                  Height = 22
                  MaxValue = 0
                  MinValue = 0
                  TabOrder = 0
                  Value = 0
                end
                object ComboBox18: TComboBox
                  Left = 58
                  Top = 32
                  Width = 145
                  Height = 21
                  ItemIndex = 0
                  TabOrder = 1
                  Text = #1042#1089#1077
                  Items.Strings = (
                    #1042#1089#1077
                    '1'
                    '2'
                    '3'
                    '4'
                    '5')
                end
              end
            end
          end
        end
      end
    end
    object Button17: TButton
      Left = 629
      Top = 650
      Width = 136
      Height = 25
      Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1103' Mark'
      TabOrder = 1
      Visible = False
      OnClick = Button17Click
    end
    object Panel33: TPanel
      Left = 1
      Top = 1
      Width = 822
      Height = 41
      Align = alTop
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object SpeedButton74: TSpeedButton
        Left = 1
        Top = 1
        Width = 40
        Height = 39
        Hint = #1055#1086#1080#1089#1082' '#1089#1090#1091#1076#1077#1085#1090#1072
        Align = alLeft
        Flat = True
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000E6A2C5E0E6A2CC2157032F30E6A2CB30E6A2C50FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000F712F61167635F328934AFC2F9B52FF60AC78FC0F712FB3FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00107A
          3361177F39F32A9D50FD2DA353FF62BB7FFF9BCFACFD107A33CAFFFFFF00FFFF
          FF00FFFFFF000000000000000007000000160000001D0000001D0000001D0000
          001D0000001D0000001D0000001D0000001D0000001D0000001D0000001D0000
          001D0000001D0000001D0000001D0000001D0000001D0000001D0F712F781989
          3EF42BA955FD30B15AFF66C586FFA2D9B5FD2F9350F412843766FFFFFF00FFFF
          FF00FFFFFF009292928E929292F2929292F2929292F2929292F2929292F29292
          92F2929292F2929292F2929292F2929292F2929292F2929292F2929292F29292
          92F2929292F2929292F2929292F2929292F2929292F25C906DF8209447FE2DB5
          5BFE34BE62FF6BD08DFFA0DBB4FD2E9B52F4138E3C72FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00929292F2EDEDEDFFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FF92C7A3FF29A351FF32C462FF38CC
          68FF71DA94FF9FDEB4FD2AA252F315984069FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00939393F2EEEEEEFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFD5E3D9FF34AE5BFF6CDB91FF4FDC7DFF79E4
          9CFF9DE1B3FC26A951F316A24461FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00949494F2EEEEEEFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFD7D7D7FFA6A6A6FF8D8D8DFF7A7A7AFF8B8B
          8BFFA3A3A3FFD2D2D2FFEAEAEAFFD5E4DAFF49A567FFA5DEB7FFA6F2BEFF9CE3
          B3FF22AE51F417AB4858FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00959595F2EFEFEFFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFEBEBEBFFE7E7E7FFA9A9A9FF888888FFC2C2C2FFDEDEDEFFF5F5F5FFE1E1
          E1FFC5C5C5FF8F8F8FFFA6A6A6FFC2C2C2FF7A7B7AFF6F8476FF9CE0B2FF26B4
          54FE138F3D63FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00969696F2EFEFEFFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
          EBFFEAEAEAFFA6A6A6FFB3B3B3FFFAFAFAFFF7F7F7FFDDDDDDFFC6C6C6FFD9D9
          D9FFF4F4F4FFFDFDFDFFBDBDBDFF797979FF7C7C7CFFB4C9BBFF75CF93FF7F9C
          88F40000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00979797F2F0F0F0FFECECECFFECECECFFECECECFFECECECFFECEC
          ECFFAEAEAEFFB2B2B2FFFFFFFFFFD2D2D2FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
          C0FFC0C0C0FFC9C9C9FFFFFFFFFFC9C9C9FF9E9E9EFFECECECFFF0F0F0FF9797
          97F20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00989898F2F1F1F1FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFD9D9
          D9FF8F8F8FFFF9F9F9FFD9D9D9FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
          C6FFC6C6C6FFC6C6C6FFC6C6C6FFFFFFFFFF9D9D9DFFCFCFCFFFF1F1F1FF9898
          98F20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009A9A9AF2F1F1F1FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFADAD
          ADFFCBCBCBFFFAFAFAFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCD
          CDFFCDCDCDFFCDCDCDFFCDCDCDFFF0F0F0FFD7D7D7FFA3A3A3FFF1F1F1FF9A9A
          9AF20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009B9B9BF2F1F1F1FFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFF9696
          96FFEBEBEBFFE3E3E3FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
          D4FFD4D4D4FFD4D4D4FFD4D4D4FFDCDCDCFFF5F5F5FF8E8E8EFFF1F1F1FF9B9B
          9BF20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009C9C9CF2F2F2F2FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF9090
          90FFF8F8F8FFE0E0E0FFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDB
          DBFFDBDBDBFFDBDBDBFFDBDBDBFFDCDCDCFFFFFFFFFF8A8A8AFFF2F2F2FF9C9C
          9CF20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009E9E9EF2F2F2F2FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF9D9D
          9DFFEEEEEEFFECECECFFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE3E3E3FFE3E3E3FFE8E8E8FFF7F7F7FF959595FFF2F2F2FF9E9E
          9EF20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009F9F9FF2F3F3F3FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFB9B9
          B9FFD2D2D2FFFCFCFCFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFF7F7F7FFDFDFDFFFAEAEAEFFF3F3F3FF9F9F
          9FF20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00A0A0A0F2F4F4F4FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFE0E0
          E0FFAAAAAAFFFEFEFEFFF2F2F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFFFFFFFFFB4B4B4FFD6D6D6FFF4F4F4FFA0A0
          A0F20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00A2A2A2F2F5F5F5FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
          F2FFBFBFBFFFCECECEFFFFFFFFFFF9F9F9FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFF7F7F7FFFFFFFFFFDADADAFFBABABAFFF2F2F2FFF5F5F5FFA2A2
          A2F20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00A3A3A3F2F5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFEAEAEAFFC0C0C0FFC9C9C9FFFCFCFCFFFFFFFFFFFCFCFCFFFBFBFBFFFCFC
          FCFFFEFEFEFFFEFEFEFFD0D0D0FF9F9F9FFFE0E0E0FFF3F3F3FFF5F5F5FFA3A3
          A3F20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00A5A5A5F2F5F5F5FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF0F0F0FFC5C5C5FFAFAFAFFFDCDCDCFFF4F4F4FFFFFFFFFFF6F6
          F6FFE1E1E1FFB3B3B3FFC3C3C3FFEAEAEAFFF3F3F3FFF3F3F3FFF5F5F5FFA5A5
          A5F20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00A6A6A6F2F6F6F6FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFF4F4F4FFE2E2E2FFC0C0C0FFACACACFFA2A2A2FFAAAA
          AAFFBCBCBCFFDEDEDEFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF6F6F6FFA6A6
          A6F20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00A7A7A7F2F7F7F7FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF7F7F7FFA7A7
          A7F20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00A8A8A8F2F7F7F7FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
          F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF7F7F7FFA8A8
          A8F20000001DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00AAAAAAF2F8F8F8FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF9F9F9FFAAAA
          AAF200000016FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00ABABABF2F9F9F9FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFABAB
          ABF200000007FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00ACACACF2F9F9F9FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFAFAFAFFFF7F7F7FFF7F7F7FFECECECFFDCDCDCFF878787F5A9A9
          A99100000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00ADADADF2F9F9F9FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFAFAFAFFFF6F6F6FFEDEDEDFFDDDDDDFF888888F5AAAAAA910000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00AEAEAEF2F9F9F9FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFAFAFAFFFEDEDEDFFDDDDDDFF888888F5ABABAB91AFAFAF000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00AFAFAFF2FBFBFBFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
          FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
          FAFFFAFAFAFFAFAFAFFFDDDDDDFF898989F5ACACAC91AFAFAF00AFAFAF000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00AFAFAFF2FDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFFDFDFDFFAFAFAFFF898989F5ACACAC91AFAFAF00AFAFAF00AFAFAF000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00B0B0B08EB0B0B0F2B0B0B0F2B0B0B0F2B0B0B0F2B0B0B0F2B0B0
          B0F2B0B0B0F2B0B0B0F2B0B0B0F2B0B0B0F2B0B0B0F2B0B0B0F2B0B0B0F2B0B0
          B0F2B0B0B0F2AFAFAFFFB0B0B08EAFAFAF03AFAFAF00AFAFAF00AFAFAF000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Layout = blGlyphBottom
        OnClick = SpeedButton74Click
      end
      object DBEdit54: TDBEdit
        Left = 614
        Top = 11
        Width = 160
        Height = 21
        Color = clBtnFace
        DataField = 'NameS'
        DataSource = DM.DSStudentData
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object ILmain: TImageList
    DrawingStyle = dsTransparent
    Left = 24
    Top = 40
    Bitmap = {
      494C01011F002800700410001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
      000000000000000000000000000000000000000000000000000000000000090A
      0B000809130008090B0008090B0008080B0008080B0008080B0008090B000809
      0B0008090B00080A0B00090B0C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000391A0800DFB6
      8E00E2C19100EAD09300EAD59600EAD79700EAD89700EAD89700EAD49600EAD0
      9300E8C79000DDB38B00DB9F8900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E0E0000FFFF
      FF00EFEFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF9EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9D9B5003F9934000E7F00000E7F00002F90230071B36900EDF5
      EC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000001000000FAEF
      EB00DCD3E800EEE4E300EBE2E000EBE4DF00EAE4DD00E6E0DA00E4DCD900F3E8
      E700F9F0F000FAF1F100FDD9BC00000000000000000000000000000000000000
      000000000000B5B5B5003434340000000000000000002323230069696900ECEC
      EC00000000000000000000000000000000000000000000000000000000000000
      0000DEEDDD000E7F00000E7F00008FC38900EDF5EC003F9934000E7F000051A2
      4700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFE
      EF00E0E0FB00FBFBFB00FAFAFA00FAFAFA00FAFAFA00FBF9F900F4F8FA0095AC
      CC00FFFFFF00FFFFFF00EFCA9800000000000000000000000000000000000000
      0000DDDDDD00000000000000000089898900ECECEC0034343400000000004747
      4700000000000000000000000000000000000000000000000000000000000000
      000081BC7A000E7F00001E8711000000000000000000B9D9B5000E7F00000E7F
      0000EDF5EC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFF4
      D200DBDBFA00FAF9F900FAF9F900FAFAFA00FDFBFA0087D4F4007FB3E600FBFB
      FB00FCFBFB00FCFCFC00CAA26100000000000000000000000000000000000000
      00007A7A7A0000000000111111000000000000000000B5B5B500000000000000
      0000ECECEC000000000000000000000000000000000000000000000000000000
      000051A247000E7F000051A247000000000000000000C6E0C3000E7F00000E7F
      0000C6E0C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFD6
      A500D6CEEC00F1E9E800F2EAE800FEF1EA0084CDEA0005BAF600B5E6F200F2E8
      E700F2E8E700F2E8E90096713200000000000000000000000000000000000000
      00004747470000000000474747000000000000000000C3C3C300000000000000
      0000C3C3C3000000000000000000000000000000000000000000000000000000
      000051A247000E7F000051A247000000000000000000ABD2A7000E7F00000E7F
      0000DEEDDD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCBF
      7E00DAD9F200F1F0F000FAF4F10000A1EC0006BCF800B9EAF700F4F2F100F3F2
      F200F3F2F200F3F5F8005A3D0C00000000000000000000000000000000000000
      00004747470000000000474747000000000000000000A7A7A700000000000000
      0000DDDDDD000000000000000000000000000000000000000000000000000000
      000051A247000E7F00000E7F0000B9D9B500DEEDDD003F9934000E7F000051A2
      4700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBA8
      6200D7CFE400EEE2E0007EC4E30007BDF8005EE1FF00F3E9E100EDE4E100ECE1
      E100ECE2E200EDE4E8003A230000000000000000000000000000000000000000
      0000474747000000000000000000B5B5B500DDDDDD0034343400000000004747
      4700000000000000000000000000000000000000000000000000000000000000
      000051A247000E7F00002F9023000E7F00000E7F00001E87110071B36900EDF5
      EC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A37F
      3D00DDD7E70080CBEB0008C0F900B6E2ED00EFE8E400ECE9E500EBE7E500EBE6
      E500EBE6E600F0ECED0011050000000000000000000000000000000000000000
      000047474700000000002323230000000000000000001111110069696900ECEC
      EC00000000000000000000000000000000000000000000000000000000000000
      00008FC389000E7F00001E871100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000724A
      19007AC8F0000CC4FD00BDEBF800D6D4D000ECEDEA00EFEEED00DFE0DA00EFF0
      F000D3D3CF00F7F3EF0000000000000000000000000000000000000000000000
      0000898989000000000011111100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEDDD000E7F00000E7F00009DCB98000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000054
      7B000CC8FF004479870023222100A8A8A9001D1D1E00212121006D6D6E002222
      2200B7B7B8001D1E1E0000000000000000000000000000000000000000000000
      0000DDDDDD000000000000000000989898000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000081BC7A000E7F00001E871100D2E7D000D2E7D0000E7F00000E7F
      0000ABD2A7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000577E0012CE
      FF00366D7C004C4B4A0000000000A4A4A4000000000000000000616161000000
      0000B7B7B7000000000000000000000000000000000000000000000000000000
      0000000000007A7A7A000000000011111100D0D0D000D0D0D000000000000000
      0000A7A7A7000000000000000000000000000000000000000000000000000000
      000000000000000000009DCB98002F9023000E7F00000E7F00001E87110060AA
      5700EDF5EC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A3A3900A0DBEC00366C
      7C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098989800232323000000000000000000111111005757
      5700ECECEC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001A2E6600C7D6F200737373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000101C400037426D00000000000000
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
      00000000000000000000000000000000000000000000636B7300C69C94000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000011000000FE000000FE000000FE000000FE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006394B500218CEF002173B500CE9C
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      003A000000FEF1E200FEF6ED00FEFBF83AFEFBF734FEF5EB00FEF0E100FE0000
      00FE000000000000000000000000000000000000000000000000000000000000
      0000D0D0D0005757570000000000000000000000000034343400898989000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2E7D00060AA57000E7F00000E7F00000E7F00003F9934008FC389000000
      0000000000000000000000000000000000004AB5FF0042A5FF00218CEF007B84
      9400CE9C94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FAE6CB
      00FEEEDC2DFEF2E430FEF5EB30FEF7EF30FEF7EF30FEF4EA30FEF1E330FEEBD6
      12FEA79200FE0000006300000000000000000000000000000000000000000000
      000047474700000000003434340000000000C3C3C30011111100000000007A7A
      7A00000000000000000000000000000000000000000000000000000000000000
      000051A247000E7F00003F99340000000000C6E0C3001E8711000E7F000081BC
      7A00000000000000000000000000000000000000000052BDFF005ABDFF00218C
      EF002173B500CE9C940000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000007DDFBB00FEE4C8
      09FEE9D210FEECD910FEEFDF10FEF1E310FEF1E210FEEFDF10FEECD810FEE8D0
      10FEE3C300FEA28800FE00000000000000000000000000000000000000000000
      00006969690047474700B5B5B5000000000000000000A7A7A700000000000000
      0000DDDDDD000000000000000000000000000000000000000000000000000000
      000071B3690051A24700B9D9B5000000000000000000ABD2A7000E7F00000E7F
      0000DEEDDD000000000000000000000000000000000031A5FF0052BDFF0042A5
      FF00218CEF0084849400CE9C9400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0900FEDCB600FEE0BE
      01FEE4C701FEE7CE01FEE9D301FEEBD601FEEBD501FEE9D301FEE7CD01FEE3C6
      01FEE0BD00FEDBB500FE000000FE000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C3C3C300000000000000
      0000C3C3C3000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6E0C3000E7F00000E7F
      0000C6E0C30000000000000000000000000000000000000000000000000052BD
      FF005ABDFF003184D60052636B00000000009C6B6B00CEA59C00D6B5A500CE9C
      9C00C6949400000000000000000000000000000000B5D5A700FFD9AF00FFDDB7
      00FFE0BE00FFE3C400FEE5C900FEE6CB00FEE6CB00FEE4C800FFE2C300FFE0BD
      00FFDCB600FFD8AE00FFD4A500FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500000000000000
      0000D0D0D0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9D9B5000E7F00000E7F
      0000D2E7D00000000000000000000000000000000000000000000000000031A5
      FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFFD600FFFFDE00FFFF
      D600EFDEC600000000000000000000000000000000FFD1A000FFD5A800FFD9B0
      01FFDCB601FFDEBB01FEE0BE01FEE0BF01FEE0BF01FEE0BE01FFDEBA01FFDBB5
      01FFD8AF01FFD5A700FFD19F00FF000000FF0000000000000000000000000000
      0000D0D0D0004747470057575700DDDDDD00DDDDDD0034343400000000004747
      4700000000000000000000000000000000000000000000000000000000000000
      0000D2E7D00051A2470060AA5700DEEDDD00DEEDDD003F9934000E7F000051A2
      4700000000000000000000000000000000000000000000000000000000000000
      000000000000C6ADAD00CEA59400FFE7BD00FFF7CE00FFFFD600FFFFD600FFFF
      DE00FFFFE700FFFFFF00C6A5A50000000000000000FFCE9800FFD3A307FFD6A9
      07FFD8AE07FFDAB207FEDCB507FEDCB707FEDCB707FEDCB507FFDAB207FFD8AE
      07FFD5A807FFD2A207FFCD9700FF000000FF0000000000000000000000000000
      0000C3C3C300000000000000000000000000000000002323230069696900ECEC
      EC00000000000000000000000000000000000000000000000000000000000000
      0000C6E0C3000E7F00000E7F00000E7F00000E7F00002F90230071B36900EDF5
      EC00000000000000000000000000000000000000000000000000000000000000
      000000000000BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFFD600FFFFDE00FFFF
      EF00FFFFF700FFFFFF00F7EFDE0000000000000000FFCA9000FFD19F12FFD4A4
      12FFD6A912FFD7AC12FED8AE12FED9B012FED9B012FED9AE12FFD7AC12FFD5A8
      12FFD3A312FFD19E12FFC98F00FF000000FF0000000000000000000000000000
      0000C3C3C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6E0C3000E7F00000E7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFFD600FFFFDE00FFFF
      F700FFFFF700FFFFDE00FFFFDE00C6949400000000FEC58800FED09D21FED2A2
      21FED4A521FED5A821FED6AA21FED7AB21FED7AB21FED6AA21FED5A821FED4A5
      21FED2A121FED09C21FEC48700FE000000FE0000000000000000000000000000
      0000C3C3C300000000000000000000000000000000007A7A7A00000000005757
      5700000000000000000000000000000000000000000000000000000000000000
      0000C6E0C3000E7F00000E7F0000000000000000000081BC7A000E7F000060AA
      5700000000000000000000000000000000000000000000000000000000000000
      000000000000EFD6B500FFE7B500F7C68C00F7DEB500FFFFD600FFFFDE00FFFF
      EF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00000000FAC07F00FED19F35FED2A2
      35FED4A635FED5A835FED6A935FED6AB35FED6AA35FED6A935FED5A835FED4A5
      35FED2A235FED19E35FEC07E00FE000000110000000000000000000000000000
      0000C3C3C3000000000000000000DDDDDD00000000007A7A7A00000000004747
      4700000000000000000000000000000000000000000000000000000000000000
      0000C6E0C3000E7F00000E7F0000DEEDDD000000000081BC7A000E7F000051A2
      4700000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEAD00FFEFBD00EFBD8400F7C69400FFEFC600FFFFD600FFFF
      D600FFFFD600FFFFD600FFFFDE00C694940000000000563600FED3A44FFED4A7
      4FFED6AA4FFED6AB4FFED7AC4FFED8AE4FFED8AE4FFED7AC4FFED6AB4FFED6A9
      4FFED4A74FFECF9C3FFE000000FE000000000000000000000000000000000000
      0000C3C3C3000000000000000000000000000000000000000000000000003434
      3400000000000000000000000000000000000000000000000000000000000000
      0000C6E0C3000E7F00000E7F00000E7F00000E7F00000E7F00000E7F00003F99
      3400000000000000000000000000000000000000000000000000000000000000
      000000000000D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6A500F7E7BD00FFFF
      D600FFFFD600FFFFD600FFFFD6000000000000000000000000FCBA7100FED9B0
      6CFEDAB26CFEDAB36CFEDBB46CFEDBB56CFEDBB56CFEDBB46CFEDAB36CFEDAB1
      6CFED9B06CFEBA7000FE0000003A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C69C8C00FFFFFF00FFFFFF00F7C69400EFBD8400F7C6
      9400F7D6AD00FFEFC600BD9C8C00000000000000000000000000000000FEB76B
      00FEE0BF8EFEE1C08EFEE1C18EFEE1C18EFEE1C18EFEE1C18EFEE1C08EFEE0BF
      8EFEB76B00FE000000FA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFE700FFFFEF00FFE7B500F7DEAD00FFE7
      B500FFEFBD00C69C940000000000000000000000000000000000000000000000
      00FC512D00FEB56600FEEAD4B5FEEAD4B5FEEAD4B5FEE6CCA8FEB46600FE0905
      00FE0000007D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C69C8C00CEA59C00C69C
      9400000000000000000000000000000000000000000000000000000000000000
      000000000000000000FA000000FE000000FE000000FE000000FE000000B50000
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
      0000ECECEC00696969001111110000000000000000003434340069696900ECEC
      EC00000000000000000000000000000000000000000000000000000000000000
      0000EDF5EC0071B369001E8711000E7F00000E7F00003F99340071B36900EDF5
      EC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000057575700000000000000000000000000000000000000
      0000575757000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000474747000000000057575700ECECEC00DDDDDD0034343400000000003434
      3400000000000000000000000000000000000000000000000000000000000000
      000051A247000E7F000060AA5700EDF5EC00DEEDDD003F9934000E7F00003F99
      3400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004747470000000000111111008989
      8900D0D0D0000000000000000000000000000000000000000000000000000000
      0000000000000000000060AA57000E7F00000E7F00000E7F00000E7F00000E7F
      000060AA57000000000000000000000000000000000000000000000000000000
      00001111110000000000989898000000000000000000DDDDDD00000000000000
      0000B5B5B5000000000000000000000000000000000000000000000000000000
      00001E8711000E7F00009DCB98000000000000000000DEEDDD000E7F00000E7F
      0000B9D9B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004747470000000000474747000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000051A247000E7F00001E8711008FC3
      8900D2E7D0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000898989000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E7F00000E7F
      00008FC38900000000000000000000000000000000000000000000000000D0D0
      D000000000000000000000000000000000000000000000000000000000000000
      0000C3C3C3000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000051A247000E7F000051A247000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDDDD00000000000000
      0000B5B5B5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEEDDD000E7F00000E7F
      0000B9D9B500000000000000000000000000000000000000000000000000DDDD
      DD00111111000000000047474700000000004747470000000000474747000000
      000000000000000000000000000000000000000000000000000000000000D2E7
      D0000E7F00000E7F00000E7F00000E7F00000E7F00000E7F00000E7F00000E7F
      0000C6E0C3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD0034343400000000006969
      6900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEEDDD003F9934000E7F000071B3
      6900000000000000000000000000000000000000000000000000000000000000
      0000989898000000000000000000DDDDDD004747470000000000474747000000
      000000000000000000000000000000000000000000000000000000000000DEED
      DD001E8711000E7F000051A247000000000051A247000E7F000051A247000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000047474700000000000000000000000000A7A7A7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000051A247000E7F00000E7F00000E7F0000ABD2A7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004747470000000000696969004747470000000000474747000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009DCB98000E7F00000E7F0000DEEDDD0051A247000E7F000051A247000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DDDDDD001111110000000000343434000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEEDDD001E8711000E7F00003F9934000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDDDDD0011111100000000002323230000000000474747000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000051A247000E7F000071B3690051A247000E7F000051A247000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7A7A7004747470047474700000000009898980000000000000000009898
      9800000000000000000000000000000000000000000000000000000000000000
      0000ABD2A70051A2470051A24700000000009DCB98000E7F00000E7F00009DCB
      9800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098989800000000000000000000000000474747000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEEDDD001E8711000E7F00002F9023000E7F000051A247000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000898989000000000011111100000000000000000047474700000000001111
      1100DDDDDD000000000000000000000000000000000000000000000000000000
      00008FC389000E7F00001E871100000000000000000051A247000E7F00001E87
      1100DEEDDD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000474747000000000000000000474747000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009DCB98000E7F00000E7F00000E7F000051A247000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000898989000000000000000000000000000000000000000000000000000000
      0000898989000000000000000000000000000000000000000000000000000000
      00008FC389000E7F00000E7F00000E7F00000E7F00000E7F00000E7F00000E7F
      00008FC389000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DDDDDD001111110000000000575757000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000051A247000E7F00000E7F000051A247000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEEDDD001E8711000E7F000060AA57000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C7C7C700CFCFCF00E2E2E200E0E0E000CDCDCD00C5C5C5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C7C7C700CFCFCF00E2E2E200E0E0E000CDCDCD00C5C5C5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B4B4
      B400D0D0D000D6D6D600DADADA00DDDDDD00DCDCDC00D9D9D900D5D5D500C2C2
      C20082828200000000000000000000000000000000000000000000000000B4B4
      B400D0D0D000D6D6D600DADADA00DDDDDD00DCDCDC00D9D9D900D5D5D500C2C2
      C200828282000000000000000000000000000000000000000000000000000000
      0000232323000000000098989800A7A7A7003434340000000000000000001111
      1100DDDDDD000000000000000000000000000000000000000000000000000000
      00002F9023000E7F00009DCB9800ABD2A7003F9934000E7F00000E7F00001E87
      1100DEEDDD000000000000000000000000000000000000000000A9A9A900B6B6
      B600C0C0C000C6C6C600CBCBCB00CDCDCD00CDCDCD00CACACA00C5C5C500BFBF
      BF00AFAFAF007B7B7B0000000000000000000000000000000000A9A9A900B6B6
      B600C0C0C000C6C6C600CBCBCB00CDCDCD00CDCDCD00CACACA00C5C5C500BFBF
      BF00AFAFAF007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000023232300000000000000000011111100000000000000
      0000C3C3C3000000000000000000000000000000000000000000000000000000
      00000E7F00000E7F00002F9023000E7F00000E7F00001E8711000E7F00000E7F
      0000C6E0C3000000000000000000000000000000000008080800A5A5A500ADAD
      AD00B2B2B200B7B7B700BBBBBB00BDBDBD00BDBDBD00BBBBBB00B7B7B700B2B2
      B200ABABAB00A4A4A40000000000000000000000000008080800A5A5A500ADAD
      AD00B2B2B200B7B7B700BBBBBB00BDBDBD00BDBDBD00BBBBBB00B7B7B700B2B2
      B200ABABAB00A4A4A40000000000000000000000000000000000000000000000
      00007A7A7A0000000000000000000000000047474700A7A7A700474747004747
      4700DDDDDD000000000000000000000000000000000000000000000000000000
      000081BC7A000E7F00000E7F00000E7F000051A24700ABD2A70051A2470051A2
      4700DEEDDD00000000000000000000000000000000009A9A9A00A0A0A000A6A6
      A600ABABAB00B0B0B000B3B3B300B4B4B400B4B4B400B2B2B200AFAFAF00AAAA
      AA00A5A5A5009F9F9F009999990000000000000000009A9A9A00A0A0A000A6A6
      A600ABABAB00B0B0B000B3B3B300B4B4B400B4B4B400B2B2B200AFAFAF00AAAA
      AA00A5A5A5009F9F9F0099999900000000000000000000000000000000000000
      000000000000B5B5B500111111000000000069696900ECECEC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9D9B5001E8711000E7F000071B36900EDF5EC00000000000000
      00000000000000000000000000000000000000000000959595009A9A9A00A3A3
      A300A7A7A700ABABAB00ADADAD00AEAEAE00AEAEAE00ADADAD00AAAAAA00A6A6
      A600A2A2A2009A9A9A00949494000000000000000000959595009A9A9A00A3A3
      A300A7A7A700ABABAB00ADADAD00AEAEAE00AEAEAE00ADADAD00AAAAAA00A6A6
      A600A2A2A2009A9A9A0094949400000000000000000000000000000000000000
      00000000000000000000ECECEC00343434000000000034343400ECECEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDF5EC003F9934000E7F00003F993400EDF5EC000000
      000000000000000000000000000000000000000000008F8F8F009E9E9E00A3A3
      A300A6A6A600A9A9A900ABABAB00ACACAC00ACACAC00ABABAB00A9A9A900A5A5
      A500A2A2A2009D9D9D008E8E8E0000000000000000008F8F8F009E9E9E00A3A3
      A300A6A6A600A9A9A900ABABAB00ACACAC00ACACAC00ABABAB00A9A9A900A5A5
      A500A2A2A2009D9D9D008E8E8E00000000000000000000000000000000000000
      0000000000000000000000000000ECECEC00343434000000000034343400ECEC
      EC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EDF5EC003F9934000E7F00003F993400EDF5
      EC00000000000000000000000000000000000000000089898900A1A1A100A5A5
      A500A8A8A800AAAAAA00ACACAC00ACACAC00ACACAC00ACACAC00AAAAAA00A8A8
      A800A4A4A400A0A0A00088888800000000000000000089898900A1A1A100A5A5
      A500A8A8A800AAAAAA00ACACAC00ACACAC00ACACAC00ACACAC00AAAAAA00A8A8
      A800A4A4A400A0A0A00088888800000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD0000000000000000009898
      9800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEEDDD000E7F00000E7F00009DCB
      9800000000000000000000000000000000000000000083838300A6A6A600A9A9
      A900ACACAC00ADADAD00AFAFAF00AFAFAF00AFAFAF00AFAFAF00ADADAD00ABAB
      AB00A8A8A800A6A6A60082828200000000000000000083838300A6A6A600A9A9
      A900ACACAC00ADADAD00AFAFAF00AFAFAF00AFAFAF00AFAFAF00ADADAD00ABAB
      AB00A8A8A800A6A6A60082828200000000000000000000000000000000000000
      0000343434000000000098989800000000000000000047474700000000004747
      4700000000000000000000000000000000000000000000000000000000000000
      00003F9934000E7F00009DCB9800000000000000000051A247000E7F000051A2
      470000000000000000000000000000000000000000007C7C7C00ADADAD00B0B0
      B000B2B2B200B3B3B300B4B4B400B5B5B500B5B5B500B4B4B400B3B3B300B2B2
      B200B0B0B000ADADAD007B7B7B0000000000000000007C7C7C00ADADAD00B0B0
      B000B2B2B200B3B3B300B4B4B400B5B5B500B5B5B500B4B4B400B3B3B300B2B2
      B200B0B0B000ADADAD007B7B7B00000000000000000000000000000000000000
      0000000000000000000089898900000000000000000047474700000000004747
      4700000000000000000000000000000000000000000000000000000000000000
      00000E7F00000E7F00008FC38900000000000000000051A247000E7F000051A2
      4700000000000000000000000000000000000000000036363600B8B8B800BABA
      BA00BBBBBB00BCBCBC00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BCBCBC00BBBB
      BB00B9B9B900ABABAB0000000000000000000000000036363600B8B8B800BABA
      BA00BBBBBB00BCBCBC00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BCBCBC00BBBB
      BB00B9B9B900ABABAB0000000000000000000000000000000000000000000000
      0000474747000000000034343400ECECEC00C3C3C30011111100000000008989
      8900000000000000000000000000000000000000000000000000000000000000
      000051A247000E7F00003F993400EDF5EC00C6E0C3001E8711000E7F00008FC3
      890000000000000000000000000000000000000000000000000071717100C6C6
      C600C8C8C800C8C8C800C9C9C900C9C9C900C9C9C900C9C9C900C8C8C800C7C7
      C700C6C6C600717171000000000000000000000000000000000071717100C6C6
      C600C8C8C800C8C8C800C9C9C900C9C9C900C9C9C900C9C9C900C8C8C800C7C7
      C700C6C6C6007171710000000000000000000000000000000000000000000000
      0000ECECEC005757570000000000000000000000000034343400898989000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDF5EC0060AA57000E7F00000E7F00000E7F00003F9934008FC389000000
      0000000000000000000000000000000000000000000000000000000000006D6D
      6D00D6D6D600D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D6D6
      D6006D6D6D000000000000000000000000000000000000000000000000006D6D
      6D00D6D6D600D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D7D7D700D6D6
      D6006D6D6D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F2F2F006A6A6A00E8E8E800E8E8E800E8E8E800DFDFDF00696969000505
      0500000000000000000000000000000000000000000000000000000000000000
      00002F2F2F006A6A6A00E8E8E800E8E8E800E8E8E800DFDFDF00696969000505
      0500000000000000000000000000000000000000000000000000000000000000
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
      000000000000292829003134310031343100292C290010141000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000292829003134310031343100292C290010141000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000011000000FE000000FE000000FE000000FE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000011000000FE000000FE000000FE000000FE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4D5200525152004A4D4A004A494A004A494A0042414200212831000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4D5200525152004A4D4A004A494A004A494A0042414200212831000000
      0000000000000000000000000000000000000000000000000000000000000000
      003A000000FE1EDEFAFE1FE3FAFE68EFFDFE61EEFCFE1FE3FAFE1EDDFAFE0000
      00FE000000000000000000000000000000000000000000000000000000000000
      003A000000FE1EDEFAFE1FE3FAFE68EFFDFE61EEFCFE1FE3FAFE1EDDFAFE0000
      00FE000000000000000000000000000000000000000000000000000000004241
      520063656B0063656300636163005A595A004A4D4A004A494A00393842000000
      0000000000000000000000000000000000000000000000000000000000004241
      520063656B0063656300636163005A595A004A4D4A004A494A00393842000000
      0000000000000000000000000000000000000000000000000000000000FA1ED0
      F9FE61E2FBFE65E6FBFE66E9FBFE66EBFBFE66EBFBFE66E9FBFE65E5FBFE39D9
      FBFE1697B6FE0000006300000000000000000000000000000000000000FA1ED0
      F9FE61E2FBFE65E6FBFE66E9FBFE66EBFBFE66EBFBFE66E9FBFE65E5FBFE39D9
      FBFE1697B6FE0000006300000000000000000000000000000000525563007371
      73007B7D7B007B7D7B00737573006B696B005A595A004A4D4A00424542003130
      3900000000000000000000000000000000000000000000000000525563007371
      73007B7D7B007B7D7B00737573006B696B005A595A004A4D4A00424542003130
      390000000000000000000000000000000000000000000000007D1EC7F9FE30D1
      FAFE3CD8FBFE3CDCFBFE3CDFFBFE3CE1FBFE3CE1FBFE3CDFFBFE3CDBFBFE3CD7
      FAFE1ECCF9FE1691B6FE0000000000000000000000000000007D1EC7F9FE30D1
      FAFE3CD8FBFE3CDCFBFE3CDFFBFE3CE1FBFE3CE1FBFE3CDFFBFE3CDBFBFE3CD7
      FAFE1ECCF9FE1691B6FE000000000000000000000000000000007B7984009492
      94009C9E9C00949694008C8A8C007B797B006B696B00525552004A494A004245
      42002124290000000000000000000000000000000000000000007B7984009492
      94009C9E9C00949694008C8A8C007B797B006B696B00525552004A494A004245
      42002124290000000000000000000000000000000000010A0CFE1EC3F9FE22CA
      F9FE22CFF9FE22D3F9FE22D5FAFE22D7FAFE22D6FAFE22D5FAFE22D2F9FE22CE
      F9FE21C9F9FE1EC2F9FE000000FE0000000000000000010A0CFE1EC3F9FE22CA
      F9FE22CFF9FE22D3F9FE22D5FAFE22D7FAFE22D6FAFE22D5FAFE22D2F9FE22CE
      F9FE21C9F9FE1EC2F9FE000000FE00000000000000000000000094929C00BDBE
      BD00CECBCE00C6C7C600ADAAAD008C8A8C0073757300636163004A4D4A004A49
      4A00292C3900000000000000000000000000000000000000000094929C00BDBE
      BD00CECBCE00C6C7C600ADAAAD008C8A8C0073757300636163004A4D4A004A49
      4A00292C3900000000000000000000000000000000B51EBBF9FF1EBFF9FF1FC4
      FAFF1FC9FAFF1ECCF9FE1ECFF9FE1ED0F9FE1ED0F9FE1FCEFAFF1FCCFAFF1FC9
      FAFF1FC3FAFF1EBFF9FF1EBAF9FF00000000000000B51EBBF9FF1EBFF9FF1FC4
      FAFF1FC9FAFF1ECCF9FE1ECFF9FE1ED0F9FE1ED0F9FE1FCEFAFF1FCCFAFF1FC9
      FAFF1FC3FAFF1EBFF9FF1EBAF9FF000000000000000000000000A5A2AD00D6D7
      D600E7E3E700DEDFDE00C6C3C600949694007B797B0063656300525152004A49
      4A00292831000000000000000000000000000000000000000000A5A2AD00D6D7
      D600E7E3E700DEDFDE00C6C3C600949694007B797B0063656300525152004A49
      4A0029283100000000000000000000000000000000FF1EB6F9FF1EBBF9FF25C1
      F9FF25C5FAFF25C9F9FE25CAF9FE25CBF9FE25CBF9FE25CAFAFF25C8FAFF25C4
      FAFF24C1F9FF1EBAF9FF1EB6F9FF000000FF000000FF1EB6F9FF1EBBF9FF25C1
      F9FF25C5FAFF25C9F9FE25CAF9FE25CBF9FE25CBF9FE25CAFAFF25C8FAFF25C4
      FAFF24C1F9FF1EBAF9FF1EB6F9FF000000FF000000000000000084869400D6D7
      D600EFEBEF00E7E3E700C6C7C600949694007B7D7B0063656300525152004241
      4A0010101000000000000000000000000000000000000000000084869400D6D7
      D600EFEBEF00E7E3E700C6C7C600949694007B7D7B0063656300525152004241
      4A0010101000000000000000000000000000000000FF1EB2F9FF32BDFAFF32C0
      FAFF32C3FAFF33C6F9FE33C8F9FE33C9F9FE33C9F9FE33C8FAFF33C6FAFF32C3
      FAFF32C0FAFF32BCFAFF1EB1F9FF000000FF000000FF1EB2F9FF32BDFAFF32C0
      FAFF32C3FAFF33C6F9FE33C8F9FE33C9F9FE33C9F9FE33C8FAFF33C6FAFF32C3
      FAFF32C0FAFF32BCFAFF1EB1F9FF000000FF000000000000000039385A00B5B2
      BD00D6D3D600949694005A595A004A4D4A004A4D4A0052515200525152003134
      390000000000000000000000000000000000000000000000000039385A00B5B2
      BD00D6D3D600949694005A595A004A4D4A004A4D4A0052515200525152003134
      390000000000000000000000000000000000000000FF1EAEF9FF44BFFAFF44C1
      FAFF44C4FAFF44C6F9FE44C7F9FE44C8F9FE44C8F9FE44C8FAFF44C5FAFF44C3
      FAFF44C1FAFF44BEFAFF1EADF8FF000000FF000000FF1EAEF9FF44BFFAFF44C1
      FAFF44C4FAFF44C6F9FE44C7F9FE44C8F9FE44C8F9FE44C8FAFF44C5FAFF44C3
      FAFF44C1FAFF44BEFAFF1EADF8FF000000FF0000000000000000000000005251
      6300737173005A5D5A005A595A00525152004A494A0042454200313031000000
      0000000000000000000000000000000000000000000000000000000000005251
      6300737173005A5D5A005A595A00525152004A494A0042454200313031000000
      000000000000000000000000000000000000000000FE1DA9F7FE58C2F9FE58C4
      FAFE58C6FAFE58C8FAFE58C9FAFE58C9FAFE58C9FAFE58C9FAFE58C8FAFE58C6
      FAFE58C3FAFE58C1F9FE1DA8F7FE000000FE000000FE1DA9F7FE58C2F9FE58C4
      FAFE58C6FAFE58C8FAFE58C9FAFE58C9FAFE58C9FAFE58C9FAFE58C8FAFE58C6
      FAFE58C3FAFE58C1F9FE1DA8F7FE000000FE0000000000000000000000005A5D
      6B00737173007375730073717300636563005A595A004A494A00424542000808
      0800000000000000000000000000000000000000000000000000000000005A5D
      6B00737173007375730073717300636563005A595A004A494A00424542000808
      080000000000000000000000000000000000000000FA1DA3F7FE6FC7FAFE6FC9
      FAFE6FCAFAFE6FCBFAFE6FCCFAFE6FCDFAFE6FCDFAFE6FCCFAFE6FCBFAFE6FCA
      FAFE6FC9FAFE6FC7FAFE1DA3F7FE00000011000000FA1DA3F7FE6FC7FAFE6FC9
      FAFE6FCAFAFE6FCBFAFE6FCCFAFE6FCDFAFE6FCDFAFE6FCCFAFE6FCBFAFE6FCA
      FAFE6FC9FAFE6FC7FAFE1DA3F7FE000000110000000000000000000000007379
      84008C8E8C00949694008C8A8C007B7D7B006B696B00525552004A494A002124
      3100000000000000000000000000000000000000000000000000000000007379
      84008C8E8C00949694008C8A8C007B7D7B006B696B00525552004A494A002124
      310000000000000000000000000000000000000000000D4871FE87CEFAFE87CF
      FAFE87D0FAFE87D1FAFE87D2FAFE87D2FAFE87D2FAFE87D2FAFE87D1FAFE87D0
      FAFE87CFFAFE73C5FAFE000000FE00000000000000000D4871FE87CEFAFE87CF
      FAFE87D0FAFE87D1FAFE87D2FAFE87D2FAFE87D2FAFE87D2FAFE87D1FAFE87D0
      FAFE87CFFAFE73C5FAFE000000FE000000000000000000000000000000008C8E
      9400BDBEBD00CECBCE00BDBABD0094929400737573005A5D5A004A4D4A002128
      3100000000000000000000000000000000000000000000000000000000008C8E
      9400BDBEBD00CECBCE00BDBABD0094929400737573005A5D5A004A4D4A002128
      31000000000000000000000000000000000000000000000000FC1C9CF7FEA1D7
      FBFEA1D8FBFEA2D9FBFEA2D9FBFEA2D9FBFEA2D9FBFEA2D9FBFEA2D9FBFEA1D8
      FBFEA1D7FBFE1C9BF7FE0000003A0000000000000000000000FC1C9CF7FEA1D7
      FBFEA1D8FBFEA2D9FBFEA2D9FBFEA2D9FBFEA2D9FBFEA2D9FBFEA2D9FBFEA1D8
      FBFEA1D7FBFE1C9BF7FE0000003A000000000000000000000000000000008C8A
      9C00D6D7DE00E7E7E700D6D7D600A5A6A5007B7D7B00636563004A4D52000004
      0800000000000000000000000000000000000000000000000000000000008C8A
      9C00D6D7DE00E7E7E700D6D7D600A5A6A5007B7D7B00636563004A4D52000004
      0800000000000000000000000000000000000000000000000000000000FE1C98
      F6FEBDE2FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE2
      FCFE1C98F6FE000000FA00000000000000000000000000000000000000FE1C98
      F6FEBDE2FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE2
      FCFE1C98F6FE000000FA00000000000000000000000000000000000000000000
      0000BDBAC600DEDFE700D6D3D600A5A2A5007B7D7B0063616300393C42000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBAC600DEDFE700D6D3D600A5A2A5007B7D7B0063616300393C42000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FC0D436FFE1C95F6FEDCEFFDFEDCEFFDFEDCEFFDFECFE9FDFE1C95F6FE0107
      0CFE0000007D0000000000000000000000000000000000000000000000000000
      00FC0D436FFE1C95F6FEDCEFFDFEDCEFFDFEDCEFFDFECFE9FDFE1C95F6FE0107
      0CFE0000007D0000000000000000000000000000000000000000000000000000
      000000000000A5AAB500ADAEAD0084868400737173004A4D5200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5AAB500ADAEAD0084868400737173004A4D5200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FA000000FE000000FE000000FE000000FE000000B50000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FA000000FE000000FE000000FE000000FE000000B50000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000011000000FE000000FE000000FE000000FE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000011000000FE000000FE000000FE000000FE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000011000000FE000000FE000000FE000000FE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000E00000030000000490000005400000054000000440000
      0024000000000000000000000000000000000000000000000000000000000000
      003A000000FE0582F7FE058DF6FE3FADF7FE39AAF8FE058BF6FE0581F7FE0000
      00FE000000000000000000000000000000000000000000000000000000000000
      003A000000FE0582F7FE058DF6FE3FADF7FE39AAF8FE058BF6FE0581F7FE0000
      00FE000000000000000000000000000000000000000000000000000000000000
      003A000000FE0BEBD2FE07F2E3FE3DFAF3FE37F9F2FE07F1E0FE0CEACFFE0000
      00FE000000000000000000000000000000000000000000000000000000000000
      006C183F14C33DA322FF3DA120FF3CA01EFF3B9E1DFF3B9E1CFF3B9E1CFF41AB
      2CFF000000970000000400000000000000000000000000000000000000FA046A
      F8FE318EF8FE3597F8FE359DF8FE35A2F8FE35A1F8FE359CF8FE3595F8FE167D
      F8FE034CB5FE0000006300000000000000000000000000000000000000FA046A
      F8FE318EF8FE3597F8FE359DF8FE35A2F8FE35A1F8FE359CF8FE3595F8FE167D
      F8FE034CB5FE0000006300000000000000000000000000000000000000FA15DB
      AAFE3CE7C7FE3BECD4FE39F0DFFE36F4E6FE37F4E5FE39F0DEFE3CEBD3FE23E3
      BDFE109F7AFE00000063000000000000000000000000000000000000000042AD
      2EFF41AC2CFF40AA2BFF40A929FF96CF89FF3EA625FF3EA424FF3DA322FF3DA2
      20FF3CA01FFF439E41170000000000000000000000000000007D035BF9FE0D6B
      F8FE1477F8FE147FF7FE1585F7FE1589F7FE1588F7FE1484F7FE147EF7FE1476
      F8FE0364F8FE0242B6FE0000000000000000000000000000007D035BF9FE0D6B
      F8FE1477F8FE147FF7FE1585F7FE1589F7FE1588F7FE1484F7FE147EF7FE1476
      F8FE0364F8FE0242B6FE0000000000000000000000000000007D1BD193FE20D9
      A6FE23E0B6FE1FE5C2FE1CE9CCFE1BEBD1FE1BEBD1FE1DE8CBFE20E4C0FE23DF
      B4FE17D6A0FE14986AFE0000000000000000000000000000000045B5381F45B5
      37FF44B335FF44B233FFA1D798FFD9EFD6FF42AE2EFF41AC2DFF40AB2BFF40A9
      29FF3FA827FF42A6324400000000000000000000000000030DFE0356F9FE0560
      F9FE0668F8FE066FF8FE0674F7FE0677F7FE0676F7FE0673F8FE066EF8FE0667
      F8FE045EF9FE0355F9FE000000FE000000000000000000030DFE0356F9FE0560
      F9FE0668F8FE066FF8FE0674F7FE0677F7FE0676F7FE0673F8FE066EF8FE0667
      F8FE045EF9FE0355F9FE000000FE0000000000000000010A06FE1DCD8AFE1BD3
      98FE18D9A5FE15DDB0FE12E1B8FE12E3BDFE12E2BCFE13E0B7FE15DCAEFE18D8
      A3FE1BD296FE1ECC88FE000000FE0000000000000000000000000000000048BC
      40FF48BB3EFFDAF1D8FFDAF1D8FFDAF1D8FFDAF0D7FF44B435FF44B234FF43B1
      32FF42AF30FF000000000000000000000000000000B50347FBFF034FFAFF0457
      FAFF045EFAFF0464F8FE0468F8FE046AF8FE046AF8FE0568F9FF0463F9FF045D
      FAFF0456FAFF034EFAFF0345FBFF00000000000000B50347FBFF034FFAFF0457
      FAFF045EFAFF0464F8FE0468F8FE046AF8FE046AF8FE0568F9FF0463F9FF045D
      FAFF0456FAFF034EFAFF0345FBFF00000000000000B524C272FF20C97FFF1DCE
      8CFF1AD397FF17D7A1FE16DAA7FE14DBAAFE14DBAAFE16D9A6FF18D69FFF1AD2
      96FF1ECD8AFF21C87DFF25C16FFF000000000000000000000000000000004BC4
      49FF4BC247FFABE2A9FF49BF43FFDBF2D9FF48BC40FF48BB3EFF47B93CFF46B8
      3BFF46B739FF000000000000000000000000000000FF0340FBFF0348FBFF0550
      FAFF0556FAFF055BF9FE055FF9FE0561F9FE0560F9FE055EFAFF055BFAFF0555
      FAFF044FFAFF0347FBFF033EFBFF000000FF000000FF0340FBFF0348FBFF0550
      FAFF0556FAFF055BF9FE055FF9FE0561F9FE0560F9FE055EFAFF055BFAFF0555
      FAFF044FFAFF0347FBFF033EFBFF000000FF000000FF27BD66FF24C273FF22C8
      80FF20CD89FF1DD091FE1CD297FE1BD49AFE1BD399FE1CD296FF1DD091FF20CC
      88FF23C77EFF24C271FF28BC64FF000000FF0000000000000000000000004FCC
      51FF4ECB50FF4DC94EFF4DC84CFFDBF4DBFF4CC449FF4BC247FF4AC145FF4ABF
      44FF49BE42FF000000000000000000000000000000FF0238FCFF0A45FBFF0A4C
      FBFF0A51FBFF0B55F9FE0B58F9FE0B5AF9FE0B5AF9FE0B58FAFF0B55FAFF0A51
      FBFF0A4BFBFF0A44FBFF0237FCFF000000FF000000FF0238FCFF0A45FBFF0A4C
      FBFF0A51FBFF0B55F9FE0B58F9FE0B5AF9FE0B5AF9FE0B58FAFF0B55FAFF0A51
      FBFF0A4BFBFF0A44FBFF0237FCFF000000FF000000FF2AB85AFF2EBF6BFF2BC3
      75FF29C87DFF27CB84FE26CD89FE25CE8BFE25CE8BFE26CD88FF27CA83FF29C7
      7CFF2CC273FF2EBE69FF2BB758FF000000FF00000000000000000000000052D4
      5AFF51D258FF51D057FF50CF55FF4FCE53FF4DC950FF4AC04CFF48B948FF44B2
      44FF4ABE514E000000000000000000000000000000FF0230FCFF1446FCFF154B
      FBFF1550FBFF1554FAFE1556FAFE1557FAFE1557FAFE1556FBFF1553FBFF154F
      FBFF154AFBFF1445FCFF022FFCFF000000FF000000FF0230FCFF1446FCFF154B
      FBFF1550FBFF1554FAFE1556FAFE1557FAFE1557FAFE1556FBFF1553FBFF154F
      FBFF154AFBFF1445FCFF022FFCFF000000FF000000FF2EB24DFF3BBC64FF39C0
      6DFF37C375FF35C67AFE34C87EFE33C980FE33C980FE34C87EFF35C67AFF37C2
      73FF39BF6CFF3BBB63FF2EB14CFF000000FF0000000000000000000000000000
      00004EC957FF4AC054FF91BED8FF93C9FCFF7FBFFEFF42A343FF40A545FF4DC1
      587700000000000000000000000000000000000000FE0127FCFE234AFBFE234F
      FBFE2352FBFE2456FBFE2457FBFE2458FBFE2458FBFE2457FBFE2455FBFE2352
      FBFE234EFBFE2349FBFE0126FCFE000000FE000000FE0127FCFE234AFBFE234F
      FBFE2352FBFE2456FBFE2457FBFE2458FBFE2458FBFE2457FBFE2455FBFE2352
      FBFE234EFBFE2349FBFE0126FCFE000000FE000000FE31AC3FFE4BBB62FE49BE
      69FE47C070FE46C375FE45C478FE45C579FE45C579FE45C478FE46C374FE48C0
      6FFE4ABD68FE4BBA61FE32AC3EFE000000FE0000000000000000000000000000
      0000000000006EB1C20776B2ECFF78B5F0FF75AFE8FF6DA2D6FF7BBBF78B0000
      000000000000000000000000000000000000000000FA001EFCFE3753FCFE3757
      FCFE375AFCFE375DFCFE375EFCFE375FFCFE375FFCFE375EFCFE375CFCFE375A
      FCFE3756FCFE3752FCFE001DFCFE00000011000000FA001EFCFE3753FCFE3757
      FCFE375AFCFE375DFCFE375EFCFE375FFCFE375FFCFE375EFCFE375CFCFE375A
      FCFE3756FCFE3752FCFE001DFCFE00000011000000FA35A631FE5FBC65FE5DBF
      6BFE5BC170FE5AC274FE5AC376FE59C478FE59C478FE5AC376FE5AC273FE5CC1
      6FFE5DBE6AFE5FBB63FE36A530FE000000110000000000000000000000000000
      00000000000080C0FFFF8DC7FFFF91C9FFFF8AC6FFFF7CBBF9FF6FA4DAFF0000
      00000000000000000000000000000000000000000000000974FE5062FDFE5065
      FDFE5068FDFE506AFDFE506BFDFE506CFDFE506CFDFE506BFDFE506AFDFE5067
      FDFE5065FDFE4053FDFE000000FE0000000000000000000974FE5062FDFE5065
      FDFE5068FDFE506AFDFE506BFDFE506CFDFE506CFDFE506BFDFE506AFDFE5067
      FDFE5065FDFE4053FDFE000000FE00000000000000001A490FFE76C06DFE74C2
      72FE73C376FE72C579FE72C77CFE71C77DFE71C77DFE72C67BFE72C579FE73C3
      76FE74C171FE6ABA5FFE000000FE000000000000000000000000000000000000
      000081C0FE6796CCFFFFA8D5FFFFAED7FFFFA3D2FFFF8FC8FFFF79B6F2FF0224
      46FF0000000000000000000000000000000000000000000000FC0011FDFE6D78
      FDFE6D7BFDFE6D7CFDFE6D7DFDFE6D7EFDFE6D7EFDFE6D7DFDFE6D7CFDFE6D7A
      FDFE6D78FDFE0011FDFE0000003A0000000000000000000000FC0011FDFE6D78
      FDFE6D7BFDFE6D7CFDFE6D7DFDFE6D7EFDFE6D7EFDFE6D7DFDFE6D7CFDFE6D7A
      FDFE6D78FDFE0011FDFE0000003A0000000000000000000000FC3B9D1BFE8EC9
      80FE8DCA83FE8CCB86FE8CCC87FE8BCC89FE8BCC89FE8CCC87FE8CCB86FE8DCA
      83FE8EC97FFE3C9C1AFE0000003A000000000000000000000000000000000000
      000088C5FFACA4D3FFFFBFE0FEFFCCE5FEFFB7DCFEFF9BCEFFFF022F5DFF0229
      51FF000000000000000000000000000000000000000000000000000000FE000B
      FDFE8E95FEFE8E96FEFE8E97FEFE8E97FEFE8E97FEFE8E97FEFE8E96FEFE8E95
      FEFE000BFDFE000000FA00000000000000000000000000000000000000FE000B
      FDFE8E95FEFE8E96FEFE8E97FEFE8E97FEFE8E97FEFE8E97FEFE8E96FEFE8E95
      FEFE000BFDFE000000FA00000000000000000000000000000000000000FE3E98
      12FEAAD399FEA9D49AFEA9D59BFEA9D59CFEA9D59CFEA9D59BFEA9D49AFEAAD3
      98FE3E9811FE000000FA00000000000000000000000000000000000000000000
      000000000000A1CEFAFF003264FF00305FFF002D59FF002A54FF01376DFF0131
      61FF000000000000000000000000000000000000000000000000000000000000
      00FC000173FE0006FEFEB5B7FEFEB5B7FEFEB5B7FEFEA8ABFEFE0006FEFE0000
      0DFE0000007D0000000000000000000000000000000000000000000000000000
      00FC000173FE0006FEFEB5B7FEFEB5B7FEFEB5B7FEFEA8ABFEFE0006FEFE0000
      0DFE0000007D0000000000000000000000000000000000000000000000000000
      00FC1D4303FE40950AFEC8E1B8FEC8E1B9FEC8E1B9FEBEDBADFE409509FE0307
      00FE0000007D0000000000000000000000000000000000000000000000000000
      00001F5E9C01266FB7FF1967B2FF0E5AA4FF014C94FF014588FF013F7DFF0139
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000FA000000FE000000FE000000FE000000FE000000B50000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FA000000FE000000FE000000FE000000FE000000B50000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FA000000FE000000FE000000FE000000FE000000B50000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000558FC78E558EC7FF4886C2FF3C7BB8FF2F6FABFF24619DFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001818180018181800101410001014
      100010141000080C080000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073180000BD0C0000CE040000C604
      0000A50C0000310C000000000000000000000000000000000000000000000000
      00000000000000000011000000FE000000FE000000FE000000FE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000011000000FE000000FE000000FE000000FE000000000000
      0000000000000000000000000000000000000000000000000000313431003938
      39004241420039383900101410002124210029282900292C290021242100181C
      1800101410001014100008080800000000000000000000000000104500003149
      000021590000314D0000311800007B240000EF1C1000FF1C1000FF141000FF08
      0000FF000000DE04000029080000000000000000000000000000000000000000
      003A000000FE1EDEFAFE1FE3FAFE68EFFDFE61EEFCFE1FE3FAFE1EDDFAFE0000
      00FE000000000000000000000000000000000000000000000000000000000000
      003A000000FE1EDEFAFE1FE3FAFE68EFFDFE61EEFCFE1FE3FAFE1EDDFAFE0000
      00FE00000000000000000000000000000000000000004A4D4A00636563007371
      73006B6D6B00636563005A5D5A00313031004A4D4A00525552004A4D4A00393C
      390029282900101410001014100000000000000000003965000021860800089A
      08000096080000920000088200004A410000FF453100FF493900FF413100FF30
      2100FF141000FF04000073100000100000000000000000000000000000FA1ED0
      F9FE61E2FBFE65E6FBFE66E9FBFE66EBFBFE66EBFBFE66E9FBFE65E5FBFE39D9
      FBFE1697B6FE0000006300000000000000000000000000000000000000FA1ED0
      F9FE61E2FBFE65E6FBFE66E9FBFE66EBFBFE66EBFBFE66E9FBFE65E5FBFE39D9
      FBFE1697B6FE000000630000000000000000000000005A5D5A008C8A8C008486
      8400848284007B797B005A595A00636163007B797B007B797B00737173005A5D
      5A0042454200292829001014100010141000000000004279100018AE290018AE
      290018AA210010A2180052711000E7594200FF755A00FF755A00FF695200FF55
      4200FF382900FF181000FF00000084100000000000000000007D1EC7F9FE30D1
      FAFE3CD8FBFE3CDCFBFE3CDFFBFE3CE1FBFE3CE1FBFE3CDFFBFE3CDBFBFE3CD7
      FAFE1ECCF9FE1691B6FE0000000000000000000000000000007D1EC7F9FE30D1
      FAFE3CD8FBFE3CDCFBFE3CDFFBFE3CE1FBFE3CE1FBFE3CDFFBFE3CDBFBFE3CD7
      FAFE1ECCF9FE1691B6FE00000000000000005A5D5A00848684009C9E9C009C9E
      9C00949694008C8A8C006B696B00949294009C9E9C009C9E9C00949694007B7D
      7B0063616300393C3900181C1800101410004275180031A6390031C74A0029C3
      4A0029BE420021B231009C753100FF8E7300FF9E7B00FFA27B00FF927300FF79
      5A00FF594200FF302100FF080800B508000000000000010A0CFE1EC3F9FE22CA
      F9FE22CFF9FE22D3F9FE22D5FAFE22D7FAFE22D6FAFE22D5FAFE22D2F9FE22CE
      F9FE21C9F9FE1EC2F9FE000000FE0000000000000000010A0CFE1EC3F9FE22CA
      F9FE22CFF9FE22D3F9FE22D5FAFE22D7FAFE22D6FAFE22D5FAFE22D2F9FE22CE
      F9FE21C9F9FE1EC2F9FE000000FE000000008C8E8C00ADAEAD00B5B6B500B5B2
      B500ADAAAD009C9E9C007B7D7B00ADAEAD00C6C3C600C6C7C600B5B2B5009496
      94007375730052515200292829001014100042AA420039D3630042DB6B0042D7
      6B0039CF5A0029C34A009C8E4A00FFB28C00FFCB9C00FFCB9C00FFB68C00FF96
      7300FF6D5200FF453100FF181000BD080000000000B51EBBF9FF1EBFF9FF1FC4
      FAFF1FC9FAFF1ECCF9FE1ECFF9FE1ED0F9FE1ED0F9FE1FCEFAFF1FCCFAFF1FC9
      FAFF1FC3FAFF1EBFF9FF1EBAF9FF00000000000000B51EBBF9FF1EBFF9FF1FC4
      FAFF1FC9FAFF1ECCF9FE1ECFF9FE1ED0F9FE1ED0F9FE1FCEFAFF1FCCFAFF1FC9
      FAFF1FC3FAFF1EBFF9FF1EBAF9FF000000009C9A9C00C6C3C600CECBCE00CECB
      CE00BDBEBD00ADAEAD0084868400C6C3C600D6D7D600D6D7D600CECBCE00A5A6
      A500848284005A595A0031303100181818004ABA52004AE77B0052EF8C0052EB
      84004AE3730039D35A00739E4200FFCB9C00FFDFAD00FFDFAD00FFD3A500FFAA
      8400FF7D6300FF513900FF201800A5100000000000FF1EB6F9FF1EBBF9FF25C1
      F9FF25C5FAFF25C9F9FE25CAF9FE25CBF9FE25CBF9FE25CAFAFF25C8FAFF25C4
      FAFF24C1F9FF1EBAF9FF1EB6F9FF000000FF000000FF1EB6F9FF1EBBF9FF25C1
      F9FF25C5FAFF25C9F9FE25CAF9FE25CBF9FE25CBF9FE25CAFAFF25C8FAFF25C4
      FAFF24C1F9FF1EBAF9FF1EB6F9FF000000FF9C9E9C00D6D3D600D6D7D600D6D7
      D600CECFCE00B5B6B5009C9A9C00ADAEAD00D6D7D600C6C3C600A5A6A5008C8E
      8C00737573005A595A00313031000004000052BA5A005AF38C005AF794005AF7
      940052EF8C0042DB6B0039BE4A00DEB68400F7DFAD00CECBAD0094A6B500948A
      9400CE716300FF514200E724100042000000000000FF1EB2F9FF32BDFAFF32C0
      FAFF32C3FAFF33C6F9FE33C8F9FE33C9F9FE33C9F9FE33C8FAFF33C6FAFF32C3
      FAFF32C0FAFF32BCFAFF1EB1F9FF000000FF000000FF1EB2F9FF32BDFAFF32C0
      FAFF32C3FAFF33C6F9FE33C8F9FE33C9F9FE33C9F9FE33C8FAFF33C6FAFF32C3
      FAFF32C0FAFF32BCFAFF1EB1F9FF000000FF84828400D6D3D600D6D7D600CECF
      CE00BDBABD00A5A6A500A5A2A50084868400A5A6A5009C9E9C009C9E9C009496
      94008C8A8C00525152002120210000000000639A42005AF794005AF794005AEF
      94004AD3840039C76B0031C752004AA239007BA6B5002992F700298EFF002986
      FF002979EF008C455A00A51C000000000000000000FF1EAEF9FF44BFFAFF44C1
      FAFF44C4FAFF44C6F9FE44C7F9FE44C8F9FE44C8F9FE44C8FAFF44C5FAFF44C3
      FAFF44C1FAFF44BEFAFF1EADF8FF000000FF000000FF1EAEF9FF44BFFAFF44C1
      FAFF44C4FAFF44C6F9FE44C7F9FE44C8F9FE44C8F9FE44C8FAFF44C5FAFF44C3
      FAFF44C1FAFF44BEFAFF1EADF8FF000000FF292C2900A5A2A500B5B6B5009C9A
      9C00949694008C8E8C007B7D7B0084828400ADAEAD00B5B2B500ADAEAD00A5A6
      A5009C9A9C008C8A8C0031343100000000006330000063BE630042C7AD002192
      E7002986FF00297DEF0021829400189A630039A6FF0042AAFF0031A2FF00299A
      FF00298AFF002979EF000030520000000000000000FE1DA9F7FE58C2F9FE58C4
      FAFE58C6FAFE58C8FAFE58C9FAFE58C9FAFE58C9FAFE58C9FAFE58C8FAFE58C6
      FAFE58C3FAFE58C1F9FE1DA8F7FE000000FE000000FE1DA9F7FE58C2F9FE58C4
      FAFE58C6FAFE58C8FAFE58C9FAFE58C9FAFE58C9FAFE58C9FAFE58C8FAFE58C6
      FAFE58C3FAFE58C1F9FE1DA8F7FE000000FE000000008C8E8C00ADAAAD00ADAA
      AD00A5A6A5009C9E9C00949694009C9E9C00C6C7C600C6C7C600BDBEBD00B5B2
      B500A5A6A500949694006B696B000000000000000000218ACE0031A2FF0031A2
      FF00299AFF00298EFF003182FF003992E7007BBEFF007BBEFF006BB6FF0042AA
      FF00299AFF002986FF001061AD0000000000000000FA1DA3F7FE6FC7FAFE6FC9
      FAFE6FCAFAFE6FCBFAFE6FCCFAFE6FCDFAFE6FCDFAFE6FCCFAFE6FCBFAFE6FCA
      FAFE6FC9FAFE6FC7FAFE1DA3F7FE00000011000000FA1DA3F7FE6FC7FAFE6FC9
      FAFE6FCAFAFE6FCBFAFE6FCCFAFE6FCDFAFE6FCDFAFE6FCCFAFE6FCBFAFE6FCA
      FAFE6FC9FAFE6FC7FAFE1DA3F7FE0000001100000000ADAEAD00BDBEBD00BDBE
      BD00B5B6B500ADAAAD009C9E9C00ADAEAD00D6D7D600D6D7D600D6D3D600C6C3
      C600ADAEAD009C9E9C007375730000000000000000004AA6EF006BB6FF0063B6
      FF0052AEFF0031A2FF00298EFF0052A2F700A5D3FF00A5D3FF0094CBFF006BBA
      FF0039A6FF00298EFF00106DBD0000000000000000000D4871FE87CEFAFE87CF
      FAFE87D0FAFE87D1FAFE87D2FAFE87D2FAFE87D2FAFE87D2FAFE87D1FAFE87D0
      FAFE87CFFAFE73C5FAFE000000FE00000000000000000D4871FE87CEFAFE87CF
      FAFE87D0FAFE87D1FAFE87D2FAFE87D2FAFE87D2FAFE87D2FAFE87D1FAFE87D0
      FAFE87CFFAFE73C5FAFE000000FE000000008C8E8C00BDBEBD00D6D3D600D6D3
      D600CECBCE00BDBABD00A5A6A500A5A2A500E7E3E700E7E7E700DEDBDE00CECB
      CE00B5B6B500A5A2A5006361630000000000007DFF0073B6F7009CCFFF009CCB
      FF007BC3FF0052AEFF00299EFF00399AF700B5DFFF00BDE3FF00A5D7FF0084C3
      FF004AAAFF002196FF00085D9C000000000000000000000000FC1C9CF7FEA1D7
      FBFEA1D8FBFEA2D9FBFEA2D9FBFEA2D9FBFEA2D9FBFEA2D9FBFEA2D9FBFEA1D8
      FBFEA1D7FBFE1C9BF7FE0000003A0000000000000000000000FC1C9CF7FEA1D7
      FBFEA1D8FBFEA2D9FBFEA2D9FBFEA2D9FBFEA2D9FBFEA2D9FBFEA2D9FBFEA1D8
      FBFEA1D7FBFE1C9BF7FE0000003A0000000000000000C6C7C600DEDFDE00DEDF
      DE00D6D3D600C6C3C600ADAEAD009C9A9C00CECBCE00EFEBEF00DEDBDE00CECB
      CE00B5B2B500949294000000000000000000000000007BBEF700B5DFFF00ADDB
      FF009CCFFF006BBAFF0039A6FF00218AF7008CC7EF00C6E7FF00ADD7FF0084C3
      FF004AAAFF00108ADE0000000000000000000000000000000000000000FE1C98
      F6FEBDE2FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE2
      FCFE1C98F6FE000000FA00000000000000000000000000000000000000FE1C98
      F6FEBDE2FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE3FCFEBDE2
      FCFE1C98F6FE000000FA000000000000000000000000ADAEAD00E7E7E700E7E7
      E700D6D7D600C6C7C600ADAEAD008C8A8C0063616300B5B6B500BDBEBD00B5B2
      B50094969400000000000000000000000000000000004AAEE700C6E7FF00BDE7
      FF00A5D3FF007BBEFF0039A6FF001082D6000055AD0052B2E70073BAF70052AE
      EF00218EDE000000000000000000000000000000000000000000000000000000
      00FC0D436FFE1C95F6FEDCEFFDFEDCEFFDFEDCEFFDFECFE9FDFE1C95F6FE0107
      0CFE0000007D0000000000000000000000000000000000000000000000000000
      00FC0D436FFE1C95F6FEDCEFFDFEDCEFFDFEDCEFFDFECFE9FDFE1C95F6FE0107
      0CFE0000007D0000000000000000000000000000000000000000BDBABD00CECB
      CE00C6C7C600B5B6B5009C9A9C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005ABAE70084C7
      F70084BEF7005AAEF7002192DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FA000000FE000000FE000000FE000000FE000000B50000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FA000000FE000000FE000000FE000000FE000000B50000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A494A00BDBABD00424542004245
      4200424542004245420042454200424542004245420042454200424542004245
      420042454200424542004A494A0000000000AD550000D6BEAD006B4531006B45
      31006B4531006B4531006B4531006B4531006B4531006B4531006B4531006B45
      31006B4531006B453100AD550000000000000000000000000000000000000000
      0000474747000000000000000000000000000000000000000000000000000000
      0000DDDDDD000000000000000000000000000000000000000000000000000000
      000051A247000E7F00000E7F00000E7F00000E7F00000E7F00000E7F00000E7F
      0000DEEDDD000000000000000000000000004A494A00BDBABD00E7E3E700DEDB
      DE00D6D3D600CECBCE00CECBCE0042454200CECBCE00CECFCE00D6D7D600DEDF
      DE00E7E7E700424542004A494A0000000000AD550000D6BEAD00EFE7DE00E7DB
      D600E7D3CE00DECBBD00DECBBD006B453100DECBBD00DECFC600E7D7CE00EFE3
      DE00EFEBE7006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E7F00000E7F00008FC38900000000000000
      0000000000000000000000000000000000004A494A00BDBABD00EFEBEF00E7E3
      E700DEDBDE00D6D3D600CECFCE0042454200CECFCE00D6D7D600DEDFDE00E7E7
      E700EFEFEF00424542004A494A0000000000AD550000D6BEAD00F7EFEF00EFE7
      DE00E7DBD600E7D3CE00DECFC6006B453100DECFC600E7D7CE00EFE3DE00EFEB
      E700F7F3EF006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E7F00000E7F00008FC38900000000000000
      0000000000000000000000000000000000004A494A00BDBABD00F7F3F700A5A6
      A500A5A6A500A5A6A500D6D7D60042454200D6D7D600A5A6A500A5A6A500A5A6
      A500F7F7F700424542004A494A0000000000AD550000D6BEAD00FFF7F700FFB2
      6300FFB26300FFB26300E7D7CE006B453100E7D7CE00FFB26300FFB26300FFB2
      6300FFFBF7006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E7F00000E7F00008FC38900000000000000
      0000000000000000000000000000000000004A494A00BDBABD00FFFBFF00F7F3
      F700EFEBEF00E7E3E700DEDFDE0042454200DEDFDE00E7E7E700EFEFEF00F7F7
      F700FFFFFF00424542004A494A0000000000AD550000D6BEAD00FFFFFF00FFF7
      F700F7EFEF00EFE7DE00EFE3DE006B453100EFE3DE00EFEBE700F7F3EF00FFFB
      F700FFFFFF006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E7F00000E7F00008FC38900000000000000
      0000000000000000000000000000000000004A494A00BDBABD00FFFFFF00A5A6
      A500A5A6A500A5A6A500E7E7E70042454200E7E7E700A5A6A500A5A6A500A5A6
      A500FFFFFF00424542004A494A0000000000AD550000D6BEAD00FFFFFF00FFB2
      6300FFB26300FFB26300EFEBE7006B453100EFEBE700FFB26300FFB26300FFB2
      6300FFFFFF006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E7F00000E7F00008FC38900000000000000
      0000000000000000000000000000000000004A494A00BDBABD00FFFFFF00FFFF
      FF00FFFBFF00F7F3F700EFEFEF0042454200EFEFEF00F7F7F700FFFFFF00FFFF
      FF00FFFFFF00424542004A494A0000000000AD550000D6BEAD00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700F7F3EF006B453100F7F3EF00FFFBF700FFFFFF00FFFF
      FF00FFFFFF006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E7F00000E7F00008FC38900000000000000
      0000000000000000000000000000000000004A494A00BDBABD00FFFFFF00A5A6
      A500A5A6A500A5A6A500F7F7F70042454200F7F7F700A5A6A500A5A6A500A5A6
      A500FFFFFF00424542004A494A0000000000AD550000D6BEAD00FFFFFF00FFB2
      6300FFB26300FFB26300FFFBF7006B453100FFFBF700FFB26300FFB26300FFB2
      6300FFFFFF006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E7F00000E7F00008FC38900000000000000
      0000000000000000000000000000000000004A494A00BDBABD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0042454200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00424542004A494A0000000000AD550000D6BEAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006B453100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006B453100AD550000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089898900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E7F00000E7F00008FC38900000000000000
      0000000000000000000000000000000000004A494A00BDBABD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BDBABD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00424542004A494A0000000000AD550000D6BEAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D6BEAD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006B453100AD550000000000000000000000000000000000000000
      00000000000000000000ECECEC00000000000000000089898900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDF5EC000E7F00000E7F00008FC38900000000000000
      00000000000000000000000000000000000000000000BDBABD00BDBABD00BDBA
      BD00BDBABD00BDBABD00BDBABD0000000000BDBABD00BDBABD00BDBABD00BDBA
      BD00BDBABD00BDBABD00000000000000000000000000D6BEAD00D6BEAD00D6BE
      AD00D6BEAD00D6BEAD00D6BEAD0000000000D6BEAD00D6BEAD00D6BEAD00D6BE
      AD00D6BEAD00D6BEAD0000000000000000000000000000000000000000000000
      0000696969000000000000000000000000000000000089898900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000071B369000E7F00000E7F00000E7F00000E7F00008FC38900000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00E001FFFFFFFF0000C001FFFFFFFF0000
      C001FFFFF80F0000C001F80FF00F0000E001F00FF1870000E001F187F1870000
      E001F187F1870000E001F187F00F0000E001F00FF00F0000E001F00FF1FF0000
      E003F1FFF0FF0000E003F0FFF8070000C2D7F807FC0700008FFFFC07FFFF0000
      1FFFFFFFFFFF00003FFFFFFFFFFF0000FFFFFFFF9FFFF83FFFFFFFFF0FFFE00F
      F01FF01F07FFC003F10FF10F83FF8003F187F18781FF8001FF87FF87E1070001
      FF87FF87E0070000F00FF00FF8010000F00FF00FF8010000F1FFF1FFF8000000
      F18FF18FF8000000F08FF08FF8008001F00FF00FF8018001FFFFFFFFFC01C003
      FFFFFFFFFE03E007FFFFFFFFFF8FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F00FF00FFC07FFFFF00FF00FFF07FC07F187F187FF1FFF07FFC7FFC7E007FF1F
      FF87FF87E11FE007FF0FFF0FF01FE11FFC1FFC1FF81FF01FFE1FFE1FF81FF81F
      F10FF10FFC1FF81FF187F187FE1FFC1FF007F007FE1FFE1FFFFFFFFFFFFFFE1F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FF81FFFFFFFFF
      E007E007F007F007C003C003F007F00780038003F007F00780018001F83FF83F
      80018001FC1FFC1F80018001FE0FFE0F80018001FF0FFF0F80018001F18FF18F
      80018001F18FF18F80038003F00FF00FC003C003F01FF01FE007E007FFFFFFFF
      F00FF00FFFFFFFFFFFFFFFFFFFFFFFFFF01FF01FF83FF83FF01FF01FE00FE00F
      E00FE00FC003C003C007C00780038003C007C00780018001C007C00700010001
      C007C00700000000C007C00700000000C00FC00F00000000E00FE00F00000000
      E00FE00F00000000E00FE00F80018001E00FE00F80018001E00FE00FC003C003
      F01FF01FE007E007F83FF83FF81FF81FF83FF83FF83FF80FE00FE00FE00FE003
      C003C003C003E003800380038003C003800180018001E007000100010001E007
      000000000000E007000000000000E007000000000000F00F000000000000F81F
      000000000000F81F800180018001F00F800180018001F00FC003C003C003F80F
      E007E007E007F00FF81FF81FF81FF81FFF03FF03F83FF83FC001C001E00FE00F
      80008000C003C003800080008003800300000000800180010000000000010001
      0000000000000000000000000000000000010001000000000001000100000000
      80018001000000008001800180018001000100018001800180038003C003C003
      80078007E007E007C0FFC0FFF81FF81FFFFFFFFFFFFFFFFFFC7FFC7FFFFFFFFF
      00010001FFFFFFFF00010001F007F00700010001FE3FFE3F00010001FE3FFE3F
      00010001FE3FFE3F00010001FE3FFE3F00010001FE3FFE3F00010001FE3FFE3F
      00010001FE3FFE3F00010001FE3FFE3F00010001FC3FFC3F81038103F03FF03F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PMKurs: TPopupMenu
    AutoPopup = False
    Left = 8
    Top = 96
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      OnClick = N1Click
    end
  end
  object PMGroup: TPopupMenu
    AutoPopup = False
    Left = 56
    Top = 104
    object J1: TMenuItem
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1044#1080#1087#1083#1086#1084
      OnClick = J1Click
    end
    object N21: TMenuItem
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1085#1072' '#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1082#1091#1088#1089
      OnClick = N21Click
    end
    object Dsgecnbnm1: TMenuItem
      Caption = #1042#1099#1087#1091#1089#1090#1080#1090#1100
      OnClick = Dsgecnbnm1Click
    end
    object N2: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1072
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1075#1088#1091#1087#1087#1091
      OnClick = N4Click
    end
  end
  object PMStudent: TPopupMenu
    AutoPopup = False
    OnPopup = PMStudentPopup
    Left = 120
    Top = 96
    object N23: TMenuItem
      Caption = #1055#1077#1088#1077#1074#1086#1076' '#1085#1072' '#1079#1072#1086#1095#1085#1086#1077
      Visible = False
      OnClick = N23Click
    end
    object N22: TMenuItem
      Caption = #1055#1077#1088#1074#1077#1089#1090#1080' '#1074' '#1089#1083#1091#1096#1072#1090#1077#1083#1080
      OnClick = N22Click
    end
    object N5: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1091#1076#1077#1085#1090#1072
      Visible = False
      OnClick = N5Click
    end
    object N14: TMenuItem
      Caption = #1054#1090#1095#1080#1089#1083#1080#1090#1100
      OnClick = N14Click
    end
    object N26: TMenuItem
      Caption = #1042#1099#1087#1091#1089#1090#1080#1090#1100
      OnClick = N26Click
    end
    object N15: TMenuItem
      Caption = #1040#1082#1072#1076#1077#1084#1080#1095#1077#1089#1082#1080#1081' '#1086#1090#1087#1091#1089#1082
      OnClick = N15Click
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object N61: TMenuItem
      Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1040#1082#1072#1076#1077#1084'.'#1086#1090#1087#1091#1089#1082#1072
      OnClick = N61Click
    end
    object N18: TMenuItem
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100
      OnClick = N18Click
    end
    object N19: TMenuItem
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1074' '#1076#1088#1091#1075#1091#1102' '#1075#1088#1091#1087#1087#1091
      OnClick = N19Click
    end
  end
  object OIEDPhoto: TOpenImageEnDialog
    MsgLanguage = msRussian
    Filter = 'JPEG Bitmap (*.jpg;*.jpeg;*.jpe;*.jif)|*.jpg;*.jpeg;*.jpe;*.jif'
    Options = [ofFileMustExist, ofEnableSizing]
    Left = 16
    Top = 152
  end
  object mmMenu: TMainMenu
    Left = 96
    Top = 40
    object N6: TMenuItem
      Caption = #1052#1077#1085#1102
      Visible = False
      object N7: TMenuItem
        Caption = '-'
      end
      object N13: TMenuItem
        Caption = #1047#1072#1095#1077#1090#1085#1086'-'#1101#1082#1079#1072#1084#1077#1085#1072#1094#1080#1086#1085#1085#1072#1103' '#1089#1077#1089#1089#1080#1103
        Enabled = False
        OnClick = N13Click
      end
    end
    object N8: TMenuItem
      Caption = '-'
      object N9: TMenuItem
        Caption = '-'
      end
    end
    object N10: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      OnClick = N10Click
      object N11: TMenuItem
        Bitmap.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000C40E0000C40E000000000000000000000000000D0D0D
          6161615757570707070000000000000000000000000000000000000000000000
          0000000000000000000000000000142200060D0000000000006B6B6B63636359
          59598484840C0C0C000000000000000000000000000000000000000000000000
          00000000000000385200A4DD0193C1001720000000888888121212070707AEAE
          AE81818107070700000000000000000000000000000000000000000000000000
          3E5A00ACE208D2F80AE9FF005D830000004242429393938282823E3E3E696969
          75747401010100000000000000000000000000000000000000436100B0E612D0
          F61AE5FF03AFDE002C41000000000000555555B7B7B743464513151476767660
          6060000000000000000000000000000000003F6000B2EA1DD5F829E8FF04A8D5
          00253A000000000000000000000000464646A9AAAA4F5251191B1A7D7C7D4C4C
          4C00000000000000000000162200A8D723E8FF38E1FF04A0D000203300000000
          00000000000000000000000000003E3E3EA8A8A85557562223237F7F7F393736
          0002070041640098CB00E2FF1DF0FF139ECC001A2E0000000000000000000000
          00000000000000000000000000323232A3A3A35B5D5C2C2E2D7C747223445800
          B0E800D3FF01C2F3005F7800151B000000000000000000000000000000000000
          0000000000000000000000002828289F9FA06163622A2B2A94909089D3DE47DC
          FF046D9E00000000000000000000000000000000000000000000000000000000
          00000000000000000000001C1C1C7171718D8D8DCFCDCC9F9491476170021520
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000797979F1F0F08D8D8D515251645F5D100C0A00000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000828282E8E8E75857577777778889899393937372724949482B2C2C1213
          130000000000000000000000000000000000000000000000000101018E8E8EEC
          ECEB535252000000070707969696E0E0E0797A799597958A8B8A8182815C5C5C
          0B0B0B000000000000000000000000000000020202949393ECECEB4A49490000
          00000000000000151515A2A3A2A3A5A4818382A9AAA9B6B8B7C7C7C763626200
          00000000000000000000000606069B9B9AEAE9E9444443000000000000000000
          000000000000767777D3D3D3C2C4C2DDDEDD989B9A8282829A9B9B1B1C1C0000
          00000000161616A5A4A4E2E2E13C3C3B00000000000000000000000000000000
          0000494949D6D7D7F7F8F8CBCCCB1F20200000001E1F1F121312000000545453
          C7C7C6C8C7C63332320000000000000000000000000000000000000000002424
          24DBDCDBFFFFFFB3B3B2000000000000000000000000040404D7D7D7FFFFFF4B
          4A4A000000000000000000000000000000000000000000000000080808ADADAD
          FFFFFFEBEBEB8686863838380101010000000000005656565E5E5E0303030000
          000000000000000000000000000000000000000000000000002F2E2FAEAFAFE0
          E1E1E4E5E5777878010101000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000001818180C0C
          0B000000000000000000}
        Caption = #1059#1088#1086#1074#1085#1080' '#1076#1086#1089#1090#1091#1087#1072
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1054#1073#1097#1077#1074#1091#1079#1086#1074#1089#1082#1080#1077
        OnClick = N12Click
      end
    end
    object N16: TMenuItem
      Caption = #1055#1088#1080#1082#1072#1079#1099
      Visible = False
      object N17: TMenuItem
        Caption = #1054' '#1087#1077#1088#1077#1074#1086#1076#1077' '#1085#1072' '#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1082#1091#1088#1089
        OnClick = N17Click
      end
    end
    object H1: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      Visible = False
      object N24: TMenuItem
        Caption = #1056#1091#1082#1086#1074#1086#1076#1089#1090#1074#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        ShortCut = 112
        OnClick = N24Click
      end
      object N25: TMenuItem
        Caption = #1053#1072#1087#1080#1089#1072#1090#1100' '#1090#1077#1093'.'#1087#1086#1076#1076#1077#1088#1078#1082#1091
        ShortCut = 113
      end
    end
  end
  object Timer1: TTimer
    Interval = 100000
    OnTimer = Timer1Timer
    Left = 416
    Top = 664
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 180000
    OnTimer = Timer2Timer
    Left = 336
    Top = 672
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 300000
    OnTimer = Timer3Timer
    Left = 922
    Top = 709
  end
  object sAlphaImageList1: TsAlphaImageList
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000005EE494441545885BD975F6C1C471DC73F7BBB7BB777BEBB3D9F7D8E5B
          11FB92B66913D4F61AA14885B43E441F1002257DA854210AF62B2A883EB5025A
          B5EA0312F4010448A812524042808468AC8656A8216EA99B3655635FA4D20049
          ED3BFF8DCF767DF6FDDBBF333CECA53EE373711AE1917E9AD1ECCCFC3EF39DDF
          FE66576197458E92F2BA8F4C7AB77E29EBB916F595F79FE87FE0ED9FEE76FE4E
          2574036387B5DBBE9D35BAEF21AE871035E75B37EBFCC60074F304F18350AF22
          97E6093B3257FCEDC1D49E00C851529847F27855504DE4EA0AE1868DB09CFC9E
          0000797AEF87460954156C89D168E237EC137B053044EA6EB03F027B15CC4142
          F51A61CBCDEF0D40F2D049F428B8EBE02CA3A46F45369B18AE93BDFCB491FBBF
          02C851B2246FCF62CD80B0C029A3F47D061C87A8E7221C2F7F33001AC095177A
          72528894F4250851B9F3071B85B63127310F81BD1800204069A09819A22B0BA8
          3E27804F9D0F34EF657332646473D68283BB58C49682D9E7A278BE28343D5974
          9A6E369CBE1B165F01290200A78C327808599EC350949B53401DF86A8EECD789
          DAAB44A544AE4CC14A09592DE7E4FC959C8CF543BD08BE13004809CD324AFF7E
          0092F130577FDE7DF2F6EF5C3BFD690014F98A39C6BDCFE75155A84C023A8442
          A0EAA0864151C12A43737113400AE83986FFE75FE1677AA90E648AF50F3E2CB8
          33E54BD2F30B40E18E9F50DC1DC02829F4C418F7FC3087A840AD04BE0BB820FD
          965301426C02202071188406D2452E9410D3FFC65E98C5B12C3CC0920A2EEAEB
          9E1A2EA01B2569244FDFF954711B9402AD4CA7C7C7F8DC8F7234AF427D063CAF
          8373B155855004D418A85DA02741EB827A1DB956465696916B4B08DFC5E93259
          513358A50F0FDCF5E454711BC0C7108903937CF6BB591A57A15E02CFDF01E03A
          8404E4665B0142066871D0E360F4219B16D577C6197B778EE2927DDFF7FE6217
          3A02B42072C407C638FC448A7A01EA4B2DE7FE2743080F9C66000381323DF761
          D5234CFCE66FBC3775ADB2E67923CF9E6B6E0B54E5BF3BE42839BA06C6B8E3F1
          148D0968AE82F003F31C706AE0D437DB426C858C65A1FF21E6DE9D66FCEC45A6
          37AAA71D29479E3DD7AC740CC24E9D72941CDD47C7C80EA7587B19AA1F81B501
          4E63F3FCA5DC0C52E143280699216A6B068597CE3331B3B8E3AEDB8BD691EA04
          05F9D7F9227E2347650E6C2B40D5F44D0021408602E7892360DE4BF18D7F32FE
          DA04B3AE7DDA113BEFFA7F02C85152C4B2399CF9C081A65F7FD276EE2DC9FBBE
          CCFABCC5D5DF9DE1F25AA5B21C7247BE7FB6310AA8801E4CA2954277098012CA
          933808EE3550B4203129ADA5AE0760480D2014C9EAC5F32413AB9870E9B15F37
          5E05A27C1C9148C0DD4981CEB7A1A20CD13508EE3268E140812D75B895297570
          5730073368614144134340A4B57BB5B5BEDA06B34B80486F909A7D6BABD3700F
          E8D1AD10FE3AD17D19545D6246253F7E3832D452F6BAA9400C303A29BEAD439E
          D15318B7E4F057023E4D052502A17E3CC7404B18A04C076F86A2805FC3E81D40
          D3A0BB4B928CF1207081E0CC659B696D6D8FE058BC0E0A28398C1E10EBC145A4
          F682BA9F850B252EBE7486CA7A198CC360665A2A2884424D22E924A998A4CBE0
          0B04C1176ED59DCC208893C8F62054943C917470FD86FA682E57B932FE0EEF15
          AB8B17A6BC171E49BF963F7A3CFFB5F42D036002EBCBE06F60F4A4B0EC353209
          EE6F396F57C007EC36F35AFD1DDE0235328411463636284F5E627C62B9F6E607
          FE9F7E76CEF925D07871DCF963E90FE7D7D3E6B16F10CB40D2834A8DB019C72D
          434F5CF2F843EAF15F9CF52F000EB0D0AA3B960E0061DCA50966FF31CB5B93DE
          A9DF9FF79E79F57D6FB67DC8E0A3CB8FC9D70B1E99BB86315290F0D16C81AA0B
          F699D097E2F34001287F92F3CE006E7DA45A6E64FF755914BEF9A2B5632653F2
          F323F2EF2AA40F0C134EA224257A3C4AAFDEA03B2E8F117C27DE782654BED22C
          C22EBF661E9C19916FAA90DC3F4C2489B6AF17B95862A097A3C0B5DDAC71233F
          A79D211E981EA13A770A7B0D3595464625FD69C91BCF2BDD7B0200A01C9F1AA1
          367F4AA1C9BC1D2B58922F0E3D2D8BBB99FB1F579BF92FAD6E574B0000000049
          454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000097048597300000B1200000B1201D2DD7EFC00000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000006
          934944415478DAAC977D6C5B5719C69F73AEEF7562A771F3D534192459DAAE68
          D158C724A099181212A25BA7AE2B43ABD68FAC149A965513EDF86B5BDA650834
          9509412714D8045937C6002128A549B555202DE947A804ACD1D2913669A169D3
          C4891337B6AF7D3FCEFBF2876F123B7156A7E358AFCED5D1F5797EEF733EAF60
          665CDB676CF605C53E0D580A0100000310042806A406382E4004E9321C3BC9CD
          AB5FB5BBF17F2862F879E340A0FEAE17431B5E10F9FEE9BF3F6D22C7E217571E
          B2BEFF8901C23F2CB7CB373EAC0BFB0A40CE74F39CD7A4D7CC80F003773463E8
          7013D9496E5DF123EBA54F0430FE72B95BF6E5A00632313618C7CDB00D66C9D2
          2745CD6783D0FD72F66D062024A09700F5ADB8FA6A93B212DCBAEA95DB77428A
          9409B8514C8D24109F7479D99DFA17CC186BC904BD73B5CF64909376866C30DB
          604A81AD11F0600B6A9E7E5D3382E260FFB3C60BB70DE082000089293F8C8076
          B17853F2DCBDAD0EC7A33834392A528CE99FE70003600652A3A0CB2FA176CF61
          AD20200F5E7AD6DF725B0044E9BEF5B2CF203A8EEA27777EF3996FECF8D6F891
          89477E1BA8A8E659516F1498D301065261D09543A8D9FDB24F0FA0E5E2FEC53B
          215D4A775E565B0A5FE9EA254DA1A33F782870C624BD78D550ED8E80A73A233C
          0DC3C46026702A0CBA7218B53B5B7423205AFAF72D0E42BA4A308381A9D358FD
          D575F8DA736D45650D777F7ADFB67AF9A70F19962BC159A2D320DE331138350A
          75F597A8796ABFE12B14CF7FF4DDFC21A4ED7AF6128187DA40030751E6BF80AA
          A99F00007A47EAB2B24F8B32781AC883A2D428D4B57750B77D57815E88E7FABF
          677C3D2F00C560CEB438358C90EF3A922917F718E7D13B529BCED613C2B40B94
          FDCCE4410C1F45DDD6A70A858637FF9D0784745908B0C8B238E8076C17A80DDD
          C03FCCFB67ADA7CCA09C6D940CC31DEE44FDB6A600341CB9B0DFD8F4F1AB4080
          198559E36AF8086046C88841909B2D9499F1340865B7517214CE7027EAB76C0D
          0A0D477A9F311E5B10C0329D293B29C008A4271B317C823D8038D8B1B2B3265E
          20E68098A370AF7762C596278B848FDFF8E7DEDC4E482B814D7D9D13C9AE8B35
          60110413434A860403AC4056725E86B9B2CE3534CA0CC3B97E02776DDD5C2C7C
          DCFEF7DDFA3C27E4DA9D0DDD668CD7FDFE5C1D9DBB5C05684B2098A16B84C944
          01F46438A7FDF3B2E61CAEB00731FC2EEEDEBEB958F3A3FD4C7336840480C69D
          0D5D538EDE77B647B7ED9406A92D812E1993493FFC5A2AB7FDB9E645E6529DDE
          B40050720CCEF0BBB867DBE3219F1FEDA776CD42CC1C75A6ABF59E376BBA7B3B
          2662E46AD0FDC5F8CF78314A8CA9F916CF01410E88B9859263706E9CC4BDDB1F
          0FE90568FFDB36E38B59004AB91D5165DC998AD3FA8F4E4EC458E9E81F2B4343
          F97590C3B9B3BF85E87C88481A62CBC6903FE86BCF022045C74851D52BE66331
          65D2FAF78FDBF19129036B57C6408A41AEB7F964EC17F98866DE2548016CDF04
          DDBC0027A5B287A0E30FBF4B28E51E514ABD7628BEE15FBF8A345E5E21AF3945
          BA805E540AE53094E5412CB630A06C00ACC317A8C4E0E9A118296ECE02480F83
          DAAF945BA2948A245C19BA0F838FF6768C474919308A2BC02ADD11D322B41950
          0E003260145762E0D4643C164EEEFDCA5B76D73C8093C78E261DC75EED38F67D
          AEE3D46F797BF48465D286F39D9128C380BF741998006501ACF21027C03505D8
          36E02FADC440CF443C3661EF6D6C73DE9CB9133A5D6B6ED951F7EB7D0F180179
          7CCD23154B051CA422618001E967482DC71D1600BB809310007404AA9663E06C
          241E8F584F678ACF7360A1F2A56F379CB612B4FE83E36351868182F265800054
          52C04DA5DD604AD7E4026403565480958E605515067B22F178C4FACE5CF1BC01
          00E0C15D0D67D210E128C38F828A4A080D50A6809B14704D01272EE0C4D221A4
          81A24F5563E0EC783C366EED696C73DECA79162C6632CF40FC65D483580EAD20
          9D31D9B37747691828AAA9C6A59EB1D8D498B5BBB1CDF9F582A7E16257D40CC4
          B19128C34061E57268FEF41A2707D00C03C13BAA71E94C38161FB3F63CF00BE7
          ED8FFD30C96712E62A5DAFF5ADF50764E79A8D554B3549B06F460061C00895E0
          E2A9D1783C6C3537FEDCF9CD2DBF8CF205D01FFCC000A001F04DD77F3CB0697B
          E98D8ED6FB1FAD2CF2078B40AE8DFEF76F983D1FA60E341F557F06E0E6089551
          D36200829EB0CC80287DA2417E7EC7E7E4CF4215524B4C12775FE51FB7FE55BD
          E709A40010802480C90C71F29E9560CE6F6B1542E8DE8A9773C25C5522EAD6AD
          94AB062679ECC4000D7902ECD50B0503A0FF0D0035BCECF67E14A3FA00000000
          49454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000097048597300000B1200000B1201D2DD7EFC00000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000004
          504944415478DABC97BDAF155514C57F7BEE7DBC3C2E100C10341AB1B0B4D258
          985851595A58D0D850696B6C24D634D686C698582889BDFF818924A0925898A8
          8512BFF88860448137B3F7B2D867CE99E1BD270FF37492C99D9B9973CE3A6BAF
          B5F73E2689772F1E39B75A1D7815AD61666C778920E2DEDDD3CFFC78943DBC96
          00A603AF9D7AFA6BAEF0DE8E1F6EE830C7EC95D5B98B27F4FAF33FD89E024070
          F9CE9BDCB873FE1F3F3EBA7101057B7A75001288FE811F0B2724F63C0411200D
          8C535B01950F5304037BBC7E02909400A2C403CBC5A381904130EC79080A0043
          F4B44DE78A52FE1F7522F5FF0D032108F5104266F35044EE3E81F6848CB73FFE
          8425274F61C33BEBFB7822074CE2958F2FBCF5F2C10BBB03E046A847182AC137
          4120CC48364890E1E09BB7F8EBF6CFE7CF9E7E8C4F7FEDB64CFAE2A3C199F77F
          F90C0EDA2E4350260F61662883905B09810931011929C68F2E05376EF619A6A2
          1303AEFCB4988BF7C12E302236738C348BB3CC3025A4D026E1A0742F1ECA852B
          53200C77ED76FD66C3D0306EB689D1C8C595AC44F44418080C11319AC688002B
          83C361B7146408023C362146E7597142523F4EE6D12798A2097731DAB8E60E94
          CCF02F42308E53F19F8DCFE54A9DE4EE2515E60A082C192019D0C36BA06F969B
          84A21260C9523A26C5EDC3245E34ED78087B9810447478F4845416B6FB80A4C4
          DD9B0640350404C88A7D81C1E742BE7EF6F80CCDB133576D8B0DDDFB529432FE
          260389286A3452A8529357C498374637E41D6E89BC2CFEC8C99766BBBE7EF6B8
          461035045E4280A98AAC26E232F9E03DE1CB9296854754D023F456DC72E8ADDF
          566C7CFEE10CC0EF374F706C6B0806FADE582C46DE53852A961BFA8EB5AE27B4
          5684627834C13265C6DB1FDF460A31A968C58686C7800F8675A3E80A086552F1
          1E867D030A23C684E5AA5A6132C4C5C4BA25370C606BA01E3CB6A9861E8E3B74
          C5D3B39905EE10E12D2F4804A021E8165DCD82E141D7758D8D5134615808B9CD
          F24463C09381B5928C9A03535031244B8A0EA244BB844061D5B78A406655041E
          91EB0FD02D33E9C51600322282F005EDDD98CF73B7EEE01E6DF171631E58A76A
          CD88C0168B2AC208E58E8A30C3D98601BAF2D22A009BF582562D17584DB91228
          34CB968A066604A0A2814E8067999F77C58516B955E493049BFE762BC5C7DA7B
          81143307489A35AEC358B04641C7761A90957A5F3AA049798D4993AA52195BD2
          516160C256C4AC10AA4C22A7FE6ED50096D445EB888246A5CCD27ECADFCA704C
          FA07AB14DC1782C84D4DEE2943D505A1B1336A4DA84D5242ED9E69B54013A94E
          5989493B30E601A2EA79671102DCBBB5BEF3C1A474CA6ADB0589E1EE9FB3EFA6
          C78910F47F74F4B7F35EEE8F9968EBD16CB5FE381B4737DB91A9DBB7038AD684
          2E0F1D6679E8F0F6DF5DBB5AC5BAD81F2C5781943D435C9B6442337BF28D0F9E
          E3ABCBFB315B3574634133AB312E75B22699ABDF7DF3E0E39CC497DF1E99D8DA
          98768C063C0B3CC5FF7F7D2FE98BBF0700D55EAB385A5AED6A0000000049454E
          44AE426082}
      end>
    Left = 48
    Top = 672
    Bitmap = {}
  end
  object sAlphaImageList2: TsAlphaImageList
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA79300000009704859730000004800
          0000480046C96B3E0000000976704167000000300000003000CEEE8C5700000E
          E54944415468DEED9979CCA65579C6AFEB6CCFF27EDBCC37DF2C38C00CCAA833
          08A42328B21407A1AE83D21A6848ABB6B6B6D5A0294AA3368AD5B6312D6DD3D8
          84C6D484362811AD958A8099AAEC9B401C991970866564B66F966F7997673DE7
          DCFDE3FD4463599C199CF68FDEC9C973E7C9B35CBF73EEB3DCE710BF227BEBA7
          CEC9628C134A69243699AF9AB2BCE5B377CB4BFD1FBE941F3BFBA3A7ACE80DFA
          976799BBF8D4D5A7AF5DB964554751637A76F760EBCE2D5BFB4571D3E2F1C5D7
          DFFAD9BBF7FCAA2AEE886CED9FAC3427FEEEA23FBBE82FCE38B4E9B19B62B799
          95BEEFC681EFC681EF49DF7763AF9D8F3F78FAAE78F9DF6D9C59F37BCB3F7ECE
          55A7DA97E2DF47DD02C7BF6F7CBC2CCB7FFBFD4BDFFFF60FBDE963D45A83C4B0
          FCDC73224094E1F55B0FDE28577FF153B72C995872F98FFE69E7DCD1FC5F1FCD
          CB93BF6D6D55D6D7BF73E36F6EFCC30D1F642BA58438409401431C4890017C1C
          D08781346180DA0F58F881AC5CB20A8B962E3AF9B6BB6E5BB7F475635F9F7FA4
          0AFF2B006E8D5CB164D5D487AFBCF84A1025117B10291063499112124BC458D2
          87126D18A0097DD66D1783A68B6513C771DBC16D6B76EDDCD52BB7C67B8E39C0
          D8BBB058881BDF7CDE05F94953CB283200501168086921E2196360882D4228D9
          FA824D3B40D9F63868BAEC57737089E33D3FBCFF8C7C1DBF546D4571243ACC91
          0248C4BBCD2826978D8E4AB7D80D9194222322314534298DB6A2A901905182F8
          D8A2F635CBB692A2EEA357951C4F8C64A366A29CF19702F8C2310580E02D494A
          F8D0C57C71005439C01A40070139AC38685A004494166D6C51B725CA66805ED3
          C77CD1C7A02E90E71AE521FF96630A30763108625D92681C1AECE3D8A840BB31
          28E3491D105540A0A3A2010104096C438B3A0C30F03DF69B2E7AF53C0E0EBAD4
          564085B5E39740CDFF3BE2B16901C22ACD119728CC54D332E51D92207451444B
          00A525C489A60100460469A44125054BE94B19E6D10FF33C58EC13EB4865D811
          1107A03A2600243C152A971345ECA1941E1A28B4040223A20E08CA01CA2EB480
          47D00D4218C0B38F9A3D54E8A1EBE7E072820A1522FC91685147F2D2FC371045
          B0DDE584C98435E7095782B6246D45656A28E3A9B5A7361E4A7B2ADD50D97AE1
          99820DBB60E2E972050876CCDE780C010000229B4820CD2926F5A26D8D245192
          3A2B89B548AC91C41971D622B1F6D9FBA9D3625C2B3A6990E514520060D391CA
          3862009BF286EEFE507472853C279244608C87B3446A2D32EB901A8B6CC11F42
          29181B609D20CF893C27E6F785D265FCCA31073870BDFC646EAFFF82AF046359
          C23C499059436784C67838139918D219C09948AB3DAD8948AC6627711CCB5284
          0A98DDE3AFDD775D7CEA980300C0B225939FBBF73BBDC7E8AD8CBA0E3AAE23B9
          CD25B729129388B3569C7148AC93CCA692DB1C23B623236E44E02DEEBA657EFB
          CAE3967EE668341C1580899DD79E7FDADB4FB8FF0EC36E2F20B31D666684A91E
          456A4699E931667A0CA91E6366C698990E32DB61AF1778CFF780F34FDBB852AA
          F48CA3D170C46BA1B3AF7CCDAAA945CB6FFEE4FBFE74F13B7EED32DCFAFD6D7C
          727ABBBC62E50A8CA58B99A88E5895432B470D2D0241AFEAF35B776E96BD3B8E
          C79F5FF679BE76DD3AF3D0D62D172D3F73E21B3BEFDE377B243A8E281F38EB23
          AF49065571EB3557FEF5F9AF58F672D14A43017C7CD736B9E507DF44C33D5C31
          392E4B271603000FCCCDCADE43F3B0B29C6F5EBF515E75FC3A08401F833C71E0
          497EEC9A4FDC39D619BDE8F6BF79F8B027B2230258FD3B531FBFE2B20FFFE585
          AF7F1D733302B590C028024A013E3438307F00B3BD61A52E1A5D84A9F12918ED
          9E4D6CA2003102A5EF63D3030FCA3FDEF00F9F7EE2BAFD9F3D5C2DBF74085DFA
          B977B0B3CE6ED02787BF3DE395677DE0ADE79FABC6B29C228D081A800D058D44
          6940068E64894C4D4C60C9C40447D244C080200D830C9F09B1A18F8D448069C7
          62DFBEEE39C571336BD6FCFAEA3D6FBCE4DC3D9B376D7BE9002EB9FACD2FEF16
          DD2FFFF13B3E7C7513EA579FB7FE5CB5F2B811684646349061A1C8CF7CA04194
          06511A46691063F35300F8D8A095866D6CE06343A816995DA24390D3DE73E1FB
          DF7BFFE3F7BEE6F56F7BED3D9B376DEDBD98B6171D85DEFAC9F3CF5AB5E2A47B
          AFFBE8577F234F72854826630DDB58B1F47368FC1CEB61411DE65887393661E8
          373FE7D7618E8D9F43ED877EBDE097ED1CDA583119AD6994436A53F32F1FF9F2
          6F4D4D2CBDE79D575F74DA51B5C086ABCE5C7FCAEA536FBBE2E28F4DD6A192BF
          FAF26778D2CB4E96152768581311A4649452024AC4053F4A8D08CF2841827804
          F10CE2C5C7066D2CE843214D2C51FB924D28A5F225EB50492D05CAF984B73D70
          B36C587F21DEF0EA73277EBCE7B14B169FDEF9F6F63B9E3E70D800E77CF4D4E5
          A3F9F8773EF8AE2B963528B969F3AD787CC7764E2EED60D10A0FA2419082414A
          446920A208E4003288388A18483488D1300CAF08D1B10D0A752851FB01CBD043
          D90E58B60506BE87E9FD03EE9F9E45B025964F2DE5DA13D7E577FEE8F60B4E78
          C3D4579EBC7377795800F695F2A52B2EFBD0D96624B2D273B8F6AB5FE4889B40
          6745CD917150A4224400318408811622912242888748A088304A5CE8B035DB58
          A30D7DB67EC0C67BD4ADB0F205066D8F83B6E081F9591487141F7EE2419EF9BA
          535049C1D52B562FB9E98E6F4E1E7A64F09FBF34C0AB3EB0ECBC334E3DFDF36B
          D71E0F95F6B0E5278FF09EDB1F13A30D274EF29227024A0424126804188244D1
          12A110A36288141F237C8CF451A48D8236B46C422BAD6F50B7056BDF97B22959
          B4A50CEA0166EB2E776F2F64E6E01C96AE06174F5A09AA466F30384DBDA2BE79
          FA81EEDE5FD4FA9C094DBF187C62FDFA1395987DE2ACC3F7EFB81386167528D1
          A80AFDCA83D1003202910E448010155C046C0CF0AA81A201399C668663BF4788
          2D7C6CD1840A8DAF50F902653BC0A0E963D0346858A08E02AD0CBE7FE7DD387D
          CD62F44D83F5EB4F34773F74EFC701BCFB45015EF65E77F289C74F6EC8F302B9
          55945AB0F9877B90EA31A66944DD060EEA164AF261C58B502422D8E138DF8A83
          51169A9A430042101963848F2D7C6CD8841A755BA06A2B164D0F83A666BFE9A3
          F60562A259B6151EDDDC45280F32B70A795E60E5098BDF66FE28AC7CE2DA62D7
          0B02D495DF6897CE9A16D318B51DB9EB811DA80BA164852CCA0343A0140DA018
          4046824144B5086CE9518B85831547452DA402400AA2C4E8E1A3671B6B697C8D
          3A94ACDA528AB6E4A02DA4686B78DF907994CAD7682BE17D0F6F97F3CF5A8316
          D3B44B67D3C1D3F5DB00FCF30B871071C1F894462F3C8516E3F8AF7B77A06E6A
          2009D01920A2D146A00A1E3A08183D103C4405486C119920A086A6C102004402
          22027CF468638D3AD6A842812A9628C3D06F82878887CE3C8A7680A25FE3BBF7
          EDC0D9AF9F442F3C85F1298D18E582170498BC94CA58AE5556516985E9DE6E6E
          DEB61B4513D0948A3A511038828010F0ACE105F42002143C400501E140047261
          9E1408033C025A04340C281150A3454DCF0A9181A007E8A15CCD413D4084E0D1
          C7F6726F6F17A8159455D496A72C7F8FE2BEEBA23C278008526A2CAA4394410C
          7CF4E9435214013A01752662D348A5824011D402A585D051A002842D855A8484
          501895163504A05044244054CB288D083DA03CA982282D545A842A822A32C944
          6C0EB442565590479F9A41B22CB00E51A8B0387A5800CD730344486811E7FB01
          D345855DDB6BD0003A25DC0891A480D284350AD628386390580B67348C51301A
          D05A60B44053A0280089281188110281011041446844718812E163808F0A4D20
          5C46B85122064188C0E6ED8770C2688AF97E806F1125429E378466BF26E5C425
          F1F19903ED99CF2C29F1E4CE02CA113A035C4EA4A981731ACEEA61E2EE1C52E7
          909A048949901807AB1DACB6D0D40B7D00108908B2D0078286F10A8A04490804
          51042146B436224B345CAEE0EB0009C4134F0FC0D58299032D7C19B7CE7C4DDA
          17EEC40AD7CCEE686FD0E3E4A1FD2D75326C019B93CE2A38A339DC617070D621
          B58E994D91DA148949E9B48355164A692A2880804864883F05B034CA402982C4
          70A696401F03DA18E09CA6CB89BA24622B9C39D062D7EE1AB33BDA201AD7FCA2
          DCFF3113A7EBB8CD973252F7E259D59CC0A480E9909D712527AECC99392BB973
          C89304B973CC5C26B9CD90BB9C9949253519129B32D1A93893C26A47ABAC186D
          A095A6524AC8A178818820324264B8E488F431C89E8315DA365202A52D046D3F
          C666267E66F6ABF2A5179DC8E66E14997837AE2AF684FB405CAF129598843009
          69B4823386CE9A61FC1B87CCA6CC5C8ACCA4484C46A75358E56094A5FA5908D1
          8B471B1B6865A8399C1D44228304B4D1B33106566B18A36853C024847742F4A4
          2EF7864BBAFF816FE339EC3997127337424636E2662A74B5C312938226A168AD
          68B5126BF44207764CAC93D4A4486DC6D4E492A80C463B6ADA855188140C97D6
          365A6A6A511C0EAD0BE7066C4323B569608DA6515A8C1B56984E4448F405F81E
          9EC79E37A1E9DF840A118F2A0D1847680328125A2B18ADE18C45621C12ED9098
          04A9C990EA0C89C990E87C584C0789E9C099CEB3F7529D21D1191293C0190767
          2C9C5EA87DADA014A12D611240694002B6429E7FD7FA0577A7A97075B93F7EAB
          33A946B50141406BD26A05AB35AC3670C6D2EA044E25703AA5D3198C4A6160C9
          E1090D0481812D143500A120C04B03176B3A6D618DA1D11A5A13A0509BE16E43
          392D7D65F0E9F9AFE3790FC85F30A5EC7E037750B0E1E0167FDFEC4F42ACAA00
          AD285A29314A8BD11A465971DA8AD516462562542296098C4AC5AA4CAC4A17FC
          54AC4A607422463971CAC1682B466B68A5C528255A1155156466A78FFB7FE41F
          A0C89BE6BFFEFCE1F39CA3D02F5AB5157B3AA7E15F7D1FF7EFD832C8A6F7972B
          AD53C9E4448EB16C8499ED201D86079DCE605506A3521A954029074DF3EC92E2
          A7B52FF008D2D2C7166DA8393BE8E2D11F4FE3F6DBF7F41EBA6BEED6A62B57D1
          E0933337E09917D377D8FB42ABFFC02D0D2DDE4872C3A2C5C9796B4F5EB16AED
          CB5726EB4E5AC5555327603C598A448DC2A8149A0E0010A585970A75E8A35BEF
          C7D3079FC196279F92AD4F3CD36CDDBE77E7CC6C7D3B44BE6B1DBFB7FDDA6AFA
          70F41CF549FDA9574C2C5354AF6A6A59E7633869622C3D5E6B4E2D1A1B59D471
          790A1045535433BDFE6C0CF1C07CB77EC668FD9431DCA2B46C7BF8EF670E4BF0
          FFDBFF35FB6F61723D11A4D1AC070000002574455874646174653A6372656174
          6500323031302D30322D31315430313A30353A35362D30363A3030C4BE96B200
          00002574455874646174653A6D6F6469667900323030382D30332D3231543139
          3A31383A34362D30353A30303EC8F01D0000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000097048597300000B1300000B1301009A9C180000012F694343505068
          6F746F73686F70204943432070726F66696C65000078DAAD8EBD4AC3501C47CF
          6D45C121880437E1E2202EE2C7D631694B111C6A1449B235C9A58A36B9DC5C3F
          3AF9123E84838BA3A06F5071109C7C0437411C1C1C22647010C1339DFF19FEFC
          A0B1E275FC6E630E46B93541CF976114CB9947A66902C0202DB5D7EF6F03E445
          AEF8C1FB3302E069D5EBF85DFEC66CAA8D053E81CD4C95298875203BB3DA82B8
          04DCE4485B1057806BF68236883BC019563E019CA4F217C0316114837805DC61
          18C5D0007093CA5DC0B5EADC02B40B3D3687C3032B375AAD96F4B2225172775C
          5A352AE5569E1646176660550654FBAADD9ED6C74A063D9FFF258C6259D9DB0E
          02100B93BAD5A427E6F45B8578F8FDAE7F8CEFC10B60EAB66EFB1F70BD068BCD
          BA2D2FC1FC05DCE82FF1C0503DFA8BE6E60000000467414D410000D8EBF51C14
          AA000000206348524D00007A25000080830000F425000084D100006D5F0000E8
          6C00003C8B00001B5883E70778000007144944415478DAC4976B6C1DC515C77F
          B33B33BBD7BE766E421C1BF3C80DB4242D044C5C529450302A495A52845B556A
          29142755553EF0A60FA9081154DA4F20A5A80F210AC23411A8941610B4522317
          937C485220E01448C8DB01126207DF47F6FADEBB8FD9E9877B4331AF1242C548
          47AB9DD19EF9CD7FCE9C392BACB57C964D7CD4E0AFAFCEF4FB1EAB7D6DF39EE7
          D2DADA82E7A91161AAF72C5D551AFCBF02ACFA664BBFA7C5E39EB668059EB2B4
          665B99366316D9F619D8F0ED916A71EFC5CB7F15958E07407ED8C0491DE98D13
          475C2A35814E204E203175AC08B04E86B6E9737A64628661D7B9C703E07E50E7
          DA1BBCD5D90CDFED3A21E58DC3ADC491C158302998C4809008A1F05A3BBB2E9D
          F7E6FEC7369B914F0AE07C5067A526FA2B35816A3F83EB6EFF1DF9790B99AC0A
          2A354139882914024AA580C95A0A5EF7C0F128F08100D5BAC84DD6052DD34FA3
          B33BCFC00D7772D1F2ABA85405951A144B558A4D88D0F87D9F3AC0645D8C4CD6
          0427CFE985B882148665977F8F2BAFF939862C412565A210502C061C09423EF5
          20ACD6C593914BDFE9737B210AC0D1388EA277E122BE307F01FF7EF15FECDBF1
          12DB5E5A8F76C3914F5D817A249EE89A7D0EA406EA47203CD20089025AB4E0FC
          455FE18AEFFF80388A4AD6B2F2BDDF3F7DABEE392E0556FFA3327AFFD9B961EA
          A58B094B203D7034B84D735C6A85D7E9EC3EFBCFB7FC61D308C09F6EF17A5C87
          D5AE63FB4C0A4FDDAA7105A342F0D0D77F19DD714C0A004857EF4628882A502B
          41BD69936350DC4D466B2A93E12E803F5EEFF52486E1C4D0171B419208920412
          43DEA4ACFAFB6D7AF89801062EFBD2EF376E7A0E329D905A88AA502F37B6C40A
          366C7EB970FBC32FDE059018B13A312217279024101BB0D6213682C44062E87B
          FA567DC7310188C5B78DECDAB6F52F26AC826A03211B20B28548B4D477ECD8F9
          24C0BD3FF47B9284BEC68A45D3A067C98D2CBCF467A4695311C3C0C7CE8447DB
          139BF63D7ADE1C6F6066D69D9E699B492DB6049532EB373EBFEF8A3BFF7609C0
          B273D4D740F41FBD532D30FB730B3877F92ADA4F5D44B6AD83FDDB870191FBCE
          62B9F5D18DE6B58FA500C09A4786F387B3DF50E3D93359BF2B60CB9824CD2F61
          67B8E4F3BFB8EBE1E50DF9C94FCB5A481B8746AA16162EBB1EE200E20AA7F45E
          455BEE94A35B71F947DE860FAE19CA5526AB7D511C5FB4E5B9B7BFED69F7E4AB
          577C99BE0BCEA258AA502A4F32677627138580071ED8C464B5CEACC2AAD2DCAE
          626EF1D29F523BBC83F1628979E77F0BF434D0EDA0DBD9FAECFDBCFCCF7B701C
          46AFBC279CF3BE6378FFE0BA9E7A18AEDAB265B4DF5A9052D27B5E07195FB37F
          FF184F073584231002C60F97A9D7422EB8F01432BE66E37D93B9F1C35532D33A
          C9881A33BACF803068AEAD6169129118C1CC6C9A7FE83A3F37F0DB7AE93D79C0
          3EFECA2B07F3DD27B7E2298DE769B452F8BEC6F735699AA2A5426B49142668AD
          705D8734B5041307A9084BBD16E29B14D21AD8E6E4D6019B529B18254E204A04
          694A0FF0EC3B000FAE195AB16DDBA1FC89DD2DE8E6E49EA7F1B422E37B647C0F
          DFD3682D514A22A58BEB3A54CB6FB1E5A9BB29040E2DBE61ECADD7999D73C11A
          88261B10710D8ED4193FB087C408CA154162A69680D2719CBCE33828E5A095C2
          F334FE51F335BEE7E1FB0AAD154ABA140FED62E35FEF06A074683B9E939218C1
          DE9DAF30FBA24B1A898A044C190484788C8EEE268A1DA2B8515D4D39058E23CE
          89E30425255A2BBC264403C4FB2F44B3EFA4D3CEE282FE6B29BEB11961CA18D3
          483E43EB9E64FBAB2F35820F97898922138161ED236B79735C52283BA4D6964C
          CA94CBCB711D27271C815212AD244A4B3CDD54C27F97791ACF6B28913F73118B
          2EBB81E9DD5F7C27DBC506366C5847E1D03E506D189961DD3343ECDC7300E95A
          A6B59952D635375FFF606D4A0DE90847F4A526454A1729255A29B492785AE279
          0A4FBF7B3B349ED6388ECB995FBD16D9D2D99CBC9101BD9636B21D332814F7D3
          D6D1C115D7FC988E134FE040291EECF2E3737F34180DBE3F155B701C07D77591
          D26980288952AA01A3154A2B1CC7C55A88E394384A2995CA78A75FCE7EE67350
          F6509CB698170EF868AD99D1D145C673E1C85E9ED9DD4A79C6D215F7EDE81D5E
          B060C1EAF6F6F6FE294128A5BBF2ECF9DD376EDE74B047CAC6CAB5D78805A51B
          6AB8EED484B97BF766868606C9647C32990C7EAAA80A975AA1848D2384AB20AE
          327AB0C8AB7BC6E9EA7200F252CA9BE6CD9B7753A15028054170F3D8D8D8A0F8
          04454C9FEFFBC3D96C16DF6F02349F954A85E1BB9632ABB31B8460F0A917F8C9
          6F86504ABDCF89B5B654AD56E7C84F0030108621711CA3949A0260ADE5F9975F
          6779471708C1FA17F6502C163FCC4F0EB8C93DC6C97342887B01DF5A8B318630
          0C09C390288AB0D672EA74C985BD7301CBCA3B1FA31E251FE5AFC739D6E55B6B
          47DEF34E1CC7044140A150E0ADF122A42923AF1DA05CA9FF2F7723E233FF3BFE
          AC01FE3300E702195CD28A864E0000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002044944415478DAEC584D4EC24018ADC403B077E30DD478
          00CBDA85E5049613584F009CA07A02E004C5856BEA018CF504D4857B8EE0FB92
          5732D60E6D691B48FC5EF23281CE7CF3FDBC6F3AE0380A8542A15028140A2BAE
          5FBF57C203EDED82E7BBE6F43AD8B40FFA32B660EE0E5CC3D6DA1648AF65E77D
          0C1FE04C467CBE6C604B1CDEAE7FBF3D4B3B0B80A55ED1F1181C80298398EC61
          4FD6AC41A9E213B8B4CD3D6DE8B864690CFA99E3C854CCC7311D1963BCC138C4
          B34D59223084A0D89D62FE2493A56DCD499526660907A6CE3104E003B8E16673
          CB7A9141C46C8E306F59D4374C44C0448C6C92692C2143E7E2FC337865739E81
          2732878E45581FE6EC79948B4FC707559DAF2D216C16B0C4E2F06399248C2064
          DE90C18794CA14BC073D6A7C54D55E931E4899F1A444C7529DCF4CC34620733C
          4FD8EC11ED997D6393D6C2B667AD008AF49B735C3673F9559FF2484C49649262
          3596B6AC67D562EFBC74720A192791C7CDF290069E61CE9FE62D69FAD04844BB
          4D6C39FB77BD75FB45CD6BB1E9F18070BBEA8122A9C41597065C3BCC9F32745C
          AE0D5F75FDE9ED710AADEA64A84052DB7B92C88F558CF8F272BA3E85DAB8A065
          D5B860EF3442EBB7D11AF0DA3072C8001C0D4003D00034000D4003F8F701D4BD
          0BCD0B6E9F1BB2EAF7A9E5166B9B2F489AFE2BE11E51D27FFD04AD528105F876
          4401A48E42A15028DAC28F0003009C06EBB79BD74A560000000049454E44AE42
          6082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000009604944415478DA
          D4596B9014D515FE6EF74CCFCE8BD9C7B0F296C79690DD2C1216620258083182
          182026154C228295CA1F53950A652A6A552863C494497EE4215A54A58C94A858
          08858AA2822401A2F24A3484F00A597637069725BBC3CE63E7D1CF9C7BA76776
          989D1732C0E6569DE9DBDDB7EFFDCE39DF39F7740F2CCBC25591AE5D3EABFBD0
          396BEF0FEEBE6A6B9030FE53F5F6F19E3658D80E877B02CE6CE5571EEFFDF38B
          3F293434B8B6F78A9692AA0EFEDF7B1E80A1EE83169B004BCB5C7D3478EBCA37
          497CD55E4EAA32F88DD0E34F434F7861A42064B0DD0558474989A6E1A740D7EE
          3A92C350A3F7434F49E4813478938EC8A5289B6C2B71D7F051A0F3EDB904F438
          D4C86C1849024DC28F5C019D2B611266334711E6A11F4EA747ABA1C0950571D7
          3B6B882E3F238B7B60EA10C2799FE9D734C0FACF7E30467612C2D2029699E155
          925598FF9BD8B5F740E7DB2F2115F935B4B8077AC6EA24BCAF67ACCF3D629003
          B8E8A29FE791BBE97804FBD6345D3B0F74BCD948097817659919594B9B64754B
          1FB4BCF0840ECB5D0F9C3B6C5B7FD00B433D822875569027DEB9BA1E687F6D01
          59FC1852FD33B23C17BCB7334E56D4AC58866E5B3F23853C62F9E9672779E291
          ABE78133DB1F82165D47D65608557A71CB96ACD58DC123F7807714C5C0C134E7
          994CE69272AC5FD423DBE887C745A22A0A58A7B72A946536332DF6756135CE5F
          1B20CBF67395B1C5434C0BCE8015EE2225F68171CF0890952882E3745C8AF9BF
          EDB82205CC3DDF0BC255FB3A7305E64072D2951CCB673D60D27A99C034D3566C
          68851EBD80C8FEA7E0F08F8277F6FD60E17658912EC22555A808EBA7F315B8ED
          A9773F9502C6F6E56D34C16B90E47154D380B9FC6074845CC39FB2C15B83C0B9
          228A0F56631B1227DE40FCEF3B60B902606A1492C305DF2DABE1F00561751F10
          CF3149AE44119A54FA1116ACFFD56529A06F59348F1EDC4DE0DDD985EC239315
          528244720C2ECC395E3B0596B30E91F79E811EEA84316121B4798F93E5CF42D9
          F73058AC1BEEA65BE16E5E0AEBDCFB801A4ECF5799229BB1F0997B2B56407B69
          C11334F18F91037E8822997399BC337E1EB49E53881E7E4138459DFD43E85357
          D0C22C5DF2AA312807D641EEDC0539301AFE5BBE03291582D57B5C80AE5091C9
          EC4B1B3A2A4BA386D66CF114A8F354A809E17DCBEE8B732E2ECAF3136EC3C047
          5B11F9E05918BE71487E653381FF069C4E0782C106D4D60600970FA9F93F873A
          F7A730062EA27FCF2FA86C0A814DBC3D0D21331F9FDBCCCC3F24FDB61682EA28
          98790CB59999DC1226599007ACED01E239CFE1901D9046B511F3154476AD2350
          7DD0A77D13EAAC35748FF8EEF3C1EBF5429665381C0E52C68948248254D33298
          23A743D9FF30621F6E816B4C2B3C33BF0DF4FC0518382F2C6DF198121EE17145
          E7831E6926683BCA5228F5BB568531394E54910575C404B2ED6A3A778D8034E5
          4EA4BA0E61E01F6FC052FC50E79112E3E70BB023468C80A22834FC52E7EABA8E
          44228168342AACACFC753D1C275EA09C1080EFF3AB29A4086CF76141BB825465
          F26669C9A67BCB5348E7F4D1644E2108DAA48510800526116516207A68A3006F
          DED086E4F26D027C8DDB8D406D2D5C353522555A76B593119994F392676AEBEA
          2807B8294E1E44EA760A78BA19A6749BEA3E0569F21232BA3294AA696AB55614
          C4C9F553EE23009B90637946B4909AEEA4AA218A81BF6D234AAAD0663C00ADF5
          BB022CA78C9B14E0943972A61B295517734D1A558B8EF3FDA22FCB12BE386DAC
          E8ABAA8A783C8E04094BF441796F2DE4EE8370D6DF08DFEC55A45107ACD03FD3
          6B0F260F958E1E79D92B46690F10FFB35A93E599AB0E52F33D48761D41F4C88B
          30943A24176F14E015970B81404028C0C1F31689A710B625A919D93EBF9E699C
          629C6A7E12E66B44EACB1BA0B5AD81D67F0EFD7FF825748A39E9C68562BFC849
          1E0AC9D4B2414CD1DF2C4A04467BC8D87994DF2711657E0F23D60B63E21D50BF
          B096B28F5F589C03E7BCBFF4AD0B39E756913E372EA3E7BDC233DC1B6ACB2A18
          A366C3B5FF214AC7CFA366C22CB85B968BF7092443E9E421C99C4627CA642136
          DDA24DCAD1F22DE817BB3070E059F2BF13A9B98F419FB24C00767B3C023C0A40
          6F1A530FDD18F4F2B4F1C13460BE2714E0308F1D27798407774A6A4162E91628
          079F44F2EC4E68A10EF866ADA27D8468C8F70CD39C4E8F6C291A03F127FD3EC7
          F49551E66D44FCE45BD0FA3A60D6DD2472B84501ECA07498C932C5DA1F8F7621
          A1A6BF467C86C09FFC38FDD9C441965E347372C9C22C168B89B8E019CBD1B91B
          AE0F1E137B80B7650994B15418F69E7CD7B178C31DC53D6049D34C5DB7E2879E
          63A69680D6BC12EACCEF93E75CA8A1ECC2F92ED25CA902D6AA8841059BCFEB83
          4B71893D439BB808F1600B6AF63F8281633B68A73F0DEF4DF31B4BA651E6AEED
          8C1D7BF57902DFA737DFB74E9DF520A5BF1A911E6B491863B8DA8D6F7A0D0D0D
          82A6CC3F1E89C5CFD1E6D7BA5DBD701A910FB7EE2C9B467B9F0872D2CA03AB3E
          9A4354D9CEC16732CCB56EC96412917098A86F7ECDBBE9737D74E954706DEF85
          8ACAE98BE1F052CA343BAE85D54B3502CF29F5D51B468E7CBDE25A88378FC763
          6218345E92107DF562F71D2583F1FFA0392E077FC79FB620D47EB4E484F5536E
          C6A405F75C7F050AB5C4457ACFFDA4BDE41877FDE8E1E181825EA112C334CCB2
          6386890256818C609555808FC97FF6F4B99028E6EA7D6E846209F8DD0AA68D6B
          A8F8FEA78B01ABD09B1AAF0ECB7C47E263F286F44612E88F25215346B9D04F65
          744AC7D4B10D15DFAF1A85B8F50DDD283B26BF358EF0C0ADA4971A5D4FAF9B2E
          E765DDAFF8DB28139F3058D192815BD7D4CD92C2C7E4B70BE138BA43E92FE8FC
          D8D33F7059F74B612BE601661806CB2F212C33AD40490A994315E09C36684775
          2B4ED1E77239F73916FB4F05AB120AF18112BD64C83EBFBF2C856AFC4ECC593D
          09C7DEFA04FF3D1B1363F257F9ECC491D9FED471F5435244B9FB1C8BCD16335F
          89620A3822D188D3E7F70DA94BF23D9088C6F0FE8E97A19E9F4CF702624CB5B7
          718E8517AAFC9B5BFA036D710598ADA933D21F56C68C1E333406F283D4903170
          E6E68C8AE918A8721972B12FE4B215D0F3A954D403EDEDFF1AD7D3D373A925BA
          CF978D81F33466DFDEBD555520168B8EB5B14AE53C90CD4E94CBA5A17B83656F
          54A576E2EA578114E052B1CFA097BC0FB0748EE24A79F91B9EEDB6EBFB42607F
          6F26E1B995E75ACDCA01ED28524318F643D7BBA8663978F44AD268A690E1E0F9
          7F54328647336D4C15A5D1DCC16C982860D978866490FF09300052359C76B7BD
          A4970000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000097048597300000B1200000B1201D2DD7EFC00000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000004
          F14944415478DAEC97CB8F145514C67FE7DEAAEAEE1998170E04104CE42904F0
          1163D890B833C8C2850B17F81FB83451A32B37BAE24F70A3269AB85013DD9868
          74A31B1843E204445488409C17F3EAE97ADC7B8F8BAAEAEE7980A389CCC64A3A
          DDE93A75CE77BE73EE774E89AAB29597618BAF2D07106DD6F0C5479A31F01D70
          0418BD8759064C7C72233DBD59BFA2AA7CFECAE1C7C3CCD4C4FD0C973ACA673F
          663C7F326174703D710A4C2D04BE9ACC397FBA79DFA0BB4F1C3DF5CC9B3F5CEE
          02F8F4A5111DDA3E7EDF87BEBF3ADFFD7DFAC8C8BFB601585C9AE6858FE60520
          7AE3788BA78F279C3C778EBCBDC4ED2B1368504010014410E0B93DC3A8820888
          48499F00082A8A209CDDBFBA3202A896F428CAD8BE436CDBB18B6F3F7CAFD703
          EF4EA6C9C7476396E7AE30777316310611E81ECFEA61552D016849771DA044A1
          5DA00A1891F26605B6FC58E66FFD0A72171F5637A11601425082F30455D42B21
          948109A01AC007822A1202154188988A0DEDB20202A60A6AC01883B182890431
          8206A5F0BA1A800F8A3A47D671A8F7151050AF68A8B2AFBE4B76A0CCB78E2918
          53B762AF3C620CD60A1219C41A6C6C09CEE143580DC079254F1DD9528AF781E0
          B58C52D15F67265295410408F5BFA840F06BCF1788069C1130608DC1248622F3
          38BF46078AA064ED9C2C7568F0A0550D754D3755E9BBB23E7855AC296D636B90
          7E5210028AA88257BC786C61C8DA3945585382CC2B9DA59495E58C46C3F61159
          C96564508122F3A4B9A7F0819A451188AD902411AD8118890C784F703D833A97
          4E9631B49C92AFED01E7956C3923CB1DC1071A4D8BD62A5D21B1CD84385116A7
          DB4C2FAE94E468D9F16294038F8C639A11A8E2335756484A0654A19316E48527
          5BC9D73521CE2B693BC7F9808810528F7305D6F678D81647C48D18177B7E79E8
          296E34F774EF1D658A787682437BC7C93A199DC54EB7103E04E2D81242A07081
          B49D51F4F7C0EBC79A5AA8A7480BE2C850F4DDF5BED70333B716D8B97F943477
          DC19DAC5971FBCCF37D77FE6D90387397BFE65F6A8254B73E6A717D7299FAB0E
          7E125B3A4B19BEAF63A3777EEAF0F69998C5764A6C0DD6DE63408A307B679E3F
          EF2E60B73B5EBD7001802FEA597177964E24B49A716F3AF4776595C87CBB835B
          23440C0F34F863AEBDA9E9D59226563D572F5EEC736CD06427BFCF2C6CCAC7F0
          60B21A8018186C44D579B52491218E0CAD66C44023A69958C408B9537EBBDD66
          D90C70ECC927BA4E262F4D7068089A8D3146B62744063A9963252B58491D79E1
          C95D2054A508A658BF0F3CFAF0284964BA3A5EEB7C29A9825841E2B28E0717AF
          3179A997D1BECE2D922462682821695A0465D01A5AAD98B1D01B1ECE077C50AE
          4D4DAD07D08CED2A11112B185BEBBA41356055D939D2E0D4DC4D4ECCDDA8044A
          68342CC3C30D1A91E90A96C416A3A194731FD0A044B6D4930D37A24EA1342C65
          E0C894830350A7A877844AFD9A89B077BC45A833133046B0022E77A54C0B8811
          8C2DFDA065022104D6EEC05D00A1544C626B51059F7B9C0BBD21443DA2FB7601
          E935BCEF8A8B769B5F4CA92BA69A8EAA659C8D0104252F3CAEF05D87F50E8006
          7AEEAB115DC51753CDFF6AC71529575D5321AC1718B182AA1290F5006AAD5E5A
          4C61FDD1FD9BADF29F6DC183A3DB36022088351485FBCFD7F001D980819AE091
          DDA30FFCBD405495A1D8EC78ED4C6BE641057DEBEB9583AA7ABDAEE02EE03160
          EC01263E075C56D539F9FFE574AB01FC3500689A8D4625576031000000004945
          4E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA7930000047C4944415478DAC5964F
          6C14551CC73FF3677766B76C5BBADD4ADB4DA18D10E4B2600C0A1A0D08892110
          23F897087AC0C61E4C241C8C7FB8288931693C19422207B1251C946313A11725
          4AB4CD0613042B955A8AD2624B97FDBF33F3E63D0F3B6D9752A29C7CC9CB246F
          DE7C3FDFDF7BBFF77B03FF5333804DC03940FD879E0166811BC004F00E500768
          DA3D006D6B5785FE3A77FA006EFE0AD2BB8D12795CB742A124299424C5B2BAEB
          A388AD313AE1F1697F565D1E73D70357CC7B004E0C1E4F214501E517999A9A22
          5B50E48A926CDE275794386E156085AB1E6D4BA7E24826A604565813C02A6042
          5F42BCA9A5C9D866356DC277A6999DFE13D703C75338AEC215E08A85C98E5B1D
          57523139E3333AE17161C439009400B914E0F3FE232D004877165740D951789E
          C2130B62776C98518DA2EC285A9B4D099C00AE01E5C580E5C0EEF58F3D8F57BC
          4A3633892702E120024F2C886B7A553862698C4F0A862F39B4A70EE9FB77C600
          3A017B31E093B3475B9122877466E6C3F7C44204BEBF005052A1E91A2153A3EC
          28A2B6A68686867878DB47045964D4021A8137528FEE967EE526F96C8D7B7721
          82BB3227709FFED521BE6A5725994CD2D7D737FFBE16901EEE4FA2444E97DEED
          3B446B2358DC42A686E32AEAEB7472B95CE4F0CB23A4D3698026409B4BD34EA0
          6BE5BA67F12B9388F20D3CA170BD6AC6CCC196129FCEF80CFD5261DDC6D7B02C
          8BA3FD7D0022387CE61CE0C8F92FDA517E19AF788D6259217CE69748F820FCBB
          D36D5954677CD2A531A693CD66E9EDBECE863D390FF8122803AE1E6CC6DEC696
          87C6A528A1FCF2BF6EEE5C9BCEF85C1C7590B12D249349BEF9EEAA339DF15DE0
          4C50322A26F0FE855349DAD6EEED90EE2DC2B135D4B53928BF8CF21D7C2F8B28
          8D831277884B2FC7C5D13CBF5DF3A029CEDB3BD36C786E5A074E01B9A02EB9A6
          15D6F6AC4CF5F0C1BB07F54259DE5745F47D4578C54B241209BEFFF10CD319DF
          03CE02D78122A0CC7883BEA674F32C5658236FEF168944C2ECEAEAA2BDBD1D29
          252D2D2D442211666666B06D1B4DD3B06D1BCBB2B06D9BC1C14176AD3ECE8E9E
          8C1BB8CF03538007600A1F0A9931567784A833569ADDDDDD813B1F29AB11C5E3
          7152A914A55269DEFDC0C000B1588C919111E2F91B5C1A7355CDDA1782328EB6
          E5115B7DFC569CC698CEF59B3E7FCF0A36BEF8030D0D0D8442A16A8D2997A954
          2A1886515D7F29310C8363C78ED1F3F4B7EC78335DB938EA9C044E033F05295A
          050417CBF93A5BBB75685FB3B5BA7359291655E168D869B4C21A97BDC36CDFBE
          9D482442381CA6BEBE1E80DEDE5E3A3B3BD9DA3540DBE6938E94EC032E015701
          67BE5E05CF35C053C02BC05A200A181FF634879BEA753A5A2D699A9AB24222B2
          FE896EF275AF138D469163077966FF57E2E72BEE09E06B60A8D67D2D200C4480
          18B00268001E04B6028F07E37ECF0BCBAD8E56D3EC58616A514BF71D61545E7D
          6FC2163EFB81CBC0EFB5EE6B01B577B1153C8DE01026803890049E0436030F00
          32C894CF80E1A0DFAE75BF1460A9CB3F147403B081E6001809E654803F8283E5
          2D16D0EEF36F430F6066002488C4594A1CE01F29C14D5341FABFF10000000049
          454E44AE426082}
      end>
    Left = 120
    Top = 680
    Bitmap = {}
  end
  object sAlphaImageList3: TsAlphaImageList
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000097048597300000B1200000B1201D2DD7EFC00000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000003
          7D4944415478DAE497CF6B2B5514C7BF6732992433CD4B93B6D0D052A476115F
          E926502994086E0491202EDE4670E11F20B829BAE94AE85BB8100417C595B812
          5C081111BA29422994F2BA29957621BEB6A9869A3A693299C9BD73CF7561138C
          AFC96BF00D5D78E02CE6FEFCCCF77EEFBD5CD25AE33EC3C03D87396A8772B93C
          ED38CEE7A669BE6E59561A00A4945EA7D3F9C1F7FDB54AA5F2FB28E3D1284B50
          2E9713E974FA493E9F7F656E6E8EA494D05AC3B22C9C9E9EEA6AB5BAEF795EA9
          52A9742251607676F6B161180FC7C6C650AFD7FBEAC6C7C7290882A294F24D00
          DF45E201A5D47B8EE3404A09A5545F0641805C2E174BA7D31F45E281F5F5F519
          21C4241141290522BA0D1044341F0980526A210C4328A5FE36CF2D0000108661
          221200DFF7C7BB7F3F0C8088ACA8146876D77E580821C24800C230AC4B291186
          E150058410322A057E6666A5948A3DC7036E2447F1E6E6A6D05A3F15423CB305
          BB298400331F45761768ADBF69341A03015CD7ED0821BE8E0CA0DD6E7FDA6834
          3AB7A9208480EBBA6D21C48F91016C6D6DFD198BC5BE725D176118F6E5D5D595
          A7947ABCBDBD7D1D1940A9548A2BA51E6AAD21A5EC4B0071008BA552291EC96D
          B8BABAFA6A2C16FB369BCDCE121119463FFBCD7758ABD59E32F3BB3B3B3B7BFF
          09606565C506F01A11BD41446FC5E3F19942A1E0349B4DB45AAD5BB7E1C4C404
          6CDBC6D1D1911442FCC6CCDF337385887EDADDDD6DDF09607979D921A20F007C
          984EA7AD5C2E97999E9E36B4D6A856AB10420C3D88128904262727914C267179
          79897ABDDE69369B01337FC1CC1B7B7B7BDE408062B1F83E116D4C4D4D65E6E7
          E7539D4E07AD560B9EE7F54EC0E74A7A036618066CDB86E338B06D1B6767675C
          ABD59ACCBCB6BFBFFFE533004B4B4B6B8944E2E3C5C5C59CE77968341A18E68F
          410A0C0AC77190CD66717C7C1CF8BEBF717070F0490FA05028CC9BA6F9646161
          21737D7D8DBB18735480AE2AA9540AE7E7E76D29E5D2E1E1E12F260030F3A354
          2AF5E0E2E202C9647224A947096646BD5E8765590929E5DB003EEB02BCE3FB3E
          99A689783C1E190011410881200862CCFCA80720A57CD9B66D30F3C02DF6A282
          996118067CDF9FE95DC761188E6732991732F15DC6D05AC375DD29003089682E
          9FCFEF9F9C9C14B4D67D06D45AF706EC961351AF9C991FDC98EBFA9FEDBB6DFE
          0DD4ADBBE9B30B0004A008E0A57B7895FD0AE00FFADF3F4EEF1DE0AF0100103A
          1EAD462FA4FB0000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000080000000800806000000C33E61
          CB0000000970485973000016250000162501495224F00000001974455874536F
          6674776172650041646F626520496D616765526561647971C9653C000004C149
          44415478DAEC9D5D4E534114C7070A462558C417124D6CA29147DC41D901ECA0
          EE4076804B7007B2036405E00AAA3E1A9356E383F10B44C10FA075269E86E9E4
          B61DCAED6D67E6F74B4E626FDB5B66CEFF9E3367E6CE55290000000000000000
          000000008896A931FD6E59DB86F57A4BDB3BDC910E9BDADA9655E9927458719C
          8F00C6C874C1BF57D3B647B7A7C75D6DDB19573E1120D1907F5901AC696B789C
          37166B489B83A4EA34A62E36AC00D61272BC6BB98BA0E831C0136DABDA0E2E71
          8EA70947D3DCDB3E53C01F7D208ECFABD6AF242C804A88027825069481800000
          01000200043034CD84FDD54400DDCBC8A9B1810094DAD1B69E5824684A9B7762
          69D0AE62318831008C9F9931FDEE96EABE2FA0892B0000000000000000000046
          45D1BB83CD0E21B3AAB520AFCD1DC37B8A9B46A3C738DE5D01B4CDBC57A69BE2
          75FEBE1ABCEBA58E08E2E4598F2BBE9E71FC19DD151FAE9357ACF76ACE7BFB74
          575CB81B43B7333EE346021FD81D1C086511C1A658350701B03B38B201A2ABF4
          4134121640236F074C8F393A3C778E6D797CAF92704A8DA6EDE58CD0BFEF5906
          B613B7289D7F91FC860022747EED1265250248C8F9082071E7238040D9CEC9F9
          94813953C4CEA0C7EAFF12B05BEE357B4C0CBD1870BE8D8CF2311582DC19BD3F
          8210C7547020D452AC734362D43381AB74F16433EA31C09E62E72F0000000000
          00000000C098297A77B0D915B4AACE7707BF54FFA78BBFE38AB8E9B73BD82C17
          D7E8A27831B783F9ACDD238248D9CCB8E2773344E1BB2F0002A3E138D9DE1DEC
          A68535BAAB588AD81AD654E7F7046CA9EEC7C1EC399F7DE8794E6E090B783068
          E33E3CA2EAE97C7607074E35636C501F22A5705B780483C24EC3563CBFCFC690
          C0C6002E958C636642E84041E14C8DE137CDC87F41CC168311C0AA1AFCCCC036
          3E8B778E609714506C0A980435359C4860FEFD8E08508CCF8A1C03947BCCF435
          3DC60810E84450D52ADB4C8E7F94F199852126965225B8B6AF64947B65472017
          CD714C0405463D43049B2AFB11B2BE8F8A652A38E028C0C3A213C484FA7ECF09
          E071F1094C2A1807AFABEEFF30A2734BD80EAE000088390594B4DD142BC9B163
          6D878A85A0E80530AFEDBEE578971FDADE6A3BC325C5522AE037AE695B16B1F5
          AA02AE68BB61550A10510458161174F8ABED9B387DD1F9AC39FEDEE39C462C77
          E41C2960FAEC83A4CBA0047055DB03A7216FB4B5E4F59CB67BCE775E7B38BF92
          E805DBCC5B04A37E4A984931BFAD2BF5B3E57CC391981D21E6E4582F969C73A4
          C452680238922BDED06BE5F1D47168BF31C0B4FCCDA90A6066E24FD887569F28
          61BF7732E47960C20590C5A208A053FEFD1A208016A562F802B82DA1DCD8AC15
          F28D633F797C9F32317001984A60DE09E766ACF055C603C3A61208440027194E
          9CB940498A000217C081E4FAAB52D37746F7B7B47DF48C20A544FD95FBF8A7E8
          8E2C490E370DF923AF672D11FCF168A48920D71315806F9A9CA808704B1C5D92
          5C7FE838D376F8AC88A01F6662E98B448F524257FEA1B43DB8143025D692B07F
          6CA978F6827300B6087E2B082605D8E59E1181991A9EB352425B84F01397C427
          805375BE16D0B6F2BD52DD4BC23FF3CE6F303911A03372CFBA27A0256383BFB8
          A378A6C62038BBE63F93AB9ED93D00000000000000000000000080BCF927C000
          B3DF38ECBD3C93120000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000017AB694343504943432050726F66696C6500007801ED5A6754144DB3EE
          CD0BBBE49C979C7306C939233949CE59328820928392541045928082820449E2
          4B1410111144501401458288224105843BE8EBF7DE7BBEF3FDBAF7DFB5CF9999
          67AAAAAB7AA666BB6BBB0A00FE4297E0607F38002020302CC44C479D60636B47
          C0BC0044800E90005A4070710B0D563335358444FE43DB790E6047AC09E1235D
          E4753CD68A921E35C5541D492A121114FFA1D36F324508641000982944A0F6FA
          85DD8FB0EB2F1C758423C382C32099AC23ECE6ED02F161A510160AB130D380F0
          080058BCD74F4C347D845D7F628A7747D8C525C40B0086CF903CC1C5C50BC28C
          E4BFB0EB11163BC2116E5E907E46680C68CA40779F408804D9402BBB7B84BA01
          C0731D9271770F750B0080170B005C3D202008E2F31FBD133EB7E010A82F3F74
          00AEA377075DA1E609DD2BB4403ABEFE43F3C2007003D2CD64FF0F8D1F7A76E6
          5700DC79F90F6DD3ECE7FB84D13E09F59494F8A90E86570700357B78B8C90300
          260F801FB987877BE587873F2A004040FDBBFDDDC243227ECA02E4D105058801
          19A0060C801570023E200C24802C5004AA400BE8031360016C81237003DE2000
          848048100B12400AC80439E022280225E03AB809EA402368059DA0070C804760
          0C4C8297600E2C8255F0196C833D180C8681E16194307A182B8C1B26081387C9
          C194615A30039819CC16E60CF38405C0C261B1B04458062C0F76195606BB01BB
          036B8375C3866063B069D81C6C05B601DB85C3E13838359C19CE0D1781CBC255
          E1FA7073B803DC131E0C8F8627C2CFC10BE065F05AF85D78177C18FE0CFE06BE
          0ADF821F2288113408024210218B504718216C111E8860442C220D7101518AB8
          8568473C408C2366111F10DF904824059215298494476A232D902EC820642C32
          035988AC4236237B914F916F90EBC87D140EC588E243C9A2745056280F54182A
          09958FAA4035A1FA5013A8B7A84D34024D8DE6424BA3B5D056682F74143A1D5D
          84AE45DF478FA2E7D05F30080C0D8617238F31C43862823189984B981B987B98
          51CC3C660B8BC5326145B1EA582BAC2F360E9B87ADC2766047B16FB15F89F044
          EC4432440644CE44E1441944A54477891E11CD11ED10E3893988E5894D883D88
          6389F3886F1277134F11AFE35038169C14CE00E7863B85CBC7D5E2FA7033B84D
          3C1ECF8557C25BE103F1A9F8327C077E02FF91044D42205120B1200924492329
          27E9249922D920C593F292AA939E208D22CD27AD271D267D4F062763255320B3
          220B213B4F564B3644F68E1C46CE4AAE486E431E419E4FDE403E4ABE46414CC1
          47A14DE14E91485146D14DF186E2809285F218A53D650C6511653BE50BCAEF54
          0C54F254B65431544554F7A866A8F6A959A895A99DA813A8CBA9FBA917693034
          FC340634013439348D3493345F69196995689D691369AB698769D7E928E9A4E9
          6CE94ED395D30DD0ADD293D14BD1DBD29FA6AFA01FA2FFC840C520C7E0C890C4
          50C330C6B0C3C8C2A8C1E8CB98C3D8CA38CB84661266B2608A65AA607AC4B4C9
          CCC4ACC1ECCF7C81F93EF37B165216591667960C962696D7AC685631563BD624
          D63AD66936049B309B0D5B225B1DDB0B02922046B027A4129A08B3ECC4ECB2EC
          6EECD9EC9DEC2B1C341CEA1CC11CC51CC31CDF38B939CD391338EB395F73E1B9
          14B87CB80AB806B8B6B9B9B82DB813B99BB817782879D47942782A78267811BC
          52BC1EBC97780779BFF109F0D9F39DE3FB8BEF333F07BF257F2A7F3BFF9A009B
          809940B2409BC00741564133C114C10EC175210E212BA10CA12EA12D617E6147
          E17CE121E11F2292223E22D7449E89E244D5442345EB44DF8931899989A58BF5
          887D131713F7122F119F922093D0953823D126B1212920E926795572528A4C4A
          57EAAC54A7D48EB498B4AF74A5F41B1946194B991C9947B2685975D938D976D9
          6D3971B900B91AB9F7F29CF2CEF2C5F22F15E8142C14F2149E2892281A28A62B
          0E1E431FD33C9678AC5709A6A4AA14AFD4A574A0ACAC1CA7FC97F2818A8A4ABC
          4AB72A5055533DABDAAF8652D3514B531B56C7AB1BABE7AA4F68D06AD8685CD1
          98D564D7F4D0BCA1B9A625A615A6D5A6B5AFADAA9DAC3DAC43AA63AE73596756
          9753D747B75E775B4F512F416F509F54DF52FF8AFE828180C14983364360A86B
          9863386D4430F2366A30DA355637CE329E346135F1326930D933D532CD367D71
          9CEB78E0F17633A499895991D9A2B9B879ACF99005B585B3C56D8BEF96DA9679
          966FAC84AC62AC06ADA9AD5DADEF581FD818DA14D9ACD8CAD9A6D84EDA71D985
          D9F5D953D9BBD9373A201CCC1D2A1CB64E689EB878E2BDA3AC63BAE34B2721A7
          38A731670EE730E7411706177F972E574A570FD77637BC9BB35BB33BD6DDC1BD
          C103E561E751EF89F4B4F5ACF7427AD979DDF1467B3B7837FA10F938F9B4F892
          F8BAFB76FA51F9F9F9F5F933F987FA3F0AE00C880D980C14094C0D9C0B5208CA
          0FFA18AC135C16BC77D2EAE49D105C8867484F28736854E84498685866D852B8
          467869F87E846D444B24556470E4689460547AD452B45674450C3CC639A6EB14
          EBA9D3A75EC51E8BBD12BB77DAFEF4BD38A6B8D8B857F14AF1D7E20FCF389FE9
          4DE04C484E583AAB77B6369134313871224926E972D27EB273725F0A6F4A66CA
          A7548BD4B63496B484B4F7E986E90D19B419B1190B99BA997559D459A7B216CE
          E99EAB3F4F773EEEFC62B651F6DD1C969CE49CF55CABDCAE3CBEBCDCBCDD7CF7
          FCC717642F945DC45D0CBF387749FFD2DD02424166C1D742D7C2D1CB0A97AB8A
          288BE28A3E5CB1BED27F55FC6A4931BE38BA78E99AE5B5BE12F192D252B2D2D3
          A56B65F6658FCA15CA6B2A182B322A76AFFB5E9FA934ACECAC12A92AA926AF3E
          5BBD75C3E3C6F44DFD9B9D35A235E5B534B569B57BB7826EBDBD6D75FB519D4A
          5D533D5F7DF11D8A3BA977F61B4E362C359E689C68D26BEA6A9669BE7D97EBEE
          9516CA96F456586B74EB469B4FDB7CBB5DFB78874147FF3DE57BAD9D629D35F7
          B9EE5FFB8BE1AFFC2ED2AEF46E64777CF76E4F44CF466F40EF4A9F67DF42BF53
          FFAB07B60F9E0F980F3C1D341E1C19D21F7AF850E7E1C0B0D670FF238D47BD23
          EA233D8FD51EF78CAA8FF63ED178D237A63936F054E7E9D0B8FEF8C884F1C4D8
          33F367CF276D26679E3B3E5F98F2985A990E98DE7811FE62F765FC0C6226ED15
          E9ABFCD70CAFAFCD72CDD6BC117FD33AA73CF760DE707E62C16E61E1ADEFDB2F
          EF6216E18B99EFA9DE5F5DE25EAA5F965BEE5D315C79BEEABCBAFA21FCC3E15A
          C647DA8F65EB42EB6D9F343F8D7D76F8BCB211FE05FE257B9379B3664B76EBC1
          B6F9F6FC4ED0CEC1D7AC6F4CDF6ABECB7F7FB86BBBBBBC17B58FDDBFFC83FF47
          C781C1C1ABC3C03FB1C09F58E04F2CF02716F8130BFC8905FEC4027F62813FFB
          027FF605FEEC0BFCD917F8B32FF0675FE0CFBEC0FFDF7D81609710979FB10002
          3AC33D3D01F8520D00892D00546300E010FF5BFEAF3CCAAF680320A0A4109458
          8232037D7043F80B84271283CC4109A1C6D061180266081B42C44134499C8E53
          C2ADE36B497C487948E7C94AC85D28782816296BA84E52CB52EFD2F4D266D259
          D173D26F30FCC598C964CBCCC3FC8DE5216B315B18C1809DC0BECDF184F30657
          32B73B8F262F171F8A6F85FFB1409360A950B6708C889FA8AB988DB89984AEA4
          91948DB4934CA06C82DC25F94685A78A5F95D8958D54CEAA76A8ED6AC86A4669
          F5EB50EABAE8D5E9EF1B9A1A951B6F9AEA1D2F36DBB050B74CB39AB061B5F5B6
          6BB0FF7A42D531D369D485DCF5B85B9EFB334F2A2F13EF349F1EDF1FFE9201BE
          816541AF4ED286E8859E0A6B0C5F8DE488B28FCE891988859F568D8B8E2F3B73
          37A1FFEC74E26AD26E0A492A679A62BA798677E6E9ACCBE75ACF4F647FCC45E7
          71E62B5FB0BA187429BDA0B2B0F3F278D1FB2B07C534D7784BE44AF5CAECCA3D
          2B82AE2755965435578FDE58BA79584B774BECB6619D5B7DCC9DDC869AC6BEA6
          97CDEB2DA856B636E976C30EAF7BC99DA5F7EFFEF5B4EB730F49AF509F6EBFF7
          837303F5830F863A1F560F5F7A943812F8D87ED4E089E298E053FA71A2F18389
          CFCFE6269F3CEF9F6A982E7971FE65DC8CDF2BABD76AB3426FE8DE1CCC2DCE0F
          2FD4BFCD7E7772D1EEBDE692D032DDF2E1CAD2EA930F1D6BA51F53D6FD3F997F
          96DF60D938FCB2B839B455B39DBD13F1D5FE9BD277C22E66777DEFD97EDB8FB2
          83B4C3E3878790FF1960097016F825040FA20629877C80B2416DA153319C982E
          AC33119AE83AB13EF10EEE2A5E1BFF85E41AA911E901591DB9130505453F6534
          9538D53275398D232D33ED345D01BD2D032BC30A6303D36966531676963DD6E7
          6C8D840C76070E518E03CEE75C0DDCE7787C790DF9F8F871FC1B02AF0507849A
          842B450A45B3C4CE8AC748444B464B9D924E96C991BD225725DFA130AEF85109
          A7CCA362AC1AA556A63EAE89D492D50ED6B9ADBBAACF6D1068D86A7460A2639A
          72FCB139B585AD6589D59C0D9FED49BB66FB9D130A8E314EDD2E08574DB744F7
          3E4FAC972EF41D3CF2A3F4B70DB812F83298FDA44FC89DD0BD70B588B4C8E968
          FE98B053D5B17F9D7E1C371FBF99003F4B932898A49E6C97129C9A9C569ADE95
          F13273EB1CC979816CCD1C87DCF0BC9CFCDA0B3D17A72FAD15222F3316095D51
          BA6A5CEC78CDAF24AC34BDACB2FC5EC5D4F52F55F86A9E1BEA375D6A626B2FDD
          6ABCFDA46EFD0E71034FA366934773D2DDEB2D0F5B37DA693BE4EFB97466DE6F
          F9EB6D37498F626F505F697FFF8307032D83B7874A1FE60DA73D8A1F897E1C3C
          EAF9C479ECC453DB71B30983675A93CACFA5A784A7B95F30BFA49881CFECBC5A
          7D3D3D3BF8A669AE643E6521F8ADEF3BFF45FFF7FE4BFECB7E2BBEAB7E1FBCD6
          5C3F9E58B7F964F6597743E98BE426DF16E336E90E72E7EBD7C56F93DF0776DB
          F76EEE17FC483F883934FC97FF19E0890812442A9216598192478DA0DD31484C
          295613BB4A94462C443C854BC00BE35F9024918A93CE9265911F235FA228A434
          A0DCA3BA496D4D83A069A6F5A0A3A6EBA60F60606618600C6562671A618E62E1
          6479CA1ACBC6CB364938C3CECF3ECD91CA29C7F991AB92DB998785E7056F119F
          133F2FFFBA40BB60AA90359467D9151913AD114B1277925094A497DC941A976E
          94C9950D9233911756C02B7C521C3956AD94A2ECA1A2AA4AA7FA516D5CBD53E3
          BA66B656ACB6A78E85AEB29EB03EAB01DEE0BBE1B2D1B4F1B049A7E9EDE3D7CC
          72CDD32C622D4F5AF95A7BDAB8DB3AD859DA5B38589CB074B471B271B6757173
          F5770B760FF270F6B4F032F2D6F091F115F513F0E70DE00A2404B104134E7285
          F0850A8609874B46C8462A4429476BC5189C328D353B6D116717EF74E64482E3
          59874487249B64D3149B54DFB4A8F4CC8CABD0BE7DE7B9C7E7E7B33FE71CE491
          E4B35C10BEA87849A7C0AAD0F37258D1D92B17AFD616DFBFF6A864B674BB1C57
          C1795DAEF278555075E68D6B37CB6A8A6BAFDD2ABE5D5877B9FECA9D92868AC6
          F2A61BCD4D773B5B7A5B87DA26DA5F76CCDF5BEDDCBAFFA30BD58DEBA1EA65E9
          E3ECE77D20342036283E24FBD077786084E571D068FF18F3D3C8F127CF64268B
          A6B0D3892F5133D9AF796787E64E2F68BEE37A8F5B46AF72AF19AFE77EFEB4E9
          B3BDF1AD7ACFF180FBC8FFBFF2E9476B025A0680C270006CE60130AB0420FB07
          943EF78572F39701302501C0421EC07AB301AC3619C0D4B37FAF1F472B15C002
          0A288F2D0C54A0BCB53F94A7AE00FD6011460C938039C0D2A08CF20A34C358C2
          CFC3871158842E2213F114C988744736200F5126500EF73BDA145D037D712E98
          6E2C3B3611BB4C6444D440CC489C44BC86B3C6F5E225F0C52418927092055213
          D2FB64826485E418F250F2790A538AFB948294855428AA70AA456A73EA1E1A31
          9A525A4ADA64DAEF74FE747350AEF209830E4337E331C6162619A60E6665E65E
          165D9631561BD645B610B64342163B2B7B13871EC73CE7292E6A688632E5FEC2
          53C0ABCCFB962F8B5F9EFFBDC045414DC14DA12A6147117AE8EB4C17D31207E2
          F725E225D5A51052BDD06C6528CB2A07975B979F52E8556C3A56A97441395925
          52D557CD4DFD8486B9A6AE96BAB68A8EAAAEAA9EAABE8E81A9A19D918771B049
          A269C1F106B387E6F396302B5E6B239B48DB72BB29073268E67273BAE0DCEBB2
          E9C6EBEEE851E0F9D81BEDA3E39BEEF738803CD02AA834F853885A6866D89B08
          A9C8F4A85731C2A7526397E334E38BCFEC9DB54A6C4F664B894B7D99AE927137
          CBE13C73F664EEE57CD78B9C97560BEB8AE2AE1A5DA32A992F6BA9C8AD74AFD6
          BD29524B7D6B0F9A99961ADF35CFB62CB76DDFC3DFE7EC32EE09EA8B7F503AD8
          F1707604332A3666339EF36C680AFD426326F3F5AB399E85D877934B022BA73F
          BC5DD7FF7C7313B71DFAF5DDAEF67EE7D1F703350454CB4003B8800C30041E50
          9D4219E8032B50DD8132545F50029B8493C075E129F0010411C204518098470A
          22639083287A9437AA034D8AF6410F62F831E9980F58536C33112B512AD106B1
          1DF1104E1A578EA7C427E27748BC485E429EEF219326AB21E7242FA220A74885
          F2DC11945FA87CA8E6A9EDA99FD318D30CD36AD3F6D029D1B5D1CBD2B7324832
          D4318A33D6338933B5415EEF633160996475625D678B2510110AD905D8BB392C
          39D63853B858B9DAB9ADB87720AF2BF2CEF09D8166A42702518204C121A15061
          76E1672249A29250A6B7405C57FC87448B64A01497D4B4748E8C912CADEC8EDC
          82FC238516C5EA63454AE9CA312AFEAA4E6AD6EAC735743595A0B54A4A474A57
          464F5A5FC9401B8A5AEC8C3D4DA24DB38E579975994F597CB562B156B709B02D
          B41B71409D1073B4764A756E765970A376D7F588F36CF07AEFC3E9EBE257E23F
          1BC81CE4145C79723D54222C3ABC3F9234CA2AFA6ACC62ACCCE994B8F1336C09
          FE67DB9348925D52EA5277D38D321AB3F4CEFDC8BE91EB98CF7061E45262A1EC
          E5ED2B2DC581257CA5CBE577AE4756A9DEA0BAB954DB79FB627D44836B93C15D
          9956F176917B52F795BA6C7ADCFBD41E880F323EC40FFF18F936BA3EB632BEF5
          6C7F0AF7827146EAB5F59B53F3E56F27DE2397A556FDD69AD7BF6E286D266C8F
          7FE3DF0DD97FF62FFFE3A06A241E200FD5AD788324500906C147182D4C03160A
          AB82CDC2E9A0DF7E017C168A30C2100348666424721225872A4513A34FA13F62
          BC310B5867EC2CD109A2596257E2459C0FEE333E127F48924E4A4B5A4E264AD6
          457E9C7C91E2342535651D9511D547EA5C1A599A57B45974C7E8D6E8AF33B832
          72314E329D67D66581B174B3C6B1A943F50383EC391CF69C7C9CDB5C7DDC9778
          FC7835F868F936F84704AA0513841C849545384411A28B620FC56F4B14482648
          794A1BCB1C931597939557525055D43B66ADE4A2ECA712A19AA87651BD5AA349
          B3576B52FB832E528F5E5FDAC0C230D428CFB8D964E638DA4CCADCC922DBF2A1
          35CC46CD36DE6ED081E684A1639C539BF3BA2BBF9BBB7B95C7B2178FB7BF4F87
          1FD2DF22A02C702BD8E06455C861986D787B24435464F4F829A9D8923874BCF7
          99B1B3528925C9A42911A933E93A193D5956E7BE66E7E64AE6BDBE107F89A3E0
          C165BF2B4C577BAEB995E2CADA2B7C2BA9AB866E9CA991A95DBB5D59EFDEC0DF
          B8DE7CBB25BACDA083F5DE97FBA35DAD3DD1BDCBFDC60F3A07C5866A86591FE5
          3F468F463FD9842289D1677293255360DAF6C59D19E42B4B28FF393BC735EFB0
          70EEEDBD77D38BDB4BD4CB822BAAABC61FCCD64C3E1AADEB7F52F92CB141F842
          FCE5D3E6D3ADBAEDAC1D9FAFEADFC8BFCD7EBFB51BB3A7B74FB7FFFA47F141DF
          91FF7FD560FD9C07883582FC834208861A9A3F6FFFEF4E01FEE1509DD7CF4609
          9DF181FEC647B55DB4D0B1ECEEA269005D99A1E320D8FF671D1C240363F408B4
          348768475828D0D5D8E46FACEC19A26D0661A82FCC34384CFD08D343D83338CC
          D4E26F7A5C8CB7863184F110FD8247A8D66F3DA5BE2EFA500D1A2085E88D21E1
          669610E68270776884B91684C921FC2EC6DBC2FA6F992D770FCDBFE970B8A78F
          B6DE2F1938A54F98DE912D6A68E9E4F00B32381A03640B2E030CA0D5D3038443
          155F1E20105A4F0D8106D0FCFB2C0C3C810BC4898078A1C00FBC877000D42308
          EA130461C2DF721AFF46D1FED9CF0BEAF73F3512A0FAB220C8DA6F9BBFAC1120
          9BBF75FA007708FFA6BB40368E7847A30B75F239FB8FCDDF1247FA7E8E46AC56
          6C456CFFF798903C4809A434521DA9845446CA03021467320261A414F47F430D
          A982548478F2401BBC83347BFD1EE391FE8046CF88C2A068052B6F887BF4ECAE
          BFB9C0EAA7B4CFBFEEFF6D04C06774AD75EDF708A0FAC99F3581D09B0668C84F
          579D8F50D7B753678EAEFFBD85794441B581006804054787F878798711D4A0AA
          490F21825EA09B881041424C4C1EFC17FD81E666DE155322000005A349444154
          5809ED55696C5455143E6F99BD74DA4EA554E8C2B4146A5B4A4240B61F2C8625
          55D4683541FCA512D14094A0281A831893AAF18702252A844015224888844648
          C440400D242C6529B6652B4C5BA41DA494D2769677FDCE9D796F4A03B611F8C7
          49CEBCFBEE39F73BDFF9EEBD6F881EDA0015F02FF07B07987AFFD3A6554C2BA5
          CD24CAD6CF5D79FFD1FB412CFB72E624FA8D04D5C20F83C40FB32AFB5972FFC2
          CFAF9A3D950EA2F04578333C00AF21F1F4B6E95BEEA5CAF4F7272EED77FDCB6B
          CB66651F22311C45FD5749E4B6C63C1F63DF19122FEC7CBCBA5F903B2494FD54
          7C706A55EE5133A49883DECFD7BE2D9B7B695CF5CFEEA198751229A27714E328
          51673BD190BAD17F6E9C7D62529FE81D5FC72E186B2B2CBF71B425BBA1F8D1C6
          A24355334F4FE044BD6FF6920D73CB83E3766E2D1846A4D9FB46E3EF36228158
          97FDC4C4457B8B8E5F3940E3B7AD381DBA4B3695573CE14D9F5C5B23F29B7346
          619DDEA459A9B71158BEF1B9F9E109DBAB46A0B80D454C13AC8081A2D04B51E1
          F180E123EA2E395D9AE42838594E53C76E5BB1EFA6B9C67CBEFAD99C6169D3F6
          D778F26FA5393C100F343B7580C4CD22F0E1FA675E714FDEBECE970586BD8BA3
          70770751F0CAC7171D8E1D99A999C71DAC8C62B24843BCB8BEC063BBD5909C3C
          AB68FD923DD74CF0B7D694153E32B9FA484A1EB91CEED89A10F01435A1804525
          B9F0C0E77E144F07780AC0D9BD703B7A0A9CF9A6E16CE7C2DC536DBB3BDACFCE
          E8F0A00B8EC93C6065E013955B12185232FD48C3BB5FCF817E441FAC7B72BC7F
          4675EDF091E4CA48224A45258989A74751AD53651148F178C3C9E81CB9D24198
          C475A29A53DBEB1BEDCF8E3054838446E947BA361B4DF52F5EB3F700289E3B08
          CF7417488C6C4B1B35F3F05F9B0E2C7C336FC6AE43FE3CA2341C628E332EE7EB
          5D442D9179833194666D8153D1C885AE587D1C72BA01217F3DB3F75CD0535AA0
          615E98B269C2FB47684D37D5FAAE9616560E76F22D8961910763EF88A02792BB
          76B58D0F9B19409C5B6EEF70D32F75FB7A3AF4F45AA2B7E52A8B804338C15295
          60D75A0DFAB1EED8F97F3C5979BAAA5204C5CD3D17388D428F3AF78657EA9193
          BE9629459F64BADC76AC64DA30D6D42147D68F81D8D5E068FABE7E4B67879AC2
          3B601D568B8013AB6CE14C6A6B7552E5B95D8D1D6E9F5F45D510717115374089
          7D0F98890AD723FA9EC8E28CF0C9D4CB738A3FCAB27B5251DBDADA5EC50D0AFC
          9D4FAB1B36748634DC03030D08BE4F31B3085048A32B81A15471694B53B72B29
          278AC2846D31006B0815BF4C00FDCB31378AB81A517718F3B33A6B7C8DF34A96
          E73806991AC6C0B9F3BA4011555CF8EA5658D77104846C425EEBBE04CE3767D8
          37DE5CD5D663B70F0DA3E3080A46502C8A8E05AE4E6C1763FBADA2010D1474FC
          6A4A84B62AB373DA8FA55C5E3466595652B247928D88309DB83086DE69FEB44B
          D335774C41815894D4A80494142C05BE737FD112D4B4C77A50F8BA54082A719E
          A40B69597A367E67A5A5DA3C0775942855E913B2DA8FADB9B462F4B26C9747A7
          DF2F4CA1975ADF0B39557285E26BF97878B1CE8D6D30CD2250ABDA340BD40030
          635B7F02FC222BC6D7C5C74C142A1978BD09B69BF592ECA69ACAC0538EDD994B
          23AF0BD284BD9B8BCB8678FBF0410376B0179445402273A22937273101AE7D5B
          719989294E804B123122BC78BF2D77D8FEE81B108681D03337631AEF254F3393
          B825084430233B66503803A0BB840AE692F893314C854C3CD929C719235E981F
          72DB30C78559FEF88DE5CC040161681445848B9A4A284CB75707BCC2322E62BD
          C4077DE6E4DEF31C3B3704670222C12041C0A06499A0420AFE54F3DF9EB4BB11
          E020F2066A063707E727F715B75E04A08F29174B25D9FF57711362004FF3BC70
          71A97F824182801036A9803C789CC0C5E1F7CA418A841F4982E507AC50ACBAD6
          00076431B471E30CC825487B30A6E05A28CAB90703FE10F5A102FF43817F011F
          9313707087A48A0000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000017AB694343504943432050726F66696C6500007801ED5A6754144DB3EE
          CD0BBBE49C979C7306C939233949CE59328820928392541045928082820449E2
          4B1410111144501401458288224105843BE8EBF7DE7BBEF3FDBAF7DFB5CF9999
          67AAAAAB7AA666BB6BBB0A00FE4297E0607F38002020302CC44C479D60636B47
          C0BC0044800E90005A4070710B0D563335358444FE43DB790E6047AC09E1235D
          E4753CD68A921E35C5541D492A121114FFA1D36F324508641000982944A0F6FA
          85DD8FB0EB2F1C758423C382C32099AC23ECE6ED02F161A510160AB130D380F0
          080058BCD74F4C347D845D7F628A7747D8C525C40B0086CF903CC1C5C50BC28C
          E4BFB0EB11163BC2116E5E907E46680C68CA40779F408804D9402BBB7B84BA01
          C0731D9271770F750B0080170B005C3D202008E2F31FBD133EB7E010A82F3F74
          00AEA377075DA1E609DD2BB4403ABEFE43F3C2007003D2CD64FF0F8D1F7A76E6
          5700DC79F90F6DD3ECE7FB84D13E09F59494F8A90E86570700357B78B8C90300
          260F801FB987877BE587873F2A004040FDBBFDDDC243227ECA02E4D105058801
          19A0060C801570023E200C24802C5004AA400BE8031360016C81237003DE2000
          848048100B12400AC80439E022280225E03AB809EA402368059DA0070C804760
          0C4C8297600E2C8255F0196C833D180C8681E16194307A182B8C1B26081387C9
          C194615A30039819CC16E60CF38405C0C261B1B04458062C0F76195606BB01BB
          036B8375C3866063B069D81C6C05B601DB85C3E13838359C19CE0D1781CBC255
          E1FA7073B803DC131E0C8F8627C2CFC10BE065F05AF85D78177C18FE0CFE06BE
          0ADF821F2288113408024210218B504718216C111E8860442C220D7101518AB8
          8568473C408C2366111F10DF904824059215298494476A232D902EC820642C32
          035988AC4236237B914F916F90EBC87D140EC588E243C9A2745056280F54182A
          09958FAA4035A1FA5013A8B7A84D34024D8DE6424BA3B5D056682F74143A1D5D
          84AE45DF478FA2E7D05F30080C0D8617238F31C43862823189984B981B987B98
          51CC3C660B8BC5326145B1EA582BAC2F360E9B87ADC2766047B16FB15F89F044
          EC4432440644CE44E1441944A54477891E11CD11ED10E3893988E5894D883D88
          6389F3886F1277134F11AFE35038169C14CE00E7863B85CBC7D5E2FA7033B84D
          3C1ECF8557C25BE103F1A9F8327C077E02FF91044D42205120B1200924492329
          27E9249922D920C593F292AA939E208D22CD27AD271D267D4F062763255320B3
          220B213B4F564B3644F68E1C46CE4AAE486E431E419E4FDE403E4ABE46414CC1
          47A14DE14E91485146D14DF186E2809285F218A53D650C6511653BE50BCAEF54
          0C54F254B65431544554F7A866A8F6A959A895A99DA813A8CBA9FBA917693034
          FC340634013439348D3493345F69196995689D691369AB698769D7E928E9A4E9
          6CE94ED395D30DD0ADD293D14BD1DBD29FA6AFA01FA2FFC840C520C7E0C890C4
          50C330C6B0C3C8C2A8C1E8CB98C3D8CA38CB84661266B2608A65AA607AC4B4C9
          CCC4ACC1ECCF7C81F93EF37B165216591667960C962696D7AC685631563BD624
          D63AD66936049B309B0D5B225B1DDB0B02922046B027A4129A08B3ECC4ECB2EC
          6EECD9EC9DEC2B1C341CEA1CC11CC51CC31CDF38B939CD391338EB395F73E1B9
          14B87CB80AB806B8B6B9B9B82DB813B99BB817782879D47942782A78267811BC
          52BC1EBC97780779BFF109F0D9F39DE3FB8BEF333F07BF257F2A7F3BFF9A009B
          809940B2409BC00741564133C114C10EC175210E212BA10CA12EA12D617E6147
          E17CE121E11F2292223E22D7449E89E244D5442345EB44DF8931899989A58BF5
          887D131713F7122F119F922093D0953823D126B1212920E926795572528A4C4A
          57EAAC54A7D48EB498B4AF74A5F41B1946194B991C9947B2685975D938D976D9
          6D3971B900B91AB9F7F29CF2CEF2C5F22F15E8142C14F2149E2892281A28A62B
          0E1E431FD33C9678AC5709A6A4AA14AFD4A574A0ACAC1CA7FC97F2818A8A4ABC
          4AB72A5055533DABDAAF8652D3514B531B56C7AB1BABE7AA4F68D06AD8685CD1
          98D564D7F4D0BCA1B9A625A615A6D5A6B5AFADAA9DAC3DAC43AA63AE73596756
          9753D747B75E775B4F512F416F509F54DF52FF8AFE828180C14983364360A86B
          9863386D4430F2366A30DA355637CE329E346135F1326930D933D532CD367D71
          9CEB78E0F17633A499895991D9A2B9B879ACF99005B585B3C56D8BEF96DA9679
          966FAC84AC62AC06ADA9AD5DADEF581FD818DA14D9ACD8CAD9A6D84EDA71D985
          D9F5D953D9BBD9373A201CCC1D2A1CB64E689EB878E2BDA3AC63BAE34B2721A7
          38A731670EE730E7411706177F972E574A570FD77637BC9BB35BB33BD6DDC1BD
          C103E561E751EF89F4B4F5ACF7427AD979DDF1467B3B7837FA10F938F9B4F892
          F8BAFB76FA51F9F9F9F5F933F987FA3F0AE00C880D980C14094C0D9C0B5208CA
          0FFA18AC135C16BC77D2EAE49D105C8867484F28736854E84498685866D852B8
          467869F87E846D444B24556470E4689460547AD452B45674450C3CC639A6EB14
          EBA9D3A75EC51E8BBD12BB77DAFEF4BD38A6B8D8B857F14AF1D7E20FCF389FE9
          4DE04C484E583AAB77B6369134313871224926E972D27EB273725F0A6F4A66CA
          A7548BD4B63496B484B4F7E986E90D19B419B1190B99BA997559D459A7B216CE
          E99EAB3F4F773EEEFC62B651F6DD1C969CE49CF55CABDCAE3CBEBCDCBCDD7CF7
          FCC717642F945DC45D0CBF387749FFD2DD02424166C1D742D7C2D1CB0A97AB8A
          288BE28A3E5CB1BED27F55FC6A4931BE38BA78E99AE5B5BE12F192D252B2D2D3
          A56B65F6658FCA15CA6B2A182B322A76AFFB5E9FA934ACECAC12A92AA926AF3E
          5BBD75C3E3C6F44DFD9B9D35A235E5B534B569B57BB7826EBDBD6D75FB519D4A
          5D533D5F7DF11D8A3BA977F61B4E362C359E689C68D26BEA6A9669BE7D97EBEE
          9516CA96F456586B74EB469B4FDB7CBB5DFB78874147FF3DE57BAD9D629D35F7
          B9EE5FFB8BE1AFFC2ED2AEF46E64777CF76E4F44CF466F40EF4A9F67DF42BF53
          FFAB07B60F9E0F980F3C1D341E1C19D21F7AF850E7E1C0B0D670FF238D47BD23
          EA233D8FD51EF78CAA8FF63ED178D237A63936F054E7E9D0B8FEF8C884F1C4D8
          33F367CF276D26679E3B3E5F98F2985A990E98DE7811FE62F765FC0C6226ED15
          E9ABFCD70CAFAFCD72CDD6BC117FD33AA73CF760DE707E62C16E61E1ADEFDB2F
          EF6216E18B99EFA9DE5F5DE25EAA5F965BEE5D315C79BEEABCBAFA21FCC3E15A
          C647DA8F65EB42EB6D9F343F8D7D76F8BCB211FE05FE257B9379B3664B76EBC1
          B6F9F6FC4ED0CEC1D7AC6F4CDF6ABECB7F7FB86BBBBBBC17B58FDDBFFC83FF47
          C781C1C1ABC3C03FB1C09F58E04F2CF02716F8130BFC8905FEC4027F62813FFB
          027FF605FEEC0BFCD917F8B32FF0675FE0CFBEC0FFDF7D81609710979FB10002
          3AC33D3D01F8520D00892D00546300E010FF5BFEAF3CCAAF680320A0A4109458
          8232037D7043F80B84271283CC4109A1C6D061180266081B42C44134499C8E53
          C2ADE36B497C487948E7C94AC85D28782816296BA84E52CB52EFD2F4D266D259
          D173D26F30FCC598C964CBCCC3FC8DE5216B315B18C1809DC0BECDF184F30657
          32B73B8F262F171F8A6F85FFB1409360A950B6708C889FA8AB988DB89984AEA4
          91948DB4934CA06C82DC25F94685A78A5F95D8958D54CEAA76A8ED6AC86A4669
          F5EB50EABAE8D5E9EF1B9A1A951B6F9AEA1D2F36DBB050B74CB39AB061B5F5B6
          6BB0FF7A42D531D369D485DCF5B85B9EFB334F2A2F13EF349F1EDF1FFE9201BE
          816541AF4ED286E8859E0A6B0C5F8DE488B28FCE891988859F568D8B8E2F3B73
          37A1FFEC74E26AD26E0A492A679A62BA798677E6E9ACCBE75ACF4F647FCC45E7
          71E62B5FB0BA187429BDA0B2B0F3F278D1FB2B07C534D7784BE44AF5CAECCA3D
          2B82AE2755965435578FDE58BA79584B774BECB6619D5B7DCC9DDC869AC6BEA6
          97CDEB2DA856B636E976C30EAF7BC99DA5F7EFFEF5B4EB730F49AF509F6EBFF7
          837303F5830F863A1F560F5F7A943812F8D87ED4E089E298E053FA71A2F18389
          CFCFE6269F3CEF9F6A982E7971FE65DC8CDF2BABD76AB3426FE8DE1CCC2DCE0F
          2FD4BFCD7E7772D1EEBDE692D032DDF2E1CAD2EA930F1D6BA51F53D6FD3F997F
          96DF60D938FCB2B839B455B39DBD13F1D5FE9BD277C22E66777DEFD97EDB8FB2
          83B4C3E3878790FF1960097016F825040FA20629877C80B2416DA153319C982E
          AC33119AE83AB13EF10EEE2A5E1BFF85E41AA911E901591DB9130505453F6534
          9538D53275398D232D33ED345D01BD2D032BC30A6303D36966531676963DD6E7
          6C8D840C76070E518E03CEE75C0DDCE7787C790DF9F8F871FC1B02AF0507849A
          842B450A45B3C4CE8AC748444B464B9D924E96C991BD225725DFA130AEF85109
          A7CCA362AC1AA556A63EAE89D492D50ED6B9ADBBAACF6D1068D86A7460A2639A
          72FCB139B585AD6589D59C0D9FED49BB66FB9D130A8E314EDD2E08574DB744F7
          3E4FAC972EF41D3CF2A3F4B70DB812F83298FDA44FC89DD0BD70B588B4C8E968
          FE98B053D5B17F9D7E1C371FBF99003F4B932898A49E6C97129C9A9C569ADE95
          F13273EB1CC979816CCD1C87DCF0BC9CFCDA0B3D17A72FAD15222F3316095D51
          BA6A5CEC78CDAF24AC34BDACB2FC5EC5D4F52F55F86A9E1BEA375D6A626B2FDD
          6ABCFDA46EFD0E71034FA366934773D2DDEB2D0F5B37DA693BE4EFB97466DE6F
          F9EB6D37498F626F505F697FFF8307032D83B7874A1FE60DA73D8A1F897E1C3C
          EAF9C479ECC453DB71B30983675A93CACFA5A784A7B95F30BFA49881CFECBC5A
          7D3D3D3BF8A669AE643E6521F8ADEF3BFF45FFF7FE4BFECB7E2BBEAB7E1FBCD6
          5C3F9E58B7F964F6597743E98BE426DF16E336E90E72E7EBD7C56F93DF0776DB
          F76EEE17FC483F883934FC97FF19E0890812442A9216598192478DA0DD31484C
          295613BB4A94462C443C854BC00BE35F9024918A93CE9265911F235FA228A434
          A0DCA3BA496D4D83A069A6F5A0A3A6EBA60F60606618600C6562671A618E62E1
          6479CA1ACBC6CB364938C3CECF3ECD91CA29C7F991AB92DB998785E7056F119F
          133F2FFFBA40BB60AA90359467D9151913AD114B1277925094A497DC941A976E
          94C9950D9233911756C02B7C521C3956AD94A2ECA1A2AA4AA7FA516D5CBD53E3
          BA66B656ACB6A78E85AEB29EB03EAB01DEE0BBE1B2D1B4F1B049A7E9EDE3D7CC
          72CDD32C622D4F5AF95A7BDAB8DB3AD859DA5B38589CB074B471B271B6757173
          F5770B760FF270F6B4F032F2D6F091F115F513F0E70DE00A2404B104134E7285
          F0850A8609874B46C8462A4429476BC5189C328D353B6D116717EF74E64482E3
          59874487249B64D3149B54DFB4A8F4CC8CABD0BE7DE7B9C7E7E7B33FE71CE491
          E4B35C10BEA87849A7C0AAD0F37258D1D92B17AFD616DFBFF6A864B674BB1C57
          C1795DAEF278555075E68D6B37CB6A8A6BAFDD2ABE5D5877B9FECA9D92868AC6
          F2A61BCD4D773B5B7A5B87DA26DA5F76CCDF5BEDDCBAFFA30BD58DEBA1EA65E9
          E3ECE77D20342036283E24FBD077786084E571D068FF18F3D3C8F127CF64268B
          A6B0D3892F5133D9AF796787E64E2F68BEE37A8F5B46AF72AF19AFE77EFEB4E9
          B3BDF1AD7ACFF180FBC8FFBFF2E9476B025A0680C270006CE60130AB0420FB07
          943EF78572F39701302501C0421EC07AB301AC3619C0D4B37FAF1F472B15C002
          0A288F2D0C54A0BCB53F94A7AE00FD6011460C938039C0D2A08CF20A34C358C2
          CFC3871158842E2213F114C988744736200F5126500EF73BDA145D037D712E98
          6E2C3B3611BB4C6444D440CC489C44BC86B3C6F5E225F0C52418927092055213
          D2FB64826485E418F250F2790A538AFB948294855428AA70AA456A73EA1E1A31
          9A525A4ADA64DAEF74FE747350AEF209830E4337E331C6162619A60E6665E65E
          165D9631561BD645B610B64342163B2B7B13871EC73CE7292E6A688632E5FEC2
          53C0ABCCFB962F8B5F9EFFBDC045414DC14DA12A6147117AE8EB4C17D31207E2
          F725E225D5A51052BDD06C6528CB2A07975B979F52E8556C3A56A97441395925
          52D557CD4DFD8486B9A6AE96BAB68A8EAAAEAA9EAABE8E81A9A19D918771B049
          A269C1F106B387E6F396302B5E6B239B48DB72BB29073268E67273BAE0DCEBB2
          E9C6EBEEE851E0F9D81BEDA3E39BEEF738803CD02AA834F853885A6866D89B08
          A9C8F4A85731C2A7526397E334E38BCFEC9DB54A6C4F664B894B7D99AE927137
          CBE13C73F664EEE57CD78B9C97560BEB8AE2AE1A5DA32A992F6BA9C8AD74AFD6
          BD29524B7D6B0F9A99961ADF35CFB62CB76DDFC3DFE7EC32EE09EA8B7F503AD8
          F1707604332A3666339EF36C680AFD426326F3F5AB399E85D877934B022BA73F
          BC5DD7FF7C7313B71DFAF5DDAEF67EE7D1F703350454CB4003B8800C30041E50
          9D4219E8032B50DD8132545F50029B8493C075E129F0010411C204518098470A
          22639083287A9437AA034D8AF6410F62F831E9980F58536C33112B512AD106B1
          1DF1104E1A578EA7C427E27748BC485E429EEF219326AB21E7242FA220A74885
          F2DC11945FA87CA8E6A9EDA99FD318D30CD36AD3F6D029D1B5D1CBD2B7324832
          D4318A33D6338933B5415EEF633160996475625D678B2510110AD905D8BB392C
          39D63853B858B9DAB9ADB87720AF2BF2CEF09D8166A42702518204C121A15061
          76E1672249A29250A6B7405C57FC87448B64A01497D4B4748E8C912CADEC8EDC
          82FC238516C5EA63454AE9CA312AFEAA4E6AD6EAC735743595A0B54A4A474A57
          464F5A5FC9401B8A5AEC8C3D4DA24DB38E579975994F597CB562B156B709B02D
          B41B71409D1073B4764A756E765970A376D7F588F36CF07AEFC3E9EBE257E23F
          1BC81CE4145C79723D54222C3ABC3F9234CA2AFA6ACC62ACCCE994B8F1336C09
          FE67DB9348925D52EA5277D38D321AB3F4CEFDC8BE91EB98CF7061E45262A1EC
          E5ED2B2DC581257CA5CBE577AE4756A9DEA0BAB954DB79FB627D44836B93C15D
          9956F176917B52F795BA6C7ADCFBD41E880F323EC40FFF18F936BA3EB632BEF5
          6C7F0AF7827146EAB5F59B53F3E56F27DE2397A556FDD69AD7BF6E286D266C8F
          7FE3DF0DD97FF62FFFE3A06A241E200FD5AD788324500906C147182D4C03160A
          AB82CDC2E9A0DF7E017C168A30C2100348666424721225872A4513A34FA13F62
          BC310B5867EC2CD109A2596257E2459C0FEE333E127F48924E4A4B5A4E264AD6
          457E9C7C91E2342535651D9511D547EA5C1A599A57B45974C7E8D6E8AF33B832
          72314E329D67D66581B174B3C6B1A943F50383EC391CF69C7C9CDB5C7DDC9778
          FC7835F868F936F84704AA0513841C849545384411A28B620FC56F4B14482648
          794A1BCB1C931597939557525055D43B66ADE4A2ECA712A19AA87651BD5AA349
          B3576B52FB832E528F5E5FDAC0C230D428CFB8D964E638DA4CCADCC922DBF2A1
          35CC46CD36DE6ED081E684A1639C539BF3BA2BBF9BBB7B95C7B2178FB7BF4F87
          1FD2DF22A02C702BD8E06455C861986D787B24435464F4F829A9D8923874BCF7
          99B1B3528925C9A42911A933E93A193D5956E7BE66E7E64AE6BDBE107F89A3E0
          C165BF2B4C577BAEB995E2CADA2B7C2BA9AB866E9CA991A95DBB5D59EFDEC0DF
          B8DE7CBB25BACDA083F5DE97FBA35DAD3DD1BDCBFDC60F3A07C5866A86591FE5
          3F468F463FD9842289D1677293255360DAF6C59D19E42B4B28FF393BC735EFB0
          70EEEDBD77D38BDB4BD4CB822BAAABC61FCCD64C3E1AADEB7F52F92CB141F842
          FCE5D3E6D3ADBAEDAC1D9FAFEADFC8BFCD7EBFB51BB3A7B74FB7FFFA47F141DF
          91FF7FD560FD9C07883582FC834208861A9A3F6FFFEF4E01FEE1509DD7CF4609
          9DF181FEC647B55DB4D0B1ECEEA269005D99A1E320D8FF671D1C240363F408B4
          348768475828D0D5D8E46FACEC19A26D0661A82FCC34384CFD08D343D83338CC
          D4E26F7A5C8CB7863184F110FD8247A8D66F3DA5BE2EFA500D1A2085E88D21E1
          669610E68270776884B91684C921FC2EC6DBC2FA6F992D770FCDBFE970B8A78F
          B6DE2F1938A54F98DE912D6A68E9E4F00B32381A03640B2E030CA0D5D3038443
          155F1E20105A4F0D8106D0FCFB2C0C3C810BC4898078A1C00FBC877000D42308
          EA130461C2DF721AFF46D1FED9CF0BEAF73F3512A0FAB220C8DA6F9BBFAC1120
          9BBF75FA007708FFA6BB40368E7847A30B75F239FB8FCDDF1247FA7E8E46AC56
          6C456CFFF798903C4809A434521DA9845446CA03021467320261A414F47F430D
          A982548478F2401BBC83347BFD1EE391FE8046CF88C2A068052B6F887BF4ECAE
          BFB9C0EAA7B4CFBFEEFF6D04C06774AD75EDF708A0FAC99F3581D09B0668C84F
          579D8F50D7B753678EAEFFBD85794441B581006804054787F878798711D4A0AA
          490F21825EA09B881041424C4C1EFC17FD81E666DE155322000005E749444154
          5809ED564D685C55143EF7BEF7665EE64D662699A42996FED8065ADC49A868A4
          3555B011A48852C14D1177DA421BDC0A16144550E942C1AD5BB3F1A79B522C59
          D85A0443A98442EDA6F893B64963933433F3DEBB3F7EE74EDF64D299B44517BA
          E849CEDCFBDE3DF79CEF7EE79C3B43F4501E32F01F3320D68B7FF02BF2366CA9
          BE28A5D8602CD9F5EC1EE4BDB024C9E81F3F1BFDEB97BBEDBB0238F2C3C02336
          103F0B21364A58E4450A0F8ABC3BD6E23E782CC10290B5F04859490DE3633F61
          973DF1F9137313ED20BA0278F3FCD01921685F28530A113C903105C29014AA7D
          EF3DE70C405140DA088A6D1E207A28B50244D8F12F466F9CCA36FBD9241B997A
          127A5F8E83CB0614C101DF07548F13D11572B67B756C024849C15E1845884DA9
          CEC109BD06ABF50194B74403008DA0867C99B8E0019E19005869EA6A9C75678C
          55E203F9871852860F22A9A682C1F64D9C9A0EF1902D4929825A9777CEFDC6FC
          7E7A636B8D8672CF23154D400C6A5D8557A697D5D9730D616E85E5A1251D0056
          784968309DB68C108776940F9207EB6DC557DC7BA6F47ECA95B76A63E0B7062E
          D64A07005E0661E040BB5A6706153E86CBE374435DA01DBDE3A4F18CD6BCB7B2
          1FD8E0BFA5C615D05A085D0158C066B36621110D15C6A992DF443F2D7C449570
          130D84FB5B20340C3330ED73D78677D678EEC0D8D48D70DD92AE0034963901DC
          747CDA5D152E5CA2838F7E4D9EEFD14E3C332B9ED74FC39509B417ECA13BCAC7
          90A67EB74F621C2E1D5DF583FD0A0C7072DBA52B0065B50B90C0698C536C8BF6
          D0B7BF1DA30F2E0A3AF9FB51DA52DC8BBE26DA5A7C9D760F1C419FC30EBABBFF
          306D2E1E726B9BA34334D2F71625B0638D190098BDFB26590B074607CE474345
          F2AFF57AB7A9E0695C44CD2AE656E422642A99A100EAA8C598DD90CC169F880B
          AF95163C33801AD65674816A263C35F9E4C2385E3BE9B8886C5DEAB84750802B
          541A8482475C1FAE90D01C2DC94E02DFCDC5D64AF33903C7A962761AD81B1B5C
          E8C6ACB6174C3B007CB76F79FEC0B98A8E29EF095CC31C59F3E911892F220EC8
          970B5F56185AC201EF16668401702AEB360765DEE852BB5D07005EB456BD5BB3
          F27D0BC4D6E24684034733468ECA0303C94E896987B00D03D060324170564E9E
          D14B1FB61BE31CDDE585B3E58F7D69DF0EE50A6872DFA7CE90EFF60C00E79681
          7107B0F8B86A2DA00957096C17B8C26B2E87575395BE74FAE9950B4DEBE6E7BA
          007879EC1CEDCA51E9220A10DC29AA536DE4CC5334DDEEE0DFCEEF09809DEF3D
          4BEF04A2FC1ECEB3F0FDE85295DF1D3F7E5C42CDD8D8980F75AD3C3333C325EA
          F5F5F5D9CB972FBB430F0E0EBA71727292C74CD9454B3A00B073AC3AC53C79E6
          5CF4A910FE443E2E3EFBD837AF9E5F0C029FE6E7C918E341649AA682B5D168D8
          9E9E1E83B989E3D82C2D2DD9DEDE5EB3BCBC6CE6E6E60CC0B05A80E1F26171E0
          32003C8A3BA7F1D3521A085DF1C33DD77AD5D8A5ABDE7CF5B038B1F364188ABC
          10A12721E80FCF030ADFF7536BAD86182963A575CE0441902AA54CAD56B3A25F
          A8C29F7533678C02280DA61880AB6146C15F8DD989FD6AB51A44519433268CA4
          D6A179F9D789E0D2A64FE22FB7CF0061D590AD286D2BDAA411FC07F0E2275A4B
          F4B627ADF5142A1498442EA7C10ABECA3DFCB669084A30866168F1134F0C0D0D
          D9D9D9598EDD62C09D9EC10C0F0FCBC2F6826F6BA55C219FE6221B719B8652AA
          82F16C006012C716467A129DA1ADF5B594BAF98391F204830429708C00884E72
          8929988296B76EA93FEA750D46D4952B5732061C0B6B528060EE796464442E2E
          2ECA72B9ECF9FE22BA6BD0F72BBEE7091CC5F2E5D5833F74B5E62B0AB71C1EFC
          6565D220354559544992989BBD37757E366FB82E50139AEBA02D7856906B7E9D
          384AE08F29320B0B0B1AA31E1D7D2E2D954A717DB1DE983A3D753B7A7C77DDCF
          E51A41A91E277ED2688828AEE7AF277A5EC7BA0036EA94A22093A22AAAB3A5EB
          2A9A8D35F6EBE9E9E9ECE4AD380C3E6380E70F2AAEED32632E5C54BA60C6F2F9
          BCE55CA3FAEDD4E094A54967D53A6DB6A77DFC2700DAF767F36E7EB2936636FF
          CFF16F32BCF3515BE6D8770000000049454E44AE426082}
      end>
    Left = 96
    Top = 720
    Bitmap = {}
  end
  object sAlphaImageList4: TsAlphaImageList
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000005154944415478DAC457694C5C55143E6F9B9D6586990159
          C64E25D8826003AD5325D16830201949AB21714B0C6D1353636BC5DA2A8DA6B1
          A686D8EA0F224AA57589D1685C3036F407B5948AB513AC2214042B94B274998E
          2CB30F6FDE1BCF9DA5428181B2F52627EFBEFBEE7BE7DCEF2CDF79542010805B
          3968B8C5839DF34EFFF094A591A647D47849543F70AC6B764D9AC54560F8242A
          6763FA69C5EDBFE17CD532B820304944110AD8F85C96D3AC65715E7CE3F3A9B2
          C83180B15B2451673212CD5D2CCE372C2B02571B8A193140977231292C2B5532
          94449B8B6BA9CB8600427E3F179FC5D2E0A3401801892687C1B5A2A54580D48B
          B0A0B247A5083D080E00C109527546280E26EC99228B8C40912C3E8D01D18306
          78401AA36781513D3C506F562F790CF4FD68CE6214690686A1E8A001A22F8402
          22220850B08431703DFD0A65DACC10FCE2382E8D070D9069D2C371B0C44188A7
          2C55E9323810DDF85D3F8A0064AED4A47022484ACF7F57229F5729EEFED25489
          97CD2892682F70F2045A22E530015C210382E07880A29D204F58C53AAFB45DED
          FEA624EA19500EA3BC79E793163B45D8B0F37353997A65417552F6E3328A9AC5
          0DBC0DC0DB8BD77F2743CBC601C856A2857A002A1AC55060ED3AE6B375FD5091
          F98CE55D2A42C7ED9F9A2A951AC30B86350FCA5996A16634201C7441DF4FFA2E
          07C028D0A9F2193D2B086260A0BDD9EBB0FE534D10C87E368C4064B41E31BDCA
          C9947B8CD97972854ACA440B9E9B1B14783DBC78A1FD0F8FCF3556B9669365DF
          F527373624676B4D4FD30CFB8161758E2C2151CD05836C41BA6918B539FC7D1D
          AD5EC1CFBF94B7C5523BE9F1741D514B8D290F2F5B928CE965A977A4482998A7
          11140343BD977D977AFEFE9A04DEBAE72C4D53B6CCD4929DA936916CD81FABD5
          6DCDC8C990B38C48CDDD2568B24007CE9FEBF18E5AAF7C880B7BD73F6FB14FBB
          73B69EF0972AD3EB52857277E6DAD572851CF19CD5080A3C9E80F8D7EFDD1E8F
          D37120BFAC666F28438CF32B44F9DB2CFBDC0ED7A1B1512C41244783C5278AE0
          703A29C139E6F82A7FD361541E1F550D3D57F2D1241B917C481AFAA34B400475
          92019B14BAF464CD668620B22032FAE91D53963C3ED92095E05E520348564413
          E40796F153317A238398DDBB602E20E493906264811FC11BEF04B805C0B40AF8
          BCE38190F2F03A31D23F027A433A87EF3EB6E07E004F51A84DD485D82F423E08
          B3C311104F370DB99B4FF4BBAE5DF3879C1F31C46F076D622C4160D62E29AA01
          F56F99D4AC44715F5C1C26B4DF0991A23430C0F3A71B7B5D8E31CF369F97DFD8
          D2DCFB6D47BBDD2B8874D038B257C6B96995E63643FDC127B2A2B9809D05FE02
          6D5A3A4B919F126C3E8882F63FEDDEC13EDB215258CCE5B56DC133F0B6E347AB
          76EDB7599DDB73D7E9E4312A9E067E1874A92BD851EBE54234A0635E0890E8D7
          A524310452970BC4538D56577FAFED3DF3F6032F9A5FFEA42D483C8C0C093C09
          CC3BAA2AC6865D3B4E1D1F70F5F5F1E320B8419F9C10FE6798870BEADE303124
          95F47A253BD46FE71B1B86DCA8E09592F2AA8A10E572FF37ABE82160D550B2F3
          A35A9E17EE696DB9F4FE999F073D4A05D032957A7DDDDB4FA5DEB40BF0BBD9F1
          FA64A6E3EC39DF85CE9E2F70A976E3AE43BF062977DADCA68254BC61F7C75DD8
          2B947F7F70A7ED445DE36B12452C565BC0520883D3D74D80E4B021E4484A94D8
          70E28E6D2D36A6A76AE5397B3EEB3C3AA19B21118FF908BEF03C7210298A2C3C
          67C8E24377EBD42BF40AD991868B17F1362EAC8F7002B653C093F7FF1360007D
          CE95919C37610C0000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000003D769545874584D4C3A636F6D2E61646F62652E786D7000
          000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
          4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
          6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
          786D70746B3D2241646F626520584D5020436F726520352E302D633036302036
          312E3133343737372C20323031302F30322F31322D31373A33323A3030202020
          2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
          3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
          7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
          626F75743D222220786D6C6E733A786D705269676874733D22687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F7269676874732F2220786D
          6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F78
          61702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75
          726365526566232220786D6C6E733A786D703D22687474703A2F2F6E732E6164
          6F62652E636F6D2F7861702F312E302F2220786D705269676874733A4D61726B
          65643D2246616C73652220786D704D4D3A4F726967696E616C446F63756D656E
          7449443D2261646F62653A646F6369643A70686F746F73686F703A3534393965
          3262352D343364642D313164642D386233632D38613430663730623866663622
          20786D704D4D3A446F63756D656E7449443D22786D702E6469643A3430333945
          4641433339304531314530393634314146333746454432344145362220786D70
          4D4D3A496E7374616E636549443D22786D702E6969643A343033394546414233
          39304531314530393634314146333746454432344145362220786D703A437265
          61746F72546F6F6C3D2241646F62652050686F746F73686F7020435335205769
          6E646F7773223E203C786D704D4D3A4465726976656446726F6D207374526566
          3A696E7374616E636549443D22786D702E6969643A3831444643453832313632
          424530313139393844384632313431433330324431222073745265663A646F63
          756D656E7449443D2261646F62653A646F6369643A70686F746F73686F703A35
          343939653262352D343364642D313164642D386233632D386134306637306238
          666636222F3E203C2F7264663A4465736372697074696F6E3E203C2F7264663A
          5244463E203C2F783A786D706D6574613E203C3F787061636B657420656E643D
          2272223F3E51028C94000003664944415478DAEC576D485351187EEEA6737E7F
          1519653173D34D4C2AC5851A599148A1F923A8447F08FAA77FD20711D694EA8F
          FD2A88202262122C9482A48F1F9560A122941F859412A1852C753974EA3EEE6E
          E79CEBE6D5B93521F547BEECE1BDE79CF7BCEF73DEF39E73EF3883C180F51419
          D65936086C10089136D46AB5B05681070707391F023CCFA3A2A262D5831B8DC6
          E5B78012A02208C23FC3E8E828DA0C9761DCA7C3ABB3D58BE2F81070B95C6C12
          35A0283A5ECA70FBCE5DD6A65ADAFE1B68F021E3030C3F790C4C5931DCD5C1FC
          D3384111A072A3C180D6E72F589B6A693B10464646601B788A54750BA6D22261
          B1BBA03A56E24360510D389D4EB8DD6E62B090A2867A03F27273BC7DDAF4F479
          B27CC07DFEF1BE1D29318F30638EC281BDBF3199AA82EAE419E69FC6F14B80E7
          898184E1F90B17A1D168BC7D3D7DFDA2ADC466A97CE8EEC6E6E96658A604DCBC
          DA0B6D881CBAF24A6426EF10FD0724E0E6C9EA160C6870998C637D478F1C46FD
          B5EB4C3B1C76D2BFFC3532F6AC05BAE26118AA86B147A98010138BACAA1AE683
          7787FA27E07038D8FE399DE2EA1EDEBFC752467E4CCA4F9F62102BD9CDB054AC
          039FC1F77D4453AB19FA0825466C73C8A9A8C2C49C1D0AE297FAA771026C01BF
          88E14A65C8D4846DF1B1883087E28B750661C93BC1ABD359E149FDCBE572FF35
          E09827F0E66D5BD0810F151E84EDFB37FCEAEB816C6A82ADDC1E1985D0C22274
          91BA29DA9AC4FC7A6AC02F01B14AC52D28C8CF0F9A009DE330F7634B62022CE3
          6658050E89C52588CCC8405C6C1C121236311BCF29502A95CB13E0388E54B898
          81F6F67741132828C8876CEC35D22AE3D1DB1C06BB2D0B9F5C6EC47F1D44744C
          0C525277313BE63FD029906ABD3E7705197022493D0DCEFA13E3DBB5084FCC43
          9E4A05AD56B7C8E7D2E790A537213878B7A0A3B3336802FBF57A5CBAD283DD79
          85988CCE4462742CC6C62D189BCF221D175300FF37211DE0C0790D72B2B38326
          40E7D4DC7A19705C8CCF052620D5AB251EFF7575759C97406363A3ACB4B414B3
          73B3D0A669E092BC58A4AF575AC5441188DA23A4B608644CD31B92169B07F4C8
          51841050FFD4E789B232053992BCCF07C9B9DADA35F922B24C4CC878DEE59212
          104C265324D1F1045104E10472CF98C48E0BD0F6F7CCD647602798512842276B
          AAAB9D24A302B7F1CF6883C07F4FE08F0003006CC66EA134D706870000000049
          454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000017AB694343504943432050726F66696C6500007801ED5A6754144DB3EE
          CD0BBBE49C979C7306C939233949CE59328820928392541045928082820449E2
          4B1410111144501401458288224105843BE8EBF7DE7BBEF3FDBAF7DFB5CF9999
          67AAAAAB7AA666BB6BBB0A00FE4297E0607F38002020302CC44C479D60636B47
          C0BC0044800E90005A4070710B0D563335358444FE43DB790E6047AC09E1235D
          E4753CD68A921E35C5541D492A121114FFA1D36F324508641000982944A0F6FA
          85DD8FB0EB2F1C758423C382C32099AC23ECE6ED02F161A510160AB130D380F0
          080058BCD74F4C347D845D7F628A7747D8C525C40B0086CF903CC1C5C50BC28C
          E4BFB0EB11163BC2116E5E907E46680C68CA40779F408804D9402BBB7B84BA01
          C0731D9271770F750B0080170B005C3D202008E2F31FBD133EB7E010A82F3F74
          00AEA377075DA1E609DD2BB4403ABEFE43F3C2007003D2CD64FF0F8D1F7A76E6
          5700DC79F90F6DD3ECE7FB84D13E09F59494F8A90E86570700357B78B8C90300
          260F801FB987877BE587873F2A004040FDBBFDDDC243227ECA02E4D105058801
          19A0060C801570023E200C24802C5004AA400BE8031360016C81237003DE2000
          848048100B12400AC80439E022280225E03AB809EA402368059DA0070C804760
          0C4C8297600E2C8255F0196C833D180C8681E16194307A182B8C1B26081387C9
          C194615A30039819CC16E60CF38405C0C261B1B04458062C0F76195606BB01BB
          036B8375C3866063B069D81C6C05B601DB85C3E13838359C19CE0D1781CBC255
          E1FA7073B803DC131E0C8F8627C2CFC10BE065F05AF85D78177C18FE0CFE06BE
          0ADF821F2288113408024210218B504718216C111E8860442C220D7101518AB8
          8568473C408C2366111F10DF904824059215298494476A232D902EC820642C32
          035988AC4236237B914F916F90EBC87D140EC588E243C9A2745056280F54182A
          09958FAA4035A1FA5013A8B7A84D34024D8DE6424BA3B5D056682F74143A1D5D
          84AE45DF478FA2E7D05F30080C0D8617238F31C43862823189984B981B987B98
          51CC3C660B8BC5326145B1EA582BAC2F360E9B87ADC2766047B16FB15F89F044
          EC4432440644CE44E1441944A54477891E11CD11ED10E3893988E5894D883D88
          6389F3886F1277134F11AFE35038169C14CE00E7863B85CBC7D5E2FA7033B84D
          3C1ECF8557C25BE103F1A9F8327C077E02FF91044D42205120B1200924492329
          27E9249922D920C593F292AA939E208D22CD27AD271D267D4F062763255320B3
          220B213B4F564B3644F68E1C46CE4AAE486E431E419E4FDE403E4ABE46414CC1
          47A14DE14E91485146D14DF186E2809285F218A53D650C6511653BE50BCAEF54
          0C54F254B65431544554F7A866A8F6A959A895A99DA813A8CBA9FBA917693034
          FC340634013439348D3493345F69196995689D691369AB698769D7E928E9A4E9
          6CE94ED395D30DD0ADD293D14BD1DBD29FA6AFA01FA2FFC840C520C7E0C890C4
          50C330C6B0C3C8C2A8C1E8CB98C3D8CA38CB84661266B2608A65AA607AC4B4C9
          CCC4ACC1ECCF7C81F93EF37B165216591667960C962696D7AC685631563BD624
          D63AD66936049B309B0D5B225B1DDB0B02922046B027A4129A08B3ECC4ECB2EC
          6EECD9EC9DEC2B1C341CEA1CC11CC51CC31CDF38B939CD391338EB395F73E1B9
          14B87CB80AB806B8B6B9B9B82DB813B99BB817782879D47942782A78267811BC
          52BC1EBC97780779BFF109F0D9F39DE3FB8BEF333F07BF257F2A7F3BFF9A009B
          809940B2409BC00741564133C114C10EC175210E212BA10CA12EA12D617E6147
          E17CE121E11F2292223E22D7449E89E244D5442345EB44DF8931899989A58BF5
          887D131713F7122F119F922093D0953823D126B1212920E926795572528A4C4A
          57EAAC54A7D48EB498B4AF74A5F41B1946194B991C9947B2685975D938D976D9
          6D3971B900B91AB9F7F29CF2CEF2C5F22F15E8142C14F2149E2892281A28A62B
          0E1E431FD33C9678AC5709A6A4AA14AFD4A574A0ACAC1CA7FC97F2818A8A4ABC
          4AB72A5055533DABDAAF8652D3514B531B56C7AB1BABE7AA4F68D06AD8685CD1
          98D564D7F4D0BCA1B9A625A615A6D5A6B5AFADAA9DAC3DAC43AA63AE73596756
          9753D747B75E775B4F512F416F509F54DF52FF8AFE828180C14983364360A86B
          9863386D4430F2366A30DA355637CE329E346135F1326930D933D532CD367D71
          9CEB78E0F17633A499895991D9A2B9B879ACF99005B585B3C56D8BEF96DA9679
          966FAC84AC62AC06ADA9AD5DADEF581FD818DA14D9ACD8CAD9A6D84EDA71D985
          D9F5D953D9BBD9373A201CCC1D2A1CB64E689EB878E2BDA3AC63BAE34B2721A7
          38A731670EE730E7411706177F972E574A570FD77637BC9BB35BB33BD6DDC1BD
          C103E561E751EF89F4B4F5ACF7427AD979DDF1467B3B7837FA10F938F9B4F892
          F8BAFB76FA51F9F9F9F5F933F987FA3F0AE00C880D980C14094C0D9C0B5208CA
          0FFA18AC135C16BC77D2EAE49D105C8867484F28736854E84498685866D852B8
          467869F87E846D444B24556470E4689460547AD452B45674450C3CC639A6EB14
          EBA9D3A75EC51E8BBD12BB77DAFEF4BD38A6B8D8B857F14AF1D7E20FCF389FE9
          4DE04C484E583AAB77B6369134313871224926E972D27EB273725F0A6F4A66CA
          A7548BD4B63496B484B4F7E986E90D19B419B1190B99BA997559D459A7B216CE
          E99EAB3F4F773EEEFC62B651F6DD1C969CE49CF55CABDCAE3CBEBCDCBCDD7CF7
          FCC717642F945DC45D0CBF387749FFD2DD02424166C1D742D7C2D1CB0A97AB8A
          288BE28A3E5CB1BED27F55FC6A4931BE38BA78E99AE5B5BE12F192D252B2D2D3
          A56B65F6658FCA15CA6B2A182B322A76AFFB5E9FA934ACECAC12A92AA926AF3E
          5BBD75C3E3C6F44DFD9B9D35A235E5B534B569B57BB7826EBDBD6D75FB519D4A
          5D533D5F7DF11D8A3BA977F61B4E362C359E689C68D26BEA6A9669BE7D97EBEE
          9516CA96F456586B74EB469B4FDB7CBB5DFB78874147FF3DE57BAD9D629D35F7
          B9EE5FFB8BE1AFFC2ED2AEF46E64777CF76E4F44CF466F40EF4A9F67DF42BF53
          FFAB07B60F9E0F980F3C1D341E1C19D21F7AF850E7E1C0B0D670FF238D47BD23
          EA233D8FD51EF78CAA8FF63ED178D237A63936F054E7E9D0B8FEF8C884F1C4D8
          33F367CF276D26679E3B3E5F98F2985A990E98DE7811FE62F765FC0C6226ED15
          E9ABFCD70CAFAFCD72CDD6BC117FD33AA73CF760DE707E62C16E61E1ADEFDB2F
          EF6216E18B99EFA9DE5F5DE25EAA5F965BEE5D315C79BEEABCBAFA21FCC3E15A
          C647DA8F65EB42EB6D9F343F8D7D76F8BCB211FE05FE257B9379B3664B76EBC1
          B6F9F6FC4ED0CEC1D7AC6F4CDF6ABECB7F7FB86BBBBBBC17B58FDDBFFC83FF47
          C781C1C1ABC3C03FB1C09F58E04F2CF02716F8130BFC8905FEC4027F62813FFB
          027FF605FEEC0BFCD917F8B32FF0675FE0CFBEC0FFDF7D81609710979FB10002
          3AC33D3D01F8520D00892D00546300E010FF5BFEAF3CCAAF680320A0A4109458
          8232037D7043F80B84271283CC4109A1C6D061180266081B42C44134499C8E53
          C2ADE36B497C487948E7C94AC85D28782816296BA84E52CB52EFD2F4D266D259
          D173D26F30FCC598C964CBCCC3FC8DE5216B315B18C1809DC0BECDF184F30657
          32B73B8F262F171F8A6F85FFB1409360A950B6708C889FA8AB988DB89984AEA4
          91948DB4934CA06C82DC25F94685A78A5F95D8958D54CEAA76A8ED6AC86A4669
          F5EB50EABAE8D5E9EF1B9A1A951B6F9AEA1D2F36DBB050B74CB39AB061B5F5B6
          6BB0FF7A42D531D369D485DCF5B85B9EFB334F2A2F13EF349F1EDF1FFE9201BE
          816541AF4ED286E8859E0A6B0C5F8DE488B28FCE891988859F568D8B8E2F3B73
          37A1FFEC74E26AD26E0A492A679A62BA798677E6E9ACCBE75ACF4F647FCC45E7
          71E62B5FB0BA187429BDA0B2B0F3F278D1FB2B07C534D7784BE44AF5CAECCA3D
          2B82AE2755965435578FDE58BA79584B774BECB6619D5B7DCC9DDC869AC6BEA6
          97CDEB2DA856B636E976C30EAF7BC99DA5F7EFFEF5B4EB730F49AF509F6EBFF7
          837303F5830F863A1F560F5F7A943812F8D87ED4E089E298E053FA71A2F18389
          CFCFE6269F3CEF9F6A982E7971FE65DC8CDF2BABD76AB3426FE8DE1CCC2DCE0F
          2FD4BFCD7E7772D1EEBDE692D032DDF2E1CAD2EA930F1D6BA51F53D6FD3F997F
          96DF60D938FCB2B839B455B39DBD13F1D5FE9BD277C22E66777DEFD97EDB8FB2
          83B4C3E3878790FF1960097016F825040FA20629877C80B2416DA153319C982E
          AC33119AE83AB13EF10EEE2A5E1BFF85E41AA911E901591DB9130505453F6534
          9538D53275398D232D33ED345D01BD2D032BC30A6303D36966531676963DD6E7
          6C8D840C76070E518E03CEE75C0DDCE7787C790DF9F8F871FC1B02AF0507849A
          842B450A45B3C4CE8AC748444B464B9D924E96C991BD225725DFA130AEF85109
          A7CCA362AC1AA556A63EAE89D492D50ED6B9ADBBAACF6D1068D86A7460A2639A
          72FCB139B585AD6589D59C0D9FED49BB66FB9D130A8E314EDD2E08574DB744F7
          3E4FAC972EF41D3CF2A3F4B70DB812F83298FDA44FC89DD0BD70B588B4C8E968
          FE98B053D5B17F9D7E1C371FBF99003F4B932898A49E6C97129C9A9C569ADE95
          F13273EB1CC979816CCD1C87DCF0BC9CFCDA0B3D17A72FAD15222F3316095D51
          BA6A5CEC78CDAF24AC34BDACB2FC5EC5D4F52F55F86A9E1BEA375D6A626B2FDD
          6ABCFDA46EFD0E71034FA366934773D2DDEB2D0F5B37DA693BE4EFB97466DE6F
          F9EB6D37498F626F505F697FFF8307032D83B7874A1FE60DA73D8A1F897E1C3C
          EAF9C479ECC453DB71B30983675A93CACFA5A784A7B95F30BFA49881CFECBC5A
          7D3D3D3BF8A669AE643E6521F8ADEF3BFF45FFF7FE4BFECB7E2BBEAB7E1FBCD6
          5C3F9E58B7F964F6597743E98BE426DF16E336E90E72E7EBD7C56F93DF0776DB
          F76EEE17FC483F883934FC97FF19E0890812442A9216598192478DA0DD31484C
          295613BB4A94462C443C854BC00BE35F9024918A93CE9265911F235FA228A434
          A0DCA3BA496D4D83A069A6F5A0A3A6EBA60F60606618600C6562671A618E62E1
          6479CA1ACBC6CB364938C3CECF3ECD91CA29C7F991AB92DB998785E7056F119F
          133F2FFFBA40BB60AA90359467D9151913AD114B1277925094A497DC941A976E
          94C9950D9233911756C02B7C521C3956AD94A2ECA1A2AA4AA7FA516D5CBD53E3
          BA66B656ACB6A78E85AEB29EB03EAB01DEE0BBE1B2D1B4F1B049A7E9EDE3D7CC
          72CDD32C622D4F5AF95A7BDAB8DB3AD859DA5B38589CB074B471B271B6757173
          F5770B760FF270F6B4F032F2D6F091F115F513F0E70DE00A2404B104134E7285
          F0850A8609874B46C8462A4429476BC5189C328D353B6D116717EF74E64482E3
          59874487249B64D3149B54DFB4A8F4CC8CABD0BE7DE7B9C7E7E7B33FE71CE491
          E4B35C10BEA87849A7C0AAD0F37258D1D92B17AFD616DFBFF6A864B674BB1C57
          C1795DAEF278555075E68D6B37CB6A8A6BAFDD2ABE5D5877B9FECA9D92868AC6
          F2A61BCD4D773B5B7A5B87DA26DA5F76CCDF5BEDDCBAFFA30BD58DEBA1EA65E9
          E3ECE77D20342036283E24FBD077786084E571D068FF18F3D3C8F127CF64268B
          A6B0D3892F5133D9AF796787E64E2F68BEE37A8F5B46AF72AF19AFE77EFEB4E9
          B3BDF1AD7ACFF180FBC8FFBFF2E9476B025A0680C270006CE60130AB0420FB07
          943EF78572F39701302501C0421EC07AB301AC3619C0D4B37FAF1F472B15C002
          0A288F2D0C54A0BCB53F94A7AE00FD6011460C938039C0D2A08CF20A34C358C2
          CFC3871158842E2213F114C988744736200F5126500EF73BDA145D037D712E98
          6E2C3B3611BB4C6444D440CC489C44BC86B3C6F5E225F0C52418927092055213
          D2FB64826485E418F250F2790A538AFB948294855428AA70AA456A73EA1E1A31
          9A525A4ADA64DAEF74FE747350AEF209830E4337E331C6162619A60E6665E65E
          165D9631561BD645B610B64342163B2B7B13871EC73CE7292E6A688632E5FEC2
          53C0ABCCFB962F8B5F9EFFBDC045414DC14DA12A6147117AE8EB4C17D31207E2
          F725E225D5A51052BDD06C6528CB2A07975B979F52E8556C3A56A97441395925
          52D557CD4DFD8486B9A6AE96BAB68A8EAAAEAA9EAABE8E81A9A19D918771B049
          A269C1F106B387E6F396302B5E6B239B48DB72BB29073268E67273BAE0DCEBB2
          E9C6EBEEE851E0F9D81BEDA3E39BEEF738803CD02AA834F853885A6866D89B08
          A9C8F4A85731C2A7526397E334E38BCFEC9DB54A6C4F664B894B7D99AE927137
          CBE13C73F664EEE57CD78B9C97560BEB8AE2AE1A5DA32A992F6BA9C8AD74AFD6
          BD29524B7D6B0F9A99961ADF35CFB62CB76DDFC3DFE7EC32EE09EA8B7F503AD8
          F1707604332A3666339EF36C680AFD426326F3F5AB399E85D877934B022BA73F
          BC5DD7FF7C7313B71DFAF5DDAEF67EE7D1F703350454CB4003B8800C30041E50
          9D4219E8032B50DD8132545F50029B8493C075E129F0010411C204518098470A
          22639083287A9437AA034D8AF6410F62F831E9980F58536C33112B512AD106B1
          1DF1104E1A578EA7C427E27748BC485E429EEF219326AB21E7242FA220A74885
          F2DC11945FA87CA8E6A9EDA99FD318D30CD36AD3F6D029D1B5D1CBD2B7324832
          D4318A33D6338933B5415EEF633160996475625D678B2510110AD905D8BB392C
          39D63853B858B9DAB9ADB87720AF2BF2CEF09D8166A42702518204C121A15061
          76E1672249A29250A6B7405C57FC87448B64A01497D4B4748E8C912CADEC8EDC
          82FC238516C5EA63454AE9CA312AFEAA4E6AD6EAC735743595A0B54A4A474A57
          464F5A5FC9401B8A5AEC8C3D4DA24DB38E579975994F597CB562B156B709B02D
          B41B71409D1073B4764A756E765970A376D7F588F36CF07AEFC3E9EBE257E23F
          1BC81CE4145C79723D54222C3ABC3F9234CA2AFA6ACC62ACCCE994B8F1336C09
          FE67DB9348925D52EA5277D38D321AB3F4CEFDC8BE91EB98CF7061E45262A1EC
          E5ED2B2DC581257CA5CBE577AE4756A9DEA0BAB954DB79FB627D44836B93C15D
          9956F176917B52F795BA6C7ADCFBD41E880F323EC40FFF18F936BA3EB632BEF5
          6C7F0AF7827146EAB5F59B53F3E56F27DE2397A556FDD69AD7BF6E286D266C8F
          7FE3DF0DD97FF62FFFE3A06A241E200FD5AD788324500906C147182D4C03160A
          AB82CDC2E9A0DF7E017C168A30C2100348666424721225872A4513A34FA13F62
          BC310B5867EC2CD109A2596257E2459C0FEE333E127F48924E4A4B5A4E264AD6
          457E9C7C91E2342535651D9511D547EA5C1A599A57B45974C7E8D6E8AF33B832
          72314E329D67D66581B174B3C6B1A943F50383EC391CF69C7C9CDB5C7DDC9778
          FC7835F868F936F84704AA0513841C849545384411A28B620FC56F4B14482648
          794A1BCB1C931597939557525055D43B66ADE4A2ECA712A19AA87651BD5AA349
          B3576B52FB832E528F5E5FDAC0C230D428CFB8D964E638DA4CCADCC922DBF2A1
          35CC46CD36DE6ED081E684A1639C539BF3BA2BBF9BBB7B95C7B2178FB7BF4F87
          1FD2DF22A02C702BD8E06455C861986D787B24435464F4F829A9D8923874BCF7
          99B1B3528925C9A42911A933E93A193D5956E7BE66E7E64AE6BDBE107F89A3E0
          C165BF2B4C577BAEB995E2CADA2B7C2BA9AB866E9CA991A95DBB5D59EFDEC0DF
          B8DE7CBB25BACDA083F5DE97FBA35DAD3DD1BDCBFDC60F3A07C5866A86591FE5
          3F468F463FD9842289D1677293255360DAF6C59D19E42B4B28FF393BC735EFB0
          70EEEDBD77D38BDB4BD4CB822BAAABC61FCCD64C3E1AADEB7F52F92CB141F842
          FCE5D3E6D3ADBAEDAC1D9FAFEADFC8BFCD7EBFB51BB3A7B74FB7FFFA47F141DF
          91FF7FD560FD9C07883582FC834208861A9A3F6FFFEF4E01FEE1509DD7CF4609
          9DF181FEC647B55DB4D0B1ECEEA269005D99A1E320D8FF671D1C240363F408B4
          348768475828D0D5D8E46FACEC19A26D0661A82FCC34384CFD08D343D83338CC
          D4E26F7A5C8CB7863184F110FD8247A8D66F3DA5BE2EFA500D1A2085E88D21E1
          669610E68270776884B91684C921FC2EC6DBC2FA6F992D770FCDBFE970B8A78F
          B6DE2F1938A54F98DE912D6A68E9E4F00B32381A03640B2E030CA0D5D3038443
          155F1E20105A4F0D8106D0FCFB2C0C3C810BC4898078A1C00FBC877000D42308
          EA130461C2DF721AFF46D1FED9CF0BEAF73F3512A0FAB220C8DA6F9BBFAC1120
          9BBF75FA007708FFA6BB40368E7847A30B75F239FB8FCDDF1247FA7E8E46AC56
          6C456CFFF798903C4809A434521DA9845446CA03021467320261A414F47F430D
          A982548478F2401BBC83347BFD1EE391FE8046CF88C2A068052B6F887BF4ECAE
          BFB9C0EAA7B4CFBFEEFF6D04C06774AD75EDF708A0FAC99F3581D09B0668C84F
          579D8F50D7B753678EAEFFBD85794441B581006804054787F878798711D4A0AA
          490F21825EA09B881041424C4C1EFC17FD81E666DE155322000005A349444154
          5809ED55696C5455143E6F99BD74DA4EA554E8C2B4146A5B4A4240B61F2C8625
          55D4683541FCA512D14094A0281A831893AAF18702252A844015224888844648
          C440400D242C6529B6652B4C5BA41DA494D2769677FDCE9D796F4A03B611F8C7
          49CEBCFBEE39F73BDFF9EEBD6F881EDA0015F02FF07B07987AFFD3A6554C2BA5
          CD24CAD6CF5D79FFD1FB412CFB72E624FA8D04D5C20F83C40FB32AFB5972FFC2
          CFAF9A3D950EA2F04578333C00AF21F1F4B6E95BEEA5CAF4F7272EED77FDCB6B
          CB66651F22311C45FD5749E4B6C63C1F63DF19122FEC7CBCBA5F903B2494FD54
          7C706A55EE5133A49883DECFD7BE2D9B7B695CF5CFEEA198751229A27714E328
          51673BD190BAD17F6E9C7D62529FE81D5FC72E186B2B2CBF71B425BBA1F8D1C6
          A24355334F4FE044BD6FF6920D73CB83E3766E2D1846A4D9FB46E3EF36228158
          97FDC4C4457B8B8E5F3940E3B7AD381DBA4B3695573CE14D9F5C5B23F29B7346
          619DDEA459A9B71158BEF1B9F9E109DBAB46A0B80D454C13AC8081A2D04B51E1
          F180E123EA2E395D9AE42838594E53C76E5BB1EFA6B9C67CBEFAD99C6169D3F6
          D778F26FA5393C100F343B7580C4CD22F0E1FA675E714FDEBECE970586BD8BA3
          70770751F0CAC7171D8E1D99A999C71DAC8C62B24843BCB8BEC063BBD5909C3C
          AB68FD923DD74CF0B7D694153E32B9FA484A1EB91CEED89A10F01435A1804525
          B9F0C0E77E144F07780AC0D9BD703B7A0A9CF9A6E16CE7C2DC536DBB3BDACFCE
          E8F0A00B8EC93C6065E013955B12185232FD48C3BB5FCF817E441FAC7B72BC7F
          4675EDF091E4CA48224A45258989A74751AD53651148F178C3C9E81CB9D24198
          C475A29A53DBEB1BEDCF8E3054838446E947BA361B4DF52F5EB3F700289E3B08
          CF7417488C6C4B1B35F3F05F9B0E2C7C336FC6AE43FE3CA2341C628E332EE7EB
          5D442D9179833194666D8153D1C885AE587D1C72BA01217F3DB3F75CD0535AA0
          615E98B269C2FB47684D37D5FAAE9616560E76F22D8961910763EF88A02792BB
          76B58D0F9B19409C5B6EEF70D32F75FB7A3AF4F45AA2B7E52A8B804338C15295
          60D75A0DFAB1EED8F97F3C5979BAAA5204C5CD3D17388D428F3AF78657EA9193
          BE9629459F64BADC76AC64DA30D6D42147D68F81D8D5E068FABE7E4B67879AC2
          3B601D568B8013AB6CE14C6A6B7552E5B95D8D1D6E9F5F45D510717115374089
          7D0F98890AD723FA9EC8E28CF0C9D4CB738A3FCAB27B5251DBDADA5EC50D0AFC
          9D4FAB1B36748634DC03030D08BE4F31B3085048A32B81A15471694B53B72B29
          278AC2846D31006B0815BF4C00FDCB31378AB81A517718F3B33A6B7C8DF34A96
          E73806991AC6C0B9F3BA4011555CF8EA5658D77104846C425EEBBE04CE3767D8
          37DE5CD5D663B70F0DA3E3080A46502C8A8E05AE4E6C1763FBADA2010D1474FC
          6A4A84B62AB373DA8FA55C5E3466595652B247928D88309DB83086DE69FEB44B
          D335774C41815894D4A80494142C05BE737FD112D4B4C77A50F8BA54082A719E
          A40B69597A367E67A5A5DA3C0775942855E913B2DA8FADB9B462F4B26C9747A7
          DF2F4CA1975ADF0B39557285E26BF97878B1CE8D6D30CD2250ABDA340BD40030
          635B7F02FC222BC6D7C5C74C142A1978BD09B69BF592ECA69ACAC0538EDD994B
          23AF0BD284BD9B8BCB8678FBF0410376B0179445402273A22937273101AE7D5B
          719989294E804B123122BC78BF2D77D8FEE81B108681D03337631AEF254F3393
          B825084430233B66503803A0BB840AE692F893314C854C3CD929C719235E981F
          72DB30C78559FEF88DE5CC040161681445848B9A4A284CB75707BCC2322E62BD
          C4077DE6E4DEF31C3B3704670222C12041C0A06499A0420AFE54F3DF9EB4BB11
          E020F2066A063707E727F715B75E04A08F29174B25D9FF57711362004FF3BC70
          71A97F824182801036A9803C789CC0C5E1F7CA418A841F4982E507AC50ACBAD6
          00076431B471E30CC825487B30A6E05A28CAB90703FE10F5A102FF43817F011F
          9313707087A48A0000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000006054944415478DAC457694C5457143E6FE631FB80031411
          21330D2210624405A2916AD3A6A10808B8B5D66048254DFF7549FCD7D8A6ED8F
          C63426FD659A68D5D812A354D33699569640058A8209D5446301171832800CC8
          ECFBBC7E77B60E159C47D73B39F3E6BD79F77CDF39E7DE73CEE50441A0FF7370
          4D4D4DA25EDCB3674F012E7B21DB2106883EE16F336412D207315EBE7C79508C
          CE73E7CE112F02B80E9716AD56FBF2DAB56BF9F4F4745EAD56734AA55272F6EC
          596A6E6E268FC7B3DEED76AF9B9B9B7B617A7AFA28E60C63CE691039934CFFB2
          041A1B1BB7306080356DDCB8519E9191C1B370C54216080428140A51AF659EBC
          4288CB96CBA57ABD5E9A9F9F2FB3D96CDB6EDDBAB5093A76E1D55357AE5CB9BA
          1C8E64A9870D0D0D87241249776969E991F9F979B5542AE583C1601830268C48
          5D5D1D8DB85C74C7EEA42E10F96AD24C17CC53F4C0E99298CD6655595959835C
          2E6F83BEF74513C0CB47552AD597959595AABCBCBC94A2A2221A1B1BA344EB63
          C36EB7930062F181BF1F7BFD64BCF71B5956AF2119BCB663C70E555A5ADAC7D0
          FB495202F5F5F587140AC531068E984B99D58585858410C40924CAF1E3C7C967
          B70177F1476D305040AFA74BD38F692A1892307DA9A9A9EF41FFD1443CA6234E
          60F7EEDD2570FBC98A8A0AA54C26E396B278A5C38750FD306BA1FB6E0FB775EB
          5615F41E03CEDE253D00B0231B366C5080A93431CECF92A8D7235FCF900EAC8F
          2782C031E318CE53046A6B6BAB341ACDDB43434329232323A2C0E3DE11C12028
          84A86DF857EAEAEA926237BD08BC964504A0AC05D6A760C1D0ECECECBF92F1AC
          0E07656D2967EB498EDB13353535D23081EAEAEA5C2CBCEACCCC4C5EA7D311DC
          24CAFAC41088116DC17A1AE17952A8541260B13057860940511DCB70FFC4A24B
          36DC08ADC9E3A59C9C9C1460D58733217E54222ED258DC573CD89C154C7BE472
          53193C00AC9D310245588092BFEA81888BC5CF9BF6F948A54B93701C57D0DADA
          2A63C0394897DC7F55961DD1CC19C5CCE4E17A35AA16E7F57AA9AAAA8A50ED56
          A4D063B19054AD11F56E08056CACFD27BAA85B45C8371CB0152C0436A4480DB2
          20174B8F624610EFF921775ABF26C3FE0394BAAE20E91C092F25434D2DEDCBC9
          26A3D10828C1C34260463D5F91FF1978FB8295F4FBF61362498F2E5D24DBD8A8
          A8B94A89249CE8D03F300216466014552D14B33E990430B9FD89954C5E1F8ACE
          F36478FD609C84152492E583AC149E55D1100ADD9DC3870FFB18816E743101D1
          E00B11F098468D1E245E8B9018679E181D7D26833CB99C2C160B9C280CC41291
          7172723220C6ED1D561B4DA2DEFF79680C0924DA960F075B6579B21432994C58
          3EC277E167D7AE5D333B1C8EEFA7A6A6024EA793D04A2D6979E7822D6CB9B0CC
          87F500FA45244616FDEF9878440614250FDC8F6E6918B83FC7FB01FC38353C3C
          ECEBE8E8201EF99A2D9244CBBBAC769A40024936348B485C22C7C3077FB4DF3E
          3FCDF5F7D1CD9B377DC03BBDA81AF6F7F777A3913C595252E22B2E2E0E2B885B
          0EB74F24C43C9968F42071E0202957AF26455676FC79D5A652DA56511140B5FD
          117867966A489817BC68428311F088E5E10527BAE6454463D0537EF39BC4AB94
          E1FB12A5827243C110ACF7309C253BA28181817BD81A6FF5F6F6BA9117421664
          2DB3DFFFB7536F31C0372B64425F5F1FB6BEFB03E018976D4AAF5FBF7E012F7D
          D8D9D9E956B89CA15D695AC28AA185BB7757E403FBFD31F29826A852A3A64DBC
          54E8E9EE76C1B39F43FF1749DBF21B376E9CC06E7817ED93CB3631E1CF328D53
          45C13A9271DC53D6F9ADD6A7CF7A9092DC5CCA0601D59C25D0DEDEEE04F8A7D0
          FB91E883095E3EE5F3F9B6A3473C892DE1CAE72870305D47AFA46AA95021A74C
          EC14140F9AFDA59FE420C6EE0D3219EDD46AE88D0C1D6D56298368ADDD70FBB7
          2E97AB11FA3E5BF1D16C7070F0362EEF9497971B7B7A7A5A705879951D54F2D7
          AC919628149234D4F43690D997BE8A9047426EB74B98197F18E8181F0FE07E88
          1DC960C037A24FC7E7CF9F57449FA544451625C89A481E7D7D1EE425F473DB51
          399F032103B62B4B1882DFEF37C152C7CCCCCC6D805E05F9872C42AC5AB36324
          C41BBDFAA2CFC3AB1BF33CBF0B3000049E445DBF8BD3690000000049454E44AE
          426082}
      end>
    Left = 24
    Top = 720
    Bitmap = {}
  end
  object dxFloatDockSite1: TdxFloatDockSite
    Left = 0
    Top = 0
    Width = 328
    Height = 4
    Visible = False
    FloatLeft = 1063
    FloatTop = 849
    DockType = 1
    OriginalWidth = 328
    OriginalHeight = 0
    object dxDockPanel1: TdxDockPanel
      Left = 0
      Top = 0
      Width = 328
      Height = 4
      AllowFloating = True
      AutoHide = False
      Caption = 'dxDockPanel1'
      DockType = 1
      OriginalWidth = 328
      OriginalHeight = 0
    end
  end
end