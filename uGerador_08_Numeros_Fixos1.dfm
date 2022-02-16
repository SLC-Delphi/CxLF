object _F_Gerador_08_NumerosFixos1: T_F_Gerador_08_NumerosFixos1
  Left = 2
  Top = 116
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '_F_Gerador_08_NumerosFixos1'
  ClientHeight = 703
  ClientWidth = 1399
  Color = 1778452
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object SCBX_Gabarito: TScrollBox
    Left = 0
    Top = 40
    Width = 1399
    Height = 237
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
    object Label7: TLabel
      Left = 7
      Top = 5
      Width = 126
      Height = 18
      Caption = '08 N'#250'meros Fixos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12703713
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 9
      Top = 196
      Width = 126
      Height = 18
      Caption = '17 N'#250'meros Fixos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12703713
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object PA_Fixos: TPanel
      Left = 1162
      Top = 8
      Width = 108
      Height = 43
      BevelOuter = bvNone
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 2
        Top = 2
        Width = 105
        Height = 13
        Caption = 'N'#186'  Fixo - Exclu'#237'dos'
        Color = 8421631
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object ED_Fixos01: TEdit
        Left = 6
        Top = 18
        Width = 26
        Height = 22
        Color = 14413823
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '00'
        OnChange = ED_Fixos01Change
        OnClick = ED_Fixos01Click
      end
      object ED_Fixos02: TEdit
        Left = 39
        Top = 18
        Width = 27
        Height = 22
        Color = 14413823
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '00'
        OnChange = ED_Fixos02Change
      end
      object ED_Fixos03: TEdit
        Left = 75
        Top = 18
        Width = 27
        Height = 22
        Color = 14413823
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '00'
        OnChange = ED_Fixos02Change
      end
    end
    object STGR_Base08Fixos: TStringGrid
      Left = 140
      Top = 2
      Width = 255
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
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object STGR_Base17Fixos: TStringGrid
      Left = 146
      Top = 190
      Width = 509
      Height = 30
      TabStop = False
      BorderStyle = bsNone
      Color = 4737096
      ColCount = 18
      Ctl3D = False
      DefaultColWidth = 27
      DefaultRowHeight = 26
      DrawingStyle = gdsClassic
      FixedColor = 1972507
      RowCount = 1
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object PA_Resultado: TPanel
    Left = 0
    Top = 277
    Width = 1399
    Height = 426
    Align = alClient
    Color = 1972507
    ParentBackground = False
    TabOrder = 4
    object PA_ExecutarFiltro: TPanel
      Left = 1
      Top = 42
      Width = 131
      Height = 383
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
        Top = 2
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
        Top = 48
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
        Top = 89
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
      Width = 1397
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object LA_Gerar_Comb: TLabel
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
        Left = 80
        Top = 23
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
        Left = 228
        Top = 23
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
        Left = 403
        Top = 3
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
        Left = 403
        Top = 24
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
        Left = 604
        Top = 5
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
        Left = 606
        Top = 25
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
      object Label4: TLabel
        Left = 841
        Top = 4
        Width = 49
        Height = 14
        Caption = 'Etapa 08'
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
        Width = 263
        Height = 19
        TabOrder = 0
      end
      object PGBR_Etapa_02: TProgressBar
        Left = 131
        Top = 21
        Width = 93
        Height = 19
        TabOrder = 1
      end
      object PGBR_Etapa_03: TProgressBar
        Left = 279
        Top = 22
        Width = 117
        Height = 19
        TabOrder = 2
      end
      object PGBR_Etapa_04: TProgressBar
        Left = 455
        Top = 1
        Width = 132
        Height = 19
        TabOrder = 3
      end
      object PGBR_Etapa_05: TProgressBar
        Left = 455
        Top = 21
        Width = 132
        Height = 19
        TabOrder = 4
      end
      object PGBR_Etapa_06: TProgressBar
        Left = 659
        Top = 2
        Width = 172
        Height = 19
        TabOrder = 5
      end
      object PGBR_Etapa_07: TProgressBar
        Left = 659
        Top = 23
        Width = 171
        Height = 19
        TabOrder = 6
      end
      object PGBR_Etapa_08: TProgressBar
        Left = 892
        Top = 1
        Width = 58
        Height = 19
        TabOrder = 7
      end
      object PGBR_Etapa_08_01: TProgressBar
        Left = 954
        Top = 1
        Width = 259
        Height = 19
        TabOrder = 8
      end
      object PGBR_Etapa_08_02: TProgressBar
        Left = 891
        Top = 21
        Width = 160
        Height = 19
        TabOrder = 9
      end
      object PGBR_Etapa_08_03: TProgressBar
        Left = 1053
        Top = 21
        Width = 160
        Height = 19
        TabOrder = 10
      end
    end
    object SCBX_dados: TScrollBox
      Left = 132
      Top = 42
      Width = 1266
      Height = 383
      HorzScrollBar.Position = 71
      HorzScrollBar.Range = 7250
      Align = alClient
      AutoScroll = False
      TabOrder = 4
      DesignSize = (
        1262
        362)
      object Label3: TLabel
        Left = 134
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
      object Label8: TLabel
        Left = 4006
        Top = 10
        Width = 178
        Height = 18
        Caption = '06 CONJUNTOS - ETAPA 8'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label9: TLabel
        Left = 4333
        Top = 11
        Width = 178
        Height = 18
        Caption = '11 CONJUNTOS - ETAPA 8'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label10: TLabel
        Left = 4824
        Top = 13
        Width = 178
        Height = 18
        Caption = '19 CONJUNTOS - ETAPA 8'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label11: TLabel
        Left = 5502
        Top = 13
        Width = 178
        Height = 18
        Caption = '12 CONJUNTOS - ETAPA 8'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label12: TLabel
        Left = 6044
        Top = 13
        Width = 261
        Height = 18
        Caption = 'Sorteadoes- 15 CONJUNTOS - ETAPA 8'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label14: TLabel
        Left = 6703
        Top = 13
        Width = 292
        Height = 18
        Caption = 'N'#227'o Sorteadoes- 10 CONJUNTOS - ETAPA 8'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object STGR_Etapa07_15: TStringGrid
        Left = 2940
        Top = 11
        Width = 645
        Height = 332
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
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
        Font.Height = -15
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
      object STGR_Etapa04_19: TStringGrid
        Left = 778
        Top = 19
        Width = 650
        Height = 322
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 9742476
        ColCount = 21
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clGray
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
      end
      object STGR_Etapa03_11: TStringGrid
        Left = 286
        Top = 19
        Width = 445
        Height = 322
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 9742476
        ColCount = 13
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clGray
        RowCount = 10
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
      end
      object STGR_Etapa01_06: TStringGrid
        Left = -65
        Top = 22
        Width = 300
        Height = 322
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 9742476
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clGray
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
        TabOrder = 3
        ColWidths = (
          27
          27
          27
          27
          27
          27
          27)
      end
      object STGR_Etapa06_03: TStringGrid
        Left = 2671
        Top = 10
        Width = 239
        Height = 326
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
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        ColWidths = (
          27
          27
          27
          27
          27)
      end
      object STGR_Etapa05_12: TStringGrid
        Left = 1478
        Top = 14
        Width = 480
        Height = 327
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 9742476
        ColCount = 14
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
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
        TabOrder = 5
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
      object STGR_Etapa05_07: TStringGrid
        Left = 1970
        Top = 14
        Width = 325
        Height = 0
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 9742476
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        RowCount = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
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
          27)
      end
      object STGR_Etapa07_21: TStringGrid
        Left = 1970
        Top = 110
        Width = 690
        Height = 232
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 9742476
        ColCount = 22
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
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
        TabOrder = 7
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
          27
          27
          27
          27
          27
          27)
      end
      object STGR_Etapa08_10a: TStringGrid
        Left = 3601
        Top = 9
        Width = 400
        Height = 333
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 5922645
        ColCount = 11
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
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
          27)
      end
      object STGR_Etapa08_06: TStringGrid
        Left = 4005
        Top = 30
        Width = 310
        Height = 312
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 9742476
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clGray
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
        TabOrder = 9
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
      object STGR_Etapa08_19: TStringGrid
        Left = 4824
        Top = 35
        Width = 660
        Height = 308
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 9742476
        ColCount = 21
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clGray
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
          27
          27
          27
          27
          27)
      end
      object STGR_Etapa08_11: TStringGrid
        Left = 4331
        Top = 33
        Width = 474
        Height = 310
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 9742476
        ColCount = 14
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clGray
        FixedCols = 2
        RowCount = 10
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
      end
      object STGR_Etapa08_12: TStringGrid
        Left = 5498
        Top = 35
        Width = 498
        Height = 308
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 9742476
        ColCount = 14
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
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
          27)
      end
      object STGR_Etapa08_15: TStringGrid
        Left = 6043
        Top = 34
        Width = 645
        Height = 308
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        ColCount = 19
        Ctl3D = False
        DefaultColWidth = 28
        DefaultRowHeight = 25
        DrawingStyle = gdsGradient
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
        TabOrder = 13
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
      object STGR_Etapa08_10b: TStringGrid
        Left = 6703
        Top = 34
        Width = 412
        Height = 308
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 5922645
        ColCount = 11
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsGradient
        FixedColor = clMedGray
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
    Width = 1399
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 1778452
    ParentBackground = False
    TabOrder = 3
    object LA_Titulo: TLabel
      Left = 7
      Top = 4
      Width = 428
      Height = 34
      Caption = 'GERADOR 08 N'#250'meros Fixos 1'
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
  end
  object PA_RemoveuRepetidos: TPanel
    Left = 1285
    Top = 141
    Width = 331
    Height = 411
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
      ExplicitWidth = 209
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
    object BBT_RemoveuRepetidos: TBitBtn
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
      OnClick = BBT_RemoveuRepetidosClick
    end
    object BBT_BlocoNotas: TBitBtn
      Left = 11
      Top = 360
      Width = 174
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
      OnClick = BBT_BlocoNotasClick
    end
  end
  object PA_Inicial: TPanel
    Left = 1275
    Top = 36
    Width = 259
    Height = 319
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 5922645
    ParentBackground = False
    TabOrder = 1
    object Label55: TLabel
      Left = 64
      Top = 8
      Width = 199
      Height = 48
      Alignment = taCenter
      Caption = 'Result a Partir'#13'de 08 N'#250'meros Fixos'
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
      Left = 24
      Top = 133
      Width = 209
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
  object PA_Preparar: TPanel
    Left = 825
    Top = 127
    Width = 372
    Height = 137
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 5922645
    ParentBackground = False
    TabOrder = 6
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 368
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      Color = 1778452
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
  object PA_Gerar: TPanel
    Left = 452
    Top = 19
    Width = 435
    Height = 133
    BevelWidth = 2
    BorderWidth = 1
    Color = 5922645
    ParentBackground = False
    TabOrder = 5
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 429
      Height = 44
      Align = alTop
      BevelOuter = bvNone
      Color = 1778452
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
    object BBT_Etapa01: TBitBtn
      Left = 8
      Top = 58
      Width = 188
      Height = 33
      Caption = 'Etapas 01, 02, 03, 04 e 05'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_Etapa01Click
    end
    object BBT_Voltar: TBitBtn
      Left = 8
      Top = 92
      Width = 188
      Height = 30
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_VoltarClick
    end
    object BBT_Etapa04: TBitBtn
      Left = 289
      Top = 58
      Width = 139
      Height = 33
      Caption = 'Segunda Parte:'#13#10'Etapas  06, 07 e 08'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_Etapa04Click
    end
    object BBT_OK: TBitBtn
      Left = 288
      Top = 95
      Width = 141
      Height = 32
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBT_OKClick
    end
  end
  object PA_Preencher5: TPanel
    Left = 6
    Top = 74
    Width = 405
    Height = 150
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 1
    BorderStyle = bsSingle
    Color = 5922645
    TabOrder = 8
    object BBT_714: TBitBtn
      Left = 231
      Top = 75
      Width = 35
      Height = 27
      Caption = '14'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
      OnClick = BBT_714Click
    end
    object BBT_713: TBitBtn
      Left = 187
      Top = 75
      Width = 35
      Height = 27
      Caption = '13'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BBT_713Click
    end
    object BBT_Recomecar: TBitBtn
      Left = 8
      Top = 8
      Width = 93
      Height = 25
      Caption = 'RECOME'#199'AR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BBT_RecomecarClick
    end
    object BBT_701: TBitBtn
      Left = 8
      Top = 39
      Width = 35
      Height = 27
      Caption = '01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_701Click
    end
    object BBT_703: TBitBtn
      Left = 98
      Top = 39
      Width = 35
      Height = 27
      Caption = '03'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_703Click
    end
    object BBT_705: TBitBtn
      Left = 188
      Top = 39
      Width = 35
      Height = 27
      Caption = '05'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_705Click
    end
    object BBT_707: TBitBtn
      Left = 273
      Top = 39
      Width = 35
      Height = 27
      Caption = '07'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BBT_707Click
    end
    object BBT_709: TBitBtn
      Left = 8
      Top = 75
      Width = 35
      Height = 27
      Caption = '09'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BBT_709Click
    end
    object BBT_717: TBitBtn
      Left = 357
      Top = 75
      Width = 35
      Height = 27
      Caption = '17'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BBT_717Click
    end
    object BBT_715: TBitBtn
      Left = 272
      Top = 75
      Width = 35
      Height = 27
      Caption = '15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BBT_715Click
    end
    object BBT_711: TBitBtn
      Left = 97
      Top = 75
      Width = 35
      Height = 27
      Caption = '11'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BBT_711Click
    end
    object BBT_719: TBitBtn
      Left = 52
      Top = 111
      Width = 35
      Height = 27
      Caption = '19'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BBT_719Click
    end
    object BBT_721: TBitBtn
      Left = 142
      Top = 111
      Width = 35
      Height = 27
      Caption = '21'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BBT_721Click
    end
    object BBT_723: TBitBtn
      Left = 231
      Top = 111
      Width = 35
      Height = 27
      Caption = '23'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = BBT_723Click
    end
    object BBT_725: TBitBtn
      Left = 317
      Top = 111
      Width = 35
      Height = 27
      Caption = '25'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = BBT_725Click
    end
    object BBT_702: TBitBtn
      Left = 53
      Top = 39
      Width = 35
      Height = 27
      Caption = '02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = BBT_702Click
    end
    object BBT_712: TBitBtn
      Left = 144
      Top = 75
      Width = 35
      Height = 27
      Caption = '12'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = BBT_712Click
    end
    object BBT_720: TBitBtn
      Left = 97
      Top = 111
      Width = 35
      Height = 27
      Caption = '20'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnClick = BBT_720Click
    end
    object BBT_722: TBitBtn
      Left = 186
      Top = 111
      Width = 35
      Height = 27
      Caption = '22'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      OnClick = BBT_722Click
    end
    object BBT_724: TBitBtn
      Left = 273
      Top = 111
      Width = 35
      Height = 27
      Caption = '24'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
      OnClick = BBT_724Click
    end
    object BBT_718: TBitBtn
      Left = 8
      Top = 111
      Width = 35
      Height = 27
      Caption = '18'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      OnClick = BBT_718Click
    end
    object BBT_710: TBitBtn
      Left = 52
      Top = 75
      Width = 35
      Height = 27
      Caption = '10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      OnClick = BBT_710Click
    end
    object BBT_708: TBitBtn
      Left = 313
      Top = 39
      Width = 35
      Height = 27
      Caption = '08'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      OnClick = BBT_708Click
    end
    object BBT_716: TBitBtn
      Left = 316
      Top = 75
      Width = 35
      Height = 27
      Caption = '16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      OnClick = BBT_716Click
    end
    object BBT_706: TBitBtn
      Left = 230
      Top = 39
      Width = 35
      Height = 27
      Caption = '06'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
      OnClick = BBT_706Click
    end
    object BBT_704: TBitBtn
      Left = 144
      Top = 39
      Width = 35
      Height = 27
      Caption = '04'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194304
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
      OnClick = BBT_704Click
    end
    object BBT_MontarBloco17: TBitBtn
      Left = 301
      Top = 10
      Width = 93
      Height = 24
      Caption = 'MONTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      Visible = False
      OnClick = BBT_MontarBloco17Click
    end
  end
end
