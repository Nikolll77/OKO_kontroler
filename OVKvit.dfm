object frmOvKvit: TfrmOvKvit
  Left = 0
  Top = 0
  Caption = 'frmOvKvit'
  ClientHeight = 618
  ClientWidth = 675
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
    Width = 99
    Height = 13
    Caption = #1054#1087#1077#1088#1072#1094#1110#1081#1085#1080#1081' '#1076#1077#1085#1100' :'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 111
    Top = 6
    Width = 105
    Height = 21
    Date = 42056.894218275460000000
    Time = 42056.894218275460000000
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 27
    Width = 649
    Height = 190
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
        FieldName = 'id'
        Title.Caption = #8470
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = #1085#1072#1079#1074#1072' '#1082#1072#1089#1080
        Width = 287
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres'
        Title.Caption = #1072#1076#1088#1077#1089#1072
        Width = 236
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 424
    Top = 223
    Width = 233
    Height = 25
    Caption = #1055#1077#1088#1077#1083#1110#1082' '#1086#1087#1077#1088#1072#1094#1110#1111' '#1087#1086' '#1082#1072#1089#1110
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
  object DBGrid2: TDBGrid
    Left = 8
    Top = 254
    Width = 649
    Height = 325
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'clients_id'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'operdata'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'opername'
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sum'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'currency'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kvit'
        Width = 85
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 512
    Top = 585
    Width = 145
    Height = 25
    Caption = #1050#1074#1110#1090#1072#1085#1094#1110#1103
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
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object DataSource1: TDataSource
    Left = 136
    Top = 104
  end
  object frxReport1: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41214.727973310200000000
    ReportOptions.LastChange = 42161.473527800900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 312
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.001250000000000000
      RightMargin = 10.001250000000000000
      TopMargin = 10.001250000000000000
      BottomMargin = 10.001250000000000000
      Frame.Style = fsDash
      object Memo1: TfrxMemoView
        Left = 274.471763670000000000
        Top = 3.001332480000000000
        Width = 78.500838100000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          #1055#1088#1080#1084#1110#1088#1085#1080#1082' '#8470'1')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 0.562874080000000000
        Top = 44.118158230000000000
        Width = 271.846310000000000000
        Height = 20.077610810000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          
            '('#1085#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103' '#1090#1072' '#1084#1110#1089#1094#1077#1079#1085#1072#1093#1086#1076#1078#1077#1085#1085#1103' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1086#1075#1086' '#1087#1110#1076#1088#1086#1079#1076#1110#1083#1091' '#1091#1087#1086#1074#1085#1086 +
            #1074#1072#1078#1077#1085#1086#1075#1086' '#1073#1072#1085#1082#1091' / '#1091#1087#1086#1074#1085#1086#1074#1072#1078#1077#1085#1086#1111' '#1092#1110#1085#1072#1085#1089#1086#1074#1086#1111' '#1091#1089#1090#1072#1085#1086#1074#1080' / '#1085#1072#1094#1110#1086#1085#1072#1083#1100#1085#1086 +
            #1075#1086' '#1086#1087#1077#1088#1072#1090#1086#1088#1072' '#1087#1086#1096#1090#1086#1074#1086#1075#1086' '#1079#1074#8217#1103#1079#1082#1091')')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 97.659140220000000000
        Top = 66.898000080000000000
        Width = 83.716589500000000000
        Height = 13.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          #1050#1042#1048#1058#1040#1053#1062#1030#1071' '#8470)
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 181.384614720000000000
        Top = 66.993063780000000000
        Width = 52.140765700000000000
        Height = 13.896650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[kvit]')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 0.496277920000000000
        Top = 82.050982180000000000
        Width = 350.106803700000000000
        Height = 14.497650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          #1087#1088#1086' '#1079#1076#1110#1081#1089#1085#1077#1085#1085#1103' '#1074#1072#1083#1102#1090#1085#1086'-'#1086#1073#1084#1110#1085#1085#1086#1111' '#1086#1087#1077#1088#1072#1094#1110#1111'*')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 0.496277920000000000
        Top = 96.646269780000000000
        Width = 289.423931590000000000
        Height = 14.499650000000000000
        ShowHint = False
        DisplayFormat.FormatStr = 'mm.dd.yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          #1044#1072#1090#1072' '#1090#1072' '#1095#1072#1089' '#1079#1076#1110#1081#1089#1085#1077#1085#1085#1103' '#1086#1087#1077#1088#1072#1094#1110#1111': [dt]')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 0.497277920000000000
        Top = 111.213211680000000000
        Width = 84.486666800000000000
        Height = 14.497650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          #1053#1072#1079#1074#1072' '#1086#1087#1077#1088#1072#1094#1110#1111':')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 84.978232320000000000
        Top = 111.252580880000000000
        Width = 265.683538250000000000
        Height = 14.498650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[nameoper]')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 85.131432860000000000
        Top = 125.353259520000000000
        Width = 265.458554960000000000
        Height = 11.603163300000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '('#1082#1091#1087#1110#1074#1083#1103', '#1087#1088#1086#1076#1072#1078', '#1079#1074#1086#1088#1086#1090#1085#1080#1081' '#1086#1073#1084#1110#1085', '#1082#1086#1085#1074#1077#1088#1090#1072#1094#1110#1103' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '#1074#1072#1083#1102#1090#1080')')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 7.979747320000000000
        Top = 140.678954480000000000
        Width = 115.932074400000000000
        Height = 36.802363700000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          #1055#1088#1080#1081#1085#1103#1090#1086' '
          #1085#1072#1079#1074#1072' '#1074#1072#1083#1102#1090#1080' '#1090#1072' '#1089#1091#1084#1072)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo16: TfrxMemoView
        Left = 123.616617020000000000
        Top = 140.641159180000000000
        Width = 64.183577100000000000
        Height = 37.308300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          #1050#1091#1088#1089', '#1082#1088#1086#1089'-'#1082#1091#1088#1089)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo17: TfrxMemoView
        Left = 187.830831720000000000
        Top = 140.438857910000000000
        Width = 160.285559300000000000
        Height = 16.243861880000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          #1044#1086' '#1074#1080#1076#1072#1095#1110)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo18: TfrxMemoView
        Left = 188.356096520000000000
        Top = 157.004208680000000000
        Width = 159.720499200000000000
        Height = 20.585220200000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          #1053#1072#1079#1074#1072' '#1074#1072#1083#1102#1090#1080' '#1090#1072' '#1089#1091#1084#1072)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo26: TfrxMemoView
        Left = 1.934739460000000000
        Top = 195.159048130000000000
        Width = 346.141951700000000000
        Height = 14.497650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          #1057#1091#1084#1072' '#1082#1086#1084#1110#1089#1110#1111':')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 1.965873660000000000
        Top = 233.873920850000000000
        Width = 346.141951700000000000
        Height = 14.499650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          #1050#1083#1110#1108#1085#1090': [client]')
        ParentFont = False
      end
      object Line1: TfrxLineView
        Left = 1.585828700000000000
        Top = 436.020783100000000000
        Width = 716.976841000000000000
        ShowHint = False
        Frame.Style = fsDash
        Frame.Typ = [ftTop]
        Frame.Width = 0.100000000000000000
      end
      object Line2: TfrxLineView
        Left = 353.273280410000000000
        Top = 24.175470150000000000
        Height = 410.116518400000000000
        ShowHint = False
        Frame.Style = fsDash
        Frame.Typ = [ftLeft]
        Frame.Width = 0.100000000000000000
      end
      object Memo29: TfrxMemoView
        Left = 0.800000000000000000
        Top = 258.901535490000000000
        Width = 348.392799140000000000
        Height = 14.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[docum] '#1089#1077#1088#1110#1103' [passer] '#8470' [pasnum]')
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Left = 0.572585890000000000
        Top = 273.266685790000000000
        Width = 348.115230660000000000
        Height = 11.421482400000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          
            '('#1079#1072#1079#1085#1072#1095#1072#1102#1090#1100#1089#1103' '#1076#1086#1076#1072#1090#1082#1086#1074#1110' '#1088#1077#1082#1074#1110#1079#1080#1090#1080', '#1085#1077#1086#1073#1093#1110#1076#1085#1110' '#1076#1083#1103' '#1087#1088#1086#1074#1077#1076#1077#1085#1085#1103' '#1074#1072#1083#1102 +
            #1090#1085#1086'-'#1086#1073#1084#1110#1085#1085#1080#1093' '#1086#1087#1077#1088#1072#1094#1110#1081')')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 0.496277920000000000
        Top = 298.616489090000000000
        Width = 226.061393140000000000
        Height = 12.424992600000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          '('#1087#1110#1076#1087#1080#1089' '#1082#1083#1110#1108#1085#1090#1072')')
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 0.800000000000000000
        Top = 338.843395540000000000
        Width = 348.952333670000000000
        Height = 12.064582600000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          
            '('#1087#1110#1076#1087#1080#1089' '#1082#1083#1110#1108#1085#1090#1072'-'#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1072' '#1087#1088#1086#1089#1090#1072#1074#1083#1103#1108#1090#1100#1089#1103' '#1074' '#1088#1072#1079#1110#1085#1072#1076#1072#1085#1085#1103' '#1090#1072#1082#1086#1111' '#1079 +
            #1075#1086#1076#1080')')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 0.992047190000000000
        Top = 368.239698200000000000
        Width = 171.939035640000000000
        Height = 36.158859080000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          
            '('#1087#1110#1076#1087#1080#1089' '#1087#1088#1072#1094#1110#1074#1085#1080#1082#1072' '#1091#1087#1086#1074#1085#1086#1074#1072#1078#1077#1085#1086#1075#1086' '#1073#1072#1085#1082#1091' /  '#1091#1087#1086#1074#1085#1086#1074#1072#1078#1077#1085#1086#1111' '#1092#1110#1085#1072#1085#1089#1086 +
            #1074#1086#1111' '#1091#1089#1090#1072#1085#1086#1074#1080' / '#1085#1072#1094#1110#1086#1085#1072#1083#1100#1085#1086#1075#1086' '#1086#1087#1077#1088#1072#1090#1086#1088#1072' '#1087#1086#1096#1090#1086#1074#1086#1075#1086' '#1079#1074#8217#1103#1079#1082#1091')')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 0.496277920000000000
        Top = 311.146196810000000000
        Width = 348.793130250000000000
        Height = 27.913297740000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          
            #1053#1072#1076#1072#1102' '#1079#1075#1086#1076#1091' '#1085#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1085#1103' '#1086#1087#1077#1088#1072#1094#1110#1111' '#1079' '#1082#1091#1087#1110#1074#1083#1110' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '#1074#1072#1083#1102#1090#1080' '#1073#1077 +
            #1079' '#1086#1092#1086#1088#1084#1083#1077#1085#1085#1103' '#1076#1086#1074#1110#1076#1082#1080'-certificate '#1079#1072' '#1092#1086#1088#1084#1086#1102' '#8470' 377')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 1.270910940000000000
        Top = 405.590418850000000000
        Width = 350.111561650000000000
        Height = 25.954131180000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          
            '* '#1047#1076#1110#1081#1089#1085#1077#1085#1085#1103' '#1086#1087#1077#1088#1072#1094#1110#1111' '#1079' '#1082#1091#1087#1110#1074#1083#1110' '#1091' '#1092#1110#1079#1080#1095#1085#1086#1111' '#1086#1089#1086#1073#1080'-'#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1072' '#1075#1086#1090 +
            #1110#1074#1082#1086#1074#1086#1111' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '#1074#1072#1083#1102#1090#1080' '#1073#1077#1079' '#1086#1092#1086#1088#1084#1083#1077#1085#1085#1103' '#1076#1086#1074#1110#1076#1082#1080'-certificate '#1079#1072' '#1092 +
            #1086#1088#1084#1086#1102' '#8470'377 '#1085#1077' '#1076#1072#1108' '#1087#1110#1076#1089#1090#1072#1074' '#1076#1083#1103' '#1079#1074#1086#1088#1086#1090#1085#1086#1075#1086' '#1086#1073#1084#1110#1085#1091'.')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 289.803970230000000000
        Top = 96.431265500000000000
        Width = 60.231498340000000000
        Height = 14.497650000000000000
        ShowHint = False
        DisplayFormat.FormatStr = 'hh:mm'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        HAlign = haRight
        Memo.UTF8W = (
          '[ttime]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 0.800000000000000000
        Width = 264.083538250000000000
        Height = 45.354330708661400000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '[filia]'
          '[adres]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        Left = 41.400000000000000000
        Top = 248.000000000000000000
        Width = 300.115230660000000000
        Height = 11.421482400000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        Memo.UTF8W = (
          '('#1087#1088#1110#1079#1074#1080#1097#1077', '#1110#1084#39#1103' '#1090#1072' '#1087#1086' '#1073#1072#1090#1100#1082#1086#1074#1110' ('#1079#1072' '#1085#1072#1103#1074#1085#1086#1089#1090#1110') '#1092#1110#1079#1080#1095#1085#1086#1111' '#1086#1089#1086#1073#1080')')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 188.800000000000000000
        Top = 377.000000000000000000
        Width = 160.541951700000000000
        Height = 14.497650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          #1052#1110#1089#1094#1077' '#1076#1083#1103' '#1074#1110#1076#1073#1080#1090#1082#1072' '#1096#1090#1072#1084#1087#1072)
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 632.375485750000000000
        Top = 3.000000000000000000
        Width = 78.500838100000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          #1055#1088#1080#1084#1110#1088#1085#1080#1082' '#8470'2')
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 358.466596160000000000
        Top = 44.220472440944900000
        Width = 271.846310000000000000
        Height = 20.077610810000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          
            '('#1085#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103' '#1090#1072' '#1084#1110#1089#1094#1077#1079#1085#1072#1093#1086#1076#1078#1077#1085#1085#1103' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1086#1075#1086' '#1087#1110#1076#1088#1086#1079#1076#1110#1083#1091' '#1091#1087#1086#1074#1085#1086 +
            #1074#1072#1078#1077#1085#1086#1075#1086' '#1073#1072#1085#1082#1091' / '#1091#1087#1086#1074#1085#1086#1074#1072#1078#1077#1085#1086#1111' '#1092#1110#1085#1072#1085#1089#1086#1074#1086#1111' '#1091#1089#1090#1072#1085#1086#1074#1080' / '#1085#1072#1094#1110#1086#1085#1072#1083#1100#1085#1086 +
            #1075#1086' '#1086#1087#1077#1088#1072#1090#1086#1088#1072' '#1087#1086#1096#1090#1086#1074#1086#1075#1086' '#1079#1074#8217#1103#1079#1082#1091')')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 455.562862300000000000
        Top = 66.896667600000000000
        Width = 83.716589500000000000
        Height = 13.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          #1050#1042#1048#1058#1040#1053#1062#1030#1071' '#8470)
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 539.288336800000000000
        Top = 66.991731300000000000
        Width = 52.140765700000000000
        Height = 13.896650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[kvit]')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 358.400000000000000000
        Top = 82.049649700000000000
        Width = 350.106803700000000000
        Height = 14.497650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          #1087#1088#1086' '#1079#1076#1110#1081#1089#1085#1077#1085#1085#1103' '#1074#1072#1083#1102#1090#1085#1086'-'#1086#1073#1084#1110#1085#1085#1086#1111' '#1086#1087#1077#1088#1072#1094#1110#1111'*')
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 358.400000000000000000
        Top = 96.644937300000000000
        Width = 289.423931590000000000
        Height = 14.499650000000000000
        ShowHint = False
        DisplayFormat.FormatStr = 'mm.dd.yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          #1044#1072#1090#1072' '#1090#1072' '#1095#1072#1089' '#1079#1076#1110#1081#1089#1085#1077#1085#1085#1103' '#1086#1087#1077#1088#1072#1094#1110#1111': [dt]')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 358.401000000000000000
        Top = 111.211879200000000000
        Width = 84.486666800000000000
        Height = 14.497650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          #1053#1072#1079#1074#1072' '#1086#1087#1077#1088#1072#1094#1110#1111':')
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Left = 442.881954400000000000
        Top = 111.251248400000000000
        Width = 265.683538250000000000
        Height = 14.498650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[nameoper]')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 443.035154940000000000
        Top = 125.351927040000000000
        Width = 265.458554960000000000
        Height = 11.603163300000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '('#1082#1091#1087#1110#1074#1083#1103', '#1087#1088#1086#1076#1072#1078', '#1079#1074#1086#1088#1086#1090#1085#1080#1081' '#1086#1073#1084#1110#1085', '#1082#1086#1085#1074#1077#1088#1090#1072#1094#1110#1103' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '#1074#1072#1083#1102#1090#1080')')
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        Left = 365.883469400000000000
        Top = 140.677622000000000000
        Width = 115.932074400000000000
        Height = 36.802363700000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          #1055#1088#1080#1081#1085#1103#1090#1086' '
          #1085#1072#1079#1074#1072' '#1074#1072#1083#1102#1090#1080' '#1090#1072' '#1089#1091#1084#1072)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo40: TfrxMemoView
        Left = 481.520339100000000000
        Top = 140.639826700000000000
        Width = 64.183577100000000000
        Height = 37.308300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          #1050#1091#1088#1089', '#1082#1088#1086#1089'-'#1082#1091#1088#1089)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo41: TfrxMemoView
        Left = 545.734553800000000000
        Top = 140.437525430000000000
        Width = 160.285559300000000000
        Height = 16.243861880000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          #1044#1086' '#1074#1080#1076#1072#1095#1110)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo42: TfrxMemoView
        Left = 546.259818600000000000
        Top = 157.002876200000000000
        Width = 159.720499200000000000
        Height = 20.585220200000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          #1053#1072#1079#1074#1072' '#1074#1072#1083#1102#1090#1080' '#1090#1072' '#1089#1091#1084#1072)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo46: TfrxMemoView
        Left = 360.638461540000000000
        Top = 195.157715650000000000
        Width = 346.141951700000000000
        Height = 14.497650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          #1057#1091#1084#1072' '#1082#1086#1084#1110#1089#1110#1111':')
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        Left = 359.869595740000000000
        Top = 233.872588370000000000
        Width = 346.141951700000000000
        Height = 14.499650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          #1050#1083#1110#1108#1085#1090': [client]')
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Left = 358.703722080000000000
        Top = 258.900203010000000000
        Width = 348.392799140000000000
        Height = 14.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[docum] '#1089#1077#1088#1110#1103' [passer] '#8470' [pasnum]')
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 358.476307970000000000
        Top = 273.265353310000000000
        Width = 348.115230660000000000
        Height = 11.421482400000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          
            '('#1079#1072#1079#1085#1072#1095#1072#1102#1090#1100#1089#1103' '#1076#1086#1076#1072#1090#1082#1086#1074#1110' '#1088#1077#1082#1074#1110#1079#1080#1090#1080', '#1085#1077#1086#1073#1093#1110#1076#1085#1110' '#1076#1083#1103' '#1087#1088#1086#1074#1077#1076#1077#1085#1085#1103' '#1074#1072#1083#1102 +
            #1090#1085#1086'-'#1086#1073#1084#1110#1085#1085#1080#1093' '#1086#1087#1077#1088#1072#1094#1110#1081')')
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        Left = 358.400000000000000000
        Top = 298.615156610000000000
        Width = 226.061393140000000000
        Height = 12.424992600000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          '('#1087#1110#1076#1087#1080#1089' '#1082#1083#1110#1108#1085#1090#1072')')
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        Left = 358.703722080000000000
        Top = 338.842063060000000000
        Width = 348.952333670000000000
        Height = 12.064582600000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          
            '('#1087#1110#1076#1087#1080#1089' '#1082#1083#1110#1108#1085#1090#1072'-'#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1072' '#1087#1088#1086#1089#1090#1072#1074#1083#1103#1108#1090#1100#1089#1103' '#1074' '#1088#1072#1079#1110#1085#1072#1076#1072#1085#1085#1103' '#1090#1072#1082#1086#1111' '#1079 +
            #1075#1086#1076#1080')')
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        Left = 358.895769270000000000
        Top = 368.238365720000000000
        Width = 171.939035640000000000
        Height = 36.158859080000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          
            '('#1087#1110#1076#1087#1080#1089' '#1087#1088#1072#1094#1110#1074#1085#1080#1082#1072' '#1091#1087#1086#1074#1085#1086#1074#1072#1078#1077#1085#1086#1075#1086' '#1073#1072#1085#1082#1091' /  '#1091#1087#1086#1074#1085#1086#1074#1072#1078#1077#1085#1086#1111' '#1092#1110#1085#1072#1085#1089#1086 +
            #1074#1086#1111' '#1091#1089#1090#1072#1085#1086#1074#1080' / '#1085#1072#1094#1110#1086#1085#1072#1083#1100#1085#1086#1075#1086' '#1086#1087#1077#1088#1072#1090#1086#1088#1072' '#1087#1086#1096#1090#1086#1074#1086#1075#1086' '#1079#1074#8217#1103#1079#1082#1091')')
        ParentFont = False
      end
      object Memo53: TfrxMemoView
        Left = 358.400000000000000000
        Top = 311.144864330000000000
        Width = 348.793130250000000000
        Height = 27.913297740000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          
            #1053#1072#1076#1072#1102' '#1079#1075#1086#1076#1091' '#1085#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1085#1103' '#1086#1087#1077#1088#1072#1094#1110#1111' '#1079' '#1082#1091#1087#1110#1074#1083#1110' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '#1074#1072#1083#1102#1090#1080' '#1073#1077 +
            #1079' '#1086#1092#1086#1088#1084#1083#1077#1085#1085#1103' '#1076#1086#1074#1110#1076#1082#1080'-certificate '#1079#1072' '#1092#1086#1088#1084#1086#1102' '#8470' 377')
        ParentFont = False
      end
      object Memo54: TfrxMemoView
        Left = 359.174633020000000000
        Top = 405.589086370000000000
        Width = 350.111561650000000000
        Height = 25.954131180000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          
            '* '#1047#1076#1110#1081#1089#1085#1077#1085#1085#1103' '#1086#1087#1077#1088#1072#1094#1110#1111' '#1079' '#1082#1091#1087#1110#1074#1083#1110' '#1091' '#1092#1110#1079#1080#1095#1085#1086#1111' '#1086#1089#1086#1073#1080'-'#1085#1077#1088#1077#1079#1080#1076#1077#1085#1090#1072' '#1075#1086#1090 +
            #1110#1074#1082#1086#1074#1086#1111' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '#1074#1072#1083#1102#1090#1080' '#1073#1077#1079' '#1086#1092#1086#1088#1084#1083#1077#1085#1085#1103' '#1076#1086#1074#1110#1076#1082#1080'-certificate '#1079#1072' '#1092 +
            #1086#1088#1084#1086#1102' '#8470'377 '#1085#1077' '#1076#1072#1108' '#1087#1110#1076#1089#1090#1072#1074' '#1076#1083#1103' '#1079#1074#1086#1088#1086#1090#1085#1086#1075#1086' '#1086#1073#1084#1110#1085#1091'.')
        ParentFont = False
      end
      object Memo55: TfrxMemoView
        Left = 647.707692310000000000
        Top = 96.429933020000000000
        Width = 61.031498340000000000
        Height = 14.497650000000000000
        ShowHint = False
        DisplayFormat.FormatStr = 'hh:mm'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        HAlign = haRight
        Memo.UTF8W = (
          '[ttime]')
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        Left = 358.703722080000000000
        Width = 264.083538250000000000
        Height = 45.354330708661400000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '[filia] '
          '[adres]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo57: TfrxMemoView
        Left = 399.303722080000000000
        Top = 247.998667520000000000
        Width = 300.115230660000000000
        Height = 11.421482400000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        Memo.UTF8W = (
          '('#1087#1088#1110#1079#1074#1080#1097#1077', '#1110#1084#39#1103' '#1090#1072' '#1087#1086' '#1073#1072#1090#1100#1082#1086#1074#1110' ('#1079#1072' '#1085#1072#1103#1074#1085#1086#1089#1090#1110') '#1092#1110#1079#1080#1095#1085#1086#1111' '#1086#1089#1086#1073#1080')')
        ParentFont = False
      end
      object Memo58: TfrxMemoView
        Left = 546.703722080000000000
        Top = 376.998667520000000000
        Width = 160.541951700000000000
        Height = 14.497650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          #1052#1110#1089#1094#1077' '#1076#1083#1103' '#1074#1110#1076#1073#1080#1090#1082#1072' '#1096#1090#1072#1084#1087#1072)
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Left = 123.919339100000000000
        Top = 177.657962200000000000
        Width = 64.183577100000000000
        Height = 14.978962300000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '[kurs]')
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        Left = 8.000000000000000000
        Top = 177.622499380000000000
        Width = 45.563232100000000000
        Height = 15.218058870000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '[val]')
        ParentFont = False
      end
      object Memo61: TfrxMemoView
        Left = 53.085236740000000000
        Top = 177.600000000000000000
        Width = 70.363232100000000000
        Height = 15.218058870000000000
        ShowHint = False
        DisplayFormat.FormatStr = '%2.2f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '[summa]')
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        Left = 188.000000000000000000
        Top = 177.622499380000000000
        Width = 45.563232100000000000
        Height = 15.218058870000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '[val2]')
        ParentFont = False
      end
      object Memo62: TfrxMemoView
        Left = 233.085236740000000000
        Top = 177.600000000000000000
        Width = 115.103972840000000000
        Height = 15.218058870000000000
        ShowHint = False
        DisplayFormat.FormatStr = '%2.2f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '[sumuah]')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 481.519339100000000000
        Top = 177.657962200000000000
        Width = 64.183577100000000000
        Height = 14.978962300000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '[kurs]')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 365.600000000000000000
        Top = 177.622499380000000000
        Width = 45.563232100000000000
        Height = 15.218058870000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '[val]')
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 411.425977480000000000
        Top = 177.600000000000000000
        Width = 70.363232100000000000
        Height = 15.218058870000000000
        ShowHint = False
        DisplayFormat.FormatStr = '%2.2f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '[summa]')
        ParentFont = False
      end
      object Memo59: TfrxMemoView
        Left = 545.600000000000000000
        Top = 177.622499380000000000
        Width = 45.563232100000000000
        Height = 15.218058870000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '[val2]')
        ParentFont = False
      end
      object Memo60: TfrxMemoView
        Left = 591.425977480000000000
        Top = 177.600000000000000000
        Width = 114.363232100000000000
        Height = 15.218058870000000000
        ShowHint = False
        DisplayFormat.FormatStr = '%2.2f'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        HAlign = haCenter
        Memo.UTF8W = (
          '[sumuah]')
        ParentFont = False
      end
      object Memo63: TfrxMemoView
        Left = 2.222222220000000000
        Top = 209.629629630000000000
        Width = 346.141951700000000000
        Height = 24.127279630000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[pension]')
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        Left = 360.740740740000000000
        Top = 209.629629630000000000
        Width = 346.141951700000000000
        Height = 24.127279630000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[pension]')
        ParentFont = False
      end
    end
  end
  object DataSource2: TDataSource
    Left = 136
    Top = 300
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 368
    Top = 456
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 432
    Top = 448
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 504
    Top = 448
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 568
    Top = 520
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 416
    Top = 544
  end
end
