object _FRM_SIMULACAO3: T_FRM_SIMULACAO3
  Left = 9
  Top = 158
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = '_FRM_SIMULACAO3'
  ClientHeight = 756
  ClientWidth = 1720
  Color = 5588565
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
  object Label3: TLabel
    Left = 72
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
  object SCBX_GABARITO: TScrollBox
    Left = 0
    Top = 49
    Width = 1720
    Height = 270
    HorzScrollBar.Range = 2177
    VertScrollBar.Range = 194
    VertScrollBar.Visible = False
    Align = alTop
    AutoScroll = False
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Color = 7169405
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
    object Label52: TLabel
      Left = 1813
      Top = 132
      Width = 18
      Height = 26
      Caption = 'D'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -22
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label54: TLabel
      Left = 1813
      Top = 94
      Width = 16
      Height = 26
      Caption = 'C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -22
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label57: TLabel
      Left = 1813
      Top = 55
      Width = 17
      Height = 26
      Caption = 'B'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -22
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label59: TLabel
      Left = 1815
      Top = 15
      Width = 17
      Height = 26
      Caption = 'A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -22
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 1485
      Top = -3
      Width = 29
      Height = 261
      Shape = bsLeftLine
      Style = bsRaised
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
      DrawingStyle = gdsGradient
      FixedColor = clMedGray
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 1
      RowHeights = (
        23
        24)
    end
    object PA_COLUNA1: TPanel
      Left = 1258
      Top = 64
      Width = 201
      Height = 103
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 5935605
      ParentBackground = False
      TabOrder = 2
      object Label56: TLabel
        Left = 0
        Top = 7
        Width = 186
        Height = 16
        Caption = 'Somat'#243'ria para a Coluna 8/9:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 44
        Top = 40
        Width = 140
        Height = 16
        Caption = '4I e 2P  - N'#227'o Sorteados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 70
        Top = 74
        Width = 64
        Height = 19
        Caption = 'Grupo 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ED_SOMAS_G3_INI: TEdit
        Left = 5
        Top = 36
        Width = 29
        Height = 22
        TabStop = False
        BevelKind = bkTile
        Color = 11396351
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '78'
      end
      object ED_SOMAS_C8e9_INI: TEdit
        Left = 1
        Top = 72
        Width = 29
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
        TabOrder = 1
        Text = '14'
        Visible = False
      end
      object ED_SOMAS_C8e9_FINAL: TEdit
        Left = 31
        Top = 72
        Width = 29
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
        TabOrder = 2
        Text = '64'
        Visible = False
      end
    end
    object PA_COLUNA2: TPanel
      Left = 5
      Top = 64
      Width = 174
      Height = 69
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6403407
      ParentBackground = False
      TabOrder = 3
      object Label61: TLabel
        Left = 0
        Top = 2
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
      object Label2: TLabel
        Left = 2
        Top = 18
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
      object ED_SOMAS_C1_INI: TEdit
        Left = 5
        Top = 38
        Width = 28
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
        Text = '38'
      end
    end
    object PA_COLUNA4: TPanel
      Left = 356
      Top = 64
      Width = 176
      Height = 69
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6403407
      ParentBackground = False
      TabOrder = 5
      object Label25: TLabel
        Left = 1
        Top = 2
        Width = 167
        Height = 16
        Caption = 'Somat'#243'ria para a coluna 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 2
        Top = 18
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
      object ED_SOMAS_C3_INI: TEdit
        Left = 5
        Top = 38
        Width = 28
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
        Text = '39'
      end
    end
    object PA_COLUNA3: TPanel
      Left = 181
      Top = 64
      Width = 172
      Height = 69
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6403407
      ParentBackground = False
      TabOrder = 4
      object Label72: TLabel
        Left = 0
        Top = 2
        Width = 159
        Height = 32
        Caption = 'Somat'#243'ria para a coluna 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label4: TLabel
        Left = 2
        Top = 18
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
      object ED_SOMAS_C2_INI: TEdit
        Left = 5
        Top = 38
        Width = 28
        Height = 22
        TabStop = False
        BevelKind = bkTile
        Color = 13691095
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
      Left = 535
      Top = 64
      Width = 169
      Height = 69
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6403407
      ParentBackground = False
      TabOrder = 6
      object Label5: TLabel
        Left = 0
        Top = 2
        Width = 167
        Height = 16
        Caption = 'Somat'#243'ria para a coluna 4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 2
        Top = 18
        Width = 109
        Height = 16
        Caption = '2I e 1P - Sorteados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMAS_C4_INI: TEdit
        Left = 5
        Top = 38
        Width = 28
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
        Text = '40'
      end
    end
    object Panel3: TPanel
      Left = 5
      Top = 136
      Width = 699
      Height = 32
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6403407
      ParentBackground = False
      TabOrder = 7
      object Label8: TLabel
        Left = 156
        Top = 5
        Width = 138
        Height = 19
        Caption = 'Soma do Grupo 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ED_SOMAS_G1_INI: TEdit
        Left = 307
        Top = 3
        Width = 30
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
      Left = 709
      Top = 63
      Width = 176
      Height = 69
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6583295
      ParentBackground = False
      TabOrder = 8
      object Label9: TLabel
        Left = 0
        Top = 2
        Width = 171
        Height = 16
        Caption = 'Somat'#243'ria para a coluna 5:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 3
        Top = 18
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
      object ED_SOMAS_C5_INI: TEdit
        Left = 5
        Top = 38
        Width = 47
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
      Left = 889
      Top = 63
      Width = 177
      Height = 69
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6583295
      ParentBackground = False
      TabOrder = 9
      object Label11: TLabel
        Left = 0
        Top = 2
        Width = 171
        Height = 16
        Caption = 'Somat'#243'ria para a coluna 6:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 5
        Top = 18
        Width = 140
        Height = 16
        Caption = '1I e 1P  - N'#227'o Sorteados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMAS_C6_INI: TEdit
        Left = 5
        Top = 38
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
        Text = '27'
      end
    end
    object PA_COLUNA8: TPanel
      Left = 1071
      Top = 63
      Width = 178
      Height = 69
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6583295
      ParentBackground = False
      TabOrder = 10
      object Label13: TLabel
        Left = 1
        Top = 2
        Width = 171
        Height = 16
        Caption = 'Somat'#243'ria para a coluna 7:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 3
        Top = 18
        Width = 140
        Height = 16
        Caption = '1I e 1P  - N'#227'o Sorteados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMAS_C7_INI: TEdit
        Left = 5
        Top = 38
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
        Text = '25'
      end
    end
    object Panel7: TPanel
      Left = 708
      Top = 136
      Width = 542
      Height = 32
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 6583295
      ParentBackground = False
      TabOrder = 11
      object Label15: TLabel
        Left = 227
        Top = 6
        Width = 64
        Height = 19
        Caption = 'Grupo 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ED_SOMAS_G2_INI: TEdit
        Left = 304
        Top = 3
        Width = 29
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
        Text = '91'
      end
    end
    object PA_FIXOS_C1: TPanel
      Left = 1258
      Top = 171
      Width = 84
      Height = 72
      BevelOuter = bvNone
      Color = 6403407
      ParentBackground = False
      TabOrder = 12
      object Label16: TLabel
        Left = 3
        Top = 1
        Width = 57
        Height = 32
        Caption = 'N'#186'  Fixo :'#13'Coluna 8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_C8: TEdit
        Left = 23
        Top = 39
        Width = 29
        Height = 23
        Color = 13691095
        TabOrder = 0
        Text = '0'
      end
    end
    object PA_FIXOS_C2: TPanel
      Left = 5
      Top = 172
      Width = 83
      Height = 72
      BevelOuter = bvNone
      Color = 6403407
      ParentBackground = False
      TabOrder = 13
      object Label17: TLabel
        Left = 9
        Top = 1
        Width = 59
        Height = 32
        Caption = 'N'#186'  Fixos:'#13'Coluna 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01_C1: TEdit
        Left = 23
        Top = 39
        Width = 27
        Height = 23
        Color = 13691095
        TabOrder = 0
        Text = '16'
      end
    end
    object PA_FIXOS_C3: TPanel
      Left = 93
      Top = 172
      Width = 83
      Height = 72
      BevelOuter = bvNone
      Color = 6403407
      ParentBackground = False
      TabOrder = 14
      object Label20: TLabel
        Left = 9
        Top = 1
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
        Top = 39
        Width = 27
        Height = 23
        Color = 13691095
        TabOrder = 0
        Text = '0'
      end
    end
    object PA_FIXOS_C4: TPanel
      Left = 181
      Top = 172
      Width = 84
      Height = 72
      BevelOuter = bvNone
      Color = 6403407
      ParentBackground = False
      TabOrder = 15
      object Label21: TLabel
        Left = 9
        Top = 1
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
        Top = 39
        Width = 27
        Height = 23
        Color = 13691095
        TabOrder = 0
        Text = '14'
      end
    end
    object PA_FIXOS_C5: TPanel
      Left = 269
      Top = 172
      Width = 84
      Height = 72
      BevelOuter = bvNone
      Color = 6403407
      ParentBackground = False
      TabOrder = 16
      object Label22: TLabel
        Left = 9
        Top = 1
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
        Top = 39
        Width = 27
        Height = 23
        Color = 13691095
        TabOrder = 0
        Text = '00'
      end
    end
    object PA_FIXOS_C6: TPanel
      Left = 709
      Top = 173
      Width = 84
      Height = 72
      BevelOuter = bvNone
      Color = 6583295
      ParentBackground = False
      TabOrder = 17
      object Label23: TLabel
        Left = 9
        Top = 1
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
        Top = 40
        Width = 27
        Height = 23
        Color = 12312831
        TabOrder = 0
        Text = '0'
      end
    end
    object PA_FIXOS_C7: TPanel
      Left = 800
      Top = 173
      Width = 83
      Height = 72
      BevelOuter = bvNone
      Color = 6583295
      ParentBackground = False
      TabOrder = 18
      object Label24: TLabel
        Left = 9
        Top = 1
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
        Top = 40
        Width = 27
        Height = 23
        Color = 12312831
        TabOrder = 0
        Text = '0'
      end
    end
    object PA_FIXOS_C8: TPanel
      Left = 889
      Top = 173
      Width = 84
      Height = 72
      BevelOuter = bvNone
      Color = 6583295
      ParentBackground = False
      TabOrder = 19
      object Label26: TLabel
        Left = 9
        Top = 1
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
        Top = 40
        Width = 27
        Height = 23
        Color = 12312831
        TabOrder = 0
        Text = '5'
      end
    end
    object BBT_725: TBitBtn
      Left = 1721
      Top = 79
      Width = 41
      Height = 36
      Caption = '25'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      OnClick = BBT_725Click
    end
    object BBT_724: TBitBtn
      Left = 1690
      Top = 212
      Width = 41
      Height = 36
      Caption = '24'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8219136
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      OnClick = BBT_724Click
    end
    object BBT_723: TBitBtn
      Left = 1664
      Top = 79
      Width = 41
      Height = 36
      Caption = '23'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      OnClick = BBT_723Click
    end
    object BBT_722: TBitBtn
      Left = 1633
      Top = 212
      Width = 41
      Height = 36
      Caption = '22'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8219136
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
      OnClick = BBT_722Click
    end
    object BBT_721: TBitBtn
      Left = 1606
      Top = 79
      Width = 42
      Height = 36
      Caption = '21'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
      OnClick = BBT_721Click
    end
    object BBT_720: TBitBtn
      Left = 1576
      Top = 212
      Width = 41
      Height = 36
      Caption = '20'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8219136
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
      OnClick = BBT_720Click
    end
    object BBT_718: TBitBtn
      Left = 1747
      Top = 173
      Width = 42
      Height = 36
      Caption = '18'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8219136
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
      OnClick = BBT_718Click
    end
    object BBT_717: TBitBtn
      Left = 1744
      Top = 41
      Width = 41
      Height = 36
      Caption = '17'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 27
      OnClick = BBT_717Click
    end
    object BBT_716: TBitBtn
      Left = 1690
      Top = 173
      Width = 41
      Height = 36
      Caption = '16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8219136
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 28
      OnClick = BBT_716Click
    end
    object BBT_715: TBitBtn
      Left = 1691
      Top = 41
      Width = 42
      Height = 36
      Caption = '15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 29
      OnClick = BBT_715Click
    end
    object BBT_714: TBitBtn
      Left = 1633
      Top = 173
      Width = 41
      Height = 36
      Caption = '14'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8219136
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 30
      OnClick = BBT_714Click
    end
    object BBT_713: TBitBtn
      Left = 1634
      Top = 41
      Width = 41
      Height = 36
      Caption = '13'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 31
      OnClick = BBT_713Click
    end
    object BBT_712: TBitBtn
      Left = 1576
      Top = 173
      Width = 41
      Height = 36
      Caption = '12'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8219136
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 32
      OnClick = BBT_712Click
    end
    object BBT_711: TBitBtn
      Left = 1577
      Top = 41
      Width = 41
      Height = 36
      Caption = '11'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 33
      OnClick = BBT_711Click
    end
    object BBT_710: TBitBtn
      Left = 1518
      Top = 173
      Width = 41
      Height = 36
      Caption = '10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8219136
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 34
      OnClick = BBT_710Click
    end
    object BBT_709: TBitBtn
      Left = 1519
      Top = 41
      Width = 42
      Height = 36
      Caption = '09'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 35
      OnClick = BBT_709Click
    end
    object BBT_707: TBitBtn
      Left = 1721
      Top = 3
      Width = 41
      Height = 36
      Caption = '07'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 36
      OnClick = BBT_707Click
    end
    object BBT_706: TBitBtn
      Left = 1665
      Top = 134
      Width = 41
      Height = 36
      Caption = '06'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8219136
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 37
      OnClick = BBT_706Click
    end
    object BBT_705: TBitBtn
      Left = 1664
      Top = 3
      Width = 41
      Height = 36
      Caption = '05'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 38
      OnClick = BBT_705Click
    end
    object BBT_704: TBitBtn
      Left = 1608
      Top = 134
      Width = 41
      Height = 36
      Caption = '04'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8219136
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 39
      OnClick = BBT_704Click
    end
    object BBT_703: TBitBtn
      Left = 1606
      Top = 3
      Width = 42
      Height = 36
      Caption = '03'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 40
      OnClick = BBT_703Click
    end
    object BBT_702: TBitBtn
      Left = 1550
      Top = 134
      Width = 42
      Height = 36
      Caption = '02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8219136
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 41
      OnClick = BBT_702Click
    end
    object BBT_701: TBitBtn
      Left = 1549
      Top = 3
      Width = 41
      Height = 36
      Caption = '01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 42
      OnClick = BBT_701Click
    end
    object BBT_719: TBitBtn
      Left = 1549
      Top = 79
      Width = 41
      Height = 36
      Caption = '19'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 43
      OnClick = BBT_719Click
    end
    object BBT_708: TBitBtn
      Left = 1719
      Top = 135
      Width = 41
      Height = 36
      Caption = '08'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8219136
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 44
      OnClick = BBT_708Click
    end
    object BBT_RECOMECAR: TBitBtn
      Left = 1832
      Top = 179
      Width = 118
      Height = 28
      Caption = 'RECOME'#199'AR'
      Layout = blGlyphBottom
      TabOrder = 45
      OnClick = BBT_RECOMECARClick
    end
    object BBT_CLICK_TUDO: TButton
      Left = 1833
      Top = 213
      Width = 117
      Height = 29
      Caption = 'Clique Tudo'
      TabOrder = 46
      OnClick = BBT_CLICK_TUDOClick
    end
    object STGR_BASE_A: TStringGrid
      Left = 1832
      Top = 8
      Width = 341
      Height = 34
      TabStop = False
      Color = 13691095
      ColCount = 9
      DefaultColWidth = 32
      DefaultRowHeight = 26
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
      TabOrder = 47
    end
    object STGR_BASE_B: TStringGrid
      Left = 1832
      Top = 48
      Width = 300
      Height = 35
      TabStop = False
      Color = 13691095
      ColCount = 8
      DefaultColWidth = 32
      DefaultRowHeight = 26
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
      TabOrder = 48
    end
    object STGR_BASE_C: TStringGrid
      Left = 1832
      Top = 88
      Width = 227
      Height = 35
      TabStop = False
      Color = 13691095
      ColCount = 6
      DefaultColWidth = 32
      DefaultRowHeight = 26
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
      TabOrder = 49
    end
    object STGR_BASE_D: TStringGrid
      Left = 1832
      Top = 127
      Width = 227
      Height = 35
      TabStop = False
      Color = 13691095
      ColCount = 6
      DefaultColWidth = 32
      DefaultRowHeight = 26
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
      TabOrder = 50
    end
  end
  object PA_TOPO: TPanel
    Left = 0
    Top = 0
    Width = 1720
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = 3944519
    ParentBackground = False
    TabOrder = 1
    object BBT_CLOSE: TImage
      Left = 1679
      Top = 2
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
    object LA_TITULO: TLabel
      Left = 6
      Top = 5
      Width = 354
      Height = 39
      Caption = 'SIMULA'#199#195'O modelo 3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
  end
  object PA_RESULTADO: TPanel
    Left = 0
    Top = 319
    Width = 1720
    Height = 437
    Align = alClient
    Color = 5259360
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      1720
      437)
    object PageControl_RESULTADO: TPageControl
      Left = 167
      Top = 57
      Width = 1549
      Height = 374
      ActivePage = TBS_ETAPA4
      Anchors = [akLeft, akTop, akRight, akBottom]
      MultiLine = True
      Style = tsFlatButtons
      TabHeight = 25
      TabOrder = 3
      OnEnter = PageControl_RESULTADOEnter
      object TBS_ETAPA1: TTabSheet
        Caption = 'ETAPA 1'
        ImageIndex = 4
        ExplicitWidth = 1344
        ExplicitHeight = 291
        object SCBX_INICIAR: TScrollBox
          Left = 0
          Top = 0
          Width = 1539
          Height = 336
          HorzScrollBar.Range = 2784
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoScroll = False
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          object Bevel1: TBevel
            Left = 9
            Top = 16
            Width = 1217
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
            Left = 1529
            Top = 16
            Width = 1173
            Height = 49
          end
          object Label19: TLabel
            Left = 1947
            Top = -1
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
          object Label29: TLabel
            Left = 1534
            Top = 19
            Width = 111
            Height = 21
            Caption = 'Colunas 1 e 2'
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
          object Label30: TLabel
            Left = 1919
            Top = 19
            Width = 203
            Height = 21
            Caption = 'Sobras das colunas 1 e 2'
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
            Left = 1918
            Top = 41
            Width = 785
            Height = 219
            TabStop = False
            Align = alCustom
            Anchors = [akLeft, akTop, akBottom]
            BorderStyle = bsNone
            Color = 13560022
            ColCount = 20
            DefaultColWidth = 30
            DefaultRowHeight = 27
            DefaultDrawing = False
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
              30
              30
              30
              30)
          end
          object STGR_COLUNA_01_com02: TStringGrid
            Left = 1530
            Top = 41
            Width = 381
            Height = 219
            TabStop = False
            Align = alCustom
            Anchors = [akLeft, akTop, akBottom]
            BorderStyle = bsNone
            Color = 13560022
            ColCount = 9
            DefaultColWidth = 30
            DefaultRowHeight = 27
            DefaultDrawing = False
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
          object STGR_COLUNA_01_SOBRAS: TStringGrid
            Left = 313
            Top = 33
            Width = 914
            Height = 219
            TabStop = False
            Align = alCustom
            Anchors = [akLeft, akTop, akBottom]
            BorderStyle = bsNone
            Color = 13560022
            ColCount = 23
            DefaultColWidth = 32
            DefaultRowHeight = 27
            DefaultDrawing = False
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
            Left = 9
            Top = 40
            Width = 297
            Height = 219
            TabStop = False
            Align = alCustom
            Anchors = [akLeft, akTop, akBottom]
            BorderStyle = bsNone
            Color = 13560022
            ColCount = 6
            DefaultColWidth = 32
            DefaultRowHeight = 27
            DefaultDrawing = False
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
              32)
          end
          object STGR_COLUNA_02: TStringGrid
            Left = 1248
            Top = 16
            Width = 273
            Height = 241
            TabStop = False
            Align = alCustom
            Anchors = [akLeft, akTop, akBottom]
            Color = 13691095
            ColCount = 6
            DefaultColWidth = 31
            DefaultRowHeight = 27
            DefaultDrawing = False
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
            RowHeights = (
              27
              27)
          end
        end
      end
      object TBS_ETAPA3: TTabSheet
        Caption = 'ETAPA 3'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          1541
          339)
        object Label31: TLabel
          Left = 8
          Top = 1
          Width = 72
          Height = 21
          Caption = 'Coluna 3'
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
        object Label32: TLabel
          Left = 261
          Top = 1
          Width = 72
          Height = 21
          Caption = 'Coluna 4'
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
        object Label33: TLabel
          Left = 631
          Top = 1
          Width = 247
          Height = 21
          Caption = 'Sobras das Colunas 1, 2, 3 e 4'
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
        object STGR_SOBRAS_16: TStringGrid
          Left = 913
          Top = 254
          Width = 567
          Height = 66
          TabStop = False
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          Color = 13691095
          ColCount = 17
          DefaultColWidth = 26
          DefaultRowHeight = 23
          FixedColor = clMedGray
          RowCount = 2
          ParentBiDiMode = False
          TabOrder = 0
          Visible = False
          ColWidths = (
            26
            26
            26
            26
            26
            26
            26
            26
            26
            26
            26
            26
            26
            26
            26
            26
            26)
        end
        object STGR_COLUNA_03: TStringGrid
          Left = 6
          Top = 24
          Width = 250
          Height = 311
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
          Left = 259
          Top = 24
          Width = 250
          Height = 311
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
          ColWidths = (
            28
            28
            28
            28
            28
            28)
          RowHeights = (
            27
            27
            27
            27
            27)
        end
        object STGR_COLUNA_01e02e03e04_SOBRAS: TStringGrid
          Left = 629
          Top = 24
          Width = 529
          Height = 311
          TabStop = False
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          BorderStyle = bsNone
          Color = 12050175
          ColCount = 15
          DefaultColWidth = 27
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
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
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
            27
            27
            27
            27
            27
            27
            27
            27)
        end
        object STGR_COLUNA_SOMA_C1234: TStringGrid
          Left = 513
          Top = 24
          Width = 109
          Height = 311
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 13691095
          ColCount = 2
          Ctl3D = True
          DefaultColWidth = 28
          DefaultRowHeight = 27
          DrawingStyle = gdsClassic
          FixedColor = clMedGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Times New Roman'
          Font.Style = []
          Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          RowHeights = (
            27
            27
            27
            27
            27)
        end
      end
      object TBS_ETAPA4: TTabSheet
        Caption = 'ETAPA 4'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          1541
          339)
        object Label34: TLabel
          Left = 315
          Top = 1
          Width = 72
          Height = 21
          Caption = 'Coluna 6'
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
        object Label35: TLabel
          Left = 573
          Top = 1
          Width = 72
          Height = 21
          Caption = 'Coluna 7'
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
        object Label36: TLabel
          Left = 943
          Top = 1
          Width = 307
          Height = 21
          Caption = 'Sobras das Colunas 1, 2, 3, 4, 5, 6 e 7'
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
        object Label37: TLabel
          Left = 2
          Top = 0
          Width = 72
          Height = 21
          Caption = 'Coluna 5'
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
        object STGR_COLUNA_05e06e07_SOBRAS: TStringGrid
          Left = 945
          Top = 23
          Width = 310
          Height = 310
          TabStop = False
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          BorderStyle = bsNone
          Color = 12050175
          ColCount = 8
          DefaultColWidth = 27
          DefaultRowHeight = 27
          DefaultDrawing = False
          DrawingStyle = gdsClassic
          FixedColor = clMedGray
          FixedCols = 2
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          ParentFont = False
          TabOrder = 2
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
        object STGR_COLUNA_06: TStringGrid
          Left = 314
          Top = 23
          Width = 252
          Height = 310
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12050175
          Ctl3D = True
          DefaultColWidth = 30
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
          TabOrder = 4
          ColWidths = (
            30
            30
            30
            30
            30)
          RowHeights = (
            27
            27
            27
            27
            27)
        end
        object STGR_COLUNA_07: TStringGrid
          Left = 572
          Top = 23
          Width = 252
          Height = 310
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12050175
          Ctl3D = True
          DefaultColWidth = 30
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
          TabOrder = 3
          RowHeights = (
            27
            27
            27
            27
            27)
        end
        object STGR_COLUNA_SOMA_C05e06e07: TStringGrid
          Left = 830
          Top = 23
          Width = 108
          Height = 310
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12050175
          ColCount = 2
          Ctl3D = True
          DefaultColWidth = 28
          DefaultRowHeight = 27
          DefaultDrawing = False
          DrawingStyle = gdsClassic
          FixedColor = clMedGray
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
        object STGR_SOBRAS_13: TStringGrid
          Left = 933
          Top = 264
          Width = 546
          Height = 57
          TabStop = False
          BorderStyle = bsNone
          Color = 13691095
          ColCount = 14
          DefaultColWidth = 33
          DefaultRowHeight = 23
          FixedColor = clGray
          RowCount = 2
          TabOrder = 0
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
        object STGR_COLUNA_05: TStringGrid
          Left = 1
          Top = 23
          Width = 307
          Height = 310
          TabStop = False
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          BorderStyle = bsNone
          Color = 12050175
          ColCount = 6
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
          TabOrder = 5
          ColWidths = (
            32
            32
            32
            32
            32
            32)
        end
        object STGR_SOBRAS_10: TStringGrid
          Left = 1047
          Top = 203
          Width = 435
          Height = 57
          TabStop = False
          BorderStyle = bsNone
          Color = 12050175
          ColCount = 11
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
            33
            33
            33
            33
            33)
          RowHeights = (
            23
            24)
        end
        object STGR_SOBRAS_08: TStringGrid
          Left = 1123
          Top = 140
          Width = 359
          Height = 57
          TabStop = False
          BorderStyle = bsNone
          Color = 12050175
          ColCount = 9
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
      end
      object TBS_ETAPA5: TTabSheet
        Caption = 'ETAPA 5'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          1541
          339)
        object Label38: TLabel
          Left = 2
          Top = 0
          Width = 72
          Height = 21
          Caption = 'Coluna 8'
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
        object Label40: TLabel
          Left = 282
          Top = 1
          Width = 72
          Height = 21
          Caption = 'Coluna 9'
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
        object Label48: TLabel
          Left = 675
          Top = 1
          Width = 295
          Height = 21
          Caption = 'Coluna 10 - N'#250'meros N'#227'o Sorteados'
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
        object Label51: TLabel
          Left = 1123
          Top = 0
          Width = 256
          Height = 21
          Caption = 'Coluna 11 - N'#250'meros Sorteados'
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
        object STGR_COLUNA_08: TStringGrid
          Left = 1
          Top = 23
          Width = 277
          Height = 310
          TabStop = False
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          BorderStyle = bsNone
          Color = 13691095
          ColCount = 6
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
          TabOrder = 0
          ColWidths = (
            32
            32
            32
            32
            32
            32)
        end
        object STGR_COLUNA_09: TStringGrid
          Left = 281
          Top = 23
          Width = 272
          Height = 310
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12050175
          ColCount = 6
          Ctl3D = True
          DefaultColWidth = 30
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
          ColWidths = (
            30
            30
            30
            30
            30
            30)
          RowHeights = (
            27
            27
            27
            27
            27)
        end
        object STGR_COLUNA_SOMA_C08e09: TStringGrid
          Left = 560
          Top = 23
          Width = 109
          Height = 310
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 11396351
          ColCount = 2
          Ctl3D = True
          DefaultColWidth = 28
          DefaultRowHeight = 27
          DefaultDrawing = False
          DrawingStyle = gdsClassic
          FixedColor = clMedGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Times New Roman'
          Font.Style = []
          Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          RowHeights = (
            27
            27
            27
            27
            27)
        end
        object STGR_COLUNA_10: TStringGrid
          Left = 676
          Top = 23
          Width = 443
          Height = 310
          TabStop = False
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          BorderStyle = bsNone
          Color = 12050175
          ColCount = 12
          DefaultColWidth = 27
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
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
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
            27
            27
            27
            27
            27)
        end
        object STGR_COLUNA_11: TStringGrid
          Left = 1122
          Top = 23
          Width = 419
          Height = 310
          TabStop = False
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          BorderStyle = bsNone
          Color = 13691095
          ColCount = 18
          DefaultColWidth = 32
          DefaultRowHeight = 27
          DefaultDrawing = False
          DrawingStyle = gdsClassic
          FixedColor = clMedGray
          FixedCols = 2
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          ParentFont = False
          TabOrder = 4
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
            32
            32
            32
            32
            32
            32
            32
            32
            32)
          RowHeights = (
            27
            27)
        end
        object STGR_SOBRAS_06: TStringGrid
          Left = 1185
          Top = 171
          Width = 294
          Height = 57
          TabStop = False
          BorderStyle = bsNone
          Color = 11396351
          ColCount = 7
          DefaultColWidth = 35
          DefaultRowHeight = 23
          FixedColor = clGray
          RowCount = 2
          TabOrder = 5
          Visible = False
          RowHeights = (
            23
            24)
        end
        object STGR_EXCLUIDOS_07: TStringGrid
          Left = 1184
          Top = 229
          Width = 294
          Height = 57
          TabStop = False
          BorderStyle = bsNone
          Color = 11396351
          ColCount = 7
          DefaultColWidth = 35
          DefaultRowHeight = 23
          FixedColor = clGray
          RowCount = 2
          TabOrder = 6
          Visible = False
          RowHeights = (
            23
            24)
        end
      end
      object TBS_RESULTADO: TTabSheet
        Caption = 'TBS_RESULTADO'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          1541
          339)
        object STGR_15_NUMBEROS: TStringGrid
          Left = 946
          Top = 261
          Width = 593
          Height = 63
          TabStop = False
          BorderStyle = bsNone
          Color = 13691095
          ColCount = 15
          DefaultColWidth = 33
          DefaultRowHeight = 23
          FixedColor = clGray
          RowCount = 2
          TabOrder = 0
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
            33
            33)
          RowHeights = (
            23
            24)
        end
        object DBG_RESULTADO: TDBGrid
          Left = -3
          Top = 0
          Width = 742
          Height = 305
          Anchors = [akLeft, akTop, akBottom]
          Color = 13691095
          DataSource = DS2
          DrawingStyle = gdsClassic
          FixedColor = clGreen
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -14
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
        end
      end
    end
    object PA_EXECUTAR_FILTRO: TPanel
      Left = 1
      Top = 57
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
      TabOrder = 1
      ExplicitHeight = 380
      object BBT_GERAR_MENU: TBitBtn
        Left = 7
        Top = 57
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
        Top = 288
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
      object BBT_Etapa_03: TBitBtn
        Left = 7
        Top = 105
        Width = 149
        Height = 39
        Caption = 'Etapa 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -22
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BBT_Etapa_03Click
      end
      object BBT_ETAPA_01: TBitBtn
        Left = 8
        Top = 5
        Width = 149
        Height = 47
        Caption = 'PREPARAR'#13#10'Etapa 1 e 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = BBT_ETAPA_01Click
      end
      object BBT_Etapa_04: TBitBtn
        Left = 7
        Top = 149
        Width = 149
        Height = 39
        Caption = 'Etapa 4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -22
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BBT_Etapa_04Click
      end
      object BBT_ETAPA_05: TBitBtn
        Left = 8
        Top = 194
        Width = 149
        Height = 39
        Caption = 'Etapa 5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -22
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BBT_ETAPA_05Click
      end
      object BBT_ETAPA_06: TBitBtn
        Left = 8
        Top = 237
        Width = 149
        Height = 39
        Caption = 'Etapa 6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -22
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = BBT_ETAPA_06Click
      end
    end
    object PANEL_TITULO_SIMULACAO: TPanel
      Left = 1
      Top = 1
      Width = 1718
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      Color = 3944519
      TabOrder = 2
      object LA_TOTAL_100REPET: TLabel
        Left = 1449
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
      object PGBR_GERARCOMB1: TProgressBar
        Left = 351
        Top = 25
        Width = 1149
        Height = 25
        TabOrder = 0
      end
      object PGBR_GERARCOMB0: TProgressBar
        Left = 11
        Top = 18
        Width = 141
        Height = 26
        BorderWidth = 2
        Step = 5
        TabOrder = 1
      end
    end
    object STRGR_TODOS_NUMEROS: TStringGrid
      Left = 73
      Top = 371
      Width = 815
      Height = 56
      Color = 16119214
      ColCount = 26
      DefaultColWidth = 26
      DefaultRowHeight = 20
      RowCount = 2
      FixedRows = 0
      TabOrder = 0
      Visible = False
    end
  end
  object PA_REMOVEUREPET: TPanel
    Left = 1656
    Top = 49
    Width = 392
    Height = 688
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 3944519
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
      Width = 168
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'SIMULA'#199#195'O 3'
      Color = clSilver
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
      Color = clSilver
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
      Visible = False
      OnClick = BBT_BLOCO_NOTASClick
    end
  end
  object PA_INICIAL: TPanel
    Left = 1611
    Top = 125
    Width = 317
    Height = 353
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 3944519
    ParentBackground = False
    TabOrder = 4
    object LA_TITULO_MenuInicial: TLabel
      Left = 15
      Top = 19
      Width = 281
      Height = 26
      Alignment = taCenter
      Caption = 'SIMULA'#199#195'O  modelo 3'
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
    Left = 1571
    Top = 532
    Width = 403
    Height = 136
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 1
    Color = 7169405
    ParentBackground = False
    TabOrder = 5
    object Panel2: TPanel
      Left = 6
      Top = 6
      Width = 392
      Height = 54
      Align = alTop
      BevelInner = bvLowered
      Color = 3944519
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
    Left = 2005
    Top = 243
    Width = 272
    Height = 253
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
    Top = 48
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
      'FROM SIMULACAO_3_DADOS3'
      'ORDER BY CONTADOR2')
    Left = 1230
    Top = 100
  end
  object DS1: TDataSource
    DataSet = IBQ_COMBINACOES
    Left = 1248
    Top = 145
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
      ' FROM  SIMULACAO_3_DADOS4'
      'ORDER BY DADOS')
    Left = 1284
    Top = 18
  end
  object DS2: TDataSource
    DataSet = IBQ_COMBINACOES2
    Left = 1284
    Top = 67
  end
end
