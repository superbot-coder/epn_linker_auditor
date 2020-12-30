object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'EPN Links Auditor'
  ClientHeight = 644
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LV: TsListView
    Left = 8
    Top = 359
    Width = 984
    Height = 260
    Columns = <
      item
        Caption = 'Num'
        MaxWidth = 70
        MinWidth = 50
      end
      item
        AutoSize = True
        Caption = #1054#1087#1080#1089#1072#1085#1077' '#1058#1086#1074#1072#1088#1072
        MaxWidth = 1000
        MinWidth = 50
      end
      item
        AutoSize = True
        Caption = 'EPN '#1089#1089#1099#1083#1082#1072
        MaxWidth = 300
        MinWidth = 50
      end
      item
        AutoSize = True
        Caption = #1043#1088#1091#1087#1087#1072
        MaxWidth = 200
        MinWidth = 50
      end
      item
        AutoSize = True
        Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1090#1086#1074#1072#1088
        MaxWidth = 1000
        MinWidth = 50
      end>
    ReadOnly = True
    RowSelect = True
    ParentShowHint = False
    PopupMenu = PMenuLV
    ShowHint = False
    SortType = stBoth
    TabOrder = 0
    ViewStyle = vsReport
  end
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 625
    Width = 1000
    Height = 19
    Panels = <>
  end
  object PnlBar: TsPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 41
    Align = alTop
    TabOrder = 2
    object BtnAddLink: TsButton
      Left = 8
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Add Link'
      TabOrder = 0
      OnClick = BtnAddLinkClick
    end
    object BtnGroups: TsButton
      Left = 89
      Top = 10
      Width = 75
      Height = 25
      Caption = #1043#1088#1091#1087#1087#1099
      TabOrder = 1
      OnClick = BtnGroupsClick
    end
  end
  object sDBGrid1: TsDBGrid
    Left = 0
    Top = 41
    Width = 1000
    Height = 312
    Align = alTop
    DataSource = DSTable
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'GOODS'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EPNLINKS'
        Title.Caption = 'EPN '#1089#1089#1099#1083#1082#1072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 208
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GOODS_LINKS'
        Title.Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1090#1086#1074#1072#1088
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 416
        Visible = True
      end>
  end
  object sSkinManager: TsSkinManager
    ButtonsOptions.OldGlyphsMode = True
    InternalSkins = <>
    SkinDirectory = 'C:\PROJECT+\COMPONENTS\AlphaSkins\Skins'
    SkinInfo = 'N/A'
    ThirdParty.ThirdEdits = ' '
    ThirdParty.ThirdButtons = 'TButton'
    ThirdParty.ThirdBitBtns = ' '
    ThirdParty.ThirdCheckBoxes = ' '
    ThirdParty.ThirdGroupBoxes = ' '
    ThirdParty.ThirdListViews = ' '
    ThirdParty.ThirdPanels = ' '
    ThirdParty.ThirdGrids = ' '
    ThirdParty.ThirdTreeViews = ' '
    ThirdParty.ThirdComboBoxes = ' '
    ThirdParty.ThirdWWEdits = ' '
    ThirdParty.ThirdVirtualTrees = ' '
    ThirdParty.ThirdGridEh = ' '
    ThirdParty.ThirdPageControl = ' '
    ThirdParty.ThirdTabControl = ' '
    ThirdParty.ThirdToolBar = ' '
    ThirdParty.ThirdStatusBar = ' '
    ThirdParty.ThirdSpeedButton = ' '
    ThirdParty.ThirdScrollControl = ' '
    ThirdParty.ThirdUpDown = ' '
    ThirdParty.ThirdScrollBar = ' '
    ThirdParty.ThirdStaticText = ' '
    ThirdParty.ThirdNativePaint = ' '
    Left = 864
    Top = 248
  end
  object PMenuLV: TPopupMenu
    Left = 776
    Top = 248
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\FBDATA\EPNLINKER.FDB'
      'User_Name=SYSDBA'
      'Password=zp4UsWLr48A6'
      'CharacterSet=WIN1251'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 440
    Top = 120
  end
  object FDQTable: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from LINKS_TABLE')
    Left = 512
    Top = 120
  end
  object DSTable: TDataSource
    DataSet = FDQTable
    Left = 576
    Top = 120
  end
  object FDQuery: TFDQuery
    Connection = FDConnection
    Left = 512
    Top = 192
  end
end
