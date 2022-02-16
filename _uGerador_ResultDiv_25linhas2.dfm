object _F_Gerador_ResDiv_25Linhas2: T_F_Gerador_ResDiv_25Linhas2
  Left = 5
  Top = 105
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '_F_Gerador_ResDiv_25Linhas2'
  ClientHeight = 722
  ClientWidth = 1554
  Color = 1319707
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object SCBX_Gabarito: TScrollBox
    Left = 0
    Top = 40
    Width = 1554
    Height = 297
    HorzScrollBar.Range = 1167
    VertScrollBar.Range = 158
    VertScrollBar.Visible = False
    Align = alTop
    AutoScroll = False
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Color = 3617329
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    DesignSize = (
      1554
      297)
    object Label7: TLabel
      Left = 9
      Top = 7
      Width = 186
      Height = 18
      Caption = 'N'#218'MEROS DE BASE C/ 15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12703713
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object STGR_Base: TStringGrid
      Left = 9
      Top = 27
      Width = 510
      Height = 264
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      BorderStyle = bsNone
      Color = 14541457
      ColCount = 17
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 23
      FixedColor = 9204480
      FixedCols = 2
      RowCount = 11
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 8
    end
    object PA_Fixos: TPanel
      Left = 1251
      Top = 2
      Width = 95
      Height = 45
      BevelOuter = bvNone
      Color = 11451444
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      Visible = False
      object Label1: TLabel
        Left = 0
        Top = 2
        Width = 92
        Height = 13
        Caption = 'N'#186'  Fixo - 7Im/8Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_7i8p: TEdit
        Left = 17
        Top = 18
        Width = 26
        Height = 22
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_7i8p: TEdit
        Left = 50
        Top = 18
        Width = 27
        Height = 22
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
    object Panel6: TPanel
      Left = 1239
      Top = 49
      Width = 107
      Height = 44
      BevelOuter = bvNone
      Color = 11451444
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      object Label6: TLabel
        Left = 6
        Top = 2
        Width = 92
        Height = 13
        Caption = 'N'#186'  Fixo - 8Im/7Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_8i7p: TEdit
        Left = 7
        Top = 18
        Width = 26
        Height = 22
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_8i7p: TEdit
        Left = 40
        Top = 18
        Width = 26
        Height = 22
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
      object ED_FIXOS_03_8i7p: TEdit
        Left = 74
        Top = 18
        Width = 26
        Height = 22
        Color = 14017159
        TabOrder = 2
        Text = '00'
      end
    end
    object Panel7: TPanel
      Left = 1251
      Top = 95
      Width = 95
      Height = 45
      BevelOuter = bvNone
      Color = 11451444
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      Visible = False
      object Label8: TLabel
        Left = 0
        Top = 2
        Width = 92
        Height = 13
        Caption = 'N'#186'  Fixo - 6Im/9Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_6i9p: TEdit
        Left = 17
        Top = 18
        Width = 26
        Height = 22
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_6i9p: TEdit
        Left = 50
        Top = 18
        Width = 27
        Height = 22
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
    object Panel8: TPanel
      Left = 1251
      Top = 142
      Width = 95
      Height = 45
      BevelOuter = bvNone
      Color = 11451444
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      Visible = False
      object Label9: TLabel
        Left = 0
        Top = 2
        Width = 92
        Height = 13
        Caption = 'N'#186'  Fixo - 9Im/6Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_9i6p: TEdit
        Left = 17
        Top = 18
        Width = 26
        Height = 22
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_9i6p: TEdit
        Left = 50
        Top = 18
        Width = 27
        Height = 22
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
    object STGR_Base10: TStringGrid
      Left = 665
      Top = 27
      Width = 360
      Height = 265
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      BorderStyle = bsNone
      Color = 14541457
      ColCount = 12
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 23
      FixedColor = 9204480
      FixedCols = 2
      RowCount = 6
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 9
      ColWidths = (
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30)
    end
    object pa_b15: TPanel
      Left = 403
      Top = 3
      Width = 238
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12703713
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 0
      object Label5: TLabel
        Left = 21
        Top = 3
        Width = 7
        Height = 14
        Caption = '7'
      end
      object Label14: TLabel
        Left = 168
        Top = 3
        Width = 14
        Height = 14
        Caption = '11'
      end
      object Label12: TLabel
        Left = 129
        Top = 3
        Width = 14
        Height = 14
        Caption = '10'
      end
      object Label11: TLabel
        Left = 94
        Top = 3
        Width = 7
        Height = 14
        Caption = '9'
      end
      object Label10: TLabel
        Left = 57
        Top = 3
        Width = 7
        Height = 14
        Caption = '8'
      end
      object Label15: TLabel
        Left = 206
        Top = 3
        Width = 24
        Height = 14
        Caption = 'NDA'
      end
      object rb_b15_11: TRadioButton
        Left = 151
        Top = 2
        Width = 18
        Height = 17
        TabOrder = 0
        OnClick = rb_b15_11Click
      end
      object rb_b15_10: TRadioButton
        Left = 112
        Top = 2
        Width = 18
        Height = 17
        TabOrder = 1
        OnClick = rb_b15_10Click
      end
      object rb_b15_09: TRadioButton
        Left = 77
        Top = 2
        Width = 18
        Height = 17
        Checked = True
        TabOrder = 2
        TabStop = True
        OnClick = rb_b15_09Click
      end
      object rb_b15_08: TRadioButton
        Left = 40
        Top = 2
        Width = 18
        Height = 17
        TabOrder = 3
        OnClick = rb_b15_08Click
      end
      object rb_b15_07: TRadioButton
        Left = 4
        Top = 2
        Width = 18
        Height = 17
        TabOrder = 4
        OnClick = rb_b15_07Click
      end
      object rb_b15_nda: TRadioButton
        Left = 188
        Top = 2
        Width = 18
        Height = 17
        TabOrder = 5
        OnClick = rb_b15_ndaClick
      end
    end
    object pa_b10: TPanel
      Left = 829
      Top = 3
      Width = 238
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 3946037
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12703713
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label16: TLabel
        Left = 21
        Top = 3
        Width = 7
        Height = 14
        Caption = '4'
      end
      object Label17: TLabel
        Left = 168
        Top = 3
        Width = 7
        Height = 14
        Caption = '8'
      end
      object Label18: TLabel
        Left = 129
        Top = 3
        Width = 7
        Height = 14
        Caption = '7'
      end
      object Label19: TLabel
        Left = 94
        Top = 3
        Width = 7
        Height = 14
        Caption = '6'
      end
      object Label20: TLabel
        Left = 57
        Top = 3
        Width = 7
        Height = 14
        Caption = '5'
      end
      object Label21: TLabel
        Left = 206
        Top = 3
        Width = 24
        Height = 14
        Caption = 'NDA'
      end
      object rb_b10_08: TRadioButton
        Left = 151
        Top = 2
        Width = 18
        Height = 17
        TabOrder = 0
      end
      object rb_b10_07: TRadioButton
        Left = 112
        Top = 2
        Width = 18
        Height = 17
        TabOrder = 1
      end
      object rb_b10_06: TRadioButton
        Left = 77
        Top = 2
        Width = 18
        Height = 17
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object rb_b10_05: TRadioButton
        Left = 40
        Top = 2
        Width = 18
        Height = 17
        TabOrder = 3
      end
      object rb_b10_04: TRadioButton
        Left = 4
        Top = 2
        Width = 18
        Height = 17
        TabOrder = 4
      end
      object rb_b10_nda: TRadioButton
        Left = 188
        Top = 2
        Width = 18
        Height = 17
        TabOrder = 5
      end
    end
    object pa_b15nda: TPanel
      Left = 521
      Top = 49
      Width = 120
      Height = 242
      Color = 9204480
      TabOrder = 1
      object la_b15_L01: TLabel
        Left = 95
        Top = 4
        Width = 16
        Height = 18
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object la_b15_L02: TLabel
        Left = 96
        Top = 28
        Width = 16
        Height = 17
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object la_b15_L03: TLabel
        Left = 95
        Top = 52
        Width = 16
        Height = 18
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object la_b15_L04: TLabel
        Left = 96
        Top = 75
        Width = 16
        Height = 17
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object la_b15_L05: TLabel
        Left = 95
        Top = 100
        Width = 16
        Height = 18
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object la_b15_L06: TLabel
        Left = 96
        Top = 124
        Width = 16
        Height = 17
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object la_b15_L07: TLabel
        Left = 95
        Top = 146
        Width = 16
        Height = 18
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object la_b15_L08: TLabel
        Left = 96
        Top = 173
        Width = 16
        Height = 17
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object la_b15_L09: TLabel
        Left = 95
        Top = 196
        Width = 16
        Height = 18
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object la_b15_L10: TLabel
        Left = 96
        Top = 221
        Width = 16
        Height = 17
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object trb_b15_L01: TTrackBar
        Left = 3
        Top = 1
        Width = 90
        Height = 21
        Max = 11
        Min = 7
        Position = 9
        TabOrder = 0
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b15_L01Change
      end
      object trb_b15_L02: TTrackBar
        Left = 3
        Top = 25
        Width = 90
        Height = 21
        Max = 11
        Min = 7
        Position = 9
        TabOrder = 1
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b15_L02Change
      end
      object trb_b15_L03: TTrackBar
        Left = 3
        Top = 49
        Width = 90
        Height = 21
        Max = 11
        Min = 7
        Position = 9
        TabOrder = 2
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b15_L03Change
      end
      object trb_b15_L04: TTrackBar
        Left = 3
        Top = 73
        Width = 90
        Height = 21
        Max = 11
        Min = 7
        Position = 9
        TabOrder = 3
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b15_L04Change
      end
      object trb_b15_L05: TTrackBar
        Left = 3
        Top = 97
        Width = 90
        Height = 21
        Max = 11
        Min = 7
        Position = 9
        TabOrder = 4
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b15_L05Change
      end
      object trb_b15_L06: TTrackBar
        Left = 3
        Top = 121
        Width = 90
        Height = 21
        Max = 11
        Min = 7
        Position = 9
        TabOrder = 5
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b15_L06Change
      end
      object trb_b15_L07: TTrackBar
        Left = 3
        Top = 144
        Width = 90
        Height = 21
        Max = 11
        Min = 7
        Position = 9
        TabOrder = 6
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b15_L07Change
      end
      object trb_b15_L08: TTrackBar
        Left = 3
        Top = 169
        Width = 90
        Height = 21
        Max = 11
        Min = 7
        Position = 9
        TabOrder = 7
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b15_L08Change
      end
      object trb_b15_L09: TTrackBar
        Left = 3
        Top = 193
        Width = 90
        Height = 21
        Max = 11
        Min = 7
        Position = 9
        TabOrder = 8
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b15_L09Change
      end
      object trb_b15_L10: TTrackBar
        Left = 3
        Top = 217
        Width = 90
        Height = 21
        Max = 11
        Min = 7
        Position = 9
        TabOrder = 9
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b15_L10Change
      end
    end
    object pa_b10nda: TPanel
      Left = 1027
      Top = 49
      Width = 36
      Height = 242
      Color = 9204480
      Enabled = False
      TabOrder = 3
      object la_b10_L01: TLabel
        Left = 8
        Top = 4
        Width = 16
        Height = 18
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object la_b10_L02: TLabel
        Left = 9
        Top = 28
        Width = 16
        Height = 17
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object la_b10_L03: TLabel
        Left = 8
        Top = 52
        Width = 16
        Height = 18
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object la_b10_L04: TLabel
        Left = 9
        Top = 75
        Width = 16
        Height = 17
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object la_b10_L05: TLabel
        Left = 8
        Top = 100
        Width = 16
        Height = 18
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object la_b10_L06: TLabel
        Left = 9
        Top = 124
        Width = 16
        Height = 17
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object la_b10_L07: TLabel
        Left = 8
        Top = 146
        Width = 16
        Height = 18
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object la_b10_L08: TLabel
        Left = 9
        Top = 173
        Width = 16
        Height = 17
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object la_b10_L09: TLabel
        Left = 8
        Top = 196
        Width = 16
        Height = 18
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object la_b10_L10: TLabel
        Left = 9
        Top = 221
        Width = 16
        Height = 17
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object PA_Resultado: TPanel
    Left = 0
    Top = 337
    Width = 1554
    Height = 385
    Align = alClient
    Color = 1972507
    ParentBackground = False
    TabOrder = 4
    object PA_ExecutarFiltro: TPanel
      Left = 1
      Top = 42
      Width = 131
      Height = 342
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      object BBT_PrepararMenu: TBitBtn
        Left = 6
        Top = 3
        Width = 121
        Height = 40
        Caption = 'PREPARAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BBT_PrepararMenuClick
      end
      object BBT_GerarMenu: TBitBtn
        Left = 6
        Top = 49
        Width = 121
        Height = 32
        Caption = 'Gerar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BBT_GerarMenuClick
      end
      object BBT_CancelarSair: TBitBtn
        Left = 5
        Top = 90
        Width = 123
        Height = 62
        Caption = 'CANCELAR'#13#10'&& SAIR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -15
        Font.Name = 'Arial Rounded MT'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnClick = BBT_CancelarClick
      end
    end
    object PANEL_Titulo_Simulacao: TPanel
      Left = 1
      Top = 1
      Width = 1552
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object LA_Gerar_Comb: TLabel
        Left = 1264
        Top = 4
        Width = 9
        Height = 14
        Caption = '#'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12383743
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 74
        Top = 3
        Width = 49
        Height = 14
        Caption = 'Etapa 01'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 588
        Top = 4
        Width = 49
        Height = 14
        Caption = 'Etapa 02'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 588
        Top = 22
        Width = 49
        Height = 14
        Caption = 'Etapa 03'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object PGBR_Etapa_01: TProgressBar
        Left = 132
        Top = 1
        Width = 448
        Height = 19
        TabOrder = 0
      end
      object PGBR_Etapa_01_01: TProgressBar
        Left = 132
        Top = 21
        Width = 448
        Height = 19
        TabOrder = 1
      end
      object PGBR_Etapa_02: TProgressBar
        Left = 646
        Top = 2
        Width = 448
        Height = 19
        TabOrder = 2
      end
      object PGBR_Etapa_03: TProgressBar
        Left = 646
        Top = 17
        Width = 448
        Height = 19
        TabOrder = 3
      end
    end
    object SCBX_dados: TScrollBox
      Left = 132
      Top = 42
      Width = 1421
      Height = 342
      HorzScrollBar.Position = 7705
      HorzScrollBar.Range = 12153
      Align = alClient
      AutoScroll = False
      TabOrder = 4
      DesignSize = (
        1417
        321)
      object Bevel1: TBevel
        Left = -7336
        Top = 11
        Width = 6314
        Height = 18
        Shape = bsTopLine
      end
      object Label3: TLabel
        Left = -7335
        Top = 1
        Width = 60
        Height = 18
        Caption = 'Etapa 01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label4: TLabel
        Left = 2284
        Top = 46
        Width = 189
        Height = 208
        Caption = 
          '09/10 =  5.005   [  424]'#13'10/9 = 300.300  [3.354]'#13'11/8 = 614.250 ' +
          ' [8.772]'#13'12/7 = 546.000  [7.774]'#13'13/6 = 220.500  [2.319]'#13'14/5 = ' +
          '  37.800  [  294]'#13'15/4 =     2.100  [    23]'#13#13'Total Bruto '#13'19n'#186' ' +
          'modo1-1.160.250  [16.546]'#13'19n'#186' modo2-1.681.050  [22.219]'#13'19n'#186' mo' +
          'do3-1.725,955  [22.960]'#13'(com repetidos)'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = -6977
        Top = 0
        Width = 44
        Height = 18
        Caption = '09 / 10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label23: TLabel
        Left = -6060
        Top = 1
        Width = 44
        Height = 18
        Caption = '10 / 09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label24: TLabel
        Left = -5096
        Top = 0
        Width = 43
        Height = 18
        Caption = '11 / 08'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label25: TLabel
        Left = -4111
        Top = -1
        Width = 36
        Height = 18
        Caption = '12 / 7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label26: TLabel
        Left = -1276
        Top = 0
        Width = 44
        Height = 18
        Caption = '15 / 04'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label27: TLabel
        Left = -3156
        Top = 0
        Width = 44
        Height = 18
        Caption = '13 / 06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label28: TLabel
        Left = -2230
        Top = 0
        Width = 44
        Height = 18
        Caption = '14 / 05'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -15
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label29: TLabel
        Left = 2483
        Top = 172
        Width = 248
        Height = 153
        Caption = 
          'MODO        = TOTAL  = SEM REP.'#13'247/---/--- = 16.546 = 2.296'#13'247' +
          '/247/--- = 22.219 = 2.296'#13'247/247/247 = 22.960 = 2.296'#13#13'247/245/' +
          '--- = 22.189 = 3.914'#13'247/245/245 = 22.922 = 3.928'#13#13'247/245/243 =' +
          ' 22.937 = 4.321'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Source Code Pro'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 1543
        Top = 174
        Width = 728
        Height = 51
        Caption = 
          'Modo 1 (11/08 e 12/07)         -> 2296 --> 1.983.768 x 20=39.675' +
          '.360'#13'Modo 2 (10/09 e 13/06)         -> 1634 --> 1.414.776 x 20=2' +
          '8.295.520 (773.126 c/ repetidos)'#13'Modo 3 (09/12 e 14/05 e 15/04) ' +
          '-> 0378 -->   325.744 x 20= 6.514.880 '
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Source Code Pro'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object STGR_Etapa1_10: TStringGrid
        Left = -6456
        Top = 24
        Width = 415
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 12
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10193796
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        RowHeights = (
          25
          25
          25
          25
          25
          25
          25
          25)
      end
      object STGR_Etapa01_09: TStringGrid
        Left = -6040
        Top = 24
        Width = 385
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 11
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10193796
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object STGR_Etapa03_15: TStringGrid
        Left = 887
        Top = 16
        Width = 615
        Height = 308
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        ColCount = 18
        Ctl3D = False
        DefaultColWidth = 28
        DefaultRowHeight = 25
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        RowHeights = (
          25
          25
          25
          25
          25
          25
          25
          25)
      end
      object STGR_Etapa01_19: TStringGrid
        Left = -973
        Top = 19
        Width = 779
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        ColCount = 24
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object STGR_Base25: TStringGrid
        Left = -7704
        Top = 3
        Width = 180
        Height = 170
        TabStop = False
        BorderStyle = bsNone
        Color = 14541457
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 30
        DefaultRowHeight = 27
        FixedColor = 9204480
        RowCount = 6
        Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        TabOrder = 4
        ColWidths = (
          30
          30
          30
          30
          30
          30)
      end
      object STGR_Bloco01: TStringGrid
        Left = -7523
        Top = 3
        Width = 180
        Height = 156
        TabStop = False
        BorderStyle = bsNone
        Color = 14541457
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 30
        DefaultRowHeight = 25
        FixedColor = 9204480
        RowCount = 6
        Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        TabOrder = 5
        ColWidths = (
          30
          30
          30
          30
          30
          30)
      end
      object STGR_Bloco02: TStringGrid
        Left = -7522
        Top = 161
        Width = 180
        Height = 156
        TabStop = False
        BorderStyle = bsNone
        Color = 14541457
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 30
        DefaultRowHeight = 25
        FixedColor = 9204480
        RowCount = 6
        Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        TabOrder = 6
        ColWidths = (
          30
          30
          30
          30
          30
          30)
      end
      object STGR_Etapa01_08: TStringGrid
        Left = -5075
        Top = 23
        Width = 350
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 10
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        RowHeights = (
          25
          25
          25
          25
          25
          25
          25
          25)
      end
      object STGR_Etapa1_11: TStringGrid
        Left = -5538
        Top = 23
        Width = 464
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 13
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        RowHeights = (
          25
          25
          25
          25
          25
          25
          25
          25)
      end
      object STGR_Etapa1_12: TStringGrid
        Left = -4566
        Top = 19
        Width = 474
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 14
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10193796
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        ColWidths = (
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27)
        RowHeights = (
          25
          25
          25
          25
          25
          25
          25
          25)
      end
      object STGR_Etapa01_07: TStringGrid
        Left = -4092
        Top = 19
        Width = 330
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 9
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10193796
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        RowHeights = (
          25
          25
          25
          25
          25
          25
          25
          25)
      end
      object STGR_Etapa1_13: TStringGrid
        Left = -3634
        Top = 19
        Width = 498
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 15
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        ColWidths = (
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27)
        RowHeights = (
          25
          25
          25
          25
          25
          25
          25
          25)
      end
      object STGR_Etapa01_06: TStringGrid
        Left = -3136
        Top = 19
        Width = 300
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
      object STGR_Etapa01_10: TStringGrid
        Left = -6954
        Top = 19
        Width = 380
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 12
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        RowHeights = (
          25
          25)
      end
      object STGR_Etapa1_09: TStringGrid
        Left = -7335
        Top = 19
        Width = 381
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 11
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
        ColWidths = (
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27)
        RowHeights = (
          25
          25
          25
          25
          25
          25
          25
          25)
      end
      object STGR_Etapa1_14: TStringGrid
        Left = -2730
        Top = 18
        Width = 520
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 16
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10193796
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
        ColWidths = (
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27)
        RowHeights = (
          25
          25
          25
          25
          25
          25
          25
          25)
      end
      object STGR_Etapa01_05: TStringGrid
        Left = -2210
        Top = 18
        Width = 260
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10193796
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
      end
      object STGR_Etapa1_15: TStringGrid
        Left = -1810
        Top = 18
        Width = 554
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 17
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 17
        ColWidths = (
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27
          27)
        RowHeights = (
          25
          25
          25
          25
          25
          25
          25
          25)
      end
      object STGR_Etapa01_04: TStringGrid
        Left = -1257
        Top = 18
        Width = 233
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
      end
      object STGR_Etapa02_12: TStringGrid
        Left = -194
        Top = 19
        Width = 489
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        ColCount = 14
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 19
      end
      object STGR_Etapa02_06: TStringGrid
        Left = 298
        Top = 19
        Width = 339
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 20
        ColWidths = (
          27
          27
          27
          27
          27
          27
          27
          27)
      end
      object STGR_Etapa02_03: TStringGrid
        Left = 637
        Top = 19
        Width = 239
        Height = 302
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 21
        ColWidths = (
          27
          27
          27
          27
          27)
      end
    end
    object STGR_Todos_Numeros: TStringGrid
      Left = -582
      Top = 327
      Width = 712
      Height = 46
      Color = 16119214
      ColCount = 26
      DefaultColWidth = 26
      DefaultRowHeight = 20
      RowCount = 2
      FixedRows = 0
      TabOrder = 1
      Visible = False
    end
    object STGR_Comb10: TStringGrid
      Left = -245
      Top = 266
      Width = 366
      Height = 55
      TabStop = False
      Align = alCustom
      Color = 14017159
      ColCount = 11
      DefaultColWidth = 31
      DefaultRowHeight = 27
      FixedColor = clMedGray
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentFont = False
      TabOrder = 0
      Visible = False
      ColWidths = (
        31
        31
        32
        31
        31
        31
        31
        31
        31
        31
        31)
    end
  end
  object MEM_Combinacoes_Todas: TMemo
    Left = 1541
    Top = 502
    Width = 206
    Height = 191
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      '5 8 2'
      '6 7 2'
      '7 6 2'
      '8 5 2'
      ''
      ''
      '4 8 3'
      '5 7 3'
      '6 6 3'
      '7 5 3'
      '8 4 3'
      ''
      '4 7 4'
      '5 6 4'
      '6 5 4'
      '7 4 4')
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object PA_Topo: TPanel
    Left = 0
    Top = 0
    Width = 1554
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 4538177
    ParentBackground = False
    TabOrder = 3
    object LA_Titulo: TLabel
      Left = 7
      Top = 4
      Width = 618
      Height = 34
      Caption = 'GERADOR Resultados a Partir de 25 Linhas2'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -29
      Font.Name = 'Arial Rounded MT'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BBT_Close: TImage
      Left = 1316
      Top = 1
      Width = 30
      Height = 30
      Picture.Data = {
        07544269746D6170F2060000424DF20600000000000036040000280000001900
        0000190000000100080000000000BC020000C30E0000C30E0000000100006200
        00000A0A17006177A6000202AD0000009900CFCFF3003030B200161827009595
        E40000007A001818AC00000066001111940000006600151584006E88B800ADAD
        EA001010AC00CCFFFF00333D9A000D0D49000F0F7B008989E000303A5B004848
        C3003B4870006C86B5000000A5000F0F6E00BFEFF900232945002222BE000707
        B100A9D1ED006868D8003F3FBD00B4E1F3000000840011119B0091B4D8009DC3
        E500000099000C0C3B001010B700171A4B00111161004A5AA7005050D0000000
        74001919BC000B0B31007995C00010108C00262D7D00242A5500A2A2E7003333
        CC0017179F0000008C003D498900C0C0E7009A9ADB0008089C004646CD000E0E
        5900161695002929C3001212A400A5D6EF006177AE005C5CD3000B0B2A001619
        3A007A96CF00232963000808A50005059100101084000F0F7000D3D3F4003B3B
        CB000000B5000808B4004949CF00BDEFFF00181B51000D0D51006278AD00303A
        5F00ADCEEF000A0A1E006E88BA003C487A0023294D0091B4E1000C0C4400262C
        87001818A800FFFFFF0000000000000000000000000000000000000000000000
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
        00002408080A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A2F204D583924
        242F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F204D58393939392424
        24242424242424242424242424242424242F2F204D5803031A1A1A0303030303
        030303030303030303030303390808204D580303025151020202020202020202
        020202020202021A390808204D5803030230302A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A1F1A390808204D58031A02301E3029133F5E4D2A2A2A25460014142A1F1A
        390808204D58031A02301E303F19112031422A25472311440B2A1F1A39080820
        4D58031A02301E3042142011483F10313211272C422A1F1A390808204D58031A
        02301E30300B351C11183F5B111C344C2A2A1F1A390808204D58031A02301E30
        302A330111234923112D552A2A2A1F1A390808204D58031A02301E3030301059
        26111C115D31422A2A2A1F1A390808204D58031A02301E302A2A2A0B541C1123
        2B332A2A2A2A1F1A390808204D58031A02301E302A2A2A255F1C111C5C252A2A
        2A2A1F1A390808204D58031A02301E303030251B201120112755422A2A2A1F1A
        390808204D58031A02301E30302A141911270620110E4C2A2A2A1F1A39080820
        4D58031A02301E302A333A111C1D0B121111164D2A2A1F1A390808204D58031A
        02301E300B2B2311011B10311911232B102A1F1A390808204D58031A02301E30
        33165A5631422A0B31560E57332A1F1A390808204D58031A1F1E411E38142C0D
        603030300940400D0930511A390808204D58031A513E453E4F4F4F4F4F4F4F4F
        4F4F4F4F4F4F3002032408204D58031A1E044E36070707070707070707070707
        07152E51032408204D583D10210F212E52525252525252525252525252524F30
        1A3924204D580517171E2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A02033920
        4D583B3C2209101010101010101010101010101010101010103D4B204D58}
      Stretch = True
      OnClick = BBT_CloseClick
    end
    object BBT_Recomecar: TBitBtn
      Left = 905
      Top = 5
      Width = 93
      Height = 29
      Caption = 'RECOME'#199'AR'
      TabOrder = 0
      Visible = False
    end
  end
  object PA_RemoveuRepetidos: TPanel
    Left = 1349
    Top = 123
    Width = 331
    Height = 454
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 7234560
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial Rounded MT'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label45: TLabel
      Left = 8
      Top = 8
      Width = 311
      Height = 57
      Align = alTop
      Alignment = taCenter
      Caption = 'GERA'#199#195'O, ORDENA'#199#195'O E '#13'REMO'#199#195'O DE REPETIDOS'#13' ENCERRADA:'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label46: TLabel
      Left = 19
      Top = 268
      Width = 210
      Height = 18
      Caption = 'Total de dados processados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 19
      Top = 317
      Width = 177
      Height = 18
      Caption = 'Total de dados gerados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_rTOTAL_COMB: TLabel
      Left = 19
      Top = 287
      Width = 100
      Height = 18
      Caption = '0000000000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_rQTD_COMB: TLabel
      Left = 19
      Top = 335
      Width = 40
      Height = 18
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label58: TLabel
      Left = 9
      Top = 105
      Width = 207
      Height = 18
      Caption = '1. In'#237'cio do Processamento:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_gINICIO_100REPET: TLabel
      Left = 126
      Top = 120
      Width = 182
      Height = 18
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label60: TLabel
      Left = 8
      Top = 143
      Width = 229
      Height = 36
      Caption = '2. T'#233'rmino do Processamento'#13'&& In'#237'cio remo'#231#227'o de repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label49: TLabel
      Left = 8
      Top = 200
      Width = 269
      Height = 36
      Caption = '3. Recupera'#231#227'o dos dados '#13'&& T'#233'rmino da remo'#231#227'o de repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_gFIM_100REPET: TLabel
      Left = 126
      Top = 233
      Width = 182
      Height = 18
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_gFIM_GERAR: TLabel
      Left = 126
      Top = 176
      Width = 182
      Height = 18
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_rTOTAL_100REPET: TLabel
      Left = 17
      Top = 380
      Width = 44
      Height = 21
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label50: TLabel
      Left = 17
      Top = 362
      Width = 243
      Height = 18
      Caption = 'Total de dados sem os repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BBT_RemoveuRepetidos: TBitBtn
      Left = 190
      Top = 403
      Width = 125
      Height = 38
      Caption = 'OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BBT_RemoveuRepetidosClick
      NumGlyphs = 2
    end
    object BBT_BlocoNotas: TBitBtn
      Left = 11
      Top = 404
      Width = 174
      Height = 36
      Caption = 'Bloco de Notas'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_BlocoNotasClick
      NumGlyphs = 2
    end
  end
  object PA_Inicial: TPanel
    Left = 1309
    Top = 30
    Width = 259
    Height = 319
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 5194043
    ParentBackground = False
    TabOrder = 1
    object Label55: TLabel
      Left = 64
      Top = 8
      Width = 135
      Height = 48
      Alignment = taCenter
      Caption = 'Result a Partir'#13'de 25 Linhas'
      Color = 4179168
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -20
      Font.Name = 'Arial Rounded MT'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BTN_NovaSimulacao: TButton
      Left = 23
      Top = 56
      Width = 210
      Height = 35
      Caption = 'NOVO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BTN_NovaSimulacaoClick
    end
    object BTN_Reajustar: TButton
      Left = 23
      Top = 94
      Width = 210
      Height = 36
      Caption = 'REAJUSTAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BTN_ReajustarClick
    end
    object BTN_Sair: TButton
      Left = 23
      Top = 209
      Width = 210
      Height = 38
      Caption = 'SAIR / FECHAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BTN_SairClick
    end
    object BBT_Cancelar: TBitBtn
      Left = 24
      Top = 268
      Width = 210
      Height = 38
      Caption = 'CANCELAR && SAIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_CancelarClick
    end
    object BTN_BlocoDeNotas1: TButton
      Left = 23
      Top = 133
      Width = 210
      Height = 35
      Caption = 'BLOCO DE NOTAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBT_BlocoNotasClick
    end
    object btn_Carregar: TButton
      Left = 23
      Top = 171
      Width = 210
      Height = 35
      Caption = 'CARREGAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btn_CarregarClick
    end
  end
  object PA_Gerar: TPanel
    Left = 1274
    Top = 348
    Width = 346
    Height = 202
    BevelWidth = 2
    BorderWidth = 1
    Color = 5194043
    ParentBackground = False
    TabOrder = 5
    object LA_Tipo19: TLabel
      Left = 10
      Top = 50
      Width = 47
      Height = 16
      Caption = 'Modo 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 340
      Height = 44
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      ParentBackground = False
      TabOrder = 0
      object Label63: TLabel
        Left = 47
        Top = 6
        Width = 214
        Height = 34
        Caption = 'FILTRO GERAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -29
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BBT_Etapa01: TBitBtn
      Left = 97
      Top = 144
      Width = 136
      Height = 21
      Caption = 'Etapa 01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_Etapa01Click
    end
    object BBT_Gerar_Sair: TBitBtn
      Left = 5
      Top = 166
      Width = 159
      Height = 29
      Caption = 'VOLTAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_Gerar_SairClick
    end
    object BBT_OK: TBitBtn
      Left = 181
      Top = 165
      Width = 161
      Height = 31
      Caption = 'OK'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_OKClick
    end
    object cb_tipo19: TComboBox
      Left = 8
      Top = 67
      Width = 333
      Height = 23
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = '1 - [11 a 12] na linhas de 15 e [7 a 8] nas linhas de 10'
      Items.Strings = (
        '1 - [11 a 12] na linhas de 15 e [7 a 8] nas linhas de 10'
        
          '2 - Exceto a 1 + [10 a 13] na linhas de 15 e [6 a 9] nas linhas ' +
          'de 10'
        
          '3-  Exceto a 1 e 2  + [9 a 15] na linhas de 15 e [4 a 10] nas li' +
          'nhas de 10')
    end
  end
  object PA_Preparar: TPanel
    Left = 1269
    Top = 199
    Width = 372
    Height = 137
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 5392715
    ParentBackground = False
    TabOrder = 6
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 368
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        Left = 116
        Top = 8
        Width = 150
        Height = 32
        Caption = 'PREPARAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -27
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BBT_Preparar1: TBitBtn
      Left = 230
      Top = 102
      Width = 140
      Height = 31
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_Preparar1Click
    end
    object BBT_Gerar_Voltar: TBitBtn
      Left = 4
      Top = 102
      Width = 140
      Height = 31
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_Gerar_VoltarClick
    end
  end
  object IBTransaction2: TIBTransaction
    Active = False
    DefaultAction = TACommitRetaining
    AutoStopAction = saNone
    Left = 1164
    Top = 36
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\CXLOTOFACIL\COMBINACOES_15.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 1194
    Top = 6
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultAction = TACommitRetaining
    AutoStopAction = saNone
    Left = 1194
    Top = 30
  end
  object IBQ_Combinacoes: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT FIRST 10 * FROM COMBINACOES_15')
    Left = 1194
    Top = 54
  end
  object IBQ_Combin_02: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT FIRST 10 * FROM COMBINACOES_15')
    Left = 1194
    Top = 84
  end
end
