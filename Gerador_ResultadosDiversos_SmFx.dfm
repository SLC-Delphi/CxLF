object _F_Gerador_ResDiv_SmFx1: T_F_Gerador_ResDiv_SmFx1
  Left = 2
  Top = 124
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '_F_Gerador_ResDiv_SmFx1'
  ClientHeight = 788
  ClientWidth = 2131
  Color = 9204545
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
  object SCBX_GABARITO: TScrollBox
    Left = 0
    Top = 49
    Width = 2131
    Height = 235
    HorzScrollBar.Range = 1432
    VertScrollBar.Range = 194
    VertScrollBar.Visible = False
    Align = alTop
    AutoScroll = False
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Color = 5193014
    ParentColor = False
    TabOrder = 7
    object Label7: TLabel
      Left = 11
      Top = 9
      Width = 256
      Height = 22
      Caption = 'N'#218'MEROS DE BASE C/ 15'
      Color = 4271365
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_BASE_17_100REP: TLabel
      Left = 678
      Top = 16
      Width = 55
      Height = 18
      Caption = '00000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object STGR_BASE: TStringGrid
      Left = 11
      Top = 33
      Width = 719
      Height = 184
      TabStop = False
      BorderStyle = bsNone
      Color = 14017159
      ColCount = 17
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 2
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 0
    end
    object STGR_BASE10: TStringGrid
      Left = 740
      Top = 32
      Width = 547
      Height = 186
      TabStop = False
      BorderStyle = bsNone
      Color = 12312831
      ColCount = 12
      DefaultColWidth = 36
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 2
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 1
    end
    object PA_COLUNA1: TPanel
      Left = 1293
      Top = 52
      Width = 127
      Height = 74
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = 13092919
      ParentBackground = False
      TabOrder = 2
      object Label56: TLabel
        Left = 3
        Top = 0
        Width = 104
        Height = 34
        Caption = 'Somat'#243'ria para 12 N'#186'S:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object ED_SOMAS_12N_INI: TEdit
        Left = 9
        Top = 41
        Width = 40
        Height = 24
        TabStop = False
        BevelKind = bkTile
        Color = 14017159
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '156'
      end
      object TRB_SOMA_12N: TTrackBar
        Left = 56
        Top = 19
        Width = 30
        Height = 52
        Max = 3
        Min = 1
        Orientation = trVertical
        Position = 2
        TabOrder = 1
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_SOMA_12NChange
      end
    end
    object Panel3: TPanel
      Left = 1293
      Top = 132
      Width = 127
      Height = 74
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = 13092919
      ParentBackground = False
      TabOrder = 3
      object Label3: TLabel
        Left = 2
        Top = -1
        Width = 104
        Height = 34
        Caption = 'Somat'#243'ria para 3 N'#186'S:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object ED_SOMAS_03N_INI: TEdit
        Left = 9
        Top = 44
        Width = 40
        Height = 24
        TabStop = False
        BevelKind = bkTile
        Color = 14017159
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '40'
      end
      object TRB_SOMA_03N: TTrackBar
        Left = 56
        Top = 19
        Width = 30
        Height = 52
        Enabled = False
        Max = 3
        Min = 1
        Orientation = trVertical
        Position = 2
        TabOrder = 1
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_SOMA_03NChange
      end
    end
    object Panel4: TPanel
      Left = 1425
      Top = 132
      Width = 164
      Height = 74
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = 9811164
      ParentBackground = False
      TabOrder = 5
      object Label4: TLabel
        Left = 0
        Top = 2
        Width = 153
        Height = 17
        Caption = 'Somat'#243'ria para 05 N'#186'S:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMAS_05N2_INI: TEdit
        Left = 9
        Top = 29
        Width = 40
        Height = 24
        TabStop = False
        BevelKind = bkTile
        Color = 11784944
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '64'
      end
      object TRB_SOMAS_05N2: TTrackBar
        Left = 56
        Top = 19
        Width = 30
        Height = 52
        Enabled = False
        Max = 3
        Min = 1
        Orientation = trVertical
        Position = 2
        TabOrder = 1
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_SOMAS_05N2Change
      end
    end
    object Panel5: TPanel
      Left = 1425
      Top = 52
      Width = 164
      Height = 74
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = 9811164
      ParentBackground = False
      TabOrder = 4
      object Label5: TLabel
        Left = 0
        Top = 2
        Width = 145
        Height = 17
        Caption = 'Somat'#243'ria para 5 N'#186'S:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMAS_05N1_INI: TEdit
        Left = 9
        Top = 29
        Width = 40
        Height = 24
        TabStop = False
        BevelKind = bkTile
        Color = 11784944
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '65'
      end
      object TRB_SOMAS_05N1: TTrackBar
        Left = 56
        Top = 19
        Width = 30
        Height = 52
        Max = 3
        Min = 1
        Orientation = trVertical
        Position = 2
        TabOrder = 1
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_SOMAS_05N1Change
      end
    end
    object PA_FIXOS: TPanel
      Left = 1595
      Top = 2
      Width = 117
      Height = 55
      Color = 13092919
      TabOrder = 6
      object Label1: TLabel
        Left = 0
        Top = 2
        Width = 116
        Height = 16
        Caption = 'N'#186'  Fixo - 7Im/8Pa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_7i8p: TEdit
        Left = 21
        Top = 22
        Width = 32
        Height = 24
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_7i8p: TEdit
        Left = 62
        Top = 22
        Width = 32
        Height = 24
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
    object Panel6: TPanel
      Left = 1595
      Top = 60
      Width = 117
      Height = 55
      Color = 13092919
      TabOrder = 7
      object Label6: TLabel
        Left = 0
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
        Left = 21
        Top = 22
        Width = 32
        Height = 24
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_8i7p: TEdit
        Left = 62
        Top = 22
        Width = 32
        Height = 24
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
    object Panel7: TPanel
      Left = 1595
      Top = 117
      Width = 117
      Height = 55
      Color = 13092919
      TabOrder = 8
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
        Height = 24
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_6i9p: TEdit
        Left = 62
        Top = 22
        Width = 32
        Height = 24
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
    object Panel8: TPanel
      Left = 1595
      Top = 174
      Width = 117
      Height = 55
      Color = 13092919
      TabOrder = 9
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
        Height = 24
        Color = 14017159
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_9i6p: TEdit
        Left = 62
        Top = 22
        Width = 32
        Height = 24
        Color = 14017159
        TabOrder = 1
        Text = '00'
      end
    end
  end
  object PA_RESULTADO: TPanel
    Left = 0
    Top = 284
    Width = 2131
    Height = 504
    Align = alClient
    Color = 6967624
    ParentBackground = False
    TabOrder = 4
    object Label10: TLabel
      Left = 1423
      Top = 96
      Width = 95
      Height = 38
      Caption = 'Label1'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object PA_EXECUTAR_FILTRO: TPanel
      Left = 1
      Top = 52
      Width = 161
      Height = 451
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
      object BBT_PREPARAR_MENU: TBitBtn
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
        OnClick = BBT_PREPARAR_MENUClick
      end
      object BBT_GERAR_MENU: TBitBtn
        Left = 7
        Top = 58
        Width = 149
        Height = 39
        Caption = 'GERAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -22
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BBT_GERAR_MENUClick
      end
      object BBT_CANCELAR_SAIR: TBitBtn
        Left = 6
        Top = 109
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
        OnClick = BBT_CANCELARClick
      end
    end
    object PANEL_TITULO_SIMULACAO: TPanel
      Left = 1
      Top = 1
      Width = 2129
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object LA_GERAR_COMB: TLabel
        Left = 486
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
      object LA_TOTAL_COMB: TLabel
        Left = 113
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
      object PGBR_GERARCOMB0: TProgressBar
        Left = 10
        Top = 25
        Width = 1401
        Height = 25
        TabOrder = 0
      end
    end
    object STGR_COMB12: TStringGrid
      Left = 160
      Top = 55
      Width = 523
      Height = 203
      TabStop = False
      Color = 14017159
      ColCount = 15
      Ctl3D = True
      DefaultColWidth = 27
      DefaultRowHeight = 27
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object STGR_Comb02_05: TStringGrid
      Left = 1244
      Top = 54
      Width = 165
      Height = 205
      TabStop = False
      Color = 9888646
      ColCount = 3
      Ctl3D = True
      DefaultColWidth = 36
      DefaultRowHeight = 27
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      RowHeights = (
        27
        27
        27
        27
        27)
    end
    object STGR_COMB12_S3: TStringGrid
      Left = 684
      Top = 55
      Width = 210
      Height = 85
      TabStop = False
      Color = 14017159
      ColCount = 4
      DefaultColWidth = 42
      DefaultRowHeight = 29
      DrawingStyle = gdsClassic
      FixedColor = 5937971
      RowCount = 2
      TabOrder = 7
    end
    object STGR_COMB05: TStringGrid
      Left = 912
      Top = 54
      Width = 331
      Height = 205
      TabStop = False
      Color = 12312831
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 36
      DefaultRowHeight = 27
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      RowHeights = (
        27
        27
        27
        27
        27)
    end
    object STGR_COMB15_8I7P: TStringGrid
      Left = 846
      Top = 259
      Width = 640
      Height = 121
      TabStop = False
      Align = alCustom
      Color = 14017159
      ColCount = 16
      DefaultColWidth = 31
      DefaultRowHeight = 27
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentFont = False
      TabOrder = 9
    end
    object STGR_COMB15: TStringGrid
      Left = 1058
      Top = 426
      Width = 640
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
        31
        31)
    end
    object STGR_COMB15_7i8p: TStringGrid
      Left = 159
      Top = 259
      Width = 641
      Height = 121
      TabStop = False
      Align = alCustom
      Color = 14017159
      ColCount = 16
      DefaultColWidth = 31
      DefaultRowHeight = 27
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentFont = False
      TabOrder = 10
    end
    object STGR_COMB15_9I6P: TStringGrid
      Left = 844
      Top = 379
      Width = 641
      Height = 123
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
      TabOrder = 11
    end
    object STGR_COMB15_6I9P: TStringGrid
      Left = 158
      Top = 379
      Width = 641
      Height = 123
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
      TabOrder = 12
    end
    object STRGR_TODOS_NUMEROS: TStringGrid
      Left = 167
      Top = 352
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
    object STGR_SOBRAS_12: TStringGrid
      Left = 170
      Top = 285
      Width = 553
      Height = 58
      TabStop = False
      BorderStyle = bsNone
      Color = 13691095
      ColCount = 14
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clGray
      RowCount = 2
      TabOrder = 6
      Visible = False
      ColWidths = (
        33
        33
        34
        33
        33
        33
        33
        33
        33
        33
        33
        33
        33
        33)
      RowHeights = (
        23
        24)
    end
    object Button6: TButton
      Left = 1430
      Top = 34
      Width = 86
      Height = 29
      Caption = 'Button6'
      TabOrder = 13
      Visible = False
      OnClick = Button6Click
    end
  end
  object MEM_COMBINACOES_TODAS: TMemo
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
  object PA_TOPO: TPanel
    Left = 0
    Top = 0
    Width = 2131
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = 2238507
    ParentBackground = False
    TabOrder = 3
    object LA_TITULO: TLabel
      Left = 6
      Top = 5
      Width = 892
      Height = 39
      Caption = 'GERADOR Resultados Diversos a Partir das Somas Fixas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12383743
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object BBT_CLOSE: TImage
      Left = 1650
      Top = 1
      Width = 37
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
      OnClick = BBT_CLOSEClick
    end
    object BBT_RECOMECAR: TBitBtn
      Left = 1111
      Top = 6
      Width = 114
      Height = 35
      Caption = 'RECOME'#199'AR'
      TabOrder = 0
      Visible = False
    end
  end
  object PA_REMOVEUREPET: TPanel
    Left = 1636
    Top = 42
    Width = 407
    Height = 688
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 5193014
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label44: TLabel
      Left = 8
      Top = 8
      Width = 387
      Height = 27
      Align = alTop
      Alignment = taCenter
      Caption = 'Result Div. a Partir das Somas Fixas'
      Color = 14017159
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5587205
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitLeft = 9
      ExplicitTop = 9
      ExplicitWidth = 394
    end
    object Label45: TLabel
      Left = 8
      Top = 35
      Width = 387
      Height = 69
      Align = alTop
      Alignment = taCenter
      Caption = 'GERA'#199#195'O, ORDENA'#199#195'O E '#13'REMO'#199#195'O DE REPETIDOS'#13' ENCERRADA:'
      Color = 14017159
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5587205
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitLeft = 9
      ExplicitTop = 36
      ExplicitWidth = 257
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
    object LA_rTOT_PROCESSAMENTO: TLabel
      Left = 252
      Top = 579
      Width = 80
      Height = 18
      Alignment = taRightJustify
      Caption = '00000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_rATRIBUICAO_DADOS: TLabel
      Left = 253
      Top = 561
      Width = 80
      Height = 18
      Alignment = taRightJustify
      Caption = '00000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_rLogic_Comp: TLabel
      Left = 252
      Top = 543
      Width = 80
      Height = 18
      Alignment = taRightJustify
      Caption = '00000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_rTOT_CALC: TLabel
      Left = 252
      Top = 525
      Width = 80
      Height = 18
      Alignment = taRightJustify
      Caption = '00000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label39: TLabel
      Left = 37
      Top = 526
      Width = 205
      Height = 18
      Caption = 'Total c'#225'lculos processados:'
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
    object Label41: TLabel
      Left = 37
      Top = 544
      Width = 197
      Height = 18
      Caption = 'Total compara'#231#245'es l'#243'gicas'
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
    object Label43: TLabel
      Left = 37
      Top = 563
      Width = 185
      Height = 18
      Caption = 'Movimenta'#231#227'o de Dados:'
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
    object Label42: TLabel
      Left = 37
      Top = 580
      Width = 161
      Height = 18
      Caption = 'Processamento Total:'
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
    object BBT_PA_REMOVEUREPET: TBitBtn
      Left = 234
      Top = 622
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
      OnClick = BBT_PA_REMOVEUREPETClick
    end
    object BBT_BLOCO_NOTAS: TBitBtn
      Left = 14
      Top = 623
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
      OnClick = BBT_BLOCO_NOTASClick
    end
  end
  object PA_INICIAL: TPanel
    Left = 1746
    Top = 1
    Width = 318
    Height = 353
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 5193014
    ParentBackground = False
    TabOrder = 1
    object Label55: TLabel
      Left = 21
      Top = 14
      Width = 281
      Height = 52
      Alignment = taCenter
      Caption = 'Result Div. a Partir'#13'das Somas Fixas 8I 7p'
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
    object BT_NOVA_SIMULACAO: TButton
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
      OnClick = BT_NOVA_SIMULACAOClick
    end
    object BT_REAJUSTAR: TButton
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
      OnClick = BT_REAJUSTARClick
    end
    object BBT_SAIR: TButton
      Left = 29
      Top = 210
      Width = 257
      Height = 43
      Caption = 'SAIR / FECHAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_SAIRClick
    end
    object BBT_CARREGAR: TButton
      Left = 29
      Top = 163
      Width = 257
      Height = 43
      Caption = 'CARREGAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_CARREGARClick
    end
    object BBT_CANCELAR: TBitBtn
      Left = 30
      Top = 282
      Width = 258
      Height = 43
      Caption = 'CANCELAR && SAIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBT_CANCELARClick
    end
  end
  object PA_GERAR: TPanel
    Left = 1555
    Top = 341
    Width = 402
    Height = 168
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 1
    Color = 14017159
    ParentBackground = False
    TabOrder = 5
    object Label40: TLabel
      Left = 14
      Top = 70
      Width = 61
      Height = 17
      Caption = 'Seu'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 5
      Top = 5
      Width = 392
      Height = 54
      Align = alTop
      BevelInner = bvLowered
      Color = 5193014
      ParentBackground = False
      TabOrder = 0
      object Label63: TLabel
        Left = 50
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
    object BBT_GERAR: TBitBtn
      Left = 220
      Top = 124
      Width = 171
      Height = 35
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_GERARClick
    end
    object BBT_GERAR_SAIR: TBitBtn
      Left = 10
      Top = 124
      Width = 171
      Height = 35
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_GERAR_SAIRClick
    end
    object CB_Sequencia: TComboBox
      Left = 14
      Top = 89
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
      TabOrder = 3
      Text = 'A - Todos'
      Items.Strings = (
        'A - Todos'
        'B - Somente '#205'mpares'
        'C - Somente Pares'
        'D - Intercalado 1 Sim e 2 N'#227'o'
        'E - Intercalado 1 Sim e 3 N'#227'o')
    end
  end
  object PA_PREPARAR: TPanel
    Left = 1572
    Top = 504
    Width = 457
    Height = 164
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 6967624
    ParentBackground = False
    TabOrder = 6
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 453
      Height = 58
      Align = alTop
      BevelInner = bvLowered
      Color = 2238507
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
    object BBT_PREPARAR1: TBitBtn
      Left = 282
      Top = 113
      Width = 172
      Height = 47
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_PREPARAR1Click
    end
    object BBT_GERAR_VOLTAR: TBitBtn
      Left = 5
      Top = 113
      Width = 171
      Height = 47
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_GERAR_VOLTARClick
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
    Left = 1110
    Top = 6
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultAction = TACommitRetaining
    Left = 1110
    Top = 54
  end
  object IBQ_COMBINACOES: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT FIRST 10 * FROM COMBINACOES_15')
    Left = 1110
    Top = 94
  end
end
