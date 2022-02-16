object _F_GERADOR_03_M1: T_F_GERADOR_03_M1
  Left = 122
  Top = 121
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '03'
  ClientHeight = 752
  ClientWidth = 1208
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    1208
    752)
  PixelsPerInch = 110
  TextHeight = 17
  object PA_RESULTADO: TPanel
    Left = 3
    Top = 41
    Width = 1201
    Height = 706
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Color = 4273955
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1201
      706)
    object LA_TXT31: TLabel
      Left = 1035
      Top = 634
      Width = 8
      Height = 16
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_TXT21: TLabel
      Left = 1035
      Top = 584
      Width = 8
      Height = 16
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_TXT11: TLabel
      Left = 755
      Top = 549
      Width = 8
      Height = 18
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_TXT41: TLabel
      Left = 1055
      Top = 605
      Width = 32
      Height = 16
      Caption = '0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -14
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BBT_ZERAR: TBitBtn
      Left = 99
      Top = 377
      Width = 89
      Height = 27
      Caption = 'ZERAR'
      Layout = blGlyphBottom
      TabOrder = 0
      OnClick = BBT_ZERARClick
    end
    object STGR_M03_SERIE3_INICIAL: TStringGrid
      Left = 2
      Top = 87
      Width = 228
      Height = 29
      Color = clSilver
      ColCount = 6
      DefaultColWidth = 31
      DefaultRowHeight = 22
      DrawingStyle = gdsClassic
      RowCount = 1
      FixedRows = 0
      TabOrder = 1
    end
    object STGR_M03_SERIE1_INICIAL: TStringGrid
      Left = 2
      Top = 18
      Width = 401
      Height = 29
      Color = 15066597
      ColCount = 11
      DefaultColWidth = 30
      DefaultRowHeight = 22
      DrawingStyle = gdsClassic
      RowCount = 1
      FixedRows = 0
      TabOrder = 2
    end
    object STGR_M03_SERIE2_INICIAL: TStringGrid
      Left = 2
      Top = 52
      Width = 401
      Height = 28
      Color = 15005103
      ColCount = 11
      DefaultColWidth = 30
      DefaultRowHeight = 22
      DrawingStyle = gdsClassic
      RowCount = 1
      FixedRows = 0
      TabOrder = 3
    end
    object BBT_M03_SIMULAR_A: TBitBtn
      Left = 761
      Top = 693
      Width = 295
      Height = 31
      Caption = 'SIMULAR - MODO A -> 5-8-2, 6-7-2, 7-6-2, 8-5-2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnClick = BBT_M03_SIMULAR_AClick
    end
    object BBT_M03_SIMULAR_b: TBitBtn
      Left = 761
      Top = 728
      Width = 295
      Height = 31
      Caption = 'SIMULAR - MODO B -> 4-8-3 , 5-7-3, 6-6-3, 7-5-3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnClick = BBT_M03_SIMULAR_bClick
    end
    object BBT_M03_SIMULAR_C: TBitBtn
      Left = 761
      Top = 762
      Width = 295
      Height = 31
      Caption = 'SIMULAR - MODO C -> 4-7-4 , 5-6-4, 6-5-4, 7-4-4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = BBT_M03_SIMULAR_CClick
    end
    object STGR_M03_SERIE1_04: TStringGrid
      Left = 406
      Top = 6
      Width = 196
      Height = 97
      Color = 15066597
      DefaultColWidth = 28
      DrawingStyle = gdsClassic
      RowCount = 9
      FixedRows = 0
      TabOrder = 7
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
    object STGR_M03_SERIE1_06: TStringGrid
      Left = 406
      Top = 206
      Width = 257
      Height = 98
      Color = 15066597
      ColCount = 7
      DefaultColWidth = 27
      DrawingStyle = gdsClassic
      RowCount = 9
      FixedRows = 0
      TabOrder = 8
    end
    object STGR_M03_SERIE1_07: TStringGrid
      Left = 406
      Top = 307
      Width = 294
      Height = 97
      Color = 15066597
      ColCount = 8
      DefaultColWidth = 28
      DrawingStyle = gdsClassic
      RowCount = 9
      FixedRows = 0
      TabOrder = 9
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
    object STGR_M03_SERIE1_08: TStringGrid
      Left = 406
      Top = 407
      Width = 306
      Height = 97
      Color = 15066597
      ColCount = 9
      DefaultColWidth = 26
      DrawingStyle = gdsClassic
      RowCount = 9
      FixedRows = 0
      TabOrder = 10
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
    object STGR_M03_SERIE1_05: TStringGrid
      Left = 406
      Top = 104
      Width = 232
      Height = 98
      Color = 15066597
      ColCount = 6
      DefaultColWidth = 28
      DrawingStyle = gdsClassic
      RowCount = 9
      FixedRows = 0
      TabOrder = 11
    end
    object STGR_M03_SERIE2_08: TStringGrid
      Left = 718
      Top = 408
      Width = 306
      Height = 97
      Color = 15466404
      ColCount = 9
      DefaultColWidth = 26
      RowCount = 9
      FixedRows = 0
      TabOrder = 12
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
    object STGR_M03_SERIE2_07: TStringGrid
      Left = 720
      Top = 307
      Width = 294
      Height = 97
      Color = 15466404
      ColCount = 8
      DefaultColWidth = 28
      RowCount = 9
      FixedRows = 0
      TabOrder = 13
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
    object STGR_M03_SERIE2_06: TStringGrid
      Left = 720
      Top = 206
      Width = 257
      Height = 98
      Color = 15466404
      ColCount = 7
      DefaultColWidth = 27
      DrawingStyle = gdsClassic
      RowCount = 9
      FixedRows = 0
      TabOrder = 14
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
    object STGR_M03_SERIE2_05: TStringGrid
      Left = 720
      Top = 104
      Width = 232
      Height = 98
      Color = 15466404
      ColCount = 6
      DefaultColWidth = 28
      DrawingStyle = gdsClassic
      RowCount = 9
      FixedRows = 0
      TabOrder = 15
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
    object STGR_M03_SERIE2_04: TStringGrid
      Left = 720
      Top = 6
      Width = 196
      Height = 97
      Color = 15466404
      DefaultColWidth = 28
      DrawingStyle = gdsClassic
      RowCount = 9
      FixedRows = 0
      TabOrder = 16
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
    object STGR_M03_SERIE3_04: TStringGrid
      Left = 997
      Top = 207
      Width = 196
      Height = 98
      Color = clSilver
      DefaultColWidth = 28
      RowCount = 9
      FixedRows = 0
      TabOrder = 17
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
    object STGR_M03_SERIE3_03: TStringGrid
      Left = 997
      Top = 105
      Width = 161
      Height = 98
      Color = clSilver
      ColCount = 4
      DefaultColWidth = 28
      DrawingStyle = gdsClassic
      RowCount = 9
      FixedRows = 0
      TabOrder = 18
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
    object STGR_M03_SERIE3_02: TStringGrid
      Left = 997
      Top = 6
      Width = 128
      Height = 97
      Color = clSilver
      ColCount = 3
      DefaultColWidth = 28
      DrawingStyle = gdsClassic
      RowCount = 9
      FixedRows = 0
      TabOrder = 19
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
    object Memo1: TMemo
      Left = 18
      Top = 277
      Width = 56
      Height = 318
      Color = 15066597
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        'MODO '
        'A'
        '5 8 2'
        '6 7 2'
        '7 6 2'
        '8 5 2'
        ''
        'MODO '
        'B'
        '4 8 3'
        '5 7 3'
        '6 6 3'
        '7 5 3'
        '8 4 3'
        ''
        'MODO '
        'C'
        '4 7 4'
        '5 6 4'
        '6 5 4'
        '7 4 4')
      ParentFont = False
      TabOrder = 20
      Visible = False
    end
    object BBT_PREPARAR: TButton
      Left = 201
      Top = 376
      Width = 199
      Height = 28
      Caption = 'PREPARAR'
      TabOrder = 21
      OnClick = BBT_PREPARARClick
    end
    object STGR_COMBINACOES_15M31: TStringGrid
      Left = 6
      Top = 505
      Width = 745
      Height = 44
      Color = 15005103
      ColCount = 16
      DefaultColWidth = 38
      DefaultRowHeight = 22
      RowCount = 12
      FixedRows = 0
      TabOrder = 22
      Visible = False
    end
    object STGR_COMBINACOES_15M32: TStringGrid
      Left = 6
      Top = 548
      Width = 745
      Height = 43
      Color = 15005103
      ColCount = 16
      DefaultColWidth = 38
      DefaultRowHeight = 22
      RowCount = 12
      FixedRows = 0
      TabOrder = 23
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
    object STGR_COMBINACOES_15M33: TStringGrid
      Left = 6
      Top = 590
      Width = 745
      Height = 44
      Color = 15005103
      ColCount = 16
      DefaultColWidth = 38
      DefaultRowHeight = 22
      RowCount = 12
      FixedRows = 0
      TabOrder = 24
      Visible = False
    end
    object STGR_COMBINACOES_15M34: TStringGrid
      Left = 6
      Top = 633
      Width = 745
      Height = 43
      Color = 15005103
      ColCount = 16
      DefaultColWidth = 38
      DefaultRowHeight = 22
      RowCount = 12
      FixedRows = 0
      TabOrder = 25
      Visible = False
    end
    object PGBR_M02: TProgressBar
      Left = 773
      Top = 670
      Width = 403
      Height = 20
      TabOrder = 26
      Visible = False
    end
    object BBT_301: TBitBtn
      Left = 101
      Top = 124
      Width = 43
      Height = 38
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 27
      Visible = False
      OnClick = BBT_301Click
    end
    object BBT_302: TBitBtn
      Left = 158
      Top = 124
      Width = 44
      Height = 38
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 28
      Visible = False
      OnClick = BBT_302Click
    end
    object BBT_303: TBitBtn
      Left = 215
      Top = 124
      Width = 44
      Height = 38
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 29
      Visible = False
      OnClick = BBT_303Click
    end
    object BBT_304: TBitBtn
      Left = 273
      Top = 124
      Width = 43
      Height = 38
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 30
      Visible = False
      OnClick = BBT_304Click
    end
    object BBT_305: TBitBtn
      Left = 330
      Top = 124
      Width = 44
      Height = 38
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 31
      Visible = False
      OnClick = BBT_305Click
    end
    object BBT_310: TBitBtn
      Left = 344
      Top = 173
      Width = 43
      Height = 38
      Caption = '10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 32
      Visible = False
      OnClick = BBT_310Click
    end
    object BBT_309: TBitBtn
      Left = 285
      Top = 173
      Width = 44
      Height = 38
      Caption = '9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 33
      Visible = False
      OnClick = BBT_309Click
    end
    object BBT_308: TBitBtn
      Left = 229
      Top = 173
      Width = 43
      Height = 38
      Caption = '8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 34
      Visible = False
      OnClick = BBT_308Click
    end
    object BBT_307: TBitBtn
      Left = 171
      Top = 173
      Width = 43
      Height = 38
      Caption = '7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 35
      Visible = False
      OnClick = BBT_307Click
    end
    object BBT_306: TBitBtn
      Left = 113
      Top = 173
      Width = 44
      Height = 38
      Caption = '6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 36
      Visible = False
      OnClick = BBT_306Click
    end
    object BBT_319: TBitBtn
      Left = 284
      Top = 277
      Width = 44
      Height = 38
      Caption = '19'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 37
      Visible = False
      OnClick = BBT_319Click
    end
    object BBT_318: TBitBtn
      Left = 227
      Top = 277
      Width = 42
      Height = 38
      Caption = '18'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 38
      Visible = False
      OnClick = BBT_318Click
    end
    object BBT_317: TBitBtn
      Left = 170
      Top = 277
      Width = 43
      Height = 38
      Caption = '17'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 39
      Visible = False
      OnClick = BBT_317Click
    end
    object BBT_316: TBitBtn
      Left = 112
      Top = 277
      Width = 44
      Height = 38
      Caption = '16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 40
      Visible = False
      OnClick = BBT_316Click
    end
    object BBT_320: TBitBtn
      Left = 343
      Top = 277
      Width = 43
      Height = 38
      Caption = '20'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 41
      Visible = False
      OnClick = BBT_320Click
    end
    object BBT_315: TBitBtn
      Left = 329
      Top = 228
      Width = 43
      Height = 38
      Caption = '15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 42
      Visible = False
      OnClick = BBT_315Click
    end
    object BBT_314: TBitBtn
      Left = 272
      Top = 228
      Width = 43
      Height = 38
      Caption = '14'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 43
      Visible = False
      OnClick = BBT_314Click
    end
    object BBT_313: TBitBtn
      Left = 214
      Top = 228
      Width = 44
      Height = 38
      Caption = '13'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 44
      Visible = False
      OnClick = BBT_313Click
    end
    object BBT_312: TBitBtn
      Left = 157
      Top = 228
      Width = 44
      Height = 38
      Caption = '12'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 45
      Visible = False
      OnClick = BBT_312Click
    end
    object BBT_311: TBitBtn
      Left = 100
      Top = 228
      Width = 43
      Height = 38
      Caption = '11'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 46
      Visible = False
      OnClick = BBT_311Click
    end
    object BBT_321: TBitBtn
      Left = 101
      Top = 332
      Width = 43
      Height = 38
      Caption = '21'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 47
      Visible = False
      OnClick = BBT_321Click
    end
    object BBT_322: TBitBtn
      Left = 158
      Top = 332
      Width = 44
      Height = 38
      Caption = '22'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 48
      Visible = False
      OnClick = BBT_322Click
    end
    object BBT_323: TBitBtn
      Left = 215
      Top = 332
      Width = 44
      Height = 38
      Caption = '23'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 49
      Visible = False
      OnClick = BBT_323Click
    end
    object BBT_324: TBitBtn
      Left = 273
      Top = 332
      Width = 43
      Height = 38
      Caption = '24'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 50
      Visible = False
      OnClick = BBT_324Click
    end
    object BBT_325: TBitBtn
      Left = 330
      Top = 332
      Width = 44
      Height = 38
      Caption = '25'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 51
      Visible = False
      OnClick = BBT_325Click
    end
    object BBT_M3_SIM_AB: TBitBtn
      Left = 101
      Top = 505
      Width = 83
      Height = 31
      Caption = 'MODO A e B'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 52
      Visible = False
    end
    object BBT_M3_SIM_BC: TBitBtn
      Left = 188
      Top = 505
      Width = 84
      Height = 31
      Caption = 'MODO B e C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 53
      Visible = False
    end
    object BBT_M3_SIM_ABC: TBitBtn
      Left = 284
      Top = 505
      Width = 111
      Height = 31
      Caption = 'MODO A, B e C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 54
      Visible = False
    end
    object STGR_COMBINACOES_15F03: TStringGrid
      Left = 10
      Top = 511
      Width = 745
      Height = 185
      Anchors = [akLeft, akTop, akBottom]
      Color = clSilver
      ColCount = 16
      DefaultColWidth = 38
      DefaultRowHeight = 22
      DrawingStyle = gdsClassic
      RowCount = 12
      FixedRows = 0
      TabOrder = 55
    end
    object BBT_F03_A: TBitBtn
      Left = 1037
      Top = 308
      Width = 157
      Height = 32
      Caption = 'FILTRO A -> 5-6-4 / 6-5-4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 56
      Visible = False
      WordWrap = True
      OnClick = BBT_F03_AClick
    end
    object BBT_F03_A_: TBitBtn
      Left = 981
      Top = 308
      Width = 28
      Height = 32
      Caption = 'SIMULAR - MODO A -> 5-6-4 / 6-5-4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 57
      Visible = False
      WordWrap = True
      OnClick = BBT_F03_A_Click
    end
    object BBT_F03_B_: TBitBtn
      Left = 981
      Top = 343
      Width = 28
      Height = 32
      Caption = 'SIMULAR - MODO B -> 5-7-3 / 7-5-3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 58
      Visible = False
      WordWrap = True
      OnClick = BBT_F03_B_Click
    end
    object BBT_F03_B: TBitBtn
      Left = 1037
      Top = 343
      Width = 157
      Height = 32
      Caption = 'FILTRO B -> 5-7-3 / 7-5-3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 59
      Visible = False
      WordWrap = True
      OnClick = BBT_F03_BClick
    end
    object BBT_F03_C: TBitBtn
      Left = 1037
      Top = 378
      Width = 157
      Height = 32
      Caption = 'FILTRO C -> 6-7-2 / 7-6-2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 60
      Visible = False
      WordWrap = True
      OnClick = BBT_F03_CClick
    end
    object BBT_F03_C_: TBitBtn
      Left = 980
      Top = 377
      Width = 29
      Height = 32
      Caption = 'FILTRO C -> 6-7-2 / 7-6-2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 61
      Visible = False
      WordWrap = True
      OnClick = BBT_F03_C_Click
    end
    object BBT_F03_D: TBitBtn
      Left = 1035
      Top = 421
      Width = 157
      Height = 32
      Caption = 'FILTRO D -> A + B'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 62
      Visible = False
      WordWrap = True
      OnClick = BBT_F03_DClick
    end
    object BBT_F03_E: TBitBtn
      Left = 1035
      Top = 451
      Width = 157
      Height = 33
      Caption = 'FILTRO E -> A + C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 63
      Visible = False
      WordWrap = True
      OnClick = BBT_F03_EClick
    end
    object BBT_F03_F: TBitBtn
      Left = 1035
      Top = 484
      Width = 157
      Height = 32
      Caption = 'FILTRO F -> B + C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 64
      Visible = False
      WordWrap = True
      OnClick = BBT_F03_FClick
    end
    object BBT_F03_G: TBitBtn
      Left = 1035
      Top = 517
      Width = 157
      Height = 32
      Caption = 'FILTRO G -> A + B + C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 65
      Visible = False
      WordWrap = True
      OnClick = BBT_F03_GClick
    end
    object BBT_F03_ENCERRAR: TButton
      Left = 1092
      Top = 555
      Width = 95
      Height = 28
      Caption = 'ENCERRAR'
      TabOrder = 66
      Visible = False
      OnClick = BBT_F03_ENCERRARClick
    end
    object BT_GERAR_MENU: TButton
      Left = 99
      Top = 409
      Width = 301
      Height = 37
      Caption = 'GERAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 67
      OnClick = BT_GERAR_MENUClick
    end
    object PA_GERAR: TPanel
      Left = 518
      Top = 308
      Width = 402
      Height = 188
      BevelInner = bvLowered
      BevelWidth = 2
      BorderWidth = 1
      Color = 4273955
      ParentBackground = False
      TabOrder = 68
      object Panel2: TPanel
        Left = 5
        Top = 5
        Width = 392
        Height = 54
        Align = alTop
        BevelInner = bvLowered
        Color = clMedGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
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
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object BBT_GERAR: TBitBtn
        Left = 13
        Top = 128
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
      object BBT_GERAR_VOLTAR: TBitBtn
        Left = 219
        Top = 128
        Width = 171
        Height = 36
        Caption = '&VOLTAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BBT_GERAR_VOLTARClick
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
        Text = 'A => 5 - 6 - 4  /  6 - 5 -  4'
        Items.Strings = (
          'A => 5 - 6 - 4  /  6 - 5 -  4'
          'B => 5 - 7 - 3  /  7 - 5 -  3'
          'C => 6 - 7 - 2  /  7 - 6 -  2'
          'D => A + B'
          'E =>  A + C'
          'F =>  B + C'
          'G=>  A + B + C')
      end
    end
    object STRGR_TODOS_NUMEROS: TStringGrid
      Left = 24
      Top = 630
      Width = 811
      Height = 53
      Color = 16119214
      ColCount = 26
      DefaultColWidth = 26
      DefaultRowHeight = 20
      DrawingStyle = gdsClassic
      RowCount = 2
      FixedRows = 0
      TabOrder = 69
      Visible = False
    end
    object BBT_CANCELAR_SAIR: TBitBtn
      Left = 99
      Top = 449
      Width = 301
      Height = 51
      Caption = 'CANCELAR'#13#10'&& SAIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 70
      Visible = False
      OnClick = BBT_CANCELAR_SAIRClick
    end
  end
  object PA_TOPO: TPanel
    Left = 0
    Top = 0
    Width = 1208
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object BBT_CLOSE: TImage
      Left = 1152
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
      Width = 420
      Height = 37
      Caption = 'GERADOR PARA FILTRO 03'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15066597
      Font.Height = -32
      Font.Name = 'Benguiat Bk BT'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PA_INICIAL: TPanel
    Left = 1145
    Top = 249
    Width = 317
    Height = 353
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 4273955
    ParentBackground = False
    TabOrder = 2
    object Label55: TLabel
      Left = 18
      Top = 19
      Width = 279
      Height = 26
      Alignment = taCenter
      Caption = 'GERADOR - FILTRO 03'
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
      OnClick = BBT_CANCELAR_SAIRClick
    end
  end
  object PA_REMOVEUREPET: TPanel
    Left = 809
    Top = 180
    Width = 392
    Height = 477
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 4273955
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
      Width = 270
      Height = 29
      Align = alTop
      Alignment = taCenter
      Caption = 'GERADOR - FILTRO 03'
      Color = clMedGray
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
      Color = clMedGray
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
      Width = 253
      Height = 22
      Caption = 'Total de dados processados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14342874
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
      Font.Color = 15066597
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
      Font.Color = 14342874
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
      Font.Color = 15066597
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
      Font.Color = 14342874
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
      Font.Color = 14342874
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
      Font.Color = 15066597
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
      Font.Color = 15066597
      Font.Height = -18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object BBT_PA_REMOVEUREPET: TBitBtn
      Left = 18
      Top = 406
      Width = 349
      Height = 45
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
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\CXLOTOFACIL\COMBINACOES_15.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 1008
    Top = 36
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultAction = TACommitRetaining
    Left = 1008
    Top = 66
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
    Left = 1008
    Top = 97
  end
end
