object FAdd: TFAdd
  Left = 752
  Top = 116
  Caption = #1047#1072#1087#1080#1089#1080
  ClientHeight = 205
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 34
    Top = 20
    Width = 41
    Height = 18
    Caption = #1040#1074#1090#1086#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 67
    Width = 65
    Height = 18
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 51
    Top = 112
    Width = 24
    Height = 18
    Caption = #1043#1086#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EAuthor: TEdit
    Left = 106
    Top = 21
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object EName: TEdit
    Left = 106
    Top = 64
    Width = 209
    Height = 21
    TabOrder = 1
  end
  object EYear: TEdit
    Left = 106
    Top = 109
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
  end
  object BCompleteAdd: TButton
    Left = 200
    Top = 160
    Width = 75
    Height = 25
    Caption = #1043#1086#1090#1086#1074#1086
    TabOrder = 3
    OnClick = BCompleteAddClick
  end
  object BCancel: TButton
    Left = 80
    Top = 160
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    OnClick = BCancelClick
  end
  object BCompleteChange: TButton
    Left = 200
    Top = 160
    Width = 75
    Height = 25
    Caption = #1043#1086#1090#1086#1074#1086
    TabOrder = 5
    Visible = False
    OnClick = BCompleteChangeClick
  end
end
