unit Simulacao_16_triplas_duplas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, STRUTILS,
  Dialogs, DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Grids;

type
  T_F_SIM_01_FILTRO_16td = class(TForm)
    SCBX_GABARITO: TScrollBox;
    PA_PREENCHIMENTO: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    STGR_BASE_A: TStringGrid;
    STGR_BASE_B: TStringGrid;
    STGR_BASE_C: TStringGrid;
    STGR_BASE_D: TStringGrid;
    PA_EXCLUIDOS: TPanel;
    Label31: TLabel;
    ED_EXC_01: TEdit;
    ED_EXC_02: TEdit;
    PA_GABARITO: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    RB_RESULTADOS: TRadioButton;
    RB_GABARITO: TRadioButton;
    RB_RES_GABARITOS: TRadioButton;
    PA_FIXOS: TPanel;
    Label39: TLabel;
    ED_FIXOS_01: TEdit;
    ED_FIXOS_02: TEdit;
    ED_FIXOS_03: TEdit;
    ED_FIXOS_04: TEdit;
    ED_FIXOS_05: TEdit;
    Panel1: TPanel;
    Label53: TLabel;
    BBT_CLOSE: TImage;
    PA_RESULTADO: TPanel;
    STGR_COMB15: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR: TBitBtn;
    BBT_ENCERRAR: TBitBtn;
    BBT_GERAR_menu: TBitBtn;
    Button1: TButton;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_TOTAL_100REPET: TLabel;
    Label87: TLabel;
    LA_QTD_COMB: TLabel;
    LA_GERAR_COMB: TLabel;
    LA_PERC_100REPET: TLabel;
    PGBR_REMREPET: TProgressBar;
    PGBR_GERARCOMB: TProgressBar;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
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
    BBT_PA_REMOVEUREPET: TBitBtn;
    BBT_BLOCO_NOTAS: TBitBtn;
    MEM_COMBINACOES_TODAS: TMemo;
    Label1: TLabel;
    LA_fQTD_FILTRADOS: TLabel;
    LA_gFIM_FILTRAR: TLabel;
    Label5: TLabel;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    BBT_SAIR: TButton;
    BBT_CARREGAR: TButton;
    BBT_CANCELAR: TBitBtn;
    LA_DUPLAS_COMB_100REP: TLabel;
    ED_EXC_03: TEdit;
    STGR_DUPLAS_Linhas: TStringGrid;
    Label3: TLabel;
    Label7: TLabel;
    STGR_DUPLAS_Quad1: TStringGrid;
    STGR_DUPLAS_Quad2: TStringGrid;
    Label11: TLabel;
    Label12: TLabel;
    STGR_DUPLAS_Comb: TStringGrid;
    STGR_TRIPLAS_01_Vertical: TStringGrid;
    Label13: TLabel;
    STGR_TRIPLAS_01_Horizontal: TStringGrid;
    Label14: TLabel;
    Label15: TLabel;
    STGR_TRIPLAS_01_L: TStringGrid;
    STGR_TRIPLAS_01_Quadrado: TStringGrid;
    Label16: TLabel;
    Label17: TLabel;
    STGR_TRIPLAS_01_Combinacoes: TStringGrid;
    Label18: TLabel;
    STGR_TRIPLAS_02_Vertical: TStringGrid;
    Label19: TLabel;
    STGR_TRIPLAS_02_Horizontal: TStringGrid;
    Label20: TLabel;
    STGR_TRIPLAS_02_L: TStringGrid;
    Label22: TLabel;
    STGR_TRIPLAS_03_Vertical: TStringGrid;
    Label23: TLabel;
    STGR_TRIPLAS_03_Horizontal: TStringGrid;
    Label24: TLabel;
    STGR_TRIPLAS_03_L: TStringGrid;
    Label26: TLabel;
    STGR_TRIPLAS_04_Vertical: TStringGrid;
    Label27: TLabel;
    STGR_TRIPLAS_04_Horizontal: TStringGrid;
    Label32: TLabel;
    STGR_TRIPLAS_04_L: TStringGrid;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    LA_TRIPLAS_01_COMB_100REP: TLabel;
    Label21: TLabel;
    STGR_TRIPLAS_05_Vertical: TStringGrid;
    STGR_TRIPLAS_05_Horizontal: TStringGrid;
    Label25: TLabel;
    Label33: TLabel;
    STGR_TRIPLAS_05_L: TStringGrid;
    Label38: TLabel;
    Label40: TLabel;
    STGR_TRIPLAS_06_L: TStringGrid;
    STGR_TRIPLAS_06_Horizontal: TStringGrid;
    STGR_TRIPLAS_06_Vertical: TStringGrid;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Bevel1: TBevel;
    Label48: TLabel;
    STGR_TRIPLAS_07_L: TStringGrid;
    STGR_TRIPLAS_07_Horizontal: TStringGrid;
    STGR_TRIPLAS_07_Vertical: TStringGrid;
    Label51: TLabel;
    Label52: TLabel;
    Label54: TLabel;
    Label56: TLabel;
    STGR_TRIPLAS_05_Quadrado: TStringGrid;
    Label57: TLabel;
    STGR_TRIPLAS_05_Combinacoes: TStringGrid;
    LA_TRIPLAS_05_COMB_100REP: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    STGR_TRIPLAS_08_L: TStringGrid;
    STGR_TRIPLAS_08_Horizontal: TStringGrid;
    STGR_TRIPLAS_08_Vertical: TStringGrid;
    Label63: TLabel;
    Bevel2: TBevel;
    STGR_TRIPLAS_09_Vertical: TStringGrid;
    STGR_TRIPLAS_09_Horizontal: TStringGrid;
    STGR_TRIPLAS_09_L: TStringGrid;
    STGR_TRIPLAS_10_Vertical: TStringGrid;
    STGR_TRIPLAS_10_Horizontal: TStringGrid;
    STGR_TRIPLAS_10_L: TStringGrid;
    STGR_TRIPLAS_11_Horizontal: TStringGrid;
    STGR_TRIPLAS_11_L: TStringGrid;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    STGR_TRIPLAS_11_Vertical: TStringGrid;
    Label76: TLabel;
    STGR_TRIPLAS_09_Combinacoes: TStringGrid;
    Label77: TLabel;
    STGR_TRIPLAS_09_Quadrado: TStringGrid;
    Label78: TLabel;
    STGR_TRIPLAS_12_L: TStringGrid;
    Label79: TLabel;
    STGR_TRIPLAS_12_Horizontal: TStringGrid;
    STGR_TRIPLAS_12_Vertical: TStringGrid;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    STGR_TRIPLAS_11_Quadrado: TStringGrid;
    Label83: TLabel;
    STGR_TRIPLAS_11_Combinacoes: TStringGrid;
    Bevel3: TBevel;
    LA_TRIPLAS_09_COMB_100REP: TLabel;
    LA_TRIPLAS_11_COMB_100REP: TLabel;
    Label9: TLabel;
    STGR_TRIPLAS_base: TStringGrid;
    Label10: TLabel;
    STGR_DUPLAS_base: TStringGrid;
    Bevel4: TBevel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    STGR_TRIPLAS_15_L: TStringGrid;
    STGR_TRIPLAS_15_Horizontal: TStringGrid;
    STGR_TRIPLAS_15_Vertical: TStringGrid;
    STGR_TRIPLAS_14_L: TStringGrid;
    STGR_TRIPLAS_14_Horizontal: TStringGrid;
    STGR_TRIPLAS_14_Vertical: TStringGrid;
    STGR_TRIPLAS_13_L: TStringGrid;
    STGR_TRIPLAS_13_Horizontal: TStringGrid;
    STGR_TRIPLAS_13_Vertical: TStringGrid;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Bevel5: TBevel;
    LA_TRIPLAS_16_COMB_100REP: TLabel;
    STGR_TRIPLAS_16_Combinacoes: TStringGrid;
    Label98: TLabel;
    Label99: TLabel;
    STGR_TRIPLAS_16_Quadrado: TStringGrid;
    STGR_TRIPLAS_16_L: TStringGrid;
    STGR_TRIPLAS_16_Horizontal: TStringGrid;
    STGR_TRIPLAS_16_Vertical: TStringGrid;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Bevel6: TBevel;
    STGR_TRIPLAS_21_Vertical: TStringGrid;
    STGR_TRIPLAS_21_Horizontal: TStringGrid;
    STGR_TRIPLAS_21_L: TStringGrid;
    STGR_TRIPLAS_22_Vertical: TStringGrid;
    STGR_TRIPLAS_22_Horizontal: TStringGrid;
    STGR_TRIPLAS_22_L: TStringGrid;
    STGR_TRIPLAS_23_Vertical: TStringGrid;
    STGR_TRIPLAS_23_Horizontal: TStringGrid;
    STGR_TRIPLAS_23_L: TStringGrid;
    Label97: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    STGR_TRIPLAS_24_Vertical: TStringGrid;
    STGR_TRIPLAS_24_Horizontal: TStringGrid;
    STGR_TRIPLAS_24_L: TStringGrid;
    Label116: TLabel;
    Label117: TLabel;
    STGR_TRIPLAS_28_Quadrado: TStringGrid;
    Label118: TLabel;
    STGR_TRIPLAS_28_Combinacoes: TStringGrid;
    Label119: TLabel;
    LA_TRIPLAS_28_COMB_100REP: TLabel;
    Label121: TLabel;
    STGR_TRIPLAS_29_Vertical: TStringGrid;
    Label120: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    STGR_TRIPLAS_29_L: TStringGrid;
    STGR_TRIPLAS_29_Horizontal: TStringGrid;
    Bevel7: TBevel;
    Label125: TLabel;
    STGR_TRIPLAS_30_Vertical: TStringGrid;
    Label126: TLabel;
    STGR_TRIPLAS_30_Horizontal: TStringGrid;
    Label127: TLabel;
    Label128: TLabel;
    STGR_TRIPLAS_30_L: TStringGrid;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    STGR_TRIPLAS_32_L: TStringGrid;
    STGR_TRIPLAS_32_Horizontal: TStringGrid;
    STGR_TRIPLAS_32_Vertical: TStringGrid;
    STGR_TRIPLAS_31_L: TStringGrid;
    STGR_TRIPLAS_31_Horizontal: TStringGrid;
    STGR_TRIPLAS_31_Vertical: TStringGrid;
    STGR_TRIPLAS_32_Combinacoes: TStringGrid;
    LA_TRIPLAS_32_COMB_100REP: TLabel;
    Label138: TLabel;
    STGR_TRIPLAS_34_L: TStringGrid;
    STGR_TRIPLAS_34_Horizontal: TStringGrid;
    STGR_TRIPLAS_34_Vertical: TStringGrid;
    STGR_TRIPLAS_33_L: TStringGrid;
    STGR_TRIPLAS_33_Horizontal: TStringGrid;
    STGR_TRIPLAS_33_Vertical: TStringGrid;
    Label137: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Bevel8: TBevel;
    STGR_TRIPLAS_36_L: TStringGrid;
    STGR_TRIPLAS_36_Horizontal: TStringGrid;
    STGR_TRIPLAS_36_Vertical: TStringGrid;
    STGR_TRIPLAS_35_L: TStringGrid;
    STGR_TRIPLAS_35_Horizontal: TStringGrid;
    STGR_TRIPLAS_35_Vertical: TStringGrid;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    STGR_TRIPLAS_36_Combinacoes: TStringGrid;
    Label154: TLabel;
    LA_TRIPLAS_36_COMB_100REP: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    STGR_TRIPLAS_39_L: TStringGrid;
    STGR_TRIPLAS_39_Horizontal: TStringGrid;
    STGR_TRIPLAS_39_Vertical: TStringGrid;
    STGR_TRIPLAS_38_L: TStringGrid;
    STGR_TRIPLAS_38_Horizontal: TStringGrid;
    STGR_TRIPLAS_38_Vertical: TStringGrid;
    STGR_TRIPLAS_37_L: TStringGrid;
    STGR_TRIPLAS_37_Horizontal: TStringGrid;
    STGR_TRIPLAS_37_Vertical: TStringGrid;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Bevel9: TBevel;
    Label167: TLabel;
    STGR_TRIPLAS_40_L: TStringGrid;
    Label168: TLabel;
    Label169: TLabel;
    STGR_TRIPLAS_40_Horizontal: TStringGrid;
    STGR_TRIPLAS_40_Vertical: TStringGrid;
    Label170: TLabel;
    STGR_TRIPLAS_40_Combinacoes: TStringGrid;
    Label171: TLabel;
    LA_TRIPLAS_40_COMB_100REP: TLabel;
    Label172: TLabel;
    STGR_TRIPLAS_41_Vertical: TStringGrid;
    Label173: TLabel;
    STGR_TRIPLAS_41_Horizontal: TStringGrid;
    Label174: TLabel;
    Label175: TLabel;
    STGR_TRIPLAS_41_L: TStringGrid;
    STGR_TRIPLAS_42_Vertical: TStringGrid;
    STGR_TRIPLAS_42_Horizontal: TStringGrid;
    STGR_TRIPLAS_42_L: TStringGrid;
    Bevel10: TBevel;
    Label176: TLabel;
    STGR_TRIPLAS_43_Vertical: TStringGrid;
    STGR_TRIPLAS_43_Horizontal: TStringGrid;
    STGR_TRIPLAS_43_L: TStringGrid;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    STGR_TRIPLAS_44_Combinacoes: TStringGrid;
    LA_TRIPLAS_44_COMB_100REP: TLabel;
    STGR_TRIPLAS_44_L: TStringGrid;
    STGR_TRIPLAS_44_Horizontal: TStringGrid;
    STGR_TRIPLAS_44_Vertical: TStringGrid;
    Label183: TLabel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label182: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    STGR_BASE_SOMA12_1: TStringGrid;
    STGR_BASE_SOMA12_2: TStringGrid;
    Label189: TLabel;
    PA_GERAR: TPanel;
    Panel2: TPanel;
    Label190: TLabel;
    BBT_GERAR: TBitBtn;
    BBT_GERAR_VOLTAR: TBitBtn;
    CB_POSICAO_8: TComboBox;
    Label191: TLabel;
    LA_BLOCO_10: TLabel;
    STRGR_TODOS_25: TStringGrid;
    STGR_BASE_7_8: TStringGrid;
    STGR_BASE_SOMA_10NS: TStringGrid;
    CB_SOMA_10NS: TComboBox;
    Label192: TLabel;
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_ENCERRARClick(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure BT_REAJUSTARClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_CANCELARClick(Sender: TObject);
    procedure BBT_GERAR_menuClick(Sender: TObject);
    procedure BBT_GERAR_VOLTARClick(Sender: TObject);
  private
    F_SET_FLAG_AUTOEXECUTAR: STRING;
    { Private declarations }
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS();
     PROCEDURE PR_LIMPAR_GRID15 ();
    procedure Set_SET_FLAG_AUTOEXECUTAR(const Value: STRING);
  public
    { Public declarations }
     PROPERTY _SET_FLAG_AUTOEXECUTAR : STRING read F_SET_FLAG_AUTOEXECUTAR write Set_SET_FLAG_AUTOEXECUTAR;
  end;

var
  _F_SIM_01_FILTRO_16td: T_F_SIM_01_FILTRO_16td;

implementation

uses Unit1;

{$R *.dfm}



procedure T_F_SIM_01_FILTRO_16td.FormCreate(Sender: TObject);
VAR
     VI_CONTAR: INTEGER;
begin
     PA_REMOVEUREPET.Left := 9999;
     FOR VI_CONTAR :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
     END; // FOR VI_CONTAR
     SELF.Width := 1280;
     PA_PREENCHIMENTO.Visible := false;
     PA_REMOVEUREPET.Left := 5000;
     PA_GABARITO.Visible := false;
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible := false;
     PA_INICIAL.Enabled := TRUE;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_16td_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
               SELF.IBQ_COMBINACOES.Close;
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT FLAG_AUTOEXECUTAR FROM FILTRO_16td_DEFINICAO;')  ;
               SELF.IBQ_COMBINACOES.Open;
               SELF._SET_FLAG_AUTOEXECUTAR := TRIM(SELF.IBQ_COMBINACOES.FieldByName('FLAG_AUTOEXECUTAR').AsString);
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
        PA_INICIAL.Left := 520;;
        PA_GERAR.Left := 5200;
end;



procedure T_F_SIM_01_FILTRO_16td.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_SIM_01_FILTRO_16td.FormClose(Sender: TObject; var Action: TCloseAction);
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





procedure T_F_SIM_01_FILTRO_16td.BBT_PREPARARClick(Sender: TObject);
VAR
     VI_LINHAS2, VI_CONTAR, VI_CNTCELULAS: INTEGER;
     VI_COMBINACOES_INI01, VI_COMBINACOES_INI02, VI_COMBINACOES_INI03 : INTEGER;
     VI_COMBINACOES01, VI_COMBINACOES02, VI_COMBINACOES03, VI_COMBINACOES04, VI_COMBINACOES05, VI_COMBINACOES06 : INTEGER;
begin
     BBT_BLOCO_NOTAS.Enabled := false;
     IBQ_COMBINACOES.Close;
     IBQ_COMBINACOES.SQL.Clear;
     IBQ_COMBINACOES.SQL.Add('SELECT * FROM A_CONFIG1_');
     IBQ_COMBINACOES.Open;
    { IF (IBQ_COMBINACOES.FieldByName('NOME_SIMULACAO_ATIVA').AsString = 'SIMULACAO_1') THEN
     BEGIN
     END ELSE
     IF (IBQ_COMBINACOES.FieldByName('NOME_SIMULACAO_ATIVA').AsString = 'SIMULACAO_2') THEN
     BEGIN}
          IBQ_COMBINACOES.Close;
          IBQ_COMBINACOES.SQL.Clear;
          IBQ_COMBINACOES.SQL.Add('SELECT * FROM SIMULACAO_2_DEFINICAO');
          IBQ_COMBINACOES.Open;
    { END;}
     // *****************************************************
     // ** Restaurando/lendo os dados do Impar A / LINHA A **
     // *****************************************************
     STGR_BASE_A.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,1,2);
     STGR_BASE_A.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,4,2);
     STGR_BASE_A.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,7,2);
     STGR_BASE_A.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,10,2);
     STGR_BASE_A.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,13,2);
     STGR_BASE_A.Cells[6,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,16,2);
     STGR_BASE_A.Cells[7,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,19,2);
     STGR_BASE_A.Cells[8,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,22,2);
     // ****************************************************
     // ** Restaurando/lendo os dados do Par A / LINHA B  **
     // ****************************************************
     STGR_BASE_B.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,1,2);
     STGR_BASE_B.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,4,2);
     STGR_BASE_B.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,7,2);
     STGR_BASE_B.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,10,2);
     STGR_BASE_B.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,13,2);
     STGR_BASE_B.Cells[6,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,16,2);
     STGR_BASE_B.Cells[7,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,19,2);
     // ******************************************************
     // ** Restaurando/lendo os dados do Impar B / LINHA C  **
     // ******************************************************
     STGR_BASE_C.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,1,2);
     STGR_BASE_C.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,4,2);
     STGR_BASE_C.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,7,2);
     STGR_BASE_C.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,10,2);
     STGR_BASE_C.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,13,2);
     // ****************************************************
     // ** Restaurando/lendo os dados do Par B / LINHA D  **
     // ****************************************************
     STGR_BASE_D.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,1,2);
     STGR_BASE_D.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,4,2);
     STGR_BASE_D.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,7,2);
     STGR_BASE_D.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,10,2);
     STGR_BASE_D.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,13,2);
     IBQ_COMBINACOES.Close;
     IBQ_COMBINACOES.SQL.Clear;
     IBQ_COMBINACOES.SQL.Add('SELECT * FROM A_RESULTADO_15_DADOS');
     IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;

     STGR_COMB15.RowCount := 2;
     VI_LINHAS2 := 0;
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
          STGR_COMB15.Cells[VI_CONTAR+2,0] := INTtoSTR(VI_CONTAR);
     END; // FOR
        // ***************************
        // **  CONFERINDO OS EXCLUIDOS **
        // ***************************
     IF (STRtoINT(ED_EXC_01.Text) <> 0  ) then
     begin
         IF (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_02.Text ) )
         THEN
         BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_01.SetFocus;
                 EXIT;
         END; // IF
         IF (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_02.Text ) )
         THEN
         BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_02.SetFocus;
                 EXIT;
         END; // IF
         IF (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_02.Text ) )
         THEN
         BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_02.SetFocus;
                 EXIT;
         END; // IF
         IF (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_02.Text ) ) 
         THEN
         BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_02.SetFocus;
                 EXIT;
         END; // IF
     end; // if (STRtoINT
     // **************************************
     // ** Montando as 5 linhas das triplas **
     // **************************************
     STGR_TRIPLAS_Base.Cells[0,1] := '1';
     STGR_TRIPLAS_Base.Cells[0,2] := '2';
     STGR_TRIPLAS_Base.Cells[0,3] := '3';
     STGR_TRIPLAS_Base.Cells[0,4] := '4';
     STGR_TRIPLAS_Base.Cells[0,5] := '5';
     STGR_TRIPLAS_Base.Cells[1,1] := STGR_BASE_A.Cells[1,0];
     STGR_TRIPLAS_Base.Cells[2,1] := STGR_BASE_B.Cells[6,0];
     STGR_TRIPLAS_Base.Cells[3,1] := STGR_BASE_B.Cells[7,0];
     STGR_TRIPLAS_Base.Cells[1,2] := STGR_BASE_A.Cells[2,0];
     STGR_TRIPLAS_Base.Cells[2,2] := STGR_BASE_A.Cells[4,0];
     STGR_TRIPLAS_Base.Cells[3,2] := STGR_BASE_A.Cells[7,0];
     STGR_TRIPLAS_Base.Cells[1,3] := STGR_BASE_A.Cells[3,0];
     STGR_TRIPLAS_Base.Cells[2,3] := STGR_BASE_A.Cells[5,0];
     STGR_TRIPLAS_Base.Cells[3,3] := STGR_BASE_A.Cells[6,0];
     STGR_TRIPLAS_Base.Cells[1,4] := STGR_BASE_A.Cells[8,0];
     STGR_TRIPLAS_Base.Cells[2,4] := STGR_BASE_B.Cells[1,0];
     STGR_TRIPLAS_Base.Cells[3,4] := STGR_BASE_B.Cells[2,0];
     STGR_TRIPLAS_Base.Cells[1,5] := STGR_BASE_B.Cells[3,0];
     STGR_TRIPLAS_Base.Cells[2,5] := STGR_BASE_B.Cells[4,0];
     STGR_TRIPLAS_Base.Cells[3,5] := STGR_BASE_B.Cells[5,0];
     // **************************************
     // ** Montando as 5 linhas das Duplas **
     // **************************************
     STGR_DUPLAS_Base.Cells[0,1] := '1';
     STGR_DUPLAS_Base.Cells[0,2] := '2';
     STGR_DUPLAS_Base.Cells[0,3] := '3';
     STGR_DUPLAS_Base.Cells[0,4] := '4';
     STGR_DUPLAS_Base.Cells[0,5] := '5';
     STGR_DUPLAS_Base.Cells[1,1] := STGR_BASE_C.Cells[1,0];
     STGR_DUPLAS_Base.Cells[2,1] := STGR_BASE_D.Cells[5,0];
     STGR_DUPLAS_Base.Cells[1,2] := STGR_BASE_C.Cells[2,0];
     STGR_DUPLAS_Base.Cells[2,2] := STGR_BASE_D.Cells[4,0];
     STGR_DUPLAS_Base.Cells[1,3] := STGR_BASE_C.Cells[3,0];
     STGR_DUPLAS_Base.Cells[2,3] := STGR_BASE_D.Cells[3,0];
     STGR_DUPLAS_Base.Cells[1,4] := STGR_BASE_C.Cells[4,0];
     STGR_DUPLAS_Base.Cells[2,4] := STGR_BASE_D.Cells[2,0];
     STGR_DUPLAS_Base.Cells[1,5] := STGR_BASE_C.Cells[5,0];
     STGR_DUPLAS_Base.Cells[2,5] := STGR_BASE_D.Cells[1,0];

     // ***********************************************
     // ** Montando todas as  combinações das Duplas **
     // ***********************************************
          // =========================
      	//   Duplas - linhas
	     // =======================
     STGR_DUPLAS_Linhas.Cells[0,1] := '1';
     STGR_DUPLAS_Linhas.Cells[0,2] := '2';
     STGR_DUPLAS_Linhas.Cells[0,3] := '3';
     STGR_DUPLAS_Linhas.Cells[1,1] := STGR_DUPLAS_Base.Cells[1,1];
     STGR_DUPLAS_Linhas.Cells[2,1] := STGR_DUPLAS_Base.Cells[2,1];
     STGR_DUPLAS_Linhas.Cells[1,2] := STGR_DUPLAS_Base.Cells[1,3];
     STGR_DUPLAS_Linhas.Cells[2,2] := STGR_DUPLAS_Base.Cells[2,3];
     STGR_DUPLAS_Linhas.Cells[1,3] := STGR_DUPLAS_Base.Cells[1,5];
     STGR_DUPLAS_Linhas.Cells[2,3] := STGR_DUPLAS_Base.Cells[2,5];
          // =========================
      	//   Duplas - quadrado 2
	     // =======================
     STGR_DUPLAS_Quad2.Cells[0,1] := '1.1a';
     STGR_DUPLAS_Quad2.Cells[0,2] := '1.2a';
     STGR_DUPLAS_Quad2.Cells[0,3] := '1.3a';
     STGR_DUPLAS_Quad2.Cells[0,4] := '1.4a';
     STGR_DUPLAS_Quad2.Cells[1,1] := STGR_DUPLAS_Base.Cells[1,4];
     STGR_DUPLAS_Quad2.Cells[1,2] := STGR_DUPLAS_Base.Cells[2,4];
     STGR_DUPLAS_Quad2.Cells[1,3] := STGR_DUPLAS_Base.Cells[1,5];
     STGR_DUPLAS_Quad2.Cells[1,4] := STGR_DUPLAS_Base.Cells[2,5];

     STGR_DUPLAS_Quad2.Cells[0,5] := '1.1b';
     STGR_DUPLAS_Quad2.Cells[0,6] := '1.2b';
     STGR_DUPLAS_Quad2.Cells[0,7] := '1.3b';
     STGR_DUPLAS_Quad2.Cells[0,8] := '1.4b';
     STGR_DUPLAS_Quad2.Cells[1,5] := STGR_DUPLAS_Base.Cells[1,2];
     STGR_DUPLAS_Quad2.Cells[1,6] := STGR_DUPLAS_Base.Cells[2,2];
     STGR_DUPLAS_Quad2.Cells[1,7] := STGR_DUPLAS_Base.Cells[1,3];
     STGR_DUPLAS_Quad2.Cells[1,8] := STGR_DUPLAS_Base.Cells[2,3];

     STGR_DUPLAS_Quad2.Cells[0,9] := '2.1a';
     STGR_DUPLAS_Quad2.Cells[0,10] := '2.2a';
     STGR_DUPLAS_Quad2.Cells[0,11] := '2.3a';
     STGR_DUPLAS_Quad2.Cells[0,12] := '2.4a';
     STGR_DUPLAS_Quad2.Cells[1,9] := STGR_DUPLAS_Base.Cells[1,4];
     STGR_DUPLAS_Quad2.Cells[1,10] := STGR_DUPLAS_Base.Cells[2,4];
     STGR_DUPLAS_Quad2.Cells[1,11] := STGR_DUPLAS_Base.Cells[1,5];
     STGR_DUPLAS_Quad2.Cells[1,12] := STGR_DUPLAS_Base.Cells[2,5];

     STGR_DUPLAS_Quad2.Cells[0,13] := '2.1b';
     STGR_DUPLAS_Quad2.Cells[0,14] := '2.2b';
     STGR_DUPLAS_Quad2.Cells[0,15] := '2.3b';
     STGR_DUPLAS_Quad2.Cells[0,16] := '2.4b';
     STGR_DUPLAS_Quad2.Cells[1,13] := STGR_DUPLAS_Base.Cells[1,1];
     STGR_DUPLAS_Quad2.Cells[1,14] := STGR_DUPLAS_Base.Cells[2,2];
     STGR_DUPLAS_Quad2.Cells[1,15] := STGR_DUPLAS_Base.Cells[1,2];
     STGR_DUPLAS_Quad2.Cells[1,16] := STGR_DUPLAS_Base.Cells[2,1];

     STGR_DUPLAS_Quad2.Cells[0,17] := '3.1a';
     STGR_DUPLAS_Quad2.Cells[0,18] := '3.2a';
     STGR_DUPLAS_Quad2.Cells[0,19] := '3.3a';
     STGR_DUPLAS_Quad2.Cells[0,20] := '3.4a';
     STGR_DUPLAS_Quad2.Cells[1,17] := STGR_DUPLAS_Base.Cells[1,3];
     STGR_DUPLAS_Quad2.Cells[1,18] := STGR_DUPLAS_Base.Cells[2,3];
     STGR_DUPLAS_Quad2.Cells[1,19] := STGR_DUPLAS_Base.Cells[1,4];
     STGR_DUPLAS_Quad2.Cells[1,20] := STGR_DUPLAS_Base.Cells[2,4];

     STGR_DUPLAS_Quad2.Cells[0,21] := '3.1b';
     STGR_DUPLAS_Quad2.Cells[0,22] := '3.2b';
     STGR_DUPLAS_Quad2.Cells[0,23] := '3.3b';
     STGR_DUPLAS_Quad2.Cells[0,24] := '3.4b';
     STGR_DUPLAS_Quad2.Cells[1,21] := STGR_DUPLAS_Base.Cells[1,1];
     STGR_DUPLAS_Quad2.Cells[1,22] := STGR_DUPLAS_Base.Cells[2,1];
     STGR_DUPLAS_Quad2.Cells[1,23] := STGR_DUPLAS_Base.Cells[1,2];
     STGR_DUPLAS_Quad2.Cells[1,24] := STGR_DUPLAS_Base.Cells[2,2];
          // =========================
      	//   Duplas - quadrado 1
	     // =======================
          // --------------
      	//   Hipótese 1
	     // --------------
     VI_COMBINACOES01 := 2 ;
     VI_LINHAS2 := 1       ;
     WHILE VI_COMBINACOES01 < 5 DO
     BEGIN
          FOR VI_COMBINACOES02 := 1 TO 2 DO
          BEGIN
               STGR_DUPLAS_Quad1.Cells[1,VI_LINHAS2] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES02,VI_COMBINACOES01];
               STGR_DUPLAS_Quad1.Cells[1,VI_LINHAS2+1] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES02,VI_COMBINACOES01+1];
               FOR VI_COMBINACOES03 := 1 TO 2 DO
               BEGIN
                    STGR_DUPLAS_Quad1.Cells[0,VI_LINHAS2] := '1';
                    STGR_DUPLAS_Quad1.Cells[1,VI_LINHAS2] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES02,VI_COMBINACOES01];
                    STGR_DUPLAS_Quad1.Cells[VI_COMBINACOES03+1,VI_LINHAS2] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES03,VI_COMBINACOES01+1];

                    STGR_DUPLAS_Quad1.Cells[0,VI_LINHAS2+1] := '1';
                    STGR_DUPLAS_Quad1.Cells[1,VI_LINHAS2+1] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES02,VI_COMBINACOES01+1];
                    STGR_DUPLAS_Quad1.Cells[VI_COMBINACOES03+1,VI_LINHAS2+1] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES03,VI_COMBINACOES01+0];
               END; // FOR VI_COMBINACOES03
               VI_LINHAS2 := VI_LINHAS2 +2;
          END; // FOR VI_COMBINACOES03
     STGR_DUPLAS_Quad1.Cells [0,1] := '1A';
     STGR_DUPLAS_Quad1.Cells [0,5] := '1B';
     VI_COMBINACOES01 := VI_COMBINACOES01 +2;
     END ;// WHILE
          // --------------
      	//   Hipótese 2
	     // --------------
     VI_COMBINACOES01 := 1 ;
     WHILE VI_COMBINACOES01 < 5 DO
     BEGIN
          FOR VI_COMBINACOES02 := 1 TO 2 DO
          BEGIN
               STGR_DUPLAS_Quad1.Cells[1,VI_LINHAS2] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES02,VI_COMBINACOES01];
               STGR_DUPLAS_Quad1.Cells[1,VI_LINHAS2+1] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES02,VI_COMBINACOES01+1];
               FOR VI_COMBINACOES03 := 1 TO 2 DO
               BEGIN
                    STGR_DUPLAS_Quad1.Cells[0,VI_LINHAS2] := '2';
                    STGR_DUPLAS_Quad1.Cells[1,VI_LINHAS2] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES02,VI_COMBINACOES01];
                    STGR_DUPLAS_Quad1.Cells[VI_COMBINACOES03+1,VI_LINHAS2] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES03,VI_COMBINACOES01+1];

                    STGR_DUPLAS_Quad1.Cells[0,VI_LINHAS2+1] := '2';
                    STGR_DUPLAS_Quad1.Cells[1,VI_LINHAS2+1] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES02,VI_COMBINACOES01+1];
                    STGR_DUPLAS_Quad1.Cells[VI_COMBINACOES03+1,VI_LINHAS2+1] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES03,VI_COMBINACOES01+0];
               END; // FOR VI_COMBINACOES03
               VI_LINHAS2 := VI_LINHAS2 +2;
          END; // FOR VI_COMBINACOES03
     STGR_DUPLAS_Quad1.Cells [0,9] := '2A';
     STGR_DUPLAS_Quad1.Cells [0,13] := '2B';
     VI_COMBINACOES01 := VI_COMBINACOES01 + 3;
     END ;// WHILE
          // --------------
      	//   Hipótese 3
	     // --------------
     VI_COMBINACOES01 := 1 ;
     WHILE VI_COMBINACOES01 < 4 DO
     BEGIN
          FOR VI_COMBINACOES02 := 1 TO 2 DO
          BEGIN
               STGR_DUPLAS_Quad1.Cells[1,VI_LINHAS2] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES02,VI_COMBINACOES01];
               STGR_DUPLAS_Quad1.Cells[1,VI_LINHAS2+1] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES02,VI_COMBINACOES01+1];
               FOR VI_COMBINACOES03 := 1 TO 2 DO
               BEGIN
                    STGR_DUPLAS_Quad1.Cells[0,VI_LINHAS2] := '3';
                    STGR_DUPLAS_Quad1.Cells[1,VI_LINHAS2] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES02,VI_COMBINACOES01];
                    STGR_DUPLAS_Quad1.Cells[VI_COMBINACOES03+1,VI_LINHAS2] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES03,VI_COMBINACOES01+1];

                    STGR_DUPLAS_Quad1.Cells[0,VI_LINHAS2+1] := '3';
                    STGR_DUPLAS_Quad1.Cells[1,VI_LINHAS2+1] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES02,VI_COMBINACOES01+1];
                    STGR_DUPLAS_Quad1.Cells[VI_COMBINACOES03+1,VI_LINHAS2+1] := STGR_DUPLAS_Base.Cells[VI_COMBINACOES03,VI_COMBINACOES01+0];
               END; // FOR VI_COMBINACOES03
               VI_LINHAS2 := VI_LINHAS2 +2;
          END; // FOR VI_COMBINACOES03
     STGR_DUPLAS_Quad1.Cells[0,17] := '3A';
     STGR_DUPLAS_Quad1.Cells[0,21] := '3B';
     VI_COMBINACOES01 := VI_COMBINACOES01 + 2;
     END ;// WHILE
          // =========================
      	//   Duplas - combinacoes 1
	     // =========================
     VI_COMBINACOES01 := 1 ;
     VI_CONTAR := 0;     
     VI_LINHAS2 := 1 ;
     WHILE VI_COMBINACOES01 < 4 DO
     BEGIN
          VI_COMBINACOES_INI02 := (VI_COMBINACOES01 *8) - 7 ;
          VI_COMBINACOES02 := VI_COMBINACOES_INI02;
          WHILE VI_COMBINACOES02 < VI_COMBINACOES_INI02+ 8 DO
          BEGIN
               VI_COMBINACOES_INI03:= (VI_CONTAR*4)+1 ;
               //IF VI_COMBINACOES_INI03 = 0 THEN VI_COMBINACOES_INI03 :=1;
               FOR VI_COMBINACOES03 := VI_COMBINACOES_INI03 TO VI_COMBINACOES_INI03 + 3 DO
               BEGIN
                    STGR_DUPLAS_Comb.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                    STGR_DUPLAS_Comb.Cells[1,VI_LINHAS2] := 'V';
                    STGR_DUPLAS_Comb.Cells[2,VI_LINHAS2] := 'V';                    
                    STGR_DUPLAS_Comb.Cells[3,VI_LINHAS2] := STGR_DUPLAS_Linhas.Cells[1,VI_COMBINACOES01];
                    STGR_DUPLAS_Comb.Cells[4,VI_LINHAS2] := STGR_DUPLAS_Linhas.Cells[2,VI_COMBINACOES01];
                    STGR_DUPLAS_Comb.Cells[5,VI_LINHAS2] := STGR_DUPLAS_Quad1.Cells[1,VI_COMBINACOES02];
                    STGR_DUPLAS_Comb.Cells[6,VI_LINHAS2] := STGR_DUPLAS_Quad1.Cells[2,VI_COMBINACOES02];
                    STGR_DUPLAS_Comb.Cells[7,VI_LINHAS2] := STGR_DUPLAS_Quad1.Cells[3,VI_COMBINACOES02];
                    STGR_DUPLAS_Comb.Cells[8,VI_LINHAS2] := STGR_DUPLAS_Quad2.Cells[1,VI_COMBINACOES03];
                    VI_LINHAS2 := VI_LINHAS2 +1;
               END; // FOR
               IF (VI_COMBINACOES02 MOD 4 = 0) THEN VI_CONTAR := VI_CONTAR +1   ;
               VI_COMBINACOES02 := VI_COMBINACOES02 + 1 ;
          END; // WHILE
          VI_COMBINACOES01 := VI_COMBINACOES01 + 1 ;
     END; // WHILE
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_DUPLAS_Comb.RowCount-1) DO
     BEGIN
               IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_DUPLAS_Comb.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_DUPLAS_Comb.Cells [1 ,VI_COMBINACOES01] := 'F';
     END; // FOR VI_COMBINACOES01
               // ---------------------------
               // --  Contando os pares    --
               // ---------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_DUPLAS_Comb.RowCount-1) DO
     BEGIN
          VI_CONTAR := 0;
          FOR VI_COMBINACOES02:= 3 TO 8 DO
          BEGIN
               IF (STRtoINT(STGR_DUPLAS_Comb.Cells[VI_COMBINACOES02,VI_COMBINACOES01]) MOD 2) = 0 THEN
                    VI_CONTAR := VI_CONTAR +1;
          end; // for
          IF NOT(VI_CONTAR =3) THEN
                STGR_DUPLAS_Comb.Cells [2 ,VI_COMBINACOES01] := 'F';
     end; // for

     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_DUPLAS_Comb.RowCount-1) DO
     BEGIN
          IF (STGR_DUPLAS_Comb.Cells [1,VI_COMBINACOES01] = 'V') AND (STGR_DUPLAS_Comb.Cells [2,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END; // for
     LA_DUPLAS_COMB_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_DUPLAS_COMB_100REP.Repaint;




     // §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
     // ************************************************
     // ** Montando todas as  combinações das TRIPLAS **
     // ************************************************
          // ===============================
      	//   TRIPLAS 01  - linha vertical
	     // ===============================
     STGR_TRIPLAS_01_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_01_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_01_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_01_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_01_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_01_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[1,3];
          // ===============================
      	//   TRIPLAS 01  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_01_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_01_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_01_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_01_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,1];
          // ===============================
      	//   TRIPLAS 01  - L
	     // ===============================
     STGR_TRIPLAS_01_L.Cells[0,1] := '1';
     STGR_TRIPLAS_01_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_01_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_01_L.Cells[0,2] := '2';
     STGR_TRIPLAS_01_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_01_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_01_L.Cells[0,3] := '3';
     STGR_TRIPLAS_01_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_01_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_01_L.Cells[0,4] := '4';
     STGR_TRIPLAS_01_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_01_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_01_L.Cells[0,5] := '5';
     STGR_TRIPLAS_01_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_01_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_01_L.Cells[0,6] := '6';
     STGR_TRIPLAS_01_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_01_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[2,3];


          // ===============================
      	//   TRIPLAS 02  - linha vertical
	     // ===============================
     STGR_TRIPLAS_02_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_02_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_02_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_02_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_02_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_02_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,3];
          // ===============================
      	//   TRIPLAS 02  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_02_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_02_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_02_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_02_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,1];
          // ===============================
      	//   TRIPLAS 02  - L
	     // ===============================
     STGR_TRIPLAS_02_L.Cells[0,1] := '1';
     STGR_TRIPLAS_02_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_02_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_02_L.Cells[0,2] := '2';
     STGR_TRIPLAS_02_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_02_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_02_L.Cells[0,3] := '3';
     STGR_TRIPLAS_02_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_02_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_02_L.Cells[0,4] := '4';
     STGR_TRIPLAS_02_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_02_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_02_L.Cells[0,5] := '5';
     STGR_TRIPLAS_02_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_02_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_02_L.Cells[0,6] := '6';
     STGR_TRIPLAS_02_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_02_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[1,3];



          // ===============================
      	//   TRIPLAS 03  - linha vertical
	     // ===============================
     STGR_TRIPLAS_03_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_03_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_03_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_03_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_03_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_03_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[1,3];
          // ===============================
      	//   TRIPLAS 03  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_03_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_03_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_03_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_03_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,3];
          // ===============================
      	//   TRIPLAS 03  - L
	     // ===============================
     STGR_TRIPLAS_03_L.Cells[0,1] := '1';
     STGR_TRIPLAS_03_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_03_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,1];
     STGR_TRIPLAS_03_L.Cells[0,2] := '2';
     STGR_TRIPLAS_03_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_03_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_03_L.Cells[0,3] := '3';
     STGR_TRIPLAS_03_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_03_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_03_L.Cells[0,4] := '4';
     STGR_TRIPLAS_03_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_03_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_03_L.Cells[0,5] := '5';
     STGR_TRIPLAS_03_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_03_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_03_L.Cells[0,6] := '6';
     STGR_TRIPLAS_03_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_03_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[2,2];



          // ===============================
      	//   TRIPLAS 04  - linha vertical
	     // ===============================
     STGR_TRIPLAS_04_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_04_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_04_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_04_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_04_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_04_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,3];
          // ===============================
      	//   TRIPLAS 04  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_04_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_04_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_04_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_04_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3];
          // ===============================
      	//   TRIPLAS 04  - L
	     // ===============================
     STGR_TRIPLAS_04_L.Cells[0,1] := '1';
     STGR_TRIPLAS_04_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_04_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,1];
     STGR_TRIPLAS_04_L.Cells[0,2] := '2';
     STGR_TRIPLAS_04_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_04_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_04_L.Cells[0,3] := '3';
     STGR_TRIPLAS_04_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_04_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_04_L.Cells[0,4] := '4';
     STGR_TRIPLAS_04_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_04_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_04_L.Cells[0,5] := '5';
     STGR_TRIPLAS_04_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_04_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_04_L.Cells[0,6] := '6';
     STGR_TRIPLAS_04_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_04_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[1,2];


          // =====================================
      	//   TRIPLAS 01, 02, 03 e 04  - Quadrado
	     // =====================================
     STGR_TRIPLAS_01_Quadrado.Cells[0,1] := '1';
     STGR_TRIPLAS_01_Quadrado.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_01_Quadrado.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_01_Quadrado.Cells[3,1] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_01_Quadrado.Cells[4,1] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_01_Quadrado.Cells[0,2] := '2';
     STGR_TRIPLAS_01_Quadrado.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_01_Quadrado.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_01_Quadrado.Cells[3,2] := STGR_TRIPLAS_base.Cells[2,5] ;
     STGR_TRIPLAS_01_Quadrado.Cells[4,2] := STGR_TRIPLAS_base.Cells[1,5];
     STGR_TRIPLAS_01_Quadrado.Cells[0,3] := '3';
     STGR_TRIPLAS_01_Quadrado.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,5] ;
     STGR_TRIPLAS_01_Quadrado.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_01_Quadrado.Cells[3,3] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_01_Quadrado.Cells[4,3] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_01_Quadrado.Cells[0,4] := '4';
     STGR_TRIPLAS_01_Quadrado.Cells[1,4] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_01_Quadrado.Cells[2,4] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_01_Quadrado.Cells[3,4] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_01_Quadrado.Cells[4,4] := STGR_TRIPLAS_base.Cells[3,4];


          // ========================================
      	//   TRIPLAS 01, 02, 03 e 04  - Combinações
	     // ========================================

     VI_LINHAS2 := 1 ;
     FOR VI_COMBINACOES_INI01 :=1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES01 := 1 TO STGR_TRIPLAS_01_Vertical.RowCount-1 DO
          BEGIN
               FOR VI_COMBINACOES02 := 1 TO STGR_TRIPLAS_01_Horizontal.RowCount-1 DO
               BEGIN
                    FOR VI_COMBINACOES03 := 1 TO STGR_TRIPLAS_01_L.RowCount-1 DO
                    BEGIN
                         FOR VI_COMBINACOES04 := 1 TO STGR_TRIPLAS_01_Quadrado.RowCount-1 DO
                         BEGIN
                              IF (VI_COMBINACOES_INI01=1) THEN
                              BEGIN
                                   STGR_TRIPLAS_01_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_01_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_01_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_01_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_01_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_01_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_01_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_01_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_01_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_01_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_01_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_01_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_01_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=2) THEN
                              BEGIN
                                   STGR_TRIPLAS_01_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_01_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_01_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_01_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_02_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_01_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_02_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_01_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_02_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_01_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_02_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_01_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_02_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=3) THEN
                              BEGIN
                                   STGR_TRIPLAS_01_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_01_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_01_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_01_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_03_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_01_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_03_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_01_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_03_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_01_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_03_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_01_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_03_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=4) THEN
                              BEGIN
                                   STGR_TRIPLAS_01_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_01_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_01_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_01_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_04_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_01_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_04_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_01_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_04_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_01_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_04_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_01_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_04_L.Cells[2,VI_COMBINACOES03]         ;
                              END; // IF

                              STGR_TRIPLAS_01_Combinacoes.Cells[8,VI_LINHAS2]:= STGR_TRIPLAS_01_Quadrado.Cells[1,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_01_Combinacoes.Cells[9,VI_LINHAS2]:= STGR_TRIPLAS_01_Quadrado.Cells[2,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_01_Combinacoes.Cells[10,VI_LINHAS2]:= STGR_TRIPLAS_01_Quadrado.Cells[3,VI_COMBINACOES04] ;
                              STGR_TRIPLAS_01_Combinacoes.Cells[11,VI_LINHAS2]:= STGR_TRIPLAS_01_Quadrado.Cells[4,VI_COMBINACOES04] ;
                              VI_LINHAS2:=  VI_LINHAS2 +  1;
                         end;  //FOR VI_COMBINACOES04
                    end;  //FOR VI_COMBINACOES03
               end;  //FOR VI_COMBINACOES02
          end;  //FOR VI_COMBINACOES01
     END; // FOR VI_COMBINACOES_INI01
     STGR_TRIPLAS_01_Combinacoes.RowCount := (96*4)+1;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_01_Combinacoes.RowCount-1) DO
     BEGIN
               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_01_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
     END; // FOR VI_COMBINACOES01
               // ---------------------------
               // --  Contando os pares    --
               // ---------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_01_Combinacoes.RowCount-1) DO
     BEGIN
          VI_CONTAR := 0;
          FOR VI_COMBINACOES02:= 3 TO 11 DO
          BEGIN
               IF (STRtoINT(STGR_TRIPLAS_01_Combinacoes.Cells[VI_COMBINACOES02,VI_COMBINACOES01]) MOD 2) = 0 THEN
                    VI_CONTAR := VI_CONTAR +1;
          end; // for
          IF NOT(VI_CONTAR = 4) THEN
                STGR_TRIPLAS_01_Combinacoes.Cells [2 ,VI_COMBINACOES01] := 'F';
     end; // for
     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_01_Combinacoes.RowCount-1) DO
     BEGIN
          IF (STGR_TRIPLAS_01_Combinacoes.Cells [1,VI_COMBINACOES01] = 'V') AND (STGR_TRIPLAS_01_Combinacoes.Cells [2,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TRIPLAS_01_COMB_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_TRIPLAS_01_COMB_100REP.Repaint;



          // ===============================
      	//   TRIPLAS 05  - linha vertical
	     // ===============================
     STGR_TRIPLAS_05_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_05_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_05_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_05_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_05_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_05_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[1,5];
          // ===============================
      	//   TRIPLAS 05  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_05_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_05_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,5] ;
     STGR_TRIPLAS_05_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_05_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,5];
          // ===============================
      	//   TRIPLAS 05  - L
	     // ===============================
     STGR_TRIPLAS_05_L.Cells[0,1] := '1';
     STGR_TRIPLAS_05_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_05_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_05_L.Cells[0,2] := '2';
     STGR_TRIPLAS_05_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_05_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_05_L.Cells[0,3] := '3';
     STGR_TRIPLAS_05_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_05_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_05_L.Cells[0,4] := '4';
     STGR_TRIPLAS_05_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[3,3] ;
     STGR_TRIPLAS_05_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_05_L.Cells[0,5] := '5';
     STGR_TRIPLAS_05_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_05_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_05_L.Cells[0,6] := '6';
     STGR_TRIPLAS_05_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[3,3] ;
     STGR_TRIPLAS_05_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[2,4];



          // ===============================
      	//   TRIPLAS 06  - linha vertical
	     // ===============================
     STGR_TRIPLAS_06_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_06_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,3] ;
     STGR_TRIPLAS_06_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_06_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_06_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_06_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,5];
          // ===============================
      	//   TRIPLAS 06  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_06_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_06_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_06_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_06_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5];
          // ===============================
      	//   TRIPLAS 06  - L
	     // ===============================
     STGR_TRIPLAS_06_L.Cells[0,1] := '1';
     STGR_TRIPLAS_06_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_06_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_06_L.Cells[0,2] := '2';
     STGR_TRIPLAS_06_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_06_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_06_L.Cells[0,3] := '3';
     STGR_TRIPLAS_06_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_06_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_06_L.Cells[0,4] := '4';
     STGR_TRIPLAS_06_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_06_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_06_L.Cells[0,5] := '5';
     STGR_TRIPLAS_06_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_06_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_06_L.Cells[0,6] := '6';
     STGR_TRIPLAS_06_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_06_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[1,4];



          // ===============================
      	//   TRIPLAS 07  - linha vertical
	     // ===============================
     STGR_TRIPLAS_07_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_07_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_07_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_07_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_07_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_07_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[1,5];
          // ===============================
      	//   TRIPLAS 07  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_07_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_07_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_07_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_07_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,3];
          // ===============================
      	//   TRIPLAS 07  - L
	     // ===============================
     STGR_TRIPLAS_07_L.Cells[0,1] := '1';
     STGR_TRIPLAS_07_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_07_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_07_L.Cells[0,2] := '2';
     STGR_TRIPLAS_07_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5] ;
     STGR_TRIPLAS_07_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_07_L.Cells[0,3] := '3';
     STGR_TRIPLAS_07_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_07_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_07_L.Cells[0,4] := '4';
     STGR_TRIPLAS_07_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_07_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_07_L.Cells[0,5] := '5';
     STGR_TRIPLAS_07_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_07_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_07_L.Cells[0,6] := '6';
     STGR_TRIPLAS_07_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_07_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[2,5];




          // ===============================
      	//   TRIPLAS 08  - linha vertical
	     // ===============================
     STGR_TRIPLAS_08_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_08_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_08_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_08_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_08_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_08_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,5];
          // ===============================
      	//   TRIPLAS 08  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_08_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_08_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_08_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_08_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3];
          // ===============================
      	//   TRIPLAS 08  - L
	     // ===============================
     STGR_TRIPLAS_08_L.Cells[0,1] := '1';
     STGR_TRIPLAS_08_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_08_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_08_L.Cells[0,2] := '2';
     STGR_TRIPLAS_08_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_08_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_08_L.Cells[0,3] := '3';
     STGR_TRIPLAS_08_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_08_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,5];
     STGR_TRIPLAS_08_L.Cells[0,4] := '4';
     STGR_TRIPLAS_08_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_08_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_08_L.Cells[0,5] := '5';
     STGR_TRIPLAS_08_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_08_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_08_L.Cells[0,6] := '6';
     STGR_TRIPLAS_08_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_08_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[1,5];




          // =====================================
      	//   TRIPLAS 05, 06, 07 e 08  - Quadrado
	     // =====================================
     STGR_TRIPLAS_05_Quadrado.Cells[0,1] := '1';
     STGR_TRIPLAS_05_Quadrado.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_05_Quadrado.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,1];
     STGR_TRIPLAS_05_Quadrado.Cells[3,1] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_05_Quadrado.Cells[4,1] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_05_Quadrado.Cells[0,2] := '2';
     STGR_TRIPLAS_05_Quadrado.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_05_Quadrado.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_05_Quadrado.Cells[3,2] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_05_Quadrado.Cells[4,2] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_05_Quadrado.Cells[0,3] := '3';
     STGR_TRIPLAS_05_Quadrado.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_05_Quadrado.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_05_Quadrado.Cells[3,3] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_05_Quadrado.Cells[4,3] := STGR_TRIPLAS_base.Cells[1,1];
     STGR_TRIPLAS_05_Quadrado.Cells[0,4] := '4';
     STGR_TRIPLAS_05_Quadrado.Cells[1,4] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_05_Quadrado.Cells[2,4] := STGR_TRIPLAS_base.Cells[1,1];
     STGR_TRIPLAS_05_Quadrado.Cells[3,4] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_05_Quadrado.Cells[4,4] := STGR_TRIPLAS_base.Cells[3,1];



          // ========================================
      	//   TRIPLAS 05, 06, 07 e 08  - Combinações
	     // ========================================

     VI_LINHAS2 := 1 ;
     FOR VI_COMBINACOES_INI01 :=1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES01 := 1 TO STGR_TRIPLAS_05_Vertical.RowCount-1 DO
          BEGIN
               FOR VI_COMBINACOES02 := 1 TO STGR_TRIPLAS_05_Horizontal.RowCount-1 DO
               BEGIN
                    FOR VI_COMBINACOES03 := 1 TO STGR_TRIPLAS_05_L.RowCount-1 DO
                    BEGIN
                         FOR VI_COMBINACOES04 := 1 TO STGR_TRIPLAS_05_Quadrado.RowCount-1 DO
                         BEGIN
                              IF (VI_COMBINACOES_INI01=1) THEN
                              BEGIN
                                   STGR_TRIPLAS_05_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_05_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_05_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_05_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_05_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_05_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_05_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_05_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_05_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_05_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_05_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_05_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_05_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=2) THEN
                              BEGIN
                                   STGR_TRIPLAS_05_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_05_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_05_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_05_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_06_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_05_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_06_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_05_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_06_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_05_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_06_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_05_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_06_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=3) THEN
                              BEGIN
                                   STGR_TRIPLAS_05_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_05_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_05_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_05_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_07_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_05_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_07_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_05_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_07_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_05_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_07_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_05_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_07_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=4) THEN
                              BEGIN
                                  STGR_TRIPLAS_05_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_05_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_05_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_05_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_08_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_05_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_08_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_05_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_08_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_05_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_08_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_05_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_08_L.Cells[2,VI_COMBINACOES03]         ;
                              END; // IF

                              STGR_TRIPLAS_05_Combinacoes.Cells[8,VI_LINHAS2]:= STGR_TRIPLAS_05_Quadrado.Cells[1,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_05_Combinacoes.Cells[9,VI_LINHAS2]:= STGR_TRIPLAS_05_Quadrado.Cells[2,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_05_Combinacoes.Cells[10,VI_LINHAS2]:= STGR_TRIPLAS_05_Quadrado.Cells[3,VI_COMBINACOES04] ;
                              STGR_TRIPLAS_05_Combinacoes.Cells[11,VI_LINHAS2]:= STGR_TRIPLAS_05_Quadrado.Cells[4,VI_COMBINACOES04] ;
                              VI_LINHAS2:=  VI_LINHAS2 +  1;
                         end;  //FOR VI_COMBINACOES04
                    end;  //FOR VI_COMBINACOES03
               end;  //FOR VI_COMBINACOES02
          end;  //FOR VI_COMBINACOES01
     END; // FOR VI_COMBINACOES_INI01
     STGR_TRIPLAS_05_Combinacoes.RowCount := (96*4)+1;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_05_Combinacoes.RowCount-1) DO
     BEGIN
               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_05_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
     END; // FOR VI_COMBINACOES01
               // ---------------------------
               // --  Contando os pares    --
               // ---------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_05_Combinacoes.RowCount-1) DO
     BEGIN
          VI_CONTAR := 0;
          FOR VI_COMBINACOES02:= 3 TO 11 DO
          BEGIN
               IF (STRtoINT(STGR_TRIPLAS_05_Combinacoes.Cells[VI_COMBINACOES02,VI_COMBINACOES01]) MOD 2) = 0 THEN
                    VI_CONTAR := VI_CONTAR +1;
          end; // for
          IF NOT(VI_CONTAR = 4) THEN
                STGR_TRIPLAS_05_Combinacoes.Cells [2 ,VI_COMBINACOES01] := 'F';
     end; // for
     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_05_Combinacoes.RowCount-1) DO
     BEGIN
          IF (STGR_TRIPLAS_05_Combinacoes.Cells [1,VI_COMBINACOES01] = 'V') AND (STGR_TRIPLAS_05_Combinacoes.Cells [2,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TRIPLAS_05_COMB_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_TRIPLAS_05_COMB_100REP.Repaint;



          // ===============================
      	//   TRIPLAS 09  - linha vertical
	     // ===============================
     STGR_TRIPLAS_09_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_09_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_09_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_09_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 09  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_09_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_09_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_09_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_09_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_09_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_09_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_09_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 09  - L
	     // ===============================
     STGR_TRIPLAS_09_L.Cells[0,1] := '1';
     STGR_TRIPLAS_09_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_09_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,1];
     STGR_TRIPLAS_09_L.Cells[0,2] := '2';
     STGR_TRIPLAS_09_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_09_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_09_L.Cells[0,3] := '3';
     STGR_TRIPLAS_09_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_09_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_09_L.Cells[0,4] := '4';
     STGR_TRIPLAS_09_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_09_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_09_L.Cells[0,5] := '5';
     STGR_TRIPLAS_09_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_09_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_09_L.Cells[0,6] := '6';
     STGR_TRIPLAS_09_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_09_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[2,2];



          // ===============================
      	//   TRIPLAS 10  - linha vertical
	     // ===============================
     STGR_TRIPLAS_10_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_10_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_10_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_10_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 10  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_10_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_10_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_10_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_10_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_10_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_10_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_10_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 10  - L
	     // ===============================
     STGR_TRIPLAS_10_L.Cells[0,1] := '1';
     STGR_TRIPLAS_10_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_10_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,1];
     STGR_TRIPLAS_10_L.Cells[0,2] := '2';
     STGR_TRIPLAS_10_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_10_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_10_L.Cells[0,3] := '3';
     STGR_TRIPLAS_10_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_10_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_10_L.Cells[0,4] := '4';
     STGR_TRIPLAS_10_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_10_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_10_L.Cells[0,5] := '5';
     STGR_TRIPLAS_10_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_10_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_10_L.Cells[0,6] := '6';
     STGR_TRIPLAS_10_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_10_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[1,2];


          // =================================
      	//   TRIPLAS 09 e 10  - Quadrado
	     // =================================
     STGR_TRIPLAS_09_Quadrado.Cells[0,1] := '1';
     STGR_TRIPLAS_09_Quadrado.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_09_Quadrado.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_09_Quadrado.Cells[3,1] := STGR_TRIPLAS_base.Cells[3,3] ;
     STGR_TRIPLAS_09_Quadrado.Cells[4,1] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_09_Quadrado.Cells[0,2] := '2';
     STGR_TRIPLAS_09_Quadrado.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,3] ;
     STGR_TRIPLAS_09_Quadrado.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_09_Quadrado.Cells[3,2] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_09_Quadrado.Cells[4,2] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_09_Quadrado.Cells[0,3] := '3';
     STGR_TRIPLAS_09_Quadrado.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_09_Quadrado.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_09_Quadrado.Cells[3,3] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_09_Quadrado.Cells[4,3] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_09_Quadrado.Cells[0,4] := '4';
     STGR_TRIPLAS_09_Quadrado.Cells[1,4] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_09_Quadrado.Cells[2,4] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_09_Quadrado.Cells[3,4] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_09_Quadrado.Cells[4,4] := STGR_TRIPLAS_base.Cells[3,3];


          // ===================================
      	//   TRIPLAS 09 e 10  - Combinações
	     // ===================================

     VI_LINHAS2 := 1 ;
     FOR VI_COMBINACOES_INI01 :=1 TO 2 DO
     BEGIN
          FOR VI_COMBINACOES01 := 1 TO STGR_TRIPLAS_09_Vertical.RowCount-1 DO
          BEGIN
               FOR VI_COMBINACOES02 := 1 TO STGR_TRIPLAS_09_Horizontal.RowCount-1 DO
               BEGIN
                    FOR VI_COMBINACOES03 := 1 TO STGR_TRIPLAS_09_L.RowCount-1 DO
                    BEGIN
                         FOR VI_COMBINACOES04 := 1 TO STGR_TRIPLAS_09_Quadrado.RowCount-1 DO
                         BEGIN
                              IF (VI_COMBINACOES_INI01=1) THEN
                              BEGIN
                                   STGR_TRIPLAS_09_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_09_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_09_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_09_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_09_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_09_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_09_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_09_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_09_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_09_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_09_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_09_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_09_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=2) THEN
                              BEGIN
                                   STGR_TRIPLAS_09_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_09_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_09_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_09_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_10_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_09_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_10_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_09_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_10_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_09_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_10_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_09_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_10_L.Cells[2,VI_COMBINACOES03]         ;
                              END; // IF

                              STGR_TRIPLAS_09_Combinacoes.Cells[8,VI_LINHAS2]:= STGR_TRIPLAS_09_Quadrado.Cells[1,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_09_Combinacoes.Cells[9,VI_LINHAS2]:= STGR_TRIPLAS_09_Quadrado.Cells[2,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_09_Combinacoes.Cells[10,VI_LINHAS2]:= STGR_TRIPLAS_09_Quadrado.Cells[3,VI_COMBINACOES04] ;
                              STGR_TRIPLAS_09_Combinacoes.Cells[11,VI_LINHAS2]:= STGR_TRIPLAS_09_Quadrado.Cells[4,VI_COMBINACOES04] ;
                              VI_LINHAS2:=  VI_LINHAS2 +  1;
                         end;  //FOR VI_COMBINACOES04
                    end;  //FOR VI_COMBINACOES03
               end;  //FOR VI_COMBINACOES02
          end;  //FOR VI_COMBINACOES01
     END; // FOR VI_COMBINACOES_INI01
     STGR_TRIPLAS_09_Combinacoes.RowCount := (72*2)+1;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_09_Combinacoes.RowCount-1) DO
     BEGIN
               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_09_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
     END; // FOR VI_COMBINACOES01
               // ---------------------------
               // --  Contando os pares    --
               // ---------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_09_Combinacoes.RowCount-1) DO
     BEGIN
          VI_CONTAR := 0;
          FOR VI_COMBINACOES02:= 3 TO 11 DO
          BEGIN
               IF (STRtoINT(STGR_TRIPLAS_09_Combinacoes.Cells[VI_COMBINACOES02,VI_COMBINACOES01]) MOD 2) = 0 THEN
                    VI_CONTAR := VI_CONTAR +1;
          end; // for
          IF NOT(VI_CONTAR = 4) THEN
                STGR_TRIPLAS_09_Combinacoes.Cells [2 ,VI_COMBINACOES01] := 'F';
     end; // for
     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_09_Combinacoes.RowCount-1) DO
     BEGIN
          IF (STGR_TRIPLAS_09_Combinacoes.Cells [1,VI_COMBINACOES01] = 'V') AND (STGR_TRIPLAS_09_Combinacoes.Cells [2,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TRIPLAS_09_COMB_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_TRIPLAS_09_COMB_100REP.Repaint;





          // ===============================
      	//   TRIPLAS 11  - linha vertical
	     // ===============================
     STGR_TRIPLAS_11_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_11_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_11_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,5];
     STGR_TRIPLAS_11_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 11  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_11_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_11_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_11_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_11_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,1];
     STGR_TRIPLAS_11_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_11_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,1];
     STGR_TRIPLAS_11_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 11  - L
	     // ===============================
     STGR_TRIPLAS_11_L.Cells[0,1] := '1';
     STGR_TRIPLAS_11_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_11_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_11_L.Cells[0,2] := '2';
     STGR_TRIPLAS_11_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5] ;
     STGR_TRIPLAS_11_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_11_L.Cells[0,3] := '3';
     STGR_TRIPLAS_11_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_11_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_11_L.Cells[0,4] := '4';
     STGR_TRIPLAS_11_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_11_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_11_L.Cells[0,5] := '5';
     STGR_TRIPLAS_11_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_11_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_11_L.Cells[0,6] := '6';
     STGR_TRIPLAS_11_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_11_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[2,5];



          // ===============================
      	//   TRIPLAS 12  - linha vertical
	     // ===============================
     STGR_TRIPLAS_12_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_12_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_12_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_12_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 12  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_12_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_12_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_12_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_12_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,1];
     STGR_TRIPLAS_12_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_12_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,1];
     STGR_TRIPLAS_12_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 12  - L
	     // ===============================
     STGR_TRIPLAS_12_L.Cells[0,1] := '1';
     STGR_TRIPLAS_12_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_12_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_12_L.Cells[0,2] := '2';
     STGR_TRIPLAS_12_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_12_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_12_L.Cells[0,3] := '3';
     STGR_TRIPLAS_12_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_12_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,5];
     STGR_TRIPLAS_12_L.Cells[0,4] := '4';
     STGR_TRIPLAS_12_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_12_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_12_L.Cells[0,5] := '5';
     STGR_TRIPLAS_12_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_12_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_12_L.Cells[0,6] := '6';
     STGR_TRIPLAS_12_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_12_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[1,5];


          // =================================
      	//   TRIPLAS 11 e 10  - Quadrado
	     // =================================
     STGR_TRIPLAS_11_Quadrado.Cells[0,1] := '1';
     STGR_TRIPLAS_11_Quadrado.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_11_Quadrado.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_11_Quadrado.Cells[3,1] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_11_Quadrado.Cells[4,1] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_11_Quadrado.Cells[0,2] := '2';
     STGR_TRIPLAS_11_Quadrado.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_11_Quadrado.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_11_Quadrado.Cells[3,2] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_11_Quadrado.Cells[4,2] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_11_Quadrado.Cells[0,3] := '3';
     STGR_TRIPLAS_11_Quadrado.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,3] ;
     STGR_TRIPLAS_11_Quadrado.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_11_Quadrado.Cells[3,3] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_11_Quadrado.Cells[4,3] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_11_Quadrado.Cells[0,4] := '4';
     STGR_TRIPLAS_11_Quadrado.Cells[1,4] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_11_Quadrado.Cells[2,4] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_11_Quadrado.Cells[3,4] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_11_Quadrado.Cells[4,4] := STGR_TRIPLAS_base.Cells[3,2];


          // ===================================
      	//   TRIPLAS 11 e 10  - Combinações
	     // ===================================

     VI_LINHAS2 := 1 ;
     FOR VI_COMBINACOES_INI01 :=1 TO 2 DO
     BEGIN
          FOR VI_COMBINACOES01 := 1 TO STGR_TRIPLAS_11_Vertical.RowCount-1 DO
          BEGIN
               FOR VI_COMBINACOES02 := 1 TO STGR_TRIPLAS_11_Horizontal.RowCount-1 DO
               BEGIN
                    FOR VI_COMBINACOES03 := 1 TO STGR_TRIPLAS_11_L.RowCount-1 DO
                    BEGIN
                         FOR VI_COMBINACOES04 := 1 TO STGR_TRIPLAS_11_Quadrado.RowCount-1 DO
                         BEGIN
                              IF (VI_COMBINACOES_INI01=1) THEN
                              BEGIN
                                   STGR_TRIPLAS_11_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_11_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_11_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_11_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_11_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_11_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_11_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_11_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_11_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_11_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_11_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_11_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_11_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=2) THEN
                              BEGIN
                                   STGR_TRIPLAS_11_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_11_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_11_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_11_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_12_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_11_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_12_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_11_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_12_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_11_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_12_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_11_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_12_L.Cells[2,VI_COMBINACOES03]         ;
                              END; // IF

                              STGR_TRIPLAS_11_Combinacoes.Cells[8,VI_LINHAS2]:= STGR_TRIPLAS_11_Quadrado.Cells[1,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_11_Combinacoes.Cells[9,VI_LINHAS2]:= STGR_TRIPLAS_11_Quadrado.Cells[2,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_11_Combinacoes.Cells[10,VI_LINHAS2]:= STGR_TRIPLAS_11_Quadrado.Cells[3,VI_COMBINACOES04] ;
                              STGR_TRIPLAS_11_Combinacoes.Cells[11,VI_LINHAS2]:= STGR_TRIPLAS_11_Quadrado.Cells[4,VI_COMBINACOES04] ;
                              VI_LINHAS2:=  VI_LINHAS2 +  1;
                         end;  //FOR VI_COMBINACOES04
                    end;  //FOR VI_COMBINACOES03
               end;  //FOR VI_COMBINACOES02
          end;  //FOR VI_COMBINACOES01
     END; // FOR VI_COMBINACOES_INI01
     STGR_TRIPLAS_11_Combinacoes.RowCount := (72*2)+1;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_11_Combinacoes.RowCount-1) DO
     BEGIN
               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_11_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
     END; // FOR VI_COMBINACOES01
               // ---------------------------
               // --  Contando os pares    --
               // ---------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_11_Combinacoes.RowCount-1) DO
     BEGIN
          VI_CONTAR := 0;
          FOR VI_COMBINACOES02:= 3 TO 11 DO
          BEGIN
               IF (STRtoINT(STGR_TRIPLAS_11_Combinacoes.Cells[VI_COMBINACOES02,VI_COMBINACOES01]) MOD 2) = 0 THEN
                    VI_CONTAR := VI_CONTAR +1;
          end; // for
          IF NOT(VI_CONTAR = 4) THEN
                STGR_TRIPLAS_11_Combinacoes.Cells [2 ,VI_COMBINACOES01] := 'F';
     end; // for
     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_11_Combinacoes.RowCount-1) DO
     BEGIN
          IF (STGR_TRIPLAS_11_Combinacoes.Cells [1,VI_COMBINACOES01] = 'V') AND (STGR_TRIPLAS_11_Combinacoes.Cells [2,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TRIPLAS_11_COMB_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_TRIPLAS_11_COMB_100REP.Repaint;





          // ===============================
      	//   TRIPLAS 13  - linha vertical
	     // ===============================
     STGR_TRIPLAS_13_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_13_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_13_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_13_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_13_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_13_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_13_Vertical.RowCount := 3;
          // ===============================
      	//   TRIPLAS 13  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_13_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_13_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_13_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_13_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,1];
     STGR_TRIPLAS_13_Horizontal.RowCount := 3;
          // ===============================
      	//   TRIPLAS 13  - L
	     // ===============================
     STGR_TRIPLAS_13_L.Cells[0,1] := '1';
     STGR_TRIPLAS_13_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_13_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_13_L.Cells[0,2] := '2';
     STGR_TRIPLAS_13_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_13_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_13_L.Cells[0,3] := '3';
     STGR_TRIPLAS_13_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_13_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_13_L.RowCount := 4;


          // ===============================
      	//   TRIPLAS 14  - linha vertical
	     // ===============================
     STGR_TRIPLAS_14_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_14_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_14_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_14_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_14_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_14_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_14_Vertical.RowCount := 3;
          // ===============================
      	//   TRIPLAS 14  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_14_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_14_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_14_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_14_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,1];
          // ===============================
      	//   TRIPLAS 14  - L
	     // ===============================
     STGR_TRIPLAS_14_L.Cells[0,1] := '1';
     STGR_TRIPLAS_14_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_14_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_14_L.Cells[0,2] := '2';
     STGR_TRIPLAS_14_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_14_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_14_L.Cells[0,3] := '3';
     STGR_TRIPLAS_14_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_14_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_14_L.RowCount := 4;


          // ===============================
      	//   TRIPLAS 15  - linha vertical
	     // ===============================
     STGR_TRIPLAS_15_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_15_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_15_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_15_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_15_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_15_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_15_Vertical.RowCount := 3;
          // ===============================
      	//   TRIPLAS 15  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_15_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_15_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_15_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_15_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,3];
          // ===============================
      	//   TRIPLAS 15  - L
	     // ===============================
     STGR_TRIPLAS_15_L.Cells[0,1] := '1';
     STGR_TRIPLAS_15_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_15_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,1];
     STGR_TRIPLAS_15_L.Cells[0,2] := '2';
     STGR_TRIPLAS_15_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_15_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_15_L.Cells[0,3] := '3';
     STGR_TRIPLAS_15_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_15_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_15_L.RowCount := 4;



          // ===============================
      	//   TRIPLAS 16  - linha vertical
	     // ===============================
     STGR_TRIPLAS_16_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_16_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_16_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_16_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_16_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_16_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_16_Vertical.RowCount := 3;
     STGR_TRIPLAS_16_Vertical.Repaint;
          // ===============================
      	//   TRIPLAS 16  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_16_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_16_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_16_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_16_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_16_Horizontal.Repaint;     
          // ===============================
      	//   TRIPLAS 16  - L
	     // ===============================
     STGR_TRIPLAS_16_L.Cells[0,1] := '1';
     STGR_TRIPLAS_16_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_16_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,1];
     STGR_TRIPLAS_16_L.Cells[0,2] := '2';
     STGR_TRIPLAS_16_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_16_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_16_L.Cells[0,3] := '3';
     STGR_TRIPLAS_16_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_16_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_16_L.RowCount := 4;


          // =====================================
      	//   TRIPLAS 13 ao 20  - Quadrado
	     // =====================================
     STGR_TRIPLAS_16_Quadrado.Cells[0,1] := '1';
     STGR_TRIPLAS_16_Quadrado.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_16_Quadrado.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_16_Quadrado.Cells[3,1] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_16_Quadrado.Cells[4,1] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_16_Quadrado.Cells[0,2] := '2';
     STGR_TRIPLAS_16_Quadrado.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_16_Quadrado.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_16_Quadrado.Cells[3,2] := STGR_TRIPLAS_base.Cells[2,5] ;
     STGR_TRIPLAS_16_Quadrado.Cells[4,2] := STGR_TRIPLAS_base.Cells[1,5];
     STGR_TRIPLAS_16_Quadrado.Cells[0,3] := '3';
     STGR_TRIPLAS_16_Quadrado.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,5] ;
     STGR_TRIPLAS_16_Quadrado.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_16_Quadrado.Cells[3,3] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_16_Quadrado.Cells[4,3] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_16_Quadrado.Cells[0,4] := '4';
     STGR_TRIPLAS_16_Quadrado.Cells[1,4] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_16_Quadrado.Cells[2,4] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_16_Quadrado.Cells[3,4] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_16_Quadrado.Cells[4,4] := STGR_TRIPLAS_base.Cells[3,4];


          // ========================================
      	//   TRIPLAS 13 ao 20  - Combinações
	     // ========================================

     VI_LINHAS2 := 1 ;
     FOR VI_COMBINACOES_INI01 :=1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES01 := 1 TO STGR_TRIPLAS_13_Vertical.RowCount-1 DO
          BEGIN
               FOR VI_COMBINACOES02 := 1 TO STGR_TRIPLAS_13_Horizontal.RowCount-1 DO
               BEGIN
                    FOR VI_COMBINACOES03 := 1 TO STGR_TRIPLAS_13_L.RowCount-1 DO
                    BEGIN
                         FOR VI_COMBINACOES04 := 1 TO STGR_TRIPLAS_16_Quadrado.RowCount-1 DO
                         BEGIN
                              IF (VI_COMBINACOES_INI01=1) THEN
                              BEGIN
                                   STGR_TRIPLAS_16_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_16_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_16_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_16_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_13_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_16_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_13_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_16_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_13_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_16_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_13_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_16_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_13_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=2) THEN
                              BEGIN
                                   STGR_TRIPLAS_16_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_16_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_16_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_16_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_14_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_16_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_14_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_16_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_14_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_16_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_14_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_16_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_14_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=3) THEN
                              BEGIN
                                   STGR_TRIPLAS_16_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_16_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_16_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_16_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_15_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_16_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_15_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_16_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_15_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_16_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_15_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_16_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_15_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=4) THEN
                              BEGIN
                                   STGR_TRIPLAS_16_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_16_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_16_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_16_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_16_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_16_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_16_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_16_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_16_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_16_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_16_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_16_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_16_L.Cells[2,VI_COMBINACOES03]         ;
                              END; // IF

                              STGR_TRIPLAS_16_Combinacoes.Cells[8,VI_LINHAS2]:= STGR_TRIPLAS_16_Quadrado.Cells[1,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_16_Combinacoes.Cells[9,VI_LINHAS2]:= STGR_TRIPLAS_16_Quadrado.Cells[2,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_16_Combinacoes.Cells[10,VI_LINHAS2]:= STGR_TRIPLAS_16_Quadrado.Cells[3,VI_COMBINACOES04] ;
                              STGR_TRIPLAS_16_Combinacoes.Cells[11,VI_LINHAS2]:= STGR_TRIPLAS_16_Quadrado.Cells[4,VI_COMBINACOES04] ;
                              VI_LINHAS2:=  VI_LINHAS2 +  1;
                         end;  //FOR VI_COMBINACOES04
                    end;  //FOR VI_COMBINACOES03
               end;  //FOR VI_COMBINACOES02
          end;  //FOR VI_COMBINACOES01
     END; // FOR VI_COMBINACOES_INI01
     STGR_TRIPLAS_16_Combinacoes.RowCount := (48*4)+1;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_16_Combinacoes.RowCount-1) DO
     BEGIN
               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_16_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
     END; // FOR VI_COMBINACOES01
               // ---------------------------
               // --  Contando os pares    --
               // ---------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_16_Combinacoes.RowCount-1) DO
     BEGIN
          VI_CONTAR := 0;
          FOR VI_COMBINACOES02:= 3 TO 11 DO
          BEGIN
               IF (STRtoINT(STGR_TRIPLAS_16_Combinacoes.Cells[VI_COMBINACOES02,VI_COMBINACOES01]) MOD 2) = 0 THEN
                    VI_CONTAR := VI_CONTAR +1;
          end; // for
          IF NOT(VI_CONTAR = 4) THEN
                STGR_TRIPLAS_16_Combinacoes.Cells [2 ,VI_COMBINACOES01] := 'F';
     end; // for
     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_16_Combinacoes.RowCount-1) DO
     BEGIN
          IF (STGR_TRIPLAS_16_Combinacoes.Cells [1,VI_COMBINACOES01] = 'V') AND (STGR_TRIPLAS_16_Combinacoes.Cells [2,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TRIPLAS_16_COMB_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_TRIPLAS_16_COMB_100REP.Repaint;





          // ===============================
      	//   TRIPLAS 21  - linha vertical
	     // ===============================
     STGR_TRIPLAS_21_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_21_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_21_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,5];
     STGR_TRIPLAS_21_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_21_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,3] ;
     STGR_TRIPLAS_21_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_21_Vertical.RowCount := 3;
          // ===============================
      	//   TRIPLAS 21  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_21_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_21_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,5] ;
     STGR_TRIPLAS_21_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_21_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_21_Horizontal.RowCount := 3;
          // ===============================
      	//   TRIPLAS 21  - L
	     // ===============================
     STGR_TRIPLAS_21_L.Cells[0,1] := '1';
     STGR_TRIPLAS_21_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_21_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_21_L.Cells[0,2] := '2';
     STGR_TRIPLAS_21_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_21_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_21_L.Cells[0,3] := '3';
     STGR_TRIPLAS_21_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_21_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_21_L.RowCount := 4;


          // ===============================
      	//   TRIPLAS 22  - linha vertical
	     // ===============================
     STGR_TRIPLAS_22_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_22_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_22_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_22_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_22_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_22_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_22_Vertical.RowCount := 3;
          // ===============================
      	//   TRIPLAS 22  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_22_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_22_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_22_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_22_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5];
          // ===============================
      	//   TRIPLAS 22  - L
	     // ===============================
     STGR_TRIPLAS_22_L.Cells[0,1] := '1';
     STGR_TRIPLAS_22_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_22_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_22_L.Cells[0,2] := '2';
     STGR_TRIPLAS_22_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_22_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_22_L.Cells[0,3] := '3';
     STGR_TRIPLAS_22_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_22_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_22_L.RowCount := 4;


          // ===============================
      	//   TRIPLAS 23  - linha vertical
	     // ===============================
     STGR_TRIPLAS_23_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_23_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_23_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_23_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_23_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_23_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_23_Vertical.RowCount := 3;
          // ===============================
      	//   TRIPLAS 23  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_23_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_23_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_23_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_23_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,3];
          // ===============================
      	//   TRIPLAS 23  - L
	     // ===============================
     STGR_TRIPLAS_23_L.Cells[0,1] := '1';
     STGR_TRIPLAS_23_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_23_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_23_L.Cells[0,2] := '2';
     STGR_TRIPLAS_23_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_23_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_23_L.Cells[0,3] := '3';
     STGR_TRIPLAS_23_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_23_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_23_L.RowCount := 4;



          // ===============================
      	//   TRIPLAS 24  - linha vertical
	     // ===============================
     STGR_TRIPLAS_24_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_24_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,3] ;
     STGR_TRIPLAS_24_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_24_Vertical.Cells[0,2] := '2';
     STGR_TRIPLAS_24_Vertical.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_24_Vertical.Cells[2,2] := STGR_TRIPLAS_base.Cells[1,5];
     STGR_TRIPLAS_24_Vertical.RowCount := 3;
     STGR_TRIPLAS_24_Vertical.Repaint;
          // ===============================
      	//   TRIPLAS 24  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_24_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_24_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_24_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_24_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_24_Horizontal.Repaint;
          // ===============================
      	//   TRIPLAS 24  - L
	     // ===============================
     STGR_TRIPLAS_24_L.Cells[0,1] := '1';
     STGR_TRIPLAS_24_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_24_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_24_L.Cells[0,2] := '2';
     STGR_TRIPLAS_24_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5] ;
     STGR_TRIPLAS_24_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_24_L.Cells[0,3] := '3';
     STGR_TRIPLAS_24_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_24_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_24_L.RowCount := 4;


          // =====================================
      	//   TRIPLAS 21 ao 20  - Quadrado
	     // =====================================
     STGR_TRIPLAS_28_Quadrado.Cells[0,1] := '1';
     STGR_TRIPLAS_28_Quadrado.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_28_Quadrado.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,1];
     STGR_TRIPLAS_28_Quadrado.Cells[3,1] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_28_Quadrado.Cells[4,1] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_28_Quadrado.Cells[0,2] := '2';
     STGR_TRIPLAS_28_Quadrado.Cells[1,2] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_28_Quadrado.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_28_Quadrado.Cells[3,2] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_28_Quadrado.Cells[4,2] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_28_Quadrado.Cells[0,3] := '3';
     STGR_TRIPLAS_28_Quadrado.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_28_Quadrado.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_28_Quadrado.Cells[3,3] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_28_Quadrado.Cells[4,3] := STGR_TRIPLAS_base.Cells[1,1];
     STGR_TRIPLAS_28_Quadrado.Cells[0,4] := '4';
     STGR_TRIPLAS_28_Quadrado.Cells[1,4] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_28_Quadrado.Cells[2,4] := STGR_TRIPLAS_base.Cells[1,1];
     STGR_TRIPLAS_28_Quadrado.Cells[3,4] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_28_Quadrado.Cells[4,4] := STGR_TRIPLAS_base.Cells[3,1];


          // ========================================
      	//   TRIPLAS 21 ao 20  - Combinações
	     // ========================================

     VI_LINHAS2 := 1 ;
     FOR VI_COMBINACOES_INI01 :=1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES01 := 1 TO STGR_TRIPLAS_21_Vertical.RowCount-1 DO
          BEGIN
               FOR VI_COMBINACOES02 := 1 TO STGR_TRIPLAS_21_Horizontal.RowCount-1 DO
               BEGIN
                    FOR VI_COMBINACOES03 := 1 TO STGR_TRIPLAS_21_L.RowCount-1 DO
                    BEGIN
                         FOR VI_COMBINACOES04 := 1 TO STGR_TRIPLAS_28_Quadrado.RowCount-1 DO
                         BEGIN
                              IF (VI_COMBINACOES_INI01=1) THEN
                              BEGIN
                                   STGR_TRIPLAS_28_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_28_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_28_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_28_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_21_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_28_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_21_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_28_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_21_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_28_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_21_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_28_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_21_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=2) THEN
                              BEGIN
                                   STGR_TRIPLAS_28_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_28_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_28_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_28_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_22_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_28_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_22_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_28_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_22_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_28_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_22_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_28_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_22_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=3) THEN
                              BEGIN
                                   STGR_TRIPLAS_28_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_28_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_28_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_28_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_23_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_28_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_23_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_28_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_23_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_28_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_23_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_28_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_23_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=4) THEN
                              BEGIN
                                   STGR_TRIPLAS_28_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_28_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_28_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_28_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_24_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_28_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_24_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_28_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_24_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_28_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_24_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_28_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_24_L.Cells[2,VI_COMBINACOES03]         ;
                              END; // IF

                              STGR_TRIPLAS_28_Combinacoes.Cells[8,VI_LINHAS2]:= STGR_TRIPLAS_28_Quadrado.Cells[1,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_28_Combinacoes.Cells[9,VI_LINHAS2]:= STGR_TRIPLAS_28_Quadrado.Cells[2,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_28_Combinacoes.Cells[10,VI_LINHAS2]:= STGR_TRIPLAS_28_Quadrado.Cells[3,VI_COMBINACOES04] ;
                              STGR_TRIPLAS_28_Combinacoes.Cells[11,VI_LINHAS2]:= STGR_TRIPLAS_28_Quadrado.Cells[4,VI_COMBINACOES04] ;
                              VI_LINHAS2:=  VI_LINHAS2 +  1;
                         end;  //FOR VI_COMBINACOES04
                    end;  //FOR VI_COMBINACOES03
               end;  //FOR VI_COMBINACOES02
          end;  //FOR VI_COMBINACOES01
     END; // FOR VI_COMBINACOES_INI01
     STGR_TRIPLAS_28_Combinacoes.RowCount := (48*4)+1;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_28_Combinacoes.RowCount-1) DO
     BEGIN
               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_28_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
     END; // FOR VI_COMBINACOES01
               // ---------------------------
               // --  Contando os pares    --
               // ---------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_28_Combinacoes.RowCount-1) DO
     BEGIN
          VI_CONTAR := 0;
          FOR VI_COMBINACOES02:= 3 TO 11 DO
          BEGIN
               IF (STRtoINT(STGR_TRIPLAS_28_Combinacoes.Cells[VI_COMBINACOES02,VI_COMBINACOES01]) MOD 2) = 0 THEN
                    VI_CONTAR := VI_CONTAR +1;
          end; // for
          IF NOT(VI_CONTAR = 4) THEN
                STGR_TRIPLAS_28_Combinacoes.Cells [2 ,VI_COMBINACOES01] := 'F';
     end; // for
     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_28_Combinacoes.RowCount-1) DO
     BEGIN
          IF (STGR_TRIPLAS_28_Combinacoes.Cells [1,VI_COMBINACOES01] = 'V') AND (STGR_TRIPLAS_28_Combinacoes.Cells [2,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TRIPLAS_28_COMB_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_TRIPLAS_28_COMB_100REP.Repaint;




          // ===============================
      	//   TRIPLAS 29  - linha vertical
	     // ===============================
     STGR_TRIPLAS_29_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_29_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_29_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_29_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 29  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_29_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_29_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_29_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_29_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,1];
     STGR_TRIPLAS_29_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_29_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,1];
     STGR_TRIPLAS_29_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 29  - L
	     // ===============================
     STGR_TRIPLAS_29_L.Cells[0,1] := '1';
     STGR_TRIPLAS_29_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_29_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_29_L.Cells[0,2] := '2';
     STGR_TRIPLAS_29_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_29_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_29_L.Cells[0,3] := '3';
     STGR_TRIPLAS_29_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_29_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_29_L.RowCount := 4;


          // ===============================
      	//   TRIPLAS 30  - linha vertical
	     // ===============================
     STGR_TRIPLAS_30_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_30_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_30_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_30_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 30  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_30_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_30_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_30_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_30_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,1];
     STGR_TRIPLAS_30_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_30_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,1];
     STGR_TRIPLAS_30_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 30  - L
	     // ===============================
     STGR_TRIPLAS_30_L.Cells[0,1] := '1';
     STGR_TRIPLAS_30_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_30_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_30_L.Cells[0,2] := '2';
     STGR_TRIPLAS_30_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_30_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_30_L.Cells[0,3] := '3';
     STGR_TRIPLAS_30_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_30_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_30_L.RowCount := 4;


          // ===============================
      	//   TRIPLAS 31  - linha vertical
	     // ===============================
     STGR_TRIPLAS_31_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_31_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_31_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_31_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 31  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_31_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_31_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_31_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_31_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_31_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_31_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_31_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 31  - L
	     // ===============================
     STGR_TRIPLAS_31_L.Cells[0,1] := '1';
     STGR_TRIPLAS_31_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_31_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,1];
     STGR_TRIPLAS_31_L.Cells[0,2] := '2';
     STGR_TRIPLAS_31_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_31_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_31_L.Cells[0,3] := '3';
     STGR_TRIPLAS_31_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_31_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_31_L.RowCount := 4;



          // ===============================
      	//   TRIPLAS 32  - linha vertical
	     // ===============================
     STGR_TRIPLAS_32_Vertical.Cells[0,1] := '2';
     STGR_TRIPLAS_32_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_32_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_32_Vertical.RowCount := 2;
     STGR_TRIPLAS_32_Vertical.Repaint;
          // ===============================
      	//   TRIPLAS 32  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_32_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_32_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_32_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_32_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_32_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_32_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_32_Horizontal.RowCount := 4;
     STGR_TRIPLAS_32_Horizontal.Repaint;
          // ===============================
      	//   TRIPLAS 32  - L
	     // ===============================
     STGR_TRIPLAS_32_L.Cells[0,1] := '1';
     STGR_TRIPLAS_32_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_32_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,1];
     STGR_TRIPLAS_32_L.Cells[0,2] := '2';
     STGR_TRIPLAS_32_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_32_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_32_L.Cells[0,3] := '3';
     STGR_TRIPLAS_32_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_32_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_32_L.RowCount := 4;

          // ========================================
      	//   TRIPLAS 29 ao 32  - Combinações
	     // ========================================

     VI_LINHAS2 := 1 ;
     FOR VI_COMBINACOES_INI01 :=1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES01 := 1 TO STGR_TRIPLAS_29_Vertical.RowCount-1 DO
          BEGIN
               FOR VI_COMBINACOES02 := 1 TO STGR_TRIPLAS_29_Horizontal.RowCount-1 DO
               BEGIN
                    FOR VI_COMBINACOES03 := 1 TO STGR_TRIPLAS_29_L.RowCount-1 DO
                    BEGIN
                         FOR VI_COMBINACOES04 := 1 TO STGR_TRIPLAS_16_Quadrado.RowCount-1 DO
                         BEGIN
                              IF (VI_COMBINACOES_INI01=1) THEN
                              BEGIN
                                   STGR_TRIPLAS_32_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_32_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_32_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_32_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_29_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_32_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_29_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_32_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_29_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_32_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_29_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_32_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_29_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=2) THEN
                              BEGIN
                                   STGR_TRIPLAS_32_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_32_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_32_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_32_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_30_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_32_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_30_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_32_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_30_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_32_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_30_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_32_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_30_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=3) THEN
                              BEGIN
                                   STGR_TRIPLAS_32_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_32_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_32_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_32_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_31_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_32_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_31_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_32_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_31_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_32_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_31_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_32_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_31_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=4) THEN
                              BEGIN
                                   STGR_TRIPLAS_32_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_32_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_32_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_32_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_32_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_32_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_32_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_32_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_32_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_32_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_32_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_32_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_32_L.Cells[2,VI_COMBINACOES03]         ;
                              END; // IF

                              STGR_TRIPLAS_32_Combinacoes.Cells[8,VI_LINHAS2]:= STGR_TRIPLAS_16_Quadrado.Cells[1,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_32_Combinacoes.Cells[9,VI_LINHAS2]:= STGR_TRIPLAS_16_Quadrado.Cells[2,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_32_Combinacoes.Cells[10,VI_LINHAS2]:= STGR_TRIPLAS_16_Quadrado.Cells[3,VI_COMBINACOES04] ;
                              STGR_TRIPLAS_32_Combinacoes.Cells[11,VI_LINHAS2]:= STGR_TRIPLAS_16_Quadrado.Cells[4,VI_COMBINACOES04] ;
                              VI_LINHAS2:=  VI_LINHAS2 +  1;
                         end;  //FOR VI_COMBINACOES04
                    end;  //FOR VI_COMBINACOES03
               end;  //FOR VI_COMBINACOES02
          end;  //FOR VI_COMBINACOES01
     END; // FOR VI_COMBINACOES_INI01
     STGR_TRIPLAS_32_Combinacoes.RowCount := (36*4)+1;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_32_Combinacoes.RowCount-1) DO
     BEGIN
               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_32_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
     END; // FOR VI_COMBINACOES01
               // ---------------------------
               // --  Contando os pares    --
               // ---------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_32_Combinacoes.RowCount-1) DO
     BEGIN
          VI_CONTAR := 0;
          FOR VI_COMBINACOES02:= 3 TO 11 DO
          BEGIN
               IF (STRtoINT(STGR_TRIPLAS_32_Combinacoes.Cells[VI_COMBINACOES02,VI_COMBINACOES01]) MOD 2) = 0 THEN
                    VI_CONTAR := VI_CONTAR +1;
          end; // for
          IF NOT(VI_CONTAR = 4) THEN
                STGR_TRIPLAS_32_Combinacoes.Cells [2 ,VI_COMBINACOES01] := 'F';
     end; // for
     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_32_Combinacoes.RowCount-1) DO
     BEGIN
          IF (STGR_TRIPLAS_32_Combinacoes.Cells [1,VI_COMBINACOES01] = 'V') AND (STGR_TRIPLAS_32_Combinacoes.Cells [2,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TRIPLAS_32_COMB_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_TRIPLAS_32_COMB_100REP.Repaint;     



          // ===============================
      	//   TRIPLAS 33  - linha vertical
	     // ===============================
     STGR_TRIPLAS_33_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_33_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,3] ;
     STGR_TRIPLAS_33_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_33_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 33  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_33_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_33_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_33_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_33_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5] ;
     STGR_TRIPLAS_33_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_33_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_33_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 33  - L
	     // ===============================
     STGR_TRIPLAS_33_L.Cells[0,1] := '1';
     STGR_TRIPLAS_33_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_33_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_33_L.Cells[0,2] := '2';
     STGR_TRIPLAS_33_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_33_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_33_L.Cells[0,3] := '3';
     STGR_TRIPLAS_33_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_33_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_33_L.RowCount := 4;


          // ===============================
      	//   TRIPLAS 34  - linha vertical
	     // ===============================
     STGR_TRIPLAS_34_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_34_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_34_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_34_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 34  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_34_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_34_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_34_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_34_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_34_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_34_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_34_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 34  - L
	     // ===============================
     STGR_TRIPLAS_34_L.Cells[0,1] := '1';
     STGR_TRIPLAS_34_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_34_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_34_L.Cells[0,2] := '2';
     STGR_TRIPLAS_34_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_34_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_34_L.Cells[0,3] := '3';
     STGR_TRIPLAS_34_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_34_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_34_L.RowCount := 4;


          // ===============================
      	//   TRIPLAS 35  - linha vertical
	     // ===============================
     STGR_TRIPLAS_35_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_35_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_35_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_35_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 35  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_35_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_35_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_35_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_35_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_35_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_35_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_35_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 35  - L
	     // ===============================
     STGR_TRIPLAS_35_L.Cells[0,1] := '1';
     STGR_TRIPLAS_35_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_35_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_35_L.Cells[0,2] := '2';
     STGR_TRIPLAS_35_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_35_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_35_L.Cells[0,3] := '3';
     STGR_TRIPLAS_35_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_35_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_35_L.RowCount := 4;



          // ===============================
      	//   TRIPLAS 36  - linha vertical
	     // ===============================
     STGR_TRIPLAS_36_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_36_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_36_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,5];
     STGR_TRIPLAS_36_Vertical.RowCount := 2;
     STGR_TRIPLAS_36_Vertical.Repaint;
          // ===============================
      	//   TRIPLAS 36  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_36_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_36_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_36_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_36_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_36_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_36_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_36_Horizontal.RowCount := 4;
     STGR_TRIPLAS_36_Horizontal.Repaint;
          // ===============================
      	//   TRIPLAS 36  - L
	     // ===============================
     STGR_TRIPLAS_36_L.Cells[0,1] := '1';
     STGR_TRIPLAS_36_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_36_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_36_L.Cells[0,2] := '2';
     STGR_TRIPLAS_36_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5] ;
     STGR_TRIPLAS_36_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_36_L.Cells[0,3] := '3';
     STGR_TRIPLAS_36_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_36_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_36_L.RowCount := 4;

	 
          // ========================================
      	//   TRIPLAS 33 ao 20  - Combinações
	     // ========================================

     VI_LINHAS2 := 1 ;
     FOR VI_COMBINACOES_INI01 :=1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES01 := 1 TO STGR_TRIPLAS_33_Vertical.RowCount-1 DO
          BEGIN
               FOR VI_COMBINACOES02 := 1 TO STGR_TRIPLAS_33_Horizontal.RowCount-1 DO
               BEGIN
                    FOR VI_COMBINACOES03 := 1 TO STGR_TRIPLAS_33_L.RowCount-1 DO
                    BEGIN
                         FOR VI_COMBINACOES04 := 1 TO STGR_TRIPLAS_28_Quadrado.RowCount-1 DO
                         BEGIN
                              IF (VI_COMBINACOES_INI01=1) THEN
                              BEGIN
                                   STGR_TRIPLAS_36_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_36_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_36_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_36_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_33_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_36_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_33_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_36_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_33_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_36_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_33_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_36_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_33_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=2) THEN
                              BEGIN
                                   STGR_TRIPLAS_36_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_36_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_36_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_36_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_34_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_36_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_34_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_36_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_34_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_36_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_34_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_36_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_34_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=3) THEN
                              BEGIN
                                   STGR_TRIPLAS_36_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_36_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_36_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_36_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_35_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_36_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_35_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_36_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_35_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_36_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_35_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_36_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_35_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=4) THEN
                              BEGIN
                                   STGR_TRIPLAS_36_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_36_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_36_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_36_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_36_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_36_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_36_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_36_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_36_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_36_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_36_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_36_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_36_L.Cells[2,VI_COMBINACOES03]         ;
                              END; // IF

                              STGR_TRIPLAS_36_Combinacoes.Cells[8,VI_LINHAS2]:= STGR_TRIPLAS_28_Quadrado.Cells[1,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_36_Combinacoes.Cells[9,VI_LINHAS2]:= STGR_TRIPLAS_28_Quadrado.Cells[2,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_36_Combinacoes.Cells[10,VI_LINHAS2]:= STGR_TRIPLAS_28_Quadrado.Cells[3,VI_COMBINACOES04] ;
                              STGR_TRIPLAS_36_Combinacoes.Cells[11,VI_LINHAS2]:= STGR_TRIPLAS_28_Quadrado.Cells[4,VI_COMBINACOES04] ;
                              VI_LINHAS2:=  VI_LINHAS2 +  1;
                         end;  //FOR VI_COMBINACOES04
                    end;  //FOR VI_COMBINACOES03
               end;  //FOR VI_COMBINACOES02
          end;  //FOR VI_COMBINACOES01
     END; // FOR VI_COMBINACOES_INI01
     STGR_TRIPLAS_36_Combinacoes.RowCount := (36*4)+1;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_36_Combinacoes.RowCount-1) DO
     BEGIN
               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_36_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
     END; // FOR VI_COMBINACOES01
               // ---------------------------
               // --  Contando os pares    --
               // ---------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_36_Combinacoes.RowCount-1) DO
     BEGIN
          VI_CONTAR := 0;
          FOR VI_COMBINACOES02:= 3 TO 11 DO
          BEGIN
               IF (STRtoINT(STGR_TRIPLAS_36_Combinacoes.Cells[VI_COMBINACOES02,VI_COMBINACOES01]) MOD 2) = 0 THEN
                    VI_CONTAR := VI_CONTAR +1;
          end; // for
          IF NOT(VI_CONTAR = 4) THEN
                STGR_TRIPLAS_36_Combinacoes.Cells [2 ,VI_COMBINACOES01] := 'F';
     end; // for
     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_36_Combinacoes.RowCount-1) DO
     BEGIN
          IF (STGR_TRIPLAS_36_Combinacoes.Cells [1,VI_COMBINACOES01] = 'V') AND (STGR_TRIPLAS_36_Combinacoes.Cells [2,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TRIPLAS_36_COMB_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_TRIPLAS_36_COMB_100REP.Repaint;


          // ===============================
      	//   TRIPLAS 37  - linha vertical
	     // ===============================
     STGR_TRIPLAS_37_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_37_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_37_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_37_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 37  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_37_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_37_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_37_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_37_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_37_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_37_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,1];
     STGR_TRIPLAS_37_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 37  - L
	     // ===============================
     STGR_TRIPLAS_37_L.Cells[0,1] := '1';
     STGR_TRIPLAS_37_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_37_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_37_L.Cells[0,2] := '2';
     STGR_TRIPLAS_37_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_37_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_37_L.Cells[0,3] := '3';
     STGR_TRIPLAS_37_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_37_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_37_L.Cells[0,4] := '4';
     STGR_TRIPLAS_37_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_37_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_37_L.Cells[0,5] := '5';
     STGR_TRIPLAS_37_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_37_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_37_L.Cells[0,6] := '6';
     STGR_TRIPLAS_37_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_37_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[2,3];



          // ===============================
      	//   TRIPLAS 38  - linha vertical
	     // ===============================
     STGR_TRIPLAS_38_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_38_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,2] ;
     STGR_TRIPLAS_38_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_38_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 38  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_38_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_38_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_38_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_38_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,1];
     STGR_TRIPLAS_38_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_38_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,1];
     STGR_TRIPLAS_38_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 38  - L
	     // ===============================
     STGR_TRIPLAS_38_L.Cells[0,1] := '1';
     STGR_TRIPLAS_38_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_38_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_38_L.Cells[0,2] := '2';
     STGR_TRIPLAS_38_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_38_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_38_L.Cells[0,3] := '3';
     STGR_TRIPLAS_38_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_38_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,3];
     STGR_TRIPLAS_38_L.Cells[0,4] := '4';
     STGR_TRIPLAS_38_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_38_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_38_L.Cells[0,5] := '5';
     STGR_TRIPLAS_38_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_38_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_38_L.Cells[0,6] := '6';
     STGR_TRIPLAS_38_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_38_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[1,3];



          // ===============================
      	//   TRIPLAS 39  - linha vertical
	     // ===============================
     STGR_TRIPLAS_39_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_39_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_39_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_39_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 39  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_39_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_39_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_39_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_39_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_39_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_39_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_39_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 39  - L
	     // ===============================
     STGR_TRIPLAS_39_L.Cells[0,1] := '1';
     STGR_TRIPLAS_39_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_39_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,1];
     STGR_TRIPLAS_39_L.Cells[0,2] := '2';
     STGR_TRIPLAS_39_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,2] ;
     STGR_TRIPLAS_39_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_39_L.Cells[0,3] := '3';
     STGR_TRIPLAS_39_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_39_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_39_L.Cells[0,4] := '4';
     STGR_TRIPLAS_39_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_39_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_39_L.Cells[0,5] := '5';
     STGR_TRIPLAS_39_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_39_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_39_L.Cells[0,6] := '6';
     STGR_TRIPLAS_39_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_39_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[2,2];



          // ===============================
      	//   TRIPLAS 40  - linha vertical
	     // ===============================
     STGR_TRIPLAS_40_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_40_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,1] ;
     STGR_TRIPLAS_40_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,2];
     STGR_TRIPLAS_40_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 40  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_40_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_40_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_40_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_40_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_40_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_40_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_40_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 40  - L
	     // ===============================
     STGR_TRIPLAS_40_L.Cells[0,1] := '1';
     STGR_TRIPLAS_40_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_40_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,1];
     STGR_TRIPLAS_40_L.Cells[0,2] := '2';
     STGR_TRIPLAS_40_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,2] ;
     STGR_TRIPLAS_40_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_40_L.Cells[0,3] := '3';
     STGR_TRIPLAS_40_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_40_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,2];
     STGR_TRIPLAS_40_L.Cells[0,4] := '4';
     STGR_TRIPLAS_40_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_40_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_40_L.Cells[0,5] := '5';
     STGR_TRIPLAS_40_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[1,1] ;
     STGR_TRIPLAS_40_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[2,2];
     STGR_TRIPLAS_40_L.Cells[0,6] := '6';
     STGR_TRIPLAS_40_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[2,1] ;
     STGR_TRIPLAS_40_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[1,2];

          // ========================================
      	//   TRIPLAS 37 ao 40  - Combinações
	     // ========================================
     VI_LINHAS2 := 1 ;
     FOR VI_COMBINACOES_INI01 :=1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES01 := 1 TO STGR_TRIPLAS_37_Vertical.RowCount-1 DO
          BEGIN
               FOR VI_COMBINACOES02 := 1 TO STGR_TRIPLAS_37_Horizontal.RowCount-1 DO
               BEGIN
                    FOR VI_COMBINACOES03 := 1 TO STGR_TRIPLAS_37_L.RowCount-1 DO
                    BEGIN
                         FOR VI_COMBINACOES04 := 1 TO STGR_TRIPLAS_01_Quadrado.RowCount-1 DO
                         BEGIN
                              IF (VI_COMBINACOES_INI01=1) THEN
                              BEGIN
                                   STGR_TRIPLAS_40_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_40_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_40_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_40_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_37_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_40_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_37_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_40_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_37_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_40_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_37_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_40_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_37_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=2) THEN
                              BEGIN
                                   STGR_TRIPLAS_40_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_40_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_40_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_40_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_38_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_40_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_38_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_40_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_38_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_40_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_38_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_40_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_38_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=3) THEN
                              BEGIN
                                   STGR_TRIPLAS_40_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_40_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_40_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_40_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_39_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_40_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_39_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_40_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_39_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_40_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_39_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_40_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_39_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=4) THEN
                              BEGIN
                                   STGR_TRIPLAS_40_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_40_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_40_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_40_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_40_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_40_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_40_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_40_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_40_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_40_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_40_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_40_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_40_L.Cells[2,VI_COMBINACOES03]         ;
                              END; // IF

                              STGR_TRIPLAS_40_Combinacoes.Cells[8,VI_LINHAS2]:= STGR_TRIPLAS_01_Quadrado.Cells[1,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_40_Combinacoes.Cells[9,VI_LINHAS2]:= STGR_TRIPLAS_01_Quadrado.Cells[2,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_40_Combinacoes.Cells[10,VI_LINHAS2]:= STGR_TRIPLAS_01_Quadrado.Cells[3,VI_COMBINACOES04] ;
                              STGR_TRIPLAS_40_Combinacoes.Cells[11,VI_LINHAS2]:= STGR_TRIPLAS_01_Quadrado.Cells[4,VI_COMBINACOES04] ;
                              VI_LINHAS2:=  VI_LINHAS2 +  1;
                         end;  //FOR VI_COMBINACOES04
                    end;  //FOR VI_COMBINACOES03
               end;  //FOR VI_COMBINACOES02
          end;  //FOR VI_COMBINACOES01
     END; // FOR VI_COMBINACOES_INI01
     STGR_TRIPLAS_40_Combinacoes.RowCount := (72*4)+1;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_40_Combinacoes.RowCount-1) DO
     BEGIN
               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_40_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
     END; // FOR VI_COMBINACOES01
               // ---------------------------
               // --  Contando os pares    --
               // ---------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_40_Combinacoes.RowCount-1) DO
     BEGIN
          VI_CONTAR := 0;
          FOR VI_COMBINACOES02:= 3 TO 11 DO
          BEGIN
               IF (STRtoINT(STGR_TRIPLAS_40_Combinacoes.Cells[VI_COMBINACOES02,VI_COMBINACOES01]) MOD 2) = 0 THEN
                    VI_CONTAR := VI_CONTAR +1;
          end; // for
          IF NOT(VI_CONTAR = 4) THEN
                STGR_TRIPLAS_40_Combinacoes.Cells [2 ,VI_COMBINACOES01] := 'F';
     end; // for
     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_40_Combinacoes.RowCount-1) DO
     BEGIN
          IF (STGR_TRIPLAS_40_Combinacoes.Cells [1,VI_COMBINACOES01] = 'V') AND (STGR_TRIPLAS_40_Combinacoes.Cells [2,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TRIPLAS_40_COMB_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_TRIPLAS_40_COMB_100REP.Repaint;




          // ===============================
      	//   TRIPLAS 41  - linha vertical
	     // ===============================
     STGR_TRIPLAS_41_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_41_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_41_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_41_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 41  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_41_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_41_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_41_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_41_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_41_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_41_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_41_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 41  - L
	     // ===============================
     STGR_TRIPLAS_41_L.Cells[0,1] := '1';
     STGR_TRIPLAS_41_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_41_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_41_L.Cells[0,2] := '2';
     STGR_TRIPLAS_41_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_41_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_41_L.Cells[0,3] := '3';
     STGR_TRIPLAS_41_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_41_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_41_L.Cells[0,4] := '4';
     STGR_TRIPLAS_41_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[3,3] ;
     STGR_TRIPLAS_41_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_41_L.Cells[0,5] := '5';
     STGR_TRIPLAS_41_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_41_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_41_L.Cells[0,6] := '6';
     STGR_TRIPLAS_41_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[3,3] ;
     STGR_TRIPLAS_41_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[2,4];



          // ===============================
      	//   TRIPLAS 42  - linha vertical
	     // ===============================
     STGR_TRIPLAS_42_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_42_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,3] ;
     STGR_TRIPLAS_42_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_42_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 42  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_42_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_42_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_42_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_42_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_42_Horizontal.Cells[0,3] := '2';
     STGR_TRIPLAS_42_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_42_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 42  - L
	     // ===============================
     STGR_TRIPLAS_42_L.Cells[0,1] := '1';
     STGR_TRIPLAS_42_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_42_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_42_L.Cells[0,2] := '2';
     STGR_TRIPLAS_42_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_42_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_42_L.Cells[0,3] := '3';
     STGR_TRIPLAS_42_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_42_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,4];
     STGR_TRIPLAS_42_L.Cells[0,4] := '4';
     STGR_TRIPLAS_42_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_42_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_42_L.Cells[0,5] := '5';
     STGR_TRIPLAS_42_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_42_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_42_L.Cells[0,6] := '6';
     STGR_TRIPLAS_42_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_42_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[1,4];



          // ===============================
      	//   TRIPLAS 43  - linha vertical
	     // ===============================
     STGR_TRIPLAS_43_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_43_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_43_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[1,5];
     STGR_TRIPLAS_43_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 43  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_43_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_43_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_43_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_43_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3] ;
     STGR_TRIPLAS_43_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_43_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_43_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 43  - L
	     // ===============================
     STGR_TRIPLAS_43_L.Cells[0,1] := '1';
     STGR_TRIPLAS_43_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_43_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,4];
     STGR_TRIPLAS_43_L.Cells[0,2] := '2';
     STGR_TRIPLAS_43_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,5] ;
     STGR_TRIPLAS_43_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_43_L.Cells[0,3] := '3';
     STGR_TRIPLAS_43_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_43_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_43_L.Cells[0,4] := '4';
     STGR_TRIPLAS_43_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_43_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_43_L.Cells[0,5] := '5';
     STGR_TRIPLAS_43_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_43_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_43_L.Cells[0,6] := '6';
     STGR_TRIPLAS_43_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_43_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[2,5];




          // ===============================
      	//   TRIPLAS 44  - linha vertical
	     // ===============================
     STGR_TRIPLAS_44_Vertical.Cells[0,1] := '1';
     STGR_TRIPLAS_44_Vertical.Cells[1,1] := STGR_TRIPLAS_base.Cells[3,4] ;
     STGR_TRIPLAS_44_Vertical.Cells[2,1] := STGR_TRIPLAS_base.Cells[3,5];
     STGR_TRIPLAS_44_Vertical.RowCount := 2;
          // ===============================
      	//   TRIPLAS 44  - linha horizontal
	     // ===============================
     STGR_TRIPLAS_44_Horizontal.Cells[0,1] := '1';
     STGR_TRIPLAS_44_Horizontal.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,3] ;
     STGR_TRIPLAS_44_Horizontal.Cells[0,2] := '2';
     STGR_TRIPLAS_44_Horizontal.Cells[1,2] := STGR_TRIPLAS_base.Cells[2,3];
     STGR_TRIPLAS_44_Horizontal.Cells[0,3] := '3';
     STGR_TRIPLAS_44_Horizontal.Cells[1,3] := STGR_TRIPLAS_base.Cells[3,3];
     STGR_TRIPLAS_44_Horizontal.RowCount := 4;
          // ===============================
      	//   TRIPLAS 44  - L
	     // ===============================
     STGR_TRIPLAS_44_L.Cells[0,1] := '1';
     STGR_TRIPLAS_44_L.Cells[1,1] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_44_L.Cells[2,1] := STGR_TRIPLAS_base.Cells[2,4];
     STGR_TRIPLAS_44_L.Cells[0,2] := '2';
     STGR_TRIPLAS_44_L.Cells[1,2] := STGR_TRIPLAS_base.Cells[1,5] ;
     STGR_TRIPLAS_44_L.Cells[2,2] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_44_L.Cells[0,3] := '3';
     STGR_TRIPLAS_44_L.Cells[1,3] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_44_L.Cells[2,3] := STGR_TRIPLAS_base.Cells[1,5];
     STGR_TRIPLAS_44_L.Cells[0,4] := '4';
     STGR_TRIPLAS_44_L.Cells[1,4] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_44_L.Cells[2,4] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_44_L.Cells[0,5] := '5';
     STGR_TRIPLAS_44_L.Cells[1,5] := STGR_TRIPLAS_base.Cells[1,4] ;
     STGR_TRIPLAS_44_L.Cells[2,5] := STGR_TRIPLAS_base.Cells[2,5];
     STGR_TRIPLAS_44_L.Cells[0,6] := '6';
     STGR_TRIPLAS_44_L.Cells[1,6] := STGR_TRIPLAS_base.Cells[2,4] ;
     STGR_TRIPLAS_44_L.Cells[2,6] := STGR_TRIPLAS_base.Cells[1,5];



          // ========================================
      	//   TRIPLAS 41 ao 44  - Combinações
	     // ========================================
     VI_LINHAS2 := 1 ;
     FOR VI_COMBINACOES_INI01 :=1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES01 := 1 TO STGR_TRIPLAS_41_Vertical.RowCount-1 DO
          BEGIN
               FOR VI_COMBINACOES02 := 1 TO STGR_TRIPLAS_41_Horizontal.RowCount-1 DO
               BEGIN
                    FOR VI_COMBINACOES03 := 1 TO STGR_TRIPLAS_41_L.RowCount-1 DO
                    BEGIN
                         FOR VI_COMBINACOES04 := 1 TO STGR_TRIPLAS_05_Quadrado.RowCount-1 DO
                         BEGIN
                              IF (VI_COMBINACOES_INI01=1) THEN
                              BEGIN
                                   STGR_TRIPLAS_44_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_44_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_44_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_44_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_41_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_44_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_41_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_44_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_41_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_44_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_41_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_44_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_41_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=2) THEN
                              BEGIN
                                   STGR_TRIPLAS_44_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_44_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_44_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_44_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_42_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_44_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_42_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_44_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_42_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_44_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_42_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_44_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_42_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=3) THEN
                              BEGIN
                                   STGR_TRIPLAS_44_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_44_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_44_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_44_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_43_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_44_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_43_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_44_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_43_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_44_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_43_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_44_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_43_L.Cells[2,VI_COMBINACOES03]         ;
                              END ELSE
                              IF (VI_COMBINACOES_INI01=4) THEN
                              BEGIN
                                   STGR_TRIPLAS_44_Combinacoes.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_TRIPLAS_44_Combinacoes.Cells[1,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_44_Combinacoes.Cells[2,VI_LINHAS2]:= 'V';
                                   STGR_TRIPLAS_44_Combinacoes.Cells[3,VI_LINHAS2]:= STGR_TRIPLAS_44_Vertical.Cells[1,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_44_Combinacoes.Cells[4,VI_LINHAS2]:= STGR_TRIPLAS_44_Vertical.Cells[2,VI_COMBINACOES01]  ;
                                   STGR_TRIPLAS_44_Combinacoes.Cells[5,VI_LINHAS2]:= STGR_TRIPLAS_44_Horizontal.Cells[1,VI_COMBINACOES02];
                                   STGR_TRIPLAS_44_Combinacoes.Cells[6,VI_LINHAS2]:= STGR_TRIPLAS_44_L.Cells[1,VI_COMBINACOES03]         ;
                                   STGR_TRIPLAS_44_Combinacoes.Cells[7,VI_LINHAS2]:= STGR_TRIPLAS_44_L.Cells[2,VI_COMBINACOES03]         ;
                              END; // IF

                              STGR_TRIPLAS_44_Combinacoes.Cells[8,VI_LINHAS2]:= STGR_TRIPLAS_05_Quadrado.Cells[1,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_44_Combinacoes.Cells[9,VI_LINHAS2]:= STGR_TRIPLAS_05_Quadrado.Cells[2,VI_COMBINACOES04]  ;
                              STGR_TRIPLAS_44_Combinacoes.Cells[10,VI_LINHAS2]:= STGR_TRIPLAS_05_Quadrado.Cells[3,VI_COMBINACOES04] ;
                              STGR_TRIPLAS_44_Combinacoes.Cells[11,VI_LINHAS2]:= STGR_TRIPLAS_05_Quadrado.Cells[4,VI_COMBINACOES04] ;
                              VI_LINHAS2:=  VI_LINHAS2 +  1;
                         end;  //FOR VI_COMBINACOES04
                    end;  //FOR VI_COMBINACOES03
               end;  //FOR VI_COMBINACOES02
          end;  //FOR VI_COMBINACOES01
     END; // FOR VI_COMBINACOES_INI01
     STGR_TRIPLAS_44_Combinacoes.RowCount := (72*4)+1;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_44_Combinacoes.RowCount-1) DO
     BEGIN
               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[3,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[4,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[5,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[6,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[7,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[8,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[9,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

                    IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                         STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                         STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
                    IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[10,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                         STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';

               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
               IF  ((STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[11,VI_COMBINACOES01])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_TRIPLAS_44_Combinacoes.Cells [1 ,VI_COMBINACOES01] := 'F';
     END; // FOR VI_COMBINACOES01
               // ---------------------------
               // --  Contando os pares    --
               // ---------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_44_Combinacoes.RowCount-1) DO
     BEGIN
          VI_CONTAR := 0;
          FOR VI_COMBINACOES02:= 3 TO 11 DO
          BEGIN
               IF (STRtoINT(STGR_TRIPLAS_44_Combinacoes.Cells[VI_COMBINACOES02,VI_COMBINACOES01]) MOD 2) = 0 THEN
                    VI_CONTAR := VI_CONTAR +1;
          end; // for
          IF NOT(VI_CONTAR = 4) THEN
                STGR_TRIPLAS_44_Combinacoes.Cells [2 ,VI_COMBINACOES01] := 'F';
     end; // for
     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_44_Combinacoes.RowCount-1) DO
     BEGIN
          IF (STGR_TRIPLAS_44_Combinacoes.Cells [1,VI_COMBINACOES01] = 'V') AND (STGR_TRIPLAS_44_Combinacoes.Cells [2,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TRIPLAS_44_COMB_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_TRIPLAS_44_COMB_100REP.Repaint;


          
            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_16td_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_16td_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_16td_DADOS_TEMP')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT FIRST 10 * FROM COMBINACOES_15 ORDER BY DADOS; ')  ;
            SELF.IBQ_COMBINACOES.Open;
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          SHOWMESSAGE('OK');
end;




procedure T_F_SIM_01_FILTRO_16td.BBT_GERARClick(Sender: TObject);


     PROCEDURE  PR_GERAR_10 (VI_LINHAS9: INTEGER);
     var
          VI_CONTAR, VI_CNTCELULAS: INTEGER;
     begin
          FOR VI_CONTAR :=1 TO 25 DO
          BEGIN
               STRGR_TODOS_25.Cells[VI_CONTAR,1] :='F';
          END; // FOR VI_CONTAR
          // ----> MONTADO TODOS OS 10 DÍGITOS
          FOR VI_CONTAR :=3 TO 17 DO
          BEGIN
               STRGR_TODOS_25.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
          END; // FOR VI_CONTAR1
          VI_CNTCELULAS := 1;
          FOR VI_CONTAR :=1 TO 25 DO
          BEGIN
               IF (STRGR_TODOS_25.Cells[VI_CONTAR,1]='F') THEN
               BEGIN
                    STGR_BASE_SOMA_10NS.Cells [VI_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_25.Cells[VI_CONTAR,0]),2) ;
                    VI_CNTCELULAS := VI_CNTCELULAS+1;
               END; // IF (STRGR_TODOS_NUMEROS
          END; // FOR VI_CONTAR
     END;

     PROCEDURE PR_SOMATORIA_7_8 (VI_LINHAS9: INTEGER);
     var
          VI_CONTAR, VI_CNTCELULAS: INTEGER;
          Vsi_COMb12_1, Vsi_COMb12_2, Vsi_COMb12_3, Vsi_COMb12_4, Vsi_COMb12_5, Vsi_COMb12_6, Vsi_COMb12_7, Vsi_COMb12_8, VI_LINHAS12: SMALLINT;
     BEGIN
                         // -- Gernado OS NUMEROS NÃO SORTEADOS
                         FOR VI_CONTAR :=1 TO 25 DO
                         BEGIN
                              STRGR_TODOS_25.Cells[VI_CONTAR,1] :='F';
                         END; // FOR VI_CONTAR
                         // ----> MONTADO TODOS OS 10 DÍGITOS
                         FOR VI_CONTAR :=3 TO 17 DO
                         BEGIN
                              STRGR_TODOS_25.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
                         END; // FOR VI_CONTAR1
                         VI_CNTCELULAS := 1;
                         FOR VI_CONTAR :=1 TO 25 DO
                         BEGIN
                              IF (STRGR_TODOS_25.Cells[VI_CONTAR,1]='F') THEN
                              BEGIN
                                   STGR_BASE_SOMA_10NS.Cells [VI_CNTCELULAS, 1] := RIGHTSTR ('0'+(STRGR_TODOS_25.Cells[VI_CONTAR,0]),2) ;
                                   VI_CNTCELULAS := VI_CNTCELULAS+1;
                              END; // IF (STRGR_TODOS_NUMEROS
                         END; // FOR VI_CONTAR
                         // -- ANALISE COMBINATORIA
                         // -----------------------------------------------------------------
                         // --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 7_8 -
                         // -----------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_7_8.Cells[1,0]  := 'F';
                         FOR Vsi_COMb12_1 := 1 TO  8 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO 9  DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  10 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  10 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  10 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  10 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  10 DO
                                                       BEGIN
                                                            IF (CB_SOMA_10NS.ItemIndex =0) THEN
                                                            BEGIN
                                                                 STGR_BASE_7_8.Cells[0,VI_LINHAS12]  := '0';
                                                                 STGR_BASE_7_8.Cells[1,VI_LINHAS12]  := 'F';
                                                                 STGR_BASE_7_8.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                 STGR_BASE_7_8.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_1,1] ;
                                                                 STGR_BASE_7_8.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_2,1] ;
                                                                 STGR_BASE_7_8.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_3,1] ;
                                                                 STGR_BASE_7_8.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_4,1] ;
                                                                 STGR_BASE_7_8.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_5,1] ;
                                                                 STGR_BASE_7_8.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_6,1] ;
                                                                 STGR_BASE_7_8.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_7,1] ;
                                                                 STGR_BASE_7_8.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_7_8.Cells[3,VI_LINHAS12])
                                                                    + STRtoINT(STGR_BASE_7_8.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_7_8.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_7_8.Cells[6,VI_LINHAS12])
                                                                    + STRtoINT(STGR_BASE_7_8.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_7_8.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_7_8.Cells[9,VI_LINHAS12])
                                                                    );
                                                                 if (STRtoINT(STGR_BASE_7_8.Cells[0,VI_LINHAS12]) = 91) THEN
                                                                      STGR_BASE_7_8.Cells[1,VI_LINHAS12]  := 'V'
                                                                 ELSE
                                                                      STGR_BASE_7_8.Cells[1,VI_LINHAS12]  := 'F';
                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END ELSE
                                                            IF (CB_SOMA_10NS.ItemIndex =1) THEN
                                                            BEGIN
                                                                 FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  10 DO
                                                                 BEGIN
                                                                      STGR_BASE_7_8.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_7_8.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_7_8.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_7_8.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_7_8.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_7_8.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_7_8.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_7_8.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_7_8.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_7_8.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_7_8.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_7_8.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_7_8.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_7_8.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_7_8.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_7_8.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_7_8.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_7_8.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_7_8.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_7_8.Cells[10,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_7_8.Cells[0,VI_LINHAS12]) = 104) THEN
                                                                           STGR_BASE_7_8.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_7_8.Cells[1,VI_LINHAS12]  := 'F';
                                                                      VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                                 END; // FOR Vsi_COMb12_8 :=
                                                            END; // IF (CB_SOMA_10NS

                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
     END;


    PROCEDURE PR_ORDENAR_FILTRO_15 (VI_LINHAS9: INTEGER);
    var
        VI_CONTAR, VI_CNTCELULAS: INTEGER;
    begin
          // ************************
      	// **  Ordena os dados   **
	     // ************************
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
        END; // FOR VI_CONTAR
        // ----> MONTADO E VERIFICANDO TODOS OS 15 DÍGITOS
        FOR VI_CONTAR :=3 TO 17 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 3;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB15.Cells [VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15


        PROCEDURE PR_ORDENAR_PRE_REMOCAO (OUT VI_LINHAS9: INTEGER; OUT VI_LINHAS8: INTEGER);
    var
        VI_QTD_VERIFICAR: Integer;
        VI_CONTAR:INTEGER;
    begin
     // ****************************************
    	// ** VERIFICA SE HÁ REPETIDOS PARA TRÁS **
	// ****************************************
         // IF (STGR_COMB15.RowCount) <=4 THEN
         //      Exit;
          VI_QTD_VERIFICAR:= 1;
          CASE (STGR_COMB15.RowCount) OF
               2..149:        VI_QTD_VERIFICAR:= STGR_COMB15.RowCount;
               150..187:        VI_QTD_VERIFICAR:= 150;
               188..206:        VI_QTD_VERIFICAR:= 188;
               207..224:        VI_QTD_VERIFICAR:= 207;
               225..249:        VI_QTD_VERIFICAR:= 225;
               250..299:        VI_QTD_VERIFICAR:= 250;
               300..349:        VI_QTD_VERIFICAR:= 300;
               350..399:        VI_QTD_VERIFICAR:= 350;
               400..449:        VI_QTD_VERIFICAR:= 400;
               450..499:        VI_QTD_VERIFICAR:= 450;
               500..549:        VI_QTD_VERIFICAR:= 500;
               550..606:        VI_QTD_VERIFICAR:= 550;
               607..619:        VI_QTD_VERIFICAR:= 607;
               620..639:        VI_QTD_VERIFICAR:= 620;
               640..699:        VI_QTD_VERIFICAR:= 640;
               700..717:        VI_QTD_VERIFICAR:= 700;
               718..729:        VI_QTD_VERIFICAR:= 718;
               730..749:        VI_QTD_VERIFICAR:= 730;
               750..789:        VI_QTD_VERIFICAR:= 750;
               790..817:        VI_QTD_VERIFICAR:= 790;
               818..889:        VI_QTD_VERIFICAR:= 818;
               890..949:        VI_QTD_VERIFICAR:= 890;
               950..1089:       VI_QTD_VERIFICAR:= 950;
               1090..1249:      VI_QTD_VERIFICAR:= 1090;
               1250..1389:      VI_QTD_VERIFICAR:= 1250;
               1390..1489:      VI_QTD_VERIFICAR:= 1390;
               1500..1599:      VI_QTD_VERIFICAR:= 1500;
               1600..1749:      VI_QTD_VERIFICAR:= 1600;
               1750..1999:      VI_QTD_VERIFICAR:= 1750;
               2000..2999:      VI_QTD_VERIFICAR:= 2000;
               3000..3999:      VI_QTD_VERIFICAR:= 3000;
               4000:        VI_QTD_VERIFICAR:= 4000;
          END;
          IF (STGR_COMB15.RowCount) >=VI_QTD_VERIFICAR THEN
          BEGIN
               FOR VI_CONTAR :=  (STGR_COMB15.RowCount-VI_QTD_VERIFICAR+1) TO (STGR_COMB15.RowCount-1) DO
               BEGIN
                    IF  (STGR_COMB15.Cells[2,VI_CONTAR] = STGR_COMB15.Cells[2,VI_LINHAS9]) AND
                    (STGR_COMB15.Cells[3,VI_CONTAR] = STGR_COMB15.Cells[3,VI_LINHAS9])
                    THEN
                    BEGIN
                         IF  (STGR_COMB15.Cells[4,VI_CONTAR] = STGR_COMB15.Cells[4,VI_LINHAS9]) AND
                             (STGR_COMB15.Cells[5,VI_CONTAR] = STGR_COMB15.Cells[5,VI_LINHAS9]) AND
                             (STGR_COMB15.Cells[6,VI_CONTAR] = STGR_COMB15.Cells[6,VI_LINHAS9]) AND
                             (STGR_COMB15.Cells[7,VI_CONTAR] = STGR_COMB15.Cells[7,VI_LINHAS9]) AND
                             (STGR_COMB15.Cells[8,VI_CONTAR] = STGR_COMB15.Cells[8,VI_LINHAS9]) AND
                             (STGR_COMB15.Cells[9,VI_CONTAR] = STGR_COMB15.Cells[9,VI_LINHAS9]) AND
                             (STGR_COMB15.Cells[10,VI_CONTAR] = STGR_COMB15.Cells[10,VI_LINHAS9]) AND
                             (STGR_COMB15.Cells[11,VI_CONTAR] = STGR_COMB15.Cells[11,VI_LINHAS9]) AND
                             (STGR_COMB15.Cells[12,VI_CONTAR] = STGR_COMB15.Cells[12,VI_LINHAS9]) AND
                             (STGR_COMB15.Cells[13,VI_CONTAR] = STGR_COMB15.Cells[13,VI_LINHAS9]) AND
                             (STGR_COMB15.Cells[14,VI_CONTAR] = STGR_COMB15.Cells[14,VI_LINHAS9]) AND
                             (STGR_COMB15.Cells[15,VI_CONTAR] = STGR_COMB15.Cells[15,VI_LINHAS9]) AND
                             (STGR_COMB15.Cells[16,VI_CONTAR] = STGR_COMB15.Cells[16,VI_LINHAS9])
                             THEN
                         BEGIN
                              VI_LINHAS9 := VI_LINHAS9 - 1;
                              VI_LINHAS8 := VI_LINHAS8 - 1;
                              exit;
                         END; // if (STGR_COMB15.Cells[1,VI_CONTAR]
                    END; // if (STGR_COMB15.Cells[1,VI_CONTAR]
               END; // FOR VI_CONTAR
          END;// IF (VI_LINHAS2)
    end; //  PROCEDURE ORDENAR_PRE_REMOCAO



    PROCEDURE PR_GRAVAR_DADOS (VC_BEGIN_END: STRING; OUT VI_LINHAS2:INTEGER; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_COMBINACOES : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO FILTRO_16td_DEFINICAO (TRIPLAS1, TRIPLAS2, TRIPLAS3, TRIPLAS4, TRIPLAS5, ';
            VC_QUERY  := VC_QUERY +' DUPLAS1, DUPLAS2, DUPLAS3, DUPLAS4, DUPLAS5, EXC_1, EXC_2, FIXOS_01, FIXOS_02, FIXOS_03, FIXOS_04, FIXOS_05, CONTADOR_C1, TOTAL_CONTADOR_C1, ';
            VC_QUERY  := VC_QUERY +' DATA_DEFINICAO, HORA_DEFINICAO) VALUES('+#39+  '-T1-'   + #39 +','+#39+ '-T2-'  + #39 +','+#39+ '-T3-'+ #39 +','+#39+ '-T4-' + #39 +','+#39+ '-T5-' + #39 +','+#39+ '-D1-' + #39 +','+#39+ '-D2-' + #39 +','+#39+ '-D3-' + #39 +','+#39+ '-D4-' + #39 +','+#39+ '-D5-';
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01.Text          + #39 +','+#39+ ED_EXC_02.Text          + #39 +','+#39+ ED_FIXOS_01.Text       + #39 +','+#39+ ED_FIXOS_02.Text       + #39 +','+#39+ ED_FIXOS_03.Text       + #39 +','+#39+ ED_FIXOS_04.Text       + #39 +','+#39+ ED_FIXOS_05.Text       + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[])+ #39 +','+#39+FORMATDATETIME('h:n:s',time())   +#39+');';  
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;   
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB15.RowCount-1;
        IF ((VI_LINHAS2/7998) = (VI_LINHAS2 DIV 7998))
            or ((VI_LINHAS2/7999) = (VI_LINHAS2 DIV 7999))
            or ((VI_LINHAS2/8000) = (VI_LINHAS2 DIV 8000))
            OR (VC_BEGIN_END = 'FIM') THEN
        BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMB15.Repaint;
//            Self.Repaint;
//            Self.WindowState := wsMinimized;
//            Self.WindowState :=  wsNormal;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COMB15.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES :='';
                FOR VI_CNTCELULAS := 3 TO 17 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_COMB15.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
                END; // FOR VI_CNTCELULAS
                SELF.IBQ_COMBINACOES.SQL.Clear;
                VC_QUERY  := 'INSERT INTO FILTRO_16td_DADOS_TEMP (DADOS) VALUES(' +#39+ VC_COMBINACOES + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_16td_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            VI_LINHAS2:=1;
            STGR_COMB15.RowCount := 2;
            IF ((VI_LINHAS2/7998) = (VI_LINHAS2 DIV 7998))
                or ((VI_LINHAS2/7999) = (VI_LINHAS2 DIV 7999))
                or ((VI_LINHAS2/8000) = (VI_LINHAS2 DIV 8000))
                OR (VC_BEGIN_END = 'FIM') THEN
            BEGIN
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_16td_100REPET01' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;                  
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_16td_DADOS_TEMP')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
             end;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS


VAR
     VI_LINHAS1, VI_LINHAS2, VI_CONTADOR, VI_CONTAR_A, VI_CONTAR_B, VI_CONTAR_C, VI_CONTAR_D, VI_COMB01, VI_COMB02, VI_COMB03, VI_COMB04, VI_COMB05, VI_COMB06: INTEGER;
     VSI_SOMA_PAR, VSI_SOMA_IMPAR, VsI_COMBINACOES5 : SMALLINT;
     Vsi_COMB12_1, Vsi_COMB12_2, Vsi_COMB12_3, Vsi_COMB12_4, Vsi_COMB12_5, Vsi_COMB12_6, Vsi_COMB12_7, Vsi_COMB12_8, Vsi_COMB12_9, Vsi_COMB12_0, Vsi_COMB12_A, Vsi_COMB12_B, VI_LINHAS12: SMALLINT;
begin
     FOR VI_CONTAR_C :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_25.Cells[VI_CONTAR_C,0] :=INTtoSTR(VI_CONTAR_C);
          STRGR_TODOS_25.Cells[VI_CONTAR_C,1] :='F';
     END; // FOR VI_CONTAR
     PA_GERAR.Left := 5200;
     BBT_GERAR.Enabled := false;
     BBT_BLOCO_NOTAS.Enabled := false;
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     LA_gFIM_FILTRAR.Caption := '00/00/0000 - 00:00:00  ';
     PGBR_GERARCOMB.Position := 0;
     PGBR_REMREPET.Position := 0;
     LA_TOTAL_100REPET.Caption := '0       ';
     LA_QTD_COMB.Caption :=  'GERADOS:  0     ';
     LA_fQTD_FILTRADOS.Caption := '0       ';
     VI_LINHAS2 := 1;
     VI_LINHAS1 := VI_LINHAS2;
     PGBR_GERARCOMB.Position := 0 ;
     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_DUPLAS_Comb.RowCount-1));
     //====>> Aqui 1
     LA_BLOCO_10.Caption := 'BLOCO 01/10 ';
     LA_BLOCO_10.Repaint;
     FOR VI_COMB01 := 1{427} TO trunc((STGR_DUPLAS_Comb.RowCount-1)/1) {427} DO
     BEGIN
          IF  (STGR_DUPLAS_Comb.Cells [1,VI_COMB01] = 'F') OR (STGR_DUPLAS_Comb.Cells [2,VI_COMB01] = 'F') THEN
               CONTINUE;
          FOR VI_COMB02 := 1 TO trunc((STGR_TRIPLAS_01_Combinacoes.RowCount-1)/1) {427} DO
          BEGIN
               IF  (STGR_TRIPLAS_01_Combinacoes.Cells [1,VI_COMB02] = 'F') THEN
                    CONTINUE;
                         // 1 -- BASE 15 NUMEROS PARA ANALISE COMBINATORIA COM 12 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] := STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[2,1] := STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[3,1] := STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[4,1] := STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[5,1] := STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[6,1] := STGR_DUPLAS_Comb.Cells[8,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[7,1] :=   STGR_TRIPLAS_01_Combinacoes.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[8,1] :=   STGR_TRIPLAS_01_Combinacoes.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[9,1] :=   STGR_TRIPLAS_01_Combinacoes.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[10,1] :=  STGR_TRIPLAS_01_Combinacoes.Cells[6,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[11,1] :=  STGR_TRIPLAS_01_Combinacoes.Cells[7,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[12,1] :=  STGR_TRIPLAS_01_Combinacoes.Cells[8,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[13,1] :=  STGR_TRIPLAS_01_Combinacoes.Cells[9,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[14,1] :=  STGR_TRIPLAS_01_Combinacoes.Cells[10,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[15,1] :=  STGR_TRIPLAS_01_Combinacoes.Cells[11,VI_COMB02];
                         // --------------------------------------------------------------
                         // 1 --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 12 --
                         // --------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';
                         FOR Vsi_COMb12_1 := 1 TO  12 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  15 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  15 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  15 DO
                                                            BEGIN
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_SOMA12_2.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_9,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_0,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_A,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_B,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) = 156) THEN
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END; // FOR Vsi_COMb12_A :=
                                                            END; // FOR Vsi_COMb12_B :=
                                                       END; // FOR Vsi_COMb12_0 :=
                                                       END; // FOR Vsi_COMb12_9 :=
                                                       END; // FOR Vsi_COMb12_8 :=
                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;

                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         IF (VI_COMB02 MOD 3)=0 THEN
                         BEGIN
                              STGR_BASE_SOMA12_2.Repaint;
                              sleep(2);
                         END; // IF

                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_TRIPLAS_01_Combinacoes.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TRIPLAS_01_Combinacoes.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_TRIPLAS_01_Combinacoes.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_TRIPLAS_01_Combinacoes.Cells[6,VI_COMB02];
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_TRIPLAS_01_Combinacoes.Cells[7,VI_COMB02];
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_TRIPLAS_01_Combinacoes.Cells[8,VI_COMB02];
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_TRIPLAS_01_Combinacoes.Cells[9,VI_COMB02];
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_TRIPLAS_01_Combinacoes.Cells[10,VI_COMB02];
                    STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_TRIPLAS_01_Combinacoes.Cells[11,VI_COMB02];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[8,VI_COMB01];

                        {                         {
                         // 1 -- Gernado OS NUMEROS NÃO SORTEADOS
                         PR_GERAR_10 (VI_LINHAS2);
                         // 1 -- ANALISE COMBINATORIA
                         // -----------------------------------------------------------------
                         // 1 --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 7_8 -
                         // -----------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_7_8.Cells[1,0]  := 'F';
                         FOR Vsi_COMb12_1 := 1 TO  8 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO 9  DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  10 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  10 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  10 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  10 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  10 DO
                                                       BEGIN
                                                            IF (CB_SOMA_10NS.ItemIndex =0) THEN
                                                            BEGIN
                                                                 STGR_BASE_7_8.Cells[0,VI_LINHAS12]  := '0';
                                                                 STGR_BASE_7_8.Cells[1,VI_LINHAS12]  := 'F';
                                                                 STGR_BASE_7_8.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                 STGR_BASE_7_8.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_1,1] ;
                                                                 STGR_BASE_7_8.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_2,1] ;
                                                                 STGR_BASE_7_8.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_3,1] ;
                                                                 STGR_BASE_7_8.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_4,1] ;
                                                                 STGR_BASE_7_8.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_5,1] ;
                                                                 STGR_BASE_7_8.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_6,1] ;
                                                                 STGR_BASE_7_8.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_7,1] ;
                                                                 STGR_BASE_7_8.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_7_8.Cells[3,VI_LINHAS12])
                                                                    + STRtoINT(STGR_BASE_7_8.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_7_8.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_7_8.Cells[6,VI_LINHAS12])
                                                                    + STRtoINT(STGR_BASE_7_8.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_7_8.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_7_8.Cells[9,VI_LINHAS12])
                                                                    );
                                                                 if (STRtoINT(STGR_BASE_7_8.Cells[0,VI_LINHAS12]) = 91) THEN
                                                                      STGR_BASE_7_8.Cells[1,VI_LINHAS12]  := 'V'
                                                                 ELSE
                                                                      STGR_BASE_7_8.Cells[1,VI_LINHAS12]  := 'F';
                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END ELSE
                                                            IF (CB_SOMA_10NS.ItemIndex =1) THEN
                                                            BEGIN
                                                                 FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  10 DO
                                                                 BEGIN
                                                                      STGR_BASE_7_8.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_7_8.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_7_8.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_7_8.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_7_8.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_7_8.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_7_8.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_7_8.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_7_8.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_7_8.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_7_8.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA_10NS.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_7_8.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_7_8.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_7_8.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_7_8.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_7_8.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_7_8.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_7_8.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_7_8.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_7_8.Cells[10,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_7_8.Cells[0,VI_LINHAS12]) = 104) THEN
                                                                           STGR_BASE_7_8.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_7_8.Cells[1,VI_LINHAS12]  := 'F';
                                                                      VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                                 END; // FOR Vsi_COMb12_8 :=
                                                            END; // IF (CB_SOMA_10NS

                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
                         }
                         // 1 -- SOMATORIA DOS 7 OU 8 DENTRE OS 10 NÃO SORTEADOS
                          PR_SOMATORIA_7_8 (VI_LINHAS2) ;
                         // 1 -- CONFERINDO RESULTADO
                         for Vsi_COMb12_0 := 1 to STGR_BASE_7_8.RowCount-1 do
                         begin
                              IF (STGR_BASE_7_8.Cells[1,Vsi_COMb12_0] = 'V') THEN STGR_BASE_7_8.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_7_8.Cells[1,0] = 'F') THEN
                              CONTINUE;

                    // ******************
                    // ***  NÚMEROS FIXOS
                    if (STRtoINT(ED_fixoS_01.Text)=0) OR
                        (
                        (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                        ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                             ) AND
                         (
                         (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                         ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                             ) AND
                                  (
                                  (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text))
                                  )
                              THEN
                              BEGIN
                                   PR_ORDENAR_FILTRO_15 (VI_LINHAS2);
                                   IF (CB_POSICAO_8.ItemIndex =0) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 11) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 15)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =1) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 12) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 14)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =2) THEN
                                   BEGIN
                                        IF NOT(STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = 13) THEN
                                             CONTINUE;
                                   END; // IF
                                  // PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                   VI_LINHAS2 := VI_LINHAS2 + 1;
                                   VI_LINHAS1 := VI_LINHAS1+1 ;
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMB01, TRUNC(STGR_DUPLAS_Comb.RowCount-1));
               END; // IF
          END; // FOR VI_COMB02
          IF (VI_COMB01 MOD 5)=0 THEN
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               PGBR_GERARCOMB.Position :=  TRUNC(VI_COMB01/(STGR_DUPLAS_Comb.RowCount-1)*100);
               STGR_COMB15.RowCount := VI_LINHAS2;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               STGR_COMB15.Repaint;
               SLEEP(2);
          END;
          IF (VI_COMB01 MOD 50)=0 THEN
          BEGIN
               STGR_COMB15.RowCount := VI_LINHAS2;
               self.WindowState := wsMinimized;
               self.WindowState := wsNormal;
               sleep (4);
               STGR_COMB15.Repaint;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               LA_QTD_COMB.Repaint;
               Self.Repaint;
               sleep (40);
          END;
     END; // FOR VI_COMB01


     VI_LINHAS2 := VI_LINHAS2 + 1;
     VI_LINHAS1 := VI_LINHAS1+1 ;
     //====>> Aqui 2
     LA_BLOCO_10.Caption := 'BLOCO 02/10';
     LA_BLOCO_10.Repaint;
     FOR VI_COMB01 := 1 TO trunc((STGR_DUPLAS_Comb.RowCount-1)/1) DO
     BEGIN
          IF  (STGR_DUPLAS_Comb.Cells [1,VI_COMB01] = 'F') OR (STGR_DUPLAS_Comb.Cells [2,VI_COMB01] = 'F') THEN
               CONTINUE;
          FOR VI_COMB02 := 1 TO trunc((STGR_TRIPLAS_05_Combinacoes.RowCount-1)/1) {427} DO
          BEGIN
               IF  (STGR_TRIPLAS_05_Combinacoes.Cells [1,VI_COMB02] = 'F') THEN
                    CONTINUE;
                         // 2 -- BASE 15 NUMEROS PARA ANALISE COMBINATORIA COM 12 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] :=   STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[2,1] :=   STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[3,1] :=   STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[4,1] :=   STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[5,1] :=   STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[6,1] :=   STGR_DUPLAS_Comb.Cells[8,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[7,1] :=    STGR_TRIPLAS_05_Combinacoes.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[8,1] :=    STGR_TRIPLAS_05_Combinacoes.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[9,1] :=    STGR_TRIPLAS_05_Combinacoes.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[10,1] :=   STGR_TRIPLAS_05_Combinacoes.Cells[6,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[11,1] :=   STGR_TRIPLAS_05_Combinacoes.Cells[7,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[12,1] :=   STGR_TRIPLAS_05_Combinacoes.Cells[8,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[13,1] :=   STGR_TRIPLAS_05_Combinacoes.Cells[9,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[14,1] :=   STGR_TRIPLAS_05_Combinacoes.Cells[10,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[15,1] :=   STGR_TRIPLAS_05_Combinacoes.Cells[11,VI_COMB02];
                         // --------------------------------------------------------------
                         // 2 --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 12 --
                         // --------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';                         
                         FOR Vsi_COMb12_1 := 1 TO  12 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  15 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  15 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  15 DO
                                                            BEGIN
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_SOMA12_2.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_9,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_0,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_A,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_B,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) = 156) THEN
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END; // FOR Vsi_COMb12_A :=
                                                            END; // FOR Vsi_COMb12_B :=
                                                       END; // FOR Vsi_COMb12_0 :=
                                                       END; // FOR Vsi_COMb12_9 :=
                                                       END; // FOR Vsi_COMb12_8 :=
                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;

                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         IF (VI_COMB02 MOD 3)=0 THEN
                         BEGIN
                              STGR_BASE_SOMA12_2.Repaint;
                              sleep(2);
                         END; // IF


                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_TRIPLAS_05_Combinacoes.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TRIPLAS_05_Combinacoes.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_TRIPLAS_05_Combinacoes.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_TRIPLAS_05_Combinacoes.Cells[6,VI_COMB02];
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_TRIPLAS_05_Combinacoes.Cells[7,VI_COMB02];
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_TRIPLAS_05_Combinacoes.Cells[8,VI_COMB02];
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_TRIPLAS_05_Combinacoes.Cells[9,VI_COMB02];
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_TRIPLAS_05_Combinacoes.Cells[10,VI_COMB02];
                    STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_TRIPLAS_05_Combinacoes.Cells[11,VI_COMB02];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[8,VI_COMB01];

                         // 2 -- SOMATORIA DOS 7 OU 8 DENTRE OS 10 NÃO SORTEADOS
                          PR_SOMATORIA_7_8 (VI_LINHAS2) ;
                         // 2 -- CONFERINDO RESULTADO
                         for Vsi_COMb12_0 := 1 to STGR_BASE_7_8.RowCount-1 do
                         begin
                              IF (STGR_BASE_7_8.Cells[1,Vsi_COMb12_0] = 'V') THEN STGR_BASE_7_8.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_7_8.Cells[1,0] = 'F') THEN
                              CONTINUE;

                    // ******************
                    // ***  NÚMEROS FIXOS
                    if (STRtoINT(ED_fixoS_01.Text)=0) OR
                        (
                        (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                        ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                             ) AND
                         (
                         (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                         ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                             ) AND
                                  (
                                  (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text))
                                  )
                              THEN
                              BEGIN
                                   PR_ORDENAR_FILTRO_15 (VI_LINHAS2);

                                   IF (CB_POSICAO_8.ItemIndex =0) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 11) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 15)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =1) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 12) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 14)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =2) THEN
                                   BEGIN
                                        IF NOT(STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = 13) THEN
                                             CONTINUE;
                                   END; // IF
                                  // PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                   VI_LINHAS2 := VI_LINHAS2 + 1;
                                   VI_LINHAS1 := VI_LINHAS1+1 ;
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMB01, TRUNC(STGR_DUPLAS_Comb.RowCount-1));
               END; // IF
          END; // FOR VI_COMB02
          IF (VI_COMB01 MOD 3)=0 THEN
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               PGBR_GERARCOMB.Position :=  TRUNC(VI_COMB01/(STGR_DUPLAS_Comb.RowCount-1)*100);
               STGR_COMB15.RowCount := VI_LINHAS2;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               STGR_COMB15.Repaint;
               SLEEP(2);
          END;
          IF (VI_COMB01 MOD 60)=0 THEN
          BEGIN
               STGR_COMB15.RowCount := VI_LINHAS2;
               self.WindowState := wsMinimized;
               self.WindowState := wsNormal;
               sleep (4);
               STGR_COMB15.Repaint;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               LA_QTD_COMB.Repaint;
               Self.Repaint;
               sleep (40);
          END;
     END; // FOR VI_COMB01
     PGBR_GERARCOMB.Position := 100;
     PGBR_GERARCOMB.Repaint;
     STGR_COMB15.RowCount := VI_LINHAS2;
     self.WindowState := wsMinimized;
     self.WindowState := wsNormal;
     sleep (4);
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     LA_QTD_COMB.Repaint;
     Self.Repaint;
     sleep (240);


     VI_LINHAS2 := VI_LINHAS2 + 1;
     VI_LINHAS1 := VI_LINHAS1+1 ;
     //====>> Aqui 3
     LA_BLOCO_10.Caption := 'BLOCO 03/10';
     LA_BLOCO_10.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     FOR VI_COMB01 := 1 TO trunc((STGR_DUPLAS_Comb.RowCount-1)/1) DO
     BEGIN
          IF  (STGR_DUPLAS_Comb.Cells [1,VI_COMB01] = 'F') OR (STGR_DUPLAS_Comb.Cells [2,VI_COMB01] = 'F') THEN
               CONTINUE;
          FOR VI_COMB02 := 1 TO trunc((STGR_TRIPLAS_09_Combinacoes.RowCount-1)/1) {427} DO
          BEGIN
               IF  (STGR_TRIPLAS_09_Combinacoes.Cells [1,VI_COMB02] = 'F') THEN
                    CONTINUE;
                         // 3 -- BASE 15 NUMEROS PARA ANALISE COMBINATORIA COM 12 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] :=   STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[2,1] :=   STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[3,1] :=   STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[4,1] :=   STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[5,1] :=   STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[6,1] :=   STGR_DUPLAS_Comb.Cells[8,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[7,1] :=     STGR_TRIPLAS_09_Combinacoes.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[8,1] :=      STGR_TRIPLAS_09_Combinacoes.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[9,1] :=      STGR_TRIPLAS_09_Combinacoes.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[10,1] :=     STGR_TRIPLAS_09_Combinacoes.Cells[6,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[11,1] :=     STGR_TRIPLAS_09_Combinacoes.Cells[7,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[12,1] :=     STGR_TRIPLAS_09_Combinacoes.Cells[8,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[13,1] :=     STGR_TRIPLAS_09_Combinacoes.Cells[9,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[14,1] :=     STGR_TRIPLAS_09_Combinacoes.Cells[10,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[15,1] :=     STGR_TRIPLAS_09_Combinacoes.Cells[11,VI_COMB02];
                         // --------------------------------------------------------------
                         // 3 --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 12 --
                         // --------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';                         
                         FOR Vsi_COMb12_1 := 1 TO  12 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  15 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  15 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  15 DO
                                                            BEGIN
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_SOMA12_2.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_9,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_0,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_A,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_B,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) = 156) THEN
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END; // FOR Vsi_COMb12_A :=
                                                            END; // FOR Vsi_COMb12_B :=
                                                       END; // FOR Vsi_COMb12_0 :=
                                                       END; // FOR Vsi_COMb12_9 :=
                                                       END; // FOR Vsi_COMb12_8 :=
                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;

                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         IF (VI_COMB02 MOD 2)=0 THEN
                         BEGIN
                              STGR_BASE_SOMA12_2.Repaint;
                              sleep(2);
                         END; // IF

                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_TRIPLAS_09_Combinacoes.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TRIPLAS_09_Combinacoes.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_TRIPLAS_09_Combinacoes.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_TRIPLAS_09_Combinacoes.Cells[6,VI_COMB02];
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_TRIPLAS_09_Combinacoes.Cells[7,VI_COMB02];
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_TRIPLAS_09_Combinacoes.Cells[8,VI_COMB02];
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_TRIPLAS_09_Combinacoes.Cells[9,VI_COMB02];
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_TRIPLAS_09_Combinacoes.Cells[10,VI_COMB02];
                    STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_TRIPLAS_09_Combinacoes.Cells[11,VI_COMB02];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[8,VI_COMB01];

                         // 3 -- SOMATORIA DOS 7 OU 8 DENTRE OS 10 NÃO SORTEADOS
                          PR_SOMATORIA_7_8 (VI_LINHAS2) ;
                         // 3 -- CONFERINDO RESULTADO
                         for Vsi_COMb12_0 := 1 to STGR_BASE_7_8.RowCount-1 do
                         begin
                              IF (STGR_BASE_7_8.Cells[1,Vsi_COMb12_0] = 'V') THEN STGR_BASE_7_8.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_7_8.Cells[1,0] = 'F') THEN
                              CONTINUE;

                    // ******************
                    // ***  NÚMEROS FIXOS
                    if (STRtoINT(ED_fixoS_01.Text)=0) OR
                        (
                        (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                        ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                             ) AND
                         (
                         (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                         ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                             ) AND
                                  (
                                  (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text))
                                  )
                              THEN
                              BEGIN
                                   PR_ORDENAR_FILTRO_15 (VI_LINHAS2);
                                   IF (CB_POSICAO_8.ItemIndex =0) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 11) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 15)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =1) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 12) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 14)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =2) THEN
                                   BEGIN
                                        IF NOT(STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = 13) THEN
                                             CONTINUE;
                                   END; // IF
                                  // PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                   VI_LINHAS2 := VI_LINHAS2 + 1;
                                   VI_LINHAS1 := VI_LINHAS1+1 ;
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMB01, TRUNC(STGR_DUPLAS_Comb.RowCount-1));
               END; // IF
          END; // FOR VI_COMB02
          IF (VI_COMB01 MOD 3)=0 THEN
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               PGBR_GERARCOMB.Position :=  TRUNC(VI_COMB01/(STGR_DUPLAS_Comb.RowCount-1)*100);
               STGR_COMB15.RowCount := VI_LINHAS2;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               STGR_COMB15.Repaint;
               SLEEP(2);
          END;
          IF (VI_COMB01 MOD 60)=0 THEN
          BEGIN
               STGR_COMB15.RowCount := VI_LINHAS2;
               self.WindowState := wsMinimized;
               self.WindowState := wsNormal;
               sleep (4);
               STGR_COMB15.Repaint;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               LA_QTD_COMB.Repaint;
               Self.Repaint;
               sleep (40);
          END;
     END; // FOR VI_COMB01
     PGBR_GERARCOMB.Position := 100;
     PGBR_GERARCOMB.Repaint;
     STGR_COMB15.RowCount := VI_LINHAS2;
     self.WindowState := wsMinimized;
     self.WindowState := wsNormal;
     sleep (4);
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     LA_QTD_COMB.Repaint;
     Self.Repaint;
     sleep (240);


     VI_LINHAS2 := VI_LINHAS2 + 1;
     VI_LINHAS1 := VI_LINHAS1+1 ;
     //====>> Aqui 4
     LA_BLOCO_10.Caption := 'BLOCO 04/10';
     LA_BLOCO_10.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     FOR VI_COMB01 := 1 TO trunc((STGR_DUPLAS_Comb.RowCount-1)/1) DO
     BEGIN
          IF  (STGR_DUPLAS_Comb.Cells [1,VI_COMB01] = 'F') OR (STGR_DUPLAS_Comb.Cells [2,VI_COMB01] = 'F') THEN
               CONTINUE;
          FOR VI_COMB02 := 1 TO trunc((STGR_TRIPLAS_11_Combinacoes.RowCount-1)/1) {427} DO
          BEGIN
               IF  (STGR_TRIPLAS_11_Combinacoes.Cells [1,VI_COMB02] = 'F') THEN
                    CONTINUE;
                         // 4 -- BASE 15 NUMEROS PARA ANALISE COMBINATORIA COM 12 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] :=   STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[2,1] :=   STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[3,1] :=   STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[4,1] :=   STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[5,1] :=   STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[6,1] :=   STGR_DUPLAS_Comb.Cells[8,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[7,1] :=    STGR_TRIPLAS_11_Combinacoes.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[8,1] :=     STGR_TRIPLAS_11_Combinacoes.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[9,1] :=     STGR_TRIPLAS_11_Combinacoes.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[10,1] :=    STGR_TRIPLAS_11_Combinacoes.Cells[6,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[11,1] :=    STGR_TRIPLAS_11_Combinacoes.Cells[7,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[12,1] :=    STGR_TRIPLAS_11_Combinacoes.Cells[8,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[13,1] :=    STGR_TRIPLAS_11_Combinacoes.Cells[9,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[14,1] :=    STGR_TRIPLAS_11_Combinacoes.Cells[10,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[15,1] :=    STGR_TRIPLAS_11_Combinacoes.Cells[11,VI_COMB02];
                         // --------------------------------------------------------------
                         // 4 --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 12 --
                         // --------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';                         
                         FOR Vsi_COMb12_1 := 1 TO  12 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  15 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  15 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  15 DO
                                                            BEGIN
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_SOMA12_2.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_9,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_0,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_A,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_B,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) = 156) THEN
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END; // FOR Vsi_COMb12_A :=
                                                            END; // FOR Vsi_COMb12_B :=
                                                       END; // FOR Vsi_COMb12_0 :=
                                                       END; // FOR Vsi_COMb12_9 :=
                                                       END; // FOR Vsi_COMb12_8 :=
                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;

                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         IF (VI_COMB02 MOD 2)=0 THEN
                         BEGIN
                              STGR_BASE_SOMA12_2.Repaint;
                              sleep(2);
                         END; // IF

                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_TRIPLAS_11_Combinacoes.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TRIPLAS_11_Combinacoes.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_TRIPLAS_11_Combinacoes.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_TRIPLAS_11_Combinacoes.Cells[6,VI_COMB02];
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_TRIPLAS_11_Combinacoes.Cells[7,VI_COMB02];
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_TRIPLAS_11_Combinacoes.Cells[8,VI_COMB02];
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_TRIPLAS_11_Combinacoes.Cells[9,VI_COMB02];
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_TRIPLAS_11_Combinacoes.Cells[10,VI_COMB02];
                    STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_TRIPLAS_11_Combinacoes.Cells[11,VI_COMB02];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[8,VI_COMB01];

                         // 4 -- SOMATORIA DOS 7 OU 8 DENTRE OS 10 NÃO SORTEADOS
                          PR_SOMATORIA_7_8 (VI_LINHAS2) ;
                         // 4 -- CONFERINDO RESULTADO
                         for Vsi_COMb12_0 := 1 to STGR_BASE_7_8.RowCount-1 do
                         begin
                              IF (STGR_BASE_7_8.Cells[1,Vsi_COMb12_0] = 'V') THEN STGR_BASE_7_8.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_7_8.Cells[1,0] = 'F') THEN
                              CONTINUE;

                    // ******************
                    // ***  NÚMEROS FIXOS
                    if (STRtoINT(ED_fixoS_01.Text)=0) OR
                        (
                        (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                        ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                             ) AND
                         (
                         (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                         ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                             ) AND
                                  (
                                  (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text))
                                  )
                              THEN
                              BEGIN
                                   PR_ORDENAR_FILTRO_15 (VI_LINHAS2);
                                   IF (CB_POSICAO_8.ItemIndex =0) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 11) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 15)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =1) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 12) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 14)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =2) THEN
                                   BEGIN
                                        IF NOT(STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = 13) THEN
                                             CONTINUE;
                                   END; // IF
                                  // PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                   VI_LINHAS2 := VI_LINHAS2 + 1;
                                   VI_LINHAS1 := VI_LINHAS1+1 ;
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMB01, TRUNC(STGR_DUPLAS_Comb.RowCount-1));
               END; // IF
          END; // FOR VI_COMB02
          IF (VI_COMB01 MOD 5)=0 THEN
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               PGBR_GERARCOMB.Position :=  TRUNC(VI_COMB01/(STGR_DUPLAS_Comb.RowCount-1)*100);
               STGR_COMB15.RowCount := VI_LINHAS2;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               STGR_COMB15.Repaint;
               SLEEP(2);
          END;
          IF (VI_COMB01 MOD 50)=0 THEN
          BEGIN
               STGR_COMB15.RowCount := VI_LINHAS2;
               self.WindowState := wsMinimized;
               self.WindowState := wsNormal;
               sleep (4);
               STGR_COMB15.Repaint;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               LA_QTD_COMB.Repaint;
               Self.Repaint;
               sleep (40);
          END;
     END; // FOR VI_COMB01
     PGBR_GERARCOMB.Position := 100;
     PGBR_GERARCOMB.Repaint;
     STGR_COMB15.RowCount := VI_LINHAS2;
     self.WindowState := wsMinimized;
     self.WindowState := wsNormal;
     sleep (4);
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     LA_QTD_COMB.Repaint;
     Self.Repaint;
     sleep (240);



     VI_LINHAS2 := VI_LINHAS2 + 1;
     VI_LINHAS1 := VI_LINHAS1+1 ;
     //====>> Aqui 5
     LA_BLOCO_10.Caption := 'BLOCO 05/10';
     LA_BLOCO_10.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     FOR VI_COMB01 := 1{427} TO trunc((STGR_DUPLAS_Comb.RowCount-1)/1) {427} DO
     BEGIN
          IF  (STGR_DUPLAS_Comb.Cells [1,VI_COMB01] = 'F') OR (STGR_DUPLAS_Comb.Cells [2,VI_COMB01] = 'F') THEN
               CONTINUE;
          FOR VI_COMB02 := 1 TO trunc((STGR_TRIPLAS_16_Combinacoes.RowCount-1)/1) {427} DO
          BEGIN
               IF  (STGR_TRIPLAS_16_Combinacoes.Cells [1,VI_COMB02] = 'F') THEN
                    CONTINUE;
                         // 5 -- BASE 15 NUMEROS PARA ANALISE COMBINATORIA COM 12 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] :=   STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[2,1] :=   STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[3,1] :=   STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[4,1] :=   STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[5,1] :=   STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[6,1] :=   STGR_DUPLAS_Comb.Cells[8,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[7,1] :=    STGR_TRIPLAS_16_Combinacoes.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[8,1] :=     STGR_TRIPLAS_16_Combinacoes.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[9,1] :=     STGR_TRIPLAS_16_Combinacoes.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[10,1] :=    STGR_TRIPLAS_16_Combinacoes.Cells[6,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[11,1] :=    STGR_TRIPLAS_16_Combinacoes.Cells[7,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[12,1] :=    STGR_TRIPLAS_16_Combinacoes.Cells[8,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[13,1] :=    STGR_TRIPLAS_16_Combinacoes.Cells[9,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[14,1] :=    STGR_TRIPLAS_16_Combinacoes.Cells[10,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[15,1] :=    STGR_TRIPLAS_16_Combinacoes.Cells[11,VI_COMB02];
                         // --------------------------------------------------------------
                         // 5 --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 12 --
                         // --------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';                         
                         FOR Vsi_COMb12_1 := 1 TO  12 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  15 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  15 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  15 DO
                                                            BEGIN
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_SOMA12_2.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_9,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_0,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_A,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_B,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) = 156) THEN
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END; // FOR Vsi_COMb12_A :=
                                                            END; // FOR Vsi_COMb12_B :=
                                                       END; // FOR Vsi_COMb12_0 :=
                                                       END; // FOR Vsi_COMb12_9 :=
                                                       END; // FOR Vsi_COMb12_8 :=
                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;

                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         IF (VI_COMB02 MOD 2)=0 THEN
                         BEGIN
                              STGR_BASE_SOMA12_2.Repaint;
                              sleep(2);
                         END; // IF
                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_TRIPLAS_16_Combinacoes.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TRIPLAS_16_Combinacoes.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_TRIPLAS_16_Combinacoes.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_TRIPLAS_16_Combinacoes.Cells[6,VI_COMB02];
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_TRIPLAS_16_Combinacoes.Cells[7,VI_COMB02];
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_TRIPLAS_16_Combinacoes.Cells[8,VI_COMB02];
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_TRIPLAS_16_Combinacoes.Cells[9,VI_COMB02];
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_TRIPLAS_16_Combinacoes.Cells[10,VI_COMB02];
                    STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_TRIPLAS_16_Combinacoes.Cells[11,VI_COMB02];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[8,VI_COMB01];

                         // 5 -- SOMATORIA DOS 7 OU 8 DENTRE OS 10 NÃO SORTEADOS
                          PR_SOMATORIA_7_8 (VI_LINHAS2) ;
                         // 5 -- CONFERINDO RESULTADO
                         for Vsi_COMb12_0 := 1 to STGR_BASE_7_8.RowCount-1 do
                         begin
                              IF (STGR_BASE_7_8.Cells[1,Vsi_COMb12_0] = 'V') THEN STGR_BASE_7_8.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_7_8.Cells[1,0] = 'F') THEN
                              CONTINUE;

                    // ******************
                    // ***  NÚMEROS FIXOS
                    if (STRtoINT(ED_fixoS_01.Text)=0) OR
                        (
                        (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                        ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                             ) AND
                         (
                         (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                         ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                             ) AND
                                  (
                                  (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text))
                                  )
                              THEN
                              BEGIN
                                   PR_ORDENAR_FILTRO_15 (VI_LINHAS2);
                                   IF (CB_POSICAO_8.ItemIndex =0) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 11) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 15)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =1) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 12) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 14)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =2) THEN
                                   BEGIN
                                        IF NOT(STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = 13) THEN
                                             CONTINUE;
                                   END; // IF
                                  // PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                   VI_LINHAS2 := VI_LINHAS2 + 1;
                                   VI_LINHAS1 := VI_LINHAS1+1 ;
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMB01, TRUNC(STGR_DUPLAS_Comb.RowCount-1));
               END; // IF
          END; // FOR VI_COMB02
          IF (VI_COMB01 MOD 5)=0 THEN
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               PGBR_GERARCOMB.Position :=  TRUNC(VI_COMB01/(STGR_DUPLAS_Comb.RowCount-1)*100);
               STGR_COMB15.RowCount := VI_LINHAS2;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               STGR_COMB15.Repaint;
               SLEEP(1);
          END;
          IF (VI_COMB01 MOD 50)=0 THEN
          BEGIN
               STGR_COMB15.RowCount := VI_LINHAS2;
               self.WindowState := wsMinimized;
               self.WindowState := wsNormal;
               sleep (5);
               STGR_COMB15.Repaint;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               LA_QTD_COMB.Repaint;
               Self.Repaint;
               sleep (90);
          END;
     END; // FOR VI_COMB01
     PGBR_GERARCOMB.Position := 100;
     PGBR_GERARCOMB.Repaint;
     STGR_COMB15.RowCount := VI_LINHAS2;
     self.WindowState := wsMinimized;
     self.WindowState := wsNormal;
     sleep (4);
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     LA_QTD_COMB.Repaint;
     Self.Repaint;
     sleep (240);



     VI_LINHAS2 := VI_LINHAS2 + 1;
     VI_LINHAS1 := VI_LINHAS1+1 ;
     //====>> Aqui 6
     LA_BLOCO_10.Caption := 'BLOCO 06/10';
     LA_BLOCO_10.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     FOR VI_COMB01 := 1{427} TO trunc((STGR_DUPLAS_Comb.RowCount-1)/1) {427} DO
     BEGIN
          IF  (STGR_DUPLAS_Comb.Cells [1,VI_COMB01] = 'F') OR (STGR_DUPLAS_Comb.Cells [2,VI_COMB01] = 'F') THEN
               CONTINUE;
          FOR VI_COMB02 := 1 TO trunc((STGR_TRIPLAS_28_Combinacoes.RowCount-1)/1) {427} DO
          BEGIN
               IF  (STGR_TRIPLAS_28_Combinacoes.Cells [1,VI_COMB02] = 'F') THEN
                    CONTINUE;
                         // 6 -- BASE 15 NUMEROS PARA ANALISE COMBINATORIA COM 12 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] :=   STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[2,1] :=   STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[3,1] :=   STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[4,1] :=   STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[5,1] :=   STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[6,1] :=   STGR_DUPLAS_Comb.Cells[8,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[7,1] :=     STGR_TRIPLAS_28_Combinacoes.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[8,1] :=      STGR_TRIPLAS_28_Combinacoes.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[9,1] :=      STGR_TRIPLAS_28_Combinacoes.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[10,1] :=     STGR_TRIPLAS_28_Combinacoes.Cells[6,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[11,1] :=     STGR_TRIPLAS_28_Combinacoes.Cells[7,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[12,1] :=     STGR_TRIPLAS_28_Combinacoes.Cells[8,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[13,1] :=     STGR_TRIPLAS_28_Combinacoes.Cells[9,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[14,1] :=     STGR_TRIPLAS_28_Combinacoes.Cells[10,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[15,1] :=     STGR_TRIPLAS_28_Combinacoes.Cells[11,VI_COMB02];
                         // --------------------------------------------------------------
                         // 6 --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 12 --
                         // --------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';                         
                         FOR Vsi_COMb12_1 := 1 TO  12 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  15 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  15 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  15 DO
                                                            BEGIN
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_SOMA12_2.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_9,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_0,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_A,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_B,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) = 156) THEN
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END; // FOR Vsi_COMb12_A :=
                                                            END; // FOR Vsi_COMb12_B :=
                                                       END; // FOR Vsi_COMb12_0 :=
                                                       END; // FOR Vsi_COMb12_9 :=
                                                       END; // FOR Vsi_COMb12_8 :=
                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;

                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         IF (VI_COMB02 MOD 2)=0 THEN
                         BEGIN
                              STGR_BASE_SOMA12_2.Repaint;
                              sleep(2);
                         END; // IF

                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_TRIPLAS_28_Combinacoes.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TRIPLAS_28_Combinacoes.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_TRIPLAS_28_Combinacoes.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_TRIPLAS_28_Combinacoes.Cells[6,VI_COMB02];
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_TRIPLAS_28_Combinacoes.Cells[7,VI_COMB02];
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_TRIPLAS_28_Combinacoes.Cells[8,VI_COMB02];
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_TRIPLAS_28_Combinacoes.Cells[9,VI_COMB02];
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_TRIPLAS_28_Combinacoes.Cells[10,VI_COMB02];
                    STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_TRIPLAS_28_Combinacoes.Cells[11,VI_COMB02];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[8,VI_COMB01];

                         // 6 -- SOMATORIA DOS 7 OU 8 DENTRE OS 10 NÃO SORTEADOS
                          PR_SOMATORIA_7_8 (VI_LINHAS2) ;
                         // 6 -- CONFERINDO RESULTADO
                         for Vsi_COMb12_0 := 1 to STGR_BASE_7_8.RowCount-1 do
                         begin
                              IF (STGR_BASE_7_8.Cells[1,Vsi_COMb12_0] = 'V') THEN STGR_BASE_7_8.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_7_8.Cells[1,0] = 'F') THEN
                              CONTINUE;

                    // ******************
                    // ***  NÚMEROS FIXOS
                    if (STRtoINT(ED_fixoS_01.Text)=0) OR
                        (
                        (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                        ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                             ) AND
                         (
                         (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                         ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                             ) AND
                                  (
                                  (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text))
                                  )
                              THEN
                              BEGIN
                                   PR_ORDENAR_FILTRO_15 (VI_LINHAS2);
                                   IF (CB_POSICAO_8.ItemIndex =0) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 11) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 15)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =1) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 12) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 14)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =2) THEN
                                   BEGIN
                                        IF NOT(STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = 13) THEN
                                             CONTINUE;
                                   END; // IF
                                  // PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                   VI_LINHAS2 := VI_LINHAS2 + 1;
                                   VI_LINHAS1 := VI_LINHAS1+1 ;
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMB01, TRUNC(STGR_DUPLAS_Comb.RowCount-1));
               END; // IF
          END; // FOR VI_COMB02
          IF (VI_COMB01 MOD 5)=0 THEN
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               PGBR_GERARCOMB.Position :=  TRUNC(VI_COMB01/(STGR_DUPLAS_Comb.RowCount-1)*100);
               STGR_COMB15.RowCount := VI_LINHAS2;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               STGR_COMB15.Repaint;
               SLEEP(2);
          END;
          IF (VI_COMB01 MOD 50)=0 THEN
          BEGIN
               STGR_COMB15.RowCount := VI_LINHAS2;
               self.WindowState := wsMinimized;
               self.WindowState := wsNormal;
               sleep (4);
               STGR_COMB15.Repaint;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               LA_QTD_COMB.Repaint;
               Self.Repaint;
               sleep (60);
          END;
     END; // FOR VI_COMB01
     PGBR_GERARCOMB.Position := 100;
     PGBR_GERARCOMB.Repaint;
     STGR_COMB15.RowCount := VI_LINHAS2;
     self.WindowState := wsMinimized;
     self.WindowState := wsNormal;
     sleep (4);
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     LA_QTD_COMB.Repaint;
     Self.Repaint;
     sleep (240);



     VI_LINHAS2 := VI_LINHAS2 + 1;
     VI_LINHAS1 := VI_LINHAS1+1 ;
     //====>> Aqui 7
     LA_BLOCO_10.Caption := 'BLOCO 07/10';
     LA_BLOCO_10.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     FOR VI_COMB01 := 1{427} TO trunc((STGR_DUPLAS_Comb.RowCount-1)/1) {427} DO
     BEGIN
          IF  (STGR_DUPLAS_Comb.Cells [1,VI_COMB01] = 'F') OR (STGR_DUPLAS_Comb.Cells [2,VI_COMB01] = 'F') THEN
               CONTINUE;
          FOR VI_COMB02 := 1 TO trunc((STGR_TRIPLAS_32_Combinacoes.RowCount-1)/1) {427} DO
          BEGIN
               IF  (STGR_TRIPLAS_32_Combinacoes.Cells [1,VI_COMB02] = 'F') THEN
                    CONTINUE;
                         // 7 -- BASE 15 NUMEROS PARA ANALISE COMBINATORIA COM 12 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] :=   STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[2,1] :=   STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[3,1] :=   STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[4,1] :=   STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[5,1] :=   STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[6,1] :=   STGR_DUPLAS_Comb.Cells[8,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[7,1] :=    STGR_TRIPLAS_32_Combinacoes.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[8,1] :=     STGR_TRIPLAS_32_Combinacoes.Cells[4,VI_COMB01]; 
                         STGR_BASE_SOMA12_1.Cells[9,1] :=     STGR_TRIPLAS_32_Combinacoes.Cells[5,VI_COMB01]; 
                         STGR_BASE_SOMA12_1.Cells[10,1] :=    STGR_TRIPLAS_32_Combinacoes.Cells[6,VI_COMB02]; 
                         STGR_BASE_SOMA12_1.Cells[11,1] :=    STGR_TRIPLAS_32_Combinacoes.Cells[7,VI_COMB02]; 
                         STGR_BASE_SOMA12_1.Cells[12,1] :=    STGR_TRIPLAS_32_Combinacoes.Cells[8,VI_COMB02]; 
                         STGR_BASE_SOMA12_1.Cells[13,1] :=    STGR_TRIPLAS_32_Combinacoes.Cells[9,VI_COMB02]; 
                         STGR_BASE_SOMA12_1.Cells[14,1] :=    STGR_TRIPLAS_32_Combinacoes.Cells[10,VI_COMB02]; 
                         STGR_BASE_SOMA12_1.Cells[15,1] :=    STGR_TRIPLAS_32_Combinacoes.Cells[11,VI_COMB02];
                         // --------------------------------------------------------------
                         // 7 --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 12 --
                         // --------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';                         
                         FOR Vsi_COMb12_1 := 1 TO  12 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  15 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  15 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  15 DO
                                                            BEGIN
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_SOMA12_2.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_9,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_0,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_A,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_B,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) = 156) THEN
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END; // FOR Vsi_COMb12_A :=
                                                            END; // FOR Vsi_COMb12_B :=
                                                       END; // FOR Vsi_COMb12_0 :=
                                                       END; // FOR Vsi_COMb12_9 :=
                                                       END; // FOR Vsi_COMb12_8 :=
                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;

                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         IF (VI_COMB02 MOD 2)=0 THEN
                         BEGIN
                              STGR_BASE_SOMA12_2.Repaint;
                              sleep(2);
                         END; // IF

                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_TRIPLAS_32_Combinacoes.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TRIPLAS_32_Combinacoes.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_TRIPLAS_32_Combinacoes.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_TRIPLAS_32_Combinacoes.Cells[6,VI_COMB02];
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_TRIPLAS_32_Combinacoes.Cells[7,VI_COMB02];
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_TRIPLAS_32_Combinacoes.Cells[8,VI_COMB02];
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_TRIPLAS_32_Combinacoes.Cells[9,VI_COMB02];
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_TRIPLAS_32_Combinacoes.Cells[10,VI_COMB02];
                    STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_TRIPLAS_32_Combinacoes.Cells[11,VI_COMB02];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[8,VI_COMB01];

                         // 7 -- SOMATORIA DOS 7 OU 8 DENTRE OS 10 NÃO SORTEADOS
                          PR_SOMATORIA_7_8 (VI_LINHAS2) ;
                         // 7 -- CONFERINDO RESULTADO
                         for Vsi_COMb12_0 := 1 to STGR_BASE_7_8.RowCount-1 do
                         begin
                              IF (STGR_BASE_7_8.Cells[1,Vsi_COMb12_0] = 'V') THEN STGR_BASE_7_8.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_7_8.Cells[1,0] = 'F') THEN
                              CONTINUE;

                    // ******************
                    // ***  NÚMEROS FIXOS
                    if (STRtoINT(ED_fixoS_01.Text)=0) OR
                        (
                        (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                        ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                             ) AND
                         (
                         (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                         ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                             ) AND
                                  (
                                  (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text))
                                  )
                              THEN
                              BEGIN
                                   PR_ORDENAR_FILTRO_15 (VI_LINHAS2);
                                   IF (CB_POSICAO_8.ItemIndex =0) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 11) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 15)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =1) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 12) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 14)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =2) THEN
                                   BEGIN
                                        IF NOT(STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = 13) THEN
                                             CONTINUE;
                                   END; // IF
                                  // PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                   VI_LINHAS2 := VI_LINHAS2 + 1;
                                   VI_LINHAS1 := VI_LINHAS1+1 ;
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMB01, TRUNC(STGR_DUPLAS_Comb.RowCount-1));
               END; // IF
          END; // FOR VI_COMB02
          IF (VI_COMB01 MOD 5)=0 THEN
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               PGBR_GERARCOMB.Position :=  TRUNC(VI_COMB01/(STGR_DUPLAS_Comb.RowCount-1)*100);
               STGR_COMB15.RowCount := VI_LINHAS2;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               STGR_COMB15.Repaint;
               SLEEP(2);
          END;
          IF (VI_COMB01 MOD 50)=0 THEN
          BEGIN
               STGR_COMB15.RowCount := VI_LINHAS2;
               self.WindowState := wsMinimized;
               self.WindowState := wsNormal;
               sleep (4);
               STGR_COMB15.Repaint;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               LA_QTD_COMB.Repaint;
               Self.Repaint;
               sleep (60);
          END;
     END; // FOR VI_COMB01
     PGBR_GERARCOMB.Position := 100;
     PGBR_GERARCOMB.Repaint;
     STGR_COMB15.RowCount := VI_LINHAS2;
     self.WindowState := wsMinimized;
     self.WindowState := wsNormal;
     sleep (4);
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     LA_QTD_COMB.Repaint;
     Self.Repaint;
     sleep (240);



     VI_LINHAS2 := VI_LINHAS2 + 1;
     VI_LINHAS1 := VI_LINHAS1+1 ;
     //====>> Aqui 8
     LA_BLOCO_10.Caption := 'BLOCO 08/10';
     LA_BLOCO_10.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     FOR VI_COMB01 := 1{427} TO trunc((STGR_DUPLAS_Comb.RowCount-1)/1) {427} DO
     BEGIN
          IF  (STGR_DUPLAS_Comb.Cells [1,VI_COMB01] = 'F') OR (STGR_DUPLAS_Comb.Cells [2,VI_COMB01] = 'F') THEN
               CONTINUE;
          FOR VI_COMB02 := 1 TO trunc((STGR_TRIPLAS_36_Combinacoes.RowCount-1)/1) {427} DO
          BEGIN
               IF  (STGR_TRIPLAS_36_Combinacoes.Cells [1,VI_COMB02] = 'F') THEN
                    CONTINUE;
                         // 8 -- BASE 15 NUMEROS PARA ANALISE COMBINATORIA COM 12 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] :=   STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[2,1] :=   STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[3,1] :=   STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[4,1] :=   STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[5,1] :=   STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[6,1] :=   STGR_DUPLAS_Comb.Cells[8,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[7,1] :=     STGR_TRIPLAS_36_Combinacoes.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[8,1] :=      STGR_TRIPLAS_36_Combinacoes.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[9,1] :=      STGR_TRIPLAS_36_Combinacoes.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[10,1] :=     STGR_TRIPLAS_36_Combinacoes.Cells[6,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[11,1] :=     STGR_TRIPLAS_36_Combinacoes.Cells[7,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[12,1] :=     STGR_TRIPLAS_36_Combinacoes.Cells[8,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[13,1] :=     STGR_TRIPLAS_36_Combinacoes.Cells[9,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[14,1] :=     STGR_TRIPLAS_36_Combinacoes.Cells[10,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[15,1] :=     STGR_TRIPLAS_36_Combinacoes.Cells[11,VI_COMB02];
                         // --------------------------------------------------------------
                         // 8 --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 12 --
                         // --------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';                         
                         FOR Vsi_COMb12_1 := 1 TO  12 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  15 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  15 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  15 DO
                                                            BEGIN
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_SOMA12_2.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_9,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_0,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_A,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_B,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) = 156) THEN
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END; // FOR Vsi_COMb12_A :=
                                                            END; // FOR Vsi_COMb12_B :=
                                                       END; // FOR Vsi_COMb12_0 :=
                                                       END; // FOR Vsi_COMb12_9 :=
                                                       END; // FOR Vsi_COMb12_8 :=
                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;

                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         IF (VI_COMB02 MOD 2)=0 THEN
                         BEGIN
                              STGR_BASE_SOMA12_2.Repaint;
                              sleep(2);
                         END; // IF                         

                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_TRIPLAS_36_Combinacoes.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TRIPLAS_36_Combinacoes.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_TRIPLAS_36_Combinacoes.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_TRIPLAS_36_Combinacoes.Cells[6,VI_COMB02];
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_TRIPLAS_36_Combinacoes.Cells[7,VI_COMB02];
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_TRIPLAS_36_Combinacoes.Cells[8,VI_COMB02];
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_TRIPLAS_36_Combinacoes.Cells[9,VI_COMB02];
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_TRIPLAS_36_Combinacoes.Cells[10,VI_COMB02];
                    STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_TRIPLAS_36_Combinacoes.Cells[11,VI_COMB02];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[8,VI_COMB01];

                         // 8 -- SOMATORIA DOS 7 OU 8 DENTRE OS 10 NÃO SORTEADOS
                          PR_SOMATORIA_7_8 (VI_LINHAS2) ;
                         // 8 -- CONFERINDO RESULTADO
                         for Vsi_COMb12_0 := 1 to STGR_BASE_7_8.RowCount-1 do
                         begin
                              IF (STGR_BASE_7_8.Cells[1,Vsi_COMb12_0] = 'V') THEN STGR_BASE_7_8.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_7_8.Cells[1,0] = 'F') THEN
                              CONTINUE;

                    // ******************
                    // ***  NÚMEROS FIXOS
                    if (STRtoINT(ED_fixoS_01.Text)=0) OR
                        (
                        (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                        ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                             ) AND
                         (
                         (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                         ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                             ) AND
                                  (
                                  (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text))
                                  )
                              THEN
                              BEGIN
                                   PR_ORDENAR_FILTRO_15 (VI_LINHAS2);
                                   IF (CB_POSICAO_8.ItemIndex =0) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 11) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 15)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =1) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 12) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 14)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =2) THEN
                                   BEGIN
                                        IF NOT(STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = 13) THEN
                                             CONTINUE;
                                   END; // IF
                                  // PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                   VI_LINHAS2 := VI_LINHAS2 + 1;
                                   VI_LINHAS1 := VI_LINHAS1+1 ;
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMB01, TRUNC(STGR_DUPLAS_Comb.RowCount-1));
               END; // IF
          END; // FOR VI_COMB02
          IF (VI_COMB01 MOD 5)=0 THEN
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               PGBR_GERARCOMB.Position :=  TRUNC(VI_COMB01/(STGR_DUPLAS_Comb.RowCount-1)*100);
               STGR_COMB15.RowCount := VI_LINHAS2;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               STGR_COMB15.Repaint;
               SLEEP(2);
          END;
          IF (VI_COMB01 MOD 50)=0 THEN
          BEGIN
               STGR_COMB15.RowCount := VI_LINHAS2;
               self.WindowState := wsMinimized;
               self.WindowState := wsNormal;
               sleep (6);
               STGR_COMB15.Repaint;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               LA_QTD_COMB.Repaint;
               Self.Repaint;
               sleep (60);
          END;
     END; // FOR VI_COMB01
     PGBR_GERARCOMB.Position := 100;
     PGBR_GERARCOMB.Repaint;
     STGR_COMB15.RowCount := VI_LINHAS2;
     self.WindowState := wsMinimized;
     self.WindowState := wsNormal;
     sleep (4);
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     LA_QTD_COMB.Repaint;
     Self.Repaint;
     sleep (240);



     VI_LINHAS2 := VI_LINHAS2 + 1;
     VI_LINHAS1 := VI_LINHAS1+1 ;
     //====>> Aqui 9
     LA_BLOCO_10.Caption := 'BLOCO 09/10';
     LA_BLOCO_10.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     FOR VI_COMB01 := 1{427} TO trunc((STGR_DUPLAS_Comb.RowCount-1)/1) {427} DO
     BEGIN
          IF  (STGR_DUPLAS_Comb.Cells [1,VI_COMB01] = 'F') OR (STGR_DUPLAS_Comb.Cells [2,VI_COMB01] = 'F') THEN
               CONTINUE;
          FOR VI_COMB02 := 1 TO trunc((STGR_TRIPLAS_40_Combinacoes.RowCount-1)/1) {427} DO
          BEGIN
               IF  (STGR_TRIPLAS_40_Combinacoes.Cells [1,VI_COMB02] = 'F') THEN
                    CONTINUE;
                         // 9 -- BASE 15 NUMEROS PARA ANALISE COMBINATORIA COM 12 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] :=   STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[2,1] :=   STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[3,1] :=   STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[4,1] :=   STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[5,1] :=   STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[6,1] :=   STGR_DUPLAS_Comb.Cells[8,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[7,1] :=     STGR_TRIPLAS_40_Combinacoes.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[8,1] :=      STGR_TRIPLAS_40_Combinacoes.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[9,1] :=      STGR_TRIPLAS_40_Combinacoes.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[10,1] :=     STGR_TRIPLAS_40_Combinacoes.Cells[6,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[11,1] :=     STGR_TRIPLAS_40_Combinacoes.Cells[7,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[12,1] :=     STGR_TRIPLAS_40_Combinacoes.Cells[8,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[13,1] :=     STGR_TRIPLAS_40_Combinacoes.Cells[9,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[14,1] :=     STGR_TRIPLAS_40_Combinacoes.Cells[10,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[15,1] :=     STGR_TRIPLAS_40_Combinacoes.Cells[11,VI_COMB02];
                         // --------------------------------------------------------------
                         // 9 --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 12 --
                         // --------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';
                         FOR Vsi_COMb12_1 := 1 TO  12 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  15 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  15 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  15 DO
                                                            BEGIN
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_SOMA12_2.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_9,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_0,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_A,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_B,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) = 156) THEN
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END; // FOR Vsi_COMb12_A :=
                                                            END; // FOR Vsi_COMb12_B :=
                                                       END; // FOR Vsi_COMb12_0 :=
                                                       END; // FOR Vsi_COMb12_9 :=
                                                       END; // FOR Vsi_COMb12_8 :=
                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;

                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         IF (VI_COMB02 MOD 2)=0 THEN
                         BEGIN
                              STGR_BASE_SOMA12_2.Repaint;
                              sleep(2);
                         END; // IF

                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_TRIPLAS_40_Combinacoes.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TRIPLAS_40_Combinacoes.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_TRIPLAS_40_Combinacoes.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_TRIPLAS_40_Combinacoes.Cells[6,VI_COMB02];
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_TRIPLAS_40_Combinacoes.Cells[7,VI_COMB02];
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_TRIPLAS_40_Combinacoes.Cells[8,VI_COMB02];
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_TRIPLAS_40_Combinacoes.Cells[9,VI_COMB02];
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_TRIPLAS_40_Combinacoes.Cells[10,VI_COMB02];
                    STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_TRIPLAS_40_Combinacoes.Cells[11,VI_COMB02];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[8,VI_COMB01];

                         // 9 -- SOMATORIA DOS 7 OU 8 DENTRE OS 10 NÃO SORTEADOS
                          PR_SOMATORIA_7_8 (VI_LINHAS2) ;
                         // 9 -- CONFERINDO RESULTADO
                         for Vsi_COMb12_0 := 1 to STGR_BASE_7_8.RowCount-1 do
                         begin
                              IF (STGR_BASE_7_8.Cells[1,Vsi_COMb12_0] = 'V') THEN STGR_BASE_7_8.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_7_8.Cells[1,0] = 'F') THEN
                              CONTINUE;

                    // ******************
                    // ***  NÚMEROS FIXOS
                    if (STRtoINT(ED_fixoS_01.Text)=0) OR
                        (
                        (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                        ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                             ) AND
                         (
                         (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                         ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                             ) AND
                                  (
                                  (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text))
                                  )
                              THEN
                              BEGIN
                                   PR_ORDENAR_FILTRO_15 (VI_LINHAS2);
                                   IF (CB_POSICAO_8.ItemIndex =0) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 11) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 15)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =1) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 12) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 14)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =2) THEN
                                   BEGIN
                                        IF NOT(STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = 13) THEN
                                             CONTINUE;
                                   END; // IF
                                  // PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                   VI_LINHAS2 := VI_LINHAS2 + 1;
                                   VI_LINHAS1 := VI_LINHAS1+1 ;
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMB01, TRUNC(STGR_DUPLAS_Comb.RowCount-1));
               END; // IF
          END; // FOR VI_COMB02
          IF (VI_COMB01 MOD 5)=0 THEN
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               PGBR_GERARCOMB.Position :=  TRUNC(VI_COMB01/(STGR_DUPLAS_Comb.RowCount-1)*100);
               STGR_COMB15.RowCount := VI_LINHAS2;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               STGR_COMB15.Repaint;
               SLEEP(2);
          END;
          IF (VI_COMB01 MOD 50)=0 THEN
          BEGIN
               STGR_COMB15.RowCount := VI_LINHAS2;
               self.WindowState := wsMinimized;
               self.WindowState := wsNormal;
               sleep (4);
               STGR_COMB15.Repaint;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               LA_QTD_COMB.Repaint;
               Self.Repaint;
               sleep (60);
          END;
     END; // FOR VI_COMB01
     PGBR_GERARCOMB.Position := 100;
     PGBR_GERARCOMB.Repaint;
     STGR_COMB15.RowCount := VI_LINHAS2;
     self.WindowState := wsMinimized;
     self.WindowState := wsNormal;
     sleep (4);
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     LA_QTD_COMB.Repaint;
     Self.Repaint;
     sleep (240);



     VI_LINHAS2 := VI_LINHAS2 + 1;
     VI_LINHAS1 := VI_LINHAS1+1 ;
     //====>> Aqui 10
     LA_BLOCO_10.Caption := 'BLOCO 10/10';
     LA_BLOCO_10.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;     
     FOR VI_COMB01 := 1{427} TO trunc((STGR_DUPLAS_Comb.RowCount-1)/1) {427} DO
     BEGIN
          IF  (STGR_DUPLAS_Comb.Cells [1,VI_COMB01] = 'F') OR (STGR_DUPLAS_Comb.Cells [2,VI_COMB01] = 'F') THEN
               CONTINUE;
          FOR VI_COMB02 := 1 TO trunc((STGR_TRIPLAS_44_Combinacoes.RowCount-1)/1) {427} DO
          BEGIN
               IF  (STGR_TRIPLAS_44_Combinacoes.Cells [1,VI_COMB02] = 'F') THEN
                    CONTINUE;
                         // 10 -- BASE 15 NUMEROS PARA ANALISE COMBINATORIA COM 12 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] :=   STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[2,1] :=   STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[3,1] :=   STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[4,1] :=   STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[5,1] :=   STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[6,1] :=   STGR_DUPLAS_Comb.Cells[8,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[7,1] :=    STGR_TRIPLAS_44_Combinacoes.Cells[3,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[8,1] :=     STGR_TRIPLAS_44_Combinacoes.Cells[4,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[9,1] :=     STGR_TRIPLAS_44_Combinacoes.Cells[5,VI_COMB01];
                         STGR_BASE_SOMA12_1.Cells[10,1] :=    STGR_TRIPLAS_44_Combinacoes.Cells[6,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[11,1] :=    STGR_TRIPLAS_44_Combinacoes.Cells[7,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[12,1] :=    STGR_TRIPLAS_44_Combinacoes.Cells[8,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[13,1] :=    STGR_TRIPLAS_44_Combinacoes.Cells[9,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[14,1] :=    STGR_TRIPLAS_44_Combinacoes.Cells[10,VI_COMB02];
                         STGR_BASE_SOMA12_1.Cells[15,1] :=    STGR_TRIPLAS_44_Combinacoes.Cells[11,VI_COMB02];
                         // --------------------------------------------------------------
                         // 10 --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 12 --
                         // --------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';
                         FOR Vsi_COMb12_1 := 1 TO  12 DO
                         BEGIN
                              FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                              BEGIN
                                   FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                   BEGIN
                                        FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                        BEGIN
                                             FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  15 DO
                                                       BEGIN
                                                       FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  15 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  15 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  15 DO
                                                            BEGIN
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  := '0';
                                                                      STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                      STGR_BASE_SOMA12_2.Cells[2,VI_LINHAS12]  := INTtoSTR(VI_LINHAS12);
                                                                      STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_1,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_2,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_3,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_4,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_5,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_6,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_7,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_8,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_9,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_0,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_A,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_B,1] ;
                                                                      STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                         + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12])
                                                                         );
                                                                      if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) = 156) THEN
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                      ELSE
                                                                           STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';
                                                                 VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                            END; // FOR Vsi_COMb12_A :=
                                                            END; // FOR Vsi_COMb12_B :=
                                                       END; // FOR Vsi_COMb12_0 :=
                                                       END; // FOR Vsi_COMb12_9 :=
                                                       END; // FOR Vsi_COMb12_8 :=
                                                       END; // FOR Vsi_COMb12_7 :=
                                                  END; // FOR Vsi_COMb12_6 :=
                                             END; // FOR Vsi_COMb12_5 :=
                                        END; // FOR Vsi_COMb12_4 :=
                                   END; // FOR Vsi_COMb12_3 :=
                              END; // FOR Vsi_COMb12_2 :=
                         END; // FOR Vsi_COMb12_1 :=
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;

                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         IF (VI_COMB02 MOD 2)=0 THEN
                         BEGIN
                              STGR_BASE_SOMA12_2.Repaint;
                              sleep(2);
                         END; // IF                         

                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_TRIPLAS_44_Combinacoes.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TRIPLAS_44_Combinacoes.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_TRIPLAS_44_Combinacoes.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_TRIPLAS_44_Combinacoes.Cells[6,VI_COMB02];
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_TRIPLAS_44_Combinacoes.Cells[7,VI_COMB02];
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_TRIPLAS_44_Combinacoes.Cells[8,VI_COMB02];
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_TRIPLAS_44_Combinacoes.Cells[9,VI_COMB02];
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_TRIPLAS_44_Combinacoes.Cells[10,VI_COMB02];
                    STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_TRIPLAS_44_Combinacoes.Cells[11,VI_COMB02];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[6,VI_COMB01];
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[7,VI_COMB01];
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_DUPLAS_Comb.Cells[8,VI_COMB01];

                         // 10 -- SOMATORIA DOS 7 OU 8 DENTRE OS 10 NÃO SORTEADOS
                          PR_SOMATORIA_7_8 (VI_LINHAS2) ;
                         // 10 -- CONFERINDO RESULTADO
                         for Vsi_COMb12_0 := 1 to STGR_BASE_7_8.RowCount-1 do
                         begin
                              IF (STGR_BASE_7_8.Cells[1,Vsi_COMb12_0] = 'V') THEN STGR_BASE_7_8.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_7_8.Cells[1,0] = 'F') THEN
                              CONTINUE;

                    // ******************
                    // ***  NÚMEROS FIXOS
                    if (STRtoINT(ED_fixoS_01.Text)=0) OR
                        (
                        (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                        (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                        ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                             ) AND
                         (
                         (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                         (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                         ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                             ) AND
                                  (
                                  (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                  (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text))
                                  )
                              THEN
                              BEGIN
                                   PR_ORDENAR_FILTRO_15 (VI_LINHAS2);
                                   IF (CB_POSICAO_8.ItemIndex =0) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 11) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 15)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =1) THEN
                                   BEGIN
                                        IF NOT((STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) >= 12) AND (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) <= 14)) THEN
                                             CONTINUE;
                                   END ELSE
                                   IF (CB_POSICAO_8.ItemIndex =2) THEN
                                   BEGIN
                                        IF NOT(STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = 13) THEN
                                             CONTINUE;
                                   END; // IF
                                  // PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                   VI_LINHAS2 := VI_LINHAS2 + 1;
                                   VI_LINHAS1 := VI_LINHAS1+1 ;
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMB01, TRUNC(STGR_DUPLAS_Comb.RowCount-1));
               END; // IF
          END; // FOR VI_COMB02
          IF (VI_COMB01 MOD 5)=0 THEN
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               PGBR_GERARCOMB.Position :=  TRUNC(VI_COMB01/(STGR_DUPLAS_Comb.RowCount-1)*100);
               STGR_COMB15.RowCount := VI_LINHAS2;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               STGR_COMB15.Repaint;
               SLEEP(1);
          END;
          IF (VI_COMB01 MOD 50)=0 THEN
          BEGIN
               STGR_COMB15.RowCount := VI_LINHAS2;
               self.WindowState := wsMinimized;
               self.WindowState := wsNormal;
               sleep (5);
               STGR_COMB15.Repaint;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               LA_QTD_COMB.Repaint;
               Self.Repaint;
               sleep (90);
          END;
     END; // FOR VI_COMB01
     PGBR_GERARCOMB.Position := 100;
     PGBR_GERARCOMB.Repaint;
     STGR_COMB15.RowCount := VI_LINHAS2;
     self.WindowState := wsMinimized;
     self.WindowState := wsNormal;
     sleep (4);
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     LA_QTD_COMB.Repaint;
     Self.Repaint;
     sleep (240);         

     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     PGBR_GERARCOMB.Position := 100;
     STGR_COMB15.RowCount := VI_LINHAS2;
     PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMB01, TRUNC(STGR_DUPLAS_Comb.RowCount-1));
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     SELF.PR_SIMULAR_RECUPERANDODADOS();
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_16td_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTADOR := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_16td_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTADOR)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     LA_rTOTAL_COMB.Caption := INTtoSTR((STGR_DUPLAS_Comb.RowCount-1)*3003*5);
     LA_rQTD_COMB.Caption := LA_QTD_COMB.Caption;
     LA_rTOTAL_100REPET.Caption := INTtoSTR(VI_CONTADOR);
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_16td_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          PA_REMOVEUREPET.Left := 400;
     PA_REMOVEUREPET.Repaint;
    // self.PR_SIMULAR_RECUPERANDODADOS();
     TRY
          STGR_COMB15.FixedRows := 1;
     EXCEPT
          //
     END;     
     BBT_GERAR.Enabled := TRUE;
