object _F_SIM_01_FILTRO_02: T_F_SIM_01_FILTRO_02
  Left = 17
  Top = 117
  Caption = '_F_SIM_01_FILTRO_02'
  ClientHeight = 752
  ClientWidth = 1160
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 110
  TextHeight = 16
  object PA_PAN02: TPanel
    Left = -1
    Top = 131
    Width = 1156
    Height = 624
    BevelWidth = 2
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 0
    DesignSize = (
      1152
      620)
    object Label13: TLabel
      Left = 541
      Top = 396
      Width = 96
      Height = 26
      Caption = '3.021.006'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object LA_TXT1: TLabel
      Left = 19
      Top = 432
      Width = 45
      Height = 16
      Caption = '?????'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_TXT2: TLabel
      Left = 18
      Top = 468
      Width = 7
      Height = 16
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LA_TXT3: TLabel
      Left = 17
      Top = 533
      Width = 7
      Height = 16
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = -3
      Top = 380
      Width = 1186
      Height = 18
      Shape = bsTopLine
    end
    object BBT_M02_SIMULAR_A: TBitBtn
      Left = 44
      Top = 251
      Width = 206
      Height = 31
      Caption = 'FILTRO - MODO A -> 9 X 6'
      TabOrder = 0
      OnClick = BBT_M02_SIMULAR_AClick
    end
    object BBT_M02_SIMULAR_J: TBitBtn
      Left = 707
      Top = 347
      Width = 421
      Height = 31
      Caption = 'SIMULAR - MODO J -> 7 X 8 e 11 X 5'
      TabOrder = 1
      Visible = False
      OnClick = BBT_M02_SIMULAR_JClick
    end
    object BBT_M02_SIMULAR_F: TBitBtn
      Left = 284
      Top = 321
      Width = 261
      Height = 31
      Caption = 'FILTRO - MODO F -> 8 X 7   E  10 X 5'
      TabOrder = 2
      OnClick = BBT_M02_SIMULAR_FClick
    end
    object BBT_PAN02_GERAR: TButton
      Left = 8
      Top = 392
      Width = 85
      Height = 29
      Caption = 'PREPARAR'
      TabOrder = 3
      OnClick = BBT_PAN02_GERARClick
    end
    object STGR_COMBINACOES_15M2: TStringGrid
      Left = 100
      Top = 425
      Width = 764
      Height = 187
      Color = 15005103
      ColCount = 16
      DefaultColWidth = 39
      DefaultRowHeight = 22
      RowCount = 12
      FixedRows = 0
      TabOrder = 4
      RowHeights = (
        23
        22
        22
        22
        22
        22
        22
        22
        22
        22
        22
        22)
    end
    object BBT_M02_ENCERRAR: TButton
      Left = 99
      Top = 392
      Width = 97
      Height = 29
      Caption = 'ENCERRAR'
      TabOrder = 5
      OnClick = BBT_M02_ENCERRARClick
    end
    object BBT_M02_SIMULAR_A_: TBitBtn
      Left = 8
      Top = 251
      Width = 31
      Height = 31
      Caption = 'SIMULAR - MODO A -> SERIE 1 C/ 9 E SERIE 2 C/ 6'
      TabOrder = 6
      Visible = False
      OnClick = BBT_M02_SIMULAR_A_Click
    end
    object BBT_M02_SIMULAR_J_: TBitBtn
      Left = 674
      Top = 347
      Width = 30
      Height = 30
      Caption = 'SIMULAR - MODO B -> SERIE 1 C/ 7 OU 11  E SERIE 2 C/ 4 OU 8'
      TabOrder = 7
      Visible = False
      OnClick = BBT_M02_SIMULAR_J_Click
    end
    object BBT_M02_SIMULAR_F_: TBitBtn
      Left = 665
      Top = 314
      Width = 31
      Height = 31
      Caption = 'SIMULAR - MODO C -> SERIE 1 C/ 8 OU 10 E SERIE 2 C/ 7 OU 5'
      TabOrder = 8
      Visible = False
      OnClick = BBT_M02_SIMULAR_F_Click
    end
    object BitBtn1: TBitBtn
      Left = 698
      Top = 314
      Width = 435
      Height = 31
      Caption = 'SIMULAR   A + B + C -> SERIE 1 C/ 7 a 11   E   SERIE 2 C/ 4 a 8'
      TabOrder = 9
      Visible = False
      OnClick = BitBtn1Click
    end
    object BBT_M02_SIMULAR_B_: TBitBtn
      Left = 8
      Top = 284
      Width = 31
      Height = 31
      Caption = 'SIMULAR - MODO A -> SERIE 1 C/ 9 E SERIE 2 C/ 6'
      TabOrder = 10
      Visible = False
      OnClick = BBT_M02_SIMULAR_B_Click
    end
    object BBT_M02_SIMULAR_C_: TBitBtn
      Left = 8
      Top = 321
      Width = 31
      Height = 31
      Caption = 'SIMULAR - MODO A -> SERIE 1 C/ 9 E SERIE 2 C/ 6'
      TabOrder = 11
      Visible = False
      OnClick = BBT_M02_SIMULAR_C_Click
    end
    object BBT_M02_SIMULAR_B: TBitBtn
      Left = 44
      Top = 284
      Width = 206
      Height = 31
      Caption = 'FILTRO - MODO B -> 8 X 7'
      TabOrder = 12
      OnClick = BBT_M02_SIMULAR_BClick
    end
    object BBT_M02_SIMULAR_C: TBitBtn
      Left = 44
      Top = 321
      Width = 206
      Height = 31
      Caption = 'FILTRO - MODO C -> 10 X 5'
      TabOrder = 13
      OnClick = BBT_M02_SIMULAR_CClick
    end
    object BBT_M02_SIMULAR_D: TBitBtn
      Left = 285
      Top = 251
      Width = 262
      Height = 31
      Caption = 'FILTRO - MODO D -> 9 X 6   E  8 X 7'
      TabOrder = 14
      OnClick = BBT_M02_SIMULAR_DClick
    end
    object BBT_M02_SIMULAR_E: TBitBtn
      Left = 285
      Top = 284
      Width = 262
      Height = 31
      Caption = 'FILTRO - MODO E -> 9 X 6   E  10 X 5'
      TabOrder = 15
      OnClick = BBT_M02_SIMULAR_EClick
    end
    object BBT_M02_SIMULAR_G: TBitBtn
      Left = 678
      Top = 245
      Width = 468
      Height = 31
      Caption = 'FILTRO - MODO G -> 9 X 6   E  8 X 7  E  10 X 5'
      Enabled = False
      TabOrder = 16
      OnClick = BBT_M02_SIMULAR_GClick
    end
    object BitBtn5: TBitBtn
      Left = 678
      Top = 278
      Width = 468
      Height = 31
      Caption = 'FILTRO - MODO H -> 9 X 6   E  8 X 7  E  10 X 5  E  7 X 8'
      Enabled = False
      TabOrder = 17
      OnClick = BitBtn5Click
    end
    object BBT_M02_SIMULAR_H_: TBitBtn
      Left = 631
      Top = 314
      Width = 31
      Height = 31
      Caption = 'SIMULAR - MODO A -> SERIE 1 C/ 9 E SERIE 2 C/ 6'
      TabOrder = 18
      Visible = False
      OnClick = BBT_M02_SIMULAR_H_Click
    end
    object STGR_COMBINACOES_15: TStringGrid
      Left = 887
      Top = 424
      Width = 960
      Height = 191
      Anchors = [akLeft, akTop, akRight]
      Color = 15005103
      ColCount = 64
      DefaultColWidth = 44
      DefaultRowHeight = 22
      FixedColor = 14670792
      RowCount = 12
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      Visible = False
      RowHeights = (
        22
        22
        22
        22
        22
        22
        22
        22
        22
        22
        22
        22)
    end
    object SCBX_GABARITO: TScrollBox
      Left = -7
      Top = 10
      Width = 1156
      Height = 233
      HorzScrollBar.Range = 2996
      VertScrollBar.Range = 194
      VertScrollBar.Visible = False
      Align = alCustom
      AutoScroll = False
      Color = clWindow
      ParentColor = False
      TabOrder = 20
      object Label1: TLabel
        Left = 349
        Top = 6
        Width = 33
        Height = 22
        Caption = '9x6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 905
        Top = 6
        Width = 33
        Height = 22
        Caption = '7x8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 1530
        Top = 6
        Width = 33
        Height = 22
        Caption = '8x7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 2171
        Top = 5
        Width = 44
        Height = 22
        Caption = '10x5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 2804
        Top = 5
        Width = 44
        Height = 22
        Caption = '11x4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object STGR_M02_SERIE1_09: TStringGrid
        Left = 3
        Top = 28
        Width = 359
        Height = 175
        Color = 16121764
        ColCount = 10
        DefaultColWidth = 28
        RowCount = 9
        FixedRows = 0
        TabOrder = 0
        RowHeights = (
          24
          24
          24
          24
          24
          24
          24
          24
          24)
      end
      object STGR_M02_SERIE2_06: TStringGrid
        Left = 363
        Top = 29
        Width = 258
        Height = 175
        Color = 15466404
        ColCount = 7
        DefaultColWidth = 27
        RowCount = 9
        FixedRows = 0
        TabOrder = 1
      end
      object STGR_M02_SERIE1_07: TStringGrid
        Left = 650
        Top = 28
        Width = 272
        Height = 175
        Color = 16121764
        ColCount = 8
        DefaultColWidth = 25
        RowCount = 9
        FixedRows = 0
        TabOrder = 2
      end
      object STGR_M02_SERIE2_08: TStringGrid
        Left = 919
        Top = 28
        Width = 302
        Height = 175
        Color = 15466404
        ColCount = 9
        DefaultColWidth = 25
        RowCount = 9
        FixedRows = 0
        TabOrder = 3
      end
      object STGR_M02_SERIE1_11: TStringGrid
        Left = 2445
        Top = 28
        Width = 388
        Height = 175
        Color = 16121764
        ColCount = 12
        DefaultColWidth = 25
        RowCount = 9
        FixedRows = 0
        TabOrder = 4
      end
      object STGR_M02_SERIE2_04: TStringGrid
        Left = 2827
        Top = 28
        Width = 182
        Height = 175
        Color = 15466404
        DefaultColWidth = 25
        RowCount = 9
        FixedRows = 0
        TabOrder = 5
        RowHeights = (
          24
          24
          24
          24
          24
          24
          24
          24
          24)
      end
      object STGR_M02_SERIE1_08: TStringGrid
        Left = 1252
        Top = 26
        Width = 296
        Height = 176
        Color = 16121764
        ColCount = 9
        DefaultColWidth = 25
        RowCount = 9
        FixedRows = 0
        TabOrder = 6
      end
      object STGR_M02_SERIE2_07: TStringGrid
        Left = 1546
        Top = 26
        Width = 268
        Height = 176
        Color = 15466404
        ColCount = 8
        DefaultColWidth = 25
        RowCount = 9
        FixedRows = 0
        TabOrder = 7
        RowHeights = (
          24
          23
          24
          24
          24
          24
          24
          24
          24)
      end
      object STGR_M02_SERIE1_10: TStringGrid
        Left = 1846
        Top = 26
        Width = 357
        Height = 176
        Color = 16121764
        ColCount = 11
        DefaultColWidth = 25
        RowCount = 9
        FixedRows = 0
        TabOrder = 8
        RowHeights = (
          24
          24
          24
          24
          24
          24
          24
          24
          24)
      end
      object STGR_M02_SERIE2_05: TStringGrid
        Left = 2200
        Top = 26
        Width = 206
        Height = 176
        Color = 15466404
        ColCount = 6
        DefaultColWidth = 25
        RowCount = 9
        FixedRows = 0
        TabOrder = 9
      end
    end
    object BT_CARREGAR: TButton
      Left = 209
      Top = 392
      Width = 97
      Height = 29
      Caption = 'CARREGAR'
      TabOrder = 21
      OnClick = BT_CARREGARClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1160
    Height = 132
    Align = alTop
    ParentColor = True
    TabOrder = 1
    object Label53: TLabel
      Left = 6
      Top = 6
      Width = 166
      Height = 37
      Caption = 'FILTRO 02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -31
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BBT_CLOSE: TImage
      Left = 1397
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
    end
    object BBT_CLICK_TUDO: TButton
      Left = 1336
      Top = 42
      Width = 97
      Height = 30
      Caption = 'Clique Tudo'
      TabOrder = 0
    end
    object BBT_215: TBitBtn
      Left = 772
      Top = 89
      Width = 44
      Height = 38
      Caption = '15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_215Click
    end
    object BBT_214: TBitBtn
      Left = 715
      Top = 89
      Width = 44
      Height = 38
      Caption = '14'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_214Click
    end
    object BBT_213: TBitBtn
      Left = 658
      Top = 89
      Width = 43
      Height = 38
      Caption = '13'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_213Click
    end
    object BBT_212: TBitBtn
      Left = 600
      Top = 89
      Width = 44
      Height = 38
      Caption = '12'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BBT_212Click
    end
    object BBT_211: TBitBtn
      Left = 543
      Top = 89
      Width = 44
      Height = 38
      Caption = '11'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BBT_211Click
    end
    object BBT_210: TBitBtn
      Left = 784
      Top = 40
      Width = 43
      Height = 38
      Caption = '10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BBT_210Click
    end
    object BBT_209: TBitBtn
      Left = 725
      Top = 40
      Width = 44
      Height = 38
      Caption = '9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BBT_209Click
    end
    object BBT_208: TBitBtn
      Left = 669
      Top = 40
      Width = 43
      Height = 38
      Caption = '8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BBT_208Click
    end
    object BBT_207: TBitBtn
      Left = 611
      Top = 40
      Width = 43
      Height = 38
      Caption = '7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BBT_207Click
    end
    object BBT_206: TBitBtn
      Left = 553
      Top = 40
      Width = 44
      Height = 38
      Caption = '6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BBT_206Click
    end
    object BBT_205: TBitBtn
      Left = 773
      Top = 2
      Width = 44
      Height = 38
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BBT_205Click
    end
    object BBT_204: TBitBtn
      Left = 716
      Top = 2
      Width = 44
      Height = 38
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = BBT_204Click
    end
    object BBT_203: TBitBtn
      Left = 659
      Top = 2
      Width = 43
      Height = 38
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = BBT_203Click
    end
    object BBT_202: TBitBtn
      Left = 602
      Top = 2
      Width = 43
      Height = 38
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = BBT_202Click
    end
    object BBT_201: TBitBtn
      Left = 544
      Top = 2
      Width = 44
      Height = 38
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = BBT_201Click
    end
    object BBT_216: TBitBtn
      Left = 862
      Top = 17
      Width = 43
      Height = 38
      Caption = '16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnClick = BBT_216Click
    end
    object BBT_217: TBitBtn
      Left = 919
      Top = 17
      Width = 44
      Height = 38
      Caption = '17'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      OnClick = BBT_217Click
    end
    object BBT_218: TBitBtn
      Left = 976
      Top = 17
      Width = 44
      Height = 38
      Caption = '18'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
      OnClick = BBT_218Click
    end
    object BBT_219: TBitBtn
      Left = 1034
      Top = 17
      Width = 43
      Height = 38
      Caption = '19'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      OnClick = BBT_219Click
    end
    object BBT_220: TBitBtn
      Left = 1092
      Top = 17
      Width = 44
      Height = 38
      Caption = '20'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      OnClick = BBT_220Click
    end
    object BBT_225: TBitBtn
      Left = 1083
      Top = 66
      Width = 43
      Height = 38
      Caption = '25'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      OnClick = BBT_225Click
    end
    object BBT_224: TBitBtn
      Left = 1026
      Top = 66
      Width = 43
      Height = 38
      Caption = '24'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      OnClick = BBT_224Click
    end
    object BBT_223: TBitBtn
      Left = 968
      Top = 66
      Width = 44
      Height = 38
      Caption = '23'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
      OnClick = BBT_223Click
    end
    object BBT_222: TBitBtn
      Left = 911
      Top = 66
      Width = 43
      Height = 38
      Caption = '22'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
      OnClick = BBT_222Click
    end
    object BBT_221: TBitBtn
      Left = 854
      Top = 66
      Width = 43
      Height = 38
      Caption = '21'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
      OnClick = BBT_221Click
    end
    object STGR_M02_SERIE1_INICIAL: TStringGrid
      Left = 3
      Top = 53
      Width = 517
      Height = 30
      Color = 15005103
      ColCount = 16
      DefaultColWidth = 27
      DefaultRowHeight = 22
      RowCount = 1
      FixedRows = 0
      TabOrder = 26
    end
    object STGR_M02_SERIE2_INICIAL: TStringGrid
      Left = 3
      Top = 91
      Width = 407
      Height = 29
      Color = 15005103
      ColCount = 11
      DefaultColWidth = 31
      DefaultRowHeight = 22
      RowCount = 1
      FixedRows = 0
      TabOrder = 27
    end
    object BBT_PAN02_ZERAR: TBitBtn
      Left = 191
      Top = 14
      Width = 71
      Height = 28
      Caption = 'ZERAR'
      TabOrder = 28
      OnClick = BBT_PAN02_ZERARClick
    end
  end
  object PA_LER_GRAVAR_PERCENTUAL: TPanel
    Left = 1273
    Top = 360
    Width = 1180
    Height = 119
    BevelInner = bvRaised
    BevelWidth = 2
    TabOrder = 2
    object LA_LER_GRAVAR_PERCENTUAL_TEXTO1: TLabel
      Left = 16
      Top = 46
      Width = 5
      Height = 19
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object PGBR_LER_GRAVAR_PERCENTUAL: TProgressBar
      Left = 16
      Top = 76
      Width = 1145
      Height = 21
      TabOrder = 0
    end
    object Panel22: TPanel
      Left = 5
      Top = 5
      Width = 1171
      Height = 29
      Align = alTop
      BevelWidth = 3
      TabOrder = 1
      object LA_LER_GRAVAR_PERCENTUAL_TITULO: TLabel
        Left = 16
        Top = 5
        Width = 5
        Height = 21
        Caption = '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object IBQ_COMBINACOES: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM A_RESULTADO_15_DADOS'
      ' ORDER BY DADOS')
    Left = 966
    Top = 72
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    AutoStopAction = saCommitRetaining
    Left = 966
    Top = 44
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
    Left = 966
    Top = 18
  end
end
