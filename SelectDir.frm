object OutputDir: TOutputDir
  Left = 194
  Height = 271
  Top = 107
  Width = 274
  BorderStyle = bsDialog
  Caption = 'Select Output Directory'
  ClientHeight = 271
  ClientWidth = 274
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  OnShow = FormShow
  Position = poDesktopCenter
  LCLVersion = '7.0'
  object L2: TLabel
    Left = 8
    Height = 14
    Top = 184
    Width = 34
    Caption = 'Drive:'
    ParentColor = False
  end
  object L1: TLabel
    Left = 8
    Height = 14
    Top = 8
    Width = 55
    Caption = 'Directory:'
    ParentColor = False
  end
  object OkButton: TButton
    Left = 64
    Height = 25
    Top = 235
    Width = 73
    Caption = 'OK'
    Default = True
    OnClick = OkButtonClick
    OnKeyDown = KeyDown
    TabOrder = 2
  end
  object CancelButton: TButton
    Left = 144
    Height = 25
    Top = 235
    Width = 73
    Caption = 'Cancel'
    OnClick = CancelButtonClick
    OnKeyDown = KeyDown
    TabOrder = 3
  end
  object DirectoryListBox: TListBox
    Left = 8
    Height = 153
    Top = 24
    Width = 257
    ItemHeight = 16
    OnKeyDown = KeyDown
    TabOrder = 0
  end
  object DriveComboBox: TComboBox
    Left = 8
    Height = 19
    Top = 200
    Width = 257
    ItemHeight = 0
    OnKeyDown = KeyDown
    TabOrder = 1
  end
end
