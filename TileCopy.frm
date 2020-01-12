object CopyTilesForm: TCopyTilesForm
  Left = 225
  Top = 494
  BorderStyle = bsDialog
  Caption = 'Copy Tiles'
  ClientHeight = 303
  ClientWidth = 266
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  object OkButton: TButton
    Left = 56
    Top = 267
    Width = 73
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 2
    OnClick = OkButtonClick
  end
  object CancelButton: TButton
    Left = 136
    Top = 267
    Width = 73
    Height = 25
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = CancelButtonClick
  end
  object G1: TGroupBox
    Left = 8
    Top = 8
    Width = 249
    Height = 105
    Caption = 'Source'
    TabOrder = 0
    object L1: TLabel
      Left = 6
      Top = 6
      Width = 71
      Height = 13
      Caption = 'Copy tiles from:'
    end
    object L3: TLabel
      Left = 6
      Top = 38
      Width = 91
      Height = 13
      Caption = 'Start at tile number:'
    end
    object L4: TLabel
      Left = 6
      Top = 62
      Width = 148
      Height = 13
      Caption = 'Number of tiles to copy (0 = all):'
    end
    object Src: TComboBox
      Left = 102
      Top = 2
      Width = 137
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'Src'
      OnChange = CheckInput
      OnKeyDown = CopyTilesKeyDown
    end
    object StartTile: TSpinEdit
      Left = 182
      Top = 34
      Width = 57
      Height = 22
      MaxValue = 16384
      MinValue = 1
      TabOrder = 1
      Value = 1
      OnKeyDown = CopyTilesKeyDown
    end
    object TileCount: TSpinEdit
      Left = 182
      Top = 58
      Width = 57
      Height = 22
      MaxValue = 16384
      MinValue = 0
      TabOrder = 2
      Value = 0
      OnKeyDown = CopyTilesKeyDown
    end
  end
  object G2: TGroupBox
    Left = 8
    Top = 120
    Width = 249
    Height = 137
    Caption = 'Destination'
    TabOrder = 1
    object L2: TLabel
      Left = 6
      Top = 6
      Width = 60
      Height = 13
      Caption = 'Copy tiles to:'
    end
    object L5: TLabel
      Left = 6
      Top = 38
      Width = 158
      Height = 13
      Caption = 'Destination position (0 = append):'
    end
    object Dst: TComboBox
      Left = 102
      Top = 2
      Width = 137
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'Dst'
      OnChange = CheckInput
      OnKeyDown = CopyTilesKeyDown
    end
    object DstStartTile: TSpinEdit
      Left = 182
      Top = 34
      Width = 57
      Height = 22
      MaxValue = 16384
      MinValue = 0
      TabOrder = 1
      Value = 0
      OnKeyDown = CopyTilesKeyDown
    end
    object Overwrite: TCheckBox
      Left = 54
      Top = 62
      Width = 129
      Height = 17
      Caption = 'Overwrite existing tiles'
      TabOrder = 2
      OnKeyDown = CopyTilesKeyDown
    end
    object Stretch: TCheckBox
      Left = 54
      Top = 78
      Width = 89
      Height = 17
      Caption = 'Stretch tiles'
      TabOrder = 3
      OnKeyDown = CopyTilesKeyDown
    end
    object CopyBounds: TCheckBox
      Left = 54
      Top = 94
      Width = 89
      Height = 17
      Caption = 'Copy bounds'
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnKeyDown = CopyTilesKeyDown
    end
    object UseScaler: TCheckBox
      Left = 147
      Top = 78
      Width = 76
      Height = 17
      Caption = 'Use scaler'
      TabOrder = 5
    end
  end
end
