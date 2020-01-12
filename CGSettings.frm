object CodeGen: TCodeGen
  Left = 293
  Top = 301
  Width = 628
  Height = 478
  Caption = 'Code Generation Settings'
  Color = clBtnFace
  Constraints.MinWidth = 476
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  object Memo: TMemo
    Left = 0
    Top = 41
    Width = 612
    Height = 382
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    HideSelection = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    OnKeyDown = NewKeyDown
    OnKeyUp = MemoKeyUp
    OnMouseUp = MemoMouseUp
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 612
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object L1: TLabel
      Left = 6
      Top = 10
      Width = 89
      Height = 13
      Caption = 'Generate code for:'
    end
    object DefinitionFile: TComboBox
      Left = 102
      Top = 8
      Width = 185
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = DefinitionFileChange
      OnKeyDown = NewKeyDown
    end
    object OkButton: TButton
      Left = 304
      Top = 6
      Width = 73
      Height = 25
      Caption = 'OK'
      Default = True
      TabOrder = 1
      OnClick = OkButtonClick
      OnKeyDown = NewKeyDown
    end
    object CancelButton: TButton
      Left = 384
      Top = 6
      Width = 73
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = CancelButtonClick
      OnKeyDown = NewKeyDown
    end
    object UseProjectDir: TCheckBox
      Left = 478
      Top = 10
      Width = 105
      Height = 17
      Caption = 'Project Directory'
      TabOrder = 3
      OnClick = UseProjectDirClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 423
    Width = 612
    Height = 17
    Panels = <    
      item
        Width = 128
      end>

    SimplePanel = False  end
end
