object fcreateorder: Tfcreateorder
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1087#1088#1080#1082#1072#1079#1072
  ClientHeight = 308
  ClientWidth = 270
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 28
    Top = 32
    Width = 81
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1088#1080#1082#1072#1079#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 28
    Top = 67
    Width = 58
    Height = 13
    Caption = #1055#1088#1080#1082#1072#1079' '#1086#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 28
    Top = 104
    Width = 60
    Height = 13
    Caption = #1055#1088#1080#1082#1072#1079' '#1076#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 28
    Top = 149
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
  object Label5: TLabel
    Left = 28
    Top = 192
    Width = 58
    Height = 13
    Caption = #1055#1088#1080#1082#1072#1079' '#1086#1073
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 28
    Top = 235
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
  object Button1: TButton
    Left = 169
    Top = 277
    Width = 72
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBLookupComboboxEh1: TDBLookupComboboxEh
    Left = 121
    Top = 232
    Width = 121
    Height = 21
    EditButtons = <>
    KeyField = 'id'
    ListField = 'reason'
    ListSource = DM.DSReason
    TabOrder = 1
    Visible = True
  end
  object DBLookupComboboxEh2: TDBLookupComboboxEh
    Left = 120
    Top = 189
    Width = 121
    Height = 21
    EditButtons = <>
    KeyField = 'id'
    ListField = 'typeorder'
    ListSource = DM.DSTypeOrder
    TabOrder = 2
    Visible = True
  end
  object DateTimePicker1: TDateTimePicker
    Left = 120
    Top = 24
    Width = 122
    Height = 21
    Date = 0.682377025463210900
    Time = 0.682377025463210900
    TabOrder = 3
  end
  object DateTimePicker2: TDateTimePicker
    Left = 120
    Top = 51
    Width = 122
    Height = 21
    Date = 41079.682377025470000000
    Time = 41079.682377025470000000
    TabOrder = 4
  end
  object DateTimePicker3: TDateTimePicker
    Left = 120
    Top = 96
    Width = 122
    Height = 21
    Date = 41079.682377025470000000
    Time = 41079.682377025470000000
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 121
    Top = 146
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
