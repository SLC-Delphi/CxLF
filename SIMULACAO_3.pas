unit SIMULACAO_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, Math, strutils,
  Buttons, ExtCtrls, Grids, DBGrids;

type
  T_FRM_SIMULACAO3 = class(TForm)
    SCBX_GABARITO: TScrollBox;
    Label7: TLabel;
    STGR_BASE_25: TStringGrid;
    PA_TOPO: TPanel;
    BBT_CLOSE: TImage;
    PA_RESULTADO: TPanel;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_GERAR_MENU: TBitBtn;
    BBT_CANCELAR_SAIR: TBitBtn;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_TOTAL_100REPET: TLabel;
    LA_GERAR_COMB: TLabel;
    LA_TOTAL_COMB: TLabel;
    PGBR_GERARCOMB1: TProgressBar;
    PGBR_GERARCOMB0: TProgressBar;
    PA_REMOVEUREPET: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    LA_rTOTAL_COMB: TLabel;
    LA_rQTD_COMB: TLabel;
    Label58: TLabel;
    LA_gINICIO_100REPET: TLabel;
    Label60: TLabel;
    Label49: TLabel;
    LA_gFIM_100REPET: TLabel;
    LA_gFIM_GERAR: TLabel;
    Label50: TLabel;
    LA_rTOTAL_100REPET: TLabel;
    LA_rTOT_PROCESSAMENTO: TLabel;
    LA_rATRIBUICAO_DADOS: TLabel;
    LA_rLogic_Comp: TLabel;
    LA_rTOT_CALC: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label42: TLabel;
    PA_INICIAL: TPanel;
    LA_TITULO_MenuInicial: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    BBT_SAIR: TButton;
    BBT_CARREGAR: TButton;
    BBT_CANCELAR: TBitBtn;
    PA_GERAR: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_GERAR: TBitBtn;
    BBT_GERAR_voltar: TBitBtn;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    PA_COLUNA1: TPanel;
    Label56: TLabel;
    ED_SOMAS_G3_INI: TEdit;
    PA_COLUNA2: TPanel;
    Label61: TLabel;
    ED_SOMAS_C1_INI: TEdit;
    PA_COLUNA4: TPanel;
    Label25: TLabel;
    ED_SOMAS_C3_INI: TEdit;
    PA_COLUNA3: TPanel;
    Label72: TLabel;
    ED_SOMAS_C2_INI: TEdit;
    ED_TSLEEP: TEdit;
    BBT_PA_REMOVEUREPET: TBitBtn;
    BBT_BLOCO_NOTAS: TBitBtn;
    MEM_COMBINACOES_TODAS: TMemo;
    BBT_Etapa_03: TBitBtn;
    Label1: TLabel;
    PA_COLUNA5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    ED_SOMAS_C4_INI: TEdit;
    Panel3: TPanel;
    Label8: TLabel;
    ED_SOMAS_G1_INI: TEdit;
    BBT_ETAPA_01: TBitBtn;
    PA_COLUNA6: TPanel;
    Label9: TLabel;
    ED_SOMAS_C5_INI: TEdit;
    PA_COLUNA7: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    ED_SOMAS_C6_INI: TEdit;
    PA_COLUNA8: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    ED_SOMAS_C7_INI: TEdit;
    Panel7: TPanel;
    Label15: TLabel;
    PageControl_RESULTADO: TPageControl;
    TBS_ETAPA3: TTabSheet;
    DS1: TDataSource;
    PA_FIXOS_C1: TPanel;
    Label16: TLabel;
    ED_FIXOS_01_C8: TEdit;
    PA_FIXOS_C2: TPanel;
    Label17: TLabel;
    ED_FIXOS_01_C1: TEdit;
    TBS_ETAPA1: TTabSheet;
    SCBX_INICIAR: TScrollBox;
    STGR_COLUNA_01e02_SOBRAS: TStringGrid;
    STGR_COLUNA_01_com02: TStringGrid;
    STGR_COLUNA_01_SOBRAS: TStringGrid;
    STGR_COLUNA_01: TStringGrid;
    Bevel1: TBevel;
    Label18: TLabel;
    Bevel2: TBevel;
    Label19: TLabel;
    LA_RESULTADO_TXT: TLabel;
    PA_FIXOS_C3: TPanel;
    Label20: TLabel;
    ED_FIXOS_01_C2: TEdit;
    PA_FIXOS_C4: TPanel;
    Label21: TLabel;
    ED_FIXOS_01_C3: TEdit;
    PA_FIXOS_C5: TPanel;
    Label22: TLabel;
    ED_FIXOS_01_C4: TEdit;
    PA_FIXOS_C6: TPanel;
    Label23: TLabel;
    ED_FIXOS_01_C5: TEdit;
    PA_FIXOS_C7: TPanel;
    Label24: TLabel;
    ED_FIXOS_01_C6: TEdit;
    PA_FIXOS_C8: TPanel;
    Label26: TLabel;
    ED_FIXOS_01_C7: TEdit;
    Label27: TLabel;
    IBQ_COMBINACOES2: TIBQuery;
    DS2: TDataSource;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label28: TLabel;
    Label10: TLabel;
    ED_SOMAS_G2_INI: TEdit;
    STGR_COLUNA_02: TStringGrid;
    TBS_ETAPA4: TTabSheet;
    STGR_SOBRAS_16: TStringGrid;
    STGR_SOBRAS_13: TStringGrid;
    STGR_COLUNA_03: TStringGrid;
    STGR_COLUNA_04: TStringGrid;
    STGR_COLUNA_01e02e03e04_SOBRAS: TStringGrid;
    STGR_COLUNA_SOMA_C1234: TStringGrid;
    STGR_COLUNA_SOMA_C05e06e07: TStringGrid;
    STGR_COLUNA_05e06e07_SOBRAS: TStringGrid;
    STGR_COLUNA_07: TStringGrid;
    STGR_COLUNA_06: TStringGrid;
    STGR_COLUNA_05: TStringGrid;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    BBT_Etapa_04: TBitBtn;
    STGR_SOBRAS_10: TStringGrid;
    STGR_SOBRAS_08: TStringGrid;
    TBS_ETAPA5: TTabSheet;
    STGR_COLUNA_08: TStringGrid;
    STGR_COLUNA_09: TStringGrid;
    STGR_COLUNA_SOMA_C08e09: TStringGrid;
    STGR_COLUNA_10: TStringGrid;
    Label38: TLabel;
    Label40: TLabel;
    Label48: TLabel;
    STGR_COLUNA_11: TStringGrid;
    Label51: TLabel;
    ED_SOMAS_C8e9_INI: TEdit;
    ED_SOMAS_C8e9_FINAL: TEdit;
    BBT_ETAPA_05: TBitBtn;
    STGR_SOBRAS_06: TStringGrid;
    STGR_EXCLUIDOS_07: TStringGrid;
    BBT_725: TBitBtn;
    BBT_724: TBitBtn;
    BBT_723: TBitBtn;
    BBT_722: TBitBtn;
    BBT_721: TBitBtn;
    BBT_720: TBitBtn;
    BBT_718: TBitBtn;
    BBT_717: TBitBtn;
    BBT_716: TBitBtn;
    BBT_715: TBitBtn;
    BBT_714: TBitBtn;
    BBT_713: TBitBtn;
    BBT_712: TBitBtn;
    BBT_711: TBitBtn;
    BBT_710: TBitBtn;
    BBT_709: TBitBtn;
    BBT_707: TBitBtn;
    BBT_706: TBitBtn;
    BBT_705: TBitBtn;
    BBT_704: TBitBtn;
    BBT_703: TBitBtn;
    BBT_702: TBitBtn;
    BBT_701: TBitBtn;
    BBT_719: TBitBtn;
    BBT_708: TBitBtn;
    BBT_RECOMECAR: TBitBtn;
    BBT_CLICK_TUDO: TButton;
    STGR_BASE_A: TStringGrid;
    STGR_BASE_B: TStringGrid;
    STGR_BASE_C: TStringGrid;
    STGR_BASE_D: TStringGrid;
    Label52: TLabel;
    Label54: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Bevel3: TBevel;
    BBT_ETAPA_06: TBitBtn;
    TBS_RESULTADO: TTabSheet;
    STGR_15_NUMBEROS: TStringGrid;
    DBG_RESULTADO: TDBGrid;
    LA_TITULO: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure BT_REAJUSTARClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_SAIRClick(Sender: TObject);
    procedure BBT_CANCELARClick(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure BBT_GERAR_MENUClick(Sender: TObject);
    procedure BBT_GERAR_voltarClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
    procedure BBT_ETAPA_01Click(Sender: TObject);
    procedure BBT_Etapa_03Click(Sender: TObject);
    procedure PageControl_RESULTADOEnter(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure TRB_C2_INIChange(Sender: TObject);
    procedure TRB_C3_INIChange(Sender: TObject);
    procedure TRB_C4_INIChange(Sender: TObject);
    procedure TRB_C5_INIChange(Sender: TObject);
    procedure TRB_G2_INIChange(Sender: TObject);
    procedure BBT_Etapa_04Click(Sender: TObject);
    procedure BBT_ETAPA_05Click(Sender: TObject);
    procedure BBT_RECOMECARClick(Sender: TObject);
    procedure BBT_CLICK_TUDOClick(Sender: TObject);
    procedure BBT_701Click(Sender: TObject);
    procedure BBT_702Click(Sender: TObject);
    procedure BBT_703Click(Sender: TObject);
    procedure BBT_705Click(Sender: TObject);
    procedure BBT_707Click(Sender: TObject);
    procedure BBT_709Click(Sender: TObject);
    procedure BBT_711Click(Sender: TObject);
    procedure BBT_713Click(Sender: TObject);
    procedure BBT_715Click(Sender: TObject);
    procedure BBT_717Click(Sender: TObject);
    procedure BBT_719Click(Sender: TObject);
    procedure BBT_721Click(Sender: TObject);
    procedure BBT_723Click(Sender: TObject);
    procedure BBT_725Click(Sender: TObject);
    procedure BBT_704Click(Sender: TObject);
    procedure BBT_706Click(Sender: TObject);
    procedure BBT_708Click(Sender: TObject);
    procedure BBT_710Click(Sender: TObject);
    procedure BBT_712Click(Sender: TObject);
    procedure BBT_714Click(Sender: TObject);
    procedure BBT_716Click(Sender: TObject);
    procedure BBT_718Click(Sender: TObject);
    procedure BBT_720Click(Sender: TObject);
    procedure BBT_722Click(Sender: TObject);
    procedure BBT_724Click(Sender: TObject);
    procedure BBT_ETAPA_06Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    F_SET_MODALIDADE: STRING;
    { Private declarations }
     procedure PR_LIMPAR_GRIDiniciar ();
     procedure PR_LIMPAR_GRIDpreparar ();
     procedure PR_LIMPAR_GRIDpreparar2 ();
     procedure PR_LIMPAR_GRIDetapa4 ();
     PROCEDURE PR_BOTOES_MODELO_ABCD1 (VI_NUMERO: INTEGER; VS_IMPAR: STRING);
    procedure SET_F_MODALIDADE(const Value: STRING);
  public
    { Public declarations }
     PROPERTY _MODALIDADE : STRING READ F_SET_MODALIDADE WRITE SET_F_MODALIDADE ;
  end; // type


var
  _FRM_SIMULACAO3: T_FRM_SIMULACAO3;

implementation

{$R *.dfm}



procedure T_FRM_SIMULACAO3.SET_F_MODALIDADE(const Value: STRING);
begin
  F_SET_MODALIDADE := Value;
end;




procedure T_FRM_SIMULACAO3.PR_LIMPAR_GRIDiniciar ();
BEGIN
     STGR_COLUNA_01.CleanupInstance;
     STGR_COLUNA_01.Free;
     STGR_COLUNA_01:= TStringGrid.Create(SELF);
	 STGR_COLUNA_01.Parent:= SCBX_INICIAR;
     WITH STGR_COLUNA_01 DO
     BEGIN
          Left   := 8   ;
          Top    := 35  ;
          Width  := 260 ;
          Height := 248 ;
          TabStop := False  ;
          Align := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          BorderStyle := bsNone ;
          Color := 10666490 ;
          ColCount := 7     ;
          DefaultColWidth := 32   ;
          DefaultRowHeight := 27  ;
          FixedColor := clMedGray ;
          FixedCols := 3    ;
          RowCount := 2     ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText      ;
          Font.Height := -13              ;
          Font.Name := 'Tahoma'           ;
          Font.Style := []                ;
          Options := [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect] ;
          ParentFont := False ;
          TabOrder := 3       ;
     end ; // WITH

     STGR_COLUNA_01_SOBRAS.CleanupInstance;
     STGR_COLUNA_01_SOBRAS.Free;
     STGR_COLUNA_01_SOBRAS := TStringGrid.Create(Self);
     STGR_COLUNA_01_SOBRAS.Parent := SCBX_INICIAR;
     WITH STGR_COLUNA_01_SOBRAS DO
     BEGIN
          Left   := 273  ;
          Top    := 35   ;
          Width  := 798  ;
          Height := 228  ;
          TabStop := False ;
          Align := alCustom  ;
          Anchors := [akLeft, akTop, akBottom] ;
          BorderStyle := bsNone ;
          Color := 10666490  ;
          ColCount := 23   ;
          DefaultColWidth := 32  ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          RowCount := 2    ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -13         ;
          Font.Name := 'Tahoma'      ;
          Font.Style := []          ;
          Options := [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect];
          ParentFont := False ;
          TabOrder := 2       ;
     end; //with
     STGR_COLUNA_02.CleanupInstance;
     STGR_COLUNA_02.Free;
     STGR_COLUNA_02 := TStringGrid.Create(Self);
     STGR_COLUNA_02.Parent := SCBX_INICIAR;
     with  STGR_COLUNA_02 do
     begin
          Left    := 1089       ;
          Top     := 3       ;
          Width   := 228     ;
       //   Height  := 272     ;
          TabStop := False  ;
          Align   := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          Color   := 13691095     ;
          ColCount := 6         ;
          DefaultColWidth  := 30 ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          FixedCols := 3   ;
          RowCount  := 2   ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -13      ;
          Font.Name := 'Tahoma' ;
          Font.Style := []    ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentFont := False ;
          TabOrder   := 0     ;
     end; // with
END; // PR_LIMPAR_GRIDiniciar





PROCEDURE T_FRM_SIMULACAO3.PR_LIMPAR_GRIDpreparar ();
BEGIN
     STGR_COLUNA_03.CleanupInstance;
     STGR_COLUNA_03.Free;
     STGR_COLUNA_03 := TStringGrid.Create(Self);
     STGR_COLUNA_03.Parent := TBS_ETAPA3;
     with  STGR_COLUNA_03 do
     begin
          Left    := 5     ;
          Top     := 20       ;
          Width   := 218     ;
          Height  := 270     ;
          TabStop := False  ;
          Align   := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          Color   := 13691095     ;
          ColCount := 6         ;
          DefaultColWidth  := 28 ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          FixedCols := 3   ;
          RowCount  := 2   ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -15      ;
          Font.Name := 'Times New Roman' ;
          Font.Style := []    ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentFont  := False ;
          ParentCtl3D := False ;
          TabOrder   := 0     ;
     end; // with


     STGR_COLUNA_04.CleanupInstance;
     STGR_COLUNA_04.Free;
     STGR_COLUNA_04 := TStringGrid.Create(Self);
     STGR_COLUNA_04.Parent := TBS_ETAPA3;
     with  STGR_COLUNA_04 do
     begin
          Left    := 226     ;
          Top     := 20       ;
          Width   := 218     ;
          Height  := 270     ;
          TabStop := False  ;
          Align   := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          Color   := 13691095     ;
          ColCount := 6         ;
          DefaultColWidth  := 28 ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          FixedCols := 3   ;
          RowCount  := 2   ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -13      ;
          Font.Name := 'Tahoma' ;
          Font.Style := []    ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentFont := False ;
          TabOrder   := 1     ;
     end; // with

END; //





PROCEDURE T_FRM_SIMULACAO3.PR_LIMPAR_GRIDpreparar2 ();
BEGIN
     STGR_COLUNA_03.CleanupInstance;
     STGR_COLUNA_03.Free;
     STGR_COLUNA_03 := TStringGrid.Create(Self);
     STGR_COLUNA_03.Parent := TBS_ETAPA3;
     with  STGR_COLUNA_03 do
     begin
          Left    := 5     ;
          Top     := 20       ;
          Width   := 218     ;
          Height  := 270     ;
          TabStop := False  ;
          Align   := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          Color   := 13691095     ;
          ColCount := 6         ;
          DefaultColWidth  := 28 ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          FixedCols := 3   ;
          RowCount  := 2   ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -15      ;
          Font.Name := 'Times New Roman' ;
          Font.Style := []    ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentFont  := False ;
          ParentCtl3D := False ;
          TabOrder   := 0     ;
     end; // with


     STGR_COLUNA_04.CleanupInstance;
     STGR_COLUNA_04.Free;
     STGR_COLUNA_04 := TStringGrid.Create(Self);
     STGR_COLUNA_04.Parent := TBS_ETAPA3;
     with  STGR_COLUNA_04 do
     begin
          Left    := 226     ;
          Top     := 20       ;
          Width   := 218     ;
          Height  := 270     ;
          TabStop := False  ;
          Align   := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          Color   := 13691095     ;
          ColCount := 6         ;
          DefaultColWidth  := 28 ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          FixedCols := 3   ;
          RowCount  := 2   ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -13      ;
          Font.Name := 'Tahoma' ;
          Font.Style := []    ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentFont := False ;
          TabOrder   := 1     ;
     end; // with


     STGR_COLUNA_01e02e03e04_SOBRAS.CleanupInstance;
     STGR_COLUNA_01e02e03e04_SOBRAS.Free;
     STGR_COLUNA_01e02e03e04_SOBRAS := TStringGrid.Create(Self);
     STGR_COLUNA_01e02e03e04_SOBRAS.Parent := TBS_ETAPA3;
     with  STGR_COLUNA_01e02e03e04_SOBRAS do
     begin
          Left    := 548     ;
          Top     := 20       ;
          Width   := 462     ;
          Height  := 270     ;
          TabStop := False  ;
          Align   := alCustom ;
          Anchors := [akLeft, akTop, akBottom];
          Color   := 12050175     ;
          ColCount := 15         ;
          DefaultColWidth  := 27 ;
          DefaultRowHeight := 27 ;
          FixedColor := clMedGray ;
          FixedCols := 2   ;
          RowCount  := 2   ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -13      ;
          Font.Name := 'Tahoma' ;
          Font.Style := []    ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentFont := False ;
          TabOrder   := 2     ;
     end; // with
END; //



PROCEDURE T_FRM_SIMULACAO3.PR_LIMPAR_GRIDetapa4 ();
BEGIN
     STGR_COLUNA_05.CleanupInstance;
     STGR_COLUNA_05.Free;
     STGR_COLUNA_05 := TStringGrid.Create(Self);
     STGR_COLUNA_05.Parent := TBS_ETAPA4;
     with  STGR_COLUNA_05 do
     begin
          Left := 1 ;
          Top := 20 ;
          Width := 268 ;
          Height := 273 ;
          TabStop := False ;
          Align := alCustom ;
          Anchors := [akLeft, akTop, akBottom] ;
          BorderStyle := bsNone                ;
          Color := 12050175                    ;
          ColCount := 6                        ;
          DefaultColWidth := 32                ;
          DefaultRowHeight := 27               ;
          FixedColor := clMedGray              ;
          FixedCols := 3                       ;
          RowCount := 2                        ;
          Font.Charset := DEFAULT_CHARSET      ;
          Font.Color := clWindowText           ;
          Font.Height := -13                   ;
          Font.Name := 'Tahoma'                ;
          Font.Style := []                     ;
          Options := [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect] ;
          ParentFont := False                  ;
          TabOrder := 5                        ;
     end; // with


     STGR_COLUNA_06.CleanupInstance;
     STGR_COLUNA_06.Free;
     STGR_COLUNA_06 := TStringGrid.Create(Self);
     STGR_COLUNA_06.Parent := TBS_ETAPA4;
     with  STGR_COLUNA_06 do
     begin
          Left := 274      ;
          Top := 20        ;
          Width := 220     ;
          Height := 273    ;
          TabStop := False ;
          Anchors := [akLeft, akTop, akBottom] ;
          Color := 12050175 ;
          Ctl3D := True     ;
          DefaultColWidth := 30    ;
          DefaultRowHeight := 27   ;
          FixedColor := clMedGray  ;
          FixedCols := 3           ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText      ;
          Font.Height := -15       ;
          Font.Name := 'Times New Roman' ;
          Font.Style := []         ;
          Options := [goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentCtl3D := False     ;
          ParentFont := False      ;
          TabOrder := 4            ;
          end ; // with



     STGR_COLUNA_07.CleanupInstance;
     STGR_COLUNA_07.Free;
     STGR_COLUNA_07 := TStringGrid.Create(Self);
     STGR_COLUNA_07.Parent := TBS_ETAPA4;
     with  STGR_COLUNA_07 do
     begin
          Left := 499             ;
          Top := 20               ;
          Width := 220            ;
          Height := 273           ;
          TabStop := False        ;
          Anchors := [akLeft, akTop, akBottom] ;
          Color := 12050175       ;
          Ctl3D := True           ;
          DefaultColWidth := 30   ;
          DefaultRowHeight := 27  ;
          FixedColor := clMedGray ;
          FixedCols := 3          ;
          Font.Charset := DEFAULT_CHARSET   ;
          Font.Color := clWindowText ;
          Font.Height := -13         ;
          Font.Name := 'Tahoma'      ;
          Font.Style := []           ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentCtl3D := False       ;
          ParentFont := False        ;
          TabOrder := 3              ;
     end ; // with

end;



procedure T_FRM_SIMULACAO3.FormCreate(Sender: TObject);
var
     vsi_contar : smallint;
begin
     SELF.ClientWidth  := 1515;
     SELF.ClientHeight := 670;
     SELF.Top  := 59;
     SELF.Left := 9;
   //  SELF.Visible := TRUE;
     bbt_close.Left := SELF.ClientWidth-35;
          PA_REMOVEUREPET.Left := 5000;
     PA_GERAR.Left := 5000;
     SCBX_GABARITO.Visible := False;
     PA_RESULTADO.Visible := False;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 520;
     PA_INICIAL.Top := 160;
     FOR vsi_contar := 1 TO 25 DO
     BEGIN
          STGR_BASE_25.Cells[vsi_contar,1] :=  INTtoSTR(vsi_contar);
     END;
    PA_EXECUTAR_FILTRO.Enabled := False;
    BBT_CANCELAR_SAIR.Visible := False;
    TRY
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE SIMULACAO_3_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
    EXCEPT
    //
    END; // TRY
    BBT_RECOMECAR.Click;
     SELF.IBQ_COMBINACOES2.SQL.Clear;
     SELF.IBQ_COMBINACOES2.SQL.Add('SELECT DISTINCT(DADOS), DADOS_NS FROM SIMULACAO_3_DADOS4 ORDER BY DADOS') ;
     SELF.IBQ_COMBINACOES2.Open;
     IBQ_COMBINACOES2.First;
      IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
end;



procedure T_FRM_SIMULACAO3.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='SIMULACAO') THEN
      BEGIN
          LA_TITULO.Caption := 'SIMULAÇÃO modelo 3';
          LA_TITULO_MenuInicial.Caption := 'SIMULAÇÃO modelo 3';
          BT_NOVA_SIMULACAO.Click;
      END ELSE
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          LA_TITULO.Caption             := 'GERADOR 3 GRUPOS 10 COLUNAS';
          LA_TITULO_MenuInicial.Caption := 'GERADOR 3 GRUPOS 10 COLUNAS';
      end;
      LA_TITULO_MenuInicial.Repaint;
      LA_TITULO.Repaint;
end;


procedure T_FRM_SIMULACAO3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     TRY
          BEGIN
          IBQ_COMBINACOES.Close;
          IBDatabase1.Close;
          END
     EXCEPT
     //
     END; // TRY
end;



procedure T_FRM_SIMULACAO3.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;




procedure T_FRM_SIMULACAO3.BT_NOVA_SIMULACAOClick(Sender: TObject);
begin
     BBT_ETAPA_03.Visible := False;
     BBT_ETAPA_04.Visible := False;
     BBT_ETAPA_05.Visible := False;
     BBT_ETAPA_06.Visible := False;
     PA_RESULTADO.Enabled := TRUE;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_ETAPA_01.Enabled := True;
     BBT_ETAPA_03.Enabled := False;
     BBT_ETAPA_04.Enabled := False;
     BBT_ETAPA_05.Enabled := False;
     BBT_ETAPA_06.Enabled := False;
     {
     BBT_ETAPA_03.Enabled := False;
     BBT_ETAPA_04.Enabled := False;
     BBT_ETAPA_05.Enabled := False;     
     }
     BBT_GERAR_MENU.Enabled := False;
     BBT_GERAR_MENU.Enabled := False;
     BBT_CANCELAR_SAIR.Visible := True;
     PA_INICIAL.Enabled := False;
     PA_INICIAL.Left := 2198;
     SCBX_GABARITO.Top:=247;
     SCBX_GABARITO.Repaint;

     TBS_ETAPA1.Enabled := TRUE;
     TBS_ETAPA1.Visible := TRUE;
     TBS_ETAPA1.SetFocus;
     TBS_ETAPA1.Repaint;
     PageControl_RESULTADO.TabIndex := 1;
     PageControl_RESULTADO.Repaint;
     BBT_RECOMECAR.Click;
end;


procedure T_FRM_SIMULACAO3.BT_REAJUSTARClick(Sender: TObject);
begin
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE; // EXCEÇÃO NESTE CASO
     BBT_CANCELAR_SAIR.Visible := True;
     PA_INICIAL.Enabled := False;
     PA_INICIAL.Left := 2198;
     SCBX_GABARITO.Top:=247;
     SCBX_GABARITO.Repaint;
     BBT_ETAPA_01.Enabled := TRUE;     
end;


procedure T_FRM_SIMULACAO3.BBT_CARREGARClick(Sender: TObject);
begin
     BBT_ETAPA_01.Enabled := False;
     BBT_ETAPA_01.Visible := TRUE;
     BBT_ETAPA_03.Visible := False;
     BBT_ETAPA_04.Visible := False;
     BBT_ETAPA_05.Visible := False;
     BBT_ETAPA_06.Visible := False;
    BBT_CANCELAR_SAIR.Visible := TRUE;
//       SELF.PR_LIMPAR_GRID10();
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;

     BBT_GERAR_MENU.Enabled := False;
     PA_INICIAL.Enabled := False;
     PA_INICIAL.Left := 2198;
     PGBR_GERARCOMB1.Position := 100;
     LA_TOTAL_COMB.Visible := False;
     LA_GERAR_COMB.Visible := False;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE SIMULACAO_3_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     PageControl_RESULTADO.Enabled := TRUE;
     PageControl_RESULTADO.TabIndex := 3  ;
     PageControl_RESULTADO.Repaint;
     SELF.IBQ_COMBINACOES2.SQL.Clear;
     SELF.IBQ_COMBINACOES2.SQL.Add('SELECT DISTINCT(DADOS), DADOS_NS FROM SIMULACAO_3_DADOS4 ORDER BY DADOS') ;
     SELF.IBQ_COMBINACOES2.Open;
     IBQ_COMBINACOES2.First;
     PageControl_RESULTADO.Enabled := TRUE;
     PageControl_RESULTADO.TabIndex := 4  ;
     PageControl_RESULTADO.Repaint;
  //   TBS_RESULTADO.Visible := TRUE;
     //.Visible := TRUE;
//     SELF.PR_SIMULAR_RECUPERANDODADOS();
   // BBT_BLOCO_NOTAS.Click;
end;


procedure T_FRM_SIMULACAO3.BBT_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;


procedure T_FRM_SIMULACAO3.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE SIMULACAO_3_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;



procedure T_FRM_SIMULACAO3.BBT_GERAR_voltarClick(Sender: TObject);
begin
     PA_GERAR.Enabled := False;
     PA_GERAR.Left := 4500;
     PA_GERAR.Repaint;
end;




procedure T_FRM_SIMULACAO3.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_ETAPA_03.Enabled := False;
     BBT_GERAR_MENU.Enabled := False;
     PA_INICIAL.Enabled := TRUE;
     BT_NOVA_SIMULACAO.Enabled := False;
     BT_REAJUSTAR.Enabled := TRUE;
     BBT_CARREGAR.Enabled := False;
     PA_INICIAL.Left := 920;
end;


procedure T_FRM_SIMULACAO3.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, vi_Contar : INTEGER;
    VC_COMBINACOES, VC_COMBINACOES2 : string;
begin
{
    MEM_COMBINACOES_TODAS.Clear;
   	MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + INTtoSTR(STGR_COMB03.RowCount-1)) ;
   	MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
     FOR vi_Contar := 1 TO STGR_COMB03.RowCount-1 DO
     BEGIN
          VC_COMBINACOES2 := '';
          FOR VI_AN_COMB1 := 3 TO 14 DO
          BEGIN
               VC_COMBINACOES2 := VC_COMBINACOES2 + RIGHTSTR ('0'+TRIM(STGR_COMB12.Cells[VI_AN_COMB1,vi_Contar]),2) +' ';
          end;
          FOR VI_AN_COMB1 := 3 TO 5 DO
          BEGIN
               VC_COMBINACOES2 := VC_COMBINACOES2 + RIGHTSTR ('0'+TRIM(STGR_COMB03.Cells[VI_AN_COMB1,vi_Contar]),2) +' ';
          end;

               MEM_COMBINACOES_TODAS.Lines.Add((*VC_COMBINACOES+'  '+*)VC_COMBINACOES2) ;
    END; // FOR vi_Contar
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\EXCLUIDOS_8_1_MOD1.TXT');  }
    winExec('Notepad.exe C:\CXLOTOFACIL\EXCLUIDOS_8_1_MOD1.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt
   showmessage('BLOCO DE NOTAS GERADO');
end;





procedure T_FRM_SIMULACAO3.BBT_ETAPA_01Click(Sender: TObject);

    PROCEDURE PR_GRAVAR_DADOS_v0 ();
    VAR
        vi_Contar : INTEGER;
        vc_Query, VC_DADOS1, VC_DADOS2, VC_DADOS3 : STRING;
        VC_DADOS4 : STRING;
    BEGIN
          VC_DADOS1 := '';
          VC_DADOS2 := '';
          VC_DADOS3 := '';
          VC_DADOS4 := '';
          FOR vi_Contar :=1 TO 8 DO
          BEGIN
               VC_DADOS1 := VC_DADOS1 + RIGHTSTR ('0'+TRIM(STGR_BASE_A.Cells[vi_Contar,0]),2) +' ';
          END; // FOR vi_Contar1
          FOR vi_Contar :=1 TO 7 DO
          BEGIN
               VC_DADOS2 := VC_DADOS2 + RIGHTSTR ('0'+TRIM(STGR_BASE_B.Cells[vi_Contar,0]),2) +' ';
          END; // FOR vi_Contar1
          FOR vi_Contar :=1 TO 5 DO
          BEGIN
               VC_DADOS3 := VC_DADOS3 + RIGHTSTR ('0'+TRIM(STGR_BASE_C.Cells[vi_Contar,0]),2) +' ';
               VC_DADOS4 := VC_DADOS4 + RIGHTSTR ('0'+TRIM(STGR_BASE_D.Cells[vi_Contar,0]),2) +' ';
          END; // FOR vi_Contar1
                    vc_Query  := 'INSERT INTO SIMULACAO_3_DEFINICAO (LINHA_1, LINHA_2, LINHA_3, LINHA_4, '
                    +' EXC_c5, EXC_c6, EXC_c7,'
                    +' FIXOS_C1, FIXOS_C2, FIXOS_C3, FIXOS_C4, '
                    +' DATA_DEFINICAO, HORA_DEFINICAO, QTD_DADOS ) '
                    +' VALUES(' +#39+ VC_DADOS1      + #39 +','+#39+ VC_DADOS2     + #39 +','+#39+ VC_DADOS3     + #39 +','+#39+ VC_DADOS4
                       + #39 +','+#39+ ED_FIXOS_01_C5.Text
                       + #39 +','+#39+ED_FIXOS_01_C6.Text  + #39 +','+#39+ED_FIXOS_01_C7.Text
                       + #39 +','+#39+ED_FIXOS_01_C1.Text     + #39 +','+#39+ED_FIXOS_01_C2.Text  + #39 +','+#39+ED_FIXOS_01_C3.Text       + #39 +','+#39+ED_FIXOS_01_C4.Text
                       + #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[])   + #39 +',' +#39+ FORMATDATETIME('h:n:s',time())
                    + #39+ ' ,''0'' );';
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add(vc_Query)  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
             SLEEP(19);
             SELF.IBQ_COMBINACOES.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS

var
     vi_CNTCELULAS, vi_Contar, vi_CONTASEL1: integer;
     vi_CombINACOES1, vi_CombINACOES2, vi_CombINACOES3, vi_CombINACOES4, vi_CombINACOES5, vi_Contar_COMB1 : INTEGER ;
       vi_Linhas04, vi_Soma04: INTEGER;
       vi_Flag_SOMATORIA_04, vi_Flag_SOMATORIA_03, vi_Flag_FIXOS04, vi_Flag_FIXOS03: INTEGER;
       VS_NUMEROSPRINCIPAIS: STRING;
       VDB_CALCULO_TOTAL: DOUBLE;

begin
     // ******************************************************
     // **  CONFERINDO SOMA COLUNAS 2 A 5 ANTES DE INICIAR  **
     // ******************************************************
  //   DBG_RESULTADO.Visible := False;

     BBT_ETAPA_03.Enabled := TRUE;
     BBT_ETAPA_03.Enabled := TRUE;     
   //  BBT_ETAPA_03.Visible := False;
   //      BBT_ETAPA_03.Enabled := False;

  //aki    BBT_GERAR_MENU.Enabled := False;
    BBT_GERAR_MENU.Enabled := TRUE;

     BBT_CANCELAR_SAIR.Visible := False;
     FOR vi_Contar :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[vi_Contar,0] :=INTtoSTR(vi_Contar);
          STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
     END; // FOR vi_Contar
     STGR_COLUNA_01.Cells [0,0] := 'QTD';
     STGR_COLUNA_01.Cells [1,0] := '+';
     STGR_COLUNA_01.Cells [2,0] := 'FLAG';
     FOR vi_CONTASEL1 := 3 TO 6 DO
     BEGIN
        STGR_COLUNA_01.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1-2)+'-';
        STGR_COLUNA_01.Cells [vi_CONTASEL1,1] := '00';
     END;
     STGR_COLUNA_01.ColWidths [0]:= 45;
     STGR_COLUNA_01.ColWidths [1]:= 35;
     STGR_COLUNA_01.RowCount := 2;
     STGR_COLUNA_01.Repaint;
     STGR_COLUNA_01_SOBRAS.Cells [0,0] := 'QTD';
     FOR vi_CONTASEL1 := 1 TO 22 DO
     BEGIN
        STGR_COLUNA_01_SOBRAS.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1)+'-';
        STGR_COLUNA_01_SOBRAS.Cells [vi_CONTASEL1,1] := '00';
     END  ;
     STGR_COLUNA_01_SOBRAS.ColWidths [0]:= 45;
     STGR_COLUNA_01_SOBRAS.RowCount := 2;
     STGR_COLUNA_01_SOBRAS.Repaint;
     FOR vi_CONTASEL1 := 3 TO 5 DO
     BEGIN
        STGR_COLUNA_02.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1-2)+'-';
        STGR_COLUNA_02.Cells [vi_CONTASEL1,1] := '00';
        STGR_COLUNA_03.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1-2)+'-';
        STGR_COLUNA_03.Cells [vi_CONTASEL1,1] := '00';
        STGR_COLUNA_04.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1-2)+'-';
        STGR_COLUNA_04.Cells [vi_CONTASEL1,1] := '00';
  //      STGR_COLUNA_05.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1-2)+'-';
 //       STGR_COLUNA_05.Cells [vi_CONTASEL1,1] := '00';
     END;
     STGR_COLUNA_01e02_SOBRAS.Cells [0,0] := 'QTD';
     FOR vi_CONTASEL1 := 1 TO 19 DO
     BEGIN
        STGR_COLUNA_01e02_SOBRAS.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1)+'-';
        STGR_COLUNA_01e02_SOBRAS.Cells [vi_CONTASEL1,1] := '00';
     END  ;
     STGR_COLUNA_01e02_SOBRAS.ColWidths [0]:= 45;
     STGR_COLUNA_01e02_SOBRAS.RowCount := 2;
     STGR_COLUNA_01e02_SOBRAS.Repaint;

     STGR_COLUNA_02.ColWidths [0]:= 40;
     STGR_COLUNA_02.ColWidths [1]:= 40;
     STGR_COLUNA_02.RowCount := 2;
     STGR_COLUNA_02.Repaint;
     STGR_COLUNA_03.ColWidths [0]:= 40;
     STGR_COLUNA_03.ColWidths [1]:= 40;
     STGR_COLUNA_03.RowCount := 2;
     STGR_COLUNA_03.Repaint;
     STGR_COLUNA_04.ColWidths [0]:= 40;
     STGR_COLUNA_04.ColWidths [1]:= 40;
     STGR_COLUNA_04.RowCount := 2;
     STGR_COLUNA_04.Repaint;
