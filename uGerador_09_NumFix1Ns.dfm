object _F_Gerador_09_NumFix1Ns: T_F_Gerador_09_NumFix1Ns
  Left = 2
  Top = 116
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '_F_Gerador_09_NumFix1Ns'
  ClientHeight = 703
  ClientWidth = 1399
  Color = 1318439
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
    Color = 2635589
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    object Label7: TLabel
      Left = 10
      Top = 2
      Width = 186
      Height = 18
      Caption = 'N'#218'MEROS DE BASE C/ 15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14737632
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 574
      Top = -1
      Width = 186
      Height = 18
      Caption = 'N'#218'MEROS DE BASE C/ 10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12703713
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object PA_Fixos: TPanel
      Left = 983
      Top = 14
      Width = 108
      Height = 43
      BevelOuter = bvNone
      Color = 9204480
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
        Width = 42
        Height = 13
        Caption = 'N'#186'  Fixo'
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
        Color = 14017159
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '00'
        OnChange = ED_Fixos01Change
      end
      object ED_Fixos02: TEdit
        Left = 39
        Top = 18
        Width = 27
        Height = 22
        Color = 14017159
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
        Left = 76
        Top = 18
        Width = 27
        Height = 22
        Color = 14017159
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '00'
        OnChange = ED_Fixos03Change
      end
    end
    object STGR_Base: TStringGrid
      Left = 9
      Top = 20
      Width = 528
      Height = 209
      TabStop = False
      BorderStyle = bsNone
      Color = 14541457
      ColCount = 17
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 23
      FixedColor = 9204480
      RowCount = 11
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      TabOrder = 1
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
        30
        30
        30
        30
        30
        30)
    end
    object STGR_Base10: TStringGrid
      Left = 573
      Top = 19
      Width = 392
      Height = 210
      TabStop = False
      BorderStyle = bsNone
      Color = 14413823
      ColCount = 12
      Ctl3D = False
      DefaultColWidth = 30
      DefaultRowHeight = 23
      FixedColor = 9803263
      RowCount = 6
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
        30
        30
        30
        30
        30)
    end
    object PA_FixosExcluidos: TPanel
      Left = 983
      Top = 62
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
      TabOrder = 3
      object Label4: TLabel
        Left = 2
        Top = 2
        Width = 97
        Height = 13
        Caption = 'N'#186'  Fixo Exclu'#237'dos'
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
      object ED_Fixos01Exc: TEdit
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
        OnChange = ED_Fixos01ExcChange
      end
      object ED_Fixos02Exc: TEdit
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
        OnChange = ED_Fixos02ExcChange
      end
      object ED_Fixos03Exc: TEdit
        Left = 76
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
        OnChange = ED_Fixos03ExcChange
      end
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
        Top = 9
        Width = 50
        Height = 16
        Caption = 'Etapa 01'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12386303
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object PGBR_Etapa_01: TProgressBar
        Left = 132
        Top = 5
        Width = 775
        Height = 24
        TabOrder = 0
      end
    end
    object SCBX_dados: TScrollBox
      Left = 132
      Top = 42
      Width = 1266
      Height = 383
      HorzScrollBar.Range = 1900
      Align = alClient
      AutoScroll = False
      Color = 1318439
      ParentColor = False
      TabOrder = 4
      DesignSize = (
        1262
        362)
      object Label3: TLabel
        Left = 7
        Top = 1
        Width = 60
        Height = 18
        Caption = 'Etapa 01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14737632
        Font.Height = -15
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label14: TLabel
        Left = 6774
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
      end
      object STGR_Etapa01_07a: TStringGrid
        Left = 6
        Top = 19
        Width = 233
        Height = 57
        TabStop = False
        Color = 10068113
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 7566195
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
        TabOrder = 0
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
      object STGR_Etapa07_15: TStringGrid
        Left = 1167
        Top = 18
        Width = 645
        Height = 346
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 14017159
        ColCount = 19
        Ctl3D = False
        DefaultColWidth = 28
        DefaultRowHeight = 25
        FixedColor = clMedGray
        FixedCols = 2
        RowCount = 1
        FixedRows = 0
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
          25)
      end
      object STGR_7Duplas: TStringGrid
        Left = 552
        Top = 19
        Width = 144
        Height = 307
        TabStop = False
        Color = 10068113
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 33
        DefaultRowHeight = 35
        FixedColor = 7566195
        FixedCols = 2
        RowCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object STGR_Etapa01_07b: TStringGrid
        Left = 6
        Top = 79
        Width = 233
        Height = 57
        TabStop = False
        Color = 10068113
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 7566195
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
        TabOrder = 3
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
      object STGR_Etapa01_06: TStringGrid
        Left = 246
        Top = 19
        Width = 298
        Height = 345
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 10068113
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 7566195
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
        TabOrder = 4
      end
      object STGR_4Duplas: TStringGrid
        Left = 701
        Top = 19
        Width = 144
        Height = 198
        TabStop = False
        Color = 10068113
        ColCount = 4
        Ctl3D = False
        DefaultColWidth = 33
        DefaultRowHeight = 35
        FixedColor = 7566195
        FixedCols = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object STGR_7Numeros: TStringGrid
        Left = 852
        Top = 17
        Width = 290
        Height = 345
        TabStop = False
        Anchors = [akLeft, akTop, akBottom]
        Color = 10068113
        ColCount = 8
        Ctl3D = False
        DefaultColWidth = 27
        DefaultRowHeight = 25
        FixedColor = 7566195
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
        TabOrder = 6
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
    Color = 989489
    ParentBackground = False
    TabOrder = 3
    object LA_Titulo: TLabel
      Left = 7
      Top = 4
      Width = 625
      Height = 34
      Caption = 'GERADOR 09 N'#250'meros Fixos 1 N'#227'o Sorteado'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
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
      ParentFont = False
      TabOrder = 0
      OnClick = BBT_RemoveuRepetidosClick
      NumGlyphs = 2
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
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_BlocoNotasClick
      NumGlyphs = 2
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
    Color = 2635589
    ParentBackground = False
    TabOrder = 1
    object Label55: TLabel
      Left = 64
      Top = 8
      Width = 199
      Height = 48
      Alignment = taCenter
      Caption = 'Result a Partir'#13'de 08 N'#250'meros Fixos'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
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
    Left = 933
    Top = 145
    Width = 372
    Height = 137
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 2635589
    ParentBackground = False
    TabOrder = 6
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 368
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      Color = 989489
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        Left = 104
        Top = 9
        Width = 150
        Height = 32
        Caption = 'PREPARAR'
        Color = 989489
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentColor = False
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
    Left = 662
    Top = 19
    Width = 435
    Height = 276
    BevelWidth = 2
    BorderWidth = 1
    Color = 2635589
    ParentBackground = False
    TabOrder = 5
    object Label6: TLabel
      Left = 18
      Top = 58
      Width = 188
      Height = 18
      Caption = 'Par'#226'metros de execu'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14737632
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 17
      Top = 107
      Width = 268
      Height = 18
      Caption = 'Forma'#231#227'o dos 6 n'#250'meros sorteados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14737632
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 3
      Top = 3
      Width = 429
      Height = 44
      Align = alTop
      BevelOuter = bvNone
      Color = 989489
      ParentBackground = False
      TabOrder = 0
      object Label63: TLabel
        Left = 97
        Top = 6
        Width = 214
        Height = 34
        Caption = 'FILTRO GERAR'
        Color = 989489
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -29
        Font.Name = 'Arial Rounded MT'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object BBT_Etapa01: TBitBtn
      Left = 146
      Top = 222
      Width = 188
      Height = 33
      Caption = 'Etapas 01, 02, 03, 04 e 05'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = BBT_Etapa01Click
    end
    object BBT_Voltar: TBitBtn
      Left = 6
      Top = 237
      Width = 188
      Height = 32
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
    object BBT_OK: TBitBtn
      Left = 286
      Top = 237
      Width = 141
      Height = 32
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Rounded MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_OKClick
    end
    object cb_InicioFimContador: TComboBox
      Left = 18
      Top = 78
      Width = 390
      Height = 22
      ItemHeight = 14
      ItemIndex = 0
      TabOrder = 4
      Text = '00: Todos os 102 Jgs'
      Items.Strings = (
        '00: Todos os 102 Jgs'
        '01: Jogos Pares'
        '02: Jogos '#205'mpares'
        '03: Do 1 ao 26'
        '04: Do 27 ao 51'
        '05: Do 52 ao 76'
        '06: Do 77 ao 102'
        '07: 03 com 04 (01 ao 26 e do 27 ao 51)'
        '08: 03 com 05 (01 ao 26 e do 52 ao 76)'
        '09: 03 com 06 (01 ao 26 e do 77 ao 102)'
        '10: 04 com 05 (27 ao 51 e do 52 ao76)'
        '11: 04 com 06 (27 ao 51 e do 77 ao 102)'
        '12: 05 com 06 (52 ao 76 e do 77 ao 102)')
    end
    object cb_Formacao_06Numeros1: TComboBox
      Left = 17
      Top = 127
      Width = 390
      Height = 22
      ItemHeight = 14
      ItemIndex = 0
      TabOrder = 5
      Text = '00:  2 duplas cheias<4> | 2 duplas meiadas<2> | 3 duplas vazias'
      Items.Strings = (
        '00:  2 duplas cheias<4> | 2 duplas meiadas<2> | 3 duplas vazias'
        '01:  1 dupla cheia <2>  | 4 duplas meiadas <4> | 2 duplaS vazias')
    end
  end
end
