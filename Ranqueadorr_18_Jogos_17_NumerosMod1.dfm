object _F_Ranqueador_18_Jogos_17_NumerosMod1: T_F_Ranqueador_18_Jogos_17_NumerosMod1
  Left = 99
  Top = 9
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Ranqueador'
  ClientHeight = 640
  ClientWidth = 1494
  Color = 3959176
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 43
    Width = 1494
    Height = 597
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    TabOrder = 6
    TabWidth = 112
    object TabSheet1: TTabSheet
      Caption = 'N'#250'meros'
      object Scbx_GABARITO: TScrollBox
        Left = 0
        Top = 0
        Width = 1486
        Height = 567
        HorzScrollBar.Range = 6599
        Align = alClient
        AutoScroll = False
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Color = 274500
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          1486
          550)
        object La_NSorteioRank: TLabel
          Left = 731
          Top = 14
          Width = 33
          Height = 18
          Caption = '000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14150655
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 4
          Top = 8
          Width = 202
          Height = 18
          Caption = '17 N'#218'MEROS  DE BASE'
          Color = 4271365
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14150655
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label14: TLabel
          Left = 3244
          Top = 4
          Width = 506
          Height = 18
          Caption = 'E S T A T '#205' S T I C A S   P A R A   1 2   O C O R R '#202' N C I A S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14150655
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 4522
          Top = 7
          Width = 501
          Height = 18
          Caption = 'E S T A T '#205' S T I C A S   P A R A   13   O C O R R '#202' N C I A S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8454143
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 1791
          Top = 4
          Width = 501
          Height = 18
          Caption = 'E S T A T '#205' S T I C A S   P A R A   11   O C O R R '#202' N C I A S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14150655
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 5866
          Top = 4
          Width = 506
          Height = 18
          Caption = 'E S T A T '#205' S T I C A S   P A R A   1 4   O C O R R '#202' N C I A S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8454143
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Stgr_Base17: TStringGrid
          Left = 4
          Top = 35
          Width = 621
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          BorderStyle = bsNone
          Color = 11502943
          ColCount = 19
          DefaultColWidth = 30
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = 11048845
          FixedCols = 2
          RowCount = 26
          Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
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
            30)
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Stgr_Estatisticas: TStringGrid
          Left = 2648
          Top = 28
          Width = 734
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12424026
          ColCount = 6
          DefaultColWidth = 120
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = clGray
          RowCount = 26
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          TabOrder = 1
          ColWidths = (
            120
            120
            120
            120
            120
            120)
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Stgr_Sorteios: TStringGrid
          Left = 635
          Top = 34
          Width = 645
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          BorderStyle = bsNone
          Color = 11502943
          ColCount = 19
          DefaultColWidth = 30
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = 11048845
          RowCount = 26
          Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
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
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Bbt_CarregarSorteio15N: TBitBtn
          Left = 384
          Top = 1
          Width = 241
          Height = 34
          Caption = 'CARREGAR SORTEIOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnClick = Bbt_CarregarSorteio15NClick
        end
        object Bbt_Rank: TBitBtn
          Left = 634
          Top = 0
          Width = 89
          Height = 34
          Caption = 'Rank'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Bbt_RankClick
        end
        object Stgr_Todos_Numeros: TStringGrid
          Left = 227
          Top = 473
          Width = 763
          Height = 779
          Color = 9136444
          ColCount = 26
          DefaultColWidth = 26
          DefaultRowHeight = 20
          DrawingStyle = gdsClassic
          RowCount = 3
          FixedRows = 0
          TabOrder = 5
          Visible = False
        end
        object Stgr_EstatisticasOcorrencias: TStringGrid
          Left = 3383
          Top = 28
          Width = 297
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12424026
          ColCount = 1
          DefaultColWidth = 266
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = clGray
          FixedCols = 0
          RowCount = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          ParentFont = False
          TabOrder = 6
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Stgr_EstatisticasSorteiosAtrasados: TStringGrid
          Left = 3682
          Top = 28
          Width = 247
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12424026
          ColCount = 1
          DefaultColWidth = 215
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = clGray
          FixedCols = 0
          RowCount = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          ParentFont = False
          TabOrder = 7
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Stgr_EstatisticasOcorrencias13: TStringGrid
          Left = 4714
          Top = 31
          Width = 302
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12424026
          ColCount = 1
          DefaultColWidth = 266
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = clGray
          FixedCols = 0
          RowCount = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          ParentFont = False
          TabOrder = 8
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Stgr_EstatisticasSorteiosAtrasados13: TStringGrid
          Left = 5019
          Top = 31
          Width = 248
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12424026
          ColCount = 1
          DefaultColWidth = 215
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = clGray
          FixedCols = 0
          RowCount = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          ParentFont = False
          TabOrder = 9
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Stgr_Estatisticas13: TStringGrid
          Left = 3946
          Top = 32
          Width = 763
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12424026
          ColCount = 6
          DefaultColWidth = 120
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = clGray
          RowCount = 26
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          TabOrder = 10
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Stgr_Estatisticas11: TStringGrid
          Left = 1323
          Top = 30
          Width = 743
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12424026
          ColCount = 6
          DefaultColWidth = 120
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = clGray
          RowCount = 26
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          TabOrder = 11
          ColWidths = (
            120
            120
            120
            120
            120
            120)
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Stgr_EstatisticasOcorrencias11: TStringGrid
          Left = 2066
          Top = 30
          Width = 302
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12424026
          ColCount = 1
          DefaultColWidth = 266
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = clGray
          FixedCols = 0
          RowCount = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          ParentFont = False
          TabOrder = 12
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Stgr_EstatisticasSorteiosAtrasados11: TStringGrid
          Left = 2369
          Top = 30
          Width = 251
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12424026
          ColCount = 1
          DefaultColWidth = 215
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = clGray
          FixedCols = 0
          RowCount = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          ParentFont = False
          TabOrder = 13
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Stgr_Estatisticas14: TStringGrid
          Left = 5289
          Top = 28
          Width = 763
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12424026
          ColCount = 6
          DefaultColWidth = 120
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = clGray
          RowCount = 26
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          TabOrder = 14
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Stgr_EstatisticasOcorrencias14: TStringGrid
          Left = 6058
          Top = 28
          Width = 302
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12424026
          ColCount = 1
          DefaultColWidth = 266
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = clGray
          FixedCols = 0
          RowCount = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          ParentFont = False
          TabOrder = 15
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
        object Stgr_EstatisticasSorteiosAtrasados14: TStringGrid
          Left = 6362
          Top = 28
          Width = 248
          Height = 694
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 12424026
          ColCount = 1
          DefaultColWidth = 215
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = clGray
          FixedCols = 0
          RowCount = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          ParentFont = False
          TabOrder = 16
          RowHeights = (
            23
            24
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23
            23)
        end
      end
    end
  end
  object MEM_COMBINACOES_TODAS: TMemo
    Left = 1457
    Top = 435
    Width = 220
    Height = 205
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
    Width = 1494
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 4487571
    ParentBackground = False
    TabOrder = 3
    object Label53: TLabel
      Left = 5
      Top = 4
      Width = 485
      Height = 34
      Caption = 'RANQUEADOR 18 Conjuntos de 17'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -28
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object BBT_CLOSE: TImage
      Left = 1260
      Top = 1
      Width = 32
      Height = 32
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
      Left = 970
      Top = 5
      Width = 99
      Height = 31
      Caption = 'RECOME'#199'AR'
      TabOrder = 0
      Visible = False
    end
  end
  object PA_REMOVEUREPET: TPanel
    Left = 1430
    Top = 36
    Width = 342
    Height = 600
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = 7755043
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label44: TLabel
      Left = 8
      Top = 8
      Width = 322
      Height = 25
      Align = alTop
      Alignment = taCenter
      Caption = 'GERADOR 25 jg 17x8 n'#186
      Color = 11502943
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5587205
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitWidth = 252
    end
    object Label45: TLabel
      Left = 8
      Top = 33
      Width = 322
      Height = 60
      Align = alTop
      Alignment = taCenter
      Caption = 'GERA'#199#195'O, ORDENA'#199#195'O E '#13'REMO'#199#195'O DE REPETIDOS'#13' ENCERRADA:'
      Color = 11502943
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5587205
      Font.Height = -17
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitWidth = 231
    end
    object Label46: TLabel
      Left = 20
      Top = 287
      Width = 231
      Height = 19
      Caption = 'Total de dados processados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 20
      Top = 340
      Width = 197
      Height = 19
      Caption = 'Total de dados gerados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_rTOTAL_COMB: TLabel
      Left = 20
      Top = 308
      Width = 100
      Height = 19
      Caption = '0000000000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_rQTD_COMB: TLabel
      Left = 20
      Top = 359
      Width = 40
      Height = 19
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label58: TLabel
      Left = 10
      Top = 112
      Width = 225
      Height = 19
      Caption = '1. In'#237'cio do Processamento:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_gINICIO_100REPET: TLabel
      Left = 135
      Top = 129
      Width = 187
      Height = 19
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label60: TLabel
      Left = 9
      Top = 153
      Width = 251
      Height = 38
      Caption = '2. T'#233'rmino do Processamento'#13'&& In'#237'cio remo'#231#227'o de repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label49: TLabel
      Left = 9
      Top = 214
      Width = 299
      Height = 38
      Caption = '3. Recupera'#231#227'o dos dados '#13'&& T'#233'rmino da remo'#231#227'o de repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_gFIM_100REPET: TLabel
      Left = 135
      Top = 250
      Width = 187
      Height = 19
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_gFIM_GERAR: TLabel
      Left = 135
      Top = 189
      Width = 187
      Height = 19
      Caption = '01/01/2001 - 00:00:00'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label50: TLabel
      Left = 20
      Top = 390
      Width = 270
      Height = 19
      Caption = 'Total de dados sem os repetidos:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LA_rTOTAL_100REPET: TLabel
      Left = 20
      Top = 409
      Width = 40
      Height = 19
      Caption = '0000'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LA_rTOT_PROCESSAMENTO: TLabel
      Left = 226
      Top = 505
      Width = 64
      Height = 16
      Alignment = taRightJustify
      Caption = '00000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_rATRIBUICAO_DADOS: TLabel
      Left = 227
      Top = 490
      Width = 64
      Height = 16
      Alignment = taRightJustify
      Caption = '00000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_rLogic_Comp: TLabel
      Left = 226
      Top = 474
      Width = 64
      Height = 16
      Alignment = taRightJustify
      Caption = '00000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LA_rTOT_CALC: TLabel
      Left = 226
      Top = 458
      Width = 64
      Height = 16
      Alignment = taRightJustify
      Caption = '00000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label39: TLabel
      Left = 32
      Top = 459
      Width = 178
      Height = 16
      Caption = 'Total c'#225'lculos processados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label41: TLabel
      Left = 32
      Top = 475
      Width = 170
      Height = 16
      Caption = 'Total compara'#231#245'es l'#243'gicas'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label43: TLabel
      Left = 32
      Top = 491
      Width = 163
      Height = 16
      Caption = 'Movimenta'#231#227'o de Dados:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label42: TLabel
      Left = 32
      Top = 506
      Width = 141
      Height = 16
      Caption = 'Processamento Total:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object BBT_PA_REMOVEUREPET: TBitBtn
      Left = 16
      Top = 540
      Width = 304
      Height = 40
      Caption = 'OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BBT_PA_REMOVEUREPETClick
    end
  end
  object PA_INICIAL: TPanel
    Left = 1352
    Top = 21
    Width = 279
    Height = 308
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 1657700
    ParentBackground = False
    TabOrder = 1
    object Label55: TLabel
      Left = 10
      Top = 17
      Width = 372
      Height = 23
      Alignment = taCenter
      Caption = 'RANQUEADOR 18 Conjuntos de 17'
      Color = 4179168
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BT_NOVA_SIMULACAO: TButton
      Left = 25
      Top = 60
      Width = 225
      Height = 38
      Caption = 'NOVO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BT_NOVA_SIMULACAOClick
    end
    object BT_REAJUSTAR: TButton
      Left = 25
      Top = 101
      Width = 225
      Height = 38
      Caption = 'REAJUSTAR'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BT_REAJUSTARClick
    end
    object BBT_SAIR: TButton
      Left = 25
      Top = 183
      Width = 225
      Height = 38
      Caption = 'SAIR / FECHAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_SAIRClick
    end
    object BBT_CARREGAR: TButton
      Left = 25
      Top = 142
      Width = 225
      Height = 38
      Caption = 'CARREGAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBT_CARREGARClick
    end
    object BBT_CANCELAR: TBitBtn
      Left = 26
      Top = 246
      Width = 225
      Height = 38
      Caption = 'CANCELAR && SAIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBT_CANCELARClick
    end
  end
  object PA_GERAR: TPanel
    Left = 1458
    Top = 497
    Width = 351
    Height = 134
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 1
    Color = 11502943
    ParentBackground = False
    TabOrder = 4
    object Panel2: TPanel
      Left = 5
      Top = 5
      Width = 341
      Height = 47
      Align = alTop
      BevelInner = bvLowered
      Color = 5256965
      ParentBackground = False
      TabOrder = 0
      object Label63: TLabel
        Left = 44
        Top = 7
        Width = 234
        Height = 34
        Caption = 'FILTRO GERAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -28
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BBT_GERAR: TBitBtn
      Left = 11
      Top = 92
      Width = 149
      Height = 31
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_GERARClick
    end
    object BBT_GERAR_SAIR: TBitBtn
      Left = 191
      Top = 92
      Width = 149
      Height = 31
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBT_GERAR_SAIRClick
    end
    object CB_MODO_FILTRO: TComboBox
      Left = 13
      Top = 62
      Width = 323
      Height = 24
      Style = csDropDownList
      Color = clSilver
      DropDownCount = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = 'MODO 1 - SOMATORIA SEM FAIXA'
      Visible = False
      Items.Strings = (
        'MODO 1 - SOMATORIA SEM FAIXA'
        'MODO 2 - SOMATORIA COM FAIXA')
    end
  end
  object PA_PREPARAR: TPanel
    Left = 1458
    Top = 324
    Width = 399
    Height = 167
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = 9136444
    ParentBackground = False
    TabOrder = 5
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 395
      Height = 50
      Align = alTop
      BevelInner = bvLowered
      Color = 12166515
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        Left = 124
        Top = 8
        Width = 151
        Height = 31
        Caption = 'PREPARAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -25
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BBT_PREPARAR1: TBitBtn
      Left = 6
      Top = 122
      Width = 150
      Height = 41
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_PREPARAR1Click
    end
    object BitBtn2: TBitBtn
      Left = 244
      Top = 122
      Width = 150
      Height = 41
      Caption = 'VOLTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
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
  object Ibq_E_SORTEIO_15N: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *'
      'from E_SORTEIO_15N'
      'order by N_SORTEIO')
    Left = 1149
    Top = 13
  end
  object Ds_E_SORTEIO_15N: TDataSource
    DataSet = Ibq_E_SORTEIO_15N
    Left = 1151
    Top = 64
  end
end
