object _F_FILTRO_09_NS_E_1: T_F_FILTRO_09_NS_E_1
  Left = 2
  Top = 124
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '9 EXCLUIDOS + 1'
  ClientHeight = 827
  ClientWidth = 1564
  Color = 3437163
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 110
  TextHeight = 16
  object PA_PREENCHIMENTO: TPanel
    Left = 0
    Top = 40
    Width = 1564
    Height = 243
    Align = alTop
    Color = 4229770
    Enabled = False
    ParentBackground = False
    TabOrder = 1
    TabStop = True
    object Label79: TLabel
      Left = 1162
      Top = 162
      Width = 9
      Height = 19
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11788031
      Font.Height = -17
      Font.Name = 'Benguiat Bk BT'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label78: TLabel
      Left = 1162
      Top = 132
      Width = 9
      Height = 19
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11788031
      Font.Height = -17
      Font.Name = 'Benguiat Bk BT'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label77: TLabel
      Left = 1162
      Top = 102
      Width = 9
      Height = 19
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11788031
      Font.Height = -17
      Font.Name = 'Benguiat Bk BT'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label76: TLabel
      Left = 1163
      Top = 72
      Width = 9
      Height = 19
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11788031
      Font.Height = -17
      Font.Name = 'Benguiat Bk BT'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object STGR_BASE_L4: TStringGrid
      Left = 1178
      Top = 157
      Width = 286
      Height = 31
      TabStop = False
      Color = 14413823
      ColCount = 7
      DefaultColWidth = 35
      DefaultRowHeight = 23
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
      TabOrder = 0
      Visible = False
    end
    object STGR_BASE_L3: TStringGrid
      Left = 1178
      Top = 127
      Width = 286
      Height = 31
      TabStop = False
      Color = 14413823
      ColCount = 7
      DefaultColWidth = 35
      DefaultRowHeight = 23
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
      TabOrder = 1
      Visible = False
    end
    object STGR_BASE_L2: TStringGrid
      Left = 1178
      Top = 97
      Width = 286
      Height = 31
      TabStop = False
      Color = 14413823
      ColCount = 7
      DefaultColWidth = 35
      DefaultRowHeight = 23
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
      TabOrder = 2
      Visible = False
      RowHeights = (
        23)
    end
    object STGR_BASE_L1: TStringGrid
      Left = 1178
      Top = 68
      Width = 286
      Height = 31
      TabStop = False
      Color = 14413823
      ColCount = 7
      DefaultColWidth = 35
      DefaultRowHeight = 23
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
      Visible = False
    end
    object BBT_RECOMECAR: TBitBtn
      Left = 6
      Top = 9
      Width = 112
      Height = 36
      Caption = 'RECOME'#199'AR'
      Layout = blGlyphBottom
      TabOrder = 4
      OnClick = BBT_RECOMECARClick
    end
    object BBT_701: TBitBtn
      Left = 576
      Top = 16
      Width = 44
      Height = 41
      Caption = '01'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BBT_701Click
    end
    object BBT_702: TBitBtn
      Left = 634
      Top = 16
      Width = 43
      Height = 41
      Caption = '02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BBT_702Click
    end
    object BBT_711: TBitBtn
      Left = 633
      Top = 64
      Width = 43
      Height = 41
      Caption = '11'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BBT_711Click
    end
    object BBT_719: TBitBtn
      Left = 654
      Top = 111
      Width = 44
      Height = 41
      Caption = '19'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BBT_719Click
    end
    object BBT_720: TBitBtn
      Left = 713
      Top = 111
      Width = 43
      Height = 41
      Caption = '20'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BBT_720Click
    end
    object BBT_712: TBitBtn
      Left = 690
      Top = 64
      Width = 43
      Height = 41
      Caption = '12'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BBT_712Click
    end
    object BBT_703: TBitBtn
      Left = 691
      Top = 16
      Width = 43
      Height = 41
      Caption = '03'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BBT_703Click
    end
    object BBT_704: TBitBtn
      Left = 748
      Top = 16
      Width = 44
      Height = 41
      Caption = '04'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = BBT_704Click
    end
    object BBT_713: TBitBtn
      Left = 747
      Top = 64
      Width = 44
      Height = 41
      Caption = '13'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = BBT_713Click
    end
    object BBT_721: TBitBtn
      Left = 773
      Top = 111
      Width = 44
      Height = 41
      Caption = '21'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = BBT_721Click
    end
    object BBT_722: TBitBtn
      Left = 831
      Top = 111
      Width = 43
      Height = 41
      Caption = '22'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = BBT_722Click
    end
    object BBT_714: TBitBtn
      Left = 804
      Top = 64
      Width = 44
      Height = 41
      Caption = '14'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnClick = BBT_714Click
    end
    object BBT_705: TBitBtn
      Left = 806
      Top = 16
      Width = 43
      Height = 41
      Caption = '05'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      OnClick = BBT_705Click
    end
    object BBT_706: TBitBtn
      Left = 867
      Top = 16
      Width = 44
      Height = 41
      Caption = '06'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
      OnClick = BBT_706Click
    end
    object BBT_715: TBitBtn
      Left = 866
      Top = 64
      Width = 44
      Height = 41
      Caption = '15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      OnClick = BBT_715Click
    end
    object BBT_723: TBitBtn
      Left = 888
      Top = 111
      Width = 44
      Height = 41
      Caption = '23'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      OnClick = BBT_723Click
    end
    object BBT_724: TBitBtn
      Left = 945
      Top = 111
      Width = 44
      Height = 41
      Caption = '24'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      OnClick = BBT_724Click
    end
    object BBT_716: TBitBtn
      Left = 925
      Top = 64
      Width = 43
      Height = 41
      Caption = '16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      OnClick = BBT_716Click
    end
    object BBT_707: TBitBtn
      Left = 925
      Top = 16
      Width = 43
      Height = 41
      Caption = '07'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
      OnClick = BBT_707Click
    end
    object BBT_708: TBitBtn
      Left = 983
      Top = 16
      Width = 44
      Height = 41
      Caption = '08'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
      OnClick = BBT_708Click
    end
    object BBT_717: TBitBtn
      Left = 982
      Top = 64
      Width = 44
      Height = 41
      Caption = '17'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
      OnClick = BBT_717Click
    end
    object BBT_725: TBitBtn
      Left = 1003
      Top = 111
      Width = 43
      Height = 41
      Caption = '25'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
      OnClick = BBT_725Click
    end
    object BBT_718: TBitBtn
      Left = 1039
      Top = 64
      Width = 44
      Height = 41
      Caption = '18'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 27
      OnClick = BBT_718Click
    end
    object BBT_709: TBitBtn
      Left = 1039
      Top = 16
      Width = 44
      Height = 41
      Caption = '09'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 28
      OnClick = BBT_709Click
    end
    object BBT_710: TBitBtn
      Left = 1102
      Top = 16
      Width = 44
      Height = 41
      Caption = '10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 29
      OnClick = BBT_710Click
    end
    object ED_fixoS_1: TEdit
      Left = 407
      Top = 11
      Width = 32
      Height = 26
      Color = 14413823
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 30
      Text = '00'
    end
    object PA_SOMA7_1: TPanel
      Left = 451
      Top = 157
      Width = 183
      Height = 74
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = 14145495
      TabOrder = 31
      object Label25: TLabel
        Left = 2
        Top = 5
        Width = 169
        Height = 16
        Caption = 'Somat'#243'ria para 7 N'#250'meros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMA7_INI: TEdit
        Left = 32
        Top = 33
        Width = 38
        Height = 22
        TabStop = False
        BevelKind = bkTile
        Color = 14413823
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '89'
      end
      object ED_SOMA7_Final: TEdit
        Left = 110
        Top = 33
        Width = 38
        Height = 22
        TabStop = False
        BevelKind = bkTile
        Color = 14413823
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '93'
      end
      object TRB_SOMA7_INI: TTrackBar
        Left = 58
        Top = 22
        Width = 28
        Height = 47
        Max = 13
        Min = 1
        Orientation = trVertical
        Position = 5
        TabOrder = 2
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_SOMA7_INIChange
      end
      object TRB_SOMA7_Final: TTrackBar
        Left = 132
        Top = 22
        Width = 27
        Height = 47
        Max = 13
        Min = 1
        Orientation = trVertical
        Position = 9
        TabOrder = 3
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_SOMA7_FinalChange
      end
    end
    object BBT_CLICK_TUDO: TButton
      Left = 1225
      Top = 6
      Width = 135
      Height = 30
      Caption = 'Clique_Tudo'
      TabOrder = 32
      OnClick = BBT_CLICK_TUDOClick
    end
    object STGR_BASE_L1V: TStringGrid
      Left = 156
      Top = 9
      Width = 117
      Height = 114
      TabStop = False
      BorderStyle = bsNone
      Color = 14413823
      ColCount = 3
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      RowCount = 4
      TabOrder = 33
      ColWidths = (
        33
        33
        33)
    end
    object STGR_BASE_L4V: TStringGrid
      Left = 280
      Top = 9
      Width = 116
      Height = 110
      TabStop = False
      BorderStyle = bsNone
      Color = 14413823
      ColCount = 3
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      RowCount = 4
      TabOrder = 34
      ColWidths = (
        33
        33
        33)
    end
    object STGR_BASE_L3V: TStringGrid
      Left = 280
      Top = 125
      Width = 116
      Height = 110
      TabStop = False
      BorderStyle = bsNone
      Color = 14413823
      ColCount = 3
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      RowCount = 4
      TabOrder = 35
      ColWidths = (
        33
        33
        33)
    end
    object STGR_BASE_L2V: TStringGrid
      Left = 156
      Top = 125
      Width = 117
      Height = 110
      TabStop = False
      BorderStyle = bsNone
      Color = 14413823
      ColCount = 3
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      RowCount = 4
      TabOrder = 36
      ColWidths = (
        33
        33
        33)
    end
    object Panel1: TPanel
      Left = 966
      Top = 157
      Width = 189
      Height = 74
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = 14145495
      TabOrder = 37
      object Label3: TLabel
        Left = 2
        Top = 5
        Width = 177
        Height = 16
        Caption = 'Somat'#243'ria para 12 N'#250'meros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_SOMA12_INI: TEdit
        Left = 22
        Top = 33
        Width = 38
        Height = 22
        TabStop = False
        BevelKind = bkTile
        Color = 14413823
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '150'
      end
      object ED_SOMA12_Final: TEdit
        Left = 105
        Top = 33
        Width = 38
        Height = 22
        TabStop = False
        BevelKind = bkTile
        Color = 14413823
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '162'
      end
      object TRB_SOMA12_INI: TTrackBar
        Left = 58
        Top = 22
        Width = 28
        Height = 47
        Max = 13
        Min = 1
        Orientation = trVertical
        Position = 1
        TabOrder = 2
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_SOMA12_INIChange
      end
      object TRB_SOMA12_Final: TTrackBar
        Left = 138
        Top = 22
        Width = 27
        Height = 47
        Max = 13
        Min = 1
        Orientation = trVertical
        Position = 13
        TabOrder = 3
        ThumbLength = 15
        TickMarks = tmTopLeft
        OnChange = TRB_SOMA12_FinalChange
      end
    end
    object PA_FIXOS: TPanel
      Left = 834
      Top = 166
      Width = 129
      Height = 65
      BevelInner = bvRaised
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ParentBackground = False
      ParentColor = True
      TabOrder = 38
      object Label39: TLabel
        Left = 19
        Top = 5
        Width = 78
        Height = 16
        Caption = 'N'#186' Exclu'#237'dos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ED_FIXOS_01: TEdit
        Left = 8
        Top = 30
        Width = 32
        Height = 21
        Color = 14413823
        TabOrder = 0
        Text = '00'
      end
      object ED_FIXOS_02: TEdit
        Left = 48
        Top = 30
        Width = 32
        Height = 21
        Color = 14413823
        TabOrder = 1
        Text = '00'
      end
      object ED_FIXOS_03: TEdit
        Left = 88
        Top = 30
        Width = 32
        Height = 21
        Color = 14413823
        TabOrder = 2
        Text = '00'
      end
      object ED_FIXOS_04: TEdit
        Left = 128
        Top = 30
        Width = 32
        Height = 21
        TabStop = False
        Color = 14413823
        Enabled = False
        ReadOnly = True
        TabOrder = 3
        Text = '00'
      end
      object ED_FIXOS_05: TEdit
        Left = 168
        Top = 30
        Width = 33
        Height = 21
        TabStop = False
        Color = 14413823
        Enabled = False
        ReadOnly = True
        TabOrder = 4
        Text = '00'
      end
    end
    object PA_EXCLUIDOS: TPanel
      Left = 637
      Top = 160
      Width = 191
      Height = 73
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      TabOrder = 39
      object Label32: TLabel
        Left = 68
        Top = 10
        Width = 61
        Height = 16
        Alignment = taCenter
        Caption = 'N'#186' Fixos '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -14
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ED_EXC_01: TEdit
        Left = 3
        Top = 41
        Width = 33
        Height = 21
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14413823
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '00'
      end
      object ED_EXC_02: TEdit
        Left = 40
        Top = 41
        Width = 32
        Height = 21
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14413823
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '00'
      end
      object ED_EXC_03: TEdit
        Left = 78
        Top = 41
        Width = 32
        Height = 21
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14413823
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '00'
      end
      object ED_EXC_04: TEdit
        Left = 116
        Top = 41
        Width = 32
        Height = 21
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14413823
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '00'
      end
      object ED_EXC_05: TEdit
        Left = 154
        Top = 41
        Width = 32
        Height = 21
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 14413823
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = '00'
      end
    end
  end
  object SCBX_GABARITO: TScrollBox
    Left = 0
    Top = 283
    Width = 1564
    Height = 227
    HorzScrollBar.Range = 2171
    VertScrollBar.Range = 194
    Align = alTop
    AutoScroll = False
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    TabOrder = 7
    object Bevel3: TBevel
      Left = 770
      Top = -10
      Width = 139
      Height = 223
      Shape = bsLeftLine
    end
    object Bevel2: TBevel
      Left = 517
      Top = -17
      Width = 138
      Height = 452
      Shape = bsLeftLine
    end
    object Bevel1: TBevel
      Left = 269
      Top = -13
      Width = 139
      Height = 453
      Shape = bsLeftLine
    end
    object Label2: TLabel
      Left = 10
      Top = 2
      Width = 68
      Height = 21
      Caption = 'Grade 1'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label16: TLabel
      Left = 280
      Top = 3
      Width = 68
      Height = 21
      Caption = 'Grade 2'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label17: TLabel
      Left = 536
      Top = 3
      Width = 68
      Height = 21
      Caption = 'Grade 3'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label21: TLabel
      Left = 788
      Top = 1
      Width = 68
      Height = 21
      Caption = 'Grade 4'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object LA_LINHA_1_100REP: TLabel
      Left = 191
      Top = 2
      Width = 16
      Height = 16
      Caption = '00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_LINHA_2_100REP: TLabel
      Left = 442
      Top = 3
      Width = 16
      Height = 16
      Caption = '00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_LINHA_4_100REP: TLabel
      Left = 929
      Top = 5
      Width = 16
      Height = 16
      Caption = '00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_LINHA_3_100REP: TLabel
      Left = 694
      Top = 7
      Width = 16
      Height = 16
      Caption = '00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 983
      Top = -15
      Width = 139
      Height = 453
      Shape = bsLeftLine
    end
    object Label1: TLabel
      Left = 1008
      Top = 2
      Width = 129
      Height = 21
      Caption = 'Sobra_Grade 1'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 1248
      Top = 3
      Width = 124
      Height = 21
      Caption = 'Sobra Grade 2'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 1501
      Top = 3
      Width = 124
      Height = 21
      Caption = 'Sobra Grade 3'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 1792
      Top = 3
      Width = 124
      Height = 21
      Caption = 'Sobra Grade 4'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object STGR_LINHA_1_C1: TStringGrid
      Left = 7
      Top = 28
      Width = 223
      Height = 165
      TabStop = False
      BevelInner = bvLowered
      Color = 14413823
      Ctl3D = False
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      FixedCols = 2
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 0
      ColWidths = (
        33
        33
        33
        33
        33)
    end
    object STGR_LINHA_2_C1: TStringGrid
      Left = 281
      Top = 29
      Width = 223
      Height = 165
      TabStop = False
      BevelInner = bvLowered
      Color = 14413823
      Ctl3D = False
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      FixedCols = 2
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 1
      RowHeights = (
        23
        23)
    end
    object STGR_LINHA_3_C1: TStringGrid
      Left = 533
      Top = 29
      Width = 223
      Height = 165
      TabStop = False
      BevelInner = bvLowered
      Color = 14413823
      ColCount = 4
      Ctl3D = False
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      FixedCols = 2
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 2
      RowHeights = (
        23
        23)
    end
    object STGR_LINHA_4_C1: TStringGrid
      Left = 785
      Top = 28
      Width = 174
      Height = 165
      TabStop = False
      BevelInner = bvLowered
      BorderStyle = bsNone
      Color = 14413823
      ColCount = 3
      Ctl3D = False
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      FixedCols = 2
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 3
      ColWidths = (
        33
        33
        33)
      RowHeights = (
        23
        23)
    end
    object STGR_LINHA_1_C2: TStringGrid
      Left = 1005
      Top = 28
      Width = 223
      Height = 165
      TabStop = False
      BevelInner = bvLowered
      Color = 9231585
      Ctl3D = False
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      FixedCols = 2
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 4
      ColWidths = (
        33
        33
        33
        33
        33)
    end
    object STGR_LINHA_2_C2: TStringGrid
      Left = 1249
      Top = 29
      Width = 223
      Height = 165
      TabStop = False
      BevelInner = bvLowered
      Color = 9231585
      Ctl3D = False
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      FixedCols = 2
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 5
      RowHeights = (
        23
        23)
    end
    object STGR_LINHA_3_C2: TStringGrid
      Left = 1498
      Top = 29
      Width = 264
      Height = 165
      TabStop = False
      BevelInner = bvLowered
      Color = 9231585
      ColCount = 6
      Ctl3D = False
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      FixedCols = 2
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 6
      RowHeights = (
        23
        23)
    end
    object STGR_LINHA_4_C2: TStringGrid
      Left = 1789
      Top = 30
      Width = 299
      Height = 165
      TabStop = False
      BevelInner = bvLowered
      BorderStyle = bsNone
      Color = 9231585
      ColCount = 7
      Ctl3D = False
      DefaultColWidth = 33
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      FixedCols = 2
      RowCount = 2
      ParentCtl3D = False
      TabOrder = 7
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
        23)
    end
  end
  object PA_TOPO: TPanel
    Left = 0
    Top = 0
    Width = 1564
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    ParentColor = True
    TabOrder = 0
    object BBT_CLOSE: TImage
      Left = 1365
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
    object Label34: TLabel
      Left = 8
      Top = 0
      Width = 404
      Height = 37
      Caption = 'FILTRO 09 EXCLUIDOS + 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11728383
      Font.Height = -32
      Font.Name = 'Benguiat Bk BT'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PA_GABARITO: TPanel
      Left = 988
      Top = 3
      Width = 371
      Height = 34
      BevelOuter = bvNone
      Color = 14413823
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Label29: TLabel
        Left = 283
        Top = 8
        Width = 69
        Height = 16
        Caption = 'Resultados'
      end
      object Label30: TLabel
        Left = 119
        Top = 8
        Width = 107
        Height = 16
        Caption = 'Grupos e Colunas'
      end
      object Label31: TLabel
        Left = 34
        Top = 8
        Width = 43
        Height = 16
        Caption = 'Ambos'
      end
      object RB_RESULTADOS: TRadioButton
        Left = 258
        Top = 6
        Width = 19
        Height = 22
        Caption = 'RB_RESULTADOS'
        TabOrder = 2
        OnClick = RB_RESULTADOSClick
      end
      object RB_GABARITO: TRadioButton
        Left = 94
        Top = 6
        Width = 19
        Height = 22
        Caption = 'RB_RESULTADOS'
        TabOrder = 1
      end
      object RB_RES_GABARITOS: TRadioButton
        Left = 10
        Top = 6
        Width = 20
        Height = 22
        Caption = 'RB_RESULTADOS'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
    end
  end
  object PA_FIMFILTRO: TPanel
    Left = 1588
    Top = 124
    Width = 330
    Height = 454
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    BorderWidth = 6
    BorderStyle = bsSingle
    Color = 4227200
    TabOrder = 5
    object Label51: TLabel
      Left = 14
      Top = 23
      Width = 299
      Height = 37
      Caption = 'FILTRO 09 EXC + 1'
      Color = 14413823
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -31
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label52: TLabel
      Left = 48
      Top = 89
      Width = 230
      Height = 27
      Alignment = taCenter
      Caption = 'FILTRO ENCERRADO'
      Color = 14413823
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label53: TLabel
      Left = 14
      Top = 150
      Width = 244
      Height = 21
      Caption = 'Total de dados processados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label54: TLabel
      Left = 14
      Top = 212
      Width = 206
      Height = 21
      Caption = 'Total de dados gerados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_fTOTAL_COMB: TLabel
      Left = 14
      Top = 174
      Width = 110
      Height = 21
      Caption = '0000000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_fQTD_COMB: TLabel
      Left = 14
      Top = 234
      Width = 44
      Height = 21
      Caption = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label59: TLabel
      Left = 14
      Top = 266
      Width = 283
      Height = 21
      Caption = 'Total de dados sem os repetidos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_fTOTAL_100REPET: TLabel
      Left = 14
      Top = 288
      Width = 44
      Height = 21
      Caption = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label62: TLabel
      Left = 13
      Top = 327
      Width = 137
      Height = 21
      Caption = 'Dados filtrados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_fQTD_FILTRADOS: TLabel
      Left = 13
      Top = 348
      Width = 44
      Height = 21
      Caption = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BBT_FIMFILTRO: TBitBtn
      Left = 119
      Top = 390
      Width = 88
      Height = 43
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
    end
  end
  object PA_RESULTADO: TPanel
    Left = 0
    Top = 510
    Width = 1564
    Height = 317
    Align = alClient
    ParentColor = True
    TabOrder = 6
    object STGR_COMB15: TStringGrid
      Left = 988
      Top = 48
      Width = 575
      Height = 268
      TabStop = False
      Align = alClient
      Color = 14413823
      ColCount = 12
      DefaultColWidth = 38
      DefaultRowHeight = 21
      DrawingStyle = gdsClassic
      FixedColor = clTeal
      FixedCols = 2
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
      Left = 272
      Top = 206
      Width = 811
      Height = 53
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
      Width = 149
      Height = 268
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      ParentColor = True
      TabOrder = 2
      object BBT_PREPARAR: TBitBtn
        Left = 7
        Top = 3
        Width = 137
        Height = 68
        Caption = 'PREPARAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BBT_PREPARARClick
      end
      object BBT_GERAR_MENU: TBitBtn
        Left = 8
        Top = 76
        Width = 138
        Height = 58
        Caption = 'GERAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BBT_GERAR_MENUClick
      end
    end
    object PANEL_TITULO_SIMULACAO: TPanel
      Left = 1
      Top = 1
      Width = 1562
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object LA_QTD_FILTRADOS: TLabel
        Left = 1157
        Top = 6
        Width = 42
        Height = 16
        Caption = '000000'
      end
      object Label88: TLabel
        Left = 1087
        Top = 6
        Width = 36
        Height = 16
        Caption = 'Filtrar:'
        WordWrap = True
      end
      object LA_TOTAL_100REPET: TLabel
        Left = 985
        Top = 6
        Width = 42
        Height = 16
        Caption = '000000'
      end
      object Label87: TLabel
        Left = 827
        Top = 6
        Width = 125
        Height = 16
        Caption = 'Remover Repetidos:'
      end
      object LA_QTD_COMB: TLabel
        Left = 647
        Top = 6
        Width = 37
        Height = 16
        Caption = 'Gerar:'
      end
      object LA_GERAR_COMB: TLabel
        Left = 411
        Top = 6
        Width = 7
        Height = 16
        Caption = '#'
      end
      object LA_TOTAL_COMB: TLabel
        Left = 149
        Top = 9
        Width = 37
        Height = 16
        Caption = 'Gerar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object PGBR_FILTRARCOMB: TProgressBar
        Left = 1086
        Top = 23
        Width = 257
        Height = 24
        TabOrder = 0
      end
      object PGBR_REMREPET: TProgressBar
        Left = 825
        Top = 23
        Width = 261
        Height = 24
        TabOrder = 1
      end
      object PGBR_GERARCOMB: TProgressBar
        Left = 421
        Top = 23
        Width = 402
        Height = 24
        TabOrder = 2
      end
      object PGBR_GERARCOMB0: TProgressBar
        Left = 148
        Top = 23
        Width = 270
        Height = 24
        TabOrder = 3
      end
      object PGBR_GERARCOMB3: TProgressBar
        Left = 7
        Top = 22
        Width = 139
        Height = 24
        TabOrder = 4
      end
    end
    object Pa_bASE5: TPanel
      Left = 150
      Top = 48
      Width = 838
      Height = 268
      Align = alLeft
      ParentColor = True
      TabOrder = 4
      object STGR_BASE_SOMA2: TStringGrid
        Left = 0
        Top = 2
        Width = 346
        Height = 251
        TabStop = False
        Color = 9556223
        ColCount = 10
        Ctl3D = True
        DefaultColWidth = 28
        DefaultRowHeight = 27
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 3
        RowCount = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = [fsUnderline]
        GridLineWidth = 0
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object STGR_BASE_SOMA1: TStringGrid
        Left = 6
        Top = 202
        Width = 360
        Height = 67
        TabStop = False
        Color = 14413823
        ColCount = 10
        Ctl3D = True
        DefaultColWidth = 31
        DefaultRowHeight = 27
        FixedColor = clMedGray
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = [fsUnderline]
        GridLineWidth = 0
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
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
          31)
      end
      object STGR_BASE_SOMA12_2: TStringGrid
        Left = 345
        Top = 2
        Width = 489
        Height = 251
        TabStop = False
        Color = 9231585
        ColCount = 15
        Ctl3D = True
        DefaultColWidth = 27
        DefaultRowHeight = 27
        DrawingStyle = gdsClassic
        FixedColor = clMedGray
        FixedCols = 3
        RowCount = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = [fsUnderline]
        GridLineWidth = 0
        Options = [goHorzLine, goRangeSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object STGR_BASE_SOMA12_1: TStringGrid
        Left = 364
        Top = 201
        Width = 577
        Height = 66
        TabStop = False
        Color = 14413823
        ColCount = 16
        Ctl3D = True
        DefaultColWidth = 31
        DefaultRowHeight = 27
        FixedColor = clMedGray
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = [fsUnderline]
        GridLineWidth = 0
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
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
        RowHeights = (
          27
          27)
      end
    end
  end
  object PA_GERAR: TPanel
    Left = 1155
    Top = 170
    Width = 386
    Height = 310
    BevelInner = bvLowered
    BevelOuter = bvNone
    BorderWidth = 3
    Color = 5154727
    ParentBackground = False
    TabOrder = 4
    object Label64: TLabel
      Left = 49
      Top = 116
      Width = 80
      Height = 25
      Caption = 'SALVAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label65: TLabel
      Left = 49
      Top = 178
      Width = 191
      Height = 25
      Caption = 'SALVAR E FILTRAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object RB_GERAR: TRadioButton
      Left = 22
      Top = 117
      Width = 22
      Height = 19
      Caption = '.'
      Checked = True
      TabOrder = 0
      TabStop = True
      Visible = False
    end
    object RB_GERAR_FILTRAR: TRadioButton
      Left = 21
      Top = 179
      Width = 20
      Height = 19
      TabOrder = 1
      Visible = False
    end
    object Panel2: TPanel
      Left = 5
      Top = 5
      Width = 377
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      Color = 14413823
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object Label63: TLabel
        Left = 3
        Top = 9
        Width = 373
        Height = 32
        Caption = 'FILTRO 09 EXC + 1 - GERAR'
        Color = 14413823
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -28
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object BBT_GERAR_SIMULACAO: TBitBtn
      Left = 8
      Top = 268
      Width = 171
      Height = 36
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_GERAR_SIMULACAOClick
    end
    object BBT_GERAR_SAIR: TBitBtn
      Left = 207
      Top = 268
      Width = 171
      Height = 36
      Caption = 'SAIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBT_GERAR_SAIRClick
    end
  end
  object PA_INICIAL: TPanel
    Left = 9
    Top = 170
    Width = 361
    Height = 291
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 3
    BorderStyle = bsSingle
    Color = 3632755
    ParentBackground = False
    TabOrder = 3
    object Label55: TLabel
      Left = 24
      Top = 24
      Width = 286
      Height = 37
      Caption = 'FILTRO 09 EXC + 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11728383
      Font.Height = -32
      Font.Name = 'Benguiat Bk BT'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BT_NOVA_SIMULACAO: TButton
      Left = 52
      Top = 94
      Width = 257
      Height = 57
      Caption = 'NOVO FILTRO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Benguiat Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BT_NOVA_SIMULACAOClick
    end
    object BT_CARREGAR_SIMULACAO: TButton
      Left = 52
      Top = 173
      Width = 257
      Height = 57
      Caption = 'CARREGAR_FILTRO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Benguiat Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BT_CARREGAR_SIMULACAOClick
    end
    object BT_RECUPERAR_SIMULACAO: TButton
      Left = 52
      Top = 252
      Width = 257
      Height = 57
      Caption = 'RECUPERAR_FILTRO'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Benguiat Bk BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
  end
  object PA_REMOVEUREPET: TPanel
    Left = 1534
    Top = 42
    Width = 354
    Height = 635
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 3437163
    ParentBackground = False
    TabOrder = 2
    object Label44: TLabel
      Left = 9
      Top = 9
      Width = 299
      Height = 37
      Align = alTop
      Alignment = taCenter
      Caption = 'FILTRO 09 EXC + 1'
      Color = 14413823
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -31
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label45: TLabel
      Left = 9
      Top = 47
      Width = 290
      Height = 81
      Align = alTop
      Alignment = taCenter
      Caption = 'GERA'#199#195'O, ORDENA'#199#195'O E '#13'REMO'#199#195'O DE REPETIDOS'#13' ENCERRADA:'
      Color = 14413823
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -22
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label46: TLabel
      Left = 15
      Top = 387
      Width = 244
      Height = 21
      Caption = 'Total de dados processados:'
      Color = 15245216
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 15
      Top = 448
      Width = 206
      Height = 21
      Caption = 'Total de dados gerados:'
      Color = 15245216
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_rTOTAL_COMB: TLabel
      Left = 15
      Top = 411
      Width = 110
      Height = 21
      Caption = '0000000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_rQTD_COMB: TLabel
      Left = 15
      Top = 470
      Width = 44
      Height = 21
      Caption = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label50: TLabel
      Left = 15
      Top = 505
      Width = 283
      Height = 21
      Caption = 'Total de dados sem os repetidos:'
      Color = 15245216
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_rTOTAL_100REPET: TLabel
      Left = 15
      Top = 527
      Width = 44
      Height = 21
      Caption = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label58: TLabel
      Left = 11
      Top = 172
      Width = 239
      Height = 21
      Caption = '1. In'#237'cio do Processamento:'
      Color = 13681785
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_gINICIO_100REPET: TLabel
      Left = 126
      Top = 191
      Width = 203
      Height = 21
      Caption = '01/01/2001 - 00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label60: TLabel
      Left = 10
      Top = 219
      Width = 264
      Height = 42
      Caption = '2. T'#233'rmino do Processamento'#13'&& In'#237'cio remo'#231#227'o de repetidos:'
      Color = 13681785
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label49: TLabel
      Left = 10
      Top = 289
      Width = 311
      Height = 42
      Caption = '3. Recupera'#231#227'o dos dados '#13'&& T'#233'rmino da remo'#231#227'o de repetidos:'
      Color = 13681785
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_gFIM_100REPET: TLabel
      Left = 127
      Top = 330
      Width = 203
      Height = 21
      Caption = '01/01/2001 - 00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_gFIM_GERAR: TLabel
      Left = 128
      Top = 260
      Width = 203
      Height = 21
      Caption = '01/01/2001 - 00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BBT_PA_REMOVEUREPET: TBitBtn
      Left = 117
      Top = 569
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
  end
  object PopupMenu1: TPopupMenu
    Left = 1146
    Top = 78
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
