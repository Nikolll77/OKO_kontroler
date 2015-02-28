object FormZvitnaDovidka: TFormZvitnaDovidka
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1047#1074#1110#1090#1085#1072' '#1076#1086#1074#1110#1076#1082#1072' ('#1086#1073#1084#1110#1085' '#1074#1072#1083#1102#1090')'
  ClientHeight = 379
  ClientWidth = 413
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
    Left = 8
    Top = 8
    Width = 73
    Height = 13
    Caption = #1047#1074#1110#1090#1085#1080#1081' '#1076#1077#1085#1100' :'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 87
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
    Width = 402
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
        Width = 327
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adres'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 280
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
    ReportOptions.CreateDate = 41215.733751759300000000
    ReportOptions.LastChange = 42063.614077372690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frDB1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frDB2'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'frDB3'
      end
      item
        DataSet = frxDBDataset4
        DataSetName = 'frDB4'
      end
      item
        DataSet = frxDBDataset5
        DataSetName = 'frDB5'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 500.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 135.296859200000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = -1.020473100000000000
          Top = 40.001598700000000000
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
            #1047#1042#1030#1058#1053#1040' '#1044#1054#1042#1030#1044#1050#1040)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = -1.020473100000000000
          Top = 56.992161500000000000
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
            #1087#1088#1086' '#1082#1072#1089#1086#1074#1110' '#1086#1073#1086#1088#1086#1090#1080' '#1110' '#1079#1072#1083#1080#1096#1082#1080' '#1094#1110#1085#1085#1086#1089#1090#1077#1081)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 0.007962500000000000
          Top = 75.982724300000000000
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
        object Memo8: TfrxMemoView
          Left = 5.971657400000000000
          Top = 102.114095400000000000
          Width = 81.524462100000000000
          Height = 33.145968500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103' '#1094#1110#1085#1085#1086#1089#1090#1077#1081
            '('#1082#1086#1076' '#1074#1072#1083#1102#1090#1080')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 87.475646400000000000
          Top = 102.110300100000000000
          Width = 71.508707600000000000
          Height = 33.161968500000000000
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
            #1047#1072#1083#1080#1096#1086#1082' '#1085#1072' '#1087#1086#1095#1072#1090#1086#1082' '#1076#1085#1103)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 158.986354000000000000
          Top = 102.087323600000000000
          Width = 156.057723200000000000
          Height = 18.304378500000000000
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
            #1055#1088#1080#1081#1085#1103#1090#1086' '#1094#1110#1085#1085#1086#1089#1090#1077#1081' '#1085#1072' '#1089#1091#1084#1091)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 158.984354000000000000
          Top = 120.366930300000000000
          Width = 73.158314900000000000
          Height = 14.906519500000000000
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
            #1074#1110#1076' '#1079#1072#1074'.'#1082#1072#1089#1086#1102)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 232.081464200000000000
          Top = 120.367930300000000000
          Width = 83.082274100000000000
          Height = 14.904519500000000000
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
            #1074#1110#1076' '#1110#1085#1082#1072#1089'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 315.003352400000000000
          Top = 102.085890700000000000
          Width = 152.995374400000000000
          Height = 18.334653700000000000
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
            #1054#1073#1086#1088#1086#1090#1080' '#1079#1072' '#1076#1077#1085#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 315.003352400000000000
          Top = 120.365930300000000000
          Width = 80.957532600000000000
          Height = 14.906519500000000000
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
            #1089#1091#1084#1072' '#1087#1088#1080#1093#1086#1076#1091)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 395.998680300000000000
          Top = 120.429135000000000000
          Width = 72.000046500000000000
          Height = 14.857519500000000000
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
            #1089#1091#1084#1072' '#1074#1080#1076#1072#1090#1082#1091)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 468.036522100000000000
          Top = 102.085890700000000000
          Width = 149.088072600000000000
          Height = 18.334653700000000000
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
            #1055#1077#1088#1077#1076#1072#1085#1086' '#1094#1110#1085#1085#1086#1089#1090#1077#1081' '#1085#1072' '#1089#1091#1084#1091)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 468.036522100000000000
          Top = 120.340587700000000000
          Width = 68.999902400000000000
          Height = 14.955519500000000000
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
            #1079#1072#1074'. '#1082#1072#1089#1086#1102)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 536.995622400000000000
          Top = 120.340587700000000000
          Width = 80.113650100000000000
          Height = 14.955519500000000000
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
            #1079#1076#1072#1085#1086' '#1085#1072' '#1110#1085#1082#1072#1089'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 617.057272500000000000
          Top = 102.085890700000000000
          Width = 89.461475100000000000
          Height = 33.210968500000000000
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
            #1047#1072#1083#1080#1096#1086#1082' '#1085#1072' '#1082#1110#1085#1077#1094#1100' '#1076#1085#1103' '#1091' '#1089#1091#1084#1110)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 0.680315400000000000
          Top = 0.773228200000000000
          Width = 715.162666600000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[PunktName]')
        end
        object Memo3: TfrxMemoView
          Left = 0.680315400000000000
          Top = 19.749619700000000000
          Width = 715.465029000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[Adres]')
        end
      end
      object Footer1: TfrxFooter
        Height = 64.516577100000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Memo20: TfrxMemoView
          Left = 14.022056300000000000
          Top = 5.253546700000000000
          Width = 427.427047700000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1050#1072#1089#1086#1074#1080#1081' '#1087#1088#1072#1094#1110#1074#1085#1080#1082' [kasir] __________')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 441.940442900000000000
          Top = 5.253546699999990000
          Width = 275.456656600000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dirbuh] [nam] __________')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 14.022056300000000000
          Top = 40.000015500000000000
          Width = 122.494567300000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1110#1089#1094#1077' '#1076#1083#1103' '#1096#1090#1072#1084#1087#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 16.075536200000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset5
        DataSetName = 'frDB5'
        RowCount = 0
        object frxDBDataset1kod: TfrxMemoView
          Left = 5.971657400000000000
          Width = 81.524462100000000000
          Height = 16.045536200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB5."kodval"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1inkas: TfrxMemoView
          Left = 87.437851100000000000
          Width = 71.546502900000000000
          Height = 16.045536200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB5."sumstart"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1otzk: TfrxMemoView
          Left = 158.984354000000000000
          Width = 73.232519600000000000
          Height = 16.045536200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB5."otzk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1otink: TfrxMemoView
          Left = 232.080464200000000000
          Width = 83.036274100000000000
          Height = 16.045536200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB5."otink"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1sumprih: TfrxMemoView
          Left = 315.003352400000000000
          Width = 81.033123200000000000
          Height = 16.045536200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB5."sumprih"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1sumvidat: TfrxMemoView
          Left = 395.998680300000000000
          Width = 72.037841800000000000
          Height = 16.045536200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB5."sumvidat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1kzk: TfrxMemoView
          Left = 468.036522100000000000
          Width = 68.999902400000000000
          Height = 16.045536200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB5."kzk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1kinkas: TfrxMemoView
          Left = 536.995622400000000000
          Width = 80.012650100000000000
          Height = 16.045536200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB5."kink"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1forinkas: TfrxMemoView
          Left = 617.008272500000000000
          Width = 89.045726800000000000
          Height = 16.075536200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB5."sumend"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 194.435762200000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Memo23: TfrxMemoView
          Left = 0.529134200000000000
          Top = 57.604771300000000000
          Width = 712.970539200000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            
              '('#1088#1077#1108#1089#1090#1088#1072#1094#1110#1081#1085#1080#1081' '#1085#1086#1084#1077#1088' '#1087#1091#1085#1082#1090#1091' '#1086#1073#1084#1110#1085#1091' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '#1074#1072#1083#1102#1090#1080' '#1110' '#1081#1086#1075#1086' '#1084#1110#1089#1094#1077 +
              #1079#1085#1072#1093#1086#1076#1078#1077#1085#1085#1103')')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 0.037795300000000000
          Top = 83.099261100000200000
          Width = 717.430384600000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1045#1028#1057#1058#1056)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Top = 97.155961800000000000
          Width = 717.508769600000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1082#1091#1087#1083#1077#1085#1086#1111' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '#1074#1072#1083#1102#1090#1080)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = -1.000000000000000000
          Top = 112.527628500000000000
          Width = 717.486744300000000000
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
        object Memo28: TfrxMemoView
          Left = 1.020473100000000000
          Top = 138.088271700000000000
          Width = 44.409863400000000000
          Height = 56.346490500000000000
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
            #8470
            #1079'/'#1087)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 144.000019530000000000
          Top = 138.088271700000000000
          Width = 112.629921260000000000
          Height = 56.346490500000000000
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
            #1053#1072#1079#1074#1072' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '
            #1074#1072#1083#1102#1090#1080' ('#1082#1086#1076')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 256.251968500000000000
          Top = 138.088271700000000000
          Width = 87.633914800000000000
          Height = 56.347490500000000000
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
            #1057#1091#1084#1072' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '#1074#1072#1083#1102#1090#1080)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 344.146664100000000000
          Top = 138.088271700000000000
          Width = 80.403989000000000000
          Height = 56.346490500000000000
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
            #1050#1091#1088#1089)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 424.612857800000000000
          Top = 138.088271700000000000
          Width = 86.475646400000000000
          Height = 56.346490500000000000
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
            #1057#1091#1084#1072' '#1074#1080#1076#1072#1085#1080#1093' '#1075#1088#1080#1074#1077#1085#1100)
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 511.088504200000000000
          Top = 138.088271700000000000
          Width = 126.704617400000000000
          Height = 56.346490500000000000
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
            #1053#1086#1084#1077#1088' '#1074#1080#1076#1072#1085#1086#1111' '#1076#1086#1074#1110#1076#1082#1080'/'#1082#1074#1080#1090#1072#1085#1094#1110#1111'/'
            #1082#1074#1080#1090#1072#1085#1094#1110#1111' '#1087#1083#1072#1090#1110#1078#1085#1086#1075#1086' '
            #1087#1088#1080#1089#1090#1088#1086#1102)
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 637.967326300000000000
          Top = 138.088271700000000000
          Width = 74.494536300000000000
          Height = 56.346490500000000000
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
            #1042#1110#1076#1084#1110#1090#1082#1072' '#1087#1088#1086' '#1089#1090#1086#1088#1085#1086)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 45.354360000000000000
          Top = 137.952755910000000000
          Width = 98.645688820000000000
          Height = 56.346490500000000000
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
            #1063#1072#1089' '#1079#1076#1110#1081#1089#1085#1077#1085#1085#1103' '
            #1086#1087#1077#1088#1072#1094#1110#1111)
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Width = 717.997314100000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[PunktName] [Adres]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 0.529134200000000000
          Top = 18.522847900000000000
          Width = 720.529599200000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            
              '('#1085#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103' '#1090#1072' '#1084#1110#1089#1094#1077#1079#1085#1072#1093#1086#1076#1078#1077#1085#1085#1103' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1086#1075#1086' '#1087#1110#1076#1088#1086#1079#1076#1110#1083#1091' '#1091#1087#1086#1074#1085#1086 +
              #1074#1072#1078#1077#1085#1086#1075#1086' '#1073#1072#1085#1082#1091'/'#1091#1087#1086#1074#1085#1086#1074#1072#1078#1077#1085#1086#1111' '#1092#1110#1085#1072#1085#1089#1086#1074#1086#1111' '#1091#1089#1090#1072#1085#1086#1074#1080'/'#1085#1072#1094#1110#1086#1085#1072#1083#1100#1085#1086#1075#1086' '#1086 +
              #1087#1077#1088#1072#1090#1086#1088#1072' '#1087#1086#1096#1090#1086#1074#1086#1075#1086' '#1079#1074#39#1103#1079#1082#1091')')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 15.578677200000000000
        Top = 559.370440000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frDB1'
        RowCount = 0
        object Memo35: TfrxMemoView
          Left = 1.020473100000000000
          Width = 44.522863400000000000
          Height = 15.578677200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 143.836308200000000000
          Width = 112.705584600000000000
          Height = 15.578677200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB1."currency"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 256.538158700000000000
          Width = 87.533914800000000000
          Height = 15.578677200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB1."sum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 344.146664100000000000
          Width = 80.503989000000000000
          Height = 15.578677200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.6f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB1."rate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 424.612857800000000000
          Width = 86.475646400000000000
          Height = 15.578677200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB1."sumUAH"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 511.088504200000000000
          Width = 126.703617400000000000
          Height = 15.578677200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB1."kvit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 637.967326300000000000
          Width = 74.494536300000000000
          Height = 15.578677200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB1."storno"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 45.354330710000000000
          Width = 99.023622050000000000
          Height = 15.578677200000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB1."op_time"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        Height = 118.904180000000000000
        Top = 597.165740000000000000
        Width = 718.110700000000000000
        object Memo42: TfrxMemoView
          Left = 16.970089700000000000
          Top = 13.908670400001400000
          Width = 224.466286700000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1110#1076#1087#1080#1089' '#1082#1072#1089#1080#1088#1072' _________________')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 12.970089700000000000
          Top = 43.045725500000000000
          Width = 130.053627300000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1110#1089#1094#1077' '#1076#1083#1103' '#1074#1110#1076#1073#1080#1090#1082#1072' '#1096#1090#1072#1084#1087#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = -0.647000000000000000
          Top = 83.743590000000000000
          Width = 54.706000000000000000
          Height = 11.883000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1042#1057#1068#1054#1043#1054':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 214.589000000000000000
          Top = 83.743590000000000000
          Width = 88.235000000000000000
          Height = 11.883000000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frDB1."sum">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 383.530000000000000000
          Top = 83.743590000000000000
          Width = 86.469000000000000000
          Height = 11.883000000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frDB1."sumuah">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = -0.647000000000000000
          Top = 95.683590000000000000
          Width = 54.706000000000000000
          Height = 11.882000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1030#1047' '#1053#1048#1061':')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        Height = 172.314347200000000000
        Top = 774.803650000000000000
        Width = 718.110700000000000000
        object Memo47: TfrxMemoView
          Left = 0.037795300000000000
          Top = 73.650436100000000000
          Width = 717.430384600000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1045#1028#1057#1058#1056)
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Top = 87.707136799999900000
          Width = 718.026107300000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1088#1086#1076#1072#1085#1086#1111' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '#1074#1072#1083#1102#1090#1080)
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 0.000108500000000000
          Top = 103.625259900000000000
          Width = 717.486744300000000000
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
        object Memo51: TfrxMemoView
          Left = 1.020473100000000000
          Top = 128.639446700000000000
          Width = 44.522863400000000000
          Height = 43.674900500000000000
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
            #8470
            #1079'/'#1087)
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 120.938658200000000000
          Top = 128.639446700000000000
          Width = 86.173228346456700000
          Height = 43.674900500000000000
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
            #1053#1086#1084#1077#1088' '#1074#1080#1076#1072#1085#1086#1111' '#1082#1074#1080#1090#1072#1085#1094#1110#1111)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 207.376493800000000000
          Top = 128.639446700000000000
          Width = 70.105931500000000000
          Height = 43.673900500000000000
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
            #1057#1091#1084#1072' '#1074' '#1075#1088#1080#1074#1085#1103#1093)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 277.685024720000000000
          Top = 128.639446700000000000
          Width = 118.677180000000000000
          Height = 43.673900500000000000
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
            #1053#1072#1079#1074#1072' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '
            #1074#1072#1083#1102#1090#1080' ('#1082#1086#1076')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 396.175807600000000000
          Top = 128.639446700000000000
          Width = 65.654985300000000000
          Height = 43.673900500000000000
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
            #1057#1091#1084#1072' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '#1074#1072#1083#1102#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 461.963266000000000000
          Top = 128.639446700000000000
          Width = 78.120499200000000000
          Height = 43.673900500000000000
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
            #1050#1091#1088#1089)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 637.967326300000000000
          Top = 128.639446700000000000
          Width = 74.494536300000000000
          Height = 43.673900500000000000
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
            #1042#1110#1076#1084#1110#1090#1082#1072' '#1087#1088#1086' '#1089#1090#1086#1088#1085#1086)
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 539.938921700000000000
          Top = 128.639446700000000000
          Width = 97.889212900000000000
          Height = 43.674900500000000000
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
            #1053#1086#1084#1077#1088' '#1086#1076#1077#1088#1078#1072#1085#1086#1111' '#1076#1086#1074#1110#1076#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 0.982677800000000000
          Width = 716.485502100000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[PunktName] [Adres]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 45.354360000000000000
          Top = 128.503956540000000000
          Width = 75.590551181102400000
          Height = 43.842519690000000000
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
            #1063#1072#1089' '#1079#1076#1110#1081#1089#1085#1077#1085#1085#1103' '
            #1086#1087#1077#1088#1072#1094#1110#1111)
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Top = 18.897650000000000000
          Width = 720.529599200000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            
              '('#1085#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103' '#1090#1072' '#1084#1110#1089#1094#1077#1079#1085#1072#1093#1086#1076#1078#1077#1085#1085#1103' '#1089#1090#1088#1091#1082#1090#1091#1088#1085#1086#1075#1086' '#1087#1110#1076#1088#1086#1079#1076#1110#1083#1091' '#1091#1087#1086#1074#1085#1086 +
              #1074#1072#1078#1077#1085#1086#1075#1086' '#1073#1072#1085#1082#1091'/'#1091#1087#1086#1074#1085#1086#1074#1072#1078#1077#1085#1086#1111' '#1092#1110#1085#1072#1085#1089#1086#1074#1086#1111' '#1091#1089#1090#1072#1085#1086#1074#1080'/'#1085#1072#1094#1110#1086#1085#1072#1083#1100#1085#1086#1075#1086' '#1086 +
              #1087#1077#1088#1072#1090#1086#1088#1072' '#1087#1086#1096#1090#1086#1074#1086#1075#1086' '#1079#1074#39#1103#1079#1082#1091')')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Top = 52.913420000000000000
          Width = 712.970539200000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            
              '('#1088#1077#1108#1089#1090#1088#1072#1094#1110#1081#1085#1080#1081' '#1085#1086#1084#1077#1088' '#1087#1091#1085#1082#1090#1091' '#1086#1073#1084#1110#1085#1091' '#1110#1085#1086#1079#1077#1084#1085#1086#1111' '#1074#1072#1083#1102#1090#1080' '#1110' '#1081#1086#1075#1086' '#1084#1110#1089#1094#1077 +
              #1079#1085#1072#1093#1086#1076#1078#1077#1085#1085#1103')')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 16.077016100000000000
        Top = 971.339210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frDB3'
        RowCount = 0
        object Memo69: TfrxMemoView
          Left = 539.938921700000000000
          Width = 98.003212900000000000
          Height = 16.077016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB3."notate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 121.511811020000000000
          Width = 86.173228350000000000
          Height = 16.077016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB3."kvit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 1.020473100000000000
          Width = 44.522863400000000000
          Height = 16.077016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 207.496062990000000000
          Width = 69.921259840000000000
          Height = 16.077016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB3."sumUAH"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 277.417322830000000000
          Width = 118.677165350000000000
          Height = 16.077016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frDB3."currency"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 395.975807600000000000
          Width = 65.852985300000000000
          Height = 16.077016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB3."sum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 461.963266000000000000
          Width = 78.121499200000000000
          Height = 16.077016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset3'
          DisplayFormat.FormatStr = '%2.6f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB3."rate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 637.967326300000000000
          Width = 74.494536300000000000
          Height = 16.077016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB3."storno"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 45.354360000000000000
          Width = 75.968489290000000000
          Height = 16.251968500000000000
          ShowHint = False
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB3."op_time"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer3: TfrxFooter
        Height = 95.431919600000000000
        Top = 1009.134510000000000000
        Width = 718.110700000000000000
        object Memo65: TfrxMemoView
          Left = 16.970089700000000000
          Top = 7.102350000000000000
          Width = 224.466286700000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1110#1076#1087#1080#1089' '#1082#1072#1089#1080#1088#1072' _________________')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Top = 71.487919599999800000
          Width = 54.706000000000000000
          Height = 12.470000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            #1042#1057#1068#1054#1043#1054':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 132.001000000000000000
          Top = 71.487919600000000000
          Width = 69.410000000000000000
          Height = 12.471000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frDB3."sum">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 396.059000000000000000
          Top = 71.487919600000000000
          Width = 65.881000000000000000
          Height = 12.470000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frDB3."sumuah">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 0.001000000000000000
          Top = 84.136919599999700000
          Width = 54.706000000000000000
          Height = 11.295000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1030#1047' '#1053#1048#1061':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 15.118120000000000000
          Top = 33.559059999999900000
          Width = 130.053627300000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1110#1089#1094#1077' '#1076#1083#1103' '#1074#1110#1076#1073#1080#1090#1082#1072' '#1096#1090#1072#1084#1087#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData5: TfrxMasterData
        Height = 11.960016100000000000
        Top = 740.787880000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frDB2'
        RowCount = 0
        object Memo98: TfrxMemoView
          Left = 57.058000000000000000
          Width = 157.676032300000000000
          Height = 11.959016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB2."val"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 214.653363800000000000
          Width = 88.075931500000000000
          Height = 11.960016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset4'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB2."summ"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 383.559885900000000000
          Width = 86.505233400000000000
          Height = 11.960016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset4'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB2."summU"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData6: TfrxMasterData
        Height = 11.372016100000000000
        Top = 1126.299940000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frDB4'
        RowCount = 0
        object Memo101: TfrxMemoView
          Width = 132.383032300000000000
          Height = 11.371016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB4."val"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 132.309807600000000000
          Top = 0.001000000000000001
          Width = 69.671985300000000000
          Height = 11.371016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset4'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB4."summ"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 394.356266000000000000
          Width = 67.422499200000000000
          Height = 11.372016100000000000
          ShowHint = False
          DataSetName = 'frxDBDataset4'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDB4."summU"]')
          ParentFont = False
          VAlign = vaCenter
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
