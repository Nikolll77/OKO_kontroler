object frmGetClentId: TfrmGetClentId
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1054#1073#1077#1088#1110#1090#1100' '#1082#1083#1110#1077#1085#1090#1072
  ClientHeight = 414
  ClientWidth = 730
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 730
    Height = 379
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = BitBtn2Click
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'resident'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dok'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'country'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'info'
        Width = 162
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 379
    Width = 730
    Height = 35
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 378
    ExplicitWidth = 738
    object Label1: TLabel
      Left = 16
      Top = 9
      Width = 123
      Height = 13
      Caption = #1060#1110#1083#1100#1090#1088': id/'#1055#1030#1041'/'#1076#1086#1082#1091#1084#1077#1085#1090
    end
    object BitBtn2: TBitBtn
      Left = 608
      Top = 6
      Width = 114
      Height = 25
      Caption = #1054#1073#1088#1072#1090#1080
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
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object Edit1: TEdit
      Left = 145
      Top = 6
      Width = 146
      Height = 21
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object CheckBox1: TCheckBox
      Left = 275
      Top = 8
      Width = 17
      Height = 17
      Hint = #1055#1086#1074#1085#1077' '#1089#1087#1110#1074#1087#1072#1076#1072#1085#1085#1103
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 297
      Top = 4
      Width = 74
      Height = 25
      Caption = #1055#1086#1096#1091#1082
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
  end
  object DataSource1: TDataSource
    Left = 472
    Top = 199
  end
end
