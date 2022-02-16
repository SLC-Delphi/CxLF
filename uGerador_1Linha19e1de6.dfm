object _F_Gerador_1LinhDe19e1de6: T_F_Gerador_1LinhDe19e1de6
  Left = 57
  Top = 257
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '_F_Gerador_1LinhDe19e1de6'
  ClientHeight = 571
  ClientWidth = 1269
  Color = 1319707
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label20: TLabel
    Left = 7
    Top = 47
    Width = 159
    Height = 16
    Caption = 'a)  2n'#186' sorteados / 1 n'#186' n'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Scbx_Gabarito: TScrollBox
    Left = 0
    Top = 40
    Width = 1269
    Height = 139
    HorzScrollBar.Range = 1000
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
    object Label7: TLabel
      Left = 9
      Top = 7
      Width = 174
      Height = 16
      Caption = 'N'#218'MEROS DE BASE C/ 19'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12703713
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Pa_Fixos: TPanel
      Left = 1056
      Top = 24
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
      TabOrder = 0
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
      Left = 1044
      Top = 71
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
      TabOrder = 1
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
    object Stgr_Base06: TStringGrid
      Left = 688
      Top = 25
      Width = 297
      Height = 109
      TabStop = False
      BorderStyle = bsNone
      Color = 14541457
      ColCount = 8
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 9204480
      FixedCols = 2
      RowCount = 2
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 2
      ColWidths = (
        30
        30
        30
        30
        30
        30
        30
        30)
      RowHeights = (
        23
        23)
    end
    object Stgr_Base19: TStringGrid
      Left = 9
      Top = 25
      Width = 673
      Height = 109
      TabStop = False
      BorderStyle = bsNone
      Color = 14541457
      ColCount = 21
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 9204480
      FixedCols = 2
      RowCount = 2
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 3
    end
  end
  object Pa_Resultado: TPanel
    Left = 0
    Top = 179
    Width = 1269
    Height = 392
    Align = alClient
    Color = 5392715
    ParentBackground = False
    TabOrder = 4
    object Pa_ExecutarFiltro: TPanel
      Left = 1
      Top = 42
      Width = 131
      Height = 349
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 1
      object Bbt_PrepararMenu: TBitBtn
        Left = 6
        Top = 11
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
        Top = 57
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
        Top = 99
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
      object Stgr_Todos_Numeros: TStringGrid
        Left = 11
        Top = 230
        Width = 712
        Height = 113
        TabStop = False
        Color = 16119214
        ColCount = 26
        DefaultColWidth = 26
        DefaultRowHeight = 20
        FixedRows = 0
        TabOrder = 3
        Visible = False
      end
    end
    object Pa_Titulo_Simulacao: TPanel
      Left = 1
      Top = 1
      Width = 1267
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
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
      object Label70: TLabel
        Left = 143
        Top = 25
        Width = 53
        Height = 14
        Caption = 'Etapa 07:'
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
      object Label71: TLabel
        Left = 438
        Top = 4
        Width = 64
        Height = 14
        Caption = 'Etapa 08-1:'
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
      object Label73: TLabel
        Left = 438
        Top = 24
        Width = 64
        Height = 14
        Caption = 'Etapa 08-2:'
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
      object Label78: TLabel
        Left = 726
        Top = 4
        Width = 53
        Height = 14
        Caption = 'Etapa 09:'
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
        Width = 300
        Height = 19
        TabOrder = 0
      end
      object Pgbr_EtaPa_01_07: TProgressBar
        Left = 202
        Top = 22
        Width = 229
        Height = 19
        BorderWidth = 2
        MarqueeInterval = 6
        BarColor = clLime
        BackgroundColor = clWhite
        Step = 5
        TabOrder = 1
      end
      object Pgbr_EtaPa_01_08_m1: TProgressBar
        Left = 506
        Top = 2
        Width = 214
        Height = 19
        Smooth = True
        TabOrder = 2
      end
      object Pgbr_EtaPa_01_08_m2: TProgressBar
        Left = 506
        Top = 22
        Width = 214
        Height = 19
        SmoothReverse = True
        TabOrder = 3
      end
      object Pgbr_EtaPa_01_09: TProgressBar
        Left = 779
        Top = 2
        Width = 148
        Height = 19
        Smooth = True
        TabOrder = 4
      end
    end
    object Stgr_Comb10: TStringGrid
      Left = -28
      Top = 210
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
    object Scbx_dados: TScrollBox
      Left = 132
      Top = 42
      Width = 1136
      Height = 349
      HorzScrollBar.Position = 13464
      HorzScrollBar.Range = 16850
      Align = alClient
      AutoScroll = False
      TabOrder = 3
      DesignSize = (
        1132
        328)
      object Bevel1: TBevel
        Left = -13464
        Top = 11
        Width = 1161
        Height = 17
        Shape = bsTopLine
      end
      object Label3: TLabel
        Left = -12735
        Top = 0
        Width = 118
        Height = 19
        Caption = 'N'#250'mero 01 e 02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12703713
        Font.Height = -16
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label4: TLabel
        Left = -12002
        Top = 4
        Width = 92
        Height = 19
        Caption = 'N'#250'mero 03a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12703713
        Font.Height = -16
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label5: TLabel
        Left = -11538
        Top = 3
        Width = 154
        Height = 19
        Caption = 'N'#250'mero 03b-Modo 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12703713
        Font.Height = -16
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label8: TLabel
        Left = -10978
        Top = 3
        Width = 154
        Height = 19
        Caption = 'N'#250'mero 03b-Modo 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12703713
        Font.Height = -16
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label9: TLabel
        Left = -10442
        Top = 4
        Width = 83
        Height = 19
        Caption = 'N'#250'mero 04'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12703713
        Font.Height = -16
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label33: TLabel
        Left = -2780
        Top = 4
        Width = 119
        Height = 16
        Caption = 'ETAPA 07 - Linha 01'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label34: TLabel
        Left = -2352
        Top = 4
        Width = 119
        Height = 16
        Caption = 'ETAPA 07 - Linha 02'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label35: TLabel
        Left = -1949
        Top = 4
        Width = 119
        Height = 16
        Caption = 'ETAPA 07 - Linha 03'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label36: TLabel
        Left = -1589
        Top = 3
        Width = 381
        Height = 16
        Caption = 'ETAPA 07 - Todos  12 n'#186's considerados sorteados  para filtragem.'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label38: TLabel
        Left = -8311
        Top = 1
        Width = 72
        Height = 16
        Caption = 'N'#218'MERO 6:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label39: TLabel
        Left = -8170
        Top = 1
        Width = 76
        Height = 16
        Caption = '6 Modo 01 a)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label40: TLabel
        Left = -8065
        Top = 1
        Width = 76
        Height = 16
        Caption = '6 Modo 01 b)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label41: TLabel
        Left = -7839
        Top = 1
        Width = 76
        Height = 16
        Caption = '6 Modo 01 c)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label42: TLabel
        Left = -7614
        Top = 1
        Width = 76
        Height = 16
        Caption = '6 Modo 01 d)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label44: TLabel
        Left = -7439
        Top = 1
        Width = 65
        Height = 16
        Caption = 'Modo 01 e)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label48: TLabel
        Left = -6935
        Top = 0
        Width = 146
        Height = 16
        Caption = '6 Modo 01 - Cjunto de 09'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label50: TLabel
        Left = 3240
        Top = 0
        Width = 146
        Height = 328
        Align = alRight
        Caption = '6 Modo 01 - Cjunto de 08'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitHeight = 16
      end
      object Label51: TLabel
        Left = -6584
        Top = 0
        Width = 146
        Height = 16
        Caption = '6 Modo 01 - Cjunto de 10'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label52: TLabel
        Left = -6206
        Top = 0
        Width = 145
        Height = 16
        Caption = '6 Modo 01 - Cjunto de 11'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label53: TLabel
        Left = -5803
        Top = 1
        Width = 146
        Height = 16
        Caption = '6 Modo 01 - Cjunto de 12'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label56: TLabel
        Left = -5338
        Top = 1
        Width = 76
        Height = 16
        Caption = '6 Modo 02 a)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label57: TLabel
        Left = -5203
        Top = 1
        Width = 76
        Height = 16
        Caption = '6 Modo 02 b)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label59: TLabel
        Left = -5115
        Top = 1
        Width = 76
        Height = 16
        Caption = '6 Modo 02 c)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label61: TLabel
        Left = -5001
        Top = 1
        Width = 76
        Height = 16
        Caption = '6 Modo 02 d)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label54: TLabel
        Left = -4826
        Top = 0
        Width = 76
        Height = 16
        Caption = '6 Modo 02 e)'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label62: TLabel
        Left = -4591
        Top = -2
        Width = 146
        Height = 16
        Caption = '6 Modo 02 - Cjunto de 09'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label64: TLabel
        Left = -4239
        Top = -2
        Width = 146
        Height = 16
        Caption = '6 Modo 02 - Cjunto de 10'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label65: TLabel
        Left = -3837
        Top = -2
        Width = 145
        Height = 16
        Caption = '6 Modo 02 - Cjunto de 11'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label66: TLabel
        Left = -1069
        Top = 7
        Width = 167
        Height = 16
        Caption = 'ETAPA 08 - 10 n'#250'meros de 5'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label67: TLabel
        Left = -449
        Top = 5
        Width = 226
        Height = 16
        Caption = 'Etapa 08 - Modo 01 ---------------------------'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label68: TLabel
        Left = -198
        Top = 3
        Width = 250
        Height = 16
        Caption = 'Etapa 08 - Modo 02 ---------------------------------'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Stgr_N1_13de19: TStringGrid
        Left = -13460
        Top = 25
        Width = 490
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 15
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
      object Stgr_N1_06de13: TStringGrid
        Left = -12970
        Top = 25
        Width = 280
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 13487575
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
      object Stgr_N2_04de06: TStringGrid
        Left = -12514
        Top = 25
        Width = 215
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 13487575
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
      object Stgr_N2_02de06: TStringGrid
        Left = -12663
        Top = 25
        Width = 150
        Height = 852
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
      object Stgr_Base10a: TStringGrid
        Left = -12254
        Top = 25
        Width = 360
        Height = 0
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
        TabOrder = 4
        RowHeights = (
          25
          25)
      end
      object Stgr_N3a_3doBloco1: TStringGrid
        Left = -12254
        Top = 80
        Width = 180
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
      object Stgr_N3a_3doBloco2: TStringGrid
        Left = -12075
        Top = 80
        Width = 180
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
      object Stgr_N3a_Comb06: TStringGrid
        Left = -11896
        Top = 25
        Width = 280
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
      object Stgr_Base03bModo01: TStringGrid
        Left = -11538
        Top = 25
        Width = 177
        Height = 0
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
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
        TabOrder = 8
        RowHeights = (
          25
          25)
      end
      object Stgr_N3bModo1_Comb04: TStringGrid
        Left = -11538
        Top = 80
        Width = 205
        Height = 194
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 9
        ColWidths = (
          27
          27
          27
          27
          27
          27)
        RowHeights = (
          25
          25)
      end
      object Stgr_N3bModo1_Comb03: TStringGrid
        Left = -11334
        Top = 80
        Width = 180
        Height = 194
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 10
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
      object Stgr_N3bModo1_Comb02: TStringGrid
        Left = -11148
        Top = 80
        Width = 155
        Height = 194
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
      object Stgr_Base03bModo02: TStringGrid
        Left = -10978
        Top = 25
        Width = 147
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        FixedCols = 2
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
          27)
        RowHeights = (
          25
          25
          25
          25
          25)
      end
      object Stgr_N3bModo2_Comb03: TStringGrid
        Left = -10831
        Top = 80
        Width = 180
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
      object Stgr_N3bModo2_Comb02: TStringGrid
        Left = -10651
        Top = 80
        Width = 155
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
      object Stgr_N4_Triplas: TStringGrid
        Left = -10447
        Top = 27
        Width = 175
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
      object Stgr_N4_Duplas1: TStringGrid
        Left = -10271
        Top = 27
        Width = 150
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 16
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
      object Stgr_N4_Duplas2: TStringGrid
        Left = -10120
        Top = 27
        Width = 150
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 17
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
      object Stgr_N4_7numeros: TStringGrid
        Left = -9964
        Top = 15
        Width = 350
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 9
        Ctl3D = False
        DefaultColWidth = 33
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
        FixedCols = 2
        RowCount = 16
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
          25)
      end
      object Stgr_N4_1a: TStringGrid
        Left = -9589
        Top = 19
        Width = 155
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
        FixedCols = 2
        RowCount = 16
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
          25)
      end
      object Stgr_N4_1b: TStringGrid
        Left = -9435
        Top = 19
        Width = 155
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
        FixedCols = 2
        RowCount = 16
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
          25)
      end
      object Stgr_N4_1c: TStringGrid
        Left = -9280
        Top = 19
        Width = 155
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
        FixedCols = 2
        RowCount = 16
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
          25)
      end
      object Stgr_LinhaBaseA: TStringGrid
        Left = -3146
        Top = 23
        Width = 360
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 11
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
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
        TabOrder = 22
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
          25)
      end
      object Stgr_LinhaBaseB: TStringGrid
        Left = -3146
        Top = 93
        Width = 360
        Height = 852
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
        TabOrder = 23
        RowHeights = (
          25
          25)
      end
      object Stgr_LinhaBaseC: TStringGrid
        Left = -3146
        Top = 164
        Width = 360
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
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
        TabOrder = 24
        RowHeights = (
          25
          25)
      end
      object Stgr_N7_02de09: TStringGrid
        Left = -2526
        Top = 24
        Width = 160
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 13487575
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
        TabOrder = 25
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
      object Stgr_N7_05de09: TStringGrid
        Left = -2780
        Top = 24
        Width = 255
        Height = 852
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
        TabOrder = 26
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
      object Stgr_Todos19Numeros: TStringGrid
        Left = -9866
        Top = 67
        Width = 712
        Height = 113
        TabStop = False
        Color = 16119214
        ColCount = 20
        DefaultColWidth = 26
        DefaultRowHeight = 20
        DoubleBuffered = False
        RowCount = 4
        FixedRows = 0
        ParentDoubleBuffered = False
        TabOrder = 27
        Visible = False
      end
      object Stgr_N1_Aprovados: TStringGrid
        Left = -9112
        Top = 19
        Width = 115
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 2
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
        TabOrder = 28
        ColWidths = (
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
      object Stgr_N15_AprovadosFase1: TStringGrid
        Left = -8991
        Top = 19
        Width = 653
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 22
        Ctl3D = False
        DefaultColWidth = 26
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
        TabOrder = 29
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
      object Stgr_N7_05de10: TStringGrid
        Left = -2352
        Top = 25
        Width = 255
        Height = 852
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
        TabOrder = 30
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
      object Stgr_N7_01de10: TStringGrid
        Left = -2098
        Top = 25
        Width = 140
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 13487575
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
        TabOrder = 31
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
      object Stgr_N7_02de06: TStringGrid
        Left = -1949
        Top = 25
        Width = 160
        Height = 852
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
        TabOrder = 32
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
      object Stgr_N7_03de06: TStringGrid
        Left = -1790
        Top = 25
        Width = 185
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12178624
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 13487575
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
        TabOrder = 33
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
      object Stgr_N7_12numeros: TStringGrid
        Left = -1589
        Top = 26
        Width = 450
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 13
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
      object stgr_N6_5Triplas_L1: TStringGrid
        Left = -8313
        Top = 19
        Width = 118
        Height = 661
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 35
        ColWidths = (
          27
          27
          27
          27)
        RowHeights = (
          25
          25)
      end
      object stgr_N6_5Triplas_L2: TStringGrid
        Left = -8313
        Top = 81
        Width = 118
        Height = 661
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 36
        ColWidths = (
          27
          27
          27
          27)
        RowHeights = (
          25
          25)
      end
      object stgr_N6_5Triplas_L3: TStringGrid
        Left = -8313
        Top = 143
        Width = 118
        Height = 661
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 37
        ColWidths = (
          27
          27
          27
          27)
        RowHeights = (
          25
          25)
      end
      object stgr_N6_5Triplas_L4: TStringGrid
        Left = -8313
        Top = 206
        Width = 118
        Height = 661
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 38
        ColWidths = (
          27
          27
          27
          27)
        RowHeights = (
          25
          25)
      end
      object stgr_N6_5Triplas_L5: TStringGrid
        Left = -8313
        Top = 268
        Width = 118
        Height = 661
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 39
        ColWidths = (
          27
          27
          27
          27)
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo1a2: TStringGrid
        Left = -8179
        Top = 19
        Width = 107
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 40
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo1b2: TStringGrid
        Left = -8065
        Top = 19
        Width = 107
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 41
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo1b3: TStringGrid
        Left = -7964
        Top = 19
        Width = 118
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 42
        ColWidths = (
          27
          27
          27
          27)
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo1c2: TStringGrid
        Left = -7840
        Top = 19
        Width = 107
        Height = 191
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 43
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo1c3: TStringGrid
        Left = -7738
        Top = 19
        Width = 118
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 44
        ColWidths = (
          27
          27
          27
          27)
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo1d1: TStringGrid
        Left = -7615
        Top = 19
        Width = 75
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 2
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 46
        ColWidths = (
          27
          27)
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo1e1: TStringGrid
        Left = -7440
        Top = 19
        Width = 75
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 2
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 47
        ColWidths = (
          27
          27)
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo1cj08: TStringGrid
        Left = -7262
        Top = 19
        Width = 320
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 9
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
        TabOrder = 49
        ColWidths = (
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
      object stgr_N6Modo1cj09: TStringGrid
        Left = -6935
        Top = 19
        Width = 345
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 10
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
        TabOrder = 50
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
      object stgr_N6Modo1cj10: TStringGrid
        Left = -6584
        Top = 19
        Width = 370
        Height = 852
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
        TabOrder = 51
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
      object stgr_N6Modo1cj11: TStringGrid
        Left = -6206
        Top = 19
        Width = 395
        Height = 852
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
        TabOrder = 52
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
      object stgr_N6Modo1cj12: TStringGrid
        Left = -5804
        Top = 18
        Width = 425
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 13
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
        TabOrder = 53
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
      object stgr_N6Modo2d2: TStringGrid
        Left = -4939
        Top = 19
        Width = 88
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 54
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo2d1: TStringGrid
        Left = -5000
        Top = 19
        Width = 60
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 2
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 55
        ColWidths = (
          27
          27)
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo2c2: TStringGrid
        Left = -5115
        Top = 19
        Width = 88
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 56
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo2b1: TStringGrid
        Left = -5204
        Top = 19
        Width = 60
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 2
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 57
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo2a3: TStringGrid
        Left = -5342
        Top = 19
        Width = 118
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 58
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo2e2: TStringGrid
        Left = -4830
        Top = 17
        Width = 88
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 59
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo2e3: TStringGrid
        Left = -4742
        Top = 17
        Width = 118
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 60
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo2cj10: TStringGrid
        Left = -4239
        Top = 18
        Width = 370
        Height = 852
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
        TabOrder = 61
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
      object stgr_N6Modo2cj09: TStringGrid
        Left = -4591
        Top = 18
        Width = 345
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 10
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
        TabOrder = 62
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
      object stgr_N6Modo2cj11: TStringGrid
        Left = -3839
        Top = 18
        Width = 395
        Height = 852
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
        TabOrder = 63
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
      object stgr_N6Modo1d2: TStringGrid
        Left = -7550
        Top = 19
        Width = 108
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 45
        RowHeights = (
          25
          25)
      end
      object stgr_N6Modo1e2: TStringGrid
        Left = -7372
        Top = 19
        Width = 108
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 48
        RowHeights = (
          25
          25)
      end
      object stgr_N08Base1: TStringGrid
        Left = -1069
        Top = 27
        Width = 175
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
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
        TabOrder = 64
        ColWidths = (
          27
          27
          27
          27
          27
          27)
        RowHeights = (
          25
          25)
      end
      object stgr_N08Modo1_1: TStringGrid
        Left = -877
        Top = 26
        Width = 202
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
        RowCount = 20
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
      object stgr_N08Modo1_2: TStringGrid
        Left = -672
        Top = 26
        Width = 202
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11512224
        RowCount = 20
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
      object stgr_N08Modo1_Resultado: TStringGrid
        Left = -450
        Top = 27
        Width = 245
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        RowCount = 20
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
      object stgr_N08Modo2_Resultado: TStringGrid
        Left = -198
        Top = 27
        Width = 265
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 11836556
        RowCount = 20
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
      object Stgr_N14de19: TStringGrid
        Left = -13438
        Top = 34
        Width = 535
        Height = 852
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 16
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
        Visible = False
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
      object Stgr_N09Base22numeros: TStringGrid
        Left = 87
        Top = 4
        Width = 723
        Height = 321
        TabStop = False
        BorderStyle = bsNone
        Color = 14541457
        ColCount = 23
        Ctl3D = False
        DefaultColWidth = 30
        DefaultRowHeight = 23
        DrawingStyle = gdsClassic
        FixedColor = 9204480
        RowCount = 9
        Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        TabOrder = 70
      end
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
    Width = 1269
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 4538177
    ParentBackground = False
    TabOrder = 3
    object La_Titulo: TLabel
      Left = 7
      Top = 5
      Width = 858
      Height = 34
      Caption = 'GERADOR Resultados a Partir de 1 Linha de 19 x 1 linha de 06'
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
      Left = 1225
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
      Left = 892
      Top = 6
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
      Visible = False
      OnClick = Bbt_PreencherPadraoClick
    end
  end
  object Pa_RemoveuRepetidos: TPanel
    Left = 971
    Top = 125
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
    Left = 1151
    Top = 22
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
  object Pa_Gerar: TPanel
    Left = 317
    Top = 23
    Width = 504
    Height = 300
    BevelWidth = 2
    BorderWidth = 1
    Color = 5194043
    ParentBackground = False
    TabOrder = 5
    object Label10: TLabel
      Left = 9
      Top = 165
      Width = 208
      Height = 16
      Caption = 'Etapa 07 -Limitador 18 n'#186' soma 234'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label37: TLabel
      Left = 9
      Top = 217
      Width = 219
      Height = 16
      Caption = 'Etapa 9 - Limitador 8 Linhas de 22 n'#186':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label69: TLabel
      Left = 263
      Top = 165
      Width = 135
      Height = 16
      Caption = 'Etapa 08 -10 N'#186's de 05'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label72: TLabel
      Left = 376
      Top = 242
      Width = 13
      Height = 18
      Caption = '1/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel4: TPanel
      Left = 6
      Top = 48
      Width = 468
      Height = 107
      TabOrder = 12
      object Label11: TLabel
        Left = 30
        Top = 6
        Width = 416
        Height = 16
        Caption = 
          'Limitador 1 Tripla, 2 Duplas e 3 Isolados '#233' obrigat'#243'rio (a.comb ' +
          '13em 19)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label74: TLabel
        Left = 30
        Top = 26
        Width = 383
        Height = 16
        Caption = 'A.comb. 15 em 19 sendo 12 dos 15 s'#227'o 6I e 6P / 8i e 4P / 4i e 8P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label75: TLabel
        Left = 30
        Top = 66
        Width = 383
        Height = 16
        Caption = 'A.comb. 14 em 19 sendo 12 dos 15 s'#227'o 6I e 6P / 8i e 4P / 4i e 8P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label76: TLabel
        Left = 30
        Top = 85
        Width = 277
        Height = 16
        Caption = 'A.comb. 14 em 19 sendo 12 dos 15 s'#227'o 6I e 6P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label77: TLabel
        Left = 30
        Top = 46
        Width = 277
        Height = 16
        Caption = 'A.comb. 15 em 19 sendo 12 dos 15 s'#227'o 6I e 6P'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RB_AC13em19: TRadioButton
        Left = 8
        Top = 5
        Width = 16
        Height = 17
        Caption = '.'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RB_AC13em19Click
      end
      object RB_AC15em19: TRadioButton
        Left = 8
        Top = 25
        Width = 16
        Height = 17
        Caption = '.'
        TabOrder = 1
        OnClick = RB_AC15em19Click
      end
      object RB_AC14em19: TRadioButton
        Left = 8
        Top = 65
        Width = 16
        Height = 17
        Caption = '.'
        TabOrder = 3
        OnClick = RB_AC14em19Click
      end
      object RB_AC14em19_6i: TRadioButton
        Left = 8
        Top = 84
        Width = 16
        Height = 17
        Caption = '.'
        TabOrder = 4
        OnClick = RB_AC14em19Click
      end
      object RB_AC15em19_6i: TRadioButton
        Left = 8
        Top = 45
        Width = 16
        Height = 17
        Caption = '.'
        TabOrder = 2
        OnClick = RB_AC15em19Click
      end
    end
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 498
      Height = 44
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      ParentBackground = False
      TabOrder = 0
      object Label63: TLabel
        Left = 6
        Top = 5
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
    object Bbt_Voltar: TBitBtn
      Left = 8
      Top = 270
      Width = 257
      Height = 25
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Bbt_VoltarClick
    end
    object Bbt_OK: TBitBtn
      Left = 274
      Top = 270
      Width = 225
      Height = 25
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Bbt_OKClick
    end
    object BBT_Numero04: TBitBtn
      Left = 481
      Top = 52
      Width = 40
      Height = 20
      Caption = 'N'#186' 4a'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMedGray
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = BBT_Numero04Click
    end
    object Bbt_N4b: TBitBtn
      Left = 481
      Top = 96
      Width = 41
      Height = 20
      Caption = 'N'#186' 4b'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnClick = Bbt_N4bClick
    end
    object Bbt_N4c: TBitBtn
      Left = 481
      Top = 74
      Width = 41
      Height = 20
      Caption = 'N'#186' 4c'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnClick = Bbt_N4cClick
    end
    object BitBtn1: TBitBtn
      Left = 480
      Top = 118
      Width = 41
      Height = 20
      Caption = 'N'#186' 4d'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
      WordWrap = True
      OnClick = BitBtn1Click
    end
    object bbt_TriplasDuplasIsolados: TBitBtn
      Left = 481
      Top = 144
      Width = 129
      Height = 14
      Caption = 'N'#186' 4e - Gerar e Filtrar com Triplas & Duplas & Isolados'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      WordWrap = True
      OnClick = bbt_TriplasDuplasIsoladosClick
    end
    object cb_Limitador18Soma234: TComboBox
      Left = 8
      Top = 184
      Width = 150
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
      TabOrder = 8
      Text = 'NAO'
      Items.Strings = (
        'NAO'
        'SIM')
    end
    object cb_Limitador8Linhas22: TComboBox
      Left = 6
      Top = 236
      Width = 150
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
      TabOrder = 9
      Text = 'N'#227'o'
      Items.Strings = (
        'N'#227'o'
        'Sim')
    end
    object cb_10Numeros05: TComboBox
      Left = 262
      Top = 184
      Width = 150
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 1
      ParentFont = False
      TabOrder = 10
      Text = 'Modo 01'
      Items.Strings = (
        'N'#227'o'
        'Modo 01'
        'Modo 02'
        'Modo 03 (01 e/ou 02)')
    end
    object cb_SubAmostragem: TComboBox
      Left = 395
      Top = 240
      Width = 101
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 1
      ParentFont = False
      TabOrder = 11
      Text = '200'
      Items.Strings = (
        '300'
        '200'
        '100'
        '50'
        '20'
        '1')
    end
    object bbt_ac15em19: TBitBtn
      Left = 480
      Top = 158
      Width = 129
      Height = 14
      Caption = 'a.comb 15 em 19'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      WordWrap = True
      OnClick = bbt_ac15em19Click
    end
    object bbt_ac14em19: TBitBtn
      Left = 479
      Top = 170
      Width = 129
      Height = 14
      Caption = 'a.comb 14 em 19'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      WordWrap = True
      OnClick = bbt_ac14em19Click
    end
  end
  object Pa_Preparar: TPanel
    Left = 1116
    Top = 8
    Width = 825
    Height = 410
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 5654859
    ParentBackground = False
    TabOrder = 6
    object Label43: TLabel
      Left = 9
      Top = 70
      Width = 60
      Height = 16
      Caption = 'N'#250'mero 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 821
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        Left = 7
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
      Left = 336
      Top = 375
      Width = 483
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
      Left = 3
      Top = 376
      Width = 271
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
    object BBT_Numero07: TBitBtn
      Left = 447
      Top = 55
      Width = 81
      Height = 27
      Caption = 'N'#186' 7'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_Numero07Click
    end
    object BBT_Numero03b: TBitBtn
      Left = 207
      Top = 55
      Width = 54
      Height = 27
      Caption = 'N'#186' 3b'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBT_Numero03bClick
    end
    object BBT_Numero03a: TBitBtn
      Left = 151
      Top = 55
      Width = 54
      Height = 27
      Caption = 'N'#186' 3a'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BBT_Numero03aClick
    end
    object BBT_Numero01e02: TBitBtn
      Left = 69
      Top = 55
      Width = 81
      Height = 27
      Caption = 'N'#186's 1 e 2'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BBT_Numero01e02Click
    end
    object Cb_Numero3: TComboBox
      Left = 9
      Top = 88
      Width = 519
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
      Text = 
        'A1  - Seis n'#186's  gerados de 2 blocos 10  a partir dos 19, sendo o' +
        's 6 com soma 78'
      Items.Strings = (
        
          'A1  - Seis n'#186's  gerados de 2 blocos 10  a partir dos 19, sendo o' +
          's 6 com soma 78'
        
          'A2 -  Seis n'#186's  gerados de 2 blocos 10  a partir dos 19, sendo o' +
          's 6 com soma 77 a 79'
        
          'A2 -  Seis n'#186's  gerados de 2 blocos 10  a partir dos 19, sendo o' +
          's 6 com soma 76 a 80')
    end
    object Panel3: TPanel
      Left = 9
      Top = 125
      Width = 617
      Height = 199
      TabOrder = 8
      object Label12: TLabel
        Left = 7
        Top = 6
        Width = 381
        Height = 16
        Caption = 
          'N'#250'mero 6:   para cada letra, 1 tripla qualquer entre as 5 conten' +
          'do:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 7
        Top = 46
        Width = 159
        Height = 16
        Caption = 'a)  2n'#186' sorteados / 1 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 7
        Top = 64
        Width = 185
        Height = 16
        Caption = 'b) 2, 3 n'#186' sorteados / 0,1 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 7
        Top = 83
        Width = 185
        Height = 16
        Caption = 'c) 2, 3 n'#186' sorteados / 0,1 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 7
        Top = 100
        Width = 185
        Height = 16
        Caption = 'd) 1, 2n'#186' sorteados / 1, 2 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 7
        Top = 118
        Width = 189
        Height = 16
        Caption = 'e) 1, 2 n'#186' sorteados / 1, 2 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 5
        Top = 29
        Width = 187
        Height = 16
        Caption = ' MODO 1................................:'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label21: TLabel
        Left = 215
        Top = 118
        Width = 189
        Height = 16
        Caption = 'e) 2, 3 n'#186' sorteados / 0, 1 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 215
        Top = 100
        Width = 185
        Height = 16
        Caption = 'd) 1, 2n'#186' sorteados / 1, 2 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 215
        Top = 83
        Width = 159
        Height = 16
        Caption = 'c) 2 n'#186' sorteados / 1 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 215
        Top = 64
        Width = 159
        Height = 16
        Caption = 'b) 1 n'#186' sorteados / 3 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 215
        Top = 46
        Width = 155
        Height = 16
        Caption = 'a) 3n'#186' sorteados / 0 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 213
        Top = 29
        Width = 183
        Height = 16
        Caption = ' MODO 2...............................:'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label27: TLabel
        Left = 423
        Top = 118
        Width = 189
        Height = 16
        Caption = 'e) 1, 2 n'#186' sorteados / 1, 2 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 423
        Top = 100
        Width = 159
        Height = 16
        Caption = 'd) 1 n'#186' sorteados / 2 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 423
        Top = 83
        Width = 159
        Height = 16
        Caption = 'c) 2 n'#186' sorteados / 1 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 423
        Top = 64
        Width = 159
        Height = 16
        Caption = 'b) 2 n'#186' sorteados / 1 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 423
        Top = 46
        Width = 155
        Height = 16
        Caption = 'a) 3n'#186' sorteados / 0 n'#186' n'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 421
        Top = 29
        Width = 183
        Height = 16
        Caption = ' MODO 3...............................:'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object cb_N6Modo1Qtd: TComboBox
        Left = 23
        Top = 170
        Width = 174
        Height = 24
        Style = csDropDownList
        Color = clSilver
        DropDownCount = 15
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Gerar 8 n'#250'meros distintos'
        Items.Strings = (
          'Gerar 8 n'#250'meros distintos'
          'Gerar 9 n'#250'meros distintos'
          'Gerar 10 n'#250'meros distintos'
          'Gerar 11 n'#250'meros distintos'
          'Gerar 12 n'#250'meros distintos')
      end
      object rb_N6Modo1Qtd: TRadioButton
        Left = 5
        Top = 173
        Width = 19
        Height = 17
        Caption = '.'
        TabOrder = 1
      end
      object cb_N6Modo2Qtd: TComboBox
        Left = 231
        Top = 169
        Width = 174
        Height = 24
        Style = csDropDownList
        Color = clSilver
        DropDownCount = 15
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = 'Gerar 9 n'#250'meros distintos'
        Items.Strings = (
          'Gerar 9 n'#250'meros distintos'
          'Gerar 10 n'#250'meros distintos'
          'Gerar 11 n'#250'meros distintos')
      end
      object N6Modo2Qtd: TRadioButton
        Left = 213
        Top = 173
        Width = 19
        Height = 17
        Caption = '.'
        TabOrder = 3
      end
      object cb_N6Modo3Qtd: TComboBox
        Left = 437
        Top = 170
        Width = 174
        Height = 24
        Style = csDropDownList
        Color = clSilver
        DropDownCount = 15
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 4
        Text = 'Gerar 9 n'#250'meros distintos'
        Items.Strings = (
          'Gerar 9 n'#250'meros distintos'
          'Gerar 10 n'#250'meroS distintos')
      end
      object N6Modo3Qtd: TRadioButton
        Left = 421
        Top = 173
        Width = 19
        Height = 17
        Caption = '.'
        TabOrder = 5
      end
      object cb_N6Modo1Forma: TComboBox
        Left = 7
        Top = 139
        Width = 147
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
        Text = 'SIMPLES'
        Items.Strings = (
          'SIMPLES'
          'TODAS')
      end
      object cb_N6Modo2Forma: TComboBox
        Left = 215
        Top = 137
        Width = 147
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
        Text = 'SIMPLES'
        Items.Strings = (
          'SIMPLES'
          'TODAS')
      end
    end
    object bbt_Numero6Modo1: TBitBtn
      Left = 262
      Top = 55
      Width = 84
      Height = 27
      Caption = 'N'#186' 6 modo1'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = bbt_Numero6Modo1Click
    end
    object Memo1: TMemo
      Left = 633
      Top = 55
      Width = 185
      Height = 310
      Lines.Strings = (
        'N'#250'mero 6 Modo 1'
        '8 simples:'
        ' 2+2+2+1+1'
        '9 simples:'
        ' 2+3+2+1+1'
        ' 2+2+3+1+1'
        '2+2+2+2+1'
        '2+2+2+1+2'
        '10 simples:'
        ' 2+3+2+2+1'
        ' 2+3+2+1+2'
        ' 2+2+3+2+1'
        ' 2+2+3+2+1'
        ' 2+2+2+2+2'
        '11 simples:'
        ' 2+3+3+2+1'
        ' 2+3+3+1+2'
        ' 2+3+2+2+2'
        ' 2+2+3+2+2'
        '12 simples:'
        ' 2+3+3+2+2')
      TabOrder = 10
    end
    object bbt_Numero8: TBitBtn
      Left = 352
      Top = 55
      Width = 45
      Height = 27
      Caption = 'N'#186' 8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = bbt_Numero8Click
    end
  end
end
