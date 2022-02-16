object _F_SIM_01_FILTRO_15td: T_F_SIM_01_FILTRO_15td
  Left = 37
  Top = 118
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 730
  ClientWidth = 1915
  Color = 4276545
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 110
  TextHeight = 16
  object SCBX_GABARITO: TScrollBox
    Left = 0
    Top = 188
    Width = 1915
    Height = 235
    HorzScrollBar.Range = 1432
    VertScrollBar.Range = 194
    VertScrollBar.Visible = False
    Align = alTop
    AutoScroll = False
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Color = 2631720
    ParentColor = False
    TabOrder = 0
    object Label3: TLabel
      Left = 949
      Top = 2
      Width = 334
      Height = 22
      Caption = 'DUPLAS - 6 comb. - 2 Duplas + 2'
      Color = 4210752
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14548991
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_DUPLAS_COMB6_100REP: TLabel
      Left = 1350
      Top = 8
      Width = 30
      Height = 17
      Caption = '000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14548991
      Font.Height = -14
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 348
      Top = 2
      Width = 439
      Height = 22
      Caption = 'TRIPLAS- 9 comb. - 1 Tripla + 2 Duplas + 2'
      Color = 4210752
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14548991
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_TRIPLAS_Comb9: TLabel
      Left = 847
      Top = 9
      Width = 50
      Height = 17
      Caption = '00000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14548991
      Font.Height = -14
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 5
      Top = 1
      Width = 87
      Height = 22
      Caption = 'TRIPLAS'
      Color = 4210752
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14548991
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label10: TLabel
      Left = 195
      Top = 2
      Width = 81
      Height = 22
      Caption = 'DUPLAS'
      Color = 4210752
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14548991
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object STGR_DUPLAS_Comb6: TStringGrid
      Left = 950
      Top = 26
      Width = 441
      Height = 184
      TabStop = False
      BorderStyle = bsNone
      Color = 14548991
      ColCount = 9
      DefaultColWidth = 39
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 3
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 0
      RowHeights = (
        23
        24)
    end
    object STGR_DUPLAS: TStringGrid
      Left = 196
      Top = 24
      Width = 135
      Height = 187
      TabStop = False
      BorderStyle = bsNone
      Color = 15658734
      ColCount = 3
      DefaultColWidth = 36
      DefaultRowHeight = 27
      DrawingStyle = gdsGradient
      FixedColor = 11323335
      RowCount = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      GridLineWidth = 0
      ParentFont = False
      TabOrder = 1
    end
    object STGR_TRIPLAS: TStringGrid
      Left = 3
      Top = 24
      Width = 179
      Height = 187
      TabStop = False
      BorderStyle = bsNone
      Color = 15658734
      ColCount = 4
      DefaultColWidth = 36
      DefaultRowHeight = 27
      DrawingStyle = gdsGradient
      FixedColor = 11323335
      RowCount = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      GridLineWidth = 0
      ParentFont = False
      TabOrder = 2
    end
    object STGR_TRIPLAS_Comb9: TStringGrid
      Left = 347
      Top = 26
      Width = 585
      Height = 184
      TabStop = False
      BorderStyle = bsNone
      Color = 14548991
      ColCount = 12
      DefaultColWidth = 39
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 3
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 3
      RowHeights = (
        23
        24)
    end
  end
  object PA_PREENCHIMENTO: TPanel
    Left = 0
    Top = 49
    Width = 1915
    Height = 139
    Align = alTop
    BevelOuter = bvLowered
    Color = 7172205
    ParentBackground = False
    TabOrder = 1
    object Label2: TLabel
      Left = 17
      Top = 8
      Width = 15
      Height = 25
      Caption = 'A'
      Color = 4144959
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14019839
      Font.Height = -22
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 15
      Top = 40
      Width = 15
      Height = 25
      Caption = 'B'
      Color = 4144959
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14019839
      Font.Height = -22
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 15
      Top = 73
      Width = 16
      Height = 25
      Caption = 'C'
      Color = 4144959
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14019839
      Font.Height = -22
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 15
      Top = 105
      Width = 16
      Height = 25
      Caption = 'D'
      Color = 4144959
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14019839
      Font.Height = -22
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object STGR_BASE_A: TStringGrid
      Left = 34
      Top = 5
      Width = 341
      Height = 32
      TabStop = False
      Color = 13828095
      ColCount = 9
      DefaultColWidth = 32
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      GridLineWidth = 0
      ParentFont = False
      TabOrder = 3
    end
    object STGR_BASE_B: TStringGrid
      Left = 34
      Top = 38
      Width = 301
      Height = 32
      TabStop = False
      Color = 13828095
      ColCount = 8
      DefaultColWidth = 32
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      GridLineWidth = 0
      ParentFont = False
      TabOrder = 4
      RowHeights = (
        23)
    end
    object STGR_BASE_C: TStringGrid
      Left = 34
      Top = 70
      Width = 227
      Height = 31
      TabStop = False
      Color = 13828095
      ColCount = 6
      DefaultColWidth = 32
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      GridLineWidth = 0
      ParentFont = False
      TabOrder = 5
    end
    object STGR_BASE_D: TStringGrid
      Left = 34
      Top = 101
      Width = 227
      Height = 31
      TabStop = False
      Color = 13828095
      ColCount = 6
      DefaultColWidth = 32
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Times New Roman'
      Font.Style = [fsUnderline]
      GridLineWidth = 0
      ParentFont = False
      TabOrder = 6
    end
    object PA_EXCLUIDOS: TPanel
      Left = 408
      Top = 64
      Width = 117
      Height = 72
      BevelOuter = bvNone
      Color = 11119017
      ParentBackground = False
      TabOrder = 0
      object Label31: TLabel
        Left = 5
        Top = 2
        Width = 64
        Height = 32
        Alignment = taCenter
        Caption = 'N'#186#13'Exclu'#237'dos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_EXC_01: TEdit
        Left = 8
        Top = 38
        Width = 32
        Height = 21
        Color = 14342874
        TabOrder = 0
        Text = '00'
      end
      object ED_EXC_02: TEdit
        Left = 45
        Top = 38
        Width = 32
        Height = 21
        Color = 14342874
        TabOrder = 1
        Text = '00'
      end
      object ED_EXC_03: TEdit
        Left = 81
        Top = 38
        Width = 32
        Height = 21
        Color = 14342874
        TabOrder = 2
        Text = '00'
      end
    end
    object PA_GABARITO: TPanel
      Left = 407
      Top = 1
      Width = 374
      Height = 24
      BevelOuter = bvNone
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      Visible = False
      object Label28: TLabel
        Left = 280
        Top = 5
        Width = 69
        Height = 16
        Caption = 'Resultados'
      end
      object Label29: TLabel
        Left = 119
        Top = 3
        Width = 107
        Height = 16
        Caption = 'Grupos e Colunas'
      end
      object Label30: TLabel
        Left = 25
        Top = 3
        Width = 43
        Height = 16
        Caption = 'Ambos'
      end
      object RB_RESULTADOS: TRadioButton
        Left = 257
        Top = 1
        Width = 19
        Height = 22
        Caption = 'RB_RESULTADOS'
        TabOrder = 2
      end
      object RB_GABARITO: TRadioButton
        Left = 96
        Top = 5
        Width = 20
        Height = 14
        Caption = 'RB_RESULTADOS'
        TabOrder = 1
      end
      object RB_RES_GABARITOS: TRadioButton
        Left = 2
        Top = 0
        Width = 20
        Height = 22
        Caption = 'RB_RESULTADOS'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
    end
    object PA_FIXOS: TPanel
      Left = 536
      Top = 84
      Width = 219
      Height = 54
      BevelOuter = bvNone
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object Label39: TLabel
        Left = 5
        Top = 2
        Width = 49
        Height = 16
        Caption = 'N'#186'  Fixo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01: TEdit
        Left = 13
        Top = 21
        Width = 29
        Height = 21
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13828095
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02: TEdit
        Left = 54
        Top = 21
        Width = 30
        Height = 21
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13828095
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '00'
      end
      object ED_FIXOS_03: TEdit
        Left = 95
        Top = 21
        Width = 30
        Height = 21
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13828095
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '00'
      end
      object ED_FIXOS_04: TEdit
        Left = 136
        Top = 21
        Width = 30
        Height = 21
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13828095
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '00'
      end
      object ED_FIXOS_05: TEdit
        Left = 176
        Top = 21
        Width = 30
        Height = 21
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13828095
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = '00'
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1915
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    TabOrder = 2
    object Label53: TLabel
      Left = 6
      Top = 5
      Width = 495
      Height = 37
      Caption = 'FILTRO 15 - TRIPLAS E DUPLAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14809599
      Font.Height = -31
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BBT_CLOSE: TImage
      Left = 1339
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
      Left = 513
      Top = 11
      Width = 94
      Height = 27
      Caption = 'RECOME'#199'AR'
      TabOrder = 0
      Visible = False
    end
    object BBT_CLICK_TUDO: TButton
      Left = 1231
      Top = 8
      Width = 97
      Height = 30
      Caption = 'Clique Tudo'
      TabOrder = 1
      Visible = False
    end
  end
  object PA_RESULTADO: TPanel
    Left = 0
    Top = 423
    Width = 1915
    Height = 307
    Align = alClient
    BevelOuter = bvLowered
    Color = clBlack
    TabOrder = 3
    object STGR_COMB15: TStringGrid
      Left = 173
      Top = 48
      Width = 1741
      Height = 258
      TabStop = False
      Align = alClient
      Color = 14548991
      ColCount = 21
      DefaultColWidth = 39
      DefaultRowHeight = 21
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 3
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object STRGR_TODOS_NUMEROS: TStringGrid
      Left = 402
      Top = 241
      Width = 811
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
    object PA_EXECUTAR_FILTRO: TPanel
      Left = 1
      Top = 48
      Width = 172
      Height = 258
      Align = alLeft
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object BBT_PREPARAR: TBitBtn
        Left = 11
        Top = 2
        Width = 145
        Height = 39
        Caption = 'PREPARAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BBT_PREPARARClick
      end
      object BBT_ENCERRAR: TBitBtn
        Left = 11
        Top = 165
        Width = 145
        Height = 53
        Caption = '[ENCERRAR]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BBT_ENCERRARClick
      end
      object BBT_GERAR: TBitBtn
        Left = 11
        Top = 47
        Width = 145
        Height = 64
        Caption = 'GERAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BBT_GERARClick
      end
      object Button1: TButton
        Left = 14
        Top = 248
        Width = 86
        Height = 28
        Caption = 'FILTRO 09'
        TabOrder = 3
        Visible = False
        OnClick = Button1Click
      end
      object BBT_FILTRAR: TButton
        Left = 11
        Top = 117
        Width = 145
        Height = 43
        Caption = 'FILTRAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Visible = False
        OnClick = BBT_FILTRARClick
      end
    end
    object PANEL_TITULO_SIMULACAO: TPanel
      Left = 1
      Top = 1
      Width = 1913
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object LA_TOTAL_100REPET: TLabel
        Left = 1179
        Top = 2
        Width = 48
        Height = 18
        Caption = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label87: TLabel
        Left = 928
        Top = 3
        Width = 132
        Height = 18
        Caption = 'Remover Repetidos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LA_QTD_COMB: TLabel
        Left = 704
        Top = 5
        Width = 37
        Height = 16
        Caption = 'Gerar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LA_GERAR_COMB: TLabel
        Left = 399
        Top = 5
        Width = 7
        Height = 16
        Caption = '#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LA_TOTAL_COMB: TLabel
        Left = 173
        Top = 5
        Width = 37
        Height = 16
        Caption = 'Gerar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LA_PERC_COMB2: TLabel
        Left = 343
        Top = 5
        Width = 33
        Height = 16
        Caption = '000%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LA_PERC_100REPET: TLabel
        Left = 1083
        Top = 2
        Width = 39
        Height = 18
        Caption = '000%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object PGBR_REMREPET: TProgressBar
        Left = 928
        Top = 22
        Width = 304
        Height = 24
        TabOrder = 0
      end
      object PGBR_GERARCOMB: TProgressBar
        Left = 396
        Top = 22
        Width = 525
        Height = 24
        TabOrder = 1
      end
      object PGBR_GERARCOMB0: TProgressBar
        Left = 172
        Top = 22
        Width = 223
        Height = 24
        TabOrder = 2
        Visible = False
      end
    end
  end
  object PA_REMOVEUREPET: TPanel
    Left = 1445
    Top = 36
    Width = 385
    Height = 680
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 2631720
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    object Label44: TLabel
      Left = 9
      Top = 9
      Width = 340
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'FILTRO 15 - Triplas e Duplas'
      Color = 14548991
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label45: TLabel
      Left = 9
      Top = 38
      Width = 257
      Height = 69
      Align = alTop
      Alignment = taCenter
      Caption = 'GERA'#199#195'O, ORDENA'#199#195'O E '#13'REMO'#199#195'O DE REPETIDOS'#13' ENCERRADA:'
      Color = 13828095
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label46: TLabel
      Left = 23
      Top = 329
      Width = 244
      Height = 21
      Caption = 'Total de dados processados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 23
      Top = 390
      Width = 206
      Height = 21
      Caption = 'Total de dados gerados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
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
      Height = 21
      Caption = '0000000000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object LA_rQTD_COMB: TLabel
      Left = 23
      Top = 411
      Width = 44
      Height = 21
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label58: TLabel
      Left = 11
      Top = 128
      Width = 239
      Height = 21
      Caption = '1. In'#237'cio do Processamento:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_gINICIO_100REPET: TLabel
      Left = 155
      Top = 148
      Width = 203
      Height = 21
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label60: TLabel
      Left = 10
      Top = 175
      Width = 264
      Height = 42
      Caption = '2. T'#233'rmino do Processamento'#13'&& In'#237'cio remo'#231#227'o de repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label49: TLabel
      Left = 10
      Top = 245
      Width = 311
      Height = 42
      Caption = '3. Recupera'#231#227'o dos dados '#13'&& T'#233'rmino da remo'#231#227'o de repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_gFIM_100REPET: TLabel
      Left = 155
      Top = 286
      Width = 203
      Height = 21
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object LA_gFIM_GERAR: TLabel
      Left = 155
      Top = 217
      Width = 203
      Height = 21
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label50: TLabel
      Left = 23
      Top = 447
      Width = 283
      Height = 21
      Caption = 'Total de dados sem os repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_rTOTAL_100REPET: TLabel
      Left = 23
      Top = 469
      Width = 44
      Height = 21
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 23
      Top = 566
      Width = 236
      Height = 21
      Caption = 'Total de dados FILTRADOS:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_fQTD_FILTRADOS: TLabel
      Left = 23
      Top = 588
      Width = 44
      Height = 21
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object LA_gFIM_FILTRAR: TLabel
      Left = 155
      Top = 537
      Width = 203
      Height = 21
      Caption = '00/00/0000 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 517
      Width = 135
      Height = 21
      Caption = '4. Fim do Filtrar'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12910591
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BBT_PA_REMOVEUREPET: TBitBtn
      Left = 193
      Top = 622
      Width = 174
      Height = 39
      Caption = 'OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
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
      Top = 622
      Width = 173
      Height = 39
      Caption = 'Bloco de Notas'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5242880
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_BLOCO_NOTASClick
    end
  end
  object MEM_COMBINACOES_TODAS: TMemo
    Left = 1753
    Top = 543
    Width = 252
    Height = 235
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
    TabOrder = 5
    Visible = False
  end
  object PA_INICIAL: TPanel
    Left = 1059
    Top = 180
    Width = 377
    Height = 341
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 4144959
    ParentBackground = False
    TabOrder = 6
    object Label55: TLabel
      Left = 87
      Top = 10
      Width = 201
      Height = 52
      Alignment = taCenter
      Caption = 'FILTRO 15'#13'Triplas e Duplas'
      Color = 4179168
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14548991
      Font.Height = -22
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BT_NOVA_SIMULACAO: TButton
      Left = 58
      Top = 69
      Width = 258
      Height = 43
      Caption = 'NOVO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BT_NOVA_SIMULACAOClick
    end
    object BT_REAJUSTAR: TButton
      Left = 58
      Top = 116
      Width = 258
      Height = 43
      Caption = 'REAJUSTAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BT_REAJUSTARClick
    end
    object BBT_SAIR: TButton
      Left = 58
      Top = 210
      Width = 258
      Height = 43
      Caption = 'SAIR / FECHAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_CLOSEClick
    end
    object BBT_CARREGAR: TButton
      Left = 58
      Top = 163
      Width = 258
      Height = 43
      Caption = 'CARREGAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_CARREGARClick
    end
    object BBT_CANCELAR: TBitBtn
      Left = 60
      Top = 282
      Width = 257
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
    Top = 54
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultAction = TACommitRetaining
    Left = 1110
    Top = 78
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
    Top = 102
  end
end
