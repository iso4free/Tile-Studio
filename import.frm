object ImportTiles: TImportTiles
  Left = 191
  Top = 323
  BorderStyle = bsDialog
  Caption = 'Import Tiles'
  ClientHeight = 343
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OnShow = FormShow
  PixelsPerInch = 96
  object L1: TLabel
    Left = 256
    Top = 44
    Width = 51
    Height = 13
    Caption = 'Tile Width:'
  end
  object L2: TLabel
    Left = 256
    Top = 68
    Width = 54
    Height = 13
    Caption = 'Tile Height:'
  end
  object L3: TLabel
    Left = 256
    Top = 92
    Width = 82
    Height = 13
    Caption = 'Horizontal space:'
  end
  object L4: TLabel
    Left = 256
    Top = 116
    Width = 70
    Height = 13
    Caption = 'Vertical space:'
  end
  object L5: TLabel
    Left = 256
    Top = 140
    Width = 60
    Height = 13
    Caption = 'Clip from left:'
  end
  object L6: TLabel
    Left = 256
    Top = 164
    Width = 61
    Height = 13
    Caption = 'Clip from top:'
  end
  object L7: TLabel
    Left = 256
    Top = 188
    Width = 97
    Height = 13
    Caption = 'Transparent color(s):'
  end
  object PositionLabel: TLabel
    Left = 11
    Top = 258
    Width = 3
    Height = 13
    Alignment = taCenter
  end
  object L0: TLabel
    Left = 256
    Top = 12
    Width = 43
    Height = 13
    Caption = 'Identifier:'
  end
  object ScrollBox: TScrollBox
    Left = 8
    Top = 8
    Width = 233
    Height = 281
    HorzScrollBar.Tracking = True
    VertScrollBar.Tracking = True
    TabOrder = 0
    object PreviewPicture: TImage
      Left = 0
      Top = 0
      Width = 185
      Height = 169
      OnMouseDown = PreviewPictureMouseDown
      OnMouseMove = PreviewPictureMouseMove
      OnMouseUp = PreviewPictureMouseUp
    end
  end
  object TileWidth: TSpinEdit
    Left = 360
    Top = 40
    Width = 57
    Height = 22
    MaxValue = 256
    MinValue = 4
    TabOrder = 2
    Value = 16
    OnChange = UpdatePreview
    OnKeyDown = IdentifierKeyDown
  end
  object TileHeight: TSpinEdit
    Left = 360
    Top = 64
    Width = 57
    Height = 22
    MaxValue = 256
    MinValue = 4
    TabOrder = 3
    Value = 16
    OnChange = UpdatePreview
    OnKeyDown = IdentifierKeyDown
  end
  object HorzSpace: TSpinEdit
    Left = 360
    Top = 88
    Width = 57
    Height = 22
    MaxValue = 256
    MinValue = 0
    TabOrder = 4
    Value = 0
    OnChange = UpdatePreview
    OnKeyDown = IdentifierKeyDown
  end
  object VertSpace: TSpinEdit
    Left = 360
    Top = 112
    Width = 57
    Height = 22
    MaxValue = 256
    MinValue = 0
    TabOrder = 5
    Value = 0
    OnChange = UpdatePreview
    OnKeyDown = IdentifierKeyDown
  end
  object ClipLeft: TSpinEdit
    Left = 360
    Top = 136
    Width = 57
    Height = 22
    MaxValue = 65535
    MinValue = 0
    TabOrder = 6
    Value = 0
    OnChange = UpdatePreview
    OnKeyDown = IdentifierKeyDown
  end
  object ClipTop: TSpinEdit
    Left = 360
    Top = 160
    Width = 57
    Height = 22
    MaxValue = 65535
    MinValue = 0
    TabOrder = 7
    Value = 0
    OnChange = UpdatePreview
    OnKeyDown = IdentifierKeyDown
  end
  object SmallScrollBox: TScrollBox
    Left = 256
    Top = 240
    Width = 161
    Height = 89
    TabOrder = 9
    object PaintBox: TPaintBox
      Left = 40
      Top = 16
      Width = 81
      Height = 57
      OnPaint = PaintBoxPaint
    end
  end
  object ImportButton: TButton
    Left = 8
    Top = 304
    Width = 73
    Height = 25
    Caption = '&Import'
    Default = True
    TabOrder = 10
    OnClick = ImportButtonClick
  end
  object CancelButton: TButton
    Left = 88
    Top = 304
    Width = 73
    Height = 25
    Caption = 'Cancel'
    TabOrder = 11
    OnClick = CancelButtonClick
  end
  object Identifier: TEdit
    Left = 312
    Top = 8
    Width = 105
    Height = 21
    TabOrder = 1
    OnKeyDown = IdentifierKeyDown
  end
  object AutoDetectButton: TButton
    Left = 168
    Top = 304
    Width = 73
    Height = 25
    Caption = '&Auto-detect'
    TabOrder = 12
    OnClick = AutoDetectButtonClick
  end
  object Trans: TPanel
    Left = 360
    Top = 184
    Width = 57
    Height = 22
    BevelOuter = bvLowered
    TabOrder = 13
    OnMouseDown = TransMouseDown
    object Mult: TImage
      Left = 0
      Top = 0
      Width = 55
      Height = 20
      Align = alClient
      Stretch = True
      OnMouseDown = TransMouseDown
    end
  end
  object RemoveDuplicates: TCheckBox
    Left = 256
    Top = 216
    Width = 161
    Height = 17
    Caption = 'Remove duplicate tiles'
    TabOrder = 8
  end
end
