object frmAdm: TfrmAdm
  Left = 265
  Top = 233
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1072#1089
  ClientHeight = 493
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 770
    Height = 37
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    TabOrder = 0
    ExplicitWidth = 738
    object DBNavigator2: TDBNavigator
      Left = 0
      Top = 0
      Width = 400
      Height = 38
      DataSource = DataSource1
      Hints.Strings = (
        #1055#1077#1088#1096#1072
        #1055#1086#1087#1077#1088#1077#1076#1085#1103
        #1053#1072#1089#1090#1091#1087#1085#1072
        #1054#1089#1090#1072#1085#1085#1103
        #1044#1086#1076#1072#1090#1080
        #1042#1080#1076#1072#1083#1080#1090#1080
        #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080
        #1047#1072#1087#1080#1089#1072#1090#1080
        #1042#1110#1076#1084#1110#1085#1080#1090#1080
        #1042#1110#1076#1085#1086#1074#1080#1090#1080' '#1076#1072#1085#1110
        'Apply updates'
        'Cancel updates')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 37
    Width = 185
    Height = 456
    Align = alLeft
    Caption = ' '#1060#1110#1083#1100#1090#1088' '
    TabOrder = 1
    Visible = False
    ExplicitLeft = 168
    ExplicitTop = 21
    inline FramFilterKassa1: TFramFilterKassa
      Left = 7
      Top = 18
      Width = 168
      Height = 188
      TabOrder = 0
      ExplicitLeft = 7
      ExplicitTop = 18
      inherited BitBtn1: TBitBtn
        OnClick = FramFilterKassa1BitBtn1Click
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 185
    Top = 37
    Width = 231
    Height = 456
    Align = alClient
    Caption = ' '#1055#1077#1088#1077#1083#1110#1082' '#1086#1087#1077#1088#1072#1094#1110#1081#1085#1080#1093' '#1082#1072#1089'  '
    TabOrder = 2
    ExplicitWidth = 152
    ExplicitHeight = 408
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 227
      Height = 439
      Align = alClient
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          ReadOnly = True
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Width = 341
          Visible = True
        end>
    end
  end
  object GroupBox4: TGroupBox
    Left = 416
    Top = 37
    Width = 354
    Height = 456
    Align = alRight
    Caption = ' '#1044#1072#1085#1110' '#1082#1072#1089#1080' '
    TabOrder = 3
    ExplicitLeft = 384
    ExplicitHeight = 408
    object DBText1: TDBText
      Left = 80
      Top = 32
      Width = 65
      Height = 17
      DataField = 'id'
      DataSource = DataSource1
    end
    object Label3: TLabel
      Left = 16
      Top = 32
      Width = 15
      Height = 13
      Caption = 'ID:'
    end
    object Label5: TLabel
      Left = 16
      Top = 76
      Width = 32
      Height = 13
      Caption = 'NAME:'
    end
    object Label6: TLabel
      Left = 16
      Top = 120
      Width = 52
      Height = 13
      Caption = 'OBMENKA:'
    end
    object Label7: TLabel
      Left = 16
      Top = 98
      Width = 50
      Height = 13
      Caption = 'ADDRESS:'
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 73
      Width = 273
      Height = 21
      DataField = 'name'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 95
      Width = 273
      Height = 21
      DataField = 'adres'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 126
      Top = 119
      Width = 161
      Height = 17
      Caption = '     (1-'#1090#1072#1082' / 0-'#1085#1110')'
      DataField = 'obmenka'
      DataSource = DataSource1
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object DataSource1: TDataSource
    Left = 228
    Top = 240
  end
end
