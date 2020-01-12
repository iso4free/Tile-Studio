object MainForm: TMainForm
  Left = 260
  Height = 683
  Top = 223
  Width = 843
  Caption = 'Tile Studio'
  ClientHeight = 683
  ClientWidth = 843
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  KeyPreview = True
  Menu = MainMenu
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  Position = poDesktopCenter
  LCLVersion = '7.0'
  object TilePanel: TPanel
    Left = 0
    Height = 98
    Top = 585
    Width = 843
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 94
    ClientWidth = 839
    TabOrder = 0
    object Tab: TTabControl
      Left = 0
      Height = 76
      Top = 0
      Width = 839
      HotTrack = True
      OnChange = TabChange
      TabPosition = tpBottom
      Align = alClient
      TabOrder = 0
      object TileScrollBox: TScrollBox
        Left = 2
        Height = 46
        Top = 2
        Width = 835
        HorzScrollBar.Page = 161
        HorzScrollBar.Tracking = True
        VertScrollBar.Page = 1
        VertScrollBar.Visible = False
        Align = alClient
        BorderStyle = bsNone
        ClientHeight = 46
        ClientWidth = 835
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object TileBitmap: TImage
          Left = 0
          Height = 33
          Top = 0
          Width = 161
          OnMouseDown = TileBitmapMouseDown
          Stretch = True
        end
        object CursorImage: TImage
          Left = 24
          Height = 41
          Top = 0
          Width = 41
          OnMouseDown = TileBitmapMouseDown
          Transparent = True
        end
      end
    end
    object StatusBar: TStatusBar
      Left = 0
      Height = 18
      Top = 76
      Width = 839
      Panels = <      
        item
          Alignment = taCenter
          Width = 100
        end      
        item
          Alignment = taCenter
          Width = 140
        end      
        item
          Alignment = taCenter
          Width = 135
        end      
        item
          Alignment = taCenter
          Width = 100
        end      
        item
          Alignment = taCenter
          Width = 32
        end      
        item
          Alignment = taCenter
          Width = 50
        end      
        item
          Width = 50
        end>
      SimplePanel = False
    end
  end
  object RightPanel: TPanel
    Left = 725
    Height = 556
    Top = 29
    Width = 118
    Align = alRight
    BevelOuter = bvNone
    ClientHeight = 552
    ClientWidth = 114
    TabOrder = 1
    object PalettePanel: TPanel
      Left = 0
      Height = 33
      Top = 0
      Width = 114
      Align = alTop
      BorderWidth = 4
      ClientHeight = 29
      ClientWidth = 110
      TabOrder = 0
      object Palette: TPaintBox
        Left = 5
        Height = 19
        Top = 5
        Width = 100
        Align = alClient
        Color = clNone
        ParentColor = False
        OnDblClick = PaletteDblClick
        OnMouseDown = PaletteMouseDown
        OnMouseMove = PaletteMouseMove
        OnMouseUp = PaletteMouseUp
        OnPaint = PalettePaint
      end
    end
    object ColorsPanel: TPanel
      Left = 0
      Height = 32
      Top = 33
      Width = 114
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 28
      ClientWidth = 110
      TabOrder = 1
      object ColorPanel: TPanel
        Left = 0
        Height = 28
        Top = 0
        Width = 26
        Align = alLeft
        BorderWidth = 4
        ClientHeight = 24
        ClientWidth = 22
        TabOrder = 0
        object Color: TShape
          Left = 5
          Height = 14
          Hint = 'Drawing Color'
          Top = 5
          Width = 12
          Align = alClient
          Brush.Color = clGray
          ParentShowHint = False
          OnMouseDown = ColorMouseDown
          OnMouseMove = ColorMouseMove
          ShowHint = True
        end
      end
      object BackGroundPanel: TPanel
        Left = 26
        Height = 28
        Top = 0
        Width = 26
        Align = alLeft
        BorderWidth = 4
        ClientHeight = 24
        ClientWidth = 22
        TabOrder = 1
        object BackGround: TShape
          Left = 5
          Height = 14
          Hint = 'Transparent Color'
          Top = 5
          Width = 12
          Align = alClient
          Brush.Color = clBtnFace
          ParentShowHint = False
          Pen.Style = psClear
          OnMouseDown = BackGroundMouseDown
          OnMouseMove = BackGroundMouseMove
          ShowHint = True
        end
      end
      object FromToPanel: TPanel
        Left = 52
        Height = 28
        Top = 0
        Width = 58
        Align = alClient
        BorderWidth = 3
        ClientHeight = 24
        ClientWidth = 54
        TabOrder = 2
        object FromTo: TPaintBox
          Left = 3
          Height = 22
          Hint = 'Color Brightness'
          Top = 3
          Width = 54
          ParentShowHint = False
          ShowHint = True
          OnMouseDown = FromToMouseDown
          OnMouseMove = FromToMouseMove
          OnMouseUp = FromToMouseUp
          OnPaint = FromToPaint
        end
      end
    end
    object PatternPanel: TPanel
      Left = 0
      Height = 32
      Top = 65
      Width = 114
      Align = alTop
      BorderWidth = 4
      ClientHeight = 28
      ClientWidth = 110
      TabOrder = 2
      object Pattern: TImage
        Left = 5
        Height = 18
        Top = 5
        Width = 100
        Align = alClient
      end
    end
    object ProgressPanel: TPanel
      Left = 0
      Height = 16
      Top = 536
      Width = 114
      Align = alBottom
      BorderWidth = 1
      ClientHeight = 12
      ClientWidth = 110
      TabOrder = 3
      Visible = False
      object ProgressBar: TProgressBar
        Left = 2
        Height = 8
        Top = 2
        Width = 106
        Align = alClient
        TabOrder = 0
      end
    end
    object CurTilePanel: TPanel
      Left = 0
      Height = 50
      Top = 97
      Width = 114
      Align = alTop
      BorderWidth = 4
      ClientHeight = 46
      ClientWidth = 110
      TabOrder = 4
      object pPreview: TPanel
        Left = 22
        Height = 41
        Top = 2
        Width = 65
        BevelInner = bvLowered
        BorderWidth = 1
        ClientHeight = 37
        ClientWidth = 61
        TabOrder = 0
        object bmpPreview: TImage
          Left = 3
          Height = 31
          Top = 3
          Width = 55
          Align = alClient
          OnMouseDown = bmpPreviewMouseDown
        end
      end
    end
    object TilePartsPanel: TPanel
      Left = 0
      Height = 80
      Top = 147
      Width = 114
      Align = alTop
      BorderWidth = 4
      ClientHeight = 76
      ClientWidth = 110
      TabOrder = 5
      object bUps: TSpeedButton
        Left = 16
        Height = 17
        Top = 46
        Width = 11
        AllowAllUp = True
        Caption = 'v'
        Flat = True
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        GroupIndex = 11
        OnClick = fUpsClick
        ParentFont = False
      end
      object mUps: TSpeedButton
        Left = 49
        Height = 17
        Top = 46
        Width = 11
        AllowAllUp = True
        Caption = 'v'
        Flat = True
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        GroupIndex = 14
        OnClick = fUpsClick
        ParentFont = False
      end
      object fUps: TSpeedButton
        Left = 82
        Height = 17
        Top = 46
        Width = 11
        AllowAllUp = True
        Caption = 'v'
        Flat = True
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        GroupIndex = 17
        OnClick = fUpsClick
        ParentFont = False
      end
      object bMir: TSpeedButton
        Left = 5
        Height = 17
        Top = 46
        Width = 11
        AllowAllUp = True
        Caption = 'h'
        Flat = True
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        GroupIndex = 10
        OnClick = fUpsClick
        ParentFont = False
      end
      object mMir: TSpeedButton
        Left = 38
        Height = 17
        Top = 46
        Width = 11
        AllowAllUp = True
        Caption = 'h'
        Flat = True
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        GroupIndex = 13
        OnClick = fUpsClick
        ParentFont = False
      end
      object fMir: TSpeedButton
        Left = 71
        Height = 17
        Top = 46
        Width = 11
        AllowAllUp = True
        Caption = 'h'
        Flat = True
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        GroupIndex = 16
        OnClick = fUpsClick
        ParentFont = False
      end
      object bRot: TSpeedButton
        Left = 27
        Height = 17
        Top = 46
        Width = 11
        AllowAllUp = True
        Caption = 'r'
        Flat = True
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        GroupIndex = 12
        OnClick = fUpsClick
        ParentFont = False
      end
      object mRot: TSpeedButton
        Left = 60
        Height = 17
        Top = 46
        Width = 11
        AllowAllUp = True
        Caption = 'r'
        Flat = True
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        GroupIndex = 15
        OnClick = fUpsClick
        ParentFont = False
      end
      object fRot: TSpeedButton
        Left = 93
        Height = 17
        Top = 46
        Width = 11
        AllowAllUp = True
        Caption = 'r'
        Flat = True
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        GroupIndex = 18
        OnClick = fUpsClick
        ParentFont = False
      end
      object pBack: TPanel
        Left = 6
        Height = 33
        Top = 2
        Width = 33
        BevelInner = bvRaised
        BorderWidth = 1
        ClientHeight = 29
        ClientWidth = 29
        TabOrder = 0
        OnMouseDown = SelectBackMidFront
        object bmpBack: TImage
          Left = 1
          Height = 27
          Top = 1
          Width = 27
          OnMouseDown = SelectBackMidFront
          Transparent = True
        end
      end
      object pMid: TPanel
        Left = 38
        Height = 33
        Top = 2
        Width = 33
        BevelInner = bvRaised
        BorderWidth = 1
        ClientHeight = 29
        ClientWidth = 29
        TabOrder = 1
        OnMouseDown = SelectBackMidFront
        object bmpMid: TImage
          Left = 1
          Height = 27
          Top = 1
          Width = 27
          OnMouseDown = SelectBackMidFront
          Transparent = True
        end
      end
      object pFront: TPanel
        Left = 70
        Height = 33
        Top = 2
        Width = 33
        BevelInner = bvRaised
        BorderWidth = 1
        ClientHeight = 29
        ClientWidth = 29
        TabOrder = 2
        OnMouseDown = SelectBackMidFront
        object bmpFront: TImage
          Left = 1
          Height = 27
          Top = 1
          Width = 27
          OnMouseDown = SelectBackMidFront
          Transparent = True
        end
      end
    end
    object ClipTab: TTabControl
      Left = 0
      Height = 49
      Top = 418
      Width = 114
      HotTrack = True
      OnChange = ClipTabChange
      Align = alBottom
      TabOrder = 6
      Visible = False
      object ClipScrollBox: TScrollBox
        Left = 2
        Height = 19
        Hint = 'Clipboard'
        Top = 28
        Width = 110
        HorzScrollBar.Page = 73
        HorzScrollBar.Tracking = True
        VertScrollBar.Page = 19
        VertScrollBar.Tracking = True
        Align = alClient
        BorderStyle = bsNone
        ClientHeight = 19
        ClientWidth = 107
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object ClipBitmap: TImage
          Left = 0
          Height = 25
          Top = 0
          Width = 73
        end
      end
    end
    object SeqTab: TTabControl
      Left = 0
      Height = 69
      Hint = 'Tile Sequences'
      Top = 467
      Width = 114
      OnChange = SeqTabChange
      TabPosition = tpBottom
      Align = alBottom
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Visible = False
      object SeqBitmap: TImage
        Left = 16
        Height = 33
        Top = 8
        Width = 65
      end
    end
    object UtilsTab: TPageControl
      Left = 0
      Height = 85
      Top = 333
      Width = 114
      ActivePage = RGBTab
      Align = alBottom
      HotTrack = True
      MultiLine = True
      TabIndex = 0
      TabOrder = 8
      TabPosition = tpBottom
      Options = [nboMultiLine]
      object RGBTab: TTabSheet
        Caption = 'RGB'
        ClientHeight = 52
        ClientWidth = 104
        object RGBPanel: TPanel
          Left = 0
          Height = 52
          Top = 0
          Width = 104
          Align = alClient
          ClientHeight = 48
          ClientWidth = 100
          TabOrder = 0
          object RGBControlPanel: TPanel
            Left = 1
            Height = 17
            Top = 30
            Width = 98
            Align = alBottom
            BevelOuter = bvNone
            ClientHeight = 13
            ClientWidth = 94
            TabOrder = 0
            object bRGBConvertAll: TSpeedButton
              Left = 62
              Height = 17
              Top = 0
              Width = 44
              Caption = 'all tiles'
              Flat = True
              Visible = False
            end
            object bRGBEdit: TSpeedButton
              Left = 0
              Height = 17
              Top = 0
              Width = 33
              Caption = 'edit'
              Flat = True
              OnClick = bRGBEditClick
            end
            object bRGBRun: TSpeedButton
              Left = 30
              Height = 17
              Top = 0
              Width = 33
              Caption = 'run'
              Flat = True
              OnClick = bRGBRunClick
            end
          end
          object RGBConvListBox: TListBox
            Left = 1
            Height = 29
            Top = 1
            Width = 98
            Align = alClient
            BorderStyle = bsNone
            ItemHeight = 0
            ScrollWidth = 98
            TabOrder = 1
            TopIndex = -1
          end
        end
      end
      object PosTab: TTabSheet
        Caption = 'Pos'
        ClientHeight = 81
        ClientWidth = 110
        ImageIndex = 1
        object HistoryPanel: TPanel
          Left = 0
          Height = 57
          Top = 0
          Width = 110
          Align = alClient
          ClientHeight = 53
          ClientWidth = 106
          TabOrder = 0
          object HistoryControlPanel: TPanel
            Left = 0
            Height = 17
            Top = 37
            Width = 108
            Align = alBottom
            BevelOuter = bvNone
            ClientHeight = 13
            ClientWidth = 104
            TabOrder = 0
            object bHistoryRec: TSpeedButton
              Left = 6
              Height = 17
              Top = 0
              Width = 33
              AllowAllUp = True
              Caption = 'rec'
              Down = True
              Flat = True
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              GroupIndex = 10
              OnClick = fUpsClick
              ParentFont = False
            end
            object bHistoryShow: TSpeedButton
              Left = 37
              Height = 17
              Top = 0
              Width = 34
              AllowAllUp = True
              Caption = 'show'
              Flat = True
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              GroupIndex = 10
              OnClick = bHistoryShowClick
              ParentFont = False
            end
            object bHistoryClear: TSpeedButton
              Left = 69
              Height = 17
              Top = 0
              Width = 34
              AllowAllUp = True
              Caption = 'clear'
              Flat = True
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              GroupIndex = 10
              OnClick = bHistoryClearClick
              ParentFont = False
            end
          end
          object HistoryListBox: TListBox
            Left = 0
            Height = 38
            Top = 0
            Width = 108
            Align = alClient
            BorderStyle = bsNone
            ItemHeight = 0
            MultiSelect = True
            OnClick = HistoryListBoxClick
            ScrollWidth = 108
            TabOrder = 1
            TopIndex = -1
          end
        end
      end
    end
  end
  object ScrollBox: TScrollBox
    Left = 92
    Height = 340
    Top = 61
    Width = 405
    HorzScrollBar.Page = 329
    HorzScrollBar.Tracking = True
    VertScrollBar.Page = 265
    VertScrollBar.Tracking = True
    ClientHeight = 336
    ClientWidth = 401
    Color = clSilver
    ParentColor = False
    TabOrder = 2
    object Tile: TImage
      Cursor = crArrow
      Left = 56
      Height = 217
      Top = 48
      Width = 273
      OnMouseDown = TileMouseDown
      OnMouseMove = TileMouseMove
      OnMouseUp = TileMouseUp
      Stretch = True
    end
    object TileSelection: TShape
      Left = 32
      Height = 65
      Top = 64
      Width = 73
      Brush.Color = 8454143
      Brush.Style = bsBDiagonal
      Pen.Style = psDot
      OnMouseDown = TileSelectionMouseDown
      OnMouseMove = TileSelectionMouseMove
      OnMouseUp = TileSelectionMouseUp
    end
    object Grid: TImage
      Left = 8
      Height = 65
      Top = 88
      Width = 73
      OnMouseDown = TileMouseDown
      OnMouseMove = TileMouseMove
      OnMouseUp = TileMouseUp
      Transparent = True
      Visible = False
    end
  end
  object Toolbar: TToolBar
    Left = 0
    Height = 29
    Top = 0
    Width = 843
    ButtonHeight = 23
    ButtonWidth = 25
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeOuter = esNone
    Images = ImageList
    TabOrder = 3
    object ToolButton4: TToolButton
      Left = 2
      Height = 23
      Top = 1
      Caption = 'ToolButton4'
      ImageIndex = 22
      Style = tbsSeparator
    end
    object NewButton: TToolButton
      Left = 10
      Hint = 'New Project'
      Top = 1
      Caption = '&New Project'
      ImageIndex = 6
      MenuItem = NewGame1
      ParentShowHint = False
      ShowHint = True
    end
    object OpenButton: TToolButton
      Left = 35
      Hint = 'Open'
      Top = 1
      Caption = '&Open...'
      ImageIndex = 7
      MenuItem = Open1
      ParentShowHint = False
      ShowHint = True
    end
    object SaveButton: TToolButton
      Left = 60
      Hint = 'Save'
      Top = 1
      Caption = '&Save'
      ImageIndex = 8
      MenuItem = Save1
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton10: TToolButton
      Left = 85
      Height = 23
      Top = 1
      Caption = 'ToolButton10'
      ImageIndex = 26
      Style = tbsSeparator
    end
    object ToolButton6: TToolButton
      Left = 93
      Hint = 'New Tile Set...'
      Top = 1
      Caption = 'New &Tile Set...'
      ImageIndex = 26
      MenuItem = NewTileSet1
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton9: TToolButton
      Left = 118
      Hint = 'New Map...'
      Top = 1
      Caption = 'New &Map...'
      ImageIndex = 27
      MenuItem = Map1
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton8: TToolButton
      Left = 143
      Height = 23
      Top = 1
      Caption = 'ToolButton8'
      ImageIndex = 22
      Style = tbsSeparator
    end
    object CutButton: TToolButton
      Left = 151
      Hint = 'Cut'
      Top = 1
      Caption = 'Cu&t'
      ImageIndex = 0
      MenuItem = Cut1
      ParentShowHint = False
      ShowHint = True
    end
    object CopyButton: TToolButton
      Left = 176
      Hint = 'Copy'
      Top = 1
      Caption = '&Copy'
      ImageIndex = 1
      MenuItem = Copy1
      ParentShowHint = False
      ShowHint = True
    end
    object PasteButton: TToolButton
      Left = 201
      Hint = 'Paste'
      Top = 1
      Caption = '&Paste'
      ImageIndex = 2
      MenuItem = Paste1
      ParentShowHint = False
      ShowHint = True
    end
    object DeleteButton: TToolButton
      Left = 226
      Hint = 'Delete'
      Top = 1
      Caption = '&Delete'
      ImageIndex = 5
      MenuItem = Delete1
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton1: TToolButton
      Left = 251
      Height = 23
      Top = 1
      Caption = 'ToolButton1'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object TileModeButton: TToolButton
      Left = 259
      Hint = 'Tile Editor'
      Top = 1
      Caption = 'TileModeButton'
      Grouped = True
      ImageIndex = 23
      OnClick = TileModeButtonClick
      ParentShowHint = False
      ShowHint = True
    end
    object MapModeButton: TToolButton
      Left = 284
      Hint = 'Map Editor'
      Top = 1
      Caption = 'MapModeButton'
      Grouped = True
      ImageIndex = 24
      OnClick = MapModeButtonClick
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton2: TToolButton
      Left = 309
      Height = 23
      Top = 1
      Caption = 'ToolButton2'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ZoomButton: TToolButton
      Left = 317
      Hint = 'Zoom...'
      Top = 1
      Caption = '&Zoom...'
      ImageIndex = 12
      MenuItem = Zoom1
      ParentShowHint = False
      ShowHint = True
    end
    object ZoomInButton: TToolButton
      Left = 342
      Hint = 'Zoom In'
      Top = 1
      Caption = 'Zoom &In'
      ImageIndex = 18
      MenuItem = ZoomIn1
      ParentShowHint = False
      ShowHint = True
    end
    object ZoomOutButton: TToolButton
      Left = 367
      Hint = 'Zoom Out'
      Top = 1
      Caption = 'Zoom &Out'
      ImageIndex = 19
      MenuItem = ZoomOut1
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton3: TToolButton
      Left = 392
      Height = 23
      Top = 1
      Caption = 'ToolButton3'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object UndoButton: TToolButton
      Left = 400
      Hint = 'Undo'
      Top = 1
      Caption = '&Undo'
      ImageIndex = 3
      MenuItem = Undo1
      ParentShowHint = False
      ShowHint = True
    end
    object RedoButton: TToolButton
      Left = 425
      Hint = 'Redo'
      Top = 1
      Caption = '&Redo'
      ImageIndex = 4
      MenuItem = Redo1
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton7: TToolButton
      Left = 450
      Height = 23
      Top = 1
      Caption = 'ToolButton7'
      ImageIndex = 20
      Style = tbsSeparator
    end
    object NewTileButton: TToolButton
      Left = 458
      Hint = 'New Tile'
      Top = 1
      Caption = 'Add &New Tile'
      ImageIndex = 20
      MenuItem = NewTile1
      ParentShowHint = False
      ShowHint = True
    end
    object ReplaceColorsButton: TToolButton
      Left = 483
      Top = 1
      Caption = 'Replace C&olors'
      ImageIndex = 28
      MenuItem = ReplaceColors1
    end
    object ColorMatchButton: TToolButton
      Left = 508
      Hint = 'Match Colors to Palette'
      Top = 1
      Caption = 'M&atch Colors'
      ImageIndex = 21
      MenuItem = MatchColors1
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton5: TToolButton
      Left = 533
      Height = 23
      Top = 1
      Caption = 'ToolButton5'
      ImageIndex = 22
      Style = tbsSeparator
    end
    object AnimateButton: TToolButton
      Left = 541
      Hint = 'Animate'
      Top = 1
      AllowAllUp = True
      Caption = '&Animate'
      Grouped = True
      ImageIndex = 25
      MenuItem = Animate1
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
    end
    object ToolButton12: TToolButton
      Left = 566
      Height = 23
      Top = 1
      Caption = 'ToolButton12'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ImportEdlev: TToolButton
      Left = 574
      Top = 1
      Caption = 'ImportEdlev'
      OnClick = ImportEdlevClick
      Visible = False
    end
    object OpacityTrackBar: TTrackBar
      Left = 599
      Height = 37
      Top = 1
      Width = 52
      Max = 16
      Position = 16
      TabOrder = 0
    end
  end
  object LeftPanel: TPanel
    Left = 0
    Height = 556
    Top = 29
    Width = 68
    Align = alLeft
    BevelOuter = bvNone
    ClientHeight = 552
    ClientWidth = 64
    TabOrder = 4
    object ToolPanel: TPanel
      Left = 0
      Height = 286
      Top = 0
      Width = 64
      Align = alTop
      BorderWidth = 4
      ClientHeight = 282
      ClientWidth = 60
      TabOrder = 0
      object PencilButton: TSpeedButton
        Left = 2
        Height = 30
        Hint = 'Pencil'
        Top = 2
        Width = 30
        Down = True
        Flat = True
        Glyph.Data = {
          72010000424D7201000000000000760000002800000015000000150000000100
          040000000000FC000000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777770007777777777777777777770007777777777777777777770007777
          7777777777707777700077777777777778070777700077777777777700777000
          0000777777777700007777777000777777770030077777777000777777003FFB
          07777777700077777003FFB077777777700077770110FBB07777777770007770
          11910B0777777777700077011919900777777777700070119199107777777777
          7000711919910777777777777000719199107777777777777000791991077777
          7777777770007199107777777777777770007991077777777777777770007910
          77777777777777777000777777777777777777777000
        }
        GroupIndex = 1
        OnClick = SetDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object LineButton: TSpeedButton
        Left = 2
        Height = 30
        Hint = 'Line'
        Top = 32
        Width = 30
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003333333333333333300300003333333333333333008300003333
          3333333333300833000033333333333333008333000033333333333330083333
          0000333333333333008333330000333333333330083333330000333333333300
          8333333300003333333330083333333300003333333300833333333300003333
          3330083333333333000033333300833333333333000033333008333333333333
          0000333300833333333333330000333008333333333333330000330083333333
          3333333300003008333333333333333300003083333333333333333300003333
          33333333333333330000
        }
        GroupIndex = 1
        OnClick = SetDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object RectButton: TSpeedButton
        Left = 32
        Height = 30
        Hint = 'Rectangle'
        Top = 32
        Width = 30
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003388888888888888888300003000000000000000008300003083
          3333333333333083000030833333333333333083000030833333333333333083
          0000308333333333333330830000308333333333333330830000308333333333
          3333308300003083333333333333308300003083333333333333308300003083
          3333333333333083000030833333333333333083000030833333333333333083
          0000308333333333333330830000308333333333333330830000308333333333
          3333308300003088888888888888808300003000000000000000003300003333
          33333333333333330000
        }
        GroupIndex = 1
        OnClick = SetDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object RoundRectButton: TSpeedButton
        Left = 32
        Height = 30
        Hint = 'Round Rectangle'
        Top = 62
        Width = 30
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003333338888888883333300003333800000000088833300003330
          0333333333008833000033083333333333330833000033033333333333330883
          0000308333333333333330830000308333333333333330830000308333333333
          3333308300003083333333333333308300003083333333333333308300003083
          3333333333333083000030833333333333333083000030833333333333333083
          0000308833333333333330330000330833333333333308330000330888333333
          3338033300003330088888888800333300003333300000000033333300003333
          33333333333333330000
        }
        GroupIndex = 1
        OnClick = SetDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object EllipseButton: TSpeedButton
        Left = 2
        Height = 30
        Hint = 'Ellipse'
        Top = 62
        Width = 30
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003333333388888333333300003333338000000883333300003333
          3003333380083333000033330333333333808333000033303333333333380833
          0000338033333333333308330000330333333333333380830000380333333333
          3333308300003803333333333333308300003803333333333333308300003803
          3333333333333083000038083333333333333033000033803333333333330833
          0000338083333333333303330000333808333333333033330000333380083333
          3003333300003333388000000833333300003333333888883333333300003333
          33333333333333330000
        }
        GroupIndex = 1
        OnClick = SetDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object BrushButton: TSpeedButton
        Left = 32
        Height = 30
        Hint = 'Paint Brush'
        Top = 2
        Width = 30
        Flat = True
        Glyph.Data = {
          72010000424D7201000000000000760000002800000015000000150000000100
          040000000000FC000000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777770007777777777777777777770007785785555587777777770007777
          77775D555877777770007777777775D555877777700077777777775D55577777
          700077777777775D55587777700077777777755D5555777770007777777755FD
          5555777770007777777755F5555087777000777777780FF55000077770007777
          7770FF0050000777700077777770FF00000007777000777777780F0000008777
          700077777777808888087777700077777777707F78077777700077777777707F
          78077777700077777777707F78077777700077777777707F7807777770007777
          77777700007777777000777777777777777777777000
        }
        GroupIndex = 1
        OnClick = SetDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object FillButton: TSpeedButton
        Left = 2
        Height = 30
        Hint = 'Flood Fill'
        Top = 92
        Width = 30
        Flat = True
        Glyph.Data = {
          72010000424D7201000000000000760000002800000015000000150000000100
          040000000000FC000000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777770007777777777777777777770007770777777777777777770007775
          7777777777777777700077707777777700777777700077757777777080077777
          700077750777770837007777700077755777708377F007777000777057770837
          7FFF00777000777550708377FFFFF007700077770508377FFFFFFB0770007777
          508077FF0FFFB7077000777775507FF0F0FB70777000777777500FF00FB70777
          700077777005500FFB707777700077777077550FB70777777000777707770000
          7077777770007777077007700777777770007777000777777777777770007777
          77777777777777777000777777777777777777777000
        }
        GroupIndex = 1
        OnClick = SetDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object FilledRectButton: TSpeedButton
        Left = 32
        Height = 30
        Hint = 'Filled Rectangle'
        Top = 92
        Width = 30
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003388888888888888888300003000000000000000008300003088
          8888888888888083000030888888888888888083000030888888888888888083
          0000308888888888888880830000308888888888888880830000308888888888
          8888808300003088888888888888808300003088888888888888808300003088
          8888888888888083000030888888888888888083000030888888888888888083
          0000308888888888888880830000308888888888888880830000308888888888
          8888808300003088888888888888808300003000000000000000003300003333
          33333333333333330000
        }
        GroupIndex = 1
        OnClick = SetDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object FilledRoundRectButton: TSpeedButton
        Left = 32
        Height = 30
        Hint = 'Filled Round Rectangle'
        Top = 122
        Width = 30
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003333338888888883333300003333800000000088833300003330
          0888888888008833000033088888888888880833000033088888888888880883
          0000308888888888888880830000308888888888888880830000308888888888
          8888808300003088888888888888808300003088888888888888808300003088
          8888888888888083000030888888888888888083000030888888888888888083
          0000308888888888888880330000330888888888888808330000330888888888
          8888033300003330088888888800333300003333300000000033333300003333
          33333333333333330000
        }
        GroupIndex = 1
        OnClick = SetDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object FilledEllipseButton: TSpeedButton
        Left = 2
        Height = 30
        Hint = 'Filled Ellipse'
        Top = 122
        Width = 30
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003333333388888333333300003333338000000883333300003333
          3008888880083333000033330888888888808333000033308888888888880833
          0000338088888888888808330000330888888888888880830000380888888888
          8888808300003808888888888888808300003808888888888888808300003808
          8888888888888083000038088888888888888033000033808888888888880833
          0000338088888888888803330000333808888888888033330000333380088888
          8003333300003333388000000833333300003333333888883333333300003333
          33333333333333330000
        }
        GroupIndex = 1
        OnClick = SetDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object LightButton: TSpeedButton
        Left = 2
        Height = 30
        Hint = 'Brighten'
        Top = 220
        Width = 30
        AllowAllUp = True
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333000033333333333333333333000033333F333F333F33333300003333
          33F33F33F33333330000333F33F33F33F33F333300003333F333333333F33333
          000033333F3377733F333F3300003FF33337FFF7333FF3330000333F337FFFFF
          733333330000333337FFFFFFF733333300003FFF37FFFFFFF73FFF3300003333
          37FFFFFFF733333300003333337FFFFF73333333000033FF3337FFF7333FF333
          00003F333F3377733F333F3300003333F333333333F333330000333F333F3F33
          F33F33330000333333F33F33F33333330000333333F33F333F33333300003333
          33333333333333330000
        }
        GroupIndex = 2
        ShowHint = True
        ParentShowHint = False
      end
      object DarkButton: TSpeedButton
        Left = 32
        Height = 30
        Hint = 'Darken'
        Top = 220
        Width = 30
        AllowAllUp = True
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003333333333333333333300003333300000033333333300003333
          3308888003333333000033333330888880333333000033333333088888033333
          0000333333330888880333330000333333333088888033330000333333333088
          8880333300003333333330888880333300003333333330888880333300003333
          3333308888803333000033333333308888803333000033333333088888033333
          0000333333330888880333330000333333308888803333330000333333088880
          0333333300003333300000033333333300003333333333333333333300003333
          33333333333333330000
        }
        GroupIndex = 2
        ShowHint = True
        ParentShowHint = False
      end
      object PlusButton: TSpeedButton
        Left = 2
        Height = 30
        Hint = 'Add Colors'
        Top = 250
        Width = 30
        AllowAllUp = True
        Flat = True
        Glyph.Data = {
          72010000424D7201000000000000760000002800000015000000150000000100
          040000000000FC000000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777770007777777777777777777770007777777777777777777770007777
          7766667BBBB777777000777766666AAABBBBB777700077766666AAAAABBBBB77
          700077766666AAAAABBBBB7770007766666AAAAAAABBBBB770007766666AAAAA
          AABBBBB770007766666AAAAAAABBBBB770007766666AAAAAAABBBBB770007766
          666AAAAAAABBBBB770007766666AAAAAAABBBBB770007766666AAAAAAABBBBB7
          700077766666AAAAABBBBB77700077766666AAAAABBBBB777000777766666AAA
          BBBBB777700077777766667BBBB7777770007777777777777777777770007777
          77777777777777777000777777777777777777777000
        }
        GroupIndex = 2
        ShowHint = True
        ParentShowHint = False
      end
      object RandomButton: TSpeedButton
        Left = 32
        Height = 30
        Hint = 'Smooth Random Fill'
        Top = 250
        Width = 30
        AllowAllUp = True
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003333333333333333333300003388888888888888883300003388
          0877888888878833000033888888808788088833000033878008888888800833
          0000338888887880087888330000338877888888887888330000338008888877
          8888783300003388888808888888883300003388878888800878883300003388
          8888887888880833000033878808788088880833000033878888788088878833
          0000338888888888778888330000338887808888888888330000338008888780
          0887883300003388888888888888883300003333333333333333333300003333
          33333333333333330000
        }
        GroupIndex = 2
        ShowHint = True
        ParentShowHint = False
      end
      object SelectionButton: TSpeedButton
        Left = 2
        Height = 30
        Hint = 'Selection'
        Top = 152
        Width = 30
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003388883338888333388300003000033300003333008300003083
          3333333333333083000030333333333333333033000033333333333333333333
          0000338333333333333333330000308333333333333333830000308333333333
          3333308300003083333333333333308300003083333333333333308300003033
          3333333333333083000033333333333333333033000033333333333333333333
          0000338333333333333333830000308333333333333330830000308333333333
          3333308300003088833388883338808300003000333000033300003300003333
          33333333333333330000
        }
        GroupIndex = 1
        OnClick = SetDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object LineToolPanel: TPanel
        Left = 8
        Height = 26
        Hint = 'Line Width'
        Top = 188
        Width = 48
        BevelOuter = bvLowered
        ClientHeight = 22
        ClientWidth = 44
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnMouseDown = LineToolMouseDown
        object LineTool: TShape
          Left = 4
          Height = 1
          Top = 10
          Width = 36
          Brush.Color = clGray
          Pen.Color = clGray
          OnMouseDown = LineToolMouseDown
        end
      end
    end
    object ExtraPanel: TPanel
      Left = 0
      Height = 100
      Top = 358
      Width = 64
      Align = alTop
      ClientHeight = 96
      ClientWidth = 60
      TabOrder = 1
      object MapCodeButton: TSpeedButton
        Left = 8
        Height = 22
        Hint = 'Map Code'
        Top = 66
        Width = 48
        Caption = '0'
        OnClick = MapCodeButtonClick
        ShowHint = True
        ParentShowHint = False
      end
      object BoundPanel: TPanel
        Left = 8
        Height = 48
        Hint = 'Click to set Bounds'
        Top = 6
        Width = 48
        BevelOuter = bvLowered
        BorderWidth = 2
        ClientHeight = 44
        ClientWidth = 44
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object BoundBox: TPaintBox
          Left = 3
          Height = 38
          Hint = 'Bounds (Shift+Click to set Lighting Angle)'
          Top = 3
          Width = 38
          Align = alClient
          OnMouseDown = BoundBoxMouseDown
          OnPaint = BoundBoxPaint
        end
      end
    end
    object MapToolPanel: TPanel
      Left = 0
      Height = 72
      Top = 286
      Width = 64
      Align = alTop
      ClientHeight = 68
      ClientWidth = 60
      TabOrder = 2
      object MapPointButton: TSpeedButton
        Left = 2
        Height = 30
        Hint = 'Pencil'
        Top = 2
        Width = 30
        Down = True
        Flat = True
        Glyph.Data = {
          72010000424D7201000000000000760000002800000015000000150000000100
          040000000000FC000000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777770007777777777777777777770007777777777777777777770007777
          7777777777707777700077777777777778070777700077777777777700777000
          0000777777777700007777777000777777770030077777777000777777003FFB
          07777777700077777003FFB077777777700077770110FBB07777777770007770
          11910B0777777777700077011919900777777777700070119199107777777777
          7000711919910777777777777000719199107777777777777000791991077777
          7777777770007199107777777777777770007991077777777777777770007910
          77777777777777777000777777777777777777777000
        }
        GroupIndex = 1
        OnClick = SetMapDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object MapRectButton: TSpeedButton
        Left = 32
        Height = 30
        Hint = 'Block Fill'
        Top = 32
        Width = 30
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003388888888888888888300003000000000000000008300003088
          8888888888888083000030888888888888888083000030888888888888888083
          0000308888888888888880830000308888888888888880830000308888888888
          8888808300003088888888888888808300003088888888888888808300003088
          8888888888888083000030888888888888888083000030888888888888888083
          0000308888888888888880830000308888888888888880830000308888888888
          8888808300003088888888888888808300003000000000000000003300003333
          33333333333333330000
        }
        GroupIndex = 1
        OnClick = SetMapDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object ZOrderButton: TSpeedButton
        Left = 2
        Height = 30
        Hint = 'Fill with subsequent tiles'
        Top = 32
        Width = 30
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003388888888888888888300003000000000000000008300003088
          888880888888808300003088FFF8808888F8808300003088888F808FFFFF8083
          000030888FF8808F88F8808300003088888F8088F8F8808300003088FFF88088
          F888808300003088888880888888808300003000000000000000008300003088
          888880888888808300003088FFF8808FFFF88083000030888F888088F8888083
          000030888F8880888F88808300003088FF88808F88F88083000030888F888088
          FF88808300003088888880888888808300003000000000000000003300003333
          33333333333333330000
        }
        GroupIndex = 1
        OnClick = SetMapDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
      object BlockButton: TSpeedButton
        Left = 32
        Height = 30
        Hint = 'Selection'
        Top = 2
        Width = 30
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333300003388883338888333388300003000033300003333008300003083
          3333333333333083000030333333333333333033000033333333333333333333
          0000338333333333333333330000308333333333333333830000308333333333
          3333308300003083333333333333308300003083333333333333308300003033
          3333333333333083000033333333333333333033000033333333333333333333
          0000338333333333333333830000308333333333333330830000308333333333
          3333308300003088833388883338808300003000333000033300003300003333
          33333333333333330000
        }
        GroupIndex = 1
        OnClick = SetMapDrawingTool
        ShowHint = True
        ParentShowHint = False
      end
    end
    object AlphaPanel: TPanel
      Left = 0
      Height = 23
      Top = 458
      Width = 64
      Align = alTop
      BorderWidth = 4
      ClientHeight = 19
      ClientWidth = 60
      TabOrder = 3
      Visible = False
      object AlphaPaintBox: TPaintBox
        Left = 5
        Height = 9
        Top = 5
        Width = 50
        Align = alClient
        OnPaint = AlphaPaintBoxPaint
      end
    end
  end
  object MapTab: TTabControl
    Left = 184
    Height = 297
    Top = 152
    Width = 345
    HotTrack = True
    OnChange = MapTabChange
    TabOrder = 5
    Visible = False
    object MapScrollBox: TScrollBox
      Left = 2
      Height = 267
      Top = 28
      Width = 341
      HorzScrollBar.Page = 265
      HorzScrollBar.Tracking = True
      VertScrollBar.Page = 233
      VertScrollBar.Tracking = True
      Align = alClient
      BorderStyle = bsNone
      ClientHeight = 267
      ClientWidth = 341
      TabOrder = 0
      object MapDisplay: TPaintBox
        Left = 0
        Height = 233
        Top = 0
        Width = 265
        OnMouseDown = bmpMapMouseDown
        OnMouseMove = bmpMapMouseMove
        OnMouseUp = bmpMapMouseUp
        OnPaint = MapDisplayPaint
      end
    end
  end
  object UsedColors: TPanel
    Left = 697
    Height = 556
    Top = 29
    Width = 28
    Align = alRight
    BorderWidth = 4
    ClientHeight = 552
    ClientWidth = 24
    TabOrder = 6
    Visible = False
    object UsedColorsImage: TImage
      Left = 5
      Height = 542
      Top = 5
      Width = 14
      Align = alClient
      OnMouseDown = UsedColorsImageMouseDown
      OnMouseMove = UsedColorsImageMouseMove
      OnMouseUp = UsedColorsImageMouseUp
    end
  end
  object InvPanel: TPanel
    Left = 480
    Height = 105
    Top = 80
    Width = 89
    ClientHeight = 101
    ClientWidth = 85
    TabOrder = 7
    Visible = False
    object bmp1: TImage
      Left = 6
      Height = 33
      Top = 6
      Width = 33
    end
    object bmp2: TImage
      Left = 46
      Height = 33
      Top = 30
      Width = 33
    end
    object SelBmp: TImage
      Left = 22
      Height = 25
      Top = 70
      Width = 41
    end
  end
  object ColorPatternsPanel: TPanel
    Left = 617
    Height = 556
    Top = 29
    Width = 80
    Align = alRight
    BorderWidth = 4
    ClientHeight = 552
    ClientWidth = 76
    TabOrder = 8
    Visible = False
    object ColorPatternsImage: TImage
      Left = 5
      Height = 542
      Top = 5
      Width = 66
      Align = alClient
      OnMouseDown = ColorPatternsImageMouseDown
      OnMouseMove = ColorPatternsImageMouseMove
      OnMouseUp = ColorPatternsImageMouseUp
    end
  end
  object MainMenu: TMainMenu
    Images = ImageList
    Left = 280
    Top = 32
    object File1: TMenuItem
      Caption = '&File'
      object NewGame1: TMenuItem
        Caption = '&New Project'
        Hint = 'New Project'
        ImageIndex = 6
        OnClick = NewGame1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Open1: TMenuItem
        Caption = '&Open...'
        Hint = 'Open'
        ImageIndex = 7
        ShortCut = 16463
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = '&Save'
        Hint = 'Save'
        ImageIndex = 8
        ShortCut = 16467
        OnClick = Save1Click
      end
      object SaveAs1: TMenuItem
        Caption = 'Save &As...'
        OnClick = SaveAs1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object NewTileSet1: TMenuItem
        Caption = 'New &Tile Set...'
        Hint = 'New Tile Set...'
        ImageIndex = 26
        ShortCut = 16468
        OnClick = NewTileCollection1Click
      end
      object RemoveTileSet1: TMenuItem
        Caption = '&Remove Tile Set'
        OnClick = RemoveTileSet1Click
      end
      object Map1: TMenuItem
        Caption = 'New &Map...'
        Hint = 'New Map...'
        ImageIndex = 27
        ShortCut = 16461
        OnClick = Map1Click
      end
      object RemoveMap1: TMenuItem
        Caption = 'R&emove Map'
        OnClick = RemoveMap1Click
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object ImportTiles1: TMenuItem
        Caption = '&Import Tiles...'
        ShortCut = 115
        OnClick = ImportTiles1Click
      end
      object RefreshImportedTiles1: TMenuItem
        Caption = '&Refresh Imported Tiles'
        ShortCut = 116
        OnClick = RefreshImportedTiles1Click
      end
      object ExportTiles1: TMenuItem
        Caption = '&Export Tiles...'
        ShortCut = 8307
        OnClick = ExportTiles1Click
      end
      object SaveCurrentTile1: TMenuItem
        Caption = 'Save &Current Tile As...'
        ShortCut = 16499
        OnClick = SaveCurrentTile1Click
      end
      object N37: TMenuItem
        Caption = '-'
      end
      object MapExportScaleDownFactor1: TMenuItem
        Tag = 1
        Caption = 'Map Export Scale Down Factor'
        object N110: TMenuItem
          Tag = 1
          Caption = '1'
          Checked = True
          RadioItem = True
          OnClick = N110Click
        end
        object N210: TMenuItem
          Tag = 2
          Caption = '2'
          RadioItem = True
          OnClick = N110Click
        end
        object N41: TMenuItem
          Tag = 4
          Caption = '4'
          RadioItem = True
          OnClick = N110Click
        end
        object N82: TMenuItem
          Tag = 8
          Caption = '8'
          RadioItem = True
          OnClick = N110Click
        end
      end
      object ExportMapasImage1: TMenuItem
        Caption = 'Export Map as &Image'
        ShortCut = 24691
        OnClick = ExportMapasImage1Click
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object RecentProjects1: TMenuItem
        Caption = 'Recent &Projects...'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit1Click
      end
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
      OnClick = Edit1Click
      OnDrawItem = Edit1DrawItem
      object Undo1: TMenuItem
        Caption = '&Undo'
        Hint = 'Undo'
        ImageIndex = 3
        ShortCut = 16474
        OnClick = Undo1Click
      end
      object Redo1: TMenuItem
        Caption = '&Redo'
        Hint = 'Redo'
        ImageIndex = 4
        ShortCut = 16473
        OnClick = Redo1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Cut1: TMenuItem
        Caption = 'Cu&t'
        Hint = 'Cut'
        ImageIndex = 0
        ShortCut = 16472
        OnClick = Cut1Click
      end
      object Copy1: TMenuItem
        Caption = '&Copy'
        Hint = 'Copy'
        ImageIndex = 1
        ShortCut = 16451
        OnClick = Copy1Click
      end
      object Paste1: TMenuItem
        Caption = '&Paste'
        Hint = 'Paste'
        ImageIndex = 2
        ShortCut = 16470
        OnClick = Paste1Click
      end
      object StretchPaste1: TMenuItem
        Caption = '&Stretch Paste'
        ShortCut = 24662
        OnClick = StretchPaste1Click
      end
      object ScaledPaste1: TMenuItem
        Caption = 'Sc&aled Paste'
        object HalfSize1: TMenuItem
          Caption = '&Half Size'
          OnClick = HalfSize1Click
        end
        object DoubleSize1: TMenuItem
          Caption = '&Double Size'
          OnClick = DoubleSize1Click
        end
      end
      object Delete1: TMenuItem
        Caption = '&Delete'
        Hint = 'Delete'
        ImageIndex = 5
        ShortCut = 46
        OnClick = Delete1Click
      end
      object N35: TMenuItem
        Caption = '-'
      end
      object UseOldNoiseFunctions1: TMenuItem
        Caption = 'Use Old &Noise Functions'
        ShortCut = 49231
        OnClick = UseOldNoiseFunctions1Click
      end
      object RealTimeLightening1: TMenuItem
        Caption = 'Rea&l-Time Lightening'
        ShortCut = 49234
        OnClick = RealTimeLightening1Click
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object ReplaceColors2: TMenuItem
        Caption = 'Repl&ace Colors...'
        ShortCut = 8306
        OnClick = ReplaceColors2Click
      end
      object CopyTiles1: TMenuItem
        Caption = 'Cop&y Tiles...'
        ShortCut = 114
        OnClick = CopyTiles1Click
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object Properties1: TMenuItem
        Caption = 'Tile Pr&operties...'
        ShortCut = 122
        OnClick = Properties1Click
      end
      object MapProperties1: TMenuItem
        Caption = '&Map Properties...'
        ShortCut = 123
        OnClick = MapProperties1Click
      end
      object N32: TMenuItem
        Caption = '-'
      end
      object ProjectInformation1: TMenuItem
        Caption = 'Project &Information'
        ShortCut = 8265
        OnClick = ProjectInformation1Click
      end
    end
    object View1: TMenuItem
      Caption = '&View'
      object ToggleTileMapEditor1: TMenuItem
        Caption = 'Toggle Tile/Map &Editor'
        ShortCut = 16393
        OnClick = ToggleTileMapEditor1Click
      end
      object N14: TMenuItem
        Caption = '-'
        GroupIndex = 2
      end
      object Zoom1: TMenuItem
        Caption = '&Zoom...'
        GroupIndex = 2
        Hint = 'Zoom...'
        ImageIndex = 12
        object ActualSize1: TMenuItem
          Caption = '&Actual Size'
          OnClick = ActualSize1Click
        end
        object FitinWindow1: TMenuItem
          Caption = '&Fit in Window'
          ShortCut = 16454
          OnClick = FitinWindow1Click
        end
      end
      object ZoomIn1: TMenuItem
        Caption = 'Zoom &In'
        GroupIndex = 2
        Hint = 'Zoom In'
        ImageIndex = 18
        ShortCut = 16457
        OnClick = ZoomIn1Click
      end
      object ZoomOut1: TMenuItem
        Caption = 'Zoom &Out'
        GroupIndex = 2
        Hint = 'Zoom Out'
        ImageIndex = 19
        ShortCut = 16458
        OnClick = ZoomOut1Click
      end
      object N15: TMenuItem
        Caption = '-'
        GroupIndex = 2
      end
      object BackgroundColor1: TMenuItem
        Caption = '&Background Color...'
        GroupIndex = 2
        ShortCut = 16450
        OnClick = BackgroundColor1Click
      end
      object ShowMapLayer1: TMenuItem
        Caption = 'Show Map &Layer...'
        GroupIndex = 2
        object ShowBackLayer: TMenuItem
          Caption = 'Back'
          Checked = True
          OnClick = ShowBackLayerClick
        end
        object ShowMidLayer: TMenuItem
          Caption = 'Mid'
          Checked = True
          OnClick = ShowMidLayerClick
        end
        object ShowFrontLayer: TMenuItem
          Caption = 'Front'
          Checked = True
          OnClick = ShowFrontLayerClick
        end
      end
      object N5: TMenuItem
        Caption = '-'
        GroupIndex = 2
      end
      object ShowUsedColors1: TMenuItem
        Caption = 'Show &Used Colors'
        GroupIndex = 2
        ShortCut = 16469
        OnClick = ShowUsedColors1Click
      end
      object ShowUsedColorPatterns1: TMenuItem
        Caption = 'Show Used Color &Patterns'
        GroupIndex = 2
        ShortCut = 16464
        OnClick = ShowUsedColorPatterns1Click
      end
      object N40: TMenuItem
        Caption = '-'
        GroupIndex = 2
      end
      object Toolbar1: TMenuItem
        Caption = 'Tool&bar'
        Checked = True
        GroupIndex = 2
        OnClick = Toolbar1Click
      end
      object Pattern1: TMenuItem
        Caption = 'Tile P&attern'
        Checked = True
        GroupIndex = 2
        OnClick = Pattern1Click
      end
      object HideTileSetPanel1: TMenuItem
        Caption = '&Hide Tile Set Panel'
        GroupIndex = 2
        ShortCut = 16456
        OnClick = HideTileSetPanel1Click
      end
      object ShowTileGrid1: TMenuItem
        Caption = 'Show Tile &Grid'
        Checked = True
        GroupIndex = 2
        ShortCut = 16455
        OnClick = ShowTileGrid1Click
      end
      object HideOnionSkin1: TMenuItem
        Caption = 'Hide &Onion Skin'
        GroupIndex = 2
        ShortCut = 8271
        OnClick = HideOnionSkin1Click
      end
    end
    object Tile1: TMenuItem
      Caption = '&Tile'
      object NewTile1: TMenuItem
        Caption = 'Add &New Tile'
        Hint = 'New Tile'
        ImageIndex = 20
        ShortCut = 16462
        OnClick = NewTile1Click
      end
      object InsertNewTile1: TMenuItem
        Caption = '&Insert New Tile'
        ShortCut = 45
        OnClick = InsertNewTile1Click
      end
      object Clear1: TMenuItem
        Caption = '&Clear Tile'
        ShortCut = 16465
        OnClick = Clear1Click
      end
      object Fill1: TMenuItem
        Caption = '&Fill'
        ShortCut = 70
        OnClick = Fill1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Lighten1: TMenuItem
        Caption = '&Lighten'
        ShortCut = 8268
        OnClick = Lighten1Click
      end
      object Darken1: TMenuItem
        Caption = '&Darken'
        ShortCut = 8260
        OnClick = Lighten1Click
      end
      object N33: TMenuItem
        Caption = '-'
      end
      object GradientFill1: TMenuItem
        Caption = '&Gradient Fill...'
        Visible = False
        object Horizontal3: TMenuItem
          Caption = '&Horizontal'
          Enabled = False
          ShortCut = 72
          OnClick = Horizontal3Click
        end
        object Vertical3: TMenuItem
          Caption = '&Vertical'
          Enabled = False
          ShortCut = 86
          OnClick = Vertical3Click
        end
        object Diagonal1: TMenuItem
          Caption = '&Diagonal'
          Enabled = False
          ShortCut = 68
          OnClick = Diagonal1Click
        end
      end
      object SplitColorPattern1: TMenuItem
        Caption = 'Split Color Pattern'
        ShortCut = 8201
        OnClick = SplitColorPattern1Click
      end
      object ReplaceColors1: TMenuItem
        Caption = 'Replace C&olors'
        ImageIndex = 28
        OnClick = ReplaceColors1Click
      end
      object MatchColors1: TMenuItem
        Caption = 'M&atch Colors'
        Hint = 'Match Colors to Palette'
        ImageIndex = 21
        ShortCut = 16471
        OnClick = MatchColors1Click
      end
      object ReplaceColorUnderCursor1: TMenuItem
        Caption = '&Replace Color Under Cursor'
        ShortCut = 16466
        OnClick = ReplaceColorUnderCursor1Click
      end
      object SetBounds1: TMenuItem
        Caption = 'Toggle &Bounds...'
        object Top1: TMenuItem
          Caption = '&Top'
          ShortCut = 8230
          OnClick = Top1Click
        end
        object Bottom1: TMenuItem
          Caption = '&Bottom'
          ShortCut = 8232
          OnClick = Bottom1Click
        end
        object Left2: TMenuItem
          Caption = '&Left'
          ShortCut = 8229
          OnClick = Left2Click
        end
        object Right2: TMenuItem
          Caption = '&Right'
          ShortCut = 8231
          OnClick = Right2Click
        end
        object N13: TMenuItem
          Caption = '-'
        end
        object DiagonalUp1: TMenuItem
          Caption = 'Diagonal &Up'
          ShortCut = 8383
          OnClick = DiagonalUp1Click
        end
        object DiagonalDown1: TMenuItem
          Caption = 'Diagonal &Down'
          ShortCut = 8412
          OnClick = DiagonalDown1Click
        end
        object N12: TMenuItem
          Caption = '-'
        end
        object ClearAll1: TMenuItem
          Caption = '&Clear All'
          OnClick = ClearAll1Click
        end
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object FirstTile1: TMenuItem
        Caption = 'First Tile'
        ShortCut = 36
        OnClick = FirstTile1Click
      end
      object PreviousTile1: TMenuItem
        Caption = 'Pr&evious Tile'
        ShortCut = 37
        OnClick = PreviousTile1Click
      end
      object NextTile1: TMenuItem
        Caption = 'Ne&xt Tile'
        ShortCut = 39
        OnClick = NextTile1Click
      end
      object LastTile1: TMenuItem
        Caption = 'Last Tile'
        ShortCut = 35
        OnClick = LastTile1Click
      end
      object N39: TMenuItem
        Caption = '-'
      end
      object UseAsAlphaChannel1: TMenuItem
        Caption = 'Use as &Alpha Channel'
        ShortCut = 8257
        OnClick = UseAsAlphaChannel1Click
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object Flip1: TMenuItem
        Caption = 'Fl&ip or Rotate...'
        object Horizontal1: TMenuItem
          Caption = '&Horizontal'
          ShortCut = 8
          OnClick = Horizontal1Click
        end
        object Vertical1: TMenuItem
          Caption = '&Vertical'
          ShortCut = 8200
          OnClick = Vertical1Click
        end
        object RotateRight1: TMenuItem
          Caption = 'Rotate &Right'
          ShortCut = 16392
          OnClick = RotateRight1Click
        end
        object RotateLeft1: TMenuItem
          Caption = 'Rotate &Left'
          ShortCut = 24584
          OnClick = RotateLeft1Click
        end
      end
      object Move1: TMenuItem
        Caption = 'Move &Pixels...'
        object Up1: TMenuItem
          Caption = '&Up'
          ShortCut = 16422
          OnClick = Up1Click
        end
        object Down1: TMenuItem
          Caption = '&Down'
          ShortCut = 16424
          OnClick = Down1Click
        end
        object Left1: TMenuItem
          Caption = '&Left'
          ShortCut = 16421
          OnClick = Left1Click
        end
        object Right1: TMenuItem
          Caption = '&Right'
          ShortCut = 16423
          OnClick = Right1Click
        end
      end
      object MoveTile1: TMenuItem
        Caption = 'Move &Tile...'
        object MoveTileLeft: TMenuItem
          Caption = '&Left'
          ShortCut = 24613
          OnClick = MoveTileLeftClick
        end
        object MoveTileRight: TMenuItem
          Caption = '&Right'
          ShortCut = 24615
          OnClick = MoveTileRightClick
        end
      end
      object ChangeOffset1: TMenuItem
        Caption = 'C&hange Offset...'
        object Up3: TMenuItem
          Caption = '&Up'
          ShortCut = 40998
          OnClick = Up3Click
        end
        object Down3: TMenuItem
          Caption = '&Down'
          ShortCut = 41000
          OnClick = Down3Click
        end
        object Left4: TMenuItem
          Caption = '&Left'
          ShortCut = 40997
          OnClick = Left4Click
        end
        object Right4: TMenuItem
          Caption = '&Right'
          ShortCut = 40999
          OnClick = Right4Click
        end
        object ResetOffset1: TMenuItem
          Caption = 'Re&set Offset'
          OnClick = ResetOffset1Click
        end
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object DuplicateTile1: TMenuItem
        Caption = '&Duplicate Tile'
        ShortCut = 16452
        OnClick = DuplicateTile1Click
      end
      object RemoveDuplicateTiles1: TMenuItem
        Caption = '&Remove Duplicates'
        OnClick = RemoveDuplicateTiles1Click
      end
    end
    object Animation1: TMenuItem
      Caption = '&Animation'
      object FirstFrame1: TMenuItem
        Caption = 'Set &First Frame'
        ShortCut = 8411
        OnClick = FirstFrame1Click
      end
      object LastFrame1: TMenuItem
        Caption = 'Set &Last Frame'
        ShortCut = 8413
        OnClick = LastFrame1Click
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object NextFrame1: TMenuItem
        Caption = '&Next Frame'
        ShortCut = 32
        OnClick = NextFrame1Click
      end
      object PreviousFrame1: TMenuItem
        Caption = '&Previous Frame'
        ShortCut = 8224
        OnClick = PreviousFrame1Click
      end
      object N23: TMenuItem
        Caption = '-'
      end
      object ImportPovRayanimation1: TMenuItem
        Caption = '&Import PovRay animation...'
        OnClick = ImportPovRayanimation1Click
      end
      object MovePixels1: TMenuItem
        Caption = '&Move Pixels (entire animation) ...'
        object Up2: TMenuItem
          Caption = '&Up'
          OnClick = Up2Click
        end
        object Down2: TMenuItem
          Caption = '&Down'
          OnClick = Down2Click
        end
        object Left3: TMenuItem
          Caption = '&Left'
          OnClick = Left3Click
        end
        object Right3: TMenuItem
          Caption = '&Right'
          OnClick = Right3Click
        end
      end
      object N30: TMenuItem
        Caption = '-'
      end
      object Animate1: TMenuItem
        Caption = '&Animate'
        Hint = 'Animate'
        ImageIndex = 25
        ShortCut = 16449
        OnClick = Animate1Click
      end
      object AnimationSpeed1: TMenuItem
        Caption = 'Animation &Speed...'
        object NoDelay1: TMenuItem
          Caption = '&No Delay'
          OnClick = NoDelay1Click
        end
        object Faster1: TMenuItem
          Caption = '&Faster'
          ShortCut = 38
          OnClick = Faster1Click
        end
        object Default1: TMenuItem
          Caption = '&Default'
          OnClick = Default1Click
        end
        object Slower1: TMenuItem
          Caption = '&Slower'
          ShortCut = 40
          OnClick = Slower1Click
        end
      end
    end
    object Sequence1: TMenuItem
      Caption = '&Sequence'
      object InsertTileSequence1: TMenuItem
        Caption = '&Insert Current Tile Sequence'
        ShortCut = 118
        OnClick = InsertTileSequence1Click
      end
      object ConverttoTileSequence1: TMenuItem
        Caption = 'Convert Selection to Tile &Sequence'
        ShortCut = 8310
        OnClick = ConverttoTileSequence1Click
      end
      object ReplaceCurrentTileSequence1: TMenuItem
        Caption = '&Replace Current Tile Sequence'
        ShortCut = 24694
        OnClick = ReplaceCurrentTileSequence1Click
      end
      object RemoveTileSequence1: TMenuItem
        Caption = 'Remo&ve Tile Sequence'
        ShortCut = 16502
        OnClick = RemoveTileSequence1Click
      end
    end
    object Map2: TMenuItem
      Caption = '&Map'
      object SelectCurrentTile1: TMenuItem
        Caption = 'Select &Current Tile'
        ShortCut = 13
        OnClick = SelectCurrentTile1Click
      end
      object SelectBackMidFront1: TMenuItem
        Caption = 'Back/Mid/Front &Layer'
        object Next1: TMenuItem
          Caption = '&Next'
          ShortCut = 9
          OnClick = Next1Click
        end
        object Previous1: TMenuItem
          Caption = '&Previous'
          ShortCut = 8201
          OnClick = Previous1Click
        end
      end
      object FlipCurrentTile1: TMenuItem
        Caption = '&Flip...'
        object Horizontal2: TMenuItem
          Caption = '&Horizontal'
          ShortCut = 16392
          OnClick = Horizontal2Click
        end
        object Vertical2: TMenuItem
          Caption = '&Vertical'
          ShortCut = 24584
          OnClick = Vertical2Click
        end
      end
      object ReplaceSelectedTile1: TMenuItem
        Caption = 'Replace Clipped by Selected'
        ShortCut = 24658
        OnClick = ReplaceSelectedTile1Click
      end
      object Clip1: TMenuItem
        Caption = 'Clip...'
        object SelectPreviousClip1: TMenuItem
          Caption = 'Select Previous Clip'
          ShortCut = 57381
          OnClick = SelectPreviousClip1Click
        end
        object SelectNextClip1: TMenuItem
          Caption = 'Select Next Clip'
          ShortCut = 57383
          OnClick = SelectNextClip1Click
        end
      end
      object N20: TMenuItem
        Caption = '-'
      end
      object ClearArea1: TMenuItem
        Caption = 'Clea&r Area'
        ShortCut = 8238
        OnClick = ClearArea1Click
      end
      object RandomFill1: TMenuItem
        Caption = '&Random Fill'
        ShortCut = 16466
        OnClick = RandomFill1Click
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object InsertVertical1: TMenuItem
        Caption = 'Insert Rows'
        ShortCut = 8308
        OnClick = InsertVertical1Click
      end
      object InsertHorizontal1: TMenuItem
        Caption = 'Insert Columns'
        ShortCut = 8309
        OnClick = InsertHorizontal1Click
      end
      object DeleteVertical1: TMenuItem
        Caption = 'Delete Rows'
        ShortCut = 16500
        OnClick = DeleteVertical1Click
      end
      object DeleteHorizontal1: TMenuItem
        Caption = 'Delete Columns'
        ShortCut = 16501
        OnClick = DeleteHorizontal1Click
      end
      object N19: TMenuItem
        Caption = '-'
      end
      object NextMap1: TMenuItem
        Caption = '&Next Map'
        ShortCut = 49161
        OnClick = NextMap1Click
      end
      object PreviousMap1: TMenuItem
        Caption = 'Previous Map'
        ShortCut = 57353
        OnClick = PreviousMap1Click
      end
      object MoveMapLeft1: TMenuItem
        Caption = 'Move Map Left'
        ShortCut = 49189
        OnClick = MoveMapLeft1Click
      end
      object MoveMapRight1: TMenuItem
        Caption = 'Move Map Right'
        ShortCut = 49191
        OnClick = MoveMapRight1Click
      end
      object N36: TMenuItem
        Caption = '-'
      end
      object MapScrollFunction1: TMenuItem
        Caption = 'Map Scroll &Function'
        ShortCut = 8311
        OnClick = MapScrollFunction1Click
      end
      object N25: TMenuItem
        Caption = '-'
      end
      object ShowGrid1: TMenuItem
        Caption = 'Show &Grid'
        Checked = True
        ShortCut = 24647
        OnClick = ShowGrid1Click
      end
      object ShowMapCodes1: TMenuItem
        Caption = 'Show &Map Codes'
        Checked = True
        ShortCut = 24653
        OnClick = ShowMapCodes1Click
      end
      object ShowBounds1: TMenuItem
        Caption = 'Show &Bounds'
        Checked = True
        ShortCut = 24642
        OnClick = ShowBounds1Click
      end
      object SetGridGuidelines1: TMenuItem
        Caption = 'Set Grid G&uidelines...'
        OnClick = SetGridGuidelines1Click
      end
      object N31: TMenuItem
        Caption = '-'
      end
      object ImportMap1: TMenuItem
        Caption = '&Import Map...'
        ShortCut = 24649
        OnClick = ImportMap1Click
      end
      object ExportMap1: TMenuItem
        Caption = '&Export Map...'
        ShortCut = 24645
        OnClick = ExportMap1Click
      end
    end
    object Palette1: TMenuItem
      Caption = '&Palette'
      object N256ColorPalette1: TMenuItem
        Caption = '256 Color Palette'
        ShortCut = 119
        OnClick = N256ColorPalette1Click
      end
      object N38: TMenuItem
        Caption = '-'
      end
      object SmoothPalette1: TMenuItem
        Caption = '&Smooth Palette'
        Checked = True
        ShortCut = 8272
        OnClick = SmoothPalette1Click
      end
      object RearrangePalette1: TMenuItem
        Caption = 'Rearrange &Palette'
        OnClick = RearrangePalette1Click
      end
      object RGBColorDepth1: TMenuItem
        Caption = 'RGB Color &Depth'
        object N61: TMenuItem
          Caption = '&6'
          GroupIndex = 1
          RadioItem = True
          ShortCut = 16438
          OnClick = SetPaletteDepth
        end
        object N71: TMenuItem
          Caption = '&7'
          GroupIndex = 1
          RadioItem = True
          ShortCut = 16439
          OnClick = SetPaletteDepth
        end
        object N81: TMenuItem
          Caption = '&8'
          Checked = True
          GroupIndex = 1
          RadioItem = True
          ShortCut = 16440
          OnClick = SetPaletteDepth
        end
        object N91: TMenuItem
          Caption = '&9'
          GroupIndex = 1
          RadioItem = True
          ShortCut = 16441
          OnClick = SetPaletteDepth
        end
        object N101: TMenuItem
          Caption = '1&0'
          GroupIndex = 1
          RadioItem = True
          ShortCut = 16432
          OnClick = SetPaletteDepth
        end
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object ColorBrightness1: TMenuItem
        Caption = 'Drawing &Brightness...'
        object N_1: TMenuItem
          Caption = '&1 (Dark)'
          ShortCut = 8241
          OnClick = SetBrightness
        end
        object N_2: TMenuItem
          Caption = '&2'
          ShortCut = 8242
          OnClick = SetBrightness
        end
        object N_3: TMenuItem
          Caption = '&3'
          ShortCut = 8243
          OnClick = SetBrightness
        end
        object N_4: TMenuItem
          Caption = '&4'
          ShortCut = 8244
          OnClick = SetBrightness
        end
        object N_5: TMenuItem
          Caption = '&5 (Normal)'
          ShortCut = 8245
          OnClick = SetBrightness
        end
        object N_6: TMenuItem
          Caption = '&6'
          ShortCut = 8246
          OnClick = SetBrightness
        end
        object N_7: TMenuItem
          Caption = '&7'
          ShortCut = 8247
          OnClick = SetBrightness
        end
        object N_8: TMenuItem
          Caption = '&8'
          ShortCut = 8248
          OnClick = SetBrightness
        end
        object N_9: TMenuItem
          Caption = '&9 (Light)'
          ShortCut = 8249
          OnClick = SetBrightness
        end
        object N34: TMenuItem
          Caption = '-'
        end
        object Darker1: TMenuItem
          Caption = '&Darker'
          ShortCut = 16603
          OnClick = Darker1Click
        end
        object Lighter1: TMenuItem
          Caption = '&Lighter'
          ShortCut = 16605
          OnClick = Lighter1Click
        end
      end
      object ColorPatterns1: TMenuItem
        Caption = 'Color Pa&tterns...'
        object ToggleMultiple1: TMenuItem
          Caption = '&Toggle Color Pattern'
          ShortCut = 8240
          OnClick = ToggleMultiple1Click
        end
        object N17: TMenuItem
          Caption = '-'
        end
        object AddColorPattern1: TMenuItem
          Caption = '&Add Color Pattern'
          ShortCut = 192
          OnClick = AddColorPattern1Click
        end
        object RemoveColorPattern1: TMenuItem
          Caption = '&Remove Color Pattern'
          ShortCut = 8384
          OnClick = RemoveColorPattern1Click
        end
        object NextPattern1: TMenuItem
          Caption = '&Next Pattern'
          ShortCut = 221
          OnClick = NextPattern1Click
        end
        object PreviousPattern1: TMenuItem
          Caption = '&Previous Pattern'
          ShortCut = 219
          OnClick = PreviousPattern1Click
        end
      end
      object N29: TMenuItem
        Caption = '-'
      end
      object ShowCurrentPalette1: TMenuItem
        Caption = 'Show &Current Palette'
        ShortCut = 120
        OnClick = ShowCurrentPalette1Click
      end
      object PaletteManager1: TMenuItem
        Caption = 'Palette &Manager...'
        ShortCut = 16504
        OnClick = PaletteManager1Click
      end
    end
    object Code1: TMenuItem
      Caption = '&Code'
      object CodeGenerationSettings1: TMenuItem
        Caption = 'Code Generation &Settings...'
        ShortCut = 8313
        OnClick = CodeGenerationSettings1Click
      end
      object ProjectLists1: TMenuItem
        Caption = 'Project &Lists'
        ShortCut = 16505
        OnClick = ProjectLists1Click
      end
      object AntiAliasing1: TMenuItem
        Caption = '&Anti-Aliasing (Off)'
        object aaOff: TMenuItem
          Caption = 'Off'
          Checked = True
          RadioItem = True
          OnClick = aaClick
        end
        object aa2: TMenuItem
          Caption = '2'
          RadioItem = True
          OnClick = aaClick
        end
        object aa3: TMenuItem
          Caption = '3'
          RadioItem = True
          OnClick = aaClick
        end
        object aa4: TMenuItem
          Caption = '4'
          RadioItem = True
          OnClick = aaClick
        end
      end
      object N26: TMenuItem
        Caption = '-'
      end
      object OutputtoProjectDirectory1: TMenuItem
        Caption = 'Output to &Project Directory'
        Checked = True
        GroupIndex = 1
        RadioItem = True
        OnClick = OutputtoProjectDirectory1Click
      end
      object SelectOutputDirectory1: TMenuItem
        Caption = 'Select &Output Directory...'
        GroupIndex = 1
        RadioItem = True
        OnClick = SelectOutputDirectory1Click
      end
      object N27: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object Generate1: TMenuItem
        Caption = '&Generate Code'
        GroupIndex = 1
        ShortCut = 121
        OnClick = Generate1Click
      end
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object Tutorial1: TMenuItem
        Caption = '&Tutorial'
        ShortCut = 112
        OnClick = Tutorial1Click
      end
      object Homepage1: TMenuItem
        Caption = '&Homepage'
        OnClick = Homepage1Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object About1: TMenuItem
        Caption = '&About...'
        OnClick = About1Click
      end
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    Filter = 'BMP files (*.bmp)|*.bmp|PNG files (*.png)|*.png|PCX files (*.pcx)|*.pcx|All Files (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 249
    Top = 32
  end
  object SavePictureDialog: TSavePictureDialog
    Filter = 'TrueColor bitmap, 24 bpp (*.bmp)|*.bmp|HiColor bitmap, 16 bpp (*.bmp)|*.bmp|HiColor bitmap, 15 bpp (*.bmp)|*.bmp|256 color bitmap, 8 bpp (*.bmp)|*.bmp|16 color bitmap, 4 bpp (*.bmp)|*.bmp|Black/White bitmap, 1 bpp (*.bmp)|*.bmp|PNG bitmap (*.png)|*.png'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 312
    Top = 32
  end
  object ImageList: TImageList
    Left = 344
    Top = 32
    Bitmap = {
      4C691D0000001000000010000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF00000000000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF00000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000FF000000FF800000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000FF00000000800000FF800000FF800000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000FF800000FF800000FF00000000800000FF00000000000000008000
      00FF000000000000000000000000000000000000000000000000000000008000
      00FF0000000000000000800000FF00000000800000FF00000000000000008000
      00FF000000000000000000000000000000000000000000000000000000008000
      00FF0000000000000000800000FF00000000800000FF00000000000000008000
      00FF000000000000000000000000000000000000000000000000000000008000
      00FF0000000000000000800000FF0000000000000000800000FF800000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000FF800000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FFFFFFFFFF000000FF0000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFFFF000000FF0000
      00FFFFFFFFFF000000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000
      00FF800000FF000000000000000000000000000000FFFFFFFFFF000000FF0000
      00FF000000FF000000FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000
      00FFFFFFFFFF800000FF0000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFF000000FF000000FFFFFFFFFF8000
      00FF800000FF800000FF800000FF00000000000000FFFFFFFFFF000000FF0000
      00FF000000FF000000FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FF00000000000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFF000000FF000000FF000000FF0000
      00FF000000FFFFFFFFFF800000FF00000000000000FF000000FF000000FF0000
      00FF000000FF000000FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FF000000000000000000000000000000000000
      00000000000000000000800000FFFFFFFFFF000000FF000000FF000000FF0000
      00FF000000FFFFFFFFFF800000FF000000000000000000000000000000000000
      00000000000000000000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FF000000000000000000000000000000000000
      00000000000000000000800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF0000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000FF008080FF808080FF008080FF0000
      00FF00FFFFFF000000FF000000FF00FFFFFF000000FF808080FF008080FF8080
      80FF000000FF0000000000000000000000FF808080FF808080FF000000FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF808080FF0080
      80FF000000FF0000000000000000000000FF008080FF808080FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF808080FF8080
      80FF000000FF0000000000000000000000FF808080FF008080FF808080FF0080
      80FF808080FF008080FF808080FF008080FF808080FF008080FF808080FF0080
      80FF000000FF0000000000000000000000FF008080FF808080FF008080FF8080
      80FF008080FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF000000FF0000000000000000000000FF808080FF008080FF808080FF0080
      80FF808080FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000
      00FF800000FF0000000000000000000000FF008080FF808080FF008080FF8080
      80FF008080FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000
      00FFFFFFFFFF800000FF00000000000000FF808080FF008080FF808080FF0080
      80FF808080FF800000FFFFFFFFFF000000FF000000FF000000FFFFFFFFFF8000
      00FF800000FF800000FF800000FF000000FF008080FF808080FF008080FF8080
      80FF008080FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FF000000FF808080FF008080FF808080FF0080
      80FF808080FF800000FFFFFFFFFF000000FF000000FF000000FF000000FF0000
      00FF000000FFFFFFFFFF800000FF00000000000000FF000000FF000000FF0000
      00FF000000FF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FF000000000000000000000000000000000000
      000000000000800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000FF800000FF800000FF800000FF0000
      00000000000000000000000000000000000000000000800000FF000000000000
      000000000000800000FF800000FF000000000000000000000000000000008000
      00FF0000000000000000000000000000000000000000800000FF800000FF0000
      0000800000FF0000000000000000000000000000000000000000000000000000
      0000800000FF00000000000000000000000000000000800000FF800000FF8000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000800000FF00000000000000000000000000000000800000FF800000FF8000
      00FF800000FF0000000000000000000000000000000000000000000000000000
      0000800000FF00000000000000000000000000000000800000FF800000FF8000
      00FF800000FF800000FF00000000000000000000000000000000000000008000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      00FF800000FF800000FF800000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000FF0000
      0000000000000000000000000000800000FF800000FF00000000000000000000
      0000800000FF00000000000000000000000000000000800000FF000000000000
      00000000000000000000000000000000000000000000800000FF000000008000
      00FF800000FF00000000000000000000000000000000800000FF000000000000
      0000000000000000000000000000000000000000000000000000800000FF8000
      00FF800000FF00000000000000000000000000000000800000FF000000000000
      00000000000000000000000000000000000000000000800000FF800000FF8000
      00FF800000FF0000000000000000000000000000000000000000800000FF0000
      000000000000000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF0000000000000000000000000000000000000000800000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000000000000000000000000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF0000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF0000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF00000000000000000000000000000000000000FF0000
      00FF000000000000000000000000000000000000000000000000000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF00000000000000000000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000000000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FF0000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF0000
      00FF0000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF0000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF0000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF0000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF0000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF0000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF0000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF0000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF0000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      00FF00000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF0000000000000000000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF00000000000000FF00FFFFFFFFFFFFFF00FFFFFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000FFFFFFFFFF00FFFFFFFFFFFFFF00FF
      FFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF000000000000
      0000000000000000000000000000000000FF00FFFFFFFFFFFFFF00FFFFFFFFFF
      FFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF000000FF000000000000
      0000000000000000000000000000000000FFFFFFFFFF00FFFFFFFFFFFFFF00FF
      FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00FFFFFFFFFFFFFF00FFFFFF0000
      00FF008080FF008080FF008080FF008080FF008080FF008080FF008080FF0080
      80FF008080FF000000FF00000000000000FFFFFFFFFF00FFFFFF000000FF0080
      80FF008080FF008080FF008080FF008080FF008080FF008080FF008080FF0080
      80FF000000FF0000000000000000000000FF00FFFFFF000000FF008080FF0080
      80FF008080FF008080FF008080FF008080FF008080FF008080FF008080FF0000
      00FF000000000000000000000000000000FF000000FF008080FF008080FF0080
      80FF008080FF008080FF008080FF008080FF008080FF008080FF000000FF0000
      0000000000000000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF0000000000000000000000FF008080FF000000FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000
      00FFC0C0C0FF000000FF0000000000000000000000FF008080FF000000FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000
      00FF000000FF000000FF0000000000000000000000FF008080FF000000FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000
      00FF008080FF000000FF0000000000000000000000FF008080FF000000FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000
      00FF008080FF000000FF0000000000000000000000FF008080FF000000FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000
      00FF008080FF000000FF0000000000000000000000FF008080FF000000FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF0000
      00FF008080FF000000FF0000000000000000000000FF008080FF008080FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0080
      80FF008080FF000000FF0000000000000000000000FF008080FF008080FF0080
      80FF008080FF008080FF008080FF008080FF008080FF008080FF008080FF0080
      80FF008080FF000000FF0000000000000000000000FF008080FF008080FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF008080FF000000FF0000000000000000000000FF008080FF008080FF0000
      00FF000000FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0C0FF0000
      00FF008080FF000000FF0000000000000000000000FF008080FF008080FF0000
      00FF000000FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0C0FF0000
      00FF008080FF000000FF0000000000000000000000FF008080FF008080FF0000
      00FF000000FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0C0FF0000
      00FF008080FF000000FF000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF00000000000000000000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FF000000000000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FF808080FFC0C0C0FFC0C0C0FF808080FF0000
      00FF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF808080FFFFFF00FFFFFF00FFC0C0C0FF808080FF8080
      80FF000000FF0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FFC0C0C0FFFFFF00FFC0C0C0FFC0C0C0FF808080FFC0C0
      C0FF000000FF0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FFC0C0
      C0FF000000FF0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF808080FFC0C0C0FFC0C0C0FFFFFF00FF808080FF8080
      80FF000000FF0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FF808080FFC0C0C0FFC0C0C0FF808080FF0000
      00FF000000FF0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      000000000000000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
      00FF00000000800000FF800000FF000000000000000000000000000000000000
      000000000000000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF000000FF800000FF800000FF000000000000000000000000000000000000
      0000000000FFC0C0C0FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FF800000FF800000FF000000FF000000FF000000FF000000FF0000
      00FFC0C0C0FF000000FFC0C0C0FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FF800000FF800000FF000000FFFFFFFFFFFFFFFFFF000000FFC0C0
      C0FF000000FFC0C0C0FF000000FFC0C0C0FF000000FFC0C0C0FFC0C0C0FFC0C0
      C0FF000000FF800000FF800000FF000000FFFFFFFFFF000000FFC0C0C0FF0000
      00FFFFFFFFFF000000FFC0C0C0FF000000FFC0C0C0FF000000FF000000FF0000
      00FF00000000800000FF800000FF000000FFFFFFFFFF000000FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FF000000FFFFFFFFFF000000FF0000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FF0000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      0000000000000000000000000000000000FFFFFFFFFF000000FF000000FFFFFF
      FFFF000000FF000000FF000000FF000000FF000000FFFFFFFFFF000000FF0000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      0000000000000000000000000000000000FFFFFFFFFF000000FF000000FFFFFF
      FFFF000000FF000000FF000000FF000000FF000000FFFFFFFFFF000000FF0000
      0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      0000000000000000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      000000000000000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF0000000000000000000000FF000000FF00000000000000000000
      0000000000000000000000000000800000FF800000FF800000FF800000FF8000
      00FF800000FF800000FF00000000000000FF000000FF000000FF000000000000
      00000000000000000000800000FF800000FF800000FF00000000000000000000
      0000800000FF800000FF800000FF000000FF000000FF000000FF000000FF0000
      00000000000000000000800000FF800000FF800000FF00000000000000000000
      0000800000FF800000FF800000FF000000FF000000FF000000FF000000FF0000
      00FF0000000000000000800000FF800000FF800000FF00000000000000000000
      0000800000FF800000FF800000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000008000
      00FF800000FF800000FF00000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF00000000000000000000000000000000800000FF8000
      00FF800000FF0000000000000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF0000000000000000800000FF800000FF8000
      00FF000000000000000000000000000000FF000000FF000000FF000000FF0000
      00FF0000000000000000000000000000000000000000800000FF800000FF8000
      00FF000000000000000000000000000000FF000000FF00000000000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      00FF000000FF00000000000000000000000000000000800000FF800000FF8000
      00FF000000000000000000000000000000000000000000000000000000000000
      00FF000000FF00000000000000000000000000000000800000FF800000FF8000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF000000FF00000000000000000000
      000000000000000000000000000000000000000000FF808080FFFFFFFFFFFFFF
      FFFFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FF808080FF000000FF000000000000
      000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
      00FFFFFF00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF000000000000
      0000000000000000000000000000000000FFC0C0C0FFFFFFFFFFFFFF00FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF0000
      0000000000000000000000000000000000FFC0C0C0FFFFFFFFFFFFFF00FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF0000
      0000000000000000000000000000000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF0000
      0000000000000000000000000000000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FF0000
      000000000000000000000000000000000000000000FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFFFFFF000000FF000000000000
      000000000000000000000000000000000000000000FF808080FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFFFFFF808080FF000000FF000000000000
      00000000000000000000000000000000000000000000000000FF000000FFC0C0
      C0FFC0C0C0FFC0C0C0FFFFFFFFFF808080FF800000FF800000FF800000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF800000FFC0C0C0FF800000FF800000FF8000
      00FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000800000FFC0C0C0FF800000FF8000
      00FF800000FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000800000FFC0C0C0FF8000
      00FF800000FF800000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000FFC0C0
      C0FF800000FF800000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      00FF800000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80FF000080FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000080FF000080FF0000
      80FF000080FF000080FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000080FF00000000000000000000
      80FF000080FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000080FF00000000000000000000
      80FF0000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000000000000000000000000080FF00000000000000000000
      000000000000000000000000000000000000000000FF808080FFC0C0C0FFC0C0
      C0FF808080FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000080FF000000FF808080FFFFFFFFFFFFFFFFFFC0C0
      C0FFC0C0C0FF808080FF000000FF000000000000000000000000000000000000
      80FF0000000000000000000080FF000000FFC0C0C0FFFFFFFFFFFFFF00FFC0C0
      C0FFC0C0C0FFC0C0C0FF000000FF000000000000000000000000000080FF0000
      80FF0000000000000000000080FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFFFFFFFFF000000FF0000000000000000000080FF000080FF0000
      80FF000080FF000080FF00000000000000FF808080FFC0C0C0FFC0C0C0FFC0C0
      C0FFFFFFFFFF808080FF000000FF000000000000000000000000000080FF0000
      80FF00000000000000000000000000000000000000FF808080FFC0C0C0FFFFFF
      FFFF808080FF000000FF800000FF000000000000000000000000000000000000
      80FF0000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF800000FF800000FF800000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000FF800000FF800000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000FF800000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF0000000000000000000000000000000000000000000000000000
      00FFFFFFFFFF000000FF000000FF000000FF000000FF000000FFFFFFFFFF0000
      00FF000000000000000000000000000000000000000000000000000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000000000000000000000000000000000000000000000000000FFFFFF
      FFFF000000FF000000FF000000FF000000FF000000FFFFFFFFFF000000FF0000
      00FF000000FF000000FF000000000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0
      C0FF000000FFC0C0C0FF000000FF00000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFC0C0C0FF0000
      00FFC0C0C0FF000000FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FFC0C0
      C0FF000000FFC0C0C0FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC0C0C0FFC0C0C0FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FF808080FF808080FF808080FFC0C0C0FFC0C0C0FF0000
      00FFC0C0C0FF000000FF00000000000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FF00FFFFFF00FFFFFF00FFFFFFC0C0C0FFC0C0C0FF0000
      00FF000000FF000000FF00000000000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC0C0C0FF000000FF0000000000000000000000FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF000000FFC0C0
      C0FF000000FF00000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FFFFFF
      FFFF800000FF000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FFFFFF
      FFFF800000FF000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FFFFFFFFFF800000FF800000FF800000FF800000FF800000FFFFFF
      FFFF800000FF000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF800000FF000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF000000000000
      000000000000000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FFFFFFFFFF800000FF000000000000
      000000000000000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF000000000000
      000000000000000000000000000000000000800000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000FF000000000000
      000000000000000000000000000000000000800000FFFFFFFFFF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF00000000000000000000000000000000800000FFFFFFFFFF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FFFFFFFFFF8000
      00FF00000000000000000000000000000000800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF000000000000000000000000000000000000000000000000800000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000
      00FF000000000000000000000000000000000000000000000000800000FFFFFF
      FFFFFFFFFFFF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF000000000000000000000000800000FFFFFF
      FFFFFFFFFFFF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FFFFFFFFFF800000FF000000000000000000000000800000FF8000
      00FF800000FF800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF000000000000000000000000000000000000
      000000000000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FF000000000000000000000000000000000000
      000000000000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FF000000000000000000000000000000000000
      000000000000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF800000FF000000000000000000000000000000000000
      000000000000800000FF800000FF800000FF800000FF800000FF800000FF8000
      00FF800000FF800000FF800000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF808080FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF808080FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF808080FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000008080
      80FF808080FF808080FF000000FF808080FF808080FF808080FF808080FF8080
      80FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF808080FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF808080FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF808080FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080FF808080FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080FF000000000000000000000000000000FF000000000000
      000000000000808080FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF0000000000000000000000FF000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF808080FF00000000808080FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80FF00000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
      0000000000FF000000FF808080FF00000000000000FFFFFFFFFFFFFF00FFFFFF
      FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF000000FF808080FF0000
      000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFFFF
      00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF000000FF808080FF8080
      80FF00000000000000000000000000000000000000FFFFFFFFFFFFFF00FFFFFF
      FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF000000FF808080FF0000
      0000000000FF000000000000000000000000000000FFFFFF00FFFFFFFFFFFFFF
      00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF000000FF808080FF0000
      000000000000000000000000000000000000000000FFFFFFFFFFFFFF00FFFFFF
      FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF000000FF808080FF0000
      000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFFFF
      00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF000000FF808080FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF808080FF0000
      00000000000000000000000000000000000000000000808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080FF808080FF8080
      80FF808080FF808080FF00000000808080FF808080FF808080FF808080FF8080
      80FF0000000000000000000000000000000000000000808080FF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF000000FF808080FF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF000000FF00000000000000000000000000000000808080FF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF000000FF808080FF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF000000FF00000000000000000000000000000000808080FF00FF00FF00FF
      FFFF00FFFFFF00FF00FF000000FF808080FF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF000000FF00000000000000000000000000000000808080FF00FFFFFF00FF
      FFFF00FFFFFF00FFFFFF000000FF808080FF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF000000FF00000000000000000000000000000000808080FF00FF00FF00FF
      FFFF00FF00FF00FFFFFF000000FF808080FF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF000000FF00000000000000000000000000000000808080FF00FFFFFF00FF
      00FF00FFFFFF00FF00FF000000FF808080FF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF000000FF00000000000000000000000000000000808080FF00FF00FF00FF
      00FF00FF00FF00FF00FF000000FF808080FF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF000000FF00000000000000000000000000000000808080FF00FF00FF00FF
      00FF00FF00FF00FF00FF000000FF808080FF008000FF008000FF008000FF0080
      00FF000000FF00000000000000000000000000000000808080FF00FF00FF0080
      00FF00FF00FF008000FF000000FF808080FF008000FF008000FF008000FF0080
      00FF000000FF00000000000000000000000000000000808080FF008000FF00FF
      00FF008000FF00FF00FF000000FF808080FF008000FF008000FF008000FF0080
      00FF000000FF00000000000000000000000000000000808080FF008000FF0080
      00FF008000FF008000FF000000FF808080FF008000FF008000FF008000FF0080
      00FF000000FF00000000000000000000000000000000808080FF00FF00FF0080
      00FF008000FF00FF00FF000000FF808080FF008000FF008000FF008000FF0080
      00FF000000FF00000000000000000000000000000000808080FF008000FF0080
      00FF008000FF008000FF000000FF808080FF008000FF008000FF008000FF0080
      00FF000000FF00000000000000000000000000000000808080FF008000FF0080
      00FF008000FF008000FF000000FF808080FF008000FF008000FF008000FF0080
      00FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF00000000000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000000000000000000000000000FF00FFFFFF00FFFFFF00FF
      FFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF008000FF008000FF0080
      00FF000000FF808080FF0000000000000000000000FF00FFFFFF00FFFFFF00FF
      FFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF008000FF008000FF0080
      00FF000000FF808080FF0000000000000000000000FF00FFFFFF00FFFFFF00FF
      FFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF008000FF008000FF0080
      00FF000000FF808080FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF808080FF0000000000000000000000FF0000FFFF0000FFFF0000
      FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF0000FFFF0000FFFF00
      00FF000000FF808080FF0000000000000000000000FF0000FFFF0000FFFF0000
      FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF0000FFFF0000FFFF00
      00FF000000FF808080FF0000000000000000000000FF0000FFFF0000FFFF0000
      FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF0000FFFF0000FFFF00
      00FF000000FF808080FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF808080FF0000000000000000000000FF0000FFFF0000FFFF0000
      FFFF000000FFFF0000FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF00
      00FF000000FF808080FF0000000000000000000000FF0000FFFF0000FFFF0000
      FFFF000000FFFF0000FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF00
      00FF000000FF808080FF0000000000000000000000FF0000FFFF0000FFFF0000
      FFFF000000FFFF0000FFFF0000FFFF0000FF000000FFFF0000FFFF0000FFFF00
      00FF000000FF808080FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF808080FF000000000000000000000000808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF808080FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF
      00FF000000FF808080FF00000000000000000000000000000000000000000000
      00FFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF
      FFFF000000FF808080FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
      00FF000000FF808080FF0000000000000000000000FFFFFFFFFFFFFF00FFFFFF
      FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF000000FF808000FFFFFF
      FFFF000000FF808080FF0000000000000000000000FFFFFF00FFFFFFFFFFFFFF
      00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF000000FF808080FFFFFF
      00FF000000FF808080FF0000000000000000000000FFFFFFFFFFFFFF00FFFFFF
      FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF000000FF808000FFFFFF
      FFFF000000FF808080FF0000000000000000000000FFFFFF00FFFFFFFFFFFFFF
      00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF000000FF000000FF0000
      00FF000000FF808080FF0000000000000000000000FFFFFFFFFFFFFF00FFFFFF
      FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF000000FF808080FF8080
      80FF808080FF808080FF0000000000000000000000FFFFFF00FFFFFFFFFFFFFF
      00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF000000FF808080FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF808080FF0000
      00000000000000000000000000000000000000000000808080FF808080FF8080
      80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF
      00FF00FF00FFFFFF00FF0000000000000000FFFF00FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FF00FF00FF00FFFFFF00FFFFFF00FF00FF00FF
      FFFF00FFFFFF00FF00FF0000000000000000FFFF00FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF00FFFFFF00FF00FF00FF00FFFFFF008000FF00FF00FF00FFFFFF00FF
      00FF808000FF00FFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF00FF008000FF808000FF00FF00FF00FFFFFF808000FF00FF
      00FF00FF00FF808000FF0000000000000000C0C0C0FFFFFFFFFFFFFFFFFFC0C0
      C0FFFFFFFFFFC0C0C0FFFFFF00FF808000FF00FFFFFF008000FF0000FFFF0080
      00FF00FF00FFFFFF00FF0000000000000000FFFF00FFFFFFFFFFC0C0C0FFFFFF
      FFFFC0C0C0FFFFFF00FFFFFF00FFFFFF00FF008000FF00FFFFFF000080FF0000
      FFFF008000FFFFFF00FF0000000000000000FFFFFFFFFFFF00FFFFFFFFFFFFFF
      00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFF0000FFFF000080FF00FF
      FFFFFFFF00FFFFFFFFFF0000000000000000FFFF00FFFFFFFFFFFFFF00FFFFFF
      FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF00FFFFFF000080FF0000
      FFFFFFFFFFFFFFFF00FF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF000080FF00FF
      FFFFFFFFFFFFFFFFFFFF0000000000000000FFFFFFFF00FF00FFFFFFFFFF00FF
      00FFFFFFFFFF00FF00FFFFFFFFFF00FF00FFFFFFFFFF00FFFFFF000080FF0000
      FFFFFFFFFFFF00FF00FF000000000000000000FF00FF008000FF00FF00FF0080
      00FF00FF00FF008000FF00FF00FF008000FF00FF00FF008000FF00FF00FF0080
      00FF00FF00FF008000FF0000000000000000000080FF000080FF008080FF0080
      80FF000080FF000080FF008080FF008080FF000080FF000080FF008080FF0080
      80FF000080FF000080FF000000000000000000FFFFFF00FFFFFF0000FFFF0000
      FFFF00FFFFFF00FFFFFF0000FFFF0000FFFF00FFFFFF00FFFFFF0000FFFF0000
      FFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00FFFFFF00FF
      FFFF0000FFFF0000FFFF00FFFFFF00FFFFFF0000FFFF0000FFFF00FFFFFF00FF
      FFFF0000FFFF0000FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00FF00FF00FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00FF00FF00FF00FF00FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008000FF008000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00FF00FF00FF00FF00FF00FF00FF008000FF008000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00FF00FF00FF00FF00FF008000FF008000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00FF00FF00FF008000FF008000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF00FF008000FF008000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF
      00FF000000FF808080FF00000000000000000000000000000000000000000000
      00FFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF
      FFFF000000FF808080FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
      00FF000000FF808080FF0000000000000000000000FFFFFFFFFFFFFF00FFFFFF
      FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF000000FF808000FFFFFF
      FFFF000000FF808080FF0000000000000000000000FFFFFF00FF000000FF0000
      00FF000000FF000000FF000000FFFFFF00FFFFFFFFFF000000FF808080FFFFFF
      00FF000000FF808080FF0000000000000000000000FFFFFFFFFF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FF000000FF808000FFFFFF
      FFFF000000FF808080FF0000000000000000000000FFFFFF00FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF000000FF808080FF000000FF0000
      00FF000000FF808080FF0000000000000000000000FFFFFFFFFF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF808080FF000000FF808080FF8080
      80FF808080FF808080FF0000000000000000000000FFFFFF00FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      000000000000000000000000000000000000000000FF000000FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      00000000000000000000000000000000000000000000808080FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF
      00FF00FF00FFFFFF00FF0000000000000000FFFF00FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FF00FF00FF00FFFFFF00FFFFFF00FF00FF00FF
      FFFF00FFFFFF00FF00FF0000000000000000FFFF00FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF00FFFFFF00FF00FF00FF00FFFFFF008000FF00FF00FF00FFFFFF00FF
      00FF808000FF00FFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF00FF00FF00FF808000FF00FF00FF00FFFFFF808000FF00FF
      00FF00FF00FF808000FF0000000000000000C0C0C0FFFFFFFFFF000000FF0000
      00FF000000FF000000FF000000FF00FF00FF00FFFFFF008000FF0000FFFF0080
      00FF00FF00FFFFFF00FF0000000000000000FFFF00FFFFFFFFFF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FF00FF0000FFFF000080FF0000
      FFFF008000FFFFFF00FF0000000000000000FFFFFFFFFFFF00FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF000000FF00FFFFFF0000FFFF00FF
      FFFFFFFF00FFFFFFFFFF0000000000000000FFFF00FFFFFFFFFF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF808080FF000000FF00FFFFFF0000
      FFFFFFFFFFFFFFFF00FF0000000000000000FFFFFFFFFFFFFFFF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FF
      FFFFFFFFFFFFFFFFFFFF0000000000000000FFFFFFFF00FF00FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      FFFFFFFFFFFF00FF00FF000000000000000000FF00FF008000FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0080
      00FF00FF00FF008000FF0000000000000000000080FF000080FF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0080
      80FF000080FF000080FF000000000000000000FFFFFF00FFFFFF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      FFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FF
      FFFF0000FFFF0000FFFF00000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00000000000000000000000000000000000000000000808080FF808080FF8080
      80FF808080FF808080FF00000000808080FF808080FF808080FF808080FF8080
      80FF0000000000000000000000000000000000000000808080FFFFFFFFFFFFFF
      00FFFFFFFFFFFFFF00FF000000FF808080FFFFFFFFFF00FFFFFFFFFFFFFF00FF
      FFFF000000FF00000000000000000000000000000000808080FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FF000000FF808080FF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF000000FF00000000000000000000000000000000808080FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FF000000FF808080FF00FFFFFF00FFFFFF00FFFFFF00FF
      FFFF000000FF00000000000000000000000000000000808080FFFF0000FFFFFF
      00FFFF0000FFFFFF00FF000000FF808080FF0000FFFF00FFFFFF0000FFFF00FF
      FFFF000000FF00000000000000000000000000000000808080FFFFFF00FFFF00
      00FFFFFF00FFFF0000FF000000FF808080FF00FFFFFF0000FFFF00FFFFFF0000
      FFFF000000FF00000000000000000000000000000000808080FFFF0000FFFFFF
      00FFFF0000FFFFFF00FF000000FF808080FF0000FFFF00FFFFFF0000FFFF00FF
      FFFF000000FF00000000000000000000000000000000808080FFFF0000FFFF00
      00FFFF0000FFFF0000FF000000FF808080FF0000FFFF0000FFFF0000FFFF0000
      FFFF000000FF00000000000000000000000000000000808080FFFF0000FFFF00
      00FFFF0000FFFF0000FF000000FF808080FF0000FFFF0000FFFF0000FFFF0000
      FFFF000000FF00000000000000000000000000000000808080FFFF0000FF8000
      00FFFF0000FF800000FF000000FF808080FF0000FFFF000080FF0000FFFF0000
      80FF000000FF00000000000000000000000000000000808080FF800000FFFF00
      00FF800000FFFF0000FF000000FF808080FF000080FF0000FFFF000080FF0000
      FFFF000000FF00000000000000000000000000000000808080FFFF0000FF8000
      00FFFF0000FF800000FF000000FF808080FF0000FFFF000080FF0000FFFF0000
      80FF000000FF00000000000000000000000000000000808080FF800000FF8000
      00FF800000FF800000FF000000FF808080FF000080FF000080FF000080FF0000
      80FF000000FF00000000000000000000000000000000808080FF800000FF8000
      00FF800000FF800000FF000000FF808080FF000080FF000080FF000080FF0000
      80FF000000FF00000000000000000000000000000000808080FF000000FF8000
      00FF000000FF800000FF000000FF808080FF000000FF000080FF000000FF0000
      80FF000000FF0000000000000000000000000000000000000000000000FF0000
      00FF000000FF000000FF000000FF00000000000000FF000000FF000000FF0000
      00FF000000FF0000000000000000
    }
  end
  object ColorDialog: TColorDialog
    Color = clBlack
    CustomColors.Strings = (
      'ColorA=000000'
      'ColorB=000080'
      'ColorC=008000'
      'ColorD=008080'
      'ColorE=800000'
      'ColorF=800080'
      'ColorG=808000'
      'ColorH=808080'
      'ColorI=C0C0C0'
      'ColorJ=0000FF'
      'ColorK=00FF00'
      'ColorL=00FFFF'
      'ColorM=FF0000'
      'ColorN=FF00FF'
      'ColorO=FFFF00'
      'ColorP=FFFFFF'
      'ColorQ=C0DCC0'
      'ColorR=F0CAA6'
      'ColorS=F0FBFF'
      'ColorT=A4A0A0'
    )
    Left = 376
    Top = 32
  end
  object OpenDialog: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 168
    Top = 32
  end
  object SaveDialog: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 200
    Top = 32
  end
  object AnimationTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = AnimationTimerTimer
    Left = 80
    Top = 424
  end
  object SeqTimer: TTimer
    Enabled = False
    OnTimer = SeqTimerTimer
    Left = 112
    Top = 424
  end
  object ImportMapDialog: TOpenDialog
    Filter = 'Maps (8 bit, 0 based)|*.*|Maps (8 bit, 1 based)|*.*|Maps (16 bit, 0 based)|*.*|Maps (16 bit, 1 based)|*.*|Maps (32 bit, 0 based)|*.*|Maps (32 bit, 1 based)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 432
    Top = 33
  end
  object ExportMapDialog: TSaveDialog
    Filter = 'Maps (8 bit, 0 based)|*.*|Maps (8 bit, 1 based)|*.*|Maps (16 bit, 0 based)|*.*|Maps (16 bit, 1 based)|*.*|Maps (32 bit, 0 based)|*.*|Maps (32 bit, 1 based)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 464
    Top = 32
  end
  object RTTimer: TTimer
    Interval = 1
    OnTimer = RTTimerTimer
    Left = 144
    Top = 424
  end
  object SelectDirectoryDialog: TSelectDirectoryDialog
    Left = 544
    Top = 33
  end
end
