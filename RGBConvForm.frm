object RGBConv: TRGBConv
  Left = 192
  Top = 107
  Width = 450
  Height = 429
  Anchors = [akLeft, akBottom]
  Caption = 'Color Conversion Scripts'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 96
  object lblFilename: TLabel
    Left = 8
    Top = 376
    Width = 39
    Height = 13
    Caption = 'filename'
  end
  object Script: TMemo
    Left = 8
    Top = 8
    Width = 425
    Height = 351
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
  object btnSave: TButton
    Left = 248
    Top = 368
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Save'
    ModalResult = 1
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object btnCancel: TButton
    Left = 344
    Top = 368
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
    OnClick = btnCancelClick
  end
end
