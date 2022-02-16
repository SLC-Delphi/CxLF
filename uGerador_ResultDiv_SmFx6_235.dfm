object _F_Gerador_ResDiv_SmFx6: T_F_Gerador_ResDiv_SmFx6
  Left = 2
  Top = 124
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '_F_Gerador_ResDiv_SmFx6'
  ClientHeight = 754
  ClientWidth = 1910
  Color = 5661184
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 110
  TextHeight = 16
  object SCBX_Gabarito: TScrollBox
    Left = 0
    Top = 49
    Width = 1910
    Height = 235
    HorzScrollBar.Range = 1432
    VertScrollBar.Range = 194
    VertScrollBar.Visible = False
    Align = alTop
    AutoScroll = False
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Color = 5662294
    ParentColor = False
    TabOrder = 7
    object Label7: TLabel
      Left = 11
      Top = 9
      Width = 256
      Height = 22
      Caption = 'N'#218'MEROS DE BASE C/ 15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object STGR_Base: TStringGrid
      Left = 11
      Top = 33
      Width = 659
      Height = 184
      TabStop = False
      BorderStyle = bsNone
      Color = 14017159
      ColCount = 17
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
    object STGR_Base10: TStringGrid
      Left = 675
      Top = 32
      Width = 487
      Height = 186
      TabStop = False
      BorderStyle = bsNone
      Color = 12312831
      ColCount = 12
      Ctl3D = False
      DefaultColWidth = 31
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      FixedCols = 2
      RowCount = 2
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 1
    end
    object PA_Fixos: TPanel
      Left = 1535
      Top = 2
      Width = 117
      Height = 55
      BevelOuter = bvNone
      Color = 11451444
      ParentBackground = False
      TabOrder = 2
      Visible = False
      object Label1: TLabel
        Left = 0
        Top = 2
        Width = 116
        Height = 16
        Caption = 'N'#186'  Fixo - 7Im/8Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_7i8p: TEdit
        Left = 21
        Top = 22
        Width = 32
        Height = 23
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_7i8p: TEdit
        Left = 62
        Top = 22
        Width = 32
        Height = 23
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
    object Panel6: TPanel
      Left = 1522
      Top = 60
      Width = 130
      Height = 55
      BevelOuter = bvNone
      Color = 11451444
      ParentBackground = False
      TabOrder = 3
      object Label6: TLabel
        Left = 7
        Top = 2
        Width = 116
        Height = 16
        Caption = 'N'#186'  Fixo - 8Im/7Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_8i7p: TEdit
        Left = 8
        Top = 22
        Width = 32
        Height = 23
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_8i7p: TEdit
        Left = 49
        Top = 22
        Width = 32
        Height = 23
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
      object ED_FIXOS_03_8i7p: TEdit
        Left = 91
        Top = 22
        Width = 32
        Height = 23
        Color = 14017159
        TabOrder = 2
        Text = '00'
      end
    end
    object Panel7: TPanel
      Left = 1535
      Top = 117
      Width = 117
      Height = 55
      BevelOuter = bvNone
      Color = 11451444
      ParentBackground = False
      TabOrder = 4
      Visible = False
      object Label8: TLabel
        Left = 0
        Top = 2
        Width = 116
        Height = 16
        Caption = 'N'#186'  Fixo - 6Im/9Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_6i9p: TEdit
        Left = 21
        Top = 22
        Width = 32
        Height = 23
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_6i9p: TEdit
        Left = 62
        Top = 22
        Width = 32
        Height = 23
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
    object Panel8: TPanel
      Left = 1535
      Top = 174
      Width = 117
      Height = 55
      BevelOuter = bvNone
      Color = 11451444
      ParentBackground = False
      TabOrder = 5
      Visible = False
      object Label9: TLabel
        Left = 0
        Top = 2
        Width = 116
        Height = 16
        Caption = 'N'#186'  Fixo - 9Im/6Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_9i6p: TEdit
        Left = 21
        Top = 22
        Width = 32
        Height = 23
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_9i6p: TEdit
        Left = 62
        Top = 22
        Width = 32
        Height = 23
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
    object STGR_Filtro33de5: TStringGrid
      Left = 1165
      Top = 32
      Width = 243
      Height = 186
      TabStop = False
      BorderStyle = bsNone
      Color = 14018233
      ColCount = 6
      Ctl3D = False
      DefaultColWidth = 28
      DefaultRowHeight = 23
      FixedColor = clTeal
      RowCount = 2
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 6
    end
    object STGR_fxcol02: TStringGrid
      Left = 1467
      Top = 31
      Width = 57
      Height = 190
      TabStop = False
      BorderStyle = bsNone
      Color = 14018233
      ColCount = 1
      Ctl3D = False
      DefaultColWidth = 28
      DefaultRowHeight = 23
      FixedColor = clTeal
      FixedCols = 0
      RowCount = 8
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 8
    end
    object STGR_fxcol03: TStringGrid
      Left = 1525
      Top = 31
      Width = 53
      Height = 190
      TabStop = False
      BorderStyle = bsNone
      Color = 14018233
      ColCount = 1
      Ctl3D = False
      DefaultColWidth = 28
      DefaultRowHeight = 23
      FixedColor = clTeal
      FixedCols = 0
      RowCount = 7
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 9
    end
    object STGR_fxcol04: TStringGrid
      Left = 1579
      Top = 31
      Width = 53
      Height = 190
      TabStop = False
      BorderStyle = bsNone
      Color = 14018233
      ColCount = 1
      Ctl3D = False
      DefaultColWidth = 28
      DefaultRowHeight = 23
      FixedColor = clTeal
      FixedCols = 0
      RowCount = 7
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 10
    end
    object STGR_fxcol01: TStringGrid
      Left = 1413
      Top = 31
      Width = 53
      Height = 190
      TabStop = False
      BorderStyle = bsNone
      Color = 14018233
      ColCount = 1
      Ctl3D = False
      DefaultColWidth = 28
      DefaultRowHeight = 23
      FixedColor = clTeal
      FixedCols = 0
      RowCount = 7
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 7
    end
  end
  object PA_Resultado: TPanel
    Left = 0
    Top = 284
    Width = 1910
    Height = 470
    Align = alClient
    Color = 4347202
    ParentBackground = False
    TabOrder = 4
    object PA_ExecutarFiltro: TPanel
      Left = 1
      Top = 52
      Width = 161
      Height = 417
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      object BBT_PrepararMenu: TBitBtn
        Left = 7
        Top = 3
        Width = 149
        Height = 50
        Caption = 'PREPARAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -18
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BBT_PrepararMenuClick
      end
      object BBT_GerarMenu: TBitBtn
        Left = 7
        Top = 61
        Width = 149
        Height = 39
        Caption = 'Gerar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -22
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BBT_GerarMenuClick
      end
      object BBT_CancelarSair: TBitBtn
        Left = 6
        Top = 110
        Width = 151
        Height = 77
        Caption = 'CANCELAR'#13#10'&& SAIR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -18
        Font.Name = 'Verdana'
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
      Width = 1908
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object LA_Gerar_Comb: TLabel
        Left = 1551
        Top = 5
        Width = 8
        Height = 17
        Caption = '#'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12383743
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object LA_Total_Comb: TLabel
        Left = 1502
        Top = 5
        Width = 41
        Height = 17
        Caption = 'Gerar:'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12383743
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 15
        Top = 5
        Width = 202
        Height = 17
        Caption = 'Etapa 01: (Passos 01, 02 e 03)'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12383743
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 275
        Top = 5
        Width = 178
        Height = 17
        Caption = 'Etapa 02: (Passos 04 e 05)'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12383743
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 932
        Top = 5
        Width = 62
        Height = 17
        Caption = 'Etapa 03:'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12383743
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 1228
        Top = 5
        Width = 62
        Height = 17
        Caption = 'Etapa 04:'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12383743
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object PGBR_Etapa_01: TProgressBar
        Left = 10
        Top = 25
        Width = 259
        Height = 25
        TabOrder = 0
      end
      object PGBR_Etapa_02: TProgressBar
        Left = 273
        Top = 25
        Width = 651
        Height = 25
        TabOrder = 1
      end
      object PGBR_Etapa_03: TProgressBar
        Left = 929
        Top = 25
        Width = 290
        Height = 25
        TabOrder = 2
      end
      object PGBR_Etapa_04: TProgressBar
        Left = 1224
        Top = 25
        Width = 338
        Height = 25
        TabOrder = 3
      end
    end
    object SCBX_dados: TScrollBox
      Left = 162
      Top = 56
      Width = 1533
      Height = 407
      HorzScrollBar.Range = 2383
      AutoScroll = False
      TabOrder = 4
      object Bevel1: TBevel
        Left = -1
        Top = 19
        Width = 1398
        Height = 22
        Shape = bsTopLine
      end
      object Label3: TLabel
        Left = 300
        Top = 3
        Width = 89
        Height = 22
        Caption = 'Etapa 01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -18
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object STGR_Etapa1_02de15: TStringGrid
        Left = 571
        Top = 30
        Width = 207
        Height = 350
        TabStop = False
        Color = 12312831
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
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
      object STGR_Etapa01_02de10: TStringGrid
        Left = 1220
        Top = 30
        Width = 176
        Height = 350
        TabStop = False
        Color = 14018233
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = clMedGray
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
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
      object STGR_Comb15_final: TStringGrid
        Left = 4246
        Top = 23
        Width = 770
        Height = 357
        TabStop = False
        Align = alCustom
        Color = 14017159
        ColCount = 17
        DefaultColWidth = 31
        DefaultRowHeight = 27
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentFont = False
        TabOrder = 0
      end
      object STGR_Etapa02_10: TStringGrid
        Left = 2087
        Top = 316
        Width = 451
        Height = 24
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
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
      object STGR_Etapa01_13de15: TStringGrid
        Left = 2
        Top = 30
        Width = 565
        Height = 350
        TabStop = False
        Color = 14017159
        ColCount = 15
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object STGR_Etapa1_08de10: TStringGrid
        Left = 801
        Top = 30
        Width = 415
        Height = 350
        TabStop = False
        Color = 12312831
        ColCount = 10
        Ctl3D = True
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object STGR_Etapa02_15: TStringGrid
        Left = 1419
        Top = 30
        Width = 901
        Height = 350
        TabStop = False
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
        Font.Height = -18
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
    end
    object STGR_Todos_Numeros: TStringGrid
      Left = 655
      Top = 393
      Width = 875
      Height = 56
      Color = 16119214
      ColCount = 26
      DefaultColWidth = 26
      DefaultRowHeight = 20
      RowCount = 2
      FixedRows = 0
      TabOrder = 1
      Visible = False
    end
    object STGR_Comb15: TStringGrid
      Left = 6
      Top = 385
      Width = 628
      Height = 68
      TabStop = False
      Align = alCustom
      Color = 14017159
      ColCount = 16
      DefaultColWidth = 31
      DefaultRowHeight = 27
      FixedColor = clMedGray
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
        31
        31
        31
        31
        31
        27)
    end
  end
  object MEM_Combinacoes_Todas: TMemo
    Left = 1745
    Top = 498
    Width = 252
    Height = 235
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
    Width = 1910
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = 1522721
    ParentBackground = False
    TabOrder = 3
    object LA_Titulo: TLabel
      Left = 8
      Top = 5
      Width = 1477
      Height = 38
      Caption = 
        'GERADOR Resultados Diversos a Partir das Somas Fixas 6 - cj235/c' +
        'j162 modelo 2'
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11468799
      Font.Height = -32
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BBT_Close: TImage
      Left = 1616
      Top = 1
      Width = 36
      Height = 37
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
      Left = 1111
      Top = 6
      Width = 114
      Height = 35
      Caption = 'RECOME'#199'AR'
      TabOrder = 0
      Visible = False
    end
  end
  object PA_RemoveuRepetidos: TPanel
    Left = 1760
    Top = 97
    Width = 407
    Height = 557
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 7234560
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label44: TLabel
      Left = 9
      Top = 9
      Width = 394
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = 'Result Div. a Partir das Somas Fixas'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label45: TLabel
      Left = 9
      Top = 36
      Width = 257
      Height = 69
      Align = alTop
      Alignment = taCenter
      Caption = 'GERA'#199#195'O, ORDENA'#199#195'O E '#13'REMO'#199#195'O DE REPETIDOS'#13' ENCERRADA:'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label46: TLabel
      Left = 23
      Top = 329
      Width = 253
      Height = 22
      Caption = 'Total de dados processados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 23
      Top = 390
      Width = 214
      Height = 22
      Caption = 'Total de dados gerados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_rTOTAL_COMB: TLabel
      Left = 23
      Top = 353
      Width = 110
      Height = 22
      Caption = '0000000000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_rQTD_COMB: TLabel
      Left = 23
      Top = 411
      Width = 44
      Height = 22
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label58: TLabel
      Left = 11
      Top = 128
      Width = 252
      Height = 22
      Caption = '1. In'#237'cio do Processamento:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_gINICIO_100REPET: TLabel
      Left = 155
      Top = 148
      Width = 206
      Height = 22
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label60: TLabel
      Left = 10
      Top = 175
      Width = 278
      Height = 44
      Caption = '2. T'#233'rmino do Processamento'#13'&& In'#237'cio remo'#231#227'o de repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label49: TLabel
      Left = 10
      Top = 245
      Width = 328
      Height = 44
      Caption = '3. Recupera'#231#227'o dos dados '#13'&& T'#233'rmino da remo'#231#227'o de repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_gFIM_100REPET: TLabel
      Left = 155
      Top = 286
      Width = 206
      Height = 22
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_gFIM_GERAR: TLabel
      Left = 155
      Top = 217
      Width = 206
      Height = 22
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_rTOTAL_100REPET: TLabel
      Left = 21
      Top = 466
      Width = 56
      Height = 27
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label50: TLabel
      Left = 21
      Top = 445
      Width = 293
      Height = 22
      Caption = 'Total de dados sem os repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BBT_RemoveuRepetidos: TBitBtn
      Left = 234
      Top = 495
      Width = 153
      Height = 46
      Caption = 'OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BBT_RemoveuRepetidosClick
    end
    object BBT_BlocoNotas: TBitBtn
      Left = 14
      Top = 496
      Width = 213
      Height = 44
      Caption = 'Bloco de Notas'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_BlocoNotasClick
    end
  end
  object PA_Inicial: TPanel
    Left = 1573
    Top = 22
    Width = 318
    Height = 392
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 7234560
    ParentBackground = False
    TabOrder = 1
    object Label55: TLabel
      Left = 38
      Top = 14
      Width = 237
      Height = 52
      Alignment = taCenter
      Caption = 'Result Div. a Partir'#13'das Somas Fixas 6'
      Color = 4179168
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -22
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BTN_NovaSimulacao: TButton
      Left = 29
      Top = 69
      Width = 257
      Height = 43
      Caption = 'NOVO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BTN_NovaSimulacaoClick
    end
    object BTN_Reajustar: TButton
      Left = 29
      Top = 116
      Width = 257
      Height = 43
      Caption = 'REAJUSTAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BTN_ReajustarClick
    end
    object BTN_Sair: TButton
      Left = 29
      Top = 257
      Width = 257
      Height = 47
      Caption = 'SAIR / FECHAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BTN_SairClick
    end
    object BBT_Cancelar: TBitBtn
      Left = 30
      Top = 329
      Width = 258
      Height = 47
      Caption = 'CANCELAR && SAIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_CancelarClick
    end
    object BTN_BlocoDeNotas1: TButton
      Left = 29
      Top = 163
      Width = 257
      Height = 43
      Caption = 'BLOCO DE NOTAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBT_BlocoNotasClick
    end
    object btn_Carregar: TButton
      Left = 29
      Top = 210
      Width = 257
      Height = 43
      Caption = 'CARREGAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btn_CarregarClick
    end
  end
  object PA_Gerar: TPanel
    Left = 1504
    Top = 286
    Width = 388
    Height = 395
    BevelWidth = 2
    BorderWidth = 1
    Color = 7234560
    ParentBackground = False
    TabOrder = 5
    object LA_Tipo: TLabel
      Left = 10
      Top = 81
      Width = 146
      Height = 17
      Caption = 'Etapa 1: Classifica'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 13
      Top = 143
      Width = 233
      Height = 17
      Caption = 'Etapa 2: Funil - 5 colunas das de 15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 14
      Top = 195
      Width = 233
      Height = 17
      Caption = 'Etapa 2: Funil - 5 colunas das de 10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 16
      Top = 258
      Width = 354
      Height = 17
      Caption = 'Etapa 3: Faixa de soma para 12 n'#250'meros dentre os 15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 17
      Top = 305
      Width = 346
      Height = 17
      Caption = 'Etapa 3: Faixa de soma para 7 n'#250'meros dentre os 10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 382
      Height = 54
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 381
      object Label63: TLabel
        Left = 42
        Top = 8
        Width = 266
        Height = 38
        Caption = 'FILTRO GERAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12383743
        Font.Height = -32
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BBT_Etapa01: TBitBtn
      Left = 7
      Top = 56
      Width = 88
      Height = 27
      Caption = 'Etapa 01'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_Etapa01Click
    end
    object BBT_Gerar_Sair: TBitBtn
      Left = 10
      Top = 355
      Width = 171
      Height = 36
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_Gerar_SairClick
    end
    object BitBtn1: TBitBtn
      Left = 214
      Top = 356
      Width = 171
      Height = 36
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BBT_Etapa02: TBitBtn
      Left = 99
      Top = 55
      Width = 88
      Height = 28
      Caption = 'Etapa 02'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBT_Etapa02Click
    end
    object BBT_Etapa03: TBitBtn
      Left = 189
      Top = 55
      Width = 88
      Height = 28
      Caption = 'Etapa 03'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BBT_Etapa03Click
    end
    object CB_Classificacao: TComboBox
      Left = 10
      Top = 101
      Width = 313
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 6
      Text = 'A - 286'
      Items.Strings = (
        'A - 286'
        'B - 285 a 287')
    end
    object CB_Funil_05de15: TComboBox
      Left = 13
      Top = 163
      Width = 312
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = 'A - 4 coincid'#234'ncias exatas'
      Items.Strings = (
        'A - 4 coincid'#234'ncias exatas'
        'B - 5 coincid'#234'ncias exatas'
        'C - 4 ou 5 coincid'#234'ncias')
    end
    object CB_Funil_05de10: TComboBox
      Left = 14
      Top = 214
      Width = 313
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 8
      Text = 'A - 3 coincid'#234'ncias exatas'
      Items.Strings = (
        'A - 3 coincid'#234'ncias exatas'
        'B - 4 coincid'#234'ncias exatas'
        'C - 5 coincid'#234'ncias exatas'
        'D - 3 ou 4 coincid'#234'ncias'
        'E - 4 ou 5 coincid'#234'ncias'
        'F - 3, 4 ou 5 coincid'#234'ncias')
    end
    object CB_Etapa3_01: TComboBox
      Left = 16
      Top = 276
      Width = 313
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 9
      Text = 'A - 156'
      Items.Strings = (
        'A - 156'
        'B - 155 ou 156'
        'C -156 ou 157'
        'D - 155 a 157')
    end
    object CB_Etapa3_02: TComboBox
      Left = 17
      Top = 323
      Width = 313
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 10
      Text = 'A - 91'
      Items.Strings = (
        'A - 91'
        'B - 90 ou 91'
        'C -91 ou 92'
        'D - 90 a 92')
    end
    object BBT_Etapa04: TBitBtn
      Left = 280
      Top = 55
      Width = 88
      Height = 28
      Caption = 'Etapa 04'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = BBT_Etapa04Click
    end
  end
  object PA_Preparar: TPanel
    Left = 1187
    Top = 118
    Width = 457
    Height = 167
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 6522214
    ParentBackground = False
    TabOrder = 6
    object Label12: TLabel
      Left = 147
      Top = 65
      Width = 162
      Height = 17
      Caption = 'Conjuntos de Jogos com'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 453
      Height = 58
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        Left = 142
        Top = 9
        Width = 177
        Height = 35
        Caption = 'PREPARAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12383743
        Font.Height = -29
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BBT_Preparar1: TBitBtn
      Left = 282
      Top = 125
      Width = 172
      Height = 39
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_Preparar1Click
    end
    object BBT_Gerar_Voltar: TBitBtn
      Left = 5
      Top = 125
      Width = 171
      Height = 39
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_Gerar_VoltarClick
    end
    object CB_ConjuntoJogos: TComboBox
      Left = 147
      Top = 85
      Width = 164
      Height = 25
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = 'A - 235'
      Items.Strings = (
        'A - 235'
        'B - 162')
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
