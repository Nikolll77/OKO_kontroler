object MainForm: TMainForm
  Left = 206
  Top = 126
  Caption = #1052#1086#1076#1091#1083#1100' '#1082#1086#1085#1090#1088#1086#1083#1077#1088' ('#1090#1077#1089#1090')'
  ClientHeight = 416
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = True
  PrintScale = poNone
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 397
    Width = 654
    Height = 19
    Panels = <
      item
        Text = #1056#1086#1079#1098#1077#1076#1085#1072#1085#1086'!'
        Width = 100
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object MainMenu1: TMainMenu
    Left = 448
    Top = 8
    object menu_DB: TMenuItem
      Caption = #1041#1072#1079#1072' '#1076#1072#1085#1080#1093
      object menu_db_connect: TMenuItem
        Caption = #1047#1098#1077#1076#1085#1072#1090#1080#1089#1103
        OnClick = menu_db_connectClick
      end
      object menu_DB_disconnect: TMenuItem
        Caption = #1056#1086#1079#1098#1077#1076#1085#1072#1090#1080#1089#1103
        OnClick = menu_DB_disconnectClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
    end
    object menu_reports: TMenuItem
      Caption = #1047#1074#1110#1090#1080
      object menu_OV: TMenuItem
        Caption = #1054#1073#1084#1110#1085' '#1042#1072#1083#1102#1090
        object menu_OV_zvitna: TMenuItem
          Caption = #1047#1074#1110#1090#1085#1072' '#1076#1086#1074#1110#1076#1082#1072
          OnClick = menu_OV_zvitnaClick
        end
      end
    end
    object N1: TMenuItem
      Caption = #1050#1083#1110#1077#1085#1090#1080' ('#1079#1072#1087#1080#1090#1080')'
      object N2: TMenuItem
        Caption = #1055#1077#1088#1077#1082#1072#1079#1080
        object Menu_OV_limitscheck: TMenuItem
          Caption = #1057#1091#1084#1080' '#1087#1077#1088#1077#1082#1072#1079#1110#1074' '#1087#1086' '#1082#1083#1110#1077#1085#1090#1072#1084
          OnClick = Menu_OV_limitscheckClick
        end
      end
      object N3: TMenuItem
        Caption = #1054#1073#1084#1110#1085' '#1042#1072#1083#1102#1090
        object N6: TMenuItem
          Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1086#1087#1077#1088#1072#1094#1110#1081' '#1087#1086' '#1085#1077#1110#1076#1077#1085#1090#1080#1092#1110#1082#1086#1074#1072#1085#1080#1084' '#1082#1083#1110#1077#1085#1090#1072#1084
          OnClick = N6Click
        end
        object N7: TMenuItem
          Caption = #1055#1077#1088#1077#1083#1110#1082' '#1086#1087#1077#1088#1072#1094#1110#1081' '#1087#1086' '#1085#1077#1110#1076#1077#1085#1090#1080#1092#1110#1082#1086#1074#1072#1085#1086#1084#1091' '#1082#1083#1110#1077#1085#1090#1091
          OnClick = N7Click
        end
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1086#1087#1077#1088#1072#1094#1110#1081' '#1087#1086' '#1082#1083#1110#1077#1085#1090#1072#1084
        OnClick = N4Click
      end
      object N8: TMenuItem
        Caption = #1055#1077#1088#1077#1083#1110#1082' '#1086#1087#1077#1088#1072#1094#1110#1081' '#1087#1086' '#1082#1083#1110#1077#1085#1090#1091
        OnClick = N8Click
      end
    end
  end
  object ADOConnection1: TADOConnection
    Left = 400
    Top = 8
  end
end
