object fResizePhoto: TfResizePhoto
  Left = 1141
  Top = 263
  Caption = #1042#1099#1076#1077#1083#1080#1090#1077' '#1085#1091#1078#1085#1099#1081'  '#1091#1095#1072#1089#1090#1086#1082
  ClientHeight = 356
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 438
    Height = 356
    Align = alClient
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object Image1: TImageEn
      Left = 6
      Top = 6
      Width = 426
      Height = 344
      ParentCtl3D = False
      ScrollBars = ssNone
      SelectionOptions = [iesoAnimated, iesoSizeable, iesoMoveable, iesoMarkOuter]
      AutoFit = True
      BackgroundStyle = iebsChessboard
      ImageEnVersion = '3.1.2'
      EnableInteractionHints = True
      Align = alClient
      TabOrder = 0
      OnMouseDown = Image1MouseDown
      OnMouseMove = Image1MouseMove
      OnMouseUp = Image1MouseUp
    end
  end
  object Panel2: TPanel
    Left = 438
    Top = 0
    Width = 130
    Height = 356
    Align = alRight
    TabOrder = 1
    DesignSize = (
      130
      356)
    object Button1: TButton
      Left = 16
      Top = 163
      Width = 91
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 16
      Top = 325
      Width = 91
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
    object ImagePreview: TImageEn
      Left = 6
      Top = 6
      Width = 113
      Height = 151
      ParentCtl3D = False
      ScrollBars = ssNone
      SelectionOptions = []
      AutoFit = True
      ImageEnVersion = '3.1.2'
      EnableInteractionHints = True
      TabOrder = 2
    end
  end
end
