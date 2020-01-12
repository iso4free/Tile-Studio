object PaletteManager: TPaletteManager
  Left = 189
  Top = 243
  Width = 400
  Height = 492
  Caption = 'Palette Manager'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poDesktopCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object NewButton: TButton
      Left = 16
      Top = 6
      Width = 63
      Height = 25
      Hint = 'Create a new palette'
      Caption = '&New'
      TabOrder = 0
      OnClick = NewButtonClick
    end
    object CloseButton: TButton
      Left = 302
      Top = 6
      Width = 65
      Height = 25
      Hint = 'Return to tile editor'
      Caption = '&Close'
      Default = True
      TabOrder = 2
      OnClick = CloseButtonClick
    end
    object DeleteButton: TButton
      Left = 88
      Top = 6
      Width = 63
      Height = 25
      Hint = 'Delete current palette'
      Caption = '&Delete'
      TabOrder = 1
      OnClick = DeleteButtonClick
    end
    object CopyButton: TButton
      Left = 160
      Top = 6
      Width = 63
      Height = 25
      Hint = 'Copy all preset colors'
      Caption = '&Copy'
      TabOrder = 3
      OnClick = CopyButtonClick
    end
    object PasteButton: TButton
      Left = 232
      Top = 6
      Width = 63
      Height = 25
      Hint = 'Paste into palette'
      Caption = '&Paste'
      TabOrder = 4
      OnClick = PasteButtonClick
    end
  end
  object PaletteTab: TTabControl
    Left = 0
    Top = 41
    Width = 384
    Height = 413
    Align = alClient
    TabOrder = 1
    OnChange = PaletteTabChange
    object PaletteColors: TPaintBox
      Left = 4
      Top = 6
      Width = 376
      Height = 271
      Hint = 'Click to edit (Shift for smooth area)'
      Align = alClient
      OnMouseDown = PaletteColorsMouseDown
      OnPaint = PaletteColorsPaint
    end
    object BottomPanel: TPanel
      Left = 4
      Top = 277
      Width = 376
      Height = 132
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object L1: TLabel
        Left = 174
        Top = 10
        Width = 23
        Height = 13
        Caption = 'Size:'
      end
      object L0: TLabel
        Left = 6
        Top = 10
        Width = 43
        Height = 13
        Caption = 'Identifier:'
      end
      object L2: TLabel
        Left = 278
        Top = 10
        Width = 33
        Height = 13
        Caption = 'Preset:'
      end
      object RGBDepthGroupBox: TGroupBox
        Left = 6
        Top = 70
        Width = 369
        Height = 49
        Caption = 'RGB depth'
        TabOrder = 7
        object L3: TLabel
          Left = 6
          Top = 6
          Width = 23
          Height = 13
          Caption = 'Red:'
        end
        object L4: TLabel
          Left = 94
          Top = 6
          Width = 32
          Height = 13
          Caption = 'Green:'
        end
        object L5: TLabel
          Left = 190
          Top = 6
          Width = 24
          Height = 13
          Caption = 'Blue:'
        end
        object edR: TSpinEdit
          Left = 38
          Top = 2
          Width = 41
          Height = 22
          MaxValue = 16
          MinValue = 2
          TabOrder = 0
          Value = 6
          OnChange = edChange
        end
        object edG: TSpinEdit
          Left = 134
          Top = 2
          Width = 41
          Height = 22
          MaxValue = 16
          MinValue = 2
          TabOrder = 1
          Value = 7
          OnChange = edChange
        end
        object edB: TSpinEdit
          Left = 222
          Top = 2
          Width = 41
          Height = 22
          MaxValue = 16
          MinValue = 2
          TabOrder = 2
          Value = 6
          OnChange = edChange
        end
      end
      object PaletteSize: TSpinEdit
        Left = 206
        Top = 6
        Width = 57
        Height = 22
        Hint = 'Maximum number of colors'
        MaxValue = 256
        MinValue = 1
        TabOrder = 1
        Value = 256
        OnChange = PaletteSizeChange
      end
      object Identifier: TEdit
        Left = 54
        Top = 6
        Width = 105
        Height = 21
        Hint = 'Name for this palette'
        TabOrder = 0
        OnChange = IdentifierChange
      end
      object Preset: TSpinEdit
        Left = 318
        Top = 6
        Width = 57
        Height = 22
        Hint = 'Number of manually defined colors'
        MaxValue = 256
        MinValue = 0
        TabOrder = 2
        Value = 128
        OnChange = PresetChange
      end
      object ImportButton: TButton
        Left = 8
        Top = 38
        Width = 73
        Height = 25
        Hint = 'Import a palette'
        Caption = '&Import...'
        TabOrder = 3
        OnClick = ImportButtonClick
      end
      object GenerateButton: TButton
        Left = 288
        Top = 86
        Width = 73
        Height = 25
        Hint = 'Generate a standard palette'
        Caption = '&Generate'
        TabOrder = 8
        OnClick = GenerateButtonClick
      end
      object ExportButton: TButton
        Left = 88
        Top = 38
        Width = 73
        Height = 25
        Hint = 'Export current palette'
        Caption = '&Export...'
        TabOrder = 4
        OnClick = ExportButtonClick
      end
      object UseThisPalette: TCheckBox
        Left = 190
        Top = 38
        Width = 185
        Height = 17
        Caption = '&Use this palette for current Tile Set'
        TabOrder = 5
        OnClick = UseThisPaletteClick
      end
      object SetAsDefault: TCheckBox
        Left = 190
        Top = 54
        Width = 177
        Height = 17
        Caption = '&Set as default palette'
        TabOrder = 6
        OnClick = SetAsDefaultClick
      end
    end
  end
  object ColorDialog1: TColorDialog
    Left = 40
    Top = 73
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Palette Files (8 bit)|*.*|Palette Files (6 bit)|*.*|Palette Files (5 bit)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 80
    Top = 73
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Palette Files (8 bit)|*.*|Palette Files (6 bit)|*.*|Palette Files (5 bit)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 120
    Top = 73
  end
end
