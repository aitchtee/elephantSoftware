object fmMain: TfmMain
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'fmMain'
  ClientHeight = 394
  ClientWidth = 811
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOrders: TPanel
    Left = 626
    Top = 41
    Width = 185
    Height = 289
    Align = alRight
    DockSite = True
    TabOrder = 0
    OnDragDrop = pnlOrdersDragDrop
    OnDragOver = pnlOrdersDragOver
    object sboxOrders: TScrollBox
      Left = 1
      Top = 1
      Width = 183
      Height = 287
      HorzScrollBar.Visible = False
      Align = alClient
      DockSite = True
      TabOrder = 0
      OnMouseWheelDown = sboxOrdersMouseWheelDown
      OnMouseWheelUp = ScrollBox1MouseWheelUp
    end
  end
  object pnlDrivers: TPanel
    Left = 0
    Top = 41
    Width = 626
    Height = 289
    Align = alClient
    DockSite = True
    TabOrder = 1
    OnDragDrop = pnlOrdersDragDrop
    OnDragOver = pnlOrdersDragOver
    object sboxDrivers: TScrollBox
      Left = 1
      Top = 1
      Width = 295
      Height = 287
      HorzScrollBar.Visible = False
      Align = alClient
      TabOrder = 0
    end
    object sboxStatus: TScrollBox
      Left = 296
      Top = 1
      Width = 329
      Height = 287
      HorzScrollBar.Visible = False
      Align = alRight
      DockSite = True
      TabOrder = 1
      OnDragDrop = pnlOrdersDragDrop
      OnDragOver = pnlOrdersDragOver
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 41
    Align = alTop
    TabOrder = 2
    object lbDrivers: TLabel
      Left = 88
      Top = 14
      Width = 70
      Height = 19
      Caption = #1042#1086#1076#1080#1090#1077#1083#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbStatus: TLabel
      Left = 416
      Top = 14
      Width = 49
      Height = 19
      Caption = #1057#1090#1072#1090#1091#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbOrders: TLabel
      Left = 656
      Top = 14
      Width = 51
      Height = 19
      Caption = #1047#1072#1082#1072#1079#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnlControl: TPanel
    Left = 0
    Top = 330
    Width = 811
    Height = 64
    Align = alBottom
    BorderWidth = 5
    BorderStyle = bsSingle
    ParentBackground = False
    TabOrder = 3
    object btnAddOrder: TButton
      Left = 619
      Top = 11
      Width = 137
      Height = 38
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079
      TabOrder = 0
      OnClick = btnAddOrderClick
    end
    object Button1: TButton
      Left = 504
      Top = 4
      Width = 75
      Height = 36
      Caption = 'test'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 88
    Top = 89
    object N4: TMenuItem
      Caption = #1044#1072#1085#1085#1099#1077
      object N5: TMenuItem
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      end
      object miAddOrder: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079
        OnClick = miAddOrderClick
      end
      object miAddAddress: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1072#1076#1088#1077#1089
        OnClick = miAddAddressClick
      end
    end
    object N1: TMenuItem
      Caption = #1048#1089#1087#1086#1083#1085#1103#1077#1084#1099#1077
    end
    object N2: TMenuItem
      Caption = #1048#1089#1087#1086#1083#1085#1077#1085#1085#1099#1077
    end
    object N3: TMenuItem
      Caption = #1054#1090#1084#1077#1085#1077#1085#1085#1099#1077
    end
    object miClose: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = miCloseClick
    end
  end
end
