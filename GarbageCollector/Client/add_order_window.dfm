object Form_add_order: TForm_add_order
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1082#1072#1079
  ClientHeight = 514
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 144
    Top = 258
    Width = 109
    Height = 16
    Caption = #1040#1076#1088#1077#1089' '#1076#1086#1089#1090#1072#1074#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 168
    Top = 88
    Width = 50
    Height = 16
    Caption = #1058#1086#1074#1072#1088#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object lbClientName: TLabel
    Left = 48
    Top = 8
    Width = 77
    Height = 18
    Caption = #1047#1072#1082#1072#1079#1095#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object lbPhone: TLabel
    Left = 24
    Top = 59
    Width = 123
    Height = 19
    Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 168
    Top = 39
    Width = 170
    Height = 16
    Caption = #1055#1088#1080#1084#1077#1088' '#1085#1086#1084#1077#1088#1072': 9181234567'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbSearch: TLabel
    Left = 24
    Top = 275
    Width = 40
    Height = 18
    Caption = #1055#1086#1080#1089#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid_from_address: TDBGrid
    Left = 24
    Top = 110
    Width = 329
    Height = 120
    DataSource = DataSource_Goods
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid_to_address: TDBGrid
    Left = 24
    Top = 299
    Width = 329
    Height = 120
    DataSource = DataSource_to_address
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'STREET'
        Title.Caption = #1059#1083#1080#1094#1072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BUILDING'
        Title.Caption = #1044#1086#1084
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APARTMENT'
        Title.Caption = #1050#1074#1072#1088#1090#1080#1088#1072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 60
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 199
    Top = 481
    Width = 75
    Height = 25
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Kind = bkOK
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object cbTimeOfDelivery: TCheckBox
    Left = 26
    Top = 450
    Width = 121
    Height = 17
    Alignment = taLeftJustify
    Caption = #1042#1088#1077#1084#1103' '#1076#1086#1089#1090#1072#1074#1082#1080
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 5
    OnClick = cbTimeOfDeliveryClick
  end
  object tpTimeOfDelivery: TTimePicker
    Left = 26
    Top = 473
    Width = 121
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 6
    Time = 43825.554466203710000000
    TimeFormat = 'HH:mm'
  end
  object edClientName: TEdit
    Left = 168
    Top = 8
    Width = 185
    Height = 21
    TabOrder = 0
    OnChange = edClientNameChange
  end
  object edPhone: TEdit
    Left = 168
    Top = 61
    Width = 185
    Height = 21
    TabOrder = 1
    OnChange = edClientNameChange
  end
  object BitBtn2: TBitBtn
    Left = 280
    Top = 481
    Width = 66
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object btnShowMenu: TButton
    Left = 259
    Top = 227
    Width = 94
    Height = 25
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1084#1077#1085#1102
    TabOrder = 8
    OnClick = btnShowMenuClick
  end
  object edSearch: TEdit
    Left = 70
    Top = 278
    Width = 283
    Height = 21
    TabOrder = 9
    OnChange = edSearchChange
  end
  object btnAddAddress: TButton
    Left = 208
    Top = 418
    Width = 145
    Height = 24
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
    TabOrder = 10
    OnClick = btnAddAddressClick
  end
  object btnRefresh: TButton
    Left = 24
    Top = 227
    Width = 75
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 11
    OnClick = btnRefreshClick
  end
  object DataSource_Goods: TDataSource
    OnDataChange = DataSource_GoodsDataChange
    Left = 240
    Top = 160
  end
  object DataSource_to_address: TDataSource
    DataSet = dm.TAddress_Out
    Left = 152
    Top = 336
  end
end
