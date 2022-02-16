object _F_Ranqueador_116d21M2: T_F_Ranqueador_116d21M2
  Left = 99
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '_F_Ranqueador_116d21M2'
  ClientHeight = 640
  ClientWidth = 1494
  Color = 4017767
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
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
    TabOrder = 3
    TabWidth = 112
    object TabSheet1: TTabSheet
      Caption = 'N'#250'meros'
      object Scbx_GABARITO: TScrollBox
        Left = 0
        Top = 0
        Width = 1486
        Height = 567
        HorzScrollBar.Range = 3470
        Align = alClient
        AutoScroll = False
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Color = 4413046
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          1486
          550)
        object La_NSorteioRank: TLabel
          Left = 931
          Top = 8
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
          Caption = '21 N'#218'MEROS  DE BASE'
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
          Left = 3922
          Top = 2
          Width = 641
          Height = 23
          Caption = 'E S T A T '#205' S T I C A S   P A R A   1 4   O C O R R '#202' N C I A S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14150655
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 1419
          Top = 6
          Width = 634
          Height = 23
          Caption = 'E S T A T '#205' S T I C A S   P A R A   15   O C O R R '#202' N C I A S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14150655
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object La_Ranqueado: TLabel
          Left = 1369
          Top = 8
          Width = 38
          Height = 18
          Caption = ' 000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16039873
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 238
          Top = 7
          Width = 139
          Height = 18
          Caption = 'Escolha o bloco:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14150655
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Stgr_Base21: TStringGrid
          Left = 4
          Top = 35
          Width = 745
          Height = 710
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          BorderStyle = bsNone
          Color = 11511165
          ColCount = 23
          DefaultColWidth = 30
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = 12629676
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
        object Stgr_Sorteios: TStringGrid
          Left = 763
          Top = 32
          Width = 645
          Height = 710
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          BorderStyle = bsNone
          Color = 11511165
          ColCount = 19
          DefaultColWidth = 30
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = 12629676
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
          Left = 1162
          Top = -1
          Width = 201
          Height = 34
          Caption = 'CARREGAR SORTEIOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnClick = Bbt_CarregarSorteio15NClick
        end
        object Bbt_Rank: TBitBtn
          Left = 762
          Top = -2
          Width = 163
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
          Left = 2320
          Top = 473
          Width = 763
          Height = 73
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
          Left = 4128
          Top = 31
          Width = 290
          Height = 710
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 10790013
          ColCount = 1
          DefaultColWidth = 266
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = 9536637
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
          Left = 4420
          Top = 31
          Width = 240
          Height = 710
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 10790013
          ColCount = 1
          DefaultColWidth = 215
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = 9536637
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
        object Stgr_EstatisticasOcorrencias15: TStringGrid
          Left = 2140
          Top = 31
          Width = 660
          Height = 710
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 10790013
          ColCount = 1
          DefaultColWidth = 630
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = 9536637
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
        object Stgr_EstatisticasSorteiosAtrasados15: TStringGrid
          Left = 2792
          Top = 32
          Width = 678
          Height = 710
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 10790013
          ColCount = 1
          DefaultColWidth = 655
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = 9536637
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
        object Stgr_Estatisticas15: TStringGrid
          Left = 1419
          Top = 31
          Width = 715
          Height = 710
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 10790013
          ColCount = 6
          DefaultColWidth = 110
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = 9536637
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
        object Stgr_Estatisticas: TStringGrid
          Left = 3472
          Top = 31
          Width = 715
          Height = 710
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Color = 10790013
          ColCount = 6
          DefaultColWidth = 111
          DefaultRowHeight = 23
          DrawingStyle = gdsClassic
          FixedColor = 9536637
          RowCount = 26
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          TabOrder = 1
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
        object Cb_Bloco: TComboBox
          Left = 383
          Top = 5
          Width = 162
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 11
          Text = 'Bloco 1 - 06 Linhas'
          Items.Strings = (
            'Bloco 1 - 06 Linhas'
            'Bloco 2 - 50 Linhas'
            'Bloco 3-  60 Linhas'
            'Bloco 4 - 25 Linhas')
        end
        object Bbt_CarregarSort1: TBitBtn
          Left = 550
          Top = -1
          Width = 201
          Height = 34
          Caption = 'Carregar 21 N'#250'meros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnClick = Bbt_CarregarSort1Click
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
    TabOrder = 1
    Visible = False
  end
  object PA_TOPO: TPanel
    Left = 0
    Top = 0
    Width = 1494
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = 1321790
    ParentBackground = False
    TabOrder = 2
    object Label53: TLabel
      Left = 5
      Top = 4
      Width = 879
      Height = 34
      Caption = 'Ranqueador 116 conjuntos de 21 n'#250'meros Modelo 2 - 3 Blocos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
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
      OnClick = BBT_RECOMECARClick
    end
  end
  object PA_INICIAL: TPanel
    Left = 1352
    Top = 187
    Width = 401
    Height = 206
    BevelInner = bvRaised
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = 2837870
    ParentBackground = False
    TabOrder = 0
    object Label55: TLabel
      Left = 16
      Top = 22
      Width = 361
      Height = 46
      Alignment = taCenter
      Caption = 'Ranqueador 116 conjuntos de 21 3 Blocos'
      Color = 4179168
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object BT_NOVA_SIMULACAO: TButton
      Left = 40
      Top = 85
      Width = 322
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
    object BBT_SAIR: TButton
      Left = 40
      Top = 137
      Width = 322
      Height = 38
      Caption = 'SAIR / FECHAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5579525
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBT_SAIRClick
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
  object Ibq_Jogos: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select numero, dados'
      'from RANK_166JGS_21NUMEROS2'
      'Where Bloco=2'
      'Group by numero,dados'
      'order by Numero')
    Left = 1205
    Top = 13
  end
end