end;



PROCEDURE T_F_SIM_01_FILTRO_16td.PR_SIMULAR_RECUPERANDODADOS();
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_16td_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DADOS FROM FILTRO_16td_DADOS GROUP BY DADOS ORDER BY DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       STGR_COMB15.RowCount := 0;
       SELF.IBQ_COMBINACOES.First;
       self.PR_LIMPAR_GRID15 ();
       IF (TRIM(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString) ='') THEN
           SELF.IBQ_COMBINACOES.Next;
       FOR VI_AN_COMB1:= 1 TO  VI_CONTAR+1 DO
       BEGIN
           STGR_COMB15.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB15.Cells [1, VI_AN_COMB1] := 'V';
           STGR_COMB15.Cells [2, VI_AN_COMB1] := 'F';
           STGR_COMB15.Cells [3, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
           STGR_COMB15.Cells [4, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
           STGR_COMB15.Cells [5, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
           STGR_COMB15.Cells [6, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
           STGR_COMB15.Cells [7, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
           STGR_COMB15.Cells [8, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
           STGR_COMB15.Cells [9, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
           STGR_COMB15.Cells [10, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
           STGR_COMB15.Cells [11, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
           STGR_COMB15.Cells [12, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
           STGR_COMB15.Cells [13, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
           STGR_COMB15.Cells [14, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
           STGR_COMB15.Cells [15, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
           STGR_COMB15.Cells [16, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
           STGR_COMB15.Cells [17, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
               STGR_COMB15.RowCount := VI_AN_COMB1;
           if (VI_AN_COMB1/90)=(VI_AN_COMB1 DIV 90) then
           BEGIN
               PGBR_REMREPET.Position := (TRUNC(VI_AN_COMB1  / VI_CONTAR *10*8) );
               PGBR_REMREPET.Repaint;
               STGR_COMB15.REPAINT;               
           END;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_10_DEFINICAO;')  ;
       SELF.IBQ_COMBINACOES.Open;
       STGR_COMB15.REPAINT;
           PGBR_REMREPET.Position := 100;
       LA_TOTAL_100REPET.Caption := INTtoSTR(STGR_COMB15.RowCount-1);
       STGR_COMB15.REPAINT;
       LA_TOTAL_100REPET.Repaint;
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();






procedure T_F_SIM_01_FILTRO_16td.Button1Click(Sender: TObject);
VAR
     VI_COMBINACOES01, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_LINHAS2: SMALLINT;
begin

     PA_REMOVEUREPET.Left := 400;
end;



procedure T_F_SIM_01_FILTRO_16td.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 9999;
     SELF.Width := 1220;  
end;



procedure T_F_SIM_01_FILTRO_16td.BBT_ENCERRARClick(Sender: TObject);
VAR
     VI_COMBINACOES01, VI_COMBINACOES2, VI_CONTAR, VI_AN_COMB1 : integer;
     VI_LINHAS2: SMALLINT;
     VC_COMBINACOES, VC_QUERY : string;
begin
   {  _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount := 2;
     VI_LINHAS2 := 1;
          FOR VI_CONTAR := 1 TO 15 DO
          BEGIN
               _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [VI_CONTAR,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
          END;
          FOR VI_CONTAR := 16 TO 27 DO
          BEGIN
               _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [VI_CONTAR,0] := '-';
          END;
     FOR VI_COMBINACOES01 :=0 TO (STGR_TODOS_15.RowCount ) DO
     BEGIN
        IF TRIM(STGR_TODOS_15.Cells[1,VI_COMBINACOES01]) = 'V'  THEN
        BEGIN
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
               _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_LINHAS2] := STGR_TODOS_15.Cells [VI_CONTAR+1,VI_COMBINACOES01];
               _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [16,VI_LINHAS2] := '---';
               IF VI_CONTAR <11 THEN
                    _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [VI_CONTAR+16,VI_LINHAS2] := STGR_10_NS.Cells [VI_CONTAR+1,VI_COMBINACOES01];
            END; //FOR
           VI_LINHAS2 := VI_LINHAS2 +1 ;
        END; //IF
     END; // FOR
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount := VI_LINHAS2;
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.FixedRows := 1; }
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Repaint;
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Repaint;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          SHOWMESSAGE('FIM - OK');
     {
BEGIN
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM A_RESULTADO_15_DADOS')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     FOR VI_COMBINACOES01 :=1 TO (STGR_TODOS_15.RowCount-1) DO
     BEGIN
          IF TRIM(STGR_TODOS_15.Cells[1,VI_CONTAR])='F' THEN
               CONTINUE;
          VC_COMBINACOES := '';
          FOR VI_AN_COMB1 := 2 TO 16 DO
          BEGIN
               VC_COMBINACOES := VC_COMBINACOES + STGR_TODOS_15.Cells [VI_AN_COMB1,VI_COMBINACOES01]+ ' ';
          END; // FOR VI_AN_COMB1
          VC_QUERY  := 'INSERT INTO A_RESULTADO_15_DADOS (DADOS, NS_A1, NS_A2, NS_A3, NS_B1, NS_B2, NS_B3, NS_C1, NS_C2, NS_D1, NS_D2) VALUES('
                    +#39+ VC_COMBINACOES
                     + #39 +',' +#39+ STGR_10_NS.Cells[2,VI_COMBINACOES01]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[3,VI_COMBINACOES01]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[4,VI_COMBINACOES01]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[5,VI_COMBINACOES01]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[6,VI_COMBINACOES01]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[7,VI_COMBINACOES01]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[8,VI_COMBINACOES01]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[9,VI_COMBINACOES01]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[10,VI_COMBINACOES01]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[11,VI_COMBINACOES01]+''
                     + #39 +');';
          SELF.IBQ_COMBINACOES.SQL.Clear;
          SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
          SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.IBQ_COMBINACOES.SQL.Clear;
          SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
          SELF.IBQ_COMBINACOES.ExecSQL;
     END;// FOR VI_COMBINACOES01
     TRY
          SELF.IBTransaction1.Commit;
     EXCEPT
          //
     END;
     showmessage('Resultado Gravado.');
     }
     self.Close;

end;


procedure T_F_SIM_01_FILTRO_16td.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, VI_CONTAR, VI_QTD : INTEGER;
    VC_COMBINACOES : string;
begin

    winExec('Notepad.exe C:\CXLOTOFACIL\FILTRO_NS01.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado
   showmessage('BLOCO DE NOTAS GERADO');
end;

procedure T_F_SIM_01_FILTRO_16td.BT_NOVA_SIMULACAOClick(Sender: TObject);
VAR
     VsI_CONTAR : SMALLINT;
begin
     BBT_ENCERRAR.Enabled := TRUE;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 4500;
     FOR VsI_CONTAR := 1 TO 8 DO
     BEGIN
          STGR_BASE_A.Cells[VsI_CONTAR,0] := '0';
     END;
     FOR VsI_CONTAR := 1 TO 7 DO
     BEGIN
          STGR_BASE_B.Cells[VsI_CONTAR,0] := '0';
     END;
     FOR VsI_CONTAR := 1 TO 5 DO
     BEGIN
          STGR_BASE_C.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_D.Cells[VsI_CONTAR,0] := '0';
     END;
     ED_EXC_01.Text := '00';
     ED_EXC_02.Text := '00';
     ED_FIXOS_01.Text := '00';
     ED_FIXOS_02.Text := '00';
     ED_FIXOS_03.Text := '00';
     ED_FIXOS_04.Text := '00';
     ED_FIXOS_05.Text := '00';
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     PA_PREENCHIMENTO.Repaint;
     PA_GABARITO.Visible := false;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     STGR_COMB15.Visible := TRUE;
     STGR_COMB15.Enabled := TRUE;
     BT_REAJUSTAR.Enabled :=  TRUE;
     PA_INICIAL.Enabled := false;
     SELF.Repaint;
     PA_INICIAL.Left := 3198;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     SCBX_GABARITO.Top := 190;
     PA_PREENCHIMENTO.Top := 40;
end;



procedure T_F_SIM_01_FILTRO_16td.BT_REAJUSTARClick(Sender: TObject);
begin
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     PA_GABARITO.Visible := false;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     STGR_COMB15.Visible := TRUE;
     STGR_COMB15.Enabled := TRUE;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 3198;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;     
end;



procedure T_F_SIM_01_FILTRO_16td.BBT_CARREGARClick(Sender: TObject);
VAR
     VI_LINHAS2, VI_CONTAR : INTEGER;
begin
     PA_RESULTADO.Visible := TRUE;
     PA_PREENCHIMENTO.Visible := false;
     PA_PREENCHIMENTO.Enabled := false;
     PA_GABARITO.Visible := false;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_GERAR.Enabled := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     LA_GERAR_COMB.Visible := false;
     LA_QTD_COMB.Visible := false;
     BBT_BLOCO_NOTAS.Enabled := false;
     IBQ_COMBINACOES.Close;
     IBQ_COMBINACOES.SQL.Clear;
     IBQ_COMBINACOES.SQL.Add('SELECT * FROM A_CONFIG1_');
     IBQ_COMBINACOES.Open;
     IF (IBQ_COMBINACOES.FieldByName('NOME_SIMULACAO_ATIVA').AsString = 'SIMULACAO_1') THEN
     BEGIN
     END ELSE
     IF (IBQ_COMBINACOES.FieldByName('NOME_SIMULACAO_ATIVA').AsString = 'SIMULACAO_2') THEN
     BEGIN
          IBQ_COMBINACOES.Close;
          IBQ_COMBINACOES.SQL.Clear;
          IBQ_COMBINACOES.SQL.Add('SELECT * FROM SIMULACAO_2_DEFINICAO');
          IBQ_COMBINACOES.Open;
     END ELSE
     IF (IBQ_COMBINACOES.FieldByName('NOME_SIMULACAO_ATIVA').AsString = 'SIMULACAO_3') THEN
     BEGIN
          IBQ_COMBINACOES.Close;
          IBQ_COMBINACOES.SQL.Clear;
          IBQ_COMBINACOES.SQL.Add('SELECT * FROM SIMULACAO_3_DEFINICAO');
          IBQ_COMBINACOES.Open;
     END ELSE
     IF (IBQ_COMBINACOES.FieldByName('NOME_SIMULACAO_ATIVA').AsString = 'NENHUMA') THEN
     BEGIN
          SHOWMESSAGE('CARREGUE A SIMULAÇÃO PRIMEIRO');
          EXIT;
     END;
     // *****************************************************
     // ** Restaurando/lendo os dados do Impar A / LINHA A **
     // *****************************************************
     STGR_BASE_A.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,1,2);
     STGR_BASE_A.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,4,2);
     STGR_BASE_A.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,7,2);
     STGR_BASE_A.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,10,2);
     STGR_BASE_A.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,13,2);
     STGR_BASE_A.Cells[6,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,16,2);
     STGR_BASE_A.Cells[7,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,19,2);
     STGR_BASE_A.Cells[8,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,22,2);
     // ****************************************************
     // ** Restaurando/lendo os dados do Par A / LINHA B  **
     // ****************************************************
     STGR_BASE_B.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,1,2);
     STGR_BASE_B.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,4,2);
     STGR_BASE_B.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,7,2);
     STGR_BASE_B.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,10,2);
     STGR_BASE_B.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,13,2);
     STGR_BASE_B.Cells[6,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,16,2);
     STGR_BASE_B.Cells[7,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,19,2);
     // ******************************************************
     // ** Restaurando/lendo os dados do Impar B / LINHA C  **
     // ******************************************************
     STGR_BASE_C.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,1,2);
     STGR_BASE_C.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,4,2);
     STGR_BASE_C.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,7,2);
     STGR_BASE_C.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,10,2);
     STGR_BASE_C.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,13,2);
     // ****************************************************
     // ** Restaurando/lendo os dados do Par B / LINHA D  **
     // ****************************************************
     STGR_BASE_D.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,1,2);
     STGR_BASE_D.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,4,2);
     STGR_BASE_D.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,7,2);
     STGR_BASE_D.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,10,2);
     STGR_BASE_D.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,13,2);
     IBQ_COMBINACOES.Close;
     IBQ_COMBINACOES.SQL.Clear;
     IBQ_COMBINACOES.SQL.Add('SELECT * FROM A_RESULTADO_15_DADOS');
     IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     VI_LINHAS2 := 1;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_16td_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          TRY
               SELF.IBTransaction1.Commit;
          EXCEPT
               //
          END;
     STGR_COMB15.RowCount := 2;
     VI_LINHAS2 := 0;
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
          STGR_COMB15.Cells[VI_CONTAR+2,0] := INTtoSTR(VI_CONTAR);
     END; // FOR
     SELF.PR_SIMULAR_RECUPERANDODADOS();
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          SHOWMESSAGE('OK');         
end;



