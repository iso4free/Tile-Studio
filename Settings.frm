object SettingsForm: TSettingsForm
  Left = 873
  Top = 454
  Width = 179
  Height = 130
  Caption = 'Settings'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  object L1: TLabel
    Left = 8
    Top = 12
    Width = 10
    Height = 13
    Caption = 'X:'
  end
  object L2: TLabel
    Left = 8
    Top = 36
    Width = 10
    Height = 13
    Caption = 'Y:'
  end
  object X: TSpinEdit
    Left = 104
    Top = 8
    Width = 57
    Height = 22
    MaxValue = 65536
    MinValue = 0
    TabOrder = 0
    Value = 8
    OnKeyDown = XKeyDown
  end
  object Y: TSpinEdit
    Left = 104
    Top = 32
    Width = 57
    Height = 22
    MaxValue = 65536
    MinValue = 0
    TabOrder = 1
    Value = 8
  end
  object OkButton: TButton
    Left = 8
    Top = 67
    Width = 73
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 2
    OnClick = OkButtonClick
  end
  object CancelButton: TButton
    Left = 88
    Top = 67
    Width = 73
    Height = 25
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = CancelButtonClick
  end
end
