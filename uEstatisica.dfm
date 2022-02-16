object F_Estatisica: TF_Estatisica
  Left = 1356
  Top = 35
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Estatisica'
  ClientHeight = 655
  ClientWidth = 212
  Color = 528392
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label42: TLabel
    Left = 19
    Top = 69
    Width = 113
    Height = 18
    Caption = #218'ltimo Sorteio:'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 9888255
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object DBGrid1: TDBGrid
    Left = 19
    Top = 92
    Width = 174
    Height = 552
    Color = 1280
    Ctl3D = False
    DataSource = DS_Estatistica
    DrawingStyle = gdsClassic
    FixedColor = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 9888255
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgEditing, dgTitles, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#250'mero'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taRightJustify
        Title.Caption = 'Quantidade'
        Width = 85
        Visible = True
      end>
  end
  object ED_Ultimo_Sorteio: TEdit
    Left = 135
    Top = 64
    Width = 57
    Height = 24
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = '1111'
  end
  object Button1: TButton
    Left = 185
    Top = 622
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    Visible = False
    OnClick = Button1Click
  end
  object btRefresh: TButton
    Left = 133
    Top = 10
    Width = 62
    Height = 45
    Caption = 'Atualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btRefreshClick
  end
  object Panel1: TPanel
    Left = 18
    Top = 10
    Width = 110
    Height = 46
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 11458559
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11458559
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    object rbQuantidade: TRadioButton
      Left = 8
      Top = 4
      Width = 88
      Height = 16
      Caption = 'Quantidade'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11458559
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = rbQuantidadeClick
    end
    object rbNumerica: TRadioButton
      Left = 9
      Top = 25
      Width = 83
      Height = 17
      Caption = 'Num'#233'rica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11458559
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbNumericaClick
    end
  end
  object DS_Estatistica: TDataSource
    DataSet = DM1.IBQ_Estatisica
    Left = 121
    Top = 2
  end
end
