object fInstituteOfHigherEducation: TfInstituteOfHigherEducation
  Left = 218
  Top = 121
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' - '#1054#1073#1097#1077#1074#1091#1079#1086#1074#1089#1082#1080#1077
  ClientHeight = 512
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 471
    Width = 784
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 471
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 323
      Top = 0
      Width = 398
      Height = 471
      Align = alLeft
      TabOrder = 1
      DesignSize = (
        398
        471)
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 64
        Height = 13
        Caption = #1060#1072#1082#1091#1083#1100#1090#1077#1090#1099
      end
      object sbFacultyAdd: TSpeedButton
        Left = 308
        Top = 431
        Width = 84
        Height = 34
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
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
        OnClick = sbFacultyAddClick
      end
      object dbgFaculties: TDBGridEh
        Left = 8
        Top = 27
        Width = 384
        Height = 398
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataGrouping.GroupLevels = <>
        DataSource = DM.DSFaculties
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Tahoma'
        FooterFont.Style = []
        ImeMode = imDisable
        ParentFont = False
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Visible = False
          end
          item
            Alignment = taLeftJustify
            EditButtons = <>
            FieldName = 'Department'
            Footers = <>
            KeyList.Strings = (
              '1'
              '2')
            PickList.Strings = (
              #1044#1054
              #1054#1047#1054)
            Title.Alignment = taLeftJustify
            Title.Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077
            Width = 45
            WordWrap = True
          end
          item
            EditButtons = <>
            FieldName = 'FacultyName'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 182
          end
          item
            EditButtons = <>
            FieldName = 'FacultyShortName'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'DeanNameF'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'DeanNameI'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'DeanNameO'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'DeanNameS'
            Footers = <>
            Title.Caption = #1060#1048#1054' '#1076#1077#1082#1072#1085#1072
            Width = 115
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object rgDepartment: TRadioGroup
        Left = 6
        Top = 431
        Width = 91
        Height = 34
        Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          #1044#1054
          #1054#1047#1054)
        TabOrder = 1
      end
      object gbFacultyName: TGroupBox
        Left = 101
        Top = 431
        Width = 116
        Height = 34
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        TabOrder = 2
        object eFacultyName: TEdit
          Left = 2
          Top = 15
          Width = 112
          Height = 17
          Align = alClient
          TabOrder = 0
          OnKeyUp = eFacultyNameKeyUp
          ExplicitHeight = 21
        end
      end
      object GroupBox1: TGroupBox
        Left = 221
        Top = 431
        Width = 83
        Height = 34
        Caption = #1057#1086#1082#1088#1072#1097#1077#1085#1080#1077
        TabOrder = 3
        object eFacultyShortName: TEdit
          Left = 2
          Top = 15
          Width = 79
          Height = 17
          Align = alClient
          TabOrder = 0
          OnKeyUp = eFacultyShortNameKeyUp
          ExplicitHeight = 21
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 323
      Height = 471
      Align = alLeft
      TabOrder = 0
      DesignSize = (
        323
        471)
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 63
        Height = 13
        Caption = #1055#1088#1086#1088#1077#1082#1090#1086#1088#1099
      end
      object DBGridEh2: TDBGridEh
        Left = 8
        Top = 27
        Width = 309
        Height = 118
        AllowedOperations = [alopUpdateEh]
        AllowedSelections = [gstRecordBookmarks]
        Anchors = [akLeft, akTop, akRight]
        DataGrouping.GroupLevels = <>
        DataSource = DM.dsDepartmentInfo
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Tahoma'
        FooterFont.Style = []
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGridEh2CellClick
        OnKeyUp = DBGridEh2KeyUp
        Columns = <
          item
            EditButtons = <>
            FieldName = 'id'
            Footers = <>
            KeyList.Strings = (
              '1'
              '2')
            PickList.Strings = (
              #1044#1054
              #1054#1047#1054)
            Title.Alignment = taLeftJustify
            Title.Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077
            Width = 45
            WordWrap = True
          end
          item
            EditButtons = <>
            FieldName = 'prorectorNameF'
            Footers = <>
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'prorectorNameI'
            Footers = <>
            Title.Caption = #1048#1084#1103
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'prorectorNameO'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'prorectorNameS'
            Footers = <>
            Visible = False
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel5: TPanel
      Left = 721
      Top = 0
      Width = 63
      Height = 471
      Align = alClient
      TabOrder = 2
    end
  end
end
