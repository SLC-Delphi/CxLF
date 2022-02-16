object _F_GERADOR_12p3_M1: T_F_GERADOR_12p3_M1
  Left = 10
  Top = 185
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = '_F_GERADOR_12p3_M1'
  ClientHeight = 730
  ClientWidth = 2012
  Color = 4279125
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
    Top = 49
    Width = 2012
    Height = 249
    HorzScrollBar.Range = 1432
    VertScrollBar.Range = 194
    VertScrollBar.Visible = False
    Align = alTop
    AutoScroll = False
    BevelOuter = bvRaised
    BorderStyle = bsNone
    TabOrder = 0
    object Label7: TLabel
      Left = 11
      Top = 2
      Width = 231
      Height = 22
      Caption = '25 N'#218'MEROS  DE BASE'
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
    object STGR_BASE_25: TStringGrid
      Left = 11
      Top = 26
      Width = 927
      Height = 66
      TabStop = False
      BorderStyle = bsNone
      Color = 11194623
      ColCount = 26
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 0
      RowHeights = (
        23
        24)
    end
    object PA_COLUNA1: TPanel
      Left = 13
      Top = 94
      Width = 177
      Height = 74
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = 2985215
      ParentBackground = False
      TabOrder = 1
      object Label56: TLabel
        Left = 0
        Top = 5
        Width = 159
        Height = 32
        Caption = 'Somat'#243'ria para a coluna 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object ED_SOMAS_C1_INI: TEdit
        Left = 16
        Top = 32
        Width = 103
        Height = 22
        TabStop = False
        BevelKind = bkTile
        Color = 11194623
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '156'
      end
      object TRB_C1_INI: TTrackBar
        Left = 125
        Top = 22
        Width = 27
        Height = 47
        Max = 2
        Min = 1
        Orientation = trVertical
        Position = 1
        TabOrder = 1
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_C1_INIChange
      end
    end
    object PA_COLUNA2: TPanel
      Left = 244
      Top = 94
      Width = 178
      Height = 74
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = 6516479
      ParentBackground = False
      TabOrder = 2
      object Label61: TLabel
        Left = 0
        Top = 5
        Width = 159
        Height = 32
        Caption = 'Somat'#243'ria para a coluna 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object ED_SOMAS_C2_INI: TEdit
        Left = 18
        Top = 31
        Width = 101
        Height = 22
        TabStop = False
        Color = 10666490
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '102 - 104 - 106'
      end
      object TRB_C2_INI: TTrackBar
        Left = 126
        Top = 21
        Width = 28
        Height = 47
        Max = 2
        Min = 1
        Orientation = trVertical
        Position = 2
        TabOrder = 1
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_C2_INIChange
      end
    end
    object PA_COLUNA4: TPanel
      Left = 982
      Top = 94
      Width = 387
      Height = 74
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = 6516479
      ParentBackground = False
      TabOrder = 4
      object Label25: TLabel
        Left = 108
        Top = 5
        Width = 171
        Height = 17
        Caption = 'Somat'#243'ria para a coluna 4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object ED_SOMAS_C4_INI: TEdit
        Left = 151
        Top = 33
        Width = 27
        Height = 22
        TabStop = False
        Color = 10666490
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '03'
      end
      object TRB_C4_INI: TTrackBar
        Left = -2
        Top = 31
        Width = 156
        Height = 27
        Max = 24
        Min = 1
        Position = 1
        TabOrder = 1
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_C4_INIChange
      end
      object TRB_C4_FINAL: TTrackBar
        Left = 187
        Top = 31
        Width = 156
        Height = 27
        Max = 24
        Min = 1
        Position = 1
        TabOrder = 2
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_C4_FINALChange
      end
      object ED_SOMAS_C4_FINAL: TEdit
        Left = 340
        Top = 33
        Width = 27
        Height = 22
        TabStop = False
        Color = 10666490
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '03'
      end
    end
    object PA_COLUNA3: TPanel
      Left = 471
      Top = 94
      Width = 472
      Height = 74
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = 2985215
      ParentBackground = False
      TabOrder = 3
      object Label72: TLabel
        Left = 18
        Top = 5
        Width = 171
        Height = 17
        Caption = 'Somat'#243'ria para a coluna 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object ED_SOMAS_C3_INI: TEdit
        Left = 197
        Top = 33
        Width = 32
        Height = 22
        TabStop = False
        BevelKind = bkTile
        Color = 11194623
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '34'
      end
      object TRB_C3_INI: TTrackBar
        Left = -1
        Top = 29
        Width = 197
        Height = 35
        Max = 34
        Min = 1
        Position = 15
        TabOrder = 1
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_C3_INIChange
      end
      object TRB_C3_FINAL: TTrackBar
        Left = 233
        Top = 28
        Width = 197
        Height = 35
        Max = 34
        Min = 1
        Position = 15
        TabOrder = 2
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_C3_FINALChange
      end
      object ED_SOMAS_C3_FINAL: TEdit
        Left = 431
        Top = 33
        Width = 32
        Height = 22
        TabStop = False
        BevelKind = bkTile
        Color = 11194623
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '34'
      end
    end
    object PA_FIXOS_1: TPanel
      Left = 13
      Top = 176
      Width = 176
      Height = 62
      BevelOuter = bvNone
      Color = 6594815
      ParentBackground = False
      TabOrder = 5
      object Label1: TLabel
        Left = 80
        Top = 5
        Width = 59
        Height = 16
        Caption = 'N'#186'  Fixos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_1: TEdit
        Left = 5
        Top = 28
        Width = 33
        Height = 21
        BevelKind = bkTile
        Color = 11194623
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_1: TEdit
        Left = 40
        Top = 28
        Width = 33
        Height = 21
        BevelKind = bkTile
        Color = 11194623
        TabOrder = 1
        Text = '00'
      end
      object ED_FIXOS_03_1: TEdit
        Left = 74
        Top = 28
        Width = 34
        Height = 21
        BevelKind = bkTile
        Color = 11194623
        TabOrder = 2
        Text = '00'
      end
      object ED_FIXOS_04_1: TEdit
        Left = 109
        Top = 28
        Width = 33
        Height = 21
        BevelKind = bkTile
        Color = 11194623
        TabOrder = 3
        Text = '00'
      end
      object ED_FIXOS_05_1: TEdit
        Left = 143
        Top = 28
        Width = 33
        Height = 21
        BevelKind = bkTile
        Color = 11194623
        Enabled = False
        TabOrder = 4
        Text = '00'
        Visible = False
      end
    end
    object PA_FIXOS_2: TPanel
      Left = 244
      Top = 176
      Width = 148
      Height = 62
      BevelOuter = bvNone
      Color = 8887295
      ParentBackground = False
      TabOrder = 6
      object Label2: TLabel
        Left = 46
        Top = 5
        Width = 59
        Height = 16
        Caption = 'N'#186'  Fixos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_2: TEdit
        Left = 6
        Top = 28
        Width = 32
        Height = 21
        Color = 10666490
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_2: TEdit
        Left = 40
        Top = 28
        Width = 32
        Height = 21
        Color = 10666490
        TabOrder = 1
        Text = '00'
      end
      object ED_FIXOS_03_2: TEdit
        Left = 74
        Top = 28
        Width = 33
        Height = 21
        Color = 10666490
        TabOrder = 2
        Text = '00'
      end
      object ED_FIXOS_04_2: TEdit
        Left = 109
        Top = 28
        Width = 32
        Height = 21
        Color = 10666490
        Enabled = False
        TabOrder = 3
        Text = '00'
        Visible = False
      end
    end
    object PA_FIXOS_3: TPanel
      Left = 471
      Top = 176
      Width = 116
      Height = 62
      BevelOuter = bvNone
      Color = 6594815
      ParentBackground = False
      TabOrder = 7
      object Label3: TLabel
        Left = 29
        Top = 5
        Width = 59
        Height = 16
        Caption = 'N'#186'  Fixos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_3: TEdit
        Left = 6
        Top = 28
        Width = 33
        Height = 21
        BevelKind = bkTile
        Color = 11194623
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_3: TEdit
        Left = 40
        Top = 28
        Width = 33
        Height = 21
        BevelKind = bkTile
        Color = 11194623
        TabOrder = 1
        Text = '00'
      end
      object ED_FIXOS_03_3: TEdit
        Left = 74
        Top = 28
        Width = 34
        Height = 21
        BevelKind = bkTile
        Color = 11194623
        TabOrder = 2
        Text = '00'
        Visible = False
      end
    end
    object PA_FIXOS_4: TPanel
      Left = 983
      Top = 176
      Width = 84
      Height = 62
      BevelOuter = bvNone
      Color = 8887295
      ParentBackground = False
      TabOrder = 8
      object Label4: TLabel
        Left = 9
        Top = 5
        Width = 59
        Height = 16
        Caption = 'N'#186'  Fixos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_C4: TEdit
        Left = 6
        Top = 28
        Width = 32
        Height = 21
        Color = 10666490
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02_4: TEdit
        Left = 40
        Top = 28
        Width = 32
        Height = 21
        Color = 10666490
        Enabled = False
        TabOrder = 1
        Text = '00'
        Visible = False
      end
    end
    object ED_TSLEEP: TEdit
      Left = 961
      Top = 48
      Width = 30
      Height = 26
      Color = 14413823
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Text = '0'
      Visible = False
    end
  end
  object PA_TOPO: TPanel
    Left = 0
    Top = 0
    Width = 2012
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = 3226437
    ParentBackground = False
    TabOrder = 1
    object Label53: TLabel
      Left = 6
      Top = 5
      Width = 274
      Height = 39
      Caption = 'GERADOR 12 + 3'
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
  object PA_RESULTADO: TPanel
    Left = 0
    Top = 298
    Width = 2012
    Height = 432
    Align = alClient
    Color = 2965835
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      2012
      432)
    object STGR_COMB12: TStringGrid
      Left = 165
      Top = 60
      Width = 699
      Height = 372
      TabStop = False
      Align = alCustom
      Anchors = [akLeft, akTop, akBottom]
      Color = 11194623
      ColCount = 15
      DefaultColWidth = 37
      DefaultRowHeight = 27
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 3
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
      Left = 60
      Top = 304
      Width = 874
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
      Height = 379
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
      object BBT_GERAR_MENU: TBitBtn
        Left = 7
        Top = 13
        Width = 149
        Height = 39
        Caption = 'GERAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -22
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BBT_GERAR_MENUClick
      end
      object BBT_CANCELAR_SAIR: TBitBtn
        Left = 6
        Top = 64
        Width = 151
        Height = 77
        Caption = 'CANCELAR'#13#10'&& SAIR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -18
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = BBT_CANCELARClick
      end
    end
    object PANEL_TITULO_SIMULACAO: TPanel
      Left = 1
      Top = 1
      Width = 2010
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object LA_TOTAL_100REPET: TLabel
        Left = 1393
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
      object PGBR_GERARCOMB: TProgressBar
        Left = 529
        Top = 25
        Width = 844
        Height = 25
        TabOrder = 0
      end
      object PGBR_GERARCOMB0: TProgressBar
        Left = 10
        Top = 25
        Width = 514
        Height = 25
        TabOrder = 1
      end
    end
    object STGR_COMB03: TStringGrid
      Left = 1260
      Top = 60
      Width = 291
      Height = 372
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 11194623
      ColCount = 6
      Ctl3D = True
      DefaultColWidth = 36
      DefaultRowHeight = 27
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object STGR_EXC08: TStringGrid
      Left = 865
      Top = 60
      Width = 395
      Height = 372
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 10666490
      ColCount = 11
      Ctl3D = True
      DefaultColWidth = 28
      DefaultRowHeight = 27
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
    object STGR_EXC02: TStringGrid
      Left = 1553
      Top = 60
      Width = 204
      Height = 372
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 10666490
      Ctl3D = True
      DefaultColWidth = 29
      DefaultRowHeight = 27
      DrawingStyle = gdsClassic
      FixedColor = clMedGray
      FixedCols = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      RowHeights = (
        27
        27
        27
        27
        27)
    end
    object STGR_SOBRAS_13: TStringGrid
      Left = 156
      Top = 233
      Width = 499
      Height = 65
      TabStop = False
      BorderStyle = bsNone
      Color = 11194623
      ColCount = 14
      DefaultColWidth = 30
      DefaultRowHeight = 23
      FixedColor = clMedGray
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 7
      Visible = False
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
        30)
      RowHeights = (
        23
        24)
    end
    object STGR_SOBRAS_10: TStringGrid
      Left = 156
      Top = 172
      Width = 431
      Height = 57
      TabStop = False
      BorderStyle = bsNone
      Color = 10666490
      ColCount = 11
      DefaultColWidth = 33
      DefaultRowHeight = 23
      FixedColor = clGray
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 8
      Visible = False
      RowHeights = (
        23
        24)
    end
  end
  object PA_REMOVEUREPET: TPanel
    Left = 1644
    Top = 42
    Width = 392
    Height = 688
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 2965835
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object Label44: TLabel
      Left = 9
      Top = 9
      Width = 236
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'GERADOR 12 POR 3'
      Color = 11194623
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
      Color = 11194623
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
      Left = 249
      Top = 616
      Width = 122
      Height = 44
      Caption = 'OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BBT_PA_REMOVEUREPETClick
    end
    object BBT_BLOCO_NOTAS: TBitBtn
      Left = 19
      Top = 616
      Width = 187
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
    Left = 1577
    Top = 15
    Width = 317
    Height = 353
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 2965835
    ParentBackground = False
    TabOrder = 4
    object Label55: TLabel
      Left = 24
      Top = 19
      Width = 245
      Height = 26
      Alignment = taCenter
      Caption = 'GERADOR 12 POR 3'
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
    Left = 1265
    Top = 594
    Width = 402
    Height = 136
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 1
    Color = 11194623
    ParentBackground = False
    TabOrder = 5
    object Panel2: TPanel
      Left = 6
      Top = 6
      Width = 390
      Height = 54
      Align = alTop
      BevelInner = bvLowered
      Color = 2965835
      ParentBackground = False
      TabOrder = 0
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
      Left = 19
      Top = 87
      Width = 171
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
    object BBT_GERAR_voltar: TBitBtn
      Left = 226
      Top = 87
      Width = 170
      Height = 36
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_GERAR_voltarClick
    end
  end
  object MEM_COMBINACOES_TODAS: TMemo
    Left = 1930
    Top = 57
    Width = 271
    Height = 254
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
    TabOrder = 6
    Visible = False
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
