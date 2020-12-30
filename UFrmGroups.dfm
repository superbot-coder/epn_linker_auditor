object FrmGroups: TFrmGroups
  Left = 0
  Top = 0
  Caption = 'FrmGroups'
  ClientHeight = 380
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LVGrp: TsListView
    Left = 8
    Top = 34
    Width = 578
    Height = 338
    Columns = <
      item
        Caption = #8470
        MaxWidth = 90
        MinWidth = 50
        Width = 70
      end
      item
        AutoSize = True
        Caption = #1043#1088#1091#1087#1087#1072' '#1090#1086#1074#1072#1088#1086#1074
      end>
    PopupMenu = PMenu
    TabOrder = 0
    ViewStyle = vsReport
  end
  object sSkinProvider: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 488
    Top = 144
  end
  object PMenu: TPopupMenu
    Left = 424
    Top = 144
  end
end
