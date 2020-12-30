object FrmAddLink: TFrmAddLink
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Add Link'
  ClientHeight = 365
  ClientWidth = 483
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
  object sLabel1: TsLabel
    Left = 16
    Top = 16
    Width = 92
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072':'
  end
  object sLabel2: TsLabel
    Left = 8
    Top = 137
    Width = 90
    Height = 13
    Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1090#1086#1074#1072#1088':'
  end
  object sLabel3: TsLabel
    Left = 8
    Top = 259
    Width = 62
    Height = 13
    Caption = 'EPN '#1089#1089#1099#1083#1082#1072':'
  end
  object sLabel4: TsLabel
    Left = 264
    Top = 259
    Width = 97
    Height = 13
    Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1090#1086#1074#1072#1088#1072':'
  end
  object edEPNLink: TsEdit
    Left = 8
    Top = 278
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object CmBoxExCategory: TsComboBoxEx
    Left = 264
    Top = 278
    Width = 207
    Height = 22
    ItemsEx = <>
    ItemIndex = -1
    TabOrder = 1
  end
  object BtnCloce: TsButton
    Left = 396
    Top = 320
    Width = 75
    Height = 33
    Caption = #1047#1040#1050#1056#1067#1058#1068
    TabOrder = 2
    OnClick = BtnCloceClick
  end
  object BtnApply: TsButton
    Left = 160
    Top = 320
    Width = 161
    Height = 33
    Caption = #1044#1054#1041#1040#1042#1048#1058#1068
    TabOrder = 3
    OnClick = BtnApplyClick
  end
  object mmGoods: TsMemo
    Left = 8
    Top = 35
    Width = 463
    Height = 78
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object mmGoodsLink: TsMemo
    Left = 8
    Top = 156
    Width = 463
    Height = 77
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object sSkinProvider: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 416
    Top = 232
  end
end
