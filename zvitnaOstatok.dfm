object frmZvitnaOstatok: TfrmZvitnaOstatok
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1054#1089#1090#1072#1090#1086#1082' '#1074' '#1082#1072#1089#1110' ('#1054#1073#1084#1110#1085' '#1074#1072#1083#1102#1090')'
  ClientHeight = 379
  ClientWidth = 621
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
  object Label1: TLabel
    Left = 9
    Top = 5
    Width = 54
    Height = 13
    Caption = #1044#1077#1085#1100'/'#1095#1072#1089' :'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 69
    Top = 2
    Width = 105
    Height = 21
    Date = 42056.894218275460000000
    Time = 42056.894218275460000000
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 27
    Width = 605
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
    Left = 256
    Top = 351
    Width = 114
    Height = 25
    Caption = #1086#1090#1088#1080#1084#1072#1090#1080' '#1079#1074#1110#1090
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
    Left = 176
    Top = 2
    Width = 71
    Height = 21
    Date = 42154.390262870370000000
    Time = 42154.390262870370000000
    Kind = dtkTime
    TabOrder = 3
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
    ReportOptions.CreateDate = 42154.472527835600000000
    ReportOptions.LastChange = 42154.494609224540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 232
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frDB1'
      end>
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1042#1072#1083#1102#1090#1072)
        end
        object Memo10: TfrxMemoView
          Left = 173.858380000000000000
          Top = 102.047310000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            #1050#1091#1087#1083#1077#1085#1086)
        end
        object Memo11: TfrxMemoView
          Left = 253.228510000000000000
          Top = 102.047310000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            #1054#1087#1077#1088#1072#1094#1110#1081)
        end
        object Memo12: TfrxMemoView
          Left = 351.496290000000000000
          Top = 102.047310000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            #1055#1088#1086#1076#1072#1085#1086)
        end
        object Memo13: TfrxMemoView
          Left = 430.866420000000000000
          Top = 102.047310000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            #1054#1087#1077#1088#1072#1094#1110#1081)
        end
        object Memo14: TfrxMemoView
          Left = 566.929499999999900000
          Top = 102.047310000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            #1047#1072#1083#1080#1096#1086#1082)
        end
        object Memo15: TfrxMemoView
          Top = 39.228370500000000000
          Width = 717.468179900000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1054#1042#1030#1044#1050#1040)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Top = 56.218933300000010000
          Width = 716.523297400000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1088#1086' '#1079#1072#1083#1080#1096#1082#1080' '#1094#1110#1085#1085#1086#1089#1090#1077#1081' '#1090#1072' '#1082#1110#1083#1100#1082#1086#1089#1090#1100' '#1086#1087#1077#1088#1072#1094#1110#1081' '#1076#1072' '#1074#1080#1079#1085#1072#1095#1077#1085#1080#1081' '#1095#1072#1089)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 1.028435600000000000
          Top = 75.209496100000000000
          Width = 716.486744300000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1079#1072' [ddate]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 1.700788500000000000
          Width = 715.162666600000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[PunktName]')
        end
        object Memo19: TfrxMemoView
          Left = 1.700788500000000000
          Top = 18.976391500000000000
          Width = 715.465029000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Adres]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDB1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[frDB1."kod"]')
        end
        object Memo3: TfrxMemoView
          Left = 90.708720000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[frDB1."abr"]')
        end
        object Memo4: TfrxMemoView
          Left = 173.858380000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frDB1."kup"]')
        end
        object Memo5: TfrxMemoView
          Left = 253.228510000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frDB1."cnt_kup"]')
        end
        object Memo6: TfrxMemoView
          Left = 351.496290000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frDB1."prod"]')
        end
        object Memo7: TfrxMemoView
          Left = 430.866420000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frDB1."cnt_prod"]')
        end
        object Memo8: TfrxMemoView
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frDB1."ostatok"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frDB1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 232
    Top = 112
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frDB2'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 280
    Top = 112
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frDB3'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 328
    Top = 112
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frDB4'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 368
    Top = 112
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frDB5'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 232
    Top = 160
  end
end