//     STGR_COLUNA_05.ColWidths [0]:= 40;
//     STGR_COLUNA_05.ColWidths [1]:= 40;
//     STGR_COLUNA_05.RowCount := 2;
//     STGR_COLUNA_05.Repaint;

     PGBR_GERARCOMB1.Position :=0 ;
     PGBR_GERARCOMB1.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     PA_GERAR.Enabled := False;
     PA_GERAR.Left := 4500;
     // ***************************
     // **  CONFERINDO AS BASES  **
     // ***************************
     FOR vi_Contar := 1 TO 8 DO
     BEGIN
          IF  STRtoINT(STGR_BASE_A.Cells [vi_Contar,0]) = 0 THEN
          BEGIN
               SHOWMESSAGE('Erro de preenchimento - favor verificar o preenchimento de A, B, C ou D.');
               EXIT;
          END; // IF
     END; // FOR
     FOR vi_Contar := 1 TO 7 DO
     BEGIN
          IF  STRtoINT(STGR_BASE_B.Cells [vi_Contar,0]) = 0 THEN
          BEGIN
               SHOWMESSAGE('Erro de preenchimento - favor verificar o preenchimento de A, B, C ou D.');
               EXIT;
          END; // IF
     END;

     FOR vi_Contar := 1 TO 5 DO
     BEGIN
          IF  STRtoINT(STGR_BASE_C.Cells [vi_Contar,0]) = 0 THEN
          BEGIN
               SHOWMESSAGE('Erro de preenchimento - favor verificar o preenchimento de A, B, C ou D.');
               EXIT;
          END; // IF
          IF  STRtoINT(STGR_BASE_D.Cells [vi_Contar,0]) = 0 THEN
          BEGIN
               SHOWMESSAGE('Erro de preenchimento - favor verificar o preenchimento de A, B, C ou D.');
               EXIT;
          END; // IF          
     END;
     // ***************************
     // **  CONFERINDO OS FIXOS  **
     // ***************************
     if (STRtoINT(ED_FIXOS_01_C5.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C3.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 5ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C5.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C4.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_C5.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_C3.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 4ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C4.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C3.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C3.Text) = STRtoINT(ED_FIXOS_01_C5.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C3.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C3.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C3.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 3ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C3.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C5.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C6.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C7.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 5ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C5.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C6.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C6.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C6.Text) = STRtoINT(ED_FIXOS_01_C3.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C6.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C6.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 6ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C4.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C7.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C7.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C7.Text) = STRtoINT(ED_FIXOS_01_C3.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C7.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C7.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 7ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C3.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C8.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C6.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C7.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 8ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C5.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C8.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C5.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C3.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 8ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C4.SetFocus;
                 EXIT;
          END; // IF          


     PageControl_RESULTADO.Enabled := TRUE;
   {  TBS_ETAPA1.Enabled := TRUE;
     TBS_ETAPA1.Visible := TRUE;
     TBS_ETAPA1.Repaint;            }
     PageControl_RESULTADO.TabIndex := 0;
     PageControl_RESULTADO.Repaint;
     SCBX_INICIAR.HorzScrollBar.Position := 2;
     SCBX_INICIAR.Repaint;
     LA_RESULTADO_TXT.Caption := 'ETAPA 1/6:';
     LA_RESULTADO_TXT.Repaint;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================

     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_3_DEFINICAO')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_3_DADOS1')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;


     vi_Linhas04:=1;
     FOR vi_CombINACOES1 := {9}1 TO  {2} 23 DO
     BEGIN
          SLEEP(60);
          FOR vi_CombINACOES2 := vi_CombINACOES1+1 TO  24 DO
          BEGIN
               FOR vi_CombINACOES3 := vi_CombINACOES2+1 TO  25 DO
               BEGIN
                         // PARES
                         vi_CNTCELULAS := 0;
                         IF (STRtoINT(STGR_BASE_25.Cells[vi_CombINACOES1,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF (STRtoINT(STGR_BASE_25.Cells[vi_CombINACOES2,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF (STRtoINT(STGR_BASE_25.Cells[vi_CombINACOES3,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF  NOT (vi_CNTCELULAS =1) THEN
                              CONTINUE;
                         vi_Soma04  :=  STRtoINT(STGR_BASE_25.Cells[vi_CombINACOES1,1])
                            + STRtoINT(STGR_BASE_25.Cells[vi_CombINACOES2,1])+ STRtoINT(STGR_BASE_25.Cells[vi_CombINACOES3,1]);
                         vi_Flag_SOMATORIA_04 := 0;
                         IF (vi_Soma04 = STRtoINT(ED_SOMAS_C1_INI.Text)) THEN
                              vi_Flag_SOMATORIA_04 := 1 ;
                         IF (vi_Flag_SOMATORIA_04 = 0) THEN
                              CONTINUE;
                              // -- fixo                              
                         vi_Flag_FIXOS04 :=0;
                         IF  STRtoINT(ED_FIXOS_01_C1.Text) > 0 THEN
                         BEGIN
                              IF(STRtoINT(STGR_BASE_25.Cells[vi_CombINACOES1,1]) = STRtoINT(ED_FIXOS_01_C1.Text))
                              or   (STRtoINT(STGR_BASE_25.Cells[vi_CombINACOES2,1]) = STRtoINT(ED_FIXOS_01_C1.Text))
                              or   (STRtoINT(STGR_BASE_25.Cells[vi_CombINACOES3,1]) = STRtoINT(ED_FIXOS_01_C1.Text))
                              THEN
                                   vi_Flag_FIXOS04 :=1;
                         END ELSE  // IF  STRtoINT(ED_FIXOS_01_C1.Text
                         BEGIN
                              vi_Flag_FIXOS04 := 1;
                         END;
                         IF (vi_Flag_FIXOS04 = 0) THEN
                              CONTINUE;

                         STGR_COLUNA_01.Cells[0,vi_Linhas04] := INTtoSTR(vi_Linhas04);
                         STGR_COLUNA_01.Cells[1,vi_Linhas04] := INTtoSTR(vi_Soma04);
                         STGR_COLUNA_01.Cells[2,vi_Linhas04] := '1';
                         STGR_COLUNA_01.Cells[3,vi_Linhas04] := STGR_BASE_25.Cells[vi_CombINACOES1,1];
                         STGR_COLUNA_01.Cells[4,vi_Linhas04] := STGR_BASE_25.Cells[vi_CombINACOES2,1];
                         STGR_COLUNA_01.Cells[5,vi_Linhas04] := STGR_BASE_25.Cells[vi_CombINACOES3,1];
                         STGR_COLUNA_01_SOBRAS.Cells[0,vi_Linhas04] := INTtoSTR(vi_Linhas04);

                         // ----------------------------------------------
                         // --  MONTANDO AS 22 SOBRAS DO CONJUNTO DE 4  --
                         // ----------------------------------------------
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells[vi_Contar,2] :='F';
                            END; // FOR vi_Contar
                            FOR vi_Contar :=3 TO 5 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_01.Cells[vi_Contar,vi_Linhas04])) ,2]:='V';
                            END; // FOR vi_Contar1
                            vi_CNTCELULAS := 1;
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F') THEN
                                BEGIN
                                    STGR_COLUNA_01_SOBRAS.Cells[vi_CNTCELULAS, vi_Linhas04] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                    vi_CNTCELULAS := vi_CNTCELULAS + 1;
                                END; // IF (STRGR_TODOS_NUMEROS
                            END; // FOR vi_Contar
                         // ----------------------------------------------
                         vi_Linhas04 := vi_Linhas04 +1;
               END; // FOR vi_CombINACOES3
               STGR_COLUNA_01.RowCount := vi_Linhas04;
          END; // FOR vi_CombINACOES2
          IF ((vi_CombINACOES1 MOD 5) = 0) THEN
          BEGIN
               PGBR_GERARCOMB1.Position := CEIL((vi_CombINACOES1)*4.348);
               PGBR_GERARCOMB1.Repaint;
               STGR_COLUNA_01.Repaint;
               STGR_COLUNA_01_SOBRAS.RowCount := vi_Linhas04;
               STGR_COLUNA_01_SOBRAS.Repaint;
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END;// IF
     END; // FOR vi_CombINACOES1
     STGR_COLUNA_01.RowCount := vi_Linhas04;
     STGR_COLUNA_01_SOBRAS.RowCount := vi_Linhas04;
     PGBR_GERARCOMB1.Position := 100;
     PGBR_GERARCOMB1.Repaint;
     try
          STGR_COLUNA_01.FixedRows := 1;
     except
          //
     end;
     STGR_COLUNA_01.Repaint;
     //
     //
     //  Etapa 2
     //
     //
     SCBX_INICIAR.HorzScrollBar.Position := 700;
     SCBX_INICIAR.Repaint;     
     SLEEP(1200);
     LA_RESULTADO_TXT.Caption := 'ETAPA 2/6:';
     LA_RESULTADO_TXT.Repaint;
     PGBR_GERARCOMB1.Position := 0;
     PGBR_GERARCOMB1.Repaint;
     vi_Linhas04:=1;
     FOR vi_CombINACOES1 := 1 TO  {5} CEIL((STGR_COLUNA_01_SOBRAS.RowCount-1)/1) DO
     BEGIN
          FOR vi_CombINACOES2 := 1 TO  {5} 20 DO
          BEGIN
               SLEEP(12);
               FOR vi_CombINACOES3 := vi_CombINACOES2+1 TO  21 DO
               BEGIN
                    FOR vi_CombINACOES4 := vi_CombINACOES3+1 TO  22 DO
                    BEGIN
                         vi_CNTCELULAS := 0;
                         IF (STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES2,vi_CombINACOES1]) MOD 2) =0 THEN
                               vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF (STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES3,vi_CombINACOES1]) MOD 2) =0 THEN
                               vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF (STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES4,vi_CombINACOES1]) MOD 2) =0 THEN
                               vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF  NOT (vi_CNTCELULAS =2) THEN
                              CONTINUE;
                         vi_Soma04 :=  STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES2,vi_CombINACOES1])
                            + STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES3,vi_CombINACOES1])+ STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES4,vi_CombINACOES1]);
                         vi_Flag_SOMATORIA_03 := 0;
                         IF (vi_Soma04 >= STRtoINT(ED_SOMAS_C2_INI.Text)) AND (vi_Soma04 <= STRtoINT(ED_SOMAS_C2_INI.Text)) THEN
                              vi_Flag_SOMATORIA_03 := 1 ;
                         IF (vi_Flag_SOMATORIA_03 = 0) THEN
                              CONTINUE;
                              // -- fixo
                         vi_Flag_FIXOS03 :=0;
                         IF  STRtoINT(ED_FIXOS_01_C2.Text) > 0 THEN
                         BEGIN
                              IF (STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES2,vi_CombINACOES1]) = STRtoINT(ED_FIXOS_01_C2.Text))
                              or   (STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES3,vi_CombINACOES1]) = STRtoINT(ED_FIXOS_01_C2.Text))
                              or   (STRtoINT(STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES4,vi_CombINACOES1]) = STRtoINT(ED_FIXOS_01_C2.Text))
                              THEN
                                   vi_Flag_FIXOS03 :=1;
                         END ELSE  // IF  STRtoINT(ED_FIXOS_01_C1.Text
                         BEGIN
                              vi_Flag_FIXOS03 := 1;
                         END;
                         IF (vi_Flag_FIXOS03 = 0) THEN
                              CONTINUE;
                              // -- primeira coluna

                         STGR_COLUNA_01_com02.Cells[0,vi_Linhas04] := INTtoSTR(vi_Linhas04);
                         STGR_COLUNA_01_com02.Cells[1,vi_Linhas04] := INTtoSTR(vi_Soma04+STRtoINT(STGR_COLUNA_01.Cells[1,vi_CombINACOES1]));
                         STGR_COLUNA_01_com02.Cells[2,vi_Linhas04] := '1';
                         STGR_COLUNA_01_com02.Cells[3,vi_Linhas04] := STGR_COLUNA_01.Cells[3,vi_CombINACOES1] ;
                         STGR_COLUNA_01_com02.Cells[4,vi_Linhas04] := STGR_COLUNA_01.Cells[4,vi_CombINACOES1] ;
                         STGR_COLUNA_01_com02.Cells[5,vi_Linhas04] := STGR_COLUNA_01.Cells[5,vi_CombINACOES1] ;
                         STGR_COLUNA_01_com02.Cells[6,vi_Linhas04] := STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES2,vi_CombINACOES1];
                         STGR_COLUNA_01_com02.Cells[7,vi_Linhas04] := STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES3,vi_CombINACOES1];
                         STGR_COLUNA_01_com02.Cells[8,vi_Linhas04] := STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES4,vi_CombINACOES1];
                              // -- segunda coluna
                         STGR_COLUNA_02.Cells[0,vi_Linhas04] := INTtoSTR(vi_Linhas04);
                         STGR_COLUNA_02.Cells[1,vi_Linhas04] := INTtoSTR(vi_Soma04);
                         STGR_COLUNA_02.Cells[2,vi_Linhas04] := '1';
                         STGR_COLUNA_02.Cells[3,vi_Linhas04] := STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES2,vi_CombINACOES1];
                         STGR_COLUNA_02.Cells[4,vi_Linhas04] := STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES3,vi_CombINACOES1];
                         STGR_COLUNA_02.Cells[5,vi_Linhas04] := STGR_COLUNA_01_SOBRAS.Cells[vi_CombINACOES4,vi_CombINACOES1];
                         STGR_COLUNA_01e02_SOBRAS.Cells[0,vi_Linhas04] := INTtoSTR(vi_Linhas04);
                         // -------------------------------------------------
                         // --  MONTANDO AS 18 SOBRAS DO CONJUNTO DE 3 E 4 --
                         // -------------------------------------------------
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells[vi_Contar,2] :='F';
                            END; // FOR vi_Contar
                            FOR vi_Contar :=3 TO 8 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_01_com02.Cells[vi_Contar,vi_Linhas04])) ,2]:='V';
                            END; // FOR vi_Contar1
                            vi_CNTCELULAS := 1;
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F') THEN
                                BEGIN
                                    STGR_COLUNA_01e02_SOBRAS.Cells[vi_CNTCELULAS, vi_Linhas04] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                    vi_CNTCELULAS := vi_CNTCELULAS + 1;
                                END; // IF (STRGR_TODOS_NUMEROS
                            END; // FOR vi_Contar
                         // ----------------------------------------------

                         vi_Linhas04 := vi_Linhas04 +1;
                    END;  // FOR vi_CombINACOES4
               END; // FOR vi_CombINACOES3
               STGR_COLUNA_02.RowCount := vi_Linhas04;
               STGR_COLUNA_01_com02.RowCount := vi_Linhas04;
               STGR_COLUNA_01e02_SOBRAS.RowCount := vi_Linhas04;
          END; // FOR vi_CombINACOES2
               PGBR_GERARCOMB1.Position := TRUNC(vi_CombINACOES1/(STGR_COLUNA_01_SOBRAS.RowCount-1)*100.1);
               PGBR_GERARCOMB1.Repaint;
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(vi_CombINACOES1)+ ' DE '+  INTtoSTR(STGR_COLUNA_01_SOBRAS.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(vi_CombINACOES1/(STGR_COLUNA_01_SOBRAS.RowCount-1)*100))+ ' %  ' + '  -  Quantidade: '+INTtoSTR(vi_Linhas04) ;
               IF ((vi_CombINACOES1 MOD 5)=0) THEN
               BEGIN
                    STGR_COLUNA_02.Repaint;
                    STGR_COLUNA_01_com02.Repaint;
                    STGR_COLUNA_01e02_SOBRAS.Repaint;
                    Self.WindowState := wsMinimized;
                    Self.WindowState :=  wsNormal;
                    SELF.Repaint;
               END; // IF
     END; // FOR vi_CombINACOES1
     STGR_COLUNA_01.DefaultDrawing := True;
     STGR_COLUNA_01_SOBRAS.DefaultDrawing := True;
     STGR_COLUNA_02.DefaultDrawing := True;
     STGR_COLUNA_01_com02.DefaultDrawing := True;
     STGR_COLUNA_01e02_SOBRAS.DefaultDrawing := True;
     STGR_COLUNA_02.RowCount := vi_Linhas04;
     STGR_COLUNA_01_com02.RowCount := vi_Linhas04;
     STGR_COLUNA_01e02_SOBRAS.RowCount := vi_Linhas04;
     LA_GERAR_COMB.Caption := '# ' + INTtoSTR(STGR_COLUNA_01_SOBRAS.RowCount-1)+ ' DE '+  INTtoSTR(STGR_COLUNA_01_SOBRAS.RowCount-1)+  ' - Quantidade:'+INTtoSTR(vi_Linhas04) + ' - 100 %  ';
     PGBR_GERARCOMB1.Position := 100;
     PGBR_GERARCOMB1.Repaint;
     try
          STGR_COLUNA_02.FixedRows := 1;
     except
          //
     end;
     STGR_COLUNA_01.Repaint;
     STGR_COLUNA_01_SOBRAS.Repaint;
     STGR_COLUNA_02.Repaint;
     STGR_COLUNA_01e02_SOBRAS.Repaint;
     STGR_COLUNA_01_com02.Repaint;
     STGR_COLUNA_01e02_SOBRAS.Repaint;
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     LA_rTOTAL_COMB.Caption  := '25';
     PR_GRAVAR_DADOS_v0 ();
     SLEEP(500);
     LA_RESULTADO_TXT.Caption := 'Etapa 2/6 - FIM.';
     PGBR_GERARCOMB0.Position := 15;
     PGBR_GERARCOMB0.Repaint;
     SHOWMESSAGE('FIM DO PREPARAR');
