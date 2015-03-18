object frmLimitsCheck: TfrmLimitsCheck
  Left = 0
  Top = 0
  Caption = #1057#1091#1084#1080' '#1087#1077#1088#1077#1082#1072#1079#1110#1074' '#1087#1086' '#1082#1083#1110#1077#1085#1090#1072#1084
  ClientHeight = 382
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 89
    Height = 13
    Caption = #1055#1077#1088#1110#1086#1076' '#1086#1087#1077#1088#1072#1094#1110#1081' '#1079
  end
  object Label2: TLabel
    Left = 215
    Top = 8
    Width = 12
    Height = 13
    Caption = #1087#1086
  end
  object Label3: TLabel
    Left = 376
    Top = 6
    Width = 31
    Height = 13
    Caption = #1089#1091#1084#1072'>'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 104
    Top = 5
    Width = 105
    Height = 21
    Date = 42056.894218275460000000
    Time = 42056.894218275460000000
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 27
    Width = 722
    Height = 318
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'clients_id'
        Title.Caption = 'id'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1060#1030#1054
        Width = 289
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ser'
        Title.Caption = #1089#1077#1088
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num'
        Title.Caption = #1085#1086#1084#1077#1088
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'koloper'
        Title.Caption = #1086#1087#1077#1088#1072#1094#1110#1081
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kolkass'
        Title.Caption = #1082#1072#1089
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'summa'
        Title.Caption = #1089#1091#1084#1084#1072
        Width = 115
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 318
    Top = 349
    Width = 114
    Height = 25
    Caption = #1087#1077#1088#1077#1075#1083#1103#1076
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object DateTimePicker2: TDateTimePicker
    Left = 233
    Top = 5
    Width = 105
    Height = 21
    Date = 42056.894218275460000000
    Time = 42056.894218275460000000
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 411
    Top = 2
    Width = 134
    Height = 21
    NumbersOnly = True
    TabOrder = 4
    Text = '0'
  end
  object DataSource1: TDataSource
    Left = 240
    Top = 112
  end
end
