object FRecord: TFRecord
  Left = 384
  Top = 183
  Caption = #1047#1072#1087#1080#1089#1080
  ClientHeight = 506
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 66
    Height = 18
    Caption = #1055#1086#1080#1089#1082' '#1087#1086':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 488
    Top = 84
    Width = 106
    Height = 18
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1087#1086':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ESearch: TEdit
    Left = 48
    Top = 120
    Width = 193
    Height = 21
    TabOrder = 0
    Text = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
    OnClick = ESearchClick
    OnKeyPress = ESearchKeyPress
  end
  object BSearch: TButton
    Left = 272
    Top = 118
    Width = 75
    Height = 25
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 1
    OnClick = BSearchClick
  end
  object RAuthor: TRadioButton
    Left = 48
    Top = 87
    Width = 113
    Height = 17
    Caption = #1040#1074#1090#1086#1088
    TabOrder = 2
    OnClick = RButtonClick
  end
  object RBook: TRadioButton
    Left = 48
    Top = 64
    Width = 113
    Height = 17
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
    TabOrder = 3
    OnClick = RButtonClick
  end
  object BAdd: TButton
    Left = 310
    Top = 25
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = BAddClick
  end
  object BDelete: TButton
    Left = 422
    Top = 25
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 5
    OnClick = BDeleteClick
  end
  object BChange: TButton
    Left = 534
    Top = 25
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 6
    OnClick = BChangeClick
  end
  object StringGrid1: TStringGrid
    Left = 48
    Top = 168
    Width = 633
    Height = 321
    ColCount = 3
    DrawingStyle = gdsGradient
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    TabOrder = 7
    OnSelectCell = StringGrid1SelectCell
    ColWidths = (
      241
      255
      113)
    RowHeights = (
      24
      24)
  end
  object ComboBox1: TComboBox
    Left = 488
    Top = 120
    Width = 145
    Height = 21
    Style = csDropDownList
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 8
    OnChange = ComboBox1Change
  end
end
