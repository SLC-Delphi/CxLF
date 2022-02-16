object _F_GERADOR_3G8C_M1: T_F_GERADOR_3G8C_M1
  Left = 15
  Top = 160
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = '_F_GERADOR_3G8C_M1'
  ClientHeight = 721
  ClientWidth = 1613
  Color = 4279125
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
    Width = 1613
    Height = 249
    HorzScrollBar.Range = 1432
    VertScrollBar.Range = 194
    VertScrollBar.Visible = False
    Align = alTop
    AutoScroll = False
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Color = 5600075
    ParentColor = False
    TabOrder = 0
    object Label7: TLabel
      Left = 9
      Top = 22
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
      Left = 245
      Top = -1
      Width = 927
      Height = 57
      TabStop = False
      BorderStyle = bsNone
      Color = 13691095
      ColCount = 26
      DefaultColWidth = 30
      DefaultRowHeight = 23
      FixedColor = clMedGray
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 1
      RowHeights = (
        23
        24)
    end
    object PA_COLUNA1: TPanel
      Left = 6
      Top = 65
      Width = 187
      Height = 93
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 8555519
      ParentBackground = False
      TabOrder = 2
      object Label56: TLabel
        Left = 5
        Top = 5
        Width = 162
        Height = 32
        Caption = 'Somat'#243'ria para a Coluna 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label1: TLabel
        Left = 44
        Top = 33
        Width = 140
        Height = 16
        Caption = '2I e 2P  - N'#227'o Sorteados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 57
        Top = 66
        Width = 64
        Height = 19
        Caption = 'Grupo 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ED_SOMAS_C1_INI: TEdit
        Left = 5
        Top = 25
        Width = 29
        Height = 22
        TabStop = False
        BevelKind = bkTile
        Color = 12439295
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '52'
      end
    end
    object PA_COLUNA2: TPanel
      Left = 199
      Top = 64
      Width = 178
      Height = 60
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6074231
      ParentBackground = False
      TabOrder = 3
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
      object Label2: TLabel
        Left = 38
        Top = 30
        Width = 87
        Height = 16
        Caption = '3P  - Sorteados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMAS_C2_INI: TEdit
        Left = 5
        Top = 25
        Width = 28
        Height = 22
        TabStop = False
        Color = 13691095
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '38'
      end
    end
    object PA_COLUNA4: TPanel
      Left = 563
      Top = 64
      Width = 177
      Height = 60
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6074231
      ParentBackground = False
      TabOrder = 5
      object Label25: TLabel
        Left = 1
        Top = 5
        Width = 159
        Height = 32
        Caption = 'Somat'#243'ria para a coluna 4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label3: TLabel
        Left = 38
        Top = 30
        Width = 113
        Height = 16
        Caption = '2I e 1P  - Sorteados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMAS_C4_INI: TEdit
        Left = 5
        Top = 25
        Width = 28
        Height = 22
        TabStop = False
        Color = 13691095
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '38'
      end
    end
    object PA_COLUNA3: TPanel
      Left = 382
      Top = 64
      Width = 177
      Height = 60
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6074231
      ParentBackground = False
      TabOrder = 4
      object Label72: TLabel
        Left = 0
        Top = 5
        Width = 159
        Height = 32
        Caption = 'Somat'#243'ria para a coluna 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label4: TLabel
        Left = 38
        Top = 30
        Width = 85
        Height = 16
        Caption = '3I  - Sorteados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMAS_C3_INI: TEdit
        Left = 5
        Top = 25
        Width = 28
        Height = 22
        TabStop = False
        BevelKind = bkTile
        Color = 13691095
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '39'
      end
    end
    object ED_TSLEEP: TEdit
      Left = 13
      Top = -7
      Width = 29
      Height = 26
      Color = 13691095
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      Visible = False
    end
    object PA_COLUNA5: TPanel
      Left = 743
      Top = 64
      Width = 177
      Height = 60
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6074231
      ParentBackground = False
      TabOrder = 6
      object Label5: TLabel
        Left = 1
        Top = 5
        Width = 159
        Height = 32
        Caption = 'Somat'#243'ria para a coluna 5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label6: TLabel
        Left = 38
        Top = 30
        Width = 113
        Height = 16
        Caption = '1I e 2P  - Sorteados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMAS_C5_INI: TEdit
        Left = 5
        Top = 25
        Width = 28
        Height = 22
        TabStop = False
        Color = 13691095
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '41'
      end
    end
    object Panel3: TPanel
      Left = 199
      Top = 126
      Width = 721
      Height = 32
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6074231
      ParentBackground = False
      TabOrder = 7
      object Label8: TLabel
        Left = 233
        Top = 5
        Width = 138
        Height = 19
        Caption = 'Soma do Grupo 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ED_SOMAS_G2_INI: TEdit
        Left = 384
        Top = 3
        Width = 34
        Height = 22
        TabStop = False
        Color = 13691095
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
    end
    object PA_COLUNA6: TPanel
      Left = 933
      Top = 63
      Width = 190
      Height = 60
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6599679
      ParentBackground = False
      TabOrder = 8
      object Label9: TLabel
        Left = 0
        Top = 5
        Width = 159
        Height = 32
        Caption = 'Somat'#243'ria para a coluna 6:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label10: TLabel
        Left = 73
        Top = 31
        Width = 112
        Height = 16
        Caption = '3I  - N'#227'o Sorteados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMAS_C6_INI: TEdit
        Left = 5
        Top = 26
        Width = 59
        Height = 22
        TabStop = False
        Color = 12312831
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '39'
      end
    end
    object PA_COLUNA7: TPanel
      Left = 1126
      Top = 63
      Width = 216
      Height = 60
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6599679
      ParentBackground = False
      TabOrder = 9
      object Label11: TLabel
        Left = 0
        Top = 5
        Width = 159
        Height = 32
        Caption = 'Somat'#243'ria para a coluna 7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label12: TLabel
        Left = 74
        Top = 31
        Width = 140
        Height = 16
        Caption = '1I e 2P  - N'#227'o Sorteados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMAS_C7_INI: TEdit
        Left = 5
        Top = 26
        Width = 65
        Height = 22
        TabStop = False
        BevelKind = bkTile
        Color = 12312831
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '39'
      end
    end
    object PA_COLUNA8: TPanel
      Left = 1345
      Top = 63
      Width = 213
      Height = 60
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6599679
      ParentBackground = False
      TabOrder = 10
      object Label13: TLabel
        Left = 1
        Top = 5
        Width = 159
        Height = 32
        Caption = 'Somat'#243'ria para a coluna 8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label14: TLabel
        Left = 77
        Top = 31
        Width = 140
        Height = 16
        Caption = '1I e 2P  - N'#227'o Sorteados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMAS_C8_INI: TEdit
        Left = 5
        Top = 26
        Width = 65
        Height = 22
        TabStop = False
        Color = 12312831
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '39'
      end
    end
    object Panel7: TPanel
      Left = 933
      Top = 126
      Width = 626
      Height = 32
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6599679
      ParentBackground = False
      TabOrder = 11
      object Label15: TLabel
        Left = 147
        Top = 6
        Width = 315
        Height = 19
        Caption = 'Grupo 3 - Apenas 1 sorteado por coluna'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object PA_FIXOS_C1: TPanel
      Left = 6
      Top = 163
      Width = 83
      Height = 80
      BevelOuter = bvNone
      Color = 8887295
      ParentBackground = False
      TabOrder = 12
      object Label16: TLabel
        Left = 3
        Top = 5
        Width = 78
        Height = 32
        Caption = 'N'#186'  Excluido:'#13'Coluna 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_C1: TEdit
        Left = 23
        Top = 48
        Width = 29
        Height = 23
        Color = 10666490
        TabOrder = 0
        Text = '02'
      end
    end
    object PA_FIXOS_C2: TPanel
      Left = 199
      Top = 163
      Width = 84
      Height = 80
      BevelOuter = bvNone
      Color = 6074231
      ParentBackground = False
      TabOrder = 13
      object Label17: TLabel
        Left = 9
        Top = 5
        Width = 59
        Height = 32
        Caption = 'N'#186'  Fixos:'#13'Coluna 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_C2: TEdit
        Left = 23
        Top = 48
        Width = 27
        Height = 23
        Color = 13691095
        TabOrder = 0
        Text = '00'
      end
    end
    object PA_FIXOS_C3: TPanel
      Left = 288
      Top = 163
      Width = 83
      Height = 80
      BevelOuter = bvNone
      Color = 6074231
      ParentBackground = False
      TabOrder = 14
      object Label20: TLabel
        Left = 9
        Top = 5
        Width = 59
        Height = 32
        Caption = 'N'#186'  Fixos:'#13'Coluna 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_C3: TEdit
        Left = 23
        Top = 48
        Width = 27
        Height = 23
        Color = 13691095
        TabOrder = 0
        Text = '15'
      end
    end
    object PA_FIXOS_C4: TPanel
      Left = 376
      Top = 163
      Width = 83
      Height = 80
      BevelOuter = bvNone
      Color = 6074231
      ParentBackground = False
      TabOrder = 15
      object Label21: TLabel
        Left = 9
        Top = 5
        Width = 59
        Height = 32
        Caption = 'N'#186'  Fixos:'#13'Coluna 4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_C4: TEdit
        Left = 23
        Top = 48
        Width = 27
        Height = 23
        Color = 13691095
        TabOrder = 0
        Text = '10'
      end
    end
    object PA_FIXOS_C5: TPanel
      Left = 464
      Top = 163
      Width = 84
      Height = 80
      BevelOuter = bvNone
      Color = 6074231
      ParentBackground = False
      TabOrder = 16
      object Label22: TLabel
        Left = 9
        Top = 5
        Width = 59
        Height = 32
        Caption = 'N'#186'  Fixos:'#13'Coluna 5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_C5: TEdit
        Left = 23
        Top = 48
        Width = 27
        Height = 23
        Color = 13691095
        TabOrder = 0
        Text = '00'
      end
    end
    object PA_FIXOS_C6: TPanel
      Left = 933
      Top = 164
      Width = 83
      Height = 80
      BevelOuter = bvNone
      Color = 6599679
      ParentBackground = False
      TabOrder = 17
      object Label23: TLabel
        Left = 9
        Top = 5
        Width = 59
        Height = 32
        Caption = 'N'#186'  Fixos:'#13'Coluna 6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_C6: TEdit
        Left = 23
        Top = 48
        Width = 27
        Height = 23
        Color = 12312831
        TabOrder = 0
        Text = '00'
      end
    end
    object PA_FIXOS_C7: TPanel
      Left = 1023
      Top = 164
      Width = 84
      Height = 80
      BevelOuter = bvNone
      Color = 6599679
      ParentBackground = False
      TabOrder = 18
      object Label24: TLabel
        Left = 9
        Top = 5
        Width = 59
        Height = 32
        Caption = 'N'#186'  Fixos:'#13'Coluna 7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_C7: TEdit
        Left = 23
        Top = 48
        Width = 27
        Height = 23
        Color = 12312831
        TabOrder = 0
        Text = '00'
      end
    end
    object PA_FIXOS_C8: TPanel
      Left = 1113
      Top = 164
      Width = 83
      Height = 80
      BevelOuter = bvNone
      Color = 6599679
      ParentBackground = False
      TabOrder = 19
      object Label26: TLabel
        Left = 9
        Top = 5
        Width = 59
        Height = 32
        Caption = 'N'#186'  Fixos:'#13'Coluna 8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_C8: TEdit
        Left = 23
        Top = 48
        Width = 27
        Height = 23
        Color = 12312831
        TabOrder = 0
        Text = '00'
      end
    end
  end
  object PA_TOPO: TPanel
    Left = 0
    Top = 0
    Width = 1613
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = 4218880
    ParentBackground = False
    TabOrder = 1
    object Label53: TLabel
      Left = 6
      Top = 5
      Width = 731
      Height = 39
      Caption = 'GERADOR 3 GRUPOS e 8 COLUNAS modelos 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object BBT_CLOSE: TImage
      Left = 1573
      Top = 5
      Width = 37
      Height = 36
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
  end
  object PA_RESULTADO: TPanel
    Left = 0
    Top = 298
    Width = 1613
    Height = 423
    Align = alClient
    Color = 3630391
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      1613
      423)
    object PageControl_RESULTADO: TPageControl
      Left = 167
      Top = 54
      Width = 1443
      Height = 361
      ActivePage = TBS_PREPARAR
      Anchors = [akLeft, akTop, akRight, akBottom]
      MultiLine = True
      TabHeight = 25
      TabOrder = 5
      OnEnter = PageControl_RESULTADOEnter
      object TBS_INICIAR: TTabSheet
        Caption = 'TBS_INICIAR'
        ImageIndex = 4
        ExplicitWidth = 1251
        ExplicitHeight = 280
        object SCBX_INICIAR: TScrollBox
          Left = 0
          Top = 0
          Width = 1435
          Height = 321
          HorzScrollBar.Range = 2441
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoScroll = False
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          object Bevel1: TBevel
            Left = 9
            Top = 16
            Width = 1178
            Height = 49
          end
          object Label18: TLabel
            Left = 442
            Top = 6
            Width = 148
            Height = 21
            Caption = 'INICIAR - ETAPA 1'
            Color = 2310435
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -18
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object Bevel2: TBevel
            Left = 1228
            Top = 16
            Width = 1182
            Height = 49
          end
          object Label19: TLabel
            Left = 1656
            Top = 6
            Width = 148
            Height = 21
            Caption = 'INICIAR - ETAPA 2'
            Color = 2310435
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCream
            Font.Height = -18
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object STGR_COLUNA_01e02_SOBRAS: TStringGrid
            Left = 1653
            Top = 41
            Width = 759
            Height = 267
            TabStop = False
            Align = alCustom
            Anchors = [akLeft, akTop, akBottom]
            BorderStyle = bsNone
            Color = 12050175
            ColCount = 19
            DefaultColWidth = 32
            DefaultRowHeight = 27
            DrawingStyle = gdsClassic
            FixedColor = clMedGray
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
            ParentFont = False
            TabOrder = 0
          end
          object STGR_COLUNA_01_com02: TStringGrid
            Left = 1227
            Top = 41
            Width = 425
            Height = 267
            TabStop = False
            Align = alCustom
            Anchors = [akLeft, akTop, akBottom]
            BorderStyle = bsNone
            Color = 13560022
            ColCount = 10
            DefaultColWidth = 32
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
            Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
            ParentFont = False
            TabOrder = 1
            ColWidths = (
              32
              32
              32
              32
              32
              32
              32
              32
              32
              32)
          end
          object STGR_COLUNA_01_SOBRAS: TStringGrid
            Left = 321
            Top = 40
            Width = 867
            Height = 267
            TabStop = False
            Align = alCustom
            Anchors = [akLeft, akTop, akBottom]
            BorderStyle = bsNone
            Color = 10666490
            ColCount = 22
            DefaultColWidth = 32
            DefaultRowHeight = 27
            DrawingStyle = gdsClassic
            FixedColor = clMedGray
            RowCount = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
            ParentFont = False
            TabOrder = 2
          end
          object STGR_COLUNA_01: TStringGrid
            Left = 7
            Top = 40
            Width = 313
            Height = 267
            TabStop = False
            Align = alCustom
            Anchors = [akLeft, akTop, akBottom]
            BorderStyle = bsNone
            Color = 10666490
            ColCount = 7
            DefaultColWidth = 32
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
            Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
            ParentFont = False
            TabOrder = 3
            ColWidths = (
              32
              32
              32
              32
              32
              32
              32)
          end
        end
      end
      object TBS_PREPARAR: TTabSheet
        Caption = 'PREPARAR - GRUPO 2'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          1435
          326)
        object STGR_COLUNA_02: TStringGrid
          Left = 2
          Top = 3
          Width = 271
          Height = 312
          TabStop = False
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          Color = 13691095
          ColCount = 6
          DefaultColWidth = 31
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
        object STGR_COLUNA_03: TStringGrid
          Left = 281
          Top = 3
          Width = 250
          Height = 312
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 13691095
          ColCount = 6
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
          TabOrder = 1
          RowHeights = (
            27
            27
            27
            27
            27)
        end
        object STGR_COLUNA_04: TStringGrid
          Left = 535
          Top = 3
          Width = 250
          Height = 312
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 13691095
          ColCount = 6
          Ctl3D = True
          DefaultColWidth = 28
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
          TabOrder = 2
        end
        object STGR_COLUNA_05: TStringGrid
          Left = 791
          Top = 3
          Width = 255
          Height = 312
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 13691095
          ColCount = 6
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
          TabOrder = 3
          RowHeights = (
            27
            27
            27
            27
            27)
        end
        object STGR_COLUNA_03e04e05_SOBRAS: TStringGrid
          Left = 1052
          Top = 3
          Width = 369
          Height = 312
          TabStop = False
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          BorderStyle = bsNone
          Color = 12050175
          ColCount = 10
          DefaultColWidth = 27
          DefaultRowHeight = 27
          DrawingStyle = gdsClassic
          FixedColor = clMedGray
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          ParentFont = False
          TabOrder = 4
        end
      end
      object TBS_ETAPA2: TTabSheet
        Caption = 'GERAR - GRUPO3'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          1435
          326)
        object STGR_COLUNA_06: TStringGrid
          Left = -1
          Top = 3
          Width = 247
          Height = 312
          TabStop = False
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          Color = 12312831
          ColCount = 6
          DefaultColWidth = 28
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
        object STGR_COLUNA_07: TStringGrid
          Left = 248
          Top = 3
          Width = 248
          Height = 312
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12312831
          ColCount = 6
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
          TabOrder = 1
          RowHeights = (
            27
            27
            27
            27
            27)
        end
        object STGR_COLUNA_08: TStringGrid
          Left = 496
          Top = 3
          Width = 250
          Height = 312
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12312831
          ColCount = 6
          Ctl3D = True
          DefaultColWidth = 28
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
          TabOrder = 2
        end
        object STGR_COLUNA_09: TStringGrid
          Left = 752
          Top = 3
          Width = 221
          Height = 312
          TabStop = False
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          Color = 13691095
          DefaultColWidth = 28
          DefaultRowHeight = 27
          DrawingStyle = gdsClassic
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
          TabOrder = 3
        end
        object STGR_COLUNA_10: TStringGrid
          Left = 975
          Top = 2
          Width = 457
          Height = 312
          TabStop = False
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          Color = 12312831
          ColCount = 13
          DefaultColWidth = 27
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
          TabOrder = 4
        end
      end
      object TBS_RESULTADO: TTabSheet
        Caption = 'RESULTADO'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          1435
          326)
        object DBG_RESULTADO: TDBGrid
          Left = 0
          Top = 0
          Width = 744
          Height = 307
          Anchors = [akLeft, akTop, akBottom]
          Color = 13691095
          DataSource = DS1
          DrawingStyle = gdsClassic
          FixedColor = clGreen
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        ImageIndex = 3
        OnEnter = TabSheet1Enter
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
    object PA_EXECUTAR_FILTRO: TPanel
      Left = 1
      Top = 52
      Width = 161
      Height = 370
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 1
      object BBT_GERAR_MENU: TBitBtn
        Left = 7
        Top = 48
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
        Top = 92
        Width = 149
        Height = 76
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
      object BBT_PREPARAR: TBitBtn
        Left = 6
        Top = 172
        Width = 149
        Height = 39
        Caption = 'PREPARAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -22
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BBT_PREPARARClick
      end
      object BBT_INICIAR: TBitBtn
        Left = 8
        Top = 6
        Width = 149
        Height = 39
        Caption = 'INICIAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -22
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BBT_INICIARClick
      end
    end
    object PANEL_TITULO_SIMULACAO: TPanel
      Left = 1
      Top = 1
      Width = 1611
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object LA_TOTAL_100REPET: TLabel
        Left = 1491
        Top = 3
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
        Left = 794
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
        Left = 431
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
      object LA_RESULTADO_TXT: TLabel
        Left = 171
        Top = 26
        Width = 155
        Height = 21
        Caption = '...............................'
        Color = 2310435
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -18
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object PGBR_GERARCOMB0: TProgressBar
        Left = 321
        Top = 25
        Width = 467
        Height = 25
        TabOrder = 0
      end
      object PGBR_GERARCOMB1: TProgressBar
        Left = 791
        Top = 25
        Width = 539
        Height = 25
        TabOrder = 1
      end
    end
    object STGR_SOBRAS_15: TStringGrid
      Left = 5
      Top = 277
      Width = 574
      Height = 66
      TabStop = False
      BorderStyle = bsNone
      Color = 13691095
      ColCount = 16
      DefaultColWidth = 30
      DefaultRowHeight = 23
      FixedColor = clMedGray
      RowCount = 2
      TabOrder = 3
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
        30
        30
        30)
      RowHeights = (
        23
        24)
    end
    object STGR_SOBRAS_12: TStringGrid
      Left = 575
      Top = 285
      Width = 512
      Height = 58
      TabStop = False
      BorderStyle = bsNone
      Color = 13691095
      ColCount = 13
      DefaultColWidth = 33
      DefaultRowHeight = 23
      FixedColor = clGray
      RowCount = 2
      TabOrder = 4
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
        33)
      RowHeights = (
        23
        24)
    end
    object STRGR_TODOS_NUMEROS: TStringGrid
      Left = 25
      Top = 341
      Width = 874
      Height = 57
      Color = 16119214
      ColCount = 26
      DefaultColWidth = 26
      DefaultRowHeight = 20
      RowCount = 2
      FixedRows = 0
      TabOrder = 0
      Visible = False
    end
    object STGR_SOBRAS_06: TStringGrid
      Left = 1076
      Top = 278
      Width = 278
      Height = 58
      TabStop = False
      BorderStyle = bsNone
      Color = 12050175
      ColCount = 7
      DefaultColWidth = 33
      DefaultRowHeight = 23
      FixedColor = clGray
      RowCount = 2
      TabOrder = 6
      Visible = False
      ColWidths = (
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
    object STGR_SOBRAS_03: TStringGrid
      Left = 1351
      Top = 278
      Width = 176
      Height = 58
      TabStop = False
      BorderStyle = bsNone
      Color = 12050175
      ColCount = 4
      DefaultColWidth = 33
      DefaultRowHeight = 23
      FixedColor = clGray
      RowCount = 2
      TabOrder = 7
      Visible = False
      ColWidths = (
        33
        33
        33
        33)
      RowHeights = (
        23
        24)
    end
  end
  object PA_REMOVEUREPET: TPanel
    Left = 1582
    Top = 15
    Width = 392
    Height = 687
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 4218880
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
      Width = 212
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'GERADOR 3G8C 1'
      Color = 13691095
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
      Color = 13691095
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
      Visible = False
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
      Visible = False
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
      Visible = False
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
      Visible = False
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
      Visible = False
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
      Visible = False
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
      Visible = False
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
      Visible = False
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
    Left = 1549
    Top = 84
    Width = 318
    Height = 353
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 4218880
    ParentBackground = False
    TabOrder = 4
    object Label55: TLabel
      Left = 24
      Top = 19
      Width = 219
      Height = 26
      Alignment = taCenter
      Caption = 'GERADOR 3G8C 1'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
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
    Left = 1461
    Top = 532
    Width = 403
    Height = 136
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 1
    Color = 6074231
    ParentBackground = False
    TabOrder = 5
    object Panel2: TPanel
      Left = 6
      Top = 6
      Width = 392
      Height = 54
      Align = alTop
      BevelInner = bvLowered
      Color = 4218880
      ParentBackground = False
      TabOrder = 0
      object Label63: TLabel
        Left = 60
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
      Left = 14
      Top = 87
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
    object BBT_GERAR_voltar: TBitBtn
      Left = 218
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
    Left = 1230
    Top = 6
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultAction = TACommitRetaining
    Left = 1230
    Top = 33
  end
  object IBQ_COMBINACOES: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT FIRST 10 *'
      ' FROM  FILTRO_3G8C_M1_DADOS4'
      'ORDER BY CONTADOR')
    Left = 1230
    Top = 65
  end
  object DS1: TDataSource
    DataSet = IBQ_COMBINACOES
    Left = 1224
    Top = 96
  end
  object IBQ_COMBINACOES2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT FIRST 10 *'
      ' FROM  FILTRO_3G8C_M1_DADOS4'
      'ORDER BY CONTADOR')
    Left = 1272
    Top = 66
  end
  object DS2: TDataSource
    DataSet = IBQ_COMBINACOES2
    Left = 1266
    Top = 97
  end
end
