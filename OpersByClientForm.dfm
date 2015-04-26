object frmOpersByClient: TfrmOpersByClient
  Left = 0
  Top = 0
  Caption = #1054#1087#1077#1088#1072#1094#1110#1111' '#1087#1086' '#1082#1083#1110#1077#1085#1090#1091
  ClientHeight = 432
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 177
    Top = 0
    Width = 561
    Height = 432
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = #1086#1087#1077#1088#1072#1094#1110#1103'ID'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clients_id'
        Title.Caption = #1082#1083#1110#1077#1085#1090'ID'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dopinfo'
        Title.Caption = 'dopinfo/'#1055#1030#1041
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'opkas_id'
        Title.Caption = #1086#1087#1077#1088#1082#1072#1089#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kasirID'
        Title.Caption = #1082#1072#1089#1080#1088
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'operdata'
        Title.Caption = #1076#1072#1090#1072
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kassa'
        Title.Caption = #1089#1080#1089#1090#1077#1084#1072
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'opername'
        Title.Caption = #1086#1087#1077#1088#1072#1094#1110#1103
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sum'
        Title.Caption = #1091#1084#1072
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'currency'
        Title.Caption = #1074#1072#1083#1102#1090#1072
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sumUAH'
        Title.Caption = #1075#1088#1085
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kvit'
        Title.Caption = #1082#1074#1110#1090#1072#1085#1094#1110#1103
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mtcn'
        Width = 99
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 177
    Height = 432
    Align = alLeft
    Caption = ' '#1060#1110#1083#1100#1090#1088' '
    TabOrder = 1
    object Label6: TLabel
      Left = 10
      Top = 89
      Width = 47
      Height = 13
      Caption = #1050#1083#1110#1077#1085#1090' ID'
    end
    object Label4: TLabel
      Left = 10
      Top = 16
      Width = 85
      Height = 13
      Caption = #1055#1077#1088#1110#1086#1076' '#1086#1087#1077#1088#1072#1094#1110#1081':'
    end
    object Label5: TLabel
      Left = 10
      Top = 35
      Width = 5
      Height = 13
      Caption = #1079
    end
    object Label1: TLabel
      Left = 10
      Top = 62
      Width = 12
      Height = 13
      Caption = #1087#1086
    end
    object Edit1: TEdit
      Left = 10
      Top = 108
      Width = 129
      Height = 21
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 17
      Top = 135
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
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object Button1: TButton
      Left = 137
      Top = 106
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 2
      OnClick = Button1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 34
      Top = 35
      Width = 105
      Height = 21
      Date = 42056.894218275460000000
      Time = 42056.894218275460000000
      TabOrder = 3
    end
    object DateTimePicker2: TDateTimePicker
      Left = 34
      Top = 62
      Width = 105
      Height = 21
      Date = 42056.894218275460000000
      Time = 42056.894218275460000000
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 145
      Top = 110
      Width = 17
      Height = 17
      Hint = #1055#1086#1074#1085#1077' '#1089#1087#1110#1074#1087#1072#1076#1072#1085#1085#1103
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
  end
  object DataSource1: TDataSource
    Left = 479
    Top = 346
  end
end