end;




procedure T_FRM_SIMULACAO3.BBT_Etapa_03Click(Sender: TObject);


    PROCEDURE PR_GRAVAR_DADOS_v1 ();
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, vi_CNTCELULAS : INTEGER;
        vc_Query, VC_DADOS1, VC_COMBINACOES_03_C1, VC_COMBINACOES_03_C2, VC_COMBINACOES_03_C3, VC_COMBINACOES_03_C4 : STRING;
        VC_COMBINACOES_s_14 : STRING;
    BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COLUNA_01.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COLUNA_04.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES_03_C1 :='';
                VC_COMBINACOES_03_C2 :='';
                VC_COMBINACOES_03_C3 :='';
                VC_COMBINACOES_03_C4 :='';
                VC_COMBINACOES_s_14  :='';
                FOR vi_CNTCELULAS := 3 TO 5 DO
                BEGIN
                    VC_COMBINACOES_03_C1 := VC_COMBINACOES_03_C1 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_01_com02.Cells[vi_CNTCELULAS,STRtoINT(STGR_COLUNA_04.Cells[2,VI_AN_COMB1])]),2) +' ';
                    VC_COMBINACOES_03_C2 := VC_COMBINACOES_03_C2 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_01_com02.Cells[vi_CNTCELULAS+3,STRtoINT(STGR_COLUNA_04.Cells[2,VI_AN_COMB1])]),2) +' ';
                    VC_COMBINACOES_03_C3 := VC_COMBINACOES_03_C3 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_03.Cells[vi_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                    VC_COMBINACOES_03_C4 := VC_COMBINACOES_03_C4 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_04.Cells[vi_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR vi_CNTCELULAS

                FOR vi_CNTCELULAS := 2 TO 14 DO
                BEGIN
                    VC_COMBINACOES_s_14 := VC_COMBINACOES_s_14 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_01e02e03e04_SOBRAS.Cells[vi_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR
                     vc_Query  := 'INSERT INTO SIMULACAO_3_DADOS1 (DADOS_03_C1, DADOS_03_C2, DADOS_03_C3, DADOS_03_C4, DADOS_SOBRAM_14,'
                     +'  CONTADOR1) '
                     +' VALUES(' +#39+ TRIM(VC_COMBINACOES_03_C1) + #39 +','+#39+TRIM(VC_COMBINACOES_03_C2)
                          + #39 +','+#39+ TRIM(VC_COMBINACOES_03_C3) + #39 +','+#39+TRIM(VC_COMBINACOES_03_C4)
                          + #39 +','+#39+TRIM(VC_COMBINACOES_s_14)
                          + #39 +','+#39+STGR_COLUNA_04.Cells[0,VI_AN_COMB1]
                           + #39 +');';
                     SELF.IBQ_COMBINACOES.SQL.Clear;
                     SELF.IBQ_COMBINACOES.SQL.Add(vc_Query)  ;
                     SELF.IBQ_COMBINACOES.ExecSQL;
            END; // FOR VI_AN_COMB1
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
            SLEEP(19);
             SELF.IBQ_COMBINACOES.SQL.Clear;
    END; // PROCEDURE GRAVAR_DADOS2_v1


VAR
     vi_CNTCELULAS, vi_Contar, vi_CONTASEL1: integer;
     vi_CombINACOES1, vi_CombINACOES2, vi_CombINACOES3, vi_Contar_COMB1 : INTEGER ;
      vi_Comb12_1, vi_Comb12_2, vi_Comb12_3, vi_Comb12_4: INTEGER;
     vi_Comb_C4_1, vi_Comb_C4_2, vi_Comb_C4_3, Vsi_SOMAINI, Vsi_SOMAFINAL : INTEGER;
     vi_Comb_C5_1, vi_Comb_C5_2, vi_Comb_C5_3 : INTEGER;
       vi_Linhas15, vi_Linhas02, vi_Soma12, vi_Flag12 , vi_Soma03, vi_Flag08, vi_Soma02: INTEGER;
       vi_Flag_FX12, vi_Flag_FX12B, vi_Flag_FIXOS04, vi_Soma_C1234 : INTEGER;
       VS_NUMEROSPRINCIPAIS: STRING;
       VDB_CALCULO_TOTAL: DOUBLE;

begin

     BBT_ETAPA_01.Enabled := False;
     // aki BBT_GERAR_MENU.Enabled := False;
     BBT_ETAPA_04.Enabled := TRUE;
      BBT_GERAR_MENU.Enabled := TRUE;
     BBT_CANCELAR_SAIR.Visible := False;
     SCBX_INICIAR.HorzScrollBar.Position := 2;
     SCBX_INICIAR.Repaint;
     PR_LIMPAR_GRIDiniciar (); // exceto STGR_COLUNA_01e02_SOBRAS
     FOR vi_CONTASEL1 := 3 TO 5 DO
     BEGIN
        STGR_COLUNA_03.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1-2)+'-';
        STGR_COLUNA_03.Cells [vi_CONTASEL1,1] := '00';
        STGR_COLUNA_04.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1-2)+'-';
        STGR_COLUNA_04.Cells [vi_CONTASEL1,1] := '00';
     END;
     STGR_COLUNA_03.ColWidths [0]:= 45;
     STGR_COLUNA_03.ColWidths [1]:= 35;
     STGR_COLUNA_03.RowCount := 2;
     STGR_COLUNA_03.Repaint;
     STGR_COLUNA_04.ColWidths [0]:= 45;
     STGR_COLUNA_04.ColWidths [1]:= 35;
     STGR_COLUNA_04.RowCount := 2;
     STGR_COLUNA_04.Repaint;
     STGR_COLUNA_01e02e03e04_SOBRAS.ColWidths [0]:= 45;
     STGR_COLUNA_01e02e03e04_SOBRAS.ColWidths [1]:= 35;
     STGR_COLUNA_01e02e03e04_SOBRAS.RowCount := 2;
     STGR_COLUNA_01e02e03e04_SOBRAS.Repaint;
     STGR_COLUNA_SOMA_C1234.ColWidths [0]:= 45;
     STGR_COLUNA_SOMA_C1234.ColWidths [1]:= 35;
     STGR_COLUNA_SOMA_C1234.RowCount := 2;
     STGR_COLUNA_SOMA_C1234.Repaint;

     PGBR_GERARCOMB1.Position := 0 ;
     PGBR_GERARCOMB1.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     PA_GERAR.Enabled := False;
     PA_GERAR.Left := 4500;

     PageControl_RESULTADO.Enabled := TRUE;
     {TBS_PREPARAR.Enabled := TRUE;
     TBS_PREPARAR.Visible := TRUE;
     TBS_PREPARAR.SetFocus;
     TBS_PREPARAR.Repaint;              }
     PageControl_RESULTADO.TabIndex := 1;
     PageControl_RESULTADO.Repaint;

     LA_RESULTADO_TXT.Caption := 'ETAPA 3/6:';
     LA_RESULTADO_TXT.Repaint;
     // ***************************
     // **  CONFERINDO OS FIXOS  **
     // ***************************
     if (STRtoINT(ED_FIXOS_01_C5.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C3.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 5ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C5.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C4.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_C5.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_C3.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C4.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 4ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C4.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C3.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C3.Text) = STRtoINT(ED_FIXOS_01_C5.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C3.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C3.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C3.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 3ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C3.SetFocus;
                 EXIT;
          END; // IF

     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ; // CRONOMETRANDO O TEMPO
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_3_DADOS1')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     // ************************
     // **   PRIMEIRO BLOCO   **
     // ************************
     vi_Linhas02 := 1;
     vi_Linhas15 := 1;
     FOR vi_Comb12_1 := 1 TO   {9} trunc((STGR_COLUNA_01e02_SOBRAS.RowCount-1)/1) DO
     BEGIN
          SLEEP(35);
          FOR vi_Comb12_2 := 1 TO  17 DO
          BEGIN
               FOR vi_Comb12_3 := vi_Comb12_2+1 TO  18 DO
               BEGIN
                    FOR vi_Comb12_4 := vi_Comb12_3+1 TO  19 DO
                    BEGIN
                         // PARES
                         vi_CNTCELULAS := 0;
                         IF (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_2,vi_Comb12_1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_3,vi_Comb12_1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_4,vi_Comb12_1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF  NOT (vi_CNTCELULAS =2) THEN
                              CONTINUE;
                         // SOMA
                         vi_Flag12 := 0;
                         vi_Soma12  :=  STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_2,vi_Comb12_1])
                            + STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_3,vi_Comb12_1])+ STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_4,vi_Comb12_1]);
                         IF (vi_Soma12 >= STRtoINT(ED_SOMAS_C3_INI.Text)) AND (vi_Soma12 <= STRtoINT(ED_SOMAS_C3_INI.Text)) THEN
                         BEGIN
                                vi_Flag12 := 1 ;
                         END; // IF
                         IF (vi_Flag12 = 0) THEN
                              CONTINUE  ;
                         // FIXOS
                         vi_Flag_FX12 := 0;
                         IF  STRtoINT(ED_FIXOS_01_C3.Text) > 0 THEN
                         BEGIN
                                   IF (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_2,vi_Comb12_1]) = STRtoINT(ED_FIXOS_01_C3.Text))
                                   or   (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_3,vi_Comb12_1]) = STRtoINT(ED_FIXOS_01_C3.Text))
                                   or   (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_4,vi_Comb12_1]) = STRtoINT(ED_FIXOS_01_C3.Text))
                                   THEN
                                        vi_Flag_FX12 := 1;
                         END ELSE  // STRtoINT(ED_FIXOS_01_C3.Text)
                         BEGIN
                              vi_Flag_FX12 := 1;
                         END; // IF STRtoINT(ED_FIXOS_01_C3.Text)
                         IF (vi_Flag_FX12 = 0) THEN
                              CONTINUE ;
                         // COLUNA 03
                         STGR_COLUNA_03.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15);
                         STGR_COLUNA_03.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma12);
                         STGR_COLUNA_03.Cells[2,vi_Linhas02] := STGR_COLUNA_01e02_SOBRAS.Cells[0,vi_Comb12_1];
                         STGR_COLUNA_03.Cells[3,vi_Linhas02] := STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_2,vi_Comb12_1];
                         STGR_COLUNA_03.Cells[4,vi_Linhas02] := STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_3,vi_Comb12_1];
                         STGR_COLUNA_03.Cells[5,vi_Linhas02] := STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_4,vi_Comb12_1];
                         // -------------------------------------------
                         // --  MONTANDO AS 16 SOBRAS DA COLUNA 03  ---
                         // -------------------------------------------
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells[vi_Contar,2] :='F';
                                STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
                            END; // FOR vi_Contar
                            FOR vi_Contar :=1 TO 19 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_01e02_SOBRAS.Cells[vi_Contar,vi_Comb12_1])) ,1]:='V';
                            END; // FOR vi_Contar1
                            FOR vi_Contar :=3 TO 5 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_03.Cells[vi_Contar,vi_Linhas02])) ,2]:='V';
                            END; // FOR vi_Contar1
                            vi_CNTCELULAS := 1;
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                // SOBRAS
                                IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F') THEN
                                BEGIN
                                    STGR_SOBRAS_16.Cells[vi_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                    vi_CNTCELULAS := vi_CNTCELULAS + 1;
                                END; // IF (STRGR_TODOS_NUMEROS
                            END; // FOR vi_Contar
                         // ----------------------------------------------
                         // ************************
                         // **   SEGUNDO BLOCO    **
                         // ************************
                              FOR vi_Comb_C4_1 := 1 TO  14 DO
                              BEGIN
                                   FOR vi_Comb_C4_2 := vi_Comb_C4_1+1 TO  15 DO
                                   BEGIN
                                        FOR vi_Comb_C4_3 := vi_Comb_C4_2+1 TO  16 DO
                                        BEGIN
                                             // PARES
                                             vi_CNTCELULAS := 0;
                                             IF (STRtoINT(STGR_SOBRAS_16.Cells[vi_Comb_C4_1,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_SOBRAS_16.Cells[vi_Comb_C4_2,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                                             IF (STRtoINT(STGR_SOBRAS_16.Cells[vi_Comb_C4_3,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                                             IF  NOT (vi_CNTCELULAS =1) THEN
                                                  CONTINUE;
                                             //---
                                             vi_Soma03  :=  STRtoINT(STGR_SOBRAS_16.Cells[vi_Comb_C4_1,1])
                                                + STRtoINT(STGR_SOBRAS_16.Cells[vi_Comb_C4_2,1])+ STRtoINT(STGR_SOBRAS_16.Cells[vi_Comb_C4_3,1]) ;
                                             IF (vi_Soma03 >= STRtoINT(ED_SOMAS_C4_INI.Text)) AND (vi_Soma03 <= STRtoINT(ED_SOMAS_C4_INI.Text)) THEN
                                             BEGIN
                                                  //---
                                                  vi_Flag_FIXOS04 := 0;
                                                  IF  STRtoINT(ED_FIXOS_01_C4.Text) > 0 THEN
                                                  BEGIN
                                                       IF  (STRtoINT(STGR_SOBRAS_16.Cells[vi_Comb_C4_1,1]) = STRtoINT(ED_FIXOS_01_C4.Text)) OR
                                                           (STRtoINT(STGR_SOBRAS_16.Cells[vi_Comb_C4_2,1]) = STRtoINT(ED_FIXOS_01_C4.Text)) OR
                                                           (STRtoINT(STGR_SOBRAS_16.Cells[vi_Comb_C4_3,1]) = STRtoINT(ED_FIXOS_01_C4.Text))
                                                       THEN
                                                            vi_Flag_FIXOS04 := 1;
                                                  END ELSE
                                                  BEGIN
                                                            vi_Flag_FIXOS04 := 1 ;
                                                  END; // IF  STRtoINT(ED_FIXOS_01_C4.Text
                                                  IF (vi_Flag_FIXOS04 = 0) THEN
                                                       CONTINUE;
                                                  // SOMA DE TODAS AS COLUNAS (C1, C2, C3 E C4)
                                                  {
                                                  vi_Soma_C1234 :=  vi_Soma12+vi_Soma03+STRtoINT(STGR_COLUNA_01_com02.Cells[1,vi_Comb12_1]);
                                                  vi_Flag_FIXOS04 := 0;
                                                  IF (vi_Soma_C1234 >= STRtoINT(ED_SOMAS_G2_INI.Text)) AND (vi_Soma_C1234 <= STRtoINT(ED_SOMAS_G2_INI.Text)) THEN
                                                  BEGIN
                                                       vi_Flag_FIXOS04 := 1;
                                                  END;
                                                  IF (vi_Flag_FIXOS04 = 0) THEN
                                                       CONTINUE  ;
                                                       }
                                                  //STGR_COMB12.Repaint;
                                                  //STGR_SOBRAS_15.Repaint;
                                                  STGR_COLUNA_04.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15) ;
                                                  STGR_COLUNA_04.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma03);
                                                  STGR_COLUNA_04.Cells[2,vi_Linhas02] := STGR_COLUNA_01e02_SOBRAS.Cells[0,vi_Comb12_1]; //'1';
                                                  STGR_COLUNA_04.Cells[3,vi_Linhas02] := STGR_SOBRAS_16.Cells[vi_Comb_C4_1,1];
                                                  STGR_COLUNA_04.Cells[4,vi_Linhas02] := STGR_SOBRAS_16.Cells[vi_Comb_C4_2,1];
                                                  STGR_COLUNA_04.Cells[5,vi_Linhas02] := STGR_SOBRAS_16.Cells[vi_Comb_C4_3,1];

                                                  STGR_COLUNA_SOMA_C1234.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15);
                                                  STGR_COLUNA_SOMA_C1234.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma12+vi_Soma03+STRtoINT(STGR_COLUNA_01_com02.Cells[1,vi_Comb12_1]));
                                                  STGR_COLUNA_01e02e03e04_SOBRAS.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15);
                                                  STGR_COLUNA_01e02e03e04_SOBRAS.Cells[1,vi_Linhas02] := STGR_COLUNA_01e02_SOBRAS.Cells[0,vi_Comb12_1];
                                                  STGR_COLUNA_03.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15);
                                                  STGR_COLUNA_03.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma12);
                                                  STGR_COLUNA_03.Cells[2,vi_Linhas02] := STGR_COLUNA_01e02_SOBRAS.Cells[0,vi_Comb12_1];
                                                  STGR_COLUNA_03.Cells[3,vi_Linhas02] := STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_2,vi_Comb12_1];
                                                  STGR_COLUNA_03.Cells[4,vi_Linhas02] := STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_3,vi_Comb12_1];
                                                  STGR_COLUNA_03.Cells[5,vi_Linhas02] := STGR_COLUNA_01e02_SOBRAS.Cells[vi_Comb12_4,vi_Comb12_1];
                                                  // -------------------------------------------
                                                  // --  MONTANDO AS 13 SOBRAS DA COLUNA 04  ---
                                                  // -------------------------------------------
                                                     FOR vi_Contar :=1 TO 25 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells[vi_Contar,2] :='F';
                                                         STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
                                                     END; // FOR vi_Contar
                                                     FOR vi_Contar :=1 TO 16 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_SOBRAS_16.Cells[vi_Contar,1])) ,1]:='V';
                                                     END; // FOR vi_Contar1
                                                     FOR vi_Contar :=3 TO 5 DO
                                                     BEGIN
                                                         STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_04.Cells[vi_Contar,vi_Linhas02])) ,2]:='V';
                                                     END; // FOR vi_Contar1
                                                     vi_CNTCELULAS := 2;
                                                     FOR vi_Contar :=1 TO 25 DO
                                                     BEGIN
                                                         // SOBRAS
                                                         IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F') THEN
                                                         BEGIN
                                                             STGR_COLUNA_01e02e03e04_SOBRAS.Cells[vi_CNTCELULAS, vi_Linhas02] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                                             vi_CNTCELULAS := vi_CNTCELULAS + 1;
                                                         END; // IF (STRGR_TODOS_NUMEROS
                                                     END; // FOR vi_Contar
                                                      vi_Linhas15 := vi_Linhas15 +1;
                                                      vi_Linhas02 := vi_Linhas02 +1;
                                                           if (vi_Linhas15 >1 ) THEN
                                                           begin
                                                                if ((vi_Linhas15 mod 9000)=0) THEN
                                                                begin
                                                                     PR_GRAVAR_DADOS_v1 ();
                                                                     //    vi_Linhas05 := 1;  // aqui transforme esta linha em comentário
                                                                     vi_Linhas02 := 1;
                                                                     PR_LIMPAR_GRIDpreparar2();
                                                                     sleep(500);
                                                                       STGR_COLUNA_01e02e03e04_SOBRAS.RowCount := vi_Linhas02;
                                                                       STGR_COLUNA_03.RowCount := vi_Linhas02;
                                                                       STGR_COLUNA_04.RowCount := vi_Linhas02;
                                                                       STGR_COLUNA_SOMA_C1234.RowCount := vi_Linhas02;                                                                       
                                                                end; //
                                                           END; // IF
                                             END;  //IF (vi_Soma03 = STRtoINT(ED_SOMAS_C3_INI.Text))
                                        END; // FOR vi_Comb_C4_3
                                   END; // FOR vi_Comb_C4_2 :=
                                  STGR_COLUNA_01e02e03e04_SOBRAS.RowCount := vi_Linhas02;
                                  STGR_COLUNA_04.RowCount := vi_Linhas02;
                                  STGR_COLUNA_03.RowCount := vi_Linhas02;
                                  STGR_COLUNA_SOMA_C1234.RowCount := vi_Linhas02;
                              END; // FOR vi_Comb_C4_1 :
                    END; // FOR vi_Comb12_4 :=
               END; // FOR vi_Comb12_3 :=
          END; // FOR vi_Comb12_2 :=
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(vi_Comb12_1)+ ' DE '+  INTtoSTR(STGR_COLUNA_01e02_SOBRAS.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(vi_Comb12_1/(STGR_COLUNA_01e02_SOBRAS.RowCount-1)*100))+ ' %  ' + '  -  Quantidade: '+INTtoSTR(vi_Linhas15-1) ;
               LA_GERAR_COMB.Repaint;
               PGBR_GERARCOMB1.Position := CEIL(vi_Comb12_1/(STGR_COLUNA_01e02_SOBRAS.RowCount-1)*100);
               PGBR_GERARCOMB1.Repaint;
               STGR_COLUNA_04.RowCount := vi_Linhas02;
               STGR_COLUNA_03.RowCount := vi_Linhas02;
               STGR_COLUNA_01e02e03e04_SOBRAS.RowCount := vi_Linhas02;
               STGR_COLUNA_03.Repaint;
               STGR_COLUNA_04.Repaint;
               STGR_COLUNA_01e02e03e04_SOBRAS.Repaint;
                  {  try
                         STGR_COLUNA_03.FixedRows := 1;
                         STGR_COLUNA_04.FixedRows := 1;
                         //STGR_COLUNA_05.FixedRows := 1;
                    except
                         //
                    end;  }
               IF ((vi_Comb12_1 MOD 50) = 0) THEN
               BEGIN
                   Self.WindowState := wsMinimized;
                   Self.WindowState :=  wsNormal;
                   SELF.Repaint;
               END; // IF
     END; // FOR vi_Comb12_1 :=
    STGR_COLUNA_01e02e03e04_SOBRAS.RowCount := vi_Linhas02;
    STGR_COLUNA_04.RowCount := vi_Linhas02;
    STGR_COLUNA_03.RowCount := vi_Linhas02;
               if (vi_Linhas15 >1 ) THEN
                  PR_GRAVAR_DADOS_v1 ();
     PGBR_GERARCOMB1.Position := 100;
     PGBR_GERARCOMB1.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     PGBR_GERARCOMB0.Position := 40;
     PGBR_GERARCOMB0.Repaint;
     LA_RESULTADO_TXT.Caption := 'Etapa 3/6 Fim.';
     SLEEP(1000);

