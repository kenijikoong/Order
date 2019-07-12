object frm_mainmenu: Tfrm_mainmenu
  Left = 0
  Top = 0
  Caption = #3650#3611#3619#3649#3585#3619#3617#3626#3619#3657#3634#3591#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629#3618#3634#3592#3634#3585#3619#3657#3634#3609#3586#3634#3618#3626#3656#3591
  ClientHeight = 442
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 16
  object dxBarManager1: TdxBarManager
    AutoDockColor = False
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockColor = clBtnFace
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 368
    Top = 224
    DockControlHeights = (
      0
      0
      22
      0)
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 781
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
      NotDocking = [dsNone]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = #3619#3657#3634#3609#3626#3617#3624#3633#3585#3604#3636#3660#3623#3634#3619#3636#3609
      Category = 0
      Hint = #3619#3657#3634#3609#3626#3617#3624#3633#3585#3604#3636#3660#3623#3634#3619#3636#3609
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #3619#3657#3634#3609#3648#3617#3639#3629#3591#3607#3629#3591
      Category = 0
      Hint = #3619#3657#3634#3609#3648#3617#3639#3629#3591#3607#3629#3591
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = #3619#3657#3634#3609#3626#3629#3591#3648#3616#3626#3633#3594#3629#3635#3609#3634#3592#3648#3592#3619#3636#3597
      Category = 0
      Hint = #3619#3657#3634#3609#3626#3629#3591#3648#3616#3626#3633#3594#3629#3635#3609#3634#3592#3648#3592#3619#3636#3597
      Visible = ivAlways
    end
  end
end
