object _F_Gerador_ResDiv_3jg18: T_F_Gerador_ResDiv_3jg18
  Left = 2
  Top = 124
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '_F_Gerador_ResDiv_3jg18'
  ClientHeight = 704
  ClientWidth = 1783
  Color = 1319707
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 110
  TextHeight = 17
  object SCBX_Gabarito: TScrollBox
    Left = 0
    Top = 46
    Width = 1783
    Height = 219
    HorzScrollBar.Range = 1337
    VertScrollBar.Range = 181
    VertScrollBar.Visible = False
    Align = alTop
    AutoScroll = False
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Color = 3685687
    ParentColor = False
    TabOrder = 7
    object Label7: TLabel
      Left = 10
      Top = 8
      Width = 207
      Height = 19
      Caption = 'N'#218'MEROS DE BASE C/ 18'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14017159
      Font.Height = -17
      Font.Name = 'Arial Rounded MT'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object STGR_Base: TStringGrid
      Left = 10
      Top = 31
      Width = 747
      Height = 171
      TabStop = False
      BorderStyle = bsNone
      Color = 14017159
      ColCount = 20
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      FixedCols = 2
      RowCount = 2
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 0
    end
    object PA_Fixos: TPanel
      Left = 1433
      Top = 2
      Width = 109
      Height = 52
      BevelOuter = bvNone
      Color = 11451444
      ParentBackground = False
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 0
        Top = 2
        Width = 111
        Height = 16
        Caption = 'N'#186'  Fixo - 7Im/8Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_7i8p: TEdit
        Left = 19
        Top = 21
        Width = 30
        Height = 22
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_7i8p: TEdit
        Left = 57
        Top = 21
        Width = 31
        Height = 22
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
    object Panel6: TPanel
      Left = 1420
      Top = 56
      Width = 122
      Height = 51
      BevelOuter = bvNone
      Color = 11451444
      ParentBackground = False
      TabOrder = 2
      object Label6: TLabel
        Left = 7
        Top = 2
        Width = 111
        Height = 16
        Caption = 'N'#186'  Fixo - 8Im/7Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_8i7p: TEdit
        Left = 8
        Top = 21
        Width = 30
        Height = 22
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_8i7p: TEdit
        Left = 46
        Top = 21
        Width = 30
        Height = 22
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
      object ED_FIXOS_03_8i7p: TEdit
        Left = 85
        Top = 21
        Width = 30
        Height = 22
        Color = 14017159
        TabOrder = 2
        Text = '00'
      end
    end
    object Panel7: TPanel
      Left = 1433
      Top = 109
      Width = 109
      Height = 51
      BevelOuter = bvNone
      Color = 11451444
      ParentBackground = False
      TabOrder = 3
      Visible = False
      object Label8: TLabel
        Left = 0
        Top = 2
        Width = 111
        Height = 16
        Caption = 'N'#186'  Fixo - 6Im/9Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_6i9p: TEdit
        Left = 19
        Top = 21
        Width = 30
        Height = 22
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_6i9p: TEdit
        Left = 57
        Top = 21
        Width = 31
        Height = 22
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
    object Panel8: TPanel
      Left = 1433
      Top = 163
      Width = 109
      Height = 51
      BevelOuter = bvNone
      Color = 11451444
      ParentBackground = False
      TabOrder = 4
      Visible = False
      object Label9: TLabel
        Left = 0
        Top = 2
        Width = 111
        Height = 16
        Caption = 'N'#186'  Fixo - 9Im/6Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_9i6p: TEdit
        Left = 19
        Top = 21
        Width = 30
        Height = 22
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_9i6p: TEdit
        Left = 57
        Top = 21
        Width = 31
        Height = 22
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
    object STGR_Base07: TStringGrid
      Left = 771
      Top = 30
      Width = 366
      Height = 171
      TabStop = False
      BorderStyle = bsNone
      Color = 14017159
      ColCount = 9
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      FixedCols = 2
      RowCount = 2
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 5
      RowHeights = (
        23
        23)
    end
  end
  object PA_Resultado: TPanel
    Left = 0
    Top = 265
    Width = 1783
    Height = 439
    Align = alClient
    Color = 1319707
    ParentBackground = False
    TabOrder = 4
    object PA_ExecutarFiltro: TPanel
      Left = 1
      Top = 48
      Width = 150
      Height = 390
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      object BBT_PrepararMenu: TBitBtn
        Left = 7
        Top = 3
        Width = 139
        Height = 46
        Caption = 'PREPARAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BBT_PrepararMenuClick
      end
      object BBT_GerarMenu: TBitBtn
        Left = 7
        Top = 56
        Width = 139
        Height = 37
        Caption = 'Gerar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BBT_GerarMenuClick
      end
      object BBT_CancelarSair: TBitBtn
        Left = 6
        Top = 103
        Width = 141
        Height = 71
        Caption = 'CANCELAR'#13#10'&& SAIR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -17
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
      Width = 1781
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object LA_Gerar_Comb: TLabel
        Left = 1448
        Top = 5
        Width = 10
        Height = 17
        Caption = '#'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12383743
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 85
        Top = 13
        Width = 55
        Height = 17
        Caption = 'Etapa 01'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object PGBR_Etapa_01: TProgressBar
        Left = 151
        Top = 10
        Width = 1233
        Height = 23
        TabOrder = 0
      end
    end
    object SCBX_dados: TScrollBox
      Left = 151
      Top = 48
      Width = 1631
      Height = 390
      HorzScrollBar.Range = 4300
      Align = alClient
      AutoScroll = False
      TabOrder = 4
      DesignSize = (
        1627
        367)
      object Bevel1: TBevel
        Left = -1
        Top = 18
        Width = 3041
        Height = 21
        Shape = bsTopLine
      end
      object Label3: TLabel
        Left = 281
        Top = 3
        Width = 68
        Height = 19
        Caption = 'Etapa 01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -17
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object STGR_Etapa1_11: TStringGrid
        Left = 6
        Top = 28
        Width = 503
        Height = 272
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
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        ExplicitHeight = 295
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
      object STGR_Etapa02_10: TStringGrid
        Left = 1948
        Top = 296
        Width = 420
        Height = 21
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
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
      object STGR_Etapa01_7a: TStringGrid
        Left = 514
        Top = 28
        Width = 373
        Height = 272
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 9
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        ExplicitHeight = 295
      end
      object STGR_Etapa1_7b: TStringGrid
        Left = 888
        Top = 28
        Width = 372
        Height = 272
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12310978
        ColCount = 9
        Ctl3D = True
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = 10525846
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        ExplicitHeight = 295
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
      object STGR_Etapa01_15: TStringGrid
        Left = 3058
        Top = 18
        Width = 731
        Height = 279
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
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        ExplicitHeight = 302
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
      object STGR_Etapa01_9de11: TStringGrid
        Left = 1351
        Top = 28
        Width = 430
        Height = 272
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        ColCount = 11
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        ExplicitHeight = 295
      end
      object STGR_Etapa01_2de11: TStringGrid
        Left = 1782
        Top = 28
        Width = 206
        Height = 272
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12312831
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        ExplicitHeight = 295
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
      object STGR_Etapa01_2de7a: TStringGrid
        Left = 2004
        Top = 28
        Width = 206
        Height = 272
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        ExplicitHeight = 295
      end
      object STGR_Etapa01_5de7a: TStringGrid
        Left = 2210
        Top = 28
        Width = 304
        Height = 272
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12312831
        ColCount = 7
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        ExplicitHeight = 295
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
      object STGR_Etapa01_4de7b: TStringGrid
        Left = 2527
        Top = 28
        Width = 283
        Height = 272
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        ColCount = 6
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        ExplicitHeight = 295
      end
      object STGR_Etapa01_3de7b: TStringGrid
        Left = 2810
        Top = 28
        Width = 229
        Height = 272
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 12312831
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        ExplicitHeight = 295
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
    object STGR_Todos_Numeros: TStringGrid
      Left = 612
      Top = 367
      Width = 816
      Height = 52
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
      Left = 56
      Top = 353
      Width = 420
      Height = 63
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
      Font.Height = -14
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
    Left = 1628
    Top = 465
    Width = 236
    Height = 219
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
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
    Width = 1783
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    Color = 4541511
    ParentBackground = False
    TabOrder = 3
    object LA_Titulo: TLabel
      Left = 8
      Top = 5
      Width = 891
      Height = 38
      Caption = 'GERADOR Resultados Diversos a Partir de 3 Jogos de 18'
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13034068
      Font.Height = -33
      Font.Name = 'Arial Rounded MT'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BBT_Close: TImage
      Left = 1508
      Top = 1
      Width = 34
      Height = 35
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
      Left = 1037
      Top = 6
      Width = 107
      Height = 33
      Caption = 'RECOME'#199'AR'
      TabOrder = 0
      Visible = False
    end
  end
  object PA_RemoveuRepetidos: TPanel
    Left = 1488
    Top = 155
    Width = 380
    Height = 520
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 7234560
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Arial Rounded MT'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label45: TLabel
      Left = 9
      Top = 9
      Width = 230
      Height = 63
      Align = alTop
      Alignment = taCenter
      Caption = 'GERA'#199#195'O, ORDENA'#199#195'O E '#13'REMO'#199#195'O DE REPETIDOS'#13' ENCERRADA:'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -18
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label46: TLabel
      Left = 22
      Top = 307
      Width = 244
      Height = 21
      Caption = 'Total de dados processados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 22
      Top = 363
      Width = 206
      Height = 21
      Caption = 'Total de dados gerados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_rTOTAL_COMB: TLabel
      Left = 22
      Top = 329
      Width = 110
      Height = 21
      Caption = '0000000000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_rQTD_COMB: TLabel
      Left = 22
      Top = 384
      Width = 44
      Height = 21
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label58: TLabel
      Left = 10
      Top = 120
      Width = 239
      Height = 21
      Caption = '1. In'#237'cio do Processamento:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_gINICIO_100REPET: TLabel
      Left = 144
      Top = 138
      Width = 203
      Height = 21
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label60: TLabel
      Left = 9
      Top = 164
      Width = 264
      Height = 42
      Caption = '2. T'#233'rmino do Processamento'#13'&& In'#237'cio remo'#231#227'o de repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label49: TLabel
      Left = 9
      Top = 229
      Width = 311
      Height = 42
      Caption = '3. Recupera'#231#227'o dos dados '#13'&& T'#233'rmino da remo'#231#227'o de repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_gFIM_100REPET: TLabel
      Left = 144
      Top = 267
      Width = 203
      Height = 21
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_gFIM_GERAR: TLabel
      Left = 144
      Top = 202
      Width = 203
      Height = 21
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_rTOTAL_100REPET: TLabel
      Left = 19
      Top = 435
      Width = 48
      Height = 23
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label50: TLabel
      Left = 19
      Top = 415
      Width = 283
      Height = 21
      Caption = 'Total de dados sem os repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BBT_RemoveuRepetidos: TBitBtn
      Left = 218
      Top = 462
      Width = 143
      Height = 43
      Caption = 'OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BBT_RemoveuRepetidosClick
    end
    object BBT_BlocoNotas: TBitBtn
      Left = 13
      Top = 463
      Width = 199
      Height = 41
      Caption = 'Bloco de Notas'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_BlocoNotasClick
    end
  end
  object PA_Inicial: TPanel
    Left = 1500
    Top = 34
    Width = 297
    Height = 366
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 4932667
    ParentBackground = False
    TabOrder = 1
    object Label55: TLabel
      Left = 32
      Top = 9
      Width = 206
      Height = 54
      Alignment = taCenter
      Caption = 'Result Div. a Partir'#13'de 3 Jogos de 18'
      Color = 4179168
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14017159
      Font.Height = -23
      Font.Name = 'Arial Rounded MT'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BTN_NovaSimulacao: TButton
      Left = 26
      Top = 64
      Width = 241
      Height = 40
      Caption = 'NOVO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -17
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BTN_NovaSimulacaoClick
    end
    object BTN_Reajustar: TButton
      Left = 26
      Top = 108
      Width = 241
      Height = 41
      Caption = 'REAJUSTAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -17
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BTN_ReajustarClick
    end
    object BTN_Sair: TButton
      Left = 26
      Top = 239
      Width = 241
      Height = 44
      Caption = 'SAIR / FECHAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -17
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BTN_SairClick
    end
    object BBT_Cancelar: TBitBtn
      Left = 28
      Top = 307
      Width = 240
      Height = 44
      Caption = 'CANCELAR && SAIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_CancelarClick
    end
    object BTN_BlocoDeNotas1: TButton
      Left = 26
      Top = 152
      Width = 241
      Height = 41
      Caption = 'BLOCO DE NOTAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -17
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBT_BlocoNotasClick
    end
    object btn_Carregar: TButton
      Left = 26
      Top = 196
      Width = 241
      Height = 40
      Caption = 'CARREGAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -17
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btn_CarregarClick
    end
  end
  object PA_Gerar: TPanel
    Left = 1377
    Top = 241
    Width = 377
    Height = 442
    BevelWidth = 2
    BorderWidth = 1
    Color = 4932667
    ParentBackground = False
    TabOrder = 5
    object LA_Tipo: TLabel
      Left = 9
      Top = 54
      Width = 113
      Height = 17
      Caption = 'Soma 17 n'#250'meros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 10
      Top = 99
      Width = 113
      Height = 17
      Caption = 'Soma 16 n'#250'meros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 9
      Top = 168
      Width = 113
      Height = 17
      Caption = 'Soma 06 n'#250'meros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 9
      Top = 213
      Width = 113
      Height = 17
      Caption = 'Soma 05 n'#250'meros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 9
      Top = 259
      Width = 247
      Height = 17
      Caption = 'Soma 04 n'#250'meros (2de2, 1de5 e 1de 4)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 9
      Top = 304
      Width = 247
      Height = 17
      Caption = 'Soma 04 n'#250'meros (1de2, 2de2 e 1de 4)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 8
      Top = 348
      Width = 113
      Height = 17
      Caption = 'Soma 03 n'#250'meros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 371
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      ParentBackground = False
      TabOrder = 0
      object Label63: TLabel
        Left = 54
        Top = 7
        Width = 245
        Height = 38
        Caption = 'FILTRO GERAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14017159
        Font.Height = -33
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BBT_Etapa01: TBitBtn
      Left = 83
      Top = 388
      Width = 155
      Height = 21
      Caption = 'Etapa 01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = BBT_Etapa01Click
    end
    object BBT_Gerar_Sair: TBitBtn
      Left = 6
      Top = 404
      Width = 167
      Height = 34
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_Gerar_SairClick
    end
    object BBT_OK: TBitBtn
      Left = 204
      Top = 403
      Width = 170
      Height = 36
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_OKClick
    end
    object CB_Classificacao17: TComboBox
      Left = 8
      Top = 72
      Width = 356
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 2
      ParentFont = False
      TabOrder = 4
      Text = 'C - 219 a 223'
      Items.Strings = (
        'A - 221'
        'B - 220 a 222'
        'C - 219 a 223'
        'D - 218 a 224'
        'E - 216 a 226')
    end
    object CB_Classificacao16: TComboBox
      Left = 8
      Top = 117
      Width = 356
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 5
      Text = 'A - 208'
      Items.Strings = (
        'A - 208'
        'B - 207 a 209'
        'C - 206 a 210'
        'D - 205 a 211'
        'E - 203 a 213')
    end
    object CB_Classificacao06: TComboBox
      Left = 8
      Top = 187
      Width = 356
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 6
      Text = 'A - 78'
      Items.Strings = (
        'A - 78'
        'B - 77 a 79'
        'C - 76 a 79'
        'D - 75 a 80'
        'E - 73 a 83')
    end
    object CB_Classificacao05: TComboBox
      Left = 8
      Top = 231
      Width = 356
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 1
      ParentFont = False
      TabOrder = 7
      Text = 'B - 64 a 66'
      Items.Strings = (
        'A - 65'
        'B - 64 a 66'
        'C - 63 a 67'
        'D - 62 a 68'
        'E - 60 a 70')
    end
    object CB_Classificacao04a: TComboBox
      Left = 8
      Top = 277
      Width = 356
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 4
      ParentFont = False
      TabOrder = 8
      Text = 'E - 47 a 57'
      Items.Strings = (
        'A - 52'
        'B - 51 a 53'
        'C - 50 a 54'
        'D - 49 a 55'
        'E - 47 a 57')
    end
    object CB_Classificacao04b: TComboBox
      Left = 8
      Top = 322
      Width = 356
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 9
      Text = 'A - 52'
      Items.Strings = (
        'A - 52'
        'B - 51 a 53'
        'C - 50 a 54'
        'D - 49 a 55'
        'E - 47 a 57')
    end
    object CB_Classificacao03: TComboBox
      Left = 7
      Top = 367
      Width = 356
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 10
      Text = 'A - 39'
      Items.Strings = (
        'A - 39'
        'B - 38 a 40'
        'C - 37 a 41'
        'D - 36 a 42'
        'E - 34 a 44')
    end
  end
  object PA_Preparar: TPanel
    Left = 890
    Top = 91
    Width = 427
    Height = 157
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 5199697
    ParentBackground = False
    TabOrder = 6
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 422
      Height = 54
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        Left = 133
        Top = 9
        Width = 167
        Height = 36
        Caption = 'PREPARAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14017159
        Font.Height = -31
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BBT_Preparar1: TBitBtn
      Left = 264
      Top = 117
      Width = 160
      Height = 35
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_Preparar1Click
    end
    object BBT_Gerar_Voltar: TBitBtn
      Left = 5
      Top = 117
      Width = 160
      Height = 35
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_Gerar_VoltarClick
    end
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\CXLOTOFACIL\COMBINACOES_15.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 1038
    Top = 6
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultAction = TACommitRetaining
    Left = 1038
    Top = 30
  end
  object IBQ_Combinacoes: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT FIRST 10 * FROM COMBINACOES_15')
    Left = 1038
    Top = 54
  end
  object IBQ_Combin_02: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT FIRST 10 * FROM COMBINACOES_15')
    Left = 1038
    Top = 84
  end
end