end;




procedure T_FRM_SIMULACAO3.BBT_GERAR_MENUClick(Sender: TObject);
begin
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Top  := 245;
     PA_GERAR.Left := 460;
     PA_GERAR.Repaint;
end;

procedure T_FRM_SIMULACAO3.BBT_GERARClick(Sender: TObject);
BEGIN
     BBT_Etapa_03.Click;
     BBT_Etapa_04.Click;
     BBT_Etapa_05.Click;
     BBT_Etapa_06.Click;
end;


(*

PROCEDURE T_FRM_SIMULACAO3.PR_SIMULAR_RECUPERANDODADOS();
    PROCEDURE PR_ORDENAR_SIMULACAO_17 ();
    var
        vi_Contar, vi_CNTCELULAS: INTEGER;
    begin
          // ************************
      	// **  Ordena os dados   **
	     // ************************
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
        END; // FOR vi_Contar
        // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
        FOR vi_Contar :=1 TO 17 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_SOBRAS_16.Cells[vi_Contar,1])) ,1]:='V';
        END; // FOR vi_Contar1
        vi_CNTCELULAS := 1;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') THEN
            BEGIN
                STGR_SOBRAS_16.Cells [vi_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                vi_CNTCELULAS := vi_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR vi_Contar
          // ************************
      	// **  Ordena os dados   **
	     // ************************
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
        END; // FOR vi_Contar
        // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
        FOR vi_Contar :=1 TO 10 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_SOBRAS_13.Cells[vi_Contar,1])) ,1]:='V';
        END; // FOR vi_Contar1
        vi_CNTCELULAS := 1;
        FOR vi_Contar :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') THEN
            BEGIN
                STGR_SOBRAS_13.Cells [vi_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                vi_CNTCELULAS := vi_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR vi_Contar
    end; // PROCEDURE ORDENAR_SIMULACAO_15
VAR
     vi_CNTCELULAS : INTEGER;
     VS_QUERY, VC_COMBINACOES_S, VC_COMBINACOES_NS : STRING;
BEGIN
//       SELF.PR_LIMPAR_GRID10();
     LA_RESULTADO_TXT.Caption := 'ORDENAÇÃO';
     SLEEP(1600);
     PGBR_GERARCOMB1.Position :=0;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_3G8C_M3_DADOS4 ORDER BY CONTADOR') ;
     SELF.IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     STGR_COLUNA_01e02e03e04_SOBRAS.ColWidths[0] := 45;
     WHILE NOT(IBQ_COMBINACOES.Eof) DO
     BEGIN
          STGR_SOBRAS_16.Cells[0,1] := IBQ_COMBINACOES.FieldByName('CONTADOR').AsString;
          STGR_SOBRAS_16.Cells[1,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,1,2);
          STGR_SOBRAS_16.Cells[2,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,4,2);
          STGR_SOBRAS_16.Cells[3,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,7,2);
          STGR_SOBRAS_16.Cells[4,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,10,2);
          STGR_SOBRAS_16.Cells[5,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,13,2);
          STGR_SOBRAS_16.Cells[6,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,16,2);
          STGR_SOBRAS_16.Cells[7,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,19,2);
          STGR_SOBRAS_16.Cells[8,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,22,2);
          STGR_SOBRAS_16.Cells[9,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,25,2);
          STGR_SOBRAS_16.Cells[10,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,28,2);
          STGR_SOBRAS_16.Cells[11,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,31,2);
          STGR_SOBRAS_16.Cells[12,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,34,2);
          STGR_SOBRAS_16.Cells[13,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,37,2);
          STGR_SOBRAS_16.Cells[14,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,40,2);
          STGR_SOBRAS_16.Cells[15,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_S').AsString,43,2);

          STGR_SOBRAS_13.Cells[0,1] := IBQ_COMBINACOES.FieldByName('CONTADOR').AsString;
          STGR_SOBRAS_13.Cells[1,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,1,2);
          STGR_SOBRAS_13.Cells[2,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,4,2);
          STGR_SOBRAS_13.Cells[3,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,7,2);
          STGR_SOBRAS_13.Cells[4,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,10,2);
          STGR_SOBRAS_13.Cells[5,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,13,2);
          STGR_SOBRAS_13.Cells[6,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,16,2);
          STGR_SOBRAS_13.Cells[7,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,19,2);
          STGR_SOBRAS_13.Cells[8,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,22,2);
          STGR_SOBRAS_13.Cells[9,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,25,2);
          STGR_SOBRAS_13.Cells[10,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_NS').AsString,28,2);
          STGR_SOBRAS_13.Cells[11,1] := '00';
          STGR_SOBRAS_13.Cells[12,1] := '00';
          PR_ORDENAR_SIMULACAO_17 ();
          VC_COMBINACOES_S :='';
          VC_COMBINACOES_NS :='';
          FOR vi_CNTCELULAS := 1 TO 15 DO
          BEGIN
               VC_COMBINACOES_S := VC_COMBINACOES_S + RIGHTSTR ('0'+TRIM(STGR_SOBRAS_16.Cells[vi_CNTCELULAS,1]),2) +' ';
          END; // FOR vi_CNTCELULAS

          FOR vi_CNTCELULAS := 1 TO 10 DO
          BEGIN
               VC_COMBINACOES_NS := VC_COMBINACOES_NS + RIGHTSTR ('0'+TRIM(STGR_SOBRAS_13.Cells[vi_CNTCELULAS,1]),2) +' ';
          END; // FOR
          VS_QUERY := 'UPDATE FILTRO_3G8C_M3_DADOS4 SET DADOS_S=' +#39+ VC_COMBINACOES_S   + #39+
                                            ', DADOS_NS=' +#39+ VC_COMBINACOES_NS  + #39+
                      ' WHERE CONTADOR=' + STGR_SOBRAS_16.Cells[0,1] ;
          SELF.IBQ_COMBINACOES2.SQL.Clear;
          SELF.IBQ_COMBINACOES2.SQL.Add(VS_QUERY) ;
          SELF.IBQ_COMBINACOES2.ExecSQL;
          IBQ_COMBINACOES.Next;
     END; // WHILE
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT') ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(DADOS_S) AS SOMADADOS15 FROM FILTRO_3G8C_M3_DADOS4 ORDER BY SOMADADOS15;')  ;
     SELF.IBQ_COMBINACOES.Open;
     vi_CNTCELULAS := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS15').AsInteger;
     LA_TOTAL_100REPET.Caption := INTtoSTR(vi_CNTCELULAS);
     LA_TOTAL_100REPET.Repaint;
     LA_rTOTAL_100REPET.Caption := INTtoSTR(vi_CNTCELULAS);
     LA_TOTAL_100REPET.Repaint;


     LA_rQTD_COMB.Caption := INTtoSTR(vi_CNTCELULAS);
     LA_rQTD_COMB.Repaint;

     LA_RESULTADO_TXT.Caption := 'FIM ORDENAR';
     SLEEP(1600);
     PGBR_GERARCOMB1.Position :=100;
     PGBR_GERARCOMB1.Repaint;
     
      Self.Repaint;
      Self.WindowState := wsMinimized;
      Self.WindowState :=  wsNormal;
      Self.Repaint;
     //SHOWMESSAGE('DADOS ORDENADOS - OK');
END;


 *)


procedure T_FRM_SIMULACAO3.PageControl_RESULTADOEnter(Sender: TObject);
begin
          //  TBS_RESULTADO.Visible := False;
end;




procedure T_FRM_SIMULACAO3.TabSheet1Enter(Sender: TObject);
begin
           // TBS_RESULTADO.Visible := False;
end;




procedure T_FRM_SIMULACAO3.TRB_C2_INIChange(Sender: TObject);
begin
{
     IF TRB_C2_INI.Position = 1 THEN
          ED_SOMAS_C2_INI.Text := '37';
     IF TRB_C2_INI.Position = 2 THEN
          ED_SOMAS_C2_INI.Text := '41';
     IF TRB_C2_INI.Position = 3 THEN
          ED_SOMAS_C2_INI.Text := '37';

     IF TRB_C2_INI.Position = 1 THEN
          ED_SOMAS_C2_INI.Text := '37';
     IF TRB_C2_INI.Position = 2 THEN
          ED_SOMAS_C2_INI.Text := '41';
     IF TRB_C2_INI.Position = 3 THEN
          ED_SOMAS_C2_INI.Text := '41';
          }
end;




procedure T_FRM_SIMULACAO3.TRB_C3_INIChange(Sender: TObject);
begin
{
     IF TRB_C3_INI.Position = 1 THEN
          ED_SOMAS_C3_INI.Text := '37';
     IF TRB_C3_INI.Position = 2 THEN
          ED_SOMAS_C3_INI.Text := '39';
     IF TRB_C3_INI.Position = 3 THEN
          ED_SOMAS_C3_INI.Text := '41';
     IF TRB_C3_INI.Position = 4 THEN
          ED_SOMAS_C3_INI.Text := '37';
     IF TRB_C3_INI.Position = 5 THEN
          ED_SOMAS_C3_INI.Text := '39';
     IF TRB_C3_INI.Position = 6 THEN
          ED_SOMAS_C3_INI.Text := '37';

     IF TRB_C3_INI.Position = 1 THEN
          ED_SOMAS_C3_INI.Text := '37';
     IF TRB_C3_INI.Position = 2 THEN
          ED_SOMAS_C3_INI.Text := '39';
     IF TRB_C3_INI.Position = 3 THEN
          ED_SOMAS_C3_INI.Text := '41';
     IF TRB_C3_INI.Position = 4 THEN
          ED_SOMAS_C3_INI.Text := '39';
     IF TRB_C3_INI.Position = 5 THEN
          ED_SOMAS_C3_INI.Text := '41';
     IF TRB_C3_INI.Position = 6 THEN
          ED_SOMAS_C3_INI.Text := '41';
          }
end;




procedure T_FRM_SIMULACAO3.TRB_C4_INIChange(Sender: TObject);
begin
{
     IF TRB_C4_INI.Position = 1 THEN
          ED_SOMAS_C4_INI.Text := '37';
     IF TRB_C4_INI.Position = 2 THEN
          ED_SOMAS_C4_INI.Text := '39';
     IF TRB_C4_INI.Position = 3 THEN
          ED_SOMAS_C4_INI.Text := '41';
     IF TRB_C4_INI.Position = 4 THEN
          ED_SOMAS_C4_INI.Text := '37';
     IF TRB_C4_INI.Position = 5 THEN
          ED_SOMAS_C4_INI.Text := '39';
     IF TRB_C4_INI.Position = 6 THEN
          ED_SOMAS_C4_INI.Text := '37';

     IF TRB_C4_INI.Position = 1 THEN
          ED_SOMAS_C4_INI.Text := '37';
     IF TRB_C4_INI.Position = 2 THEN
          ED_SOMAS_C4_INI.Text := '39';
     IF TRB_C4_INI.Position = 3 THEN
          ED_SOMAS_C4_INI.Text := '41';
     IF TRB_C4_INI.Position = 4 THEN
          ED_SOMAS_C4_INI.Text := '39';
     IF TRB_C4_INI.Position = 5 THEN
          ED_SOMAS_C4_INI.Text := '41';
     IF TRB_C4_INI.Position = 6 THEN
          ED_SOMAS_C4_INI.Text := '41';
          }
end;




procedure T_FRM_SIMULACAO3.TRB_C5_INIChange(Sender: TObject);
begin
{
     IF TRB_C5_INI.Position = 1 THEN
          ED_SOMAS_C5_INI.Text := '37';
     IF TRB_C5_INI.Position = 2 THEN
          ED_SOMAS_C5_INI.Text := '39';
     IF TRB_C5_INI.Position = 3 THEN
          ED_SOMAS_C5_INI.Text := '41';
     IF TRB_C5_INI.Position = 4 THEN
          ED_SOMAS_C5_INI.Text := '37';
     IF TRB_C5_INI.Position = 5 THEN
          ED_SOMAS_C5_INI.Text := '39';
     IF TRB_C5_INI.Position = 6 THEN
          ED_SOMAS_C5_INI.Text := '37';

     IF TRB_C5_INI.Position = 1 THEN
          ED_SOMAS_C5_INI.Text := '37';
     IF TRB_C5_INI.Position = 2 THEN
          ED_SOMAS_C5_INI.Text := '39';
     IF TRB_C5_INI.Position = 3 THEN
          ED_SOMAS_C5_INI.Text := '41';
     IF TRB_C5_INI.Position = 4 THEN
          ED_SOMAS_C5_INI.Text := '39';
     IF TRB_C5_INI.Position = 5 THEN
          ED_SOMAS_C5_INI.Text := '41';
     IF TRB_C5_INI.Position = 6 THEN
          ED_SOMAS_C5_INI.Text := '41';
          }
end;




procedure T_FRM_SIMULACAO3.TRB_G2_INIChange(Sender: TObject);
begin
{
     IF TRB_G2_INI.Position = 1 THEN
          ED_SOMAS_G2_INI.Text := '154';
     IF TRB_G2_INI.Position = 2 THEN
          ED_SOMAS_G2_INI.Text := '156';
     IF TRB_G2_INI.Position = 3 THEN
          ED_SOMAS_G2_INI.Text := '158';
     IF TRB_G2_INI.Position = 4 THEN
          ED_SOMAS_G2_INI.Text := '154';
     IF TRB_G2_INI.Position = 5 THEN
          ED_SOMAS_G2_INI.Text := '156';
     IF TRB_G2_INI.Position = 6 THEN
          ED_SOMAS_G2_INI.Text := '154';

     IF TRB_G2_INI.Position = 1 THEN
          ED_SOMAS_G2_INI.Text := '154';
     IF TRB_G2_INI.Position = 2 THEN
          ED_SOMAS_G2_INI.Text := '156';
     IF TRB_G2_INI.Position = 3 THEN
          ED_SOMAS_G2_INI.Text := '158';
     IF TRB_G2_INI.Position = 4 THEN
          ED_SOMAS_G2_INI.Text := '156';
     IF TRB_G2_INI.Position = 5 THEN
          ED_SOMAS_G2_INI.Text := '158';
     IF TRB_G2_INI.Position = 6 THEN
          ED_SOMAS_G2_INI.Text := '158';
          }
end;




procedure T_FRM_SIMULACAO3.BBT_Etapa_04Click(Sender: TObject);

    PROCEDURE PR_GRAVAR_DADOS_v2 ();
    VAR
        VI_AN_COMB1, vi_CNTCELULAS : INTEGER;
        vc_Query, VC_COMBINACOES_03_C5, VC_COMBINACOES_02_C6, VC_COMBINACOES_02_C7 : STRING;
        VC_COMBINACOES_s_06 : STRING;
    BEGIN

            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COLUNA_01.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COLUNA_05.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES_03_C5 :='';
                VC_COMBINACOES_02_C6 :='';
                VC_COMBINACOES_02_C7 :='';
                VC_COMBINACOES_s_06  :='';
                FOR vi_CNTCELULAS := 3 TO 5 DO
                BEGIN
                    VC_COMBINACOES_03_C5 := VC_COMBINACOES_03_C5 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_05.Cells[vi_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR vi_CNTCELULAS
                FOR vi_CNTCELULAS := 3 TO 4 DO
                BEGIN
                    VC_COMBINACOES_02_C6 := VC_COMBINACOES_02_C6 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_06.Cells[vi_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                    VC_COMBINACOES_02_C7 := VC_COMBINACOES_02_C7 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_07.Cells[vi_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR vi_CNTCELULAS
                FOR vi_CNTCELULAS := 2 TO 7 DO
                BEGIN
                    VC_COMBINACOES_s_06 := VC_COMBINACOES_s_06 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_05e06e07_SOBRAS.Cells[vi_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR vi_CNTCELULAS

                     vc_Query  := 'INSERT INTO SIMULACAO_3_DADOS2 (DADOS_03_C5, DADOS_02_C6, DADOS_02_C7, DADOS_SOBRAM_06,'
                     +'  CONTADOR1, CONTADOR2) '
                     +' VALUES(' +#39+ TRIM(VC_COMBINACOES_03_C5) + #39 +','+#39+TRIM(VC_COMBINACOES_02_C6)
                          + #39 +','+#39+ TRIM(VC_COMBINACOES_02_C7)
                          + #39 +','+#39+TRIM(VC_COMBINACOES_s_06)
                          + #39 +','+#39+STGR_COLUNA_05.Cells[0,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COLUNA_05.Cells[2,VI_AN_COMB1]                          
                           + #39 +');';
                     SELF.IBQ_COMBINACOES2.SQL.Clear;
                     SELF.IBQ_COMBINACOES2.SQL.Add(vc_Query)  ;
                     SELF.IBQ_COMBINACOES2.ExecSQL;
            END; // FOR VI_AN_COMB1
                  SELF.IBQ_COMBINACOES2.SQL.Clear;
                  SELF.IBQ_COMBINACOES2.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES2.ExecSQL;
             SLEEP(19);
             SELF.IBQ_COMBINACOES2.SQL.Clear;
    end; // PROCEDURE

VAR
     vi_CNTCELULAS, vi_Contar, vi_CONTASEL1: integer;
     vi_CombINACOES1, vi_CombINACOES2, vi_CombINACOES3, vi_Contar_COMB1 : INTEGER ;
      vi_Comb12_1, vi_Comb12_2, vi_Comb12_3, vi_Comb12_4: INTEGER;
     vi_Comb_C4_1, vi_Comb_C4_2, Vsi_SOMAINI, Vsi_SOMAFINAL : INTEGER;
     vi_Comb_C7_1, vi_Comb_C7_2 : INTEGER;
       vi_Linhas15, vi_Linhas02, vi_Soma12, vi_Flag12 , vi_Soma03, vi_Flag08, vi_Soma07: INTEGER;
       vi_Flag_FX12, vi_Flag_FX12B, vi_Flag_FIXOS04, vi_Soma_C567 : INTEGER;
       VS_NUMEROSPRINCIPAIS: STRING;
       VDB_CALCULO_TOTAL: DOUBLE;

begin
     BBT_ETAPA_01.Enabled := False;
     // aki BBT_GERAR_MENU.Enabled := False;
     BBT_ETAPA_04.Enabled := TRUE;
      BBT_GERAR_MENU.Enabled := TRUE;
     BBT_CANCELAR_SAIR.Visible := False;
     SCBX_INICIAR.HorzScrollBar.Position := 2;
     SCBX_INICIAR.Repaint;
     PR_LIMPAR_GRIDpreparar (); // exceto STGR_COLUNA_01e02_SOBRAS
     FOR vi_CONTASEL1 := 3 TO 5 DO
     BEGIN
        STGR_COLUNA_03.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1-2)+'-';
        STGR_COLUNA_03.Cells [vi_CONTASEL1,1] := '00';
        STGR_COLUNA_04.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1-2)+'-';
        STGR_COLUNA_04.Cells [vi_CONTASEL1,1] := '00';
     END;
     STGR_COLUNA_05.ColWidths [0]:= 45;
     STGR_COLUNA_05.ColWidths [1]:= 35;
     STGR_COLUNA_05.ColWidths [2]:= 45;
     STGR_COLUNA_05.RowCount := 2;
     STGR_COLUNA_05.Repaint;
     STGR_COLUNA_06.ColWidths [0]:= 45;
     STGR_COLUNA_06.ColWidths [1]:= 35;
     STGR_COLUNA_06.ColWidths [2]:= 45;
     STGR_COLUNA_06.RowCount := 2;
     STGR_COLUNA_06.Repaint;
     STGR_COLUNA_07.ColWidths [0]:= 45;
     STGR_COLUNA_07.ColWidths [1]:= 35;
     STGR_COLUNA_07.ColWidths [2]:= 45;
     STGR_COLUNA_07.RowCount := 2;
     STGR_COLUNA_07.Repaint;
     STGR_COLUNA_05e06e07_SOBRAS.ColWidths [0]:= 45;
     STGR_COLUNA_05e06e07_SOBRAS.ColWidths [1]:= 35;
     STGR_COLUNA_05e06e07_SOBRAS.RowCount := 2;
     STGR_COLUNA_05e06e07_SOBRAS.Repaint;
     STGR_COLUNA_SOMA_C05e06e07.ColWidths [0]:= 45;
     STGR_COLUNA_SOMA_C05e06e07.ColWidths [1]:= 39;
     STGR_COLUNA_SOMA_C05e06e07.RowCount := 2;
     STGR_COLUNA_SOMA_C05e06e07.Repaint;

     PGBR_GERARCOMB1.Position := 0 ;
     PGBR_GERARCOMB1.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     PA_GERAR.Enabled := False;
     PA_GERAR.Left := 4500;

     PageControl_RESULTADO.Enabled := TRUE;
     {TBS_PREPARAR.Enabled := TRUE;
     TBS_PREPARAR.Visible := TRUE;
     TBS_PREPARAR.SetFocus;
     TBS_PREPARAR.Repaint;              }
     PageControl_RESULTADO.TabIndex := 2  ;
     PageControl_RESULTADO.Repaint;

     LA_RESULTADO_TXT.Caption := 'ETAPA 4/6:';
     LA_RESULTADO_TXT.Repaint;
     // ***************************
     // **  CONFERINDO OS FIXOS  **
     // ***************************
     if (STRtoINT(ED_FIXOS_01_C5.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C6.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C7.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C5.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 5ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C5.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C6.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C6.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C6.Text) = STRtoINT(ED_FIXOS_01_C3.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C6.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C6.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 6ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C4.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C7.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C7.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C7.Text) = STRtoINT(ED_FIXOS_01_C3.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C7.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C7.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 7ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C3.SetFocus;
                 EXIT;
          END; // IF

     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_3_DADOS2')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     // ************************
     // **   PRIMEIRO BLOCO   **
     // ************************
     vi_Linhas02 := 1;
     vi_Linhas15 := 1;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM SIMULACAO_3_DADOS1 ORDER BY CONTADOR1') ;
     SELF.IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.Last;
     vi_CONTASEL1 := SELF.IBQ_COMBINACOES.FIELDbyNAME('CONTADOR1').AsInteger   ;
     IBQ_COMBINACOES.First;
     STGR_COLUNA_05e06e07_SOBRAS.DefaultDrawing := False;
     STGR_COLUNA_SOMA_C05e06e07.DefaultDrawing := False;
     vi_Comb12_1 := 1;
     WHILE NOT(SELF.IBQ_COMBINACOES.Eof) DO
     BEGIN
          STGR_SOBRAS_13.Cells[0,1] := IBQ_COMBINACOES.FieldByName('CONTADOR1').AsString;
          STGR_SOBRAS_13.Cells[1,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,1,2);
          STGR_SOBRAS_13.Cells[2,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,4,2);
          STGR_SOBRAS_13.Cells[3,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,7,2);
          STGR_SOBRAS_13.Cells[4,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,10,2);
          STGR_SOBRAS_13.Cells[5,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,13,2);
          STGR_SOBRAS_13.Cells[6,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,16,2);
          STGR_SOBRAS_13.Cells[7,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,19,2);
          STGR_SOBRAS_13.Cells[8,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,22,2);
          STGR_SOBRAS_13.Cells[9,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,25,2);
          STGR_SOBRAS_13.Cells[10,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,28,2);
          STGR_SOBRAS_13.Cells[11,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,31,2);
          STGR_SOBRAS_13.Cells[12,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,34,2);
          STGR_SOBRAS_13.Cells[13,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_14').AsString,37,2);
        SLEEP(10);
          FOR vi_Comb12_2 := 1 TO  11 DO
          BEGIN
               FOR vi_Comb12_3 := vi_Comb12_2+1 TO  12 DO
               BEGIN
                    FOR vi_Comb12_4 := vi_Comb12_3+1 TO  13 DO
                    BEGIN
                         // PARES
                         vi_CNTCELULAS := 0;
                         IF (STRtoINT(STGR_SOBRAS_13.Cells[vi_Comb12_2,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF (STRtoINT(STGR_SOBRAS_13.Cells[vi_Comb12_3,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF (STRtoINT(STGR_SOBRAS_13.Cells[vi_Comb12_4,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF  NOT (vi_CNTCELULAS =2) THEN
                              CONTINUE;
                         // SOMA
                         vi_Flag12 := 0;
                         vi_Soma12  :=  STRtoINT(STGR_SOBRAS_13.Cells[vi_Comb12_2,1])
                            + STRtoINT(STGR_SOBRAS_13.Cells[vi_Comb12_3,1])+ STRtoINT(STGR_SOBRAS_13.Cells[vi_Comb12_4,1]);
                         IF (vi_Soma12 >= STRtoINT(ED_SOMAS_C5_INI.Text)) AND (vi_Soma12 <= STRtoINT(ED_SOMAS_C5_INI.Text)) THEN
                         BEGIN
                                vi_Flag12 := 1 ;
                         END; // IF
                         IF (vi_Flag12 = 0) THEN
                              CONTINUE  ;
                         // FIXOS
                         vi_Flag_FX12 := 0;
                         IF  STRtoINT(ED_FIXOS_01_C5.Text) > 0 THEN
                         BEGIN
                                   IF (STRtoINT(STGR_SOBRAS_13.Cells[vi_Comb12_2,1]) = STRtoINT(ED_FIXOS_01_C5.Text))
                                   or   (STRtoINT(STGR_SOBRAS_13.Cells[vi_Comb12_3,1]) = STRtoINT(ED_FIXOS_01_C5.Text))
                                   or   (STRtoINT(STGR_SOBRAS_13.Cells[vi_Comb12_4,1]) = STRtoINT(ED_FIXOS_01_C5.Text))
                                   THEN
                                        vi_Flag_FX12 := 1;
                         END ELSE  // STRtoINT(ED_FIXOS_01_C3.Text)
                         BEGIN
                              vi_Flag_FX12 := 1;
                         END; // IF STRtoINT(ED_FIXOS_01_C3.Text)
                         IF (vi_Flag_FX12 = 0) THEN
                              CONTINUE ;
                         // COLUNA 05
                         STGR_COLUNA_05.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15);
                         STGR_COLUNA_05.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma12);
                         STGR_COLUNA_05.Cells[2,vi_Linhas02] := STGR_SOBRAS_13.Cells[0,1];
                         STGR_COLUNA_05.Cells[3,vi_Linhas02] := STGR_SOBRAS_13.Cells[vi_Comb12_2,1];
                         STGR_COLUNA_05.Cells[4,vi_Linhas02] := STGR_SOBRAS_13.Cells[vi_Comb12_3,1];
                         STGR_COLUNA_05.Cells[5,vi_Linhas02] := STGR_SOBRAS_13.Cells[vi_Comb12_4,1];
                         // -------------------------------------------
                         // --  MONTANDO AS 11 SOBRAS DA COLUNA 05  ---
                         // -------------------------------------------
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells[vi_Contar,0] :=INTtoSTR(vi_Contar);
                                STRGR_TODOS_NUMEROS.Cells[vi_Contar,2] :='F';
                                STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
                            END; // FOR vi_Contar
                            FOR vi_Contar :=1 TO 13 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_SOBRAS_13.Cells[vi_Contar,1])) ,1]:='V';
                            END; // FOR vi_Contar1
                            FOR vi_Contar :=3 TO 5 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_05.Cells[vi_Contar,vi_Linhas02])) ,2]:='V';
                            END; // FOR vi_Contar1
                            vi_CNTCELULAS := 1;
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                // SOBRAS
                                IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F') THEN
                                BEGIN
                                    STGR_SOBRAS_10.Cells[vi_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                    vi_CNTCELULAS := vi_CNTCELULAS + 1;
                                END; // IF (STRGR_TODOS_NUMEROS
                            END; // FOR vi_Contar
                         // ----------------------------------------------
                         // ************************
                         // **   SEGUNDO BLOCO    **
                         // ************************
                              FOR vi_Comb_C4_1 := 1 TO  09 DO
                              BEGIN
                                   FOR vi_Comb_C4_2 := vi_Comb_C4_1+1 TO  10 DO
                                   BEGIN
                                        // PARES
                                        vi_CNTCELULAS := 0;
                                        IF (STRtoINT(STGR_SOBRAS_10.Cells[vi_Comb_C4_1,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                                        IF (STRtoINT(STGR_SOBRAS_10.Cells[vi_Comb_C4_2,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                                        IF  NOT (vi_CNTCELULAS =1) THEN
                                             CONTINUE;
                                        //---
                                        vi_Soma03  :=  STRtoINT(STGR_SOBRAS_10.Cells[vi_Comb_C4_1,1])
                                           + STRtoINT(STGR_SOBRAS_10.Cells[vi_Comb_C4_2,1]) ;
                                        IF (vi_Soma03 >= STRtoINT(ED_SOMAS_C6_INI.Text)) AND (vi_Soma03 <= STRtoINT(ED_SOMAS_C6_INI.Text)) THEN
                                        BEGIN
                                             //---
                                             vi_Flag_FIXOS04 := 0;
                                             IF  STRtoINT(ED_FIXOS_01_C6.Text) > 0 THEN
                                             BEGIN
                                                  IF  (STRtoINT(STGR_SOBRAS_10.Cells[vi_Comb_C4_1,1]) = STRtoINT(ED_FIXOS_01_C6.Text)) OR
                                                      (STRtoINT(STGR_SOBRAS_10.Cells[vi_Comb_C4_2,1]) = STRtoINT(ED_FIXOS_01_C6.Text))
                                                  THEN
                                                       vi_Flag_FIXOS04 := 1;
                                             END ELSE
                                             BEGIN
                                                       vi_Flag_FIXOS04 := 1 ;
                                             END; // IF  STRtoINT(ED_FIXOS_01_C4.Text
                                             IF (vi_Flag_FIXOS04 = 0) THEN
                                                  CONTINUE;
                                             // COLUNA 06     
                                             STGR_COLUNA_06.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15) ;
                                             STGR_COLUNA_06.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma03);
                                             STGR_COLUNA_06.Cells[2,vi_Linhas02] := STGR_SOBRAS_13.Cells[0,1]; //'1';
                                             STGR_COLUNA_06.Cells[3,vi_Linhas02] := STGR_SOBRAS_10.Cells[vi_Comb_C4_1,1];
                                             STGR_COLUNA_06.Cells[4,vi_Linhas02] := STGR_SOBRAS_10.Cells[vi_Comb_C4_2,1];

                                             // -------------------------------------------
                                             // --  MONTANDO AS 08 SOBRAS DA COLUNA 06  ---
                                             // -------------------------------------------
                                                FOR vi_Contar :=1 TO 25 DO
                                                BEGIN
                                                    STRGR_TODOS_NUMEROS.Cells[vi_Contar,2] :='F';
                                                    STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
                                                END; // FOR vi_Contar
                                                FOR vi_Contar :=1 TO 10 DO
                                                BEGIN
                                                    STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_SOBRAS_10.Cells[vi_Contar,1])) ,1]:='V';
                                                END; // FOR vi_Contar1
                                                FOR vi_Contar :=3 TO 4 DO
                                                BEGIN
                                                    STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_06.Cells[vi_Contar,vi_Linhas02])) ,2]:='V';
                                                END; // FOR vi_Contar1
                                                vi_CNTCELULAS := 1;
                                                FOR vi_Contar :=1 TO 25 DO
                                                BEGIN
                                                    // SOBRAS
                                                    IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F') THEN
                                                    BEGIN
                                                        STGR_SOBRAS_08.Cells[vi_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                                        vi_CNTCELULAS := vi_CNTCELULAS + 1;
                                                    END; // IF (STRGR_TODOS_NUMEROS
                                                END; // FOR vi_Contar
                                             // ----------------------------------------------

                                                  // ***************************
                                                  // **    TERCEIRO BLOCO     **
                                                  // ***************************
                                                       FOR vi_Comb_C7_1 := 1 TO  07 DO
                                                       BEGIN
                                                            FOR vi_Comb_C7_2 := vi_Comb_C7_1+1 TO  08 DO
                                                            BEGIN
                                                                 // PARES
                                                                 vi_CNTCELULAS := 0;
                                                                 IF (STRtoINT(STGR_SOBRAS_08.Cells[vi_Comb_C7_1,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                                                                 IF (STRtoINT(STGR_SOBRAS_08.Cells[vi_Comb_C7_2,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                                                                 IF  NOT (vi_CNTCELULAS =1) THEN
                                                                      CONTINUE;
                                                                 //---
                                                                 vi_Soma07  :=  STRtoINT(STGR_SOBRAS_08.Cells[vi_Comb_C7_1,1])
                                                                    + STRtoINT(STGR_SOBRAS_08.Cells[vi_Comb_C7_2,1]) ;
                                                                 IF (vi_Soma07 >= STRtoINT(ED_SOMAS_c7_INI.Text)) AND (vi_Soma07 <= STRtoINT(ED_SOMAS_c7_INI.Text)) THEN
                                                                 BEGIN
                                                                      //---
                                                                      vi_Flag_FIXOS04 := 0;
                                                                      IF  STRtoINT(ED_FIXOS_01_c7.Text) > 0 THEN
                                                                      BEGIN
                                                                           IF  (STRtoINT(STGR_SOBRAS_08.Cells[vi_Comb_C7_1,1]) = STRtoINT(ED_FIXOS_01_c7.Text)) OR
                                                                               (STRtoINT(STGR_SOBRAS_08.Cells[vi_Comb_C7_2,1]) = STRtoINT(ED_FIXOS_01_c7.Text))
                                                                           THEN
                                                                                vi_Flag_FIXOS04 := 1;
                                                                      END ELSE
                                                                      BEGIN
                                                                                vi_Flag_FIXOS04 := 1 ;
                                                                      END; // IF  STRtoINT(ED_FIXOS_01_C4.Text
                                                                      IF (vi_Flag_FIXOS04 = 0) THEN
                                                                           CONTINUE;
                                                                      // SOMA DE TODAS AS COLUNAS (c5, c6 e c7)
                                                                      vi_Soma_C567 :=  vi_Soma12+vi_Soma03+vi_Soma07;
                                                                      vi_Flag_FIXOS04 := 0;
                                                                      IF (vi_Soma_C567 >= STRtoINT(ED_SOMAS_G2_INI.Text)) AND (vi_Soma_C567 <= STRtoINT(ED_SOMAS_G2_INI.Text)) THEN
                                                                      BEGIN
                                                                           vi_Flag_FIXOS04 := 1;
                                                                      END;
                                                                      IF (vi_Flag_FIXOS04 = 0) THEN
                                                                           CONTINUE  ;

                                                                      STGR_COLUNA_07.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15) ;
                                                                      STGR_COLUNA_07.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma03);
                                                                      STGR_COLUNA_07.Cells[2,vi_Linhas02] := STGR_SOBRAS_13.Cells[0,1]; //'1';
                                                                      STGR_COLUNA_07.Cells[3,vi_Linhas02] := STGR_SOBRAS_08.Cells[vi_Comb_C7_1,1];
                                                                      STGR_COLUNA_07.Cells[4,vi_Linhas02] := STGR_SOBRAS_08.Cells[vi_Comb_C7_2,1];

                                                                      STGR_COLUNA_06.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15) ;
                                                                      STGR_COLUNA_06.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma03);
                                                                      STGR_COLUNA_06.Cells[2,vi_Linhas02] := STGR_SOBRAS_13.Cells[0,1]; //'1';
                                                                      STGR_COLUNA_06.Cells[3,vi_Linhas02] := STGR_SOBRAS_10.Cells[vi_Comb_C4_1,1];
                                                                      STGR_COLUNA_06.Cells[4,vi_Linhas02] := STGR_SOBRAS_10.Cells[vi_Comb_C4_2,1];

                                                                      STGR_COLUNA_SOMA_C05e06e07.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15);
                                                                      STGR_COLUNA_SOMA_C05e06e07.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma12+vi_Soma03+vi_Soma07);
                                                                      STGR_COLUNA_05e06e07_SOBRAS.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas02);
                                                                      STGR_COLUNA_05e06e07_SOBRAS.Cells[1,vi_Linhas02] := STGR_SOBRAS_13.Cells[0,1];
                                                                      STGR_COLUNA_05.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15);
                                                                      STGR_COLUNA_05.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma12);
                                                                      STGR_COLUNA_05.Cells[2,vi_Linhas02] := STGR_SOBRAS_13.Cells[0,1];
                                                                      STGR_COLUNA_05.Cells[3,vi_Linhas02] := STGR_SOBRAS_13.Cells[vi_Comb12_2,1];
                                                                      STGR_COLUNA_05.Cells[4,vi_Linhas02] := STGR_SOBRAS_13.Cells[vi_Comb12_3,1];
                                                                      STGR_COLUNA_05.Cells[5,vi_Linhas02] := STGR_SOBRAS_13.Cells[vi_Comb12_4,1];
                                                                      // -------------------------------------------
                                                                      // --  MONTANDO AS 06 SOBRAS DA COLUNA 07  ---
                                                                      // -------------------------------------------

                                                                         FOR vi_Contar :=1 TO 25 DO
                                                                         BEGIN
                                                                             STRGR_TODOS_NUMEROS.Cells[vi_Contar,2] :='F';
                                                                             STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
                                                                         END; // FOR vi_Contar
                                                                         FOR vi_Contar :=1 TO 08 DO
                                                                         BEGIN
                                                                             STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_SOBRAS_08.Cells[vi_Contar,1])) ,1]:='V';
                                                                         END; // FOR vi_Contar1
                                                                         FOR vi_Contar :=3 TO 4 DO
                                                                         BEGIN
                                                                             STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_07.Cells[vi_Contar,vi_Linhas02])) ,2]:='V';
                                                                         END; // FOR vi_Contar1
                                                                         vi_CNTCELULAS := 2;
                                                                         FOR vi_Contar :=1 TO 25 DO
                                                                         BEGIN
                                                                             // SOBRAS
                                                                             IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F') THEN
                                                                             BEGIN
                                                                                 STGR_COLUNA_05e06e07_SOBRAS.Cells[vi_CNTCELULAS, vi_Linhas02] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                                                                 vi_CNTCELULAS := vi_CNTCELULAS + 1;
                                                                             END; // IF (STRGR_TODOS_NUMEROS
                                                                         END; // FOR vi_Contar
                                                                      // ----------------------------------------------
                                                                          vi_Linhas15 := vi_Linhas15 +1;
                                                                          vi_Linhas02 := vi_Linhas02 +1;
                                                                               if (vi_Linhas15 >1 ) THEN
                                                                               begin
                                                                                    if ((vi_Linhas15 mod 9600)=0) THEN
                                                                                    begin
                                                                                        STGR_COLUNA_05e06e07_SOBRAS.DefaultDrawing := True;
                                                                                        STGR_COLUNA_SOMA_C05e06e07.DefaultDrawing := True;
                                                                                        STGR_COLUNA_05e06e07_SOBRAS.Repaint;
                                                                                        STGR_COLUNA_SOMA_C05e06e07.Repaint;
                                                                                         PR_GRAVAR_DADOS_v2 ();
                                                                                         //    vi_Linhas05 := 1;  // aqui transforme esta linha em comentário
                                                                                         vi_Linhas02 := 1;
                                                                                         sleep(500);
                                                                                        PR_LIMPAR_GRIDetapa4();
                                                                                         STGR_COLUNA_05e06e07_SOBRAS.RowCount := vi_Linhas02;
                                                                                         STGR_COLUNA_05.RowCount := vi_Linhas02;
                                                                                         STGR_COLUNA_06.RowCount := vi_Linhas02;
                                                                                         STGR_COLUNA_07.RowCount := vi_Linhas02;
                                                                                         STGR_COLUNA_SOMA_C05e06e07.RowCount := vi_Linhas02;
                                                                                        STGR_COLUNA_05e06e07_SOBRAS.DefaultDrawing := False;
                                                                                        STGR_COLUNA_SOMA_C05e06e07.DefaultDrawing := False;
                                                                                    end; //
                                                                               END; // IF
                                                                 END;  //IF (vi_Soma07 >=
                                                            END; // FOR vi_Comb_C7_2 :=
                                                       END; // FOR vi_Comb_C7_1


                                        END;  //IF (vi_Soma03 = STRtoINT(ED_SOMAS_C3_INI.Text))
                                   END; // FOR vi_Comb_C4_2 :=
                                   STGR_COLUNA_05e06e07_SOBRAS.RowCount := vi_Linhas15;
                                   STGR_COLUNA_06.RowCount := vi_Linhas02;
                                   STGR_COLUNA_05.RowCount := vi_Linhas02;
                                   STGR_COLUNA_07.RowCount := vi_Linhas02;
                              END; // FOR vi_Comb_C4_1 :
                    END; // FOR vi_Comb12_4 :=
               END; // FOR vi_Comb12_3 :=
          END; // FOR vi_Comb12_2 :=
     SELF.IBQ_COMBINACOES.Next;
     vi_Comb12_1 := vi_Comb12_1+1;
               IF ((vi_Comb12_1 MOD 10) = 0) THEN
               BEGIN
                    STGR_COLUNA_SOMA_C05e06e07.RowCount := vi_Linhas02;
                    LA_GERAR_COMB.Caption := '# ' + INTtoSTR(vi_Comb12_1)+ ' DE '+  INTtoSTR(vi_CONTASEL1) + ' - ' + INTtoSTR(TRUNC(vi_Comb12_1/(vi_CONTASEL1)*100))+ ' %  ' + '  -  Quantidade: '+INTtoSTR(vi_Linhas15-1) ;
                    LA_GERAR_COMB.Repaint;
                    PGBR_GERARCOMB1.Position := TRUNC(vi_Comb12_1/(vi_CONTASEL1)*100);
                    PGBR_GERARCOMB1.Repaint;
                    STGR_COLUNA_07.RowCount := vi_Linhas02;
                    STGR_COLUNA_06.RowCount := vi_Linhas02;
                    STGR_COLUNA_05.RowCount := vi_Linhas02;
                    STGR_COLUNA_05e06e07_SOBRAS.RowCount := vi_Linhas02;
                    STGR_COLUNA_SOMA_C05e06e07.RowCount := vi_Linhas15;
                    STGR_COLUNA_05.Repaint;
                    STGR_COLUNA_06.Repaint;
                    STGR_COLUNA_07.Repaint;
                    STGR_COLUNA_05e06e07_SOBRAS.Repaint;
                    STGR_COLUNA_SOMA_C05e06e07.Repaint;
               end;
               IF ((vi_Comb12_1 MOD 250) = 0) THEN
               BEGIN
                   Self.WindowState := wsMinimized;
                   Self.WindowState :=  wsNormal;
                   SELF.Repaint;
                       {  try
                              STGR_COLUNA_05.FixedRows := 1;
                              STGR_COLUNA_06.FixedRows := 1;
                              //STGR_COLUNA_05.FixedRows := 1;
                         except
                              //
                         end;  }
               END; // IF
     END; // WHILE
     STGR_COLUNA_05e06e07_SOBRAS.DefaultDrawing := True;
     STGR_COLUNA_SOMA_C05e06e07.DefaultDrawing := True;
     STGR_COLUNA_07.RowCount := vi_Linhas02;
     STGR_COLUNA_06.RowCount := vi_Linhas02;
     STGR_COLUNA_05.RowCount := vi_Linhas02;
     STGR_COLUNA_05e06e07_SOBRAS.RowCount := vi_Linhas15;
     STGR_COLUNA_SOMA_C05e06e07.RowCount := vi_Linhas02;
     STGR_COLUNA_05.Repaint;
     STGR_COLUNA_06.Repaint;
     STGR_COLUNA_07.Repaint;
     STGR_COLUNA_05e06e07_SOBRAS.Repaint;
     STGR_COLUNA_SOMA_C05e06e07.Repaint;
               if (vi_Linhas15 >1 ) THEN
                  PR_GRAVAR_DADOS_v2 ();
     PGBR_GERARCOMB1.Position := 100;
     PGBR_GERARCOMB1.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     PGBR_GERARCOMB0.Position := 65;
     PGBR_GERARCOMB0.Repaint;
     SLEEP(500);
     LA_RESULTADO_TXT.Caption := 'Etapa 4/6 Fim.';

