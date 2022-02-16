object _F_GERADOR_10d17: T_F_GERADOR_10d17
  Left = 2
  Top = 124
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '_F_GERADOR_10d17'
  ClientHeight = 733
  ClientWidth = 1834
  Color = 9204545
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 110
  TextHeight = 16
  object SCBX_GABARITO: TScrollBox
    Left = 0
    Top = 49
    Width = 1834
    Height = 235
    HorzScrollBar.Range = 1432
    VertScrollBar.Range = 194
    VertScrollBar.Visible = False
    Align = alTop
    AutoScroll = False
    BevelOuter = bvRaised
    BorderStyle = bsNone
    TabOrder = 5
    object Label3: TLabel
      Left = 761
      Top = 9
      Width = 306
      Height = 22
      Caption = '8 N'#218'MEROS DE BASE (sobras)'
      Color = 4271365
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_BASE_08_100REP: TLabel
      Left = 1115
      Top = 15
      Width = 33
      Height = 18
      Caption = '000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 11
      Top = 9
      Width = 231
      Height = 22
      Caption = '17 N'#218'MEROS  DE BASE'
      Color = 4271365
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
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
      Font.Color = 14150655
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object STGR_BASE_08: TStringGrid
      Left = 760
      Top = 33
      Width = 386
      Height = 184
      TabStop = False
      Color = 12166515
      ColCount = 10
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 2
      RowCount = 2
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 0
      RowHeights = (
        23
        24)
    end
    object STGR_BASE_17: TStringGrid
      Left = 11
      Top = 33
      Width = 719
      Height = 184
      TabStop = False
      BorderStyle = bsNone
      Color = 13492735
      ColCount = 19
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 2
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 1
      RowHeights = (
        23
        24)
    end
  end
  object PA_RESULTADO: TPanel
    Left = 0
    Top = 284
    Width = 1834
    Height = 449
    Align = alClient
    Color = 7230755
    ParentBackground = False
    TabOrder = 4
    DesignSize = (
      1834
      449)
    object STGR_COMB12: TStringGrid
      Left = 561
      Top = 55
      Width = 620
      Height = 390
      TabStop = False
      Align = alCustom
      Anchors = [akLeft, akTop, akBottom]
      Color = 13492735
      ColCount = 13
      DefaultColWidth = 38
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
      TabOrder = 0
    end
    object STRGR_TODOS_NUMEROS: TStringGrid
      Left = 262
      Top = 304
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
    object PA_EXECUTAR_FILTRO: TPanel
      Left = 1
      Top = 52
      Width = 161
      Height = 396
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
      Width = 1832
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object LA_TOTAL_100REPET: TLabel
        Left = 1153
        Top = 6
        Width = 42
        Height = 16
        Caption = '000000'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14150655
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label87: TLabel
        Left = 982
        Top = 6
        Width = 125
        Height = 16
        Caption = 'Remover Repetidos:'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14150655
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object LA_GERAR_COMB: TLabel
        Left = 486
        Top = 5
        Width = 7
        Height = 16
        Caption = '#'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14150655
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object LA_TOTAL_COMB: TLabel
        Left = 113
        Top = 5
        Width = 41
        Height = 18
        Caption = 'Gerar:'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14150655
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object PGBR_REMREPET: TProgressBar
        Left = 982
        Top = 25
        Width = 391
        Height = 25
        TabOrder = 0
      end
      object PGBR_GERARCOMB0: TProgressBar
        Left = 10
        Top = 25
        Width = 961
        Height = 25
        TabOrder = 1
      end
    end
    object STGR_COMB05: TStringGrid
      Left = 160
      Top = 55
      Width = 401
      Height = 390
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 13492735
      ColCount = 8
      Ctl3D = True
      DefaultColWidth = 38
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
    object STGR_SOBRAS08: TStringGrid
      Left = 1183
      Top = 55
      Width = 350
      Height = 390
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 12166515
      ColCount = 9
      Ctl3D = True
      DefaultColWidth = 29
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
  end
  object MEM_COMBINACOES_TODAS: TMemo
    Left = 1669
    Top = 498
    Width = 253
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
    Width = 1834
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = 5256965
    ParentBackground = False
    TabOrder = 3
    object Label53: TLabel
      Left = 6
      Top = 5
      Width = 797
      Height = 39
      Caption = 'GERADOR 10 (e outros) Conjuntos de 17 n'#250'meros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object BBT_CLOSE: TImage
      Left = 1444
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
    Left = 1362
    Top = 36
    Width = 392
    Height = 687
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 6572825
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
      Width = 259
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'GERADOR 10 jg 17 n'#186
      Color = 13492735
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5587205
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
      Color = 13492735
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5587205
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
      Width = 253
      Height = 22
      Caption = 'Total de dados processados:'
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
    object Label47: TLabel
      Left = 23
      Top = 390
      Width = 214
      Height = 22
      Caption = 'Total de dados gerados:'
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
    object LA_rTOTAL_COMB: TLabel
      Left = 23
      Top = 353
      Width = 110
      Height = 22
      Caption = '0000000000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
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
      Font.Color = 14150655
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
      Font.Color = 14150655
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
      Font.Color = 14150655
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
      Font.Color = 14150655
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
      Font.Color = 14150655
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
      Font.Color = 14150655
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
      Font.Color = 14150655
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label50: TLabel
      Left = 23
      Top = 447
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
    object LA_rTOTAL_100REPET: TLabel
      Left = 23
      Top = 469
      Width = 44
      Height = 22
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
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
      Font.Color = 14150655
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
      Font.Color = 14150655
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
      Font.Color = 14150655
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
      Font.Color = 14150655
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object BBT_PA_REMOVEUREPET: TBitBtn
      Left = 18
      Top = 619
      Width = 349
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
  end
  object PA_INICIAL: TPanel
    Left = 1746
    Top = 1
    Width = 318
    Height = 353
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 6572825
    ParentBackground = False
    TabOrder = 1
    object Label55: TLabel
      Left = 24
      Top = 19
      Width = 270
      Height = 26
      Alignment = taCenter
      Caption = 'GERADOR 10 jg 17 n'#186
      Color = 4179168
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
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
    Left = 1631
    Top = 458
    Width = 402
    Height = 288
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 1
    Color = 11847915
    ParentBackground = False
    TabOrder = 6
    object Label1: TLabel
      Left = 19
      Top = 101
      Width = 358
      Height = 119
      Caption = 
        '1: Somat'#243'ria sem faixa'#13'   12 n'#186' soma '#233' 156;  5 n'#186' soma '#233' 65 e 8 ' +
        'n'#186' soma '#233' 104'#13#13'2: Somat'#243'ria com faixa'#13'   12 n'#186' soma '#233' de 155 a 1' +
        '57;'#13'    5 n'#186' soma '#233' 63  a 66 e'#13'    8 n'#186' soma '#233' 103 a 105.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
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
      Color = 5256965
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 6
      ExplicitTop = 6
      ExplicitWidth = 390
      object Label63: TLabel
        Left = 50
        Top = 8
        Width = 266
        Height = 38
        Caption = 'FILTRO GERAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -32
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BBT_GERAR: TBitBtn
      Left = 13
      Top = 238
      Width = 170
      Height = 36
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
      Left = 219
      Top = 238
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
      OnClick = BBT_GERAR_SAIRClick
    end
    object CB_MODO_FILTRO: TComboBox
      Left = 15
      Top = 71
      Width = 370
      Height = 26
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = 'MODO 1 - SOMATORIA SEM FAIXA'
      Items.Strings = (
        'MODO 1 - SOMATORIA SEM FAIXA'
        'MODO 2 - SOMATORIA COM FAIXA')
    end
  end
  object PA_PREPARAR: TPanel
    Left = 1634
    Top = 313
    Width = 457
    Height = 191
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 6572825
    ParentBackground = False
    TabOrder = 7
    object Label40: TLabel
      Left = 14
      Top = 76
      Width = 144
      Height = 17
      Caption = 'N'#250'meros Obrigat'#243'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
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
      BevelInner = bvLowered
      Color = 12166515
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        Left = 142
        Top = 9
        Width = 177
        Height = 35
        Caption = 'PREPARAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BBT_PREPARAR1: TBitBtn
      Left = 7
      Top = 140
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
    object BitBtn2: TBitBtn
      Left = 280
      Top = 140
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
      OnClick = BitBtn2Click
    end
    object CB_NUMEROS_OBRIGATORIOS: TComboBox
      Left = 14
      Top = 99
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
      Text = 'A - 10 conjuntos de 17 n'#250'meros'
      Items.Strings = (
        'A - 10 conjuntos de 17 n'#250'meros'
        'B - 15 conjuntos de 17 n'#250'meros'
        'C - 20 conjuntos de 17 n'#250'meros')
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
  object IBQ_COMBINACOES: TIBQuery
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
end
