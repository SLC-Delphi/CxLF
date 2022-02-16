object _F_Gerador_ResDiv_25Linhas2: T_F_Gerador_ResDiv_25Linhas2
  Left = 206
  Top = 154
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '_F_Gerador_ResDiv_25Linhas2'
  ClientHeight = 725
  ClientWidth = 1425
  Color = 1319707
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Scbx_Gabarito: TScrollBox
    Left = 0
    Top = 40
    Width = 1425
    Height = 337
    HorzScrollBar.Range = 4475
    VertScrollBar.Range = 158
    VertScrollBar.Visible = False
    Align = alTop
    AutoScroll = False
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Color = 4275259
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    DesignSize = (
      1425
      320)
    object Label7: TLabel
      Left = 9
      Top = 28
      Width = 174
      Height = 16
      Caption = 'N'#218'MEROS DE BASE C/ 15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12703713
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label36: TLabel
      Left = 2323
      Top = 15
      Width = 174
      Height = 17
      Caption = 'Etapa 7: Triplas e Duplas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label38: TLabel
      Left = 2172
      Top = 130
      Width = 141
      Height = 17
      Caption = 'Etapa 6: Blocos de 5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 5
      Top = 12
      Width = 1652
      Height = 306
    end
    object Label42: TLabel
      Left = 946
      Top = 1
      Width = 300
      Height = 17
      Caption = 'ETAPA 4: FILTRO PRINCIPAL (obrigat'#243'rio)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Stgr_Base: TStringGrid
      Left = 9
      Top = 48
      Width = 510
      Height = 266
      TabStop = False
      BorderStyle = bsNone
      Color = 14541457
      ColCount = 17
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 9204480
      FixedCols = 2
      RowCount = 11
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 6
    end
    object Pa_Fixos: TPanel
      Left = 1192
      Top = 26
      Width = 95
      Height = 43
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
        Width = 105
        Height = 14
        Caption = 'N'#186'  Fixo - 7Im/8Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Ed_FIXOS_01_7i8p: TEdit
        Left = 16
        Top = 18
        Width = 27
        Height = 22
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object Ed_FIXOS_02_7i8p: TEdit
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
      Left = 1180
      Top = 73
      Width = 107
      Height = 42
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
      Visible = False
      object Label6: TLabel
        Left = 6
        Top = 2
        Width = 105
        Height = 14
        Caption = 'N'#186'  Fixo - 8Im/7Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Ed_FIXOS_01_8i7p: TEdit
        Left = 7
        Top = 18
        Width = 27
        Height = 22
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object Ed_FIXOS_02_8i7p: TEdit
        Left = 40
        Top = 18
        Width = 26
        Height = 22
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
      object Ed_FIXOS_03_8i7p: TEdit
        Left = 74
        Top = 18
        Width = 27
        Height = 22
        Color = 14017159
        TabOrder = 2
        Text = '00'
      end
    end
    object Stgr_Base10: TStringGrid
      Left = 632
      Top = 48
      Width = 361
      Height = 267
      TabStop = False
      BorderStyle = bsNone
      Color = 14541457
      ColCount = 12
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 9204480
      FixedCols = 2
      RowCount = 6
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 7
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
    object Pa_b15: TPanel
      Left = 403
      Top = 24
      Width = 237
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12703713
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
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
        Left = 130
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
        Left = 111
        Top = 2
        Width = 19
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
        Left = 5
        Top = 2
        Width = 17
        Height = 17
        TabOrder = 4
        OnClick = rb_b15_07Click
      end
      object rb_b15_nda: TRadioButton
        Left = 187
        Top = 2
        Width = 19
        Height = 17
        TabOrder = 5
        OnClick = rb_b15_ndaClick
      end
    end
    object Pa_b10: TPanel
      Left = 829
      Top = 24
      Width = 239
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
      ParentBackground = False
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
        Left = 130
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
        Left = 111
        Top = 2
        Width = 19
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
        Left = 5
        Top = 2
        Width = 17
        Height = 17
        TabOrder = 4
      end
      object rb_b10_nda: TRadioButton
        Left = 187
        Top = 2
        Width = 19
        Height = 17
        TabOrder = 5
      end
    end
    object Pa_b15nda: TPanel
      Left = 521
      Top = 70
      Width = 108
      Height = 242
      Color = 9204480
      ParentBackground = False
      TabOrder = 1
      object La_b15_L01: TLabel
        Left = 84
        Top = 5
        Width = 16
        Height = 17
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_b15_L02: TLabel
        Left = 84
        Top = 28
        Width = 16
        Height = 16
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object La_b15_L03: TLabel
        Left = 84
        Top = 53
        Width = 16
        Height = 17
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_b15_L04: TLabel
        Left = 84
        Top = 75
        Width = 16
        Height = 16
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object La_b15_L05: TLabel
        Left = 84
        Top = 101
        Width = 16
        Height = 17
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_b15_L06: TLabel
        Left = 84
        Top = 124
        Width = 16
        Height = 16
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object La_b15_L07: TLabel
        Left = 84
        Top = 146
        Width = 16
        Height = 17
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_b15_L08: TLabel
        Left = 84
        Top = 173
        Width = 16
        Height = 16
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object La_b15_L09: TLabel
        Left = 84
        Top = 197
        Width = 16
        Height = 17
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_b15_L10: TLabel
        Left = 84
        Top = 221
        Width = 16
        Height = 16
        Caption = '09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object trb_b15_L01: TTrackBar
        Left = 3
        Top = 1
        Width = 79
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
        Width = 79
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
        Width = 79
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
        Width = 77
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
        Width = 79
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
        Width = 79
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
        Width = 79
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
        Width = 79
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
        Width = 79
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
        Width = 79
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
    object Pa_b10nda: TPanel
      Left = 994
      Top = 70
      Width = 36
      Height = 242
      Color = 9204480
      Enabled = False
      ParentBackground = False
      TabOrder = 3
      object La_b10_L01: TLabel
        Left = 8
        Top = 5
        Width = 16
        Height = 17
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_b10_L02: TLabel
        Left = 9
        Top = 28
        Width = 16
        Height = 16
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object La_b10_L03: TLabel
        Left = 8
        Top = 53
        Width = 16
        Height = 17
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_b10_L04: TLabel
        Left = 9
        Top = 75
        Width = 16
        Height = 16
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object La_b10_L05: TLabel
        Left = 8
        Top = 101
        Width = 16
        Height = 17
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_b10_L06: TLabel
        Left = 9
        Top = 124
        Width = 16
        Height = 16
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object La_b10_L07: TLabel
        Left = 8
        Top = 146
        Width = 16
        Height = 17
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_b10_L08: TLabel
        Left = 9
        Top = 173
        Width = 16
        Height = 16
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object La_b10_L09: TLabel
        Left = 8
        Top = 197
        Width = 16
        Height = 17
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_b10_L10: TLabel
        Left = 9
        Top = 221
        Width = 16
        Height = 16
        Caption = '06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object Stgr_Provas5_Blocos: TStringGrid
      Left = 2170
      Top = 149
      Width = 175
      Height = 163
      TabStop = False
      BorderStyle = bsNone
      Color = 4538177
      ColCount = 6
      Ctl3D = False
      DefaultColWidth = 27
      DefaultRowHeight = 26
      DrawingStyle = gdsClassic
      FixedColor = 8218368
      RowCount = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      ColWidths = (
        27
        27
        27
        27
        27
        27)
    end
    object Stgr_Base25: TStringGrid
      Left = 1032
      Top = 139
      Width = 180
      Height = 171
      TabStop = False
      BorderStyle = bsNone
      Color = 14541457
      ColCount = 6
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 27
      DrawingStyle = gdsClassic
      FixedColor = 9204480
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
        30)
    end
    object Pa_base25definicao: TPanel
      Left = 1213
      Top = 170
      Width = 74
      Height = 140
      Color = 9204480
      TabOrder = 10
      object La_b25_L01: TLabel
        Left = 53
        Top = 6
        Width = 16
        Height = 17
        Caption = '03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_b25_L02: TLabel
        Left = 53
        Top = 36
        Width = 16
        Height = 16
        Caption = '03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object La_b25_L03: TLabel
        Left = 53
        Top = 63
        Width = 16
        Height = 17
        Caption = '03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_b25_L04: TLabel
        Left = 53
        Top = 91
        Width = 16
        Height = 16
        Caption = '03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6291456
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object La_b25_L05: TLabel
        Left = 53
        Top = 117
        Width = 16
        Height = 17
        Caption = '03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object trb_b25_L01: TTrackBar
        Left = 1
        Top = 1
        Width = 52
        Height = 21
        Max = 4
        Min = 2
        Position = 3
        TabOrder = 0
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b25_L01Change
      end
      object trb_b25_L02: TTrackBar
        Left = 1
        Top = 28
        Width = 52
        Height = 21
        Max = 4
        Min = 2
        Position = 3
        TabOrder = 1
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b25_L02Change
      end
      object trb_b25_L03: TTrackBar
        Left = 1
        Top = 55
        Width = 52
        Height = 21
        Max = 4
        Min = 2
        Position = 3
        TabOrder = 2
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b25_L03Change
      end
      object trb_b25_L04: TTrackBar
        Left = 1
        Top = 82
        Width = 50
        Height = 21
        Max = 4
        Min = 2
        Position = 3
        TabOrder = 3
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b25_L04Change
      end
      object trb_b25_L05: TTrackBar
        Left = 1
        Top = 109
        Width = 52
        Height = 21
        Max = 4
        Min = 2
        Position = 3
        TabOrder = 4
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = trb_b25_L05Change
      end
    end
    object Stgr_Triplas1: TStringGrid
      Left = 2360
      Top = 36
      Width = 114
      Height = 201
      TabStop = False
      BorderStyle = bsNone
      Color = 4538177
      ColCount = 4
      Ctl3D = False
      DefaultColWidth = 27
      DrawingStyle = gdsClassic
      FixedColor = 8218368
      RowCount = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      RowHeights = (
        24
        24
        24
        24
        24
        24
        24
        24)
    end
    object Stgr_Duplas1: TStringGrid
      Left = 2360
      Top = 237
      Width = 83
      Height = 74
      TabStop = False
      BorderStyle = bsNone
      Color = 4538177
      ColCount = 3
      Ctl3D = False
      DefaultColWidth = 27
      DrawingStyle = gdsClassic
      FixedColor = 8218368
      RowCount = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
      RowHeights = (
        24
        24
        24)
    end
    object Panel5: TPanel
      Left = 1680
      Top = 72
      Width = 473
      Height = 241
      Color = 3881787
      ParentBackground = False
      TabOrder = 13
      object Label40: TLabel
        Left = 5
        Top = 1
        Width = 170
        Height = 17
        Caption = 'Etapa 5: Pares e '#236'mpares'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 7
        Top = 158
        Width = 67
        Height = 16
        Caption = 'Linhas A/B:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 7
        Top = 197
        Width = 68
        Height = 16
        Caption = 'Linhas C/D:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 60
        Top = 21
        Width = 303
        Height = 24
        BevelInner = bvLowered
        BevelOuter = bvNone
        BiDiMode = bdRightToLeftNoAlign
        Color = 7105644
        ParentBiDiMode = False
        ParentBackground = False
        TabOrder = 0
        object Label39: TLabel
          Left = 6
          Top = 5
          Width = 87
          Height = 14
          Caption = 'Preenchimento:'
        end
        object rb_ParImpMod1: TRadioButton
          Left = 95
          Top = 3
          Width = 31
          Height = 17
          Caption = '1'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rb_ParImpMod1Click
        end
        object rb_ParImpMod2: TRadioButton
          Left = 125
          Top = 3
          Width = 31
          Height = 17
          Caption = '2'
          TabOrder = 1
          OnClick = rb_ParImpMod2Click
        end
        object rb_ParImpMod3: TRadioButton
          Left = 156
          Top = 3
          Width = 30
          Height = 17
          Caption = '3'
          TabOrder = 2
          OnClick = rb_ParImpMod3Click
        end
        object rb_ParImpMod4: TRadioButton
          Left = 185
          Top = 3
          Width = 31
          Height = 17
          Caption = '4'
          TabOrder = 3
          OnClick = rb_ParImpMod4Click
        end
        object rb_ParImpMod5: TRadioButton
          Left = 215
          Top = 3
          Width = 31
          Height = 17
          Caption = '5'
          TabOrder = 4
          OnClick = rb_ParImpMod5Click
        end
        object rb_ParImpMod7: TRadioButton
          Left = 276
          Top = 0
          Width = 31
          Height = 17
          Caption = '7'
          TabOrder = 5
          OnClick = rb_ParImpMod7Click
        end
        object rb_ParImpMod6: TRadioButton
          Left = 246
          Top = 3
          Width = 30
          Height = 17
          Caption = '6'
          TabOrder = 6
          OnClick = rb_ParImpMod6Click
        end
      end
      object Pa_ProvaParImpar: TPanel
        Left = 5
        Top = 43
        Width = 105
        Height = 115
        Color = 4737096
        TabOrder = 1
        object La_ppim1_01: TLabel
          Left = 86
          Top = 5
          Width = 16
          Height = 17
          Caption = '04'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object La_ppim1_02: TLabel
          Left = 86
          Top = 35
          Width = 16
          Height = 16
          Caption = '03'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object La_ppim1_03: TLabel
          Left = 86
          Top = 62
          Width = 16
          Height = 17
          Caption = '02'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object La_ppim1_04: TLabel
          Left = 86
          Top = 91
          Width = 16
          Height = 16
          Caption = '02'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Trb_ppim1_01: TTrackBar
          Left = 1
          Top = 1
          Width = 81
          Height = 20
          Max = 6
          Min = 4
          Position = 4
          TabOrder = 0
          ThumbLength = 15
          TickMarks = tmTopLeft
          OnChange = Trb_ppim1_01Change
        end
        object Trb_ppim1_02: TTrackBar
          Left = 1
          Top = 27
          Width = 81
          Height = 21
          Max = 5
          Min = 3
          Position = 3
          TabOrder = 1
          ThumbLength = 15
          TickMarks = tmTopLeft
          OnChange = Trb_ppim1_02Change
        end
        object Trb_ppim1_03: TTrackBar
          Left = 1
          Top = 56
          Width = 81
          Height = 21
          Max = 4
          Min = 2
          Position = 2
          TabOrder = 2
          ThumbLength = 15
          TickMarks = tmTopLeft
          OnChange = Trb_ppim1_03Change
        end
        object Trb_ppim1_04: TTrackBar
          Left = 1
          Top = 84
          Width = 81
          Height = 21
          Max = 4
          Min = 2
          Position = 2
          TabOrder = 3
          ThumbLength = 15
          TickMarks = tmTopLeft
          OnChange = Trb_ppim1_04Change
        end
      end
      object Panel3: TPanel
        Left = 110
        Top = 43
        Width = 107
        Height = 115
        Color = 4737096
        TabOrder = 2
        object La_ppim2_01: TLabel
          Left = 87
          Top = 5
          Width = 16
          Height = 17
          Caption = '06'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object La_ppim2_02: TLabel
          Left = 87
          Top = 35
          Width = 16
          Height = 16
          Caption = '05'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object La_ppim2_03: TLabel
          Left = 87
          Top = 62
          Width = 16
          Height = 17
          Caption = '04'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object La_ppim2_04: TLabel
          Left = 87
          Top = 91
          Width = 16
          Height = 16
          Caption = '04'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Trb_ppim2_01: TTrackBar
          Left = 1
          Top = 1
          Width = 81
          Height = 20
          Max = 6
          Min = 4
          Position = 6
          TabOrder = 0
          ThumbLength = 15
          TickMarks = tmTopLeft
          OnChange = Trb_ppim2_01Change
        end
        object Trb_ppim2_02: TTrackBar
          Left = 1
          Top = 27
          Width = 81
          Height = 21
          Max = 5
          Min = 3
          Position = 5
          TabOrder = 1
          ThumbLength = 15
          TickMarks = tmTopLeft
          OnChange = Trb_ppim2_02Change
        end
        object Trb_ppim2_03: TTrackBar
          Left = 1
          Top = 56
          Width = 81
          Height = 21
          Max = 4
          Min = 2
          Position = 4
          TabOrder = 2
          ThumbLength = 15
          TickMarks = tmTopLeft
          OnChange = Trb_ppim2_03Change
        end
        object Trb_ppim2_04: TTrackBar
          Left = 1
          Top = 84
          Width = 81
          Height = 21
          Max = 4
          Min = 2
          Position = 4
          TabOrder = 3
          ThumbLength = 15
          TickMarks = tmTopLeft
          OnChange = Trb_ppim2_04Change
        end
      end
      object Stgr_ppi_A: TStringGrid
        Left = 220
        Top = 43
        Width = 246
        Height = 34
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 9
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object Stgr_ppi_B: TStringGrid
        Left = 220
        Top = 72
        Width = 222
        Height = 33
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object Stgr_ppi_C: TStringGrid
        Left = 220
        Top = 101
        Width = 170
        Height = 31
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object Stgr_ppi_D: TStringGrid
        Left = 220
        Top = 130
        Width = 170
        Height = 32
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
      object Cb_ppim_LinhaAB: TComboBox
        Left = 5
        Top = 174
        Width = 243
        Height = 23
        Style = csDropDownList
        Color = clSilver
        DropDownCount = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 1
        ParentFont = False
        TabOrder = 7
        Text = '2 - 8 a 10 Sorteados -- 5 a 7 n'#227'o sorteados'
        Items.Strings = (
          '1 - 9 Sorteados -- 6 n'#227'o sorteados'
          '2 - 8 a 10 Sorteados -- 5 a 7 n'#227'o sorteados')
      end
      object Cb_ppim_LinhaCD: TComboBox
        Left = 5
        Top = 213
        Width = 243
        Height = 23
        Style = csDropDownList
        Color = clSilver
        DropDownCount = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 1
        ParentFont = False
        TabOrder = 8
        Text = '2 - 5 a 7 Sorteados -- 3  a 5 n'#227'o sorteados'
        Items.Strings = (
          '1 - 6 Sorteados -- 4 n'#227'o sorteados'
          '2 - 5 a 7 Sorteados -- 3  a 5 n'#227'o sorteados')
      end
    end
    object Stgr_Bloco01: TStringGrid
      Left = 1289
      Top = 158
      Width = 180
      Height = 156
      TabStop = False
      BorderStyle = bsNone
      Color = 14541457
      ColCount = 6
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 25
      DrawingStyle = gdsClassic
      FixedColor = 9204480
      RowCount = 6
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 14
      ColWidths = (
        30
        30
        30
        30
        30
        30)
    end
    object Stgr_Bloco02: TStringGrid
      Left = 1472
      Top = 158
      Width = 181
      Height = 156
      TabStop = False
      BorderStyle = bsNone
      Color = 14541457
      ColCount = 6
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 25
      DrawingStyle = gdsClassic
      FixedColor = 9204480
      RowCount = 6
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 15
      ColWidths = (
        30
        30
        30
        30
        30
        30)
    end
    object Pa_Limitador23: TPanel
      Left = 2529
      Top = 13
      Width = 324
      Height = 307
      Color = 3881787
      ParentBackground = False
      TabOrder = 16
      object Label51: TLabel
        Left = 5
        Top = 1
        Width = 275
        Height = 17
        Caption = 'Etapa 8: Limitador 23 n'#186' com soma 299'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label52: TLabel
        Left = 13
        Top = 22
        Width = 61
        Height = 17
        Caption = 'Grupo 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label53: TLabel
        Left = 12
        Top = 168
        Width = 61
        Height = 17
        Caption = 'Grupo 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Stgr_Limitador23_Grupo1A: TStringGrid
        Left = 10
        Top = 43
        Width = 253
        Height = 33
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 9
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object Stgr_Limitador23_Grupo1B: TStringGrid
        Left = 10
        Top = 72
        Width = 227
        Height = 32
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object Stgr_Limitador23_Grupo1C: TStringGrid
        Left = 10
        Top = 100
        Width = 168
        Height = 31
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object Stgr_Limitador23_Grupo1D: TStringGrid
        Left = 10
        Top = 129
        Width = 168
        Height = 32
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object Stgr_Limitador23_Grupo2D: TStringGrid
        Left = 11
        Top = 274
        Width = 168
        Height = 32
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object Stgr_Limitador23_Grupo2C: TStringGrid
        Left = 11
        Top = 245
        Width = 168
        Height = 31
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object Stgr_Limitador23_Grupo2B: TStringGrid
        Left = 11
        Top = 216
        Width = 229
        Height = 32
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
      object Stgr_Limitador23_Grupo2A: TStringGrid
        Left = 11
        Top = 187
        Width = 253
        Height = 34
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 9
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
    end
    object Panel7: TPanel
      Left = 2858
      Top = 13
      Width = 324
      Height = 307
      Color = 3881787
      ParentBackground = False
      TabOrder = 17
      object Label56: TLabel
        Left = 6
        Top = 1
        Width = 275
        Height = 17
        Caption = 'Etapa 9: Limitador 19 n'#186' com soma 247'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label57: TLabel
        Left = 13
        Top = 22
        Width = 61
        Height = 17
        Caption = 'Grupo 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label59: TLabel
        Left = 12
        Top = 168
        Width = 61
        Height = 17
        Caption = 'Grupo 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Stgr_Limitador19_Grupo1A: TStringGrid
        Left = 10
        Top = 43
        Width = 261
        Height = 33
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 9
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object Stgr_Limitador19_Grupo1B: TStringGrid
        Left = 10
        Top = 71
        Width = 237
        Height = 32
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object Stgr_Limitador19_Grupo1C: TStringGrid
        Left = 10
        Top = 100
        Width = 176
        Height = 31
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object Stgr_Limitador19_Grupo1D: TStringGrid
        Left = 10
        Top = 129
        Width = 176
        Height = 32
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object Stgr_Limitador19_Grupo2D: TStringGrid
        Left = 11
        Top = 274
        Width = 176
        Height = 32
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object Stgr_Limitador19_Grupo2C: TStringGrid
        Left = 11
        Top = 245
        Width = 176
        Height = 31
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object Stgr_Limitador19_Grupo2B: TStringGrid
        Left = 11
        Top = 216
        Width = 237
        Height = 32
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
      object Stgr_Limitador19_Grupo2A: TStringGrid
        Left = 11
        Top = 187
        Width = 261
        Height = 34
        TabStop = False
        BorderStyle = bsNone
        Color = 4737096
        ColCount = 9
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 26
        DrawingStyle = gdsClassic
        FixedColor = 1972507
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
    end
    object Stgr_E11n11: TStringGrid
      Left = 3188
      Top = 15
      Width = 380
      Height = 302
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = clGray
      ColCount = 12
      Ctl3D = False
      DefaultColWidth = 27
      DefaultRowHeight = 25
      DrawingStyle = gdsClassic
      FixedColor = 11836556
      RowCount = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -14
      Font.Name = 'Times New Roman'
      Font.Style = []
      GridLineWidth = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 18
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
    object Stgr_E11n14: TStringGrid
      Left = 3569
      Top = 14
      Width = 470
      Height = 302
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = clGray
      ColCount = 15
      Ctl3D = False
      DefaultColWidth = 27
      DefaultRowHeight = 25
      DrawingStyle = gdsClassic
      FixedColor = 11836556
      RowCount = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -14
      Font.Name = 'Times New Roman'
      Font.Style = []
      GridLineWidth = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 19
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
  end
  object Pa_Resultado: TPanel
    Left = 0
    Top = 377
    Width = 1425
    Height = 348
    Align = alClient
    Color = 5392715
    ParentBackground = False
    TabOrder = 4
    object Pa_ExecutarFiltro: TPanel
      Left = 1
      Top = 42
      Width = 131
      Height = 305
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
      object Bbt_PrepararMenu: TBitBtn
        Left = 6
        Top = 41
        Width = 122
        Height = 41
        Caption = 'PREPARAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Bbt_PrepararMenuClick
      end
      object Bbt_GerarMenu: TBitBtn
        Left = 6
        Top = 87
        Width = 122
        Height = 32
        Caption = 'Gerar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Bbt_GerarMenuClick
      end
      object Bbt_CancelarSair: TBitBtn
        Left = 5
        Top = 129
        Width = 124
        Height = 61
        Caption = 'CANCELAR'#13#10'&& SAIR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -14
        Font.Name = 'Arial Rounded MT'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnClick = Bbt_CancelarClick
      end
      object Bbt_EditarBlase25: TBitBtn
        Left = 5
        Top = 0
        Width = 123
        Height = 36
        Caption = '21 a 25 - Alterar o'#13#10'Preenchimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Bbt_EditarBlase25Click
      end
    end
    object Pa_Titulo_Simulacao: TPanel
      Left = 1
      Top = 1
      Width = 1423
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object La_Gerar_Comb: TLabel
        Left = 1339
        Top = 22
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
        Left = 78
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
        Left = 343
        Top = 5
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
        Left = 343
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
      object Label33: TLabel
        Left = 564
        Top = 23
        Width = 49
        Height = 14
        Caption = 'Etapa 04'
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
      object Label34: TLabel
        Left = 734
        Top = 3
        Width = 49
        Height = 14
        Caption = 'Etapa 05'
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
      object Label35: TLabel
        Left = 734
        Top = 24
        Width = 49
        Height = 14
        Caption = 'Etapa 06'
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
      object Label41: TLabel
        Left = 938
        Top = 5
        Width = 49
        Height = 14
        Caption = 'Etapa 07'
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
      object Label61: TLabel
        Left = 937
        Top = 24
        Width = 103
        Height = 14
        Caption = 'Etapa 08 / 09 / 10'
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
      object Label72: TLabel
        Left = 1219
        Top = 5
        Width = 49
        Height = 14
        Caption = 'Etapa 11'
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
      object Pgbr_EtaPa_01: TProgressBar
        Left = 132
        Top = 1
        Width = 205
        Height = 19
        TabOrder = 0
      end
      object Pgbr_EtaPa_01_01: TProgressBar
        Left = 132
        Top = 21
        Width = 205
        Height = 19
        TabOrder = 1
      end
      object Pgbr_EtaPa_02: TProgressBar
        Left = 395
        Top = 2
        Width = 337
        Height = 19
        TabOrder = 2
      end
      object Pgbr_EtaPa_03: TProgressBar
        Left = 395
        Top = 22
        Width = 139
        Height = 19
        TabOrder = 3
      end
      object Pgbr_EtaPa_04: TProgressBar
        Left = 616
        Top = 22
        Width = 116
        Height = 19
        TabOrder = 4
      end
      object Pgbr_EtaPa_05: TProgressBar
        Left = 784
        Top = 1
        Width = 148
        Height = 19
        TabOrder = 5
      end
      object Pgbr_EtaPa_06: TProgressBar
        Left = 784
        Top = 22
        Width = 148
        Height = 19
        TabOrder = 6
      end
      object Pgbr_EtaPa_07: TProgressBar
        Left = 989
        Top = 2
        Width = 226
        Height = 19
        TabOrder = 7
      end
      object Pgbr_EtaPa_08: TProgressBar
        Left = 1044
        Top = 24
        Width = 51
        Height = 19
        TabOrder = 8
      end
      object Pgbr_EtaPa_09: TProgressBar
        Left = 1103
        Top = 24
        Width = 52
        Height = 19
        TabOrder = 9
      end
      object Pgbr_EtaPa_10: TProgressBar
        Left = 1163
        Top = 24
        Width = 52
        Height = 19
        TabOrder = 10
      end
      object Pgbr_EtaPa_11: TProgressBar
        Left = 1271
        Top = 3
        Width = 73
        Height = 19
        TabOrder = 11
      end
    end
    object Scbx_dados: TScrollBox
      Left = 132
      Top = 42
      Width = 1292
      Height = 305
      HorzScrollBar.Position = 606
      HorzScrollBar.Range = 28942
      Align = alClient
      AutoScroll = False
      TabOrder = 4
      ExplicitLeft = 170
      ExplicitTop = 43
      DesignSize = (
        1288
        284)
      object Bevel1: TBevel
        Left = -534
        Top = 12
        Width = 6571
        Height = 17
        Shape = bsTopLine
      end
      object Label3: TLabel
        Left = -401
        Top = 1
        Width = 59
        Height = 16
        Caption = 'Etapa 01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label4: TLabel
        Left = 10505
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
        Left = -83
        Top = 0
        Width = 44
        Height = 16
        Caption = '09 / 10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label23: TLabel
        Left = 864
        Top = 1
        Width = 44
        Height = 16
        Caption = '10 / 09'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label24: TLabel
        Left = 1933
        Top = 0
        Width = 43
        Height = 16
        Caption = '11 / 08'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label25: TLabel
        Left = 2988
        Top = -1
        Width = 36
        Height = 16
        Caption = '12 / 7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label26: TLabel
        Left = 5823
        Top = 0
        Width = 44
        Height = 16
        Caption = '15 / 04'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label27: TLabel
        Left = 3942
        Top = 0
        Width = 44
        Height = 16
        Caption = '13 / 06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label28: TLabel
        Left = 4869
        Top = 0
        Width = 44
        Height = 16
        Caption = '14 / 05'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -14
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label29: TLabel
        Left = 10704
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
        Left = 9771
        Top = 189
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
      object Label73: TLabel
        Left = 19229
        Top = 2
        Width = 96
        Height = 23
        Caption = 'Etapa 11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label74: TLabel
        Left = 19910
        Top = 26
        Width = 20
        Height = 29
        Caption = '='
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label75: TLabel
        Left = 20428
        Top = 74
        Width = 20
        Height = 29
        Caption = '='
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label76: TLabel
        Left = 19622
        Top = 0
        Width = 464
        Height = 32
        Alignment = taCenter
        Caption = 
          '1'#186' Bloco de 3  da primeira metade dos 14 n'#186' (do 1'#186' a 4'#186' pega 1 e' +
          ' do 5'#186' ao 7'#186' pegam  2)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
      end
      object Label77: TLabel
        Left = 20150
        Top = 2
        Width = 456
        Height = 32
        Alignment = taCenter
        Caption = 
          '2'#186' Bloco de 3  da primeira metade dos 14 n'#186' (do 1'#186' a 4'#186' pegam 2 ' +
          'e do 5'#186' ao 7'#186' pega  1)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
      end
      object Label78: TLabel
        Left = 20681
        Top = 2
        Width = 416
        Height = 32
        Alignment = taCenter
        Caption = 
          '1'#186' Bloco de 2  da primeira SEGUNDA metade dos 14 n'#186' (do 8'#186' ao 10' +
          #186' pega 1 e do 11'#186' ao 14'#186' pega  1)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
      end
      object Label79: TLabel
        Left = 20937
        Top = 74
        Width = 20
        Height = 29
        Caption = '='
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label80: TLabel
        Left = 21448
        Top = 7
        Width = 499
        Height = 16
        Alignment = taCenter
        Caption = 
          '1'#186' Bloco de 4 - 1 do 1'#186' ao 4'#186', 1 do 5'#186' ao 7'#186', 1 do 8'#186' ao 10'#186' e 2' +
          ' do 11'#186' ao 14'#186
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
      end
      object Label81: TLabel
        Left = 21996
        Top = 74
        Width = 20
        Height = 29
        Caption = '='
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label82: TLabel
        Left = 22843
        Top = 76
        Width = 20
        Height = 29
        Caption = '='
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label83: TLabel
        Left = 22295
        Top = 9
        Width = 499
        Height = 16
        Alignment = taCenter
        Caption = 
          '2'#186' Bloco de 4 - 1 do 1'#186' ao 4'#186', 1 do 5'#186' ao 7'#186', 2 do 8'#186' ao 10'#186' e 1' +
          ' do 11'#186' ao 14'#186
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
      end
      object Label84: TLabel
        Left = 23712
        Top = 58
        Width = 20
        Height = 29
        Caption = '='
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label85: TLabel
        Left = 23164
        Top = 10
        Width = 499
        Height = 16
        Alignment = taCenter
        Caption = 
          '3'#186' Bloco de 4 - 1 do 1'#186' ao 4'#186', 2 do 5'#186' ao 7'#186', 1 do 8'#186' ao 10'#186' e 1' +
          ' do 11'#186' ao 14'#186
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
      end
      object Label86: TLabel
        Left = 24031
        Top = 14
        Width = 499
        Height = 16
        Alignment = taCenter
        Caption = 
          '4'#186' Bloco de 4 - 2 do 1'#186' ao 4'#186', 1 do 5'#186' ao 7'#186', 1 do 8'#186' ao 10'#186' e 1' +
          ' do 11'#186' ao 14'#186
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
      end
      object Label87: TLabel
        Left = 24579
        Top = 62
        Width = 20
        Height = 29
        Caption = '='
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label88: TLabel
        Left = 25495
        Top = 10
        Width = 299
        Height = 16
        Alignment = taCenter
        Caption = '1'#186' Bloco de 2 - 2 do 1'#186' ao 7'#186', e 3 do 8'#186' ao 14'#186
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
      end
      object Label89: TLabel
        Left = 26171
        Top = 11
        Width = 299
        Height = 16
        Alignment = taCenter
        Caption = '2'#186' Bloco de 2 - 3 do 1'#186' ao 7'#186', e 2 do 8'#186' ao 14'#186
        Font.Charset = ANSI_CHARSET
        Font.Color = clCream
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
      end
      object Stgr_Etapa1_10: TStringGrid
        Left = 430
        Top = 18
        Width = 415
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 12
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10193796
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
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
      object Stgr_Etapa01_09: TStringGrid
        Left = 848
        Top = 18
        Width = 384
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 11
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10193796
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
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
      object Stgr_Etapa03_15: TStringGrid
        Left = 7948
        Top = 18
        Width = 644
        Height = 250
        TabStop = False
        Color = 14017159
        ColCount = 19
        Ctl3D = False
        DefaultColWidth = 28
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
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
      object Stgr_Etapa01_19: TStringGrid
        Left = 6088
        Top = 18
        Width = 779
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        ColCount = 24
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
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
      object Stgr_Etapa01_08: TStringGrid
        Left = 1915
        Top = 18
        Width = 351
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 10
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
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
      object Stgr_Etapa1_11: TStringGrid
        Left = 1455
        Top = 18
        Width = 463
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 13
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
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
      object Stgr_Etapa1_12: TStringGrid
        Left = 2490
        Top = 18
        Width = 474
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 14
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10193796
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
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
      object Stgr_Etapa01_07: TStringGrid
        Left = 2969
        Top = 18
        Width = 330
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 9
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10193796
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
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
      object Stgr_Etapa1_13: TStringGrid
        Left = 3427
        Top = 18
        Width = 498
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 15
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
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
      object Stgr_Etapa01_06: TStringGrid
        Left = 3930
        Top = 18
        Width = 300
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object Stgr_Etapa01_10: TStringGrid
        Left = -98
        Top = 18
        Width = 410
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 12
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        RowHeights = (
          25
          25)
      end
      object Stgr_Etapa1_09: TStringGrid
        Left = -503
        Top = 18
        Width = 400
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 11
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
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
      object Stgr_Etapa1_14: TStringGrid
        Left = 4332
        Top = 18
        Width = 519
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 16
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10193796
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
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
      object Stgr_Etapa01_05: TStringGrid
        Left = 4851
        Top = 18
        Width = 260
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10193796
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
      end
      object Stgr_Etapa1_15: TStringGrid
        Left = 5251
        Top = 18
        Width = 553
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 17
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
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
      object Stgr_Etapa01_04: TStringGrid
        Left = 5803
        Top = 18
        Width = 234
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
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
      object Stgr_Etapa02_12: TStringGrid
        Left = 6867
        Top = 18
        Width = 490
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        ColCount = 14
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
      end
      object Stgr_Etapa02_06: TStringGrid
        Left = 7359
        Top = 18
        Width = 339
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
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
          27)
      end
      object Stgr_Etapa02_03: TStringGrid
        Left = 7698
        Top = 18
        Width = 238
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
        ColWidths = (
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
          25
          25
          25
          25
          25
          25
          25
          25
          25
          25
          25
          25
          25
          25
          25
          25
          25
          25)
      end
      object Stgr_Etapa06_05: TStringGrid
        Left = 8600
        Top = 18
        Width = 225
        Height = 250
        TabStop = False
        Color = 14017159
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        RowCount = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 19
        ColWidths = (
          27
          27
          27
          27
          27
          27)
      end
      object Stgr_TriplasDuplas1: TStringGrid
        Left = 8834
        Top = 18
        Width = 445
        Height = 250
        TabStop = False
        Color = 14017159
        ColCount = 14
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        RowCount = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
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
          27
          27
          27
          27
          27
          27
          27)
      end
      object Stgr_TriplasDuplas2: TStringGrid
        Left = 9282
        Top = 18
        Width = 445
        Height = 250
        TabStop = False
        Color = 14017159
        ColCount = 14
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        RowCount = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
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
      end
      object Stgr_Limitador23_comb02: TStringGrid
        Left = 11622
        Top = 13
        Width = 136
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 22
        ColWidths = (
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
      object Stgr_Limit23_comb23: TStringGrid
        Left = 10791
        Top = 14
        Width = 826
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 25
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 23
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
      object Stgr_Limit19_comb19: TStringGrid
        Left = 15160
        Top = 18
        Width = 710
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 21
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 24
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
      object Stgr_Limitador19_comb06: TStringGrid
        Left = 15871
        Top = 18
        Width = 222
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10525846
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 25
        ColWidths = (
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
      object Stgr_Limit23_pre13A5: TStringGrid
        Left = 11797
        Top = 18
        Width = 263
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 26
        ColWidths = (
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
      object Stgr_Limit23_pre13B2: TStringGrid
        Left = 12071
        Top = 18
        Width = 198
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 27
        ColWidths = (
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
      object Stgr_Limit23_pre13A4: TStringGrid
        Left = 12311
        Top = 18
        Width = 236
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 28
        ColWidths = (
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
      object Stgr_Limit23_pre13B3: TStringGrid
        Left = 12547
        Top = 18
        Width = 208
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 29
        ColWidths = (
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
      object Stgr_Limit23_pre13A3: TStringGrid
        Left = 12764
        Top = 18
        Width = 213
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsGradient
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 30
        ColWidths = (
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
      object Stgr_Limit23_pre13B4: TStringGrid
        Left = 12978
        Top = 18
        Width = 245
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 31
        ColWidths = (
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
      object Stgr_Limit23_pre13C3: TStringGrid
        Left = 13232
        Top = 18
        Width = 163
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 32
        ColWidths = (
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
      object Stgr_Limit23_pre13D3: TStringGrid
        Left = 13395
        Top = 18
        Width = 221
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10716530
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 33
        ColWidths = (
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
      object Stgr_Limit23_comb13: TStringGrid
        Left = 13622
        Top = 16
        Width = 561
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 16
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 34
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
      object Stgr_Limit23_comb10: TStringGrid
        Left = 14197
        Top = 18
        Width = 344
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 11
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 35
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
      object Stgr_Limit23_comb15: TStringGrid
        Left = 14547
        Top = 18
        Width = 480
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 16
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 36
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
      object Stgr_Limit19_pre09a4: TStringGrid
        Left = 16111
        Top = 19
        Width = 240
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 37
        ColWidths = (
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
      object Stgr_Limit19_pre09b1: TStringGrid
        Left = 16351
        Top = 19
        Width = 172
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 38
        ColWidths = (
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
      object Stgr_Limit19_pre09a3: TStringGrid
        Left = 16537
        Top = 19
        Width = 213
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 39
        ColWidths = (
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
      object Stgr_Limit19_pre09b2: TStringGrid
        Left = 16749
        Top = 19
        Width = 199
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 40
        ColWidths = (
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
      object Stgr_Limit19_pre09a2: TStringGrid
        Left = 16967
        Top = 18
        Width = 195
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 41
        ColWidths = (
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
      object Stgr_Limit19_pre09b3: TStringGrid
        Left = 17162
        Top = 18
        Width = 218
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 42
        ColWidths = (
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
      object Stgr_Limit19_pre09c2: TStringGrid
        Left = 17404
        Top = 17
        Width = 190
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 43
        ColWidths = (
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
      object Stgr_Limit19_pre09d2: TStringGrid
        Left = 17596
        Top = 17
        Width = 190
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 44
        ColWidths = (
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
      object Stgr_Limit19_comb09: TStringGrid
        Left = 17803
        Top = 18
        Width = 462
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 12
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 45
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
      object Stgr_Limit19_comb10: TStringGrid
        Left = 18303
        Top = 18
        Width = 344
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 11
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 46
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
      object Stgr_Limit19_comb15: TStringGrid
        Left = 18653
        Top = 18
        Width = 480
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 16
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 47
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
      object Stgr_E11_AC10de11: TStringGrid
        Left = 19229
        Top = 32
        Width = 374
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 12
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 48
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
      object StringGrid1: TStringGrid
        Left = 19621
        Top = 31
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 49
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
      object StringGrid2: TStringGrid
        Left = 19752
        Top = 31
        Width = 155
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 50
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
      object StringGrid3: TStringGrid
        Left = 19932
        Top = 31
        Width = 185
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 51
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
      object StringGrid4: TStringGrid
        Left = 20302
        Top = 34
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 52
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
      object StringGrid5: TStringGrid
        Left = 20146
        Top = 34
        Width = 155
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 53
      end
      object StringGrid6: TStringGrid
        Left = 20452
        Top = 34
        Width = 185
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 54
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
      object StringGrid7: TStringGrid
        Left = 20681
        Top = 35
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 55
      end
      object StringGrid8: TStringGrid
        Left = 20810
        Top = 34
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 56
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
      object StringGrid9: TStringGrid
        Left = 20960
        Top = 34
        Width = 155
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 57
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
      object StringGrid05: TStringGrid
        Left = 21129
        Top = 34
        Width = 265
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 58
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
      object Stgr_E11Bloco1d4Numero4Qtd2: TStringGrid
        Left = 21842
        Top = 30
        Width = 155
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11855303
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 59
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
      object Stgr_E11Bloco1d4Numero3Qtd1: TStringGrid
        Left = 21711
        Top = 30
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 60
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
      object Stgr_E11Bloco1d4Numero2Qtd1: TStringGrid
        Left = 21580
        Top = 30
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 61
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
      object Stgr_E11Bloco1d4Numero1Qtd1: TStringGrid
        Left = 21449
        Top = 30
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 62
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
      object Stgr_E11Bloco1d4Result5: TStringGrid
        Left = 22003
        Top = 31
        Width = 265
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 63
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
      object Stgr_E11Bloco2d4Result5: TStringGrid
        Left = 22862
        Top = 31
        Width = 265
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 64
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
      object Stgr_E11Bloco2d4Numero3Qtd2: TStringGrid
        Left = 22558
        Top = 31
        Width = 155
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11855303
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 65
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
      object Stgr_E11Bloco2d4Numero4Qtd1: TStringGrid
        Left = 22718
        Top = 31
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 66
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
      object Stgr_E11Bloco2d4Numero2Qtd1: TStringGrid
        Left = 22427
        Top = 31
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 67
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
      object Stgr_E11Bloco2d4Numero1Qtd1: TStringGrid
        Left = 22296
        Top = 31
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 68
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
      object Stgr_E11Bloco3d4Result5: TStringGrid
        Left = 23734
        Top = 32
        Width = 265
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 69
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
      object Stgr_E11Bloco3d4Numero4Qtd1: TStringGrid
        Left = 23586
        Top = 32
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 70
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
      object Stgr_E11Bloco3d4Numero2Qtd2: TStringGrid
        Left = 23295
        Top = 32
        Width = 155
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11855303
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 71
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
      object Stgr_E11Bloco3d4Numero3Qtd1: TStringGrid
        Left = 23456
        Top = 32
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 72
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
      object Stgr_E11Bloco3d4Numero1Qtd1: TStringGrid
        Left = 23162
        Top = 32
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 73
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
      object Stgr_E11Bloco4d4Numero2Qtd1: TStringGrid
        Left = 24192
        Top = 32
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 74
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
      object Stgr_E11Bloco4d4Numero1Qtd2: TStringGrid
        Left = 24034
        Top = 32
        Width = 155
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11855303
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 75
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
      object Stgr_E11Bloco4d4Numero3Qtd1: TStringGrid
        Left = 24321
        Top = 34
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 76
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
      object Stgr_E11Bloco4d4Numero4Qtd1: TStringGrid
        Left = 24453
        Top = 34
        Width = 125
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 77
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
      object Stgr_E11Bloco4d4Result5: TStringGrid
        Left = 24601
        Top = 34
        Width = 265
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 78
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
      object Stgr_E11Bloco1d2Numero1Qtd2: TStringGrid
        Left = 25495
        Top = 32
        Width = 165
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11855303
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 79
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
      object Stgr_E11Bloco1d2Numero2Qtd3: TStringGrid
        Left = 25663
        Top = 32
        Width = 199
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 80
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
      object Stgr_E11Bloco1d5Result5: TStringGrid
        Left = 25867
        Top = 32
        Width = 265
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 81
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
      object Stgr_E11Bloco2d2Numero2Qtd2: TStringGrid
        Left = 26377
        Top = 34
        Width = 165
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11855303
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 82
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
      object Stgr_E11Bloco2d2Numero1Qtd3: TStringGrid
        Left = 26169
        Top = 34
        Width = 199
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11850439
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 83
        ColWidths = (
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
      object Stgr_E11Bloco2d2Result5: TStringGrid
        Left = 26551
        Top = 34
        Width = 265
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 84
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
      object Stgr_Etp11Bloc4: TStringGrid
        Left = 24872
        Top = 34
        Width = 559
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 17
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 85
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
      object Stgr_E11Parte3Fase1_Qtd02: TStringGrid
        Left = 26847
        Top = 32
        Width = 190
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11855303
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 86
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
      object Stgr_E11Parte3Fase1_Qtd10: TStringGrid
        Left = 27042
        Top = 32
        Width = 405
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11855303
        ColCount = 12
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 87
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
      object Stgr_E11Parte3Fase2_Qtd12: TStringGrid
        Left = 27461
        Top = 14
        Width = 490
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11855303
        ColCount = 15
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 88
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
      object Stgr_E11Parte3Fase3_Qtd05: TStringGrid
        Left = 27954
        Top = 14
        Width = 290
        Height = 229
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 11855303
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 9870476
        FixedCols = 3
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 89
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
    end
    object Stgr_Todos_Numeros: TStringGrid
      Left = -582
      Top = 327
      Width = 712
      Height = 45
      Color = 16119214
      ColCount = 26
      DefaultColWidth = 26
      DefaultRowHeight = 20
      RowCount = 2
      FixedRows = 0
      TabOrder = 1
      Visible = False
    end
    object Stgr_Comb10: TStringGrid
      Left = -245
      Top = 266
      Width = 366
      Height = 56
      TabStop = False
      Align = alCustom
      Color = 14017159
      ColCount = 11
      DefaultColWidth = 31
      DefaultRowHeight = 27
      DrawingStyle = gdsClassic
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
  object Pa_Topo: TPanel
    Left = 0
    Top = 0
    Width = 1425
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 4538177
    ParentBackground = False
    TabOrder = 3
    object La_Titulo: TLabel
      Left = 7
      Top = 5
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
    object Bbt_Close: TImage
      Left = 1316
      Top = 1
      Width = 30
      Height = 31
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
      OnClick = Bbt_CloseClick
    end
    object Bbt_PreencherPadrao: TBitBtn
      Left = 702
      Top = 13
      Width = 121
      Height = 28
      Caption = 'PADR'#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Bbt_PreencherPadraoClick
    end
  end
  object Pa_RemoveuRepetidos: TPanel
    Left = 1339
    Top = 187
    Width = 333
    Height = 412
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 8415488
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
      Width = 313
      Height = 54
      Align = alTop
      Alignment = taCenter
      Caption = 'GERA'#199#195'O, ORDENA'#199#195'O E '#13'REMO'#199#195'O DE REPETIDOS'#13' ENCERRADA:'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = True
      ExplicitWidth = 192
    end
    object Label46: TLabel
      Left = 19
      Top = 268
      Width = 197
      Height = 17
      Caption = 'Total de dados processados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 19
      Top = 317
      Width = 167
      Height = 17
      Caption = 'Total de dados gerados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object La_rTOTAL_COMB: TLabel
      Left = 19
      Top = 287
      Width = 90
      Height = 17
      Caption = '0000000000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object La_rQTD_COMB: TLabel
      Left = 19
      Top = 335
      Width = 36
      Height = 17
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label58: TLabel
      Left = 9
      Top = 105
      Width = 192
      Height = 17
      Caption = '1. In'#237'cio do Processamento:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object La_gINICIO_100REPET: TLabel
      Left = 126
      Top = 120
      Width = 166
      Height = 17
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label60: TLabel
      Left = 8
      Top = 143
      Width = 212
      Height = 34
      Caption = '2. T'#233'rmino do Processamento'#13'&& In'#237'cio remo'#231#227'o de repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label49: TLabel
      Left = 8
      Top = 200
      Width = 252
      Height = 34
      Caption = '3. Recupera'#231#227'o dos dados '#13'&& T'#233'rmino da remo'#231#227'o de repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object La_gFIM_100REPET: TLabel
      Left = 126
      Top = 233
      Width = 166
      Height = 17
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object La_gFIM_GERAR: TLabel
      Left = 126
      Top = 177
      Width = 166
      Height = 17
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Bbt_RemoveuRepetidos: TBitBtn
      Left = 190
      Top = 359
      Width = 125
      Height = 39
      Caption = 'OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = Bbt_RemoveuRepetidosClick
    end
    object Bbt_BlocoNotas: TBitBtn
      Left = 12
      Top = 360
      Width = 173
      Height = 37
      Caption = 'Bloco de Notas'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = Bbt_BlocoNotasClick
    end
  end
  object Pa_Inicial: TPanel
    Left = 1351
    Top = 12
    Width = 259
    Height = 319
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 5194043
    ParentBackground = False
    TabOrder = 1
    object Label55: TLabel
      Left = 63
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
    object Btn_NovaSimulacao: TButton
      Left = 23
      Top = 56
      Width = 210
      Height = 35
      Caption = 'NOVO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Btn_NovaSimulacaoClick
    end
    object Btn_Reajustar: TButton
      Left = 23
      Top = 94
      Width = 210
      Height = 36
      Caption = 'REAJUSTAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_ReajustarClick
    end
    object Btn_Sair: TButton
      Left = 23
      Top = 208
      Width = 210
      Height = 39
      Caption = 'SAIR / FECHAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Btn_SairClick
    end
    object Bbt_Cancelar: TBitBtn
      Left = 24
      Top = 268
      Width = 210
      Height = 38
      Caption = 'CANCELAR && SAIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Bbt_CancelarClick
    end
    object Btn_BlocoDeNotas1: TButton
      Left = 23
      Top = 132
      Width = 210
      Height = 36
      Caption = 'BLOCO DE NOTAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Bbt_BlocoNotasClick
    end
    object Btn_Carregar: TButton
      Left = 23
      Top = 171
      Width = 210
      Height = 35
      Caption = 'CARREGAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Btn_CarregarClick
    end
  end
  object Pa_Preparar: TPanel
    Left = 136
    Top = 538
    Width = 372
    Height = 157
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 5654859
    ParentBackground = False
    TabOrder = 6
    object Label65: TLabel
      Left = 128
      Top = 54
      Width = 113
      Height = 16
      Caption = 'N'#186' do Ultimo Rank :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label66: TLabel
      Left = 128
      Top = 87
      Width = 125
      Height = 16
      Caption = 'Data do Ultimo Rank :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object La_NUltimoTRank1: TLabel
      Left = 274
      Top = 54
      Width = 40
      Height = 16
      Caption = '9.999 '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object La_DtRank1: TLabel
      Left = 274
      Top = 87
      Width = 80
      Height = 16
      Caption = '__/__/____'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label68: TLabel
      Left = 128
      Top = 71
      Width = 132
      Height = 16
      Caption = 'N'#186' da Linha Escolhida :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object La_NLinhaRank1: TLabel
      Left = 276
      Top = 71
      Width = 40
      Height = 16
      Caption = '9.999 '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
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
    object Bbt_Preparar_OK: TBitBtn
      Left = 226
      Top = 122
      Width = 140
      Height = 30
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Bbt_Preparar_OKClick
    end
    object Bbt_Preparar_Voltar: TBitBtn
      Left = 7
      Top = 122
      Width = 139
      Height = 30
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Bbt_Preparar_VoltarClick
    end
    object Bbt_PreparaRank: TBitBtn
      Left = 7
      Top = 54
      Width = 117
      Height = 51
      Caption = 'Atualizar RANK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Bbt_PreparaRankClick
    end
  end
  object Pa_Gerar: TPanel
    Left = 52
    Top = 20
    Width = 439
    Height = 543
    BevelWidth = 2
    BorderWidth = 1
    Color = 5194043
    ParentBackground = False
    TabOrder = 5
    object La_Tipo19: TLabel
      Left = 8
      Top = 53
      Width = 138
      Height = 16
      Caption = 'ETAPA 1, 2 E 3 - Modo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label37: TLabel
      Left = 8
      Top = 178
      Width = 156
      Height = 16
      Caption = 'ETAPA 7: Triplas e Duplas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 8
      Top = 128
      Width = 158
      Height = 16
      Caption = 'ETAPA 5: '#205'mpares e Pares:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label44: TLabel
      Left = 118
      Top = 99
      Width = 157
      Height = 16
      Caption = 'ETAPA 4: OBRIGAT'#211'RIA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 228
      Top = 128
      Width = 126
      Height = 16
      Caption = 'Etapa 6: Blocos de 5:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label50: TLabel
      Left = 342
      Top = 55
      Width = 78
      Height = 15
      Caption = 'OBRIGAT'#211'RIA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label54: TLabel
      Left = 8
      Top = 232
      Width = 214
      Height = 16
      Caption = 'ETAPA 8: Limitador 23 n'#186's soma 299'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label62: TLabel
      Left = 226
      Top = 232
      Width = 214
      Height = 16
      Caption = 'ETAPA 9: Limitador 19 n'#186's soma 247'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label71: TLabel
      Left = 8
      Top = 429
      Width = 164
      Height = 16
      Caption = 'ETAPA 11: Limitador 11 p 14'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel8: TPanel
      Left = 5
      Top = 285
      Width = 418
      Height = 143
      TabOrder = 8
      object La_DtRank2: TLabel
        Left = 149
        Top = 112
        Width = 80
        Height = 16
        Caption = '__/__/____'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label69: TLabel
        Left = 7
        Top = 112
        Width = 125
        Height = 16
        Caption = 'Data do Ultimo Rank :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label70: TLabel
        Left = 7
        Top = 67
        Width = 113
        Height = 16
        Caption = 'N'#186' do Ultimo Rank :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_NUltimoTRank2: TLabel
        Left = 149
        Top = 67
        Width = 40
        Height = 16
        Caption = '9.999 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label64: TLabel
        Left = 7
        Top = 8
        Width = 151
        Height = 16
        Caption = 'ETAPA 10: Utilizar o Rank'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label67: TLabel
        Left = 7
        Top = 89
        Width = 132
        Height = 16
        Caption = 'N'#186' da Linha Escolhida :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object La_NLinhaRank2: TLabel
        Left = 149
        Top = 89
        Width = 40
        Height = 16
        Caption = '9.999 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Stgr_CapturarLinha: TStringGrid
        Left = 247
        Top = 7
        Width = 162
        Height = 124
        TabStop = False
        BorderStyle = bsNone
        Color = clGray
        ColCount = 2
        Ctl3D = False
        DefaultColWidth = 24
        DefaultRowHeight = 23
        DrawingStyle = gdsClassic
        FixedColor = clSilver
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object Cb_Rank1: TComboBox
        Left = 7
        Top = 34
        Width = 159
        Height = 24
        Style = csDropDownList
        Color = clSilver
        DropDownCount = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'N'#227'o'
        Items.Strings = (
          'N'#227'o'
          'Sim')
      end
    end
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 433
      Height = 44
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      ParentBackground = False
      TabOrder = 0
      object Label63: TLabel
        Left = 97
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
    object Bbt_Etapa01: TBitBtn
      Left = 8
      Top = 483
      Width = 189
      Height = 29
      Caption = 'Etapas 01, 02 e 03'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = Bbt_Etapa01Click
    end
    object Bbt_Voltar: TBitBtn
      Left = 8
      Top = 512
      Width = 189
      Height = 27
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Bbt_VoltarClick
    end
    object Bbt_OK: TBitBtn
      Left = 235
      Top = 485
      Width = 48
      Height = 53
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = Bbt_OKClick
    end
    object Cb_tipo19: TComboBox
      Left = 8
      Top = 70
      Width = 415
      Height = 23
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 1
      ParentFont = False
      TabOrder = 1
      Text = 
        '2 - Exceto a 1 + [10 a 13] na linhas de 15 e [6 a 9] nas linhas ' +
        'de 10'
      Items.Strings = (
        '1 - [11 a 12] na linhas de 15 e [7 a 8] nas linhas de 10'
        
          '2 - Exceto a 1 + [10 a 13] na linhas de 15 e [6 a 9] nas linhas ' +
          'de 10'
        
          '3-  Exceto a 1 e 2  + [9 a 15] na linhas de 15 e [4 a 10] nas li' +
          'nhas de 10')
    end
    object Bbt_Etapa03: TBitBtn
      Left = 296
      Top = 481
      Width = 139
      Height = 33
      Caption = 'Segunda Parte:'#13#10'Etapas 04, 05, 06 e 07'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = Bbt_Etapa03Click
    end
    object Cb_TriplasDuplas: TComboBox
      Left = 8
      Top = 197
      Width = 416
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 5
      ParentFont = False
      TabOrder = 5
      Text = '6 - N'#227'o fazer esta etapa'
      Items.Strings = (
        '1 - Modo de 10 n'#250'meros (2c/3 e 2c/2)'
        '2 - Modo de 11 n'#250'merors A (2c/3, 2c/2 e 1c/1)'
        '3 - Modo de 11 n'#250'merors B (1c/3 e 4c/2)'
        '4 - Modo de 12 n'#250'merors B (1xc/3 e 4c/2 e 1c/1)'
        
          '5 - Modo de 12 a 13 n'#250'meros (1c/3 e 4c/2 e 1c/1 OU 2c/3 e 3c/2 e' +
          ' 1c/1)'
        '6 - N'#227'o fazer esta etapa')
    end
    object Cb_ImparesPares: TComboBox
      Left = 8
      Top = 145
      Width = 193
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = 'N'#227'o'
      Items.Strings = (
        'N'#227'o'
        'Sim')
    end
    object Cb_Blocos5: TComboBox
      Left = 228
      Top = 145
      Width = 192
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'N'#227'o'
      Items.Strings = (
        'N'#227'o'
        'Sim')
    end
    object cbLimitador23: TComboBox
      Left = 8
      Top = 249
      Width = 193
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 6
      Text = 'N'#227'o'
      Items.Strings = (
        'N'#227'o'
        'Sim')
    end
    object btLimitador23: TButton
      Left = 288
      Top = 515
      Width = 41
      Height = 23
      Caption = 'btLimitador23'
      TabOrder = 11
      Visible = False
      OnClick = btLimitador23Click
    end
    object btLimitador19: TButton
      Left = 335
      Top = 515
      Width = 34
      Height = 23
      Caption = 'btLimitador19'
      TabOrder = 13
      Visible = False
      OnClick = btLimitador19Click
    end
    object cbLimitador19: TComboBox
      Left = 228
      Top = 249
      Width = 192
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = 'N'#227'o'
      Items.Strings = (
        'N'#227'o'
        'Sim')
    end
    object cbLimitador11p14: TComboBox
      Left = 8
      Top = 446
      Width = 193
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 14
      Text = 'N'#227'o'
      Items.Strings = (
        'N'#227'o'
        '4 Blocos (1a2 / 1a2 / 1a2 /1a2) pegar 5 n'#186
        '2 Blocos (2a3 / 2a3) pegar 5 n'#186
        '12 n'#186' soma 156 ')
    end
    object btLimit11p14t: TButton
      Left = 373
      Top = 515
      Width = 60
      Height = 23
      Caption = 'Etapa 11'
      TabOrder = 15
      OnClick = btLimit11p14tClick
    end
  end
  object Pa_Preencher5: TPanel
    Left = 484
    Top = 349
    Width = 440
    Height = 183
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 1
    BorderStyle = bsSingle
    Color = 8415744
    ParentBackground = False
    TabOrder = 8
    Visible = False
    object Bbt_714: TBitBtn
      Left = 187
      Top = 75
      Width = 35
      Height = 27
      Caption = '14'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
      OnClick = Bbt_714Click
    end
    object Bbt_713: TBitBtn
      Left = 143
      Top = 75
      Width = 35
      Height = 27
      Caption = '13'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = Bbt_713Click
    end
    object Bbt_Recomecar: TBitBtn
      Left = 8
      Top = 8
      Width = 93
      Height = 26
      Caption = 'RECOME'#199'AR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Bbt_RecomecarClick
    end
    object Bbt_701: TBitBtn
      Left = 8
      Top = 39
      Width = 35
      Height = 27
      Caption = '01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Bbt_701Click
    end
    object Bbt_703: TBitBtn
      Left = 98
      Top = 39
      Width = 34
      Height = 27
      Caption = '03'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Bbt_703Click
    end
    object Bbt_705: TBitBtn
      Left = 187
      Top = 39
      Width = 37
      Height = 27
      Caption = '05'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Bbt_705Click
    end
    object Bbt_707: TBitBtn
      Left = 308
      Top = 39
      Width = 35
      Height = 27
      Caption = '07'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Bbt_707Click
    end
    object Bbt_709: TBitBtn
      Left = 393
      Top = 39
      Width = 34
      Height = 27
      Caption = '09'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Bbt_709Click
    end
    object Bbt_717: TBitBtn
      Left = 348
      Top = 75
      Width = 35
      Height = 27
      Caption = '17'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Bbt_717Click
    end
    object Bbt_715: TBitBtn
      Left = 263
      Top = 75
      Width = 35
      Height = 27
      Caption = '15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = Bbt_715Click
    end
    object Bbt_711: TBitBtn
      Left = 53
      Top = 75
      Width = 35
      Height = 27
      Caption = '11'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = Bbt_711Click
    end
    object Bbt_719: TBitBtn
      Left = 8
      Top = 110
      Width = 35
      Height = 28
      Caption = '19'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = Bbt_719Click
    end
    object Bbt_721: TBitBtn
      Left = 98
      Top = 110
      Width = 34
      Height = 28
      Caption = '21'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = Bbt_721Click
    end
    object Bbt_723: TBitBtn
      Left = 187
      Top = 110
      Width = 35
      Height = 28
      Caption = '23'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = Bbt_723Click
    end
    object Bbt_725: TBitBtn
      Left = 308
      Top = 110
      Width = 35
      Height = 28
      Caption = '25'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = Bbt_725Click
    end
    object Bbt_702: TBitBtn
      Left = 53
      Top = 39
      Width = 35
      Height = 27
      Caption = '02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = Bbt_702Click
    end
    object Bbt_712: TBitBtn
      Left = 101
      Top = 75
      Width = 34
      Height = 27
      Caption = '12'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = Bbt_712Click
    end
    object Bbt_720: TBitBtn
      Left = 53
      Top = 110
      Width = 35
      Height = 28
      Caption = '20'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnClick = Bbt_720Click
    end
    object Bbt_722: TBitBtn
      Left = 142
      Top = 110
      Width = 36
      Height = 28
      Caption = '22'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      OnClick = Bbt_722Click
    end
    object Bbt_724: TBitBtn
      Left = 264
      Top = 110
      Width = 36
      Height = 28
      Caption = '24'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
      OnClick = Bbt_724Click
    end
    object Bbt_718: TBitBtn
      Left = 393
      Top = 75
      Width = 34
      Height = 27
      Caption = '18'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      OnClick = Bbt_718Click
    end
    object Bbt_710: TBitBtn
      Left = 8
      Top = 75
      Width = 35
      Height = 27
      Caption = '10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      OnClick = Bbt_710Click
    end
    object Bbt_708: TBitBtn
      Left = 348
      Top = 39
      Width = 35
      Height = 27
      Caption = '08'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      OnClick = Bbt_708Click
    end
    object Bbt_716: TBitBtn
      Left = 307
      Top = 75
      Width = 35
      Height = 27
      Caption = '16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      OnClick = Bbt_716Click
    end
    object Bbt_706: TBitBtn
      Left = 265
      Top = 39
      Width = 35
      Height = 27
      Caption = '06'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
      OnClick = Bbt_706Click
    end
    object Bbt_704: TBitBtn
      Left = 144
      Top = 39
      Width = 35
      Height = 27
      Caption = '04'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
      OnClick = Bbt_704Click
    end
    object Bbt_MontarBloco25: TBitBtn
      Left = 7
      Top = 149
      Width = 94
      Height = 23
      Caption = 'MONTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      OnClick = Bbt_MontarBloco25Click
    end
    object Bbt_OkBase25: TBitBtn
      Left = 108
      Top = 147
      Width = 92
      Height = 25
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
      Visible = False
      OnClick = Bbt_OkBase25Click
    end
  end
end