end;





procedure T_FRM_SIMULACAO3.BBT_ETAPA_05Click(Sender: TObject);

  PROCEDURE PR_GRAVAR_DADOS_v2 ();
    VAR
        VI_AN_COMB1, vi_CNTCELULAS : INTEGER;
        vc_Query, VC_COMBINACOES_03_C8, VC_COMBINACOES_03_C9, VC_COMBINACOES_10_C10 : STRING;
        VC_COMBINACOES_15_C11 : STRING;
    BEGIN

            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COLUNA_08.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COLUNA_08.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES_03_C8 :='';
                VC_COMBINACOES_03_C9 :='';
                VC_COMBINACOES_10_C10 :='';
                VC_COMBINACOES_15_C11  :='';
                FOR vi_CNTCELULAS := 3 TO 5 DO
                BEGIN
                    VC_COMBINACOES_03_C8 := VC_COMBINACOES_03_C8 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_08.Cells[vi_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                    VC_COMBINACOES_03_C9 := VC_COMBINACOES_03_C9 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_09.Cells[vi_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR vi_CNTCELULAS
                FOR vi_CNTCELULAS := 2 TO 11 DO
                BEGIN
                    VC_COMBINACOES_10_C10 := VC_COMBINACOES_10_C10 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_10.Cells[vi_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR vi_CNTCELULAS
                FOR vi_CNTCELULAS := 2 TO 16 DO
                BEGIN
                    VC_COMBINACOES_15_C11 := VC_COMBINACOES_15_C11 + RIGHTSTR ('0'+TRIM(STGR_COLUNA_11.Cells[vi_CNTCELULAS,VI_AN_COMB1]),2) +' ';
                END; // FOR vi_CNTCELULAS

                     vc_Query  := 'INSERT INTO SIMULACAO_3_DADOS3 (DADOS_03_C8, DADOS_03_C9, DADOS_10_C10, DADOS_15_C11,'
                     +'  CONTADOR2, CONTADOR3) '
                     +' VALUES(' +#39+ TRIM(VC_COMBINACOES_03_C8) + #39 +','+#39+TRIM(VC_COMBINACOES_03_C9)
                          + #39 +','+#39+ TRIM(VC_COMBINACOES_10_C10)
                          + #39 +','+#39+TRIM(VC_COMBINACOES_15_C11)
                          + #39 +','+#39+STGR_COLUNA_08.Cells[0,VI_AN_COMB1]
                          + #39 +','+#39+STGR_COLUNA_08.Cells[2,VI_AN_COMB1]
                           + #39 +');';
                     SELF.IBQ_COMBINACOES2.SQL.Clear;
                     SELF.IBQ_COMBINACOES2.SQL.Add(vc_Query)  ;
                     SELF.IBQ_COMBINACOES2.ExecSQL;
            END; // FOR VI_AN_COMB1
             SLEEP(19);
//             IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
             SELF.IBQ_COMBINACOES2.SQL.Clear;
    end; // PROCEDURE


VAR
     vi_CNTCELULAS, vi_CNTCELULAS_2, vi_Contar, vi_CONTASEL1: integer;
     vi_CombINACOES1, vi_CombINACOES2, vi_CombINACOES3, vi_Contar_COMB1 : INTEGER ;
      vi_Comb12_1, vi_Comb12_2, vi_Comb12_3, vi_Comb12_4: INTEGER;
     vi_Comb_C4_1, vi_Comb_C4_2, Vsi_SOMAINI, Vsi_SOMAFINAL : INTEGER;
     vi_Comb_C7_1, vi_Comb_C7_2 : INTEGER;
       vi_Linhas15, vi_Linhas02, vi_Soma12, vi_Soma05, vi_Flag12 , vi_Flag_FX12, vi_Soma03, vi_Flag05, vi_Soma07: INTEGER;

begin
     BBT_ETAPA_01.Enabled := False;
     // aki BBT_GERAR_MENU.Enabled := False;
     BBT_ETAPA_04.Enabled := TRUE;
      BBT_GERAR_MENU.Enabled := TRUE;
     BBT_CANCELAR_SAIR.Visible := False;
     SCBX_INICIAR.HorzScrollBar.Position := 2;
     SCBX_INICIAR.Repaint;
     PR_LIMPAR_GRIDetapa4 (); // exceto STGR_COLUNA_01e02_SOBRAS
     FOR vi_Contar :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[vi_Contar,0] :=INTtoSTR(vi_Contar);
          STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
     END; // FOR vi_Contar
     FOR vi_CONTASEL1 := 3 TO 5 DO
     BEGIN
        STGR_COLUNA_03.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1-2)+'-';
        STGR_COLUNA_03.Cells [vi_CONTASEL1,1] := '00';
        STGR_COLUNA_04.Cells [vi_CONTASEL1,0] := '-'+INTtoSTR(vi_CONTASEL1-2)+'-';
        STGR_COLUNA_04.Cells [vi_CONTASEL1,1] := '00';
     END;
     STGR_COLUNA_08.ColWidths [0]:= 45;
     STGR_COLUNA_08.ColWidths [1]:= 32;
     STGR_COLUNA_08.ColWidths [2]:= 45;
     STGR_COLUNA_08.RowCount := 2;
     STGR_COLUNA_08.Repaint;
     STGR_COLUNA_09.ColWidths [0]:= 45;
     STGR_COLUNA_09.ColWidths [1]:= 32;
     STGR_COLUNA_09.ColWidths [2]:= 45;
     STGR_COLUNA_09.RowCount := 2;
     STGR_COLUNA_09.Repaint;
     STGR_COLUNA_10.ColWidths [0]:= 43;
     STGR_COLUNA_10.ColWidths [1]:= 30;
     STGR_COLUNA_10.ColWidths [2]:= 43;
     STGR_COLUNA_10.RowCount := 2;
     STGR_COLUNA_10.Repaint;
     STGR_COLUNA_11.ColWidths [0]:= 45;
     STGR_COLUNA_11.ColWidths [1]:= 35;
     STGR_COLUNA_11.RowCount := 2;
     STGR_COLUNA_11.Repaint;
     STGR_COLUNA_SOMA_C08e09.ColWidths [0]:= 45;
     STGR_COLUNA_SOMA_C08e09.ColWidths [1]:= 29;
     STGR_COLUNA_SOMA_C08e09.RowCount := 2;
     STGR_COLUNA_SOMA_C08e09.Repaint;

     PGBR_GERARCOMB1.Position := 0 ;
     PGBR_GERARCOMB1.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     PA_GERAR.Enabled := False;
     PA_GERAR.Left := 4500;

     PageControl_RESULTADO.Enabled := TRUE;
     {TBS_PREPARAR.Enabled := TRUE;
     TBS_PREPARAR.Visible := TRUE;
     TBS_PREPARAR.SetFocus;
     TBS_PREPARAR.Repaint;              }
     PageControl_RESULTADO.TabIndex := 3  ;
     PageControl_RESULTADO.Repaint;

     LA_RESULTADO_TXT.Caption := 'ETAPA 5/6:';
     LA_RESULTADO_TXT.Repaint;
     // ***************************
     // **  CONFERINDO OS FIXOS  **
     // ***************************
     if (STRtoINT(ED_FIXOS_01_C8.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C4.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C6.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C7.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 8ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C5.SetFocus;
                 EXIT;
          END; // IF
     if (STRtoINT(ED_FIXOS_01_C8.Text) >0) then
          IF (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C5.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C3.Text ) ) OR
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C2.Text ) ) or
            (STRtoINT(ED_FIXOS_01_C8.Text) = STRtoINT(ED_FIXOS_01_C1.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O(s) número(s) fixo(s) da 8ª coluna não pode(m) ser igual(is) ao(s) da DEMAIS colunas.');
                 ED_FIXOS_01_C4.SetFocus;
                 EXIT;
          END; // IF


     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_3_DADOS3')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     // ************************
     // **   PRIMEIRO BLOCO   **
     // ************************
     vi_Linhas02 := 1;
     vi_Linhas15 := 1;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(CONTADOR1) AS QTDdados FROM SIMULACAO_3_DADOS2') ;
     SELF.IBQ_COMBINACOES.Open;
     vi_CONTASEL1 := SELF.IBQ_COMBINACOES.FIELDbyNAME('QTDdados').AsInteger   ;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM SIMULACAO_3_DADOS2 ORDER BY CONTADOR1') ;
     SELF.IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     STGR_COLUNA_11.DefaultDrawing := False;
     STGR_COLUNA_SOMA_C08e09.DefaultDrawing := False ;
     vi_Comb12_1 := 1;
     WHILE NOT(SELF.IBQ_COMBINACOES.Eof) DO
     BEGIN
          STGR_SOBRAS_06.Cells[0,1] := IBQ_COMBINACOES.FieldByName('CONTADOR1').AsString;
          STGR_SOBRAS_06.Cells[1,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_06').AsString,1,2);
          STGR_SOBRAS_06.Cells[2,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_06').AsString,4,2);
          STGR_SOBRAS_06.Cells[3,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_06').AsString,7,2);
          STGR_SOBRAS_06.Cells[4,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_06').AsString,10,2);
          STGR_SOBRAS_06.Cells[5,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_06').AsString,13,2);
          STGR_SOBRAS_06.Cells[6,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_SOBRAM_06').AsString,16,2);
          STGR_EXCLUIDOS_07.Cells[1,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_03_C5').AsString,1,2);
          STGR_EXCLUIDOS_07.Cells[2,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_03_C5').AsString,4,2);
          STGR_EXCLUIDOS_07.Cells[3,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_03_C5').AsString,7,2);
          STGR_EXCLUIDOS_07.Cells[4,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_02_C6').AsString,1,2);
          STGR_EXCLUIDOS_07.Cells[5,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_02_C6').AsString,4,2);
          STGR_EXCLUIDOS_07.Cells[6,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_02_C7').AsString,1,2);
          STGR_EXCLUIDOS_07.Cells[7,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_02_C7').AsString,4,2);
     SLEEP(3);
          FOR vi_Comb12_2 := 1 TO  04 DO
          BEGIN
               FOR vi_Comb12_3 := vi_Comb12_2+1 TO  05 DO
               BEGIN
                    FOR vi_Comb12_4 := vi_Comb12_3+1 TO  06 DO
                    BEGIN
                         // PARES
                         vi_CNTCELULAS := 0;
                         IF (STRtoINT(STGR_SOBRAS_06.Cells[vi_Comb12_2,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF (STRtoINT(STGR_SOBRAS_06.Cells[vi_Comb12_3,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF (STRtoINT(STGR_SOBRAS_06.Cells[vi_Comb12_4,1]) MOD 2) =0 THEN vi_CNTCELULAS := vi_CNTCELULAS +1;
                         IF  NOT (vi_CNTCELULAS =1) THEN
                              CONTINUE;
                         // SOMA
                         vi_Flag12 := 0;
                         vi_Soma12  :=  STRtoINT(STGR_SOBRAS_06.Cells[vi_Comb12_2,1])
                            + STRtoINT(STGR_SOBRAS_06.Cells[vi_Comb12_3,1])+ STRtoINT(STGR_SOBRAS_06.Cells[vi_Comb12_4,1]);
                         IF (vi_Soma12 >= STRtoINT(ED_SOMAS_C8e9_INI.Text)) AND (vi_Soma12 <= STRtoINT(ED_SOMAS_C8e9_FINAL.Text)) THEN
                         BEGIN
                                vi_Flag12 := 1 ;
                         END; // IF
                         IF (vi_Flag12 = 0) THEN
                              CONTINUE  ;
                         // FIXOS
                         vi_Flag_FX12 := 0;
                         IF  STRtoINT(ED_FIXOS_01_C8.Text) > 0 THEN
                         BEGIN
                                   IF (STRtoINT(STGR_SOBRAS_06.Cells[vi_Comb12_2,1]) = STRtoINT(ED_FIXOS_01_C8.Text))
                                   or   (STRtoINT(STGR_SOBRAS_06.Cells[vi_Comb12_3,1]) = STRtoINT(ED_FIXOS_01_C8.Text))
                                   or   (STRtoINT(STGR_SOBRAS_06.Cells[vi_Comb12_4,1]) = STRtoINT(ED_FIXOS_01_C8.Text))
                                   THEN
                                        vi_Flag_FX12 := 1;
                         END ELSE  // STRtoINT(ED_FIXOS_01_C3.Text)
                         BEGIN
                              vi_Flag_FX12 := 1;
                         END; // IF STRtoINT(ED_FIXOS_01_C3.Text)
                         IF (vi_Flag_FX12 = 0) THEN
                              CONTINUE ;
                         // COLUNA 08
                         STGR_COLUNA_08.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15);
                         STGR_COLUNA_08.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma12);
                         STGR_COLUNA_08.Cells[2,vi_Linhas02] := STGR_SOBRAS_06.Cells[0,1];
                         STGR_COLUNA_08.Cells[3,vi_Linhas02] := STGR_SOBRAS_06.Cells[vi_Comb12_2,1];
                         STGR_COLUNA_08.Cells[4,vi_Linhas02] := STGR_SOBRAS_06.Cells[vi_Comb12_3,1];
                         STGR_COLUNA_08.Cells[5,vi_Linhas02] := STGR_SOBRAS_06.Cells[vi_Comb12_4,1];
                         // -------------------------------------------
                         // --  MONTANDO AS 06 SOBRAS DA COLUNA 07  ---
                         // -------------------------------------------
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells[vi_Contar,2] :='F';
                                STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
                            END; // FOR vi_Contar
                            FOR vi_Contar :=1 TO 06 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_SOBRAS_06.Cells[vi_Contar,1])) ,1]:='V';
                            END; // FOR vi_Contar1
                            FOR vi_Contar :=3 TO 5 DO
                            BEGIN
                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_08.Cells[vi_Contar,vi_Linhas02])) ,2]:='V';
                            END; // FOR vi_Contar1
                            vi_CNTCELULAS := 3;
                            FOR vi_Contar :=1 TO 25 DO
                            BEGIN
                                // SOBRAS
                                IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='F') THEN
                                BEGIN
                                    STGR_COLUNA_09.Cells[vi_CNTCELULAS, vi_Linhas02] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                    vi_CNTCELULAS := vi_CNTCELULAS + 1;
                                END; // IF (STRGR_TODOS_NUMEROS
                            END; // FOR vi_Contar
                              // ----> CONFERE SOMA
                              vi_Flag05 := 0;
                              vi_Soma05  :=  STRtoINT(STGR_COLUNA_09.Cells[3,vi_Linhas02])
                                 + STRtoINT(STGR_COLUNA_09.Cells[4,vi_Linhas02])+ STRtoINT(STGR_COLUNA_09.Cells[5,vi_Linhas02]);
                              IF (vi_Soma05 >= STRtoINT(ED_SOMAS_C8e9_INI.Text)) AND (vi_Soma05 <= STRtoINT(ED_SOMAS_C8e9_FINAL.Text)) THEN
                              BEGIN
                                     vi_Flag05 := 1 ;
                              END; // IF
                              IF (vi_Flag05 = 0) THEN
                                   CONTINUE  ;
                              // ----> CONFERE A SOMA TOTAL
                              vi_Flag05 := 0;
                              vi_Soma03  :=  vi_Soma12+vi_Soma05;
                              IF (vi_Soma03 = 78) THEN
                              BEGIN
                                     vi_Flag05 := 1 ;
                              END; // IF
                              IF (vi_Flag05 = 0) THEN
                                   CONTINUE;
                              STGR_COLUNA_09.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15);
                              STGR_COLUNA_09.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma05);
                              STGR_COLUNA_09.Cells[2,vi_Linhas02] := STGR_SOBRAS_06.Cells[0,1];
                              STGR_COLUNA_SOMA_C08e09.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15);
                              STGR_COLUNA_SOMA_C08e09.Cells[1,vi_Linhas02] := INTtoSTR(vi_Soma03);
                              STGR_COLUNA_11.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15);
                              STGR_COLUNA_11.Cells[1,vi_Linhas02] := STGR_SOBRAS_06.Cells[0,1];

                              STGR_COLUNA_10.Cells[0,vi_Linhas02] := INTtoSTR(vi_Linhas15);
                              STGR_COLUNA_10.Cells[1,vi_Linhas02] := STGR_SOBRAS_06.Cells[0,1];
                              STGR_COLUNA_10.Cells[2,vi_Linhas02] := STGR_EXCLUIDOS_07.Cells[1,1];
                              STGR_COLUNA_10.Cells[3,vi_Linhas02] := STGR_EXCLUIDOS_07.Cells[2,1];
                              STGR_COLUNA_10.Cells[4,vi_Linhas02] := STGR_EXCLUIDOS_07.Cells[3,1];
                              STGR_COLUNA_10.Cells[5,vi_Linhas02] := STGR_EXCLUIDOS_07.Cells[4,1];
                              STGR_COLUNA_10.Cells[6,vi_Linhas02] := STGR_EXCLUIDOS_07.Cells[5,1];
                              STGR_COLUNA_10.Cells[7,vi_Linhas02] := STGR_EXCLUIDOS_07.Cells[6,1];
                              STGR_COLUNA_10.Cells[8,vi_Linhas02] := STGR_EXCLUIDOS_07.Cells[7,1];
                              STGR_COLUNA_10.Cells[9,vi_Linhas02] := STGR_COLUNA_09.Cells[3,vi_Linhas02];
                              STGR_COLUNA_10.Cells[10,vi_Linhas02] := STGR_COLUNA_09.Cells[4,vi_Linhas02];
                              STGR_COLUNA_10.Cells[11,vi_Linhas02] := STGR_COLUNA_09.Cells[5,vi_Linhas02];
                              // CAPTUAR SOBRAS DA ORDENAÇÃO
                                      FOR vi_Contar :=1 TO 25 DO
                                      BEGIN
                                          STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
                                      END; // FOR vi_Contar
                                      FOR vi_Contar :=2 TO 11 DO
                                      BEGIN
                                          STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COLUNA_10.Cells[vi_Contar,vi_Linhas02])) ,1]:='V';
                                      END; // FOR vi_Contar1
                                      vi_CNTCELULAS := 2;
                                      vi_CNTCELULAS_2 := 2;
                                      FOR vi_Contar :=1 TO 25 DO
                                      BEGIN
                                          // ORDENACAO
                                          IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V')  THEN
                                          BEGIN
                                              STGR_COLUNA_10.Cells[vi_CNTCELULAS_2, vi_Linhas02] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                              vi_CNTCELULAS_2 := vi_CNTCELULAS_2 + 1;
                                          END; // IF (STRGR_TODOS_NUMEROS
                                          // SOBRAS
                                          IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='F')  THEN
                                          BEGIN
                                              STGR_COLUNA_11.Cells[vi_CNTCELULAS, vi_Linhas02] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) ;
                                              vi_CNTCELULAS := vi_CNTCELULAS + 1;
                                          END; // IF (STRGR_TODOS_NUMEROS
                                      END; // FOR vi_Contar

                         // ----------------------------------------------
                              vi_Linhas15 := vi_Linhas15 +1;
                              vi_Linhas02 := vi_Linhas02 +1;
                                  if ((vi_Linhas15 mod 9600)=0) THEN
                                  begin
                                       STGR_COLUNA_11.DefaultDrawing := TRUE;
                                       STGR_COLUNA_SOMA_C08e09.DefaultDrawing := True;
                                       STGR_COLUNA_11.Repaint;
                                       STGR_COLUNA_SOMA_C08e09.Repaint;
                                       PR_GRAVAR_DADOS_v2 ();
                                       //    vi_Linhas05 := 1;  // aqui transforme esta linha em comentário
                                       vi_Linhas02 := 1;
                                       sleep(400);
                                         STGR_COLUNA_SOMA_C08e09.RowCount := vi_Linhas02;
                                         STGR_COLUNA_08.RowCount := vi_Linhas02;
                                         STGR_COLUNA_09.RowCount := vi_Linhas02;
                                         STGR_COLUNA_10.RowCount := vi_Linhas02;
                                         STGR_COLUNA_11.RowCount := vi_Linhas02;
                                         STGR_COLUNA_11.DefaultDrawing := False;
                                         STGR_COLUNA_SOMA_C08e09.DefaultDrawing := False ;
                                  end; //
                    END; // FOR vi_Comb12_4 :=
               END; // FOR vi_Comb12_3 :=
                              STGR_COLUNA_09.RowCount := vi_Linhas02;
                              STGR_COLUNA_10.RowCount := vi_Linhas02;
                              STGR_COLUNA_11.RowCount := vi_Linhas02;
                              STGR_COLUNA_SOMA_C08e09.RowCount := vi_Linhas02;
               STGR_COLUNA_08.Repaint;
               STGR_COLUNA_09.Repaint;
               STGR_COLUNA_10.Repaint;
          END; // FOR vi_Comb12_2 :=
     SELF.IBQ_COMBINACOES.Next;
     vi_Comb12_1 := vi_Comb12_1+1;
               IF ((vi_Comb12_1 MOD 10) = 0) THEN
               BEGIN
                    STGR_COLUNA_08.RowCount := vi_Linhas02;
                    LA_GERAR_COMB.Caption := '# ' + INTtoSTR(vi_Comb12_1)+ ' DE '+  INTtoSTR(vi_CONTASEL1) + ' - ' + INTtoSTR(TRUNC(vi_Comb12_1/(vi_CONTASEL1)*100))+ ' %  ' + '  -  Quantidade: '+INTtoSTR(vi_Linhas15-1) ;
                    LA_GERAR_COMB.Repaint;
                    PGBR_GERARCOMB1.Position := TRUNC(vi_Comb12_1/(vi_CONTASEL1)*100);
                    PGBR_GERARCOMB1.Repaint;
                    STGR_COLUNA_08.RowCount := vi_Linhas02;
                    STGR_COLUNA_09.RowCount := vi_Linhas02;
                    STGR_COLUNA_10.RowCount := vi_Linhas02;
                    STGR_COLUNA_11.RowCount := vi_Linhas02;
                    STGR_COLUNA_SOMA_C08e09.RowCount := vi_Linhas02;
                    STGR_COLUNA_08.Repaint;
                    STGR_COLUNA_09.Repaint;
                    STGR_COLUNA_10.Repaint;
                    STGR_COLUNA_11.Repaint;
                    STGR_COLUNA_SOMA_C08e09.Repaint;
               end;
               IF ((vi_Comb12_1 MOD 250) = 0) THEN
               BEGIN
                   Self.WindowState := wsMinimized;
                   Self.WindowState :=  wsNormal;
                   SELF.Repaint;
                  {  try
                         STGR_COLUNA_05.FixedRows := 1;
                         STGR_COLUNA_06.FixedRows := 1;
                         //STGR_COLUNA_05.FixedRows := 1;
                    except
                         //
                    end;  }                   
               END; // IF 
     end; // while
     STGR_COLUNA_11.DefaultDrawing := TRUE;
     STGR_COLUNA_SOMA_C08e09.DefaultDrawing := True;
     STGR_COLUNA_08.RowCount := vi_Linhas02;
     STGR_COLUNA_09.RowCount := vi_Linhas02;
     STGR_COLUNA_10.RowCount := vi_Linhas02;
     STGR_COLUNA_11.RowCount := vi_Linhas02;
     STGR_COLUNA_SOMA_C08e09.RowCount := vi_Linhas02;
     STGR_COLUNA_08.Repaint;
     STGR_COLUNA_09.Repaint;
     STGR_COLUNA_10.Repaint;
     STGR_COLUNA_11.Repaint;
     STGR_COLUNA_SOMA_C08e09.Repaint;
               if (vi_Linhas15 >1 ) THEN
                  PR_GRAVAR_DADOS_v2 ();
     PGBR_GERARCOMB1.Position := 100;
     PGBR_GERARCOMB1.Repaint;
          SELF.IBQ_COMBINACOES2.SQL.Clear;
          SELF.IBQ_COMBINACOES2.SQL.Add('COMMIT')  ;
          SELF.IBQ_COMBINACOES2.ExecSQL;
      IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     PGBR_GERARCOMB0.Position := 85;
     PGBR_GERARCOMB0.Repaint;
     SLEEP(500);
     LA_RESULTADO_TXT.Caption := 'Etapa 5/6 Fim.';
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
end;







procedure T_FRM_SIMULACAO3.BBT_ETAPA_06Click(Sender: TObject);

VAR
     vi_Contar, vi_CONTASEL1, vi_Contar_Ocorrencias1, vi_Contar_Ocorrencias2, vi_Contar_Ocorrencias3, vi_Contar_Ocorrencias4: integer;
     vi_Flag_OCORRENCIAS, vi_CombINACOES1 : INTEGER ;
      vi_Comb12_1: INTEGER;
       vi_Linhas02: INTEGER;
       vc_Query, vc_SobrasL1, vc_SobrasL2, vc_SobrasL3, vc_SobrasL4: STRING;
begin
     BBT_ETAPA_01.Enabled := False;
     // aki BBT_GERAR_MENU.Enabled := False;
     BBT_ETAPA_04.Enabled := TRUE;
      BBT_GERAR_MENU.Enabled := TRUE;
     BBT_CANCELAR_SAIR.Visible := False;
     SCBX_INICIAR.HorzScrollBar.Position := 2;
     SCBX_INICIAR.Repaint;
     PR_LIMPAR_GRIDetapa4 (); // exceto STGR_COLUNA_01e02_SOBRAS
     FOR vi_Contar :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[vi_Contar,0] :=INTtoSTR(vi_Contar);
          STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
     END; // FOR vi_Contar

     PGBR_GERARCOMB1.Position := 0 ;
     PGBR_GERARCOMB1.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     PA_GERAR.Enabled := False;
     PA_GERAR.Left := 4500;

     PageControl_RESULTADO.Enabled := TRUE;
     {TBS_PREPARAR.Enabled := TRUE;
     TBS_PREPARAR.Visible := TRUE;
     TBS_PREPARAR.SetFocus;
     TBS_PREPARAR.Repaint;              }
     PageControl_RESULTADO.TabIndex := 4  ;
     PageControl_RESULTADO.Repaint;

     LA_RESULTADO_TXT.Caption := 'ETAPA 6/6:';
     LA_RESULTADO_TXT.Repaint;

     // ***************************
     // **  CONFERINDO AS BASES  **
     // ***************************
     FOR vi_Contar := 1 TO 8 DO
     BEGIN
          IF  STRtoINT(STGR_BASE_A.Cells [vi_Contar,0]) = 0 THEN
          BEGIN
               SHOWMESSAGE('Erro de preenchimento - favor verificar o preenchimento de A, B, C ou D.');
               EXIT;
          END; // IF
     END; // FOR
     FOR vi_Contar := 1 TO 7 DO
     BEGIN
          IF  STRtoINT(STGR_BASE_B.Cells [vi_Contar,0]) = 0 THEN
          BEGIN
               SHOWMESSAGE('Erro de preenchimento - favor verificar o preenchimento de A, B, C ou D.');
               EXIT;
          END; // IF
     END;

     FOR vi_Contar := 1 TO 5 DO
     BEGIN
          IF  STRtoINT(STGR_BASE_C.Cells [vi_Contar,0]) = 0 THEN
          BEGIN
               SHOWMESSAGE('Erro de preenchimento - favor verificar o preenchimento de A, B, C ou D.');
               EXIT;
          END; // IF
          IF  STRtoINT(STGR_BASE_D.Cells [vi_Contar,0]) = 0 THEN
          BEGIN
               SHOWMESSAGE('Erro de preenchimento - favor verificar o preenchimento de A, B, C ou D.');
               EXIT;
          END; // IF          
     END;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_3_DADOS4')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     // ************************
     // **   PRIMEIRO BLOCO   **
     // ************************
     vi_Linhas02 := 0;  // AQUI SER DIFERENTE, POIS SERA GRAVADO DIRETO NO sgbd
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(DISTINCT(DADOS_15_C11)) AS QTDdados FROM SIMULACAO_3_DADOS3') ;
     SELF.IBQ_COMBINACOES.Open;
     vi_CONTASEL1 := SELF.IBQ_COMBINACOES.FIELDbyNAME('QTDdados').AsInteger   ;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT DISTINCT(DADOS_15_C11), DADOS_10_C10 FROM SIMULACAO_3_DADOS3 ORDER BY DADOS_15_C11') ;
     SELF.IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     vi_Comb12_1 := 1;
     FOR vi_Contar :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
          STRGR_TODOS_NUMEROS.Cells[vi_Contar,2] :='F';
          STRGR_TODOS_NUMEROS.Cells[vi_Contar,3] :='F';
          STRGR_TODOS_NUMEROS.Cells[vi_Contar,4] :='F';
          STRGR_TODOS_NUMEROS.Cells[vi_Contar,5] :='F';
     END; // FOR vi_Contar
     FOR vi_Contar :=1 TO 8 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_BASE_A.Cells[vi_Contar,0])) ,2]:='V';
     END; // FOR vi_Contar1
     FOR vi_Contar :=1 TO 7 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_BASE_B.Cells[vi_Contar,0])) ,3]:='V';
     END; // FOR vi_Contar1
     FOR vi_Contar :=1 TO 5 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_BASE_C.Cells[vi_Contar,0])) ,4]:='V';
          STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_BASE_D.Cells[vi_Contar,0])) ,5]:='V';
     END; // FOR vi_Contar1
     STRGR_TODOS_NUMEROS.Repaint;
     WHILE NOT(SELF.IBQ_COMBINACOES.Eof) DO
     BEGIN
         // STGR_15_NUMBEROS.Cells[0,1] := IBQ_COMBINACOES.FieldByName('CONTADOR2').AsString;
          STGR_15_NUMBEROS.Cells[1,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,1,2);
          STGR_15_NUMBEROS.Cells[2,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,4,2);
          STGR_15_NUMBEROS.Cells[3,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,7,2);
          STGR_15_NUMBEROS.Cells[4,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,10,2);
          STGR_15_NUMBEROS.Cells[5,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,13,2);
          STGR_15_NUMBEROS.Cells[6,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,16,2);
          STGR_15_NUMBEROS.Cells[7,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,19,2);
          STGR_15_NUMBEROS.Cells[8,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,22,2);
          STGR_15_NUMBEROS.Cells[9,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,25,2);
          STGR_15_NUMBEROS.Cells[10,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,28,2);
          STGR_15_NUMBEROS.Cells[11,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,31,2);
          STGR_15_NUMBEROS.Cells[12,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,34,2);
          STGR_15_NUMBEROS.Cells[13,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,37,2);
          STGR_15_NUMBEROS.Cells[14,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,40,2);
          STGR_15_NUMBEROS.Cells[15,1] := COPY(SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString,43,2);
     SLEEP(10);
          // --------------------------------------------
          //   CONTAR AS OCORRENCIAS POR LINHA E SE DER
          //   5 4 4 3 FILTRAR, CASO CONTRARIO DESCARTAR
          // --------------------------------------------
          vi_Contar_Ocorrencias1 := 0 ;
          vi_Contar_Ocorrencias2 := 0 ;
          vi_Contar_Ocorrencias3 := 0 ;
          vi_Contar_Ocorrencias4 := 0 ;
          FOR vi_Contar :=1 TO 25 DO
          BEGIN
               STRGR_TODOS_NUMEROS.Cells[vi_Contar,1] :='F';
          END; // FOR vi_Contar
          FOR vi_Contar :=1 TO 15 DO
          BEGIN
               STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_15_NUMBEROS.Cells[vi_Contar,1])) ,1]:='V';
          END; // FOR vi_Contar1
          vc_SobrasL1 := '';
          vc_SobrasL2 := '';
          vc_SobrasL3 := '';
          vc_SobrasL4 := '';
          FOR vi_Contar :=1 TO 25 DO
          BEGIN
               // CONTADOR DE OCORRÊNCIAS
               IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='V') THEN
                    vi_Contar_Ocorrencias1 := vi_Contar_Ocorrencias1 + 1;
               IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,3]='V') THEN
                    vi_Contar_Ocorrencias2 := vi_Contar_Ocorrencias2 + 1;
               IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,4]='V') THEN
                    vi_Contar_Ocorrencias3 := vi_Contar_Ocorrencias3 + 1;
               IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='V') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,5]='V') THEN
                    vi_Contar_Ocorrencias4 := vi_Contar_Ocorrencias4 + 1;

               IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='F') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,2]='V') THEN
                    vc_SobrasL1 := vc_SobrasL1 + RIGHTSTR ('0'+TRIM(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) +' ';
               IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='F') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,3]='V') THEN
                    vc_SobrasL2 := vc_SobrasL2 + RIGHTSTR ('0'+TRIM(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) +' ';
               IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='F') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,4]='V') THEN
                    vc_SobrasL3 := vc_SobrasL3 + RIGHTSTR ('0'+TRIM(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) +' ';
               IF (STRGR_TODOS_NUMEROS.Cells[vi_Contar,1]='F') AND (STRGR_TODOS_NUMEROS.Cells[vi_Contar,5]='V') THEN
                    vc_SobrasL4 := vc_SobrasL4 + RIGHTSTR ('0'+TRIM(STRGR_TODOS_NUMEROS.Cells[vi_Contar,0]),2) +' ';
          END; // FOR vi_Contar
          vi_Flag_OCORRENCIAS := 0;
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(vi_Comb12_1)+ ' DE '+  INTtoSTR(vi_CONTASEL1) + ' - ' + INTtoSTR(TRUNC(vi_Comb12_1/(vi_CONTASEL1)*100))+ ' %  ' + '  -  Quantidade: '+INTtoSTR(vi_Linhas02) ;          
               LA_GERAR_COMB.Repaint;
               PGBR_GERARCOMB1.Position := TRUNC(vi_Comb12_1/(vi_CONTASEL1)*100);
               PGBR_GERARCOMB1.Repaint;
          IF (vi_Contar_Ocorrencias1 = 5) AND (vi_Contar_Ocorrencias2 = 4) AND(vi_Contar_Ocorrencias3 = 3) AND (vi_Contar_Ocorrencias4 = 3) THEN
               vi_Flag_OCORRENCIAS :=1;
          IF (vi_Flag_OCORRENCIAS = 0) THEN
             vi_Comb12_1 := vi_Comb12_1 +1; // SEMPRE QUE HOUVER UM NEXT TEM DE TER UM vi_Comb12_1
          IF (vi_Flag_OCORRENCIAS = 0) THEN
             IBQ_COMBINACOES.Next;
          IF (vi_Flag_OCORRENCIAS = 0) THEN
             CONTINUE;
          vi_Linhas02 := vi_Linhas02 +1;
          vc_Query  := 'INSERT INTO SIMULACAO_3_DADOS4 (DADOS, DADOS_NS, N01, N02, N03, N04, N05, N06, N07, N08, N09, N10, N11, N12, N13, N14, N15, NS_A1, NS_A2, NS_A3, NS_B1, NS_B2, NS_B3, NS_C1, NS_C2, NS_D1, NS_D2) '
               +' VALUES(' +#39+ SELF.IBQ_COMBINACOES.FieldByName('DADOS_15_C11').AsString
               + #39 +','+#39+SELF.IBQ_COMBINACOES.FieldByName('DADOS_10_C10').AsString
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[1,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[2,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[3,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[4,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[5,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[6,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[7,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[8,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[9,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[10,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[11,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[12,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[13,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[14,1]
               + #39 +','+#39+ STGR_15_NUMBEROS.Cells[15,1]
               + #39 +','+#39+ COPY(vc_SobrasL1,1,2)
               + #39 +','+#39+ COPY(vc_SobrasL1,4,2)
               + #39 +','+#39+ COPY(vc_SobrasL1,7,2)
               + #39 +','+#39+ COPY(vc_SobrasL2,1,2)
               + #39 +','+#39+ COPY(vc_SobrasL2,4,2)
               + #39 +','+#39+ COPY(vc_SobrasL2,7,2)
               + #39 +','+#39+ COPY(vc_SobrasL3,1,2)
               + #39 +','+#39+ COPY(vc_SobrasL3,4,2)
               + #39 +','+#39+ COPY(vc_SobrasL4,1,2)
               + #39 +','+#39+ COPY(vc_SobrasL4,4,2)
               + #39 +');';
          SELF.IBQ_COMBINACOES2.SQL.Clear;
          SELF.IBQ_COMBINACOES2.SQL.Add(vc_Query)  ;
          SELF.IBQ_COMBINACOES2.ExecSQL;
          IBQ_COMBINACOES.Next;
          vi_Comb12_1 := vi_Comb12_1 +1; // SEMPRE QUE HOUVER UM NEXT TEM DE TER UM vi_Comb12_1
          IF  ((vi_Linhas02 MOD 600)=0) THEN
          BEGIN
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(vi_Comb12_1)+ ' DE '+  INTtoSTR(vi_CONTASEL1) + ' - ' + INTtoSTR(TRUNC(vi_Comb12_1/(vi_CONTASEL1)*100))+ ' %  ' + '  -  Quantidade: '+INTtoSTR(vi_Linhas02) ;
               LA_GERAR_COMB.Repaint;
               PGBR_GERARCOMB1.Position := TRUNC(vi_Comb12_1/(vi_CONTASEL1)*100);
               PGBR_GERARCOMB1.Repaint;
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END;
     END; // WHILE
     SELF.IBQ_COMBINACOES2.SQL.Clear;
     SELF.IBQ_COMBINACOES2.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES2.ExecSQL;
     LA_GERAR_COMB.Caption := '# ' + INTtoSTR(vi_Comb12_1)+ ' DE '+  INTtoSTR(vi_CONTASEL1) + ' - ' + INTtoSTR(TRUNC(vi_Comb12_1/(vi_CONTASEL1)*100))+ ' %  ' + '  -  Quantidade: '+INTtoSTR(vi_Linhas02) ;
     LA_GERAR_COMB.Repaint;
     PGBR_GERARCOMB1.Position := 100;
     PGBR_GERARCOMB1.Repaint;
     SELF.IBQ_COMBINACOES2.SQL.Clear;
     SELF.IBQ_COMBINACOES2.SQL.Add('SELECT COUNT(*) AS TOTAL_DADOS FROM SIMULACAO_3_DADOS3') ;
     SELF.IBQ_COMBINACOES2.Open;
     vi_Contar_Ocorrencias1 := SELF.IBQ_COMBINACOES2.FIELDbyNAME('TOTAL_DADOS').AsInteger  ;
     SELF.IBQ_COMBINACOES2.SQL.Clear;
     SELF.IBQ_COMBINACOES2.SQL.Add('SELECT COUNT('+{DISTINCT}'(DADOS)) AS TOTAL_DADOS FROM SIMULACAO_3_DADOS4') ;
     SELF.IBQ_COMBINACOES2.Open;
     vi_Contar_Ocorrencias2 := SELF.IBQ_COMBINACOES2.FIELDbyNAME('TOTAL_DADOS').AsInteger     ;
     LA_RESULTADO_TXT.Caption := 'Etapa 6/6 Fim.';
     SLEEP(500);
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     LA_rTOTAL_COMB.Caption  := INTtoSTR(25*22*19*16*13*9*8*6)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR((vi_Contar_Ocorrencias1)) + '    ';
     LA_rTOTAL_100REPET.Caption := INTtoSTR((vi_Contar_Ocorrencias2)) + '    ';
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE SIMULACAO_3_DEFINICAO SET QTD_DADOS = 25 ;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE SIMULACAO_3_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES2.SQL.Clear;
     SELF.IBQ_COMBINACOES2.SQL.Add('SELECT DADOS, DADOS_NS FROM SIMULACAO_3_DADOS4 ORDER BY DADOS') ;
     SELF.IBQ_COMBINACOES2.Open;
     IBQ_COMBINACOES2.First;            
     PA_REMOVEUREPET.Left :=  1000;

end;







procedure T_FRM_SIMULACAO3.BBT_RECOMECARClick(Sender: TObject);
VAR
    vi_Contar : INTEGER;
begin
    BBT_701.Enabled := TRUE;
    BBT_702.Enabled := TRUE;
    BBT_703.Enabled := TRUE;
    BBT_704.Enabled := TRUE;
    BBT_705.Enabled := TRUE;
    BBT_706.Enabled := TRUE;
    BBT_707.Enabled := TRUE;
    BBT_708.Enabled := TRUE;
    BBT_709.Enabled := TRUE;
    BBT_710.Enabled := TRUE;
    BBT_711.Enabled := TRUE;
    BBT_712.Enabled := TRUE;
    BBT_713.Enabled := TRUE;
    BBT_714.Enabled := TRUE;
    BBT_715.Enabled := TRUE;
    BBT_716.Enabled := TRUE;
    BBT_717.Enabled := TRUE;
    BBT_718.Enabled := TRUE;
    BBT_719.Enabled := TRUE;
    BBT_720.Enabled := TRUE;
    BBT_721.Enabled := TRUE;
    BBT_722.Enabled := TRUE;
    BBT_723.Enabled := TRUE;
    BBT_724.Enabled := TRUE;
    BBT_725.Enabled := TRUE;
    FOR vi_Contar := 1 TO 8 DO
    BEGIN
        STGR_BASE_A.Cells [vi_Contar,0] := '0';
    END;
    FOR vi_Contar := 1 TO 7 DO
    BEGIN
        STGR_BASE_B.Cells [vi_Contar,0] := '0';
    END;

    FOR vi_Contar := 1 TO 5 DO
    BEGIN
        STGR_BASE_C.Cells [vi_Contar,0] := '0';
        STGR_BASE_D.Cells [vi_Contar,0] := '0';
    END;
end;



procedure T_FRM_SIMULACAO3.BBT_CLICK_TUDOClick(Sender: TObject);
begin
     BBT_703.Click;
     BBT_705.Click;
     BBT_707.Click;
     BBT_709.Click;
     BBT_711.Click;
     BBT_721.Click;
     BBT_723.Click;
     BBT_725.Click;

     BBT_702.Click;
     BBT_706.Click;
     BBT_708.Click;
     BBT_714.Click;
     BBT_716.Click;
     BBT_720.Click;
     BBT_724.Click;

     BBT_701.Click;
     BBT_713.Click;
     BBT_715.Click;
     BBT_717.Click;
     BBT_719.Click;

     BBT_704.Click;
     BBT_710.Click;
     BBT_712.Click;
     BBT_718.Click;
     BBT_722.Click;     
end;




procedure T_FRM_SIMULACAO3.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(1,'V');
    BBT_701.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(2,'F');
    BBT_702.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(3,'V');
    BBT_703.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(4,'F');
    BBT_704.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(5,'V');
    BBT_705.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(6,'F');
    BBT_706.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(7,'V');
    BBT_707.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(8,'F');
    BBT_708.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(10,'F');
    BBT_710.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(9,'V');
    BBT_709.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(11,'V');
    BBT_711.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(12,'F');
    BBT_712.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(13,'V');
    BBT_713.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(14,'F');
    BBT_714.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(15,'V');
    BBT_715.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(16,'F');
    BBT_716.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(17,'V');
    BBT_717.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(18,'F');
    BBT_718.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(19,'V');
    BBT_719.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(20,'F');
    BBT_720.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(21,'V');
    BBT_721.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(22,'F');
    BBT_722.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(23,'V');
    BBT_723.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(24,'F');
    BBT_724.Enabled := False;
end;

procedure T_FRM_SIMULACAO3.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(25,'V');
    BBT_725.Enabled := False;
end;



PROCEDURE T_FRM_SIMULACAO3.PR_BOTOES_MODELO_ABCD1 (VI_NUMERO: INTEGER; VS_IMPAR: STRING);
VAR
    vi_Contar, vi_Contar2, vi_Contar3, vi_Contar4 : INTEGER;
BEGIN
    IF (VS_IMPAR='V') THEN
    BEGIN
       FOR vi_Contar := 1 TO 8 DO
        BEGIN
            IF (STRtoINT (STGR_BASE_A.Cells [vi_Contar,0]) = 0) THEN
            BEGIN
                STGR_BASE_A.Cells [vi_Contar,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                EXIT;
            END ELSE
            IF (vi_Contar = 8) THEN
            BEGIN
                FOR vi_Contar3 :=1 TO 5 DO
                BEGIN
                    IF (STRtoINT (STGR_BASE_C.Cells [vi_Contar3,0]) = 0) THEN
                    BEGIN
                        STGR_BASE_C.Cells [vi_Contar3,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                        EXIT  ;
                    END; // IF (vi_Contar3
                END;// FOR vi_Contar3
            END;// IF (STRtoINT
        END; // vi_Contar
    END ELSE
    BEGIN
        FOR vi_Contar2 :=1 TO 7 DO
        BEGIN
            IF (STRtoINT (STGR_BASE_B.Cells [vi_Contar2,0]) = 0) THEN
            BEGIN
                STGR_BASE_B.Cells [vi_Contar2,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                EXIT;
            END ELSE
            IF (vi_Contar2 = 7) THEN
            BEGIN
                    FOR vi_Contar4 :=1 TO 5 DO
                    BEGIN
                        IF (STRtoINT (STGR_BASE_D.Cells [vi_Contar4,0]) = 0) THEN
                        BEGIN
                            STGR_BASE_D.Cells [vi_Contar4,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                            EXIT ;
                        END; // IF vi_Contar4
                    END; // FOR vi_Contar4
            END; // IF (STRtoINT
        END; // FOR vi_Contar 2
    end; // IF (VS_IMPAR='V') THEN
END;









end.