procedure T_F_SIM_01_FILTRO_16td.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_16td_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;



PROCEDURE T_F_SIM_01_FILTRO_16td.PR_LIMPAR_GRID15 ();
BEGIN
    STGR_COMB15.CleanupInstance;
    STGR_COMB15.Free;
    STGR_COMB15:= TStringGrid.Create(SELF);
    STGR_COMB15.Parent:= PA_RESULTADO;

    STGR_COMB15.Align := alClient ;;
    STGR_COMB15.RowCount := 2;
    STGR_COMB15.ColCount  := 18 ;
    STGR_COMB15.DefaultColWidth := 43 ;
    STGR_COMB15.ColWidths[0] := 62;
    STGR_COMB15.DefaultRowHeight := 21 ;
    STGR_COMB15.FixedCols := 3  ;
    STGR_COMB15.FixedRows := 0  ;
    STGR_COMB15.Color := 14737632;
    STGR_COMB15.FixedColor := clMedGray;
    STGR_COMB15.Font.Name := 'Tahoma'
END;


procedure T_F_SIM_01_FILTRO_16td.Set_SET_FLAG_AUTOEXECUTAR(const Value: STRING);
begin
  F_SET_FLAG_AUTOEXECUTAR := Value;
end;



procedure T_F_SIM_01_FILTRO_16td.BBT_GERAR_menuClick(Sender: TObject);
begin
     pa_gerar.Left := 510; 
end;



procedure T_F_SIM_01_FILTRO_16td.BBT_GERAR_VOLTARClick(Sender: TObject);
begin
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Left := 4500;
     ED_EXC_01.SetFocus;
end;



end.







