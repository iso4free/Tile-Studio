object Lists: TLists
  Left = 185
  Top = 215
  Width = 515
  Height = 462
  Caption = 'Project Lists'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 382
    Height = 13
    Caption = 'Lists (these can be any lists you might want to export with #list, start with [Name]):'
  end
  object Notes: TMemo
    Left = 8
    Top = 24
    Width = 477
    Height = 360
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
  object CloseButton: TButton
    Left = 412
    Top = 391
    Width = 73
    Height = 25
    Hint = 'Return to tile editor'
    Anchors = [akRight, akBottom]
    Caption = '&Close'
    Default = True
    TabOrder = 1
    OnClick = CloseButtonClick
  end
end
