object fviborstudente: Tfviborstudente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1042#1099#1073#1086#1088' '#1089#1090#1091#1076#1077#1085#1090#1072
  ClientHeight = 464
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TTVmain: TRzTreeView
    Left = 0
    Top = 0
    Width = 423
    Height = 465
    SelectionPen.Color = clBtnShadow
    Align = alTop
    Color = clSkyBlue
    DisabledColor = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = fMain.ILmain
    Indent = 19
    ParentFont = False
    TabOrder = 0
    OnChange = TTVmainChange
  end
  object Button1: TButton
    Left = 298
    Top = 405
    Width = 119
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 298
    Top = 436
    Width = 119
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
end