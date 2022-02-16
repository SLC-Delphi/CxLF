object Form1: TForm1
  Left = 157
  Top = 297
  BorderStyle = bsDialog
  Caption = 'Importando Dados'
  ClientHeight = 524
  ClientWidth = 1087
  Color = 4210688
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    1087
    524)
  PixelsPerInch = 96
  TextHeight = 18
  object TLabel_CarregarAviso: TLabel
    Left = 925
    Top = 52
    Width = 109
    Height = 18
    Caption = 'N'#227'o Carregado'
  end
  object TLabel_GravarAviso: TLabel
    Left = 1035
    Top = 494
    Width = 93
    Height = 18
    Caption = 'N'#227'o Gravado'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label1_Number: TLabel
    Left = 925
    Top = 457
    Width = 25
    Height = 18
    Caption = '111'
  end
  object TMemo_Numeros: TMemo
    Left = 135
    Top = 463
    Width = 793
    Height = 53
    Lines.Strings = (
      'TMemo_Numeros')
    TabOrder = 4
    Visible = False
  end
  object TButton_Carregar: TButton
    Left = 925
    Top = 16
    Width = 115
    Height = 31
    Caption = 'Carregar'
    TabOrder = 0
    OnClick = TButton_CarregarClick
  end
  object TButton_Gravar: TButton
    Left = 925
    Top = 420
    Width = 115
    Height = 31
    Caption = 'Gravar'
    Enabled = False
    TabOrder = 1
    OnClick = TButton_GravarClick
  end
  object PGBR_Gravando: TProgressBar
    Left = 813
    Top = 478
    Width = 134
    Height = 17
    TabOrder = 2
  end
  object stgr_Jogos21Numeros: TStringGrid
    Left = 8
    Top = 8
    Width = 679
    Height = 505
    Color = clMoneyGreen
    ColCount = 22
    DefaultColWidth = 28
    DrawingStyle = gdsClassic
    FixedColor = clTeal
    TabOrder = 3
  end
  object stgr_Jogos05Numeros: TStringGrid
    Left = 690
    Top = 8
    Width = 230
    Height = 505
    Color = clMoneyGreen
    DefaultColWidth = 36
    DrawingStyle = gdsClassic
    FixedColor = clTeal
    TabOrder = 5
  end
  object Stgr_TodosNumeros: TStringGrid
    Left = 8
    Top = 466
    Width = 679
    Height = 50
    Anchors = [akLeft, akBottom]
    Color = 9136444
    ColCount = 25
    DefaultColWidth = 26
    DefaultRowHeight = 20
    DrawingStyle = gdsClassic
    RowCount = 2
    FixedRows = 0
    TabOrder = 6
    Visible = False
  end
  object Mem_CombinacoesTodas: TMemo
    Left = 135
    Top = 361
    Width = 793
    Height = 53
    TabOrder = 7
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
    Left = 922
    Top = 82
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultAction = TACommitRetaining
    Left = 922
    Top = 106
  end
  object IBQ_Combinacoes: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT FIRST 10 * FROM COMBINACOES_15')
    Left = 922
    Top = 130
  end
end
