object Form1: TForm1
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Proxy Checker'
  ClientHeight = 404
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 404
    TabOrder = 0
    object ListBox1: TListBox
      Left = 0
      Top = 39
      Width = 414
      Height = 362
      Style = lbOwnerDrawFixed
      ItemHeight = 50
      TabOrder = 0
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 415
      Height = 40
      ButtonHeight = 32
      ButtonWidth = 32
      Caption = 'ToolBar1'
      TabOrder = 1
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'ToolButton1'
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 32
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 40
        Top = 0
        Caption = 'ToolButton3'
        ImageIndex = 1
      end
      object ToolButton4: TToolButton
        Left = 72
        Top = 0
        Caption = 'ToolButton4'
        ImageIndex = 2
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 352
    Top = 272
    object N1: TMenuItem
      Caption = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1077
    end
    object N2: TMenuItem
      Caption = #1054#1087#1094#1080#1080
    end
    object N3: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
    end
  end
end
