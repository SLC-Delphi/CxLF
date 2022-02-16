unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DATEUTILS,  STRUTILS,
  Dialogs, StdCtrls, ExtCtrls, Buttons, WinSkinData, ComCtrls, Grids, Math,
  IBDatabase, DB, IBCustomDataSet, IBQuery;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    STRGR_TODOS_NUMEROS: TStringGrid;
    MEM_COMBINACOES_TODAS: TMemo;
    SkinData1: TSkinData;
    STGR_COMBINACOES_15V: TStringGrid;
    PA_PANS01: TPanel;
    GroupBox1: TGroupBox;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    GroupBox2: TGroupBox;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    GroupBox3: TGroupBox;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    GroupBox4: TGroupBox;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    BBT_PAN01_ZERAR: TBitBtn;
    Panel4: TPanel;
    Label6: TLabel;
    ED_SOMA_11: TEdit;
    CB_SOMA_01: TComboBox;
    ED_SOMA_21: TEdit;
    ED_SOMA_31: TEdit;
    ED_SOMA_51: TEdit;
    ED_SOMA_41: TEdit;
    ED_SOMA_01: TEdit;
    Panel5: TPanel;
    Label9: TLabel;
    ED_SOMA_02: TEdit;
    ED_SOMA_12: TEdit;
    CB_SOMA_02: TComboBox;
    ED_SOMA_32: TEdit;
    ED_SOMA_22: TEdit;
    ED_SOMA_42: TEdit;
    BBT_SIMULAR: TBitBtn;
    Panel6: TPanel;
    Label5: TLabel;
    LA_TXTRESULTADO3: TLabel;
    STGR_COMBINACOES_SOBRAS: TStringGrid;
    STGR_COMBINACOES_15: TStringGrid;
    BitBtn3: TBitBtn;
    BBT_REFINAR: TBitBtn;
    Panel2: TPanel;
    PA_ANALISES_BLOCO_1: TPanel;
    PA_ANALISE_1: TPanel;
    STGR_IMPAR_A: TStringGrid;
    STGR_IMPAR_A_SOBRA: TStringGrid;
    STGR_PAR_A_SOBRA: TStringGrid;
    STGR_PAR_A: TStringGrid;
    STGR_IMPAR_B_SOBRA: TStringGrid;
    STGR_IMPAR_B: TStringGrid;
    STGR_PAR_B_SOBRA: TStringGrid;
    STGR_PAR_B: TStringGrid;
    PA_ANALISE_2: TPanel;
    STGR_IMPAR_A1: TStringGrid;
    STGR_IMPAR_A11: TStringGrid;
    STGR_IMPAR_A11_SOBROU: TStringGrid;
    STGR_PAR_A1: TStringGrid;
    STGR_PAR_A11: TStringGrid;
    STGR_PAR_A11_SOBROU: TStringGrid;
    STGR_IMPAR_B11: TStringGrid;
    STGR_IMPAR_B1: TStringGrid;
    STGR_PAR_B1: TStringGrid;
    STGR_PAR_B11: TStringGrid;
    STGR_PAR_B11_SOBROU: TStringGrid;
    STGR_COMB_05_CP: TStringGrid;
    STGR_COMB_08: TStringGrid;
    STGR_REFINAR_SOBRA: TStringGrid;
    GroupBox13: TGroupBox;
    Label1: TLabel;
    LA_TXTRESULTADO2: TLabel;
    Label3: TLabel;
    MEM_COLUNA_05: TMemo;
    STGR_COMB_12: TStringGrid;
    STGR_COMB_05: TStringGrid;
    STGR_COMBINACOES_TODAS: TStringGrid;
    LABEL_17PERC: TLabel;
    Label_17: TLabel;
    Label_05: TLabel;
    LabeL_12: TLabel;
    LABEL_05PERC: TLabel;
    LABEL_12PERC: TLabel;
    Label_15: TLabel;
    LABEL_15PERC: TLabel;
    GB_SIMULACOES_MENU: TGroupBox;
    RB_SIM_FILTRO_01: TRadioButton;
    RB_SIM_MODELO_02: TRadioButton;
    RB_SIM_MODELO_03: TRadioButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    PA_PAN02: TPanel;
    STGR_M02_SERIE1_INICIAL: TStringGrid;
    STGR_M02_SERIE2_INICIAL: TStringGrid;
    BBT_PAN02_ZERAR: TBitBtn;
    BBT_M02_SIMULAR_A: TBitBtn;
    STGR_M02_SERIE1_07: TStringGrid;
    STGR_M02_SERIE1_08: TStringGrid;
    STGR_M02_SERIE1_09: TStringGrid;
    STGR_M02_SERIE1_10: TStringGrid;
    STGR_M02_SERIE1_11: TStringGrid;
    STGR_M02_SERIE2_04: TStringGrid;
    STGR_M02_SERIE2_05: TStringGrid;
    STGR_M02_SERIE2_06: TStringGrid;
    STGR_M02_SERIE2_08: TStringGrid;
    STGR_M02_SERIE2_07: TStringGrid;
    BBT_M02_SIMULAR_J: TBitBtn;
    BBT_M02_SIMULAR_F: TBitBtn;
    Label13: TLabel;
    PA_PAN03: TPanel;
    BBT_PAN03_ZERAR: TBitBtn;
    STGR_M03_SERIE3_INICIAL: TStringGrid;
    STGR_M03_SERIE1_INICIAL: TStringGrid;
    STGR_M03_SERIE2_INICIAL: TStringGrid;
    BBT_M03_SIMULAR_A: TBitBtn;
    BBT_M03_SIMULAR_b: TBitBtn;
    BBT_M03_SIMULAR_C: TBitBtn;
    STGR_M03_SERIE1_04: TStringGrid;
    STGR_M03_SERIE1_06: TStringGrid;
    STGR_M03_SERIE1_07: TStringGrid;
    STGR_M03_SERIE1_08: TStringGrid;
    STGR_M03_SERIE1_05: TStringGrid;
    STGR_M03_SERIE2_08: TStringGrid;
    STGR_M03_SERIE2_07: TStringGrid;
    STGR_M03_SERIE2_06: TStringGrid;
    STGR_M03_SERIE2_05: TStringGrid;
    STGR_M03_SERIE2_04: TStringGrid;
    STGR_M03_SERIE3_04: TStringGrid;
    STGR_M03_SERIE3_03: TStringGrid;
    STGR_M03_SERIE3_02: TStringGrid;
    Memo1: TMemo;
    BBT_PAN02_GERAR: TButton;
    BBT_PAN03_GERAR: TButton;
    STGR_COMBINACOES_15M2: TStringGrid;
    LA_TXT1: TLabel;
    LA_TXT2: TLabel;
    LA_TXT3: TLabel;
    STGR_COMBINACOES_15M31: TStringGrid;
    LA_TXT31: TLabel;
    LA_TXT21: TLabel;
    LA_TXT11: TLabel;
    Label_14: TLabel;
    LABEL_14PERC: TLabel;
    STGR_COMBINACOES_15M32: TStringGrid;
    STGR_COMBINACOES_15M33: TStringGrid;
    STGR_COMBINACOES_15M34: TStringGrid;
    PGBR_M02: TProgressBar;
    PGBR_MO01_1: TProgressBar;
    BBT_301: TBitBtn;
    BBT_302: TBitBtn;
    BBT_303: TBitBtn;
    BBT_304: TBitBtn;
    BBT_305: TBitBtn;
    BBT_310: TBitBtn;
    BBT_309: TBitBtn;
    BBT_308: TBitBtn;
    BBT_307: TBitBtn;
    BBT_306: TBitBtn;
    BBT_319: TBitBtn;
    BBT_318: TBitBtn;
    BBT_317: TBitBtn;
    BBT_316: TBitBtn;
    BBT_320: TBitBtn;
    BBT_315: TBitBtn;
    BBT_314: TBitBtn;
    BBT_313: TBitBtn;
    BBT_312: TBitBtn;
    BBT_311: TBitBtn;
    BBT_321: TBitBtn;
    BBT_322: TBitBtn;
    BBT_323: TBitBtn;
    BBT_324: TBitBtn;
    BBT_325: TBitBtn;
    BBT_201: TBitBtn;
    BBT_202: TBitBtn;
    BBT_203: TBitBtn;
    BBT_204: TBitBtn;
    BBT_205: TBitBtn;
    BBT_210: TBitBtn;
    BBT_209: TBitBtn;
    BBT_208: TBitBtn;
    BBT_207: TBitBtn;
    BBT_206: TBitBtn;
    BBT_211: TBitBtn;
    BBT_212: TBitBtn;
    BBT_213: TBitBtn;
    BBT_214: TBitBtn;
    BBT_215: TBitBtn;
    BBT_220: TBitBtn;
    BBT_219: TBitBtn;
    BBT_218: TBitBtn;
    BBT_217: TBitBtn;
    BBT_216: TBitBtn;
    BBT_221: TBitBtn;
    BBT_222: TBitBtn;
    BBT_223: TBitBtn;
    BBT_224: TBitBtn;
    BBT_225: TBitBtn;
    BBT_M3_SIM_AB: TBitBtn;
    BBT_M3_SIM_BC: TBitBtn;
    BBT_M3_SIM_ABC: TBitBtn;
    BBT_M01_BLOCO_NOTAS: TBitBtn;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    IBQ_COMINACOES: TIBQuery;
    PGBR_ETAPA5: TProgressBar;
    Label14: TLabel;
    RB_SIM_MODELO_01: TRadioButton;
    PA_PAN01: TPanel;
    Label15: TLabel;
    GB_FILTRO: TGroupBox;
    GB_EXC: TGroupBox;
    Label2: TLabel;
    LA_EXC_PERC: TLabel;
    CB_QTD_EXC: TComboBox;
    ED_EXC_01: TEdit;
    ED_EXC_02: TEdit;
    ED_EXC_03: TEdit;
    ED_EXC_04: TEdit;
    BBT_EXECUTAR_EXC: TBitBtn;
    BBT_ENCERRAR_EXC: TBitBtn;
    GB_SEL: TGroupBox;
    Label4: TLabel;
    LA_SEL_PERC: TLabel;
    CB_QTD_SEL: TComboBox;
    ED_SEL_01: TEdit;
    ED_SEL_02: TEdit;
    ED_SEL_03: TEdit;
    ED_SEL_04: TEdit;
    ED_SEL_05: TEdit;
    ED_SEL_06: TEdit;
    BBT_ENCERRAR_SEL: TBitBtn;
    BBT_EXECUTAR_SEL: TBitBtn;
    GB_SOMA15: TGroupBox;
    Panel8: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    ED_SOMA_15: TEdit;
    ED_SOMA_15_2: TEdit;
    BBT_EXEC_SOMA15: TBitBtn;
    BBT_ENCERRAR_SOMA15: TBitBtn;
    STGR_COMBINACOES_15E: TStringGrid;
    Label16: TLabel;
    LA_QTD_RESULTADO: TLabel;
    BBT_M02_ENCERRAR: TButton;
    Label17: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    BBT_M02_SIMULAR_A_: TBitBtn;
    BBT_M02_SIMULAR_J_: TBitBtn;
    BBT_M02_SIMULAR_F_: TBitBtn;
    BitBtn1: TBitBtn;
    STGR_COMBINACOES_15F03: TStringGrid;
    BBT_F03_A: TBitBtn;
    BBT_F03_A_: TBitBtn;
    BBT_F03_B_: TBitBtn;
    BBT_F03_B: TBitBtn;
    BBT_F03_C: TBitBtn;
    BBT_F03_C_: TBitBtn;
    BBT_F03_D: TBitBtn;
    BBT_F03_E: TBitBtn;
    BBT_F03_F: TBitBtn;
    BBT_F03_G: TBitBtn;
    BBT_F03_ENCERRAR: TButton;
    BBT_M02_SIMULAR_B_: TBitBtn;
    BBT_M02_SIMULAR_C_: TBitBtn;
    BBT_M02_SIMULAR_B: TBitBtn;
    BBT_M02_SIMULAR_C: TBitBtn;
    BBT_M02_SIMULAR_D: TBitBtn;
    BBT_M02_SIMULAR_E: TBitBtn;
    BBT_M02_SIMULAR_G: TBitBtn;
    BitBtn5: TBitBtn;
    BBT_M02_SIMULAR_H_: TBitBtn;
    LA_FILTRO04_SEL: TLabel;
    RB_SIM_MODELO_04: TRadioButton;
    PA_PAN01_MATRIZ01: TPanel;
    LA_FILTRANDO_04: TLabel;
    LA_FILTRANDO_04_: TLabel;
    STGR_MATRIZ01: TStringGrid;
    CB_01_COL6: TComboBox;
    CB_01_COL3: TComboBox;
    CB_01_COL4: TComboBox;
    CB_01_COL5: TComboBox;
    STGR_COMBINACOES_15M04: TStringGrid;
    STRGR_ML4_SOBRA: TStringGrid;
    STRGR_ML3_SOBRA: TStringGrid;
    BBT_MATRIZ01_SIMULAR: TBitBtn;
    Panel7: TPanel;
    STRGR_ML1_FINAL: TStringGrid;
    STRGR_ML2_FINAL: TStringGrid;
    STRGR_ML1: TStringGrid;
    STRGR_ML1_SOBRA: TStringGrid;
    STRGR_ML2_SOBRA: TStringGrid;
    STRGR_ML2: TStringGrid;
    STRGR_ML3: TStringGrid;
    STRGR_ML4: TStringGrid;
    STRGR_ML1_2_3_4: TStringGrid;
    PGBR_FILTRANDO_04: TProgressBar;
    LA_Gerando_04: TLabel;
    LA_Gerando_04_: TLabel;
    PA_FILTRO04_NIVEL: TPanel;
    RB_FILTRO04_NORMAL: TRadioButton;
    Label18: TLabel;
    RB_FILTRO04_RIGOROSO: TRadioButton;
    Label19: TLabel;
    RB_FILTRO04_MUITORIGOR: TRadioButton;
    Label20: TLabel;
    Label21: TLabel;
    PGBR_REFINANDO_04: TProgressBar;
    Label22: TLabel;
    Label23: TLabel;
    BBT_M04_ENCERRAR: TButton;
    PA_OLD_1: TPanel;
    GB_IMPAR_A1: TGroupBox;
    ED_IMPAR_A1_01: TEdit;
    ED_IMPAR_A1_02: TEdit;
    ED_IMPAR_A1_03: TEdit;
    ED_IMPAR_A1_04: TEdit;
    GB_PAR_A1: TGroupBox;
    ED_PAR_A1_01: TEdit;
    ED_PAR_A1_02: TEdit;
    ED_PAR_A1_03: TEdit;
    GB_IMPAR_B1: TGroupBox;
    ED_IMPAR_B1_01: TEdit;
    ED_IMPAR_B1_02: TEdit;
    ED_IMPAR_B1_03: TEdit;
    GB_PAR_B1: TGroupBox;
    ED_PAR_B1_01: TEdit;
    ED_PAR_B1_02: TEdit;
    GB_PAR_B11: TGroupBox;
    ED_PAR_B11_01: TEdit;
    ED_PAR_B11_02: TEdit;
    GB_IMPAR_B11: TGroupBox;
    ED_IMPAR_B11_01: TEdit;
    ED_IMPAR_B11_02: TEdit;
    GB_PAR_A11: TGroupBox;
    ED_PAR_A11_01: TEdit;
    ED_PAR_A11_02: TEdit;
    GB_IMPAR_A11: TGroupBox;
    ED_IMPAR_A11_01: TEdit;
    ED_IMPAR_A11_02: TEdit;
    Panel9: TPanel;
    ED_SOMA_TOTAL: TEdit;
    ED_SOMA_TOTAL2: TEdit;
    BBT_SOMAR: TBitBtn;
    PGBR_F1_ORDENAR: TProgressBar;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    RB_FILTRO04_PADRAO: TRadioButton;
    RB_FILTRO04_SEMRIGOR: TRadioButton;
    Label27: TLabel;
    BitBtn7: TBitBtn;
    PA_PAN05: TPanel;
    Label28: TLabel;
    LA_M05_ETAPA1T: TLabel;
    LA_M05_ETAPA1N: TLabel;
    LA_M05_ETAPA2T: TLabel;
    LA_M05_ETAPA2NP: TLabel;
    LA_M05_ETAPA3NP: TLabel;
    LA_M05_ETAPA3T: TLabel;
    BBT_M04_FILTRAR: TBitBtn;
    STGR_M05_MATRIZBASE: TStringGrid;
    CB_M04_TOTAL1: TComboBox;
    PGBR_M05_ETAPA1: TProgressBar;
    PGBR_M05_ETAPA2: TProgressBar;
    PGBR_M05_ETAPA3: TProgressBar;
    STGR_M05_MATRIZBASE2: TStringGrid;
    STGR_COMBINACOES_15M05: TStringGrid;
    LA_M05_ETAPA3N: TLabel;
    STGR_M05_1LINHA1: TStringGrid;
    STGR_M05_1LINHA2: TStringGrid;
    STGR_M05_2LINHA3: TStringGrid;
    STGR_M05_2LINHA4: TStringGrid;
    STGR_M05_1LINHA1e2: TStringGrid;
    STGR_M05_2DIF1e2A: TStringGrid;
    STGR_M05_2LINHA1e2: TStringGrid;
    STGR_M05_2LINHA1: TStringGrid;
    STGR_M05_2LINHA2: TStringGrid;
    PA_PAN04_STRGR: TPanel;
    STGR_COMBINACOES_15M05_FINAL: TStringGrid;
    Label29: TLabel;
    LA_FILTRO05_SEL: TLabel;
    RB_SIM_MODELO_05: TRadioButton;
    PGBR_M05_ETAPA4: TProgressBar;
    LA_M05_ETAPA4NP: TLabel;
    LA_M05_ETAPA4T: TLabel;
    LA_M05_ETAPA4N: TLabel;
    BBT_M05_ENCERRAR: TButton;
    RB_SIMULAR_NA_MEMORIA: TRadioButton;
    RB_SIMULAR_BANCO_DADOS: TRadioButton;
    Label30: TLabel;
    Label31: TLabel;
    RB_SIMULAR_RECUPERAR: TRadioButton;
    Label32: TLabel;
    LA_ETAPA5_PERC_BD: TLabel;
    PA_SIMULACAO_NUMEROS1: TPanel;
    BitBtn2: TBitBtn;
    BBT_N_02: TBitBtn;
    BitBtn4: TBitBtn;
    BBT_N_04: TBitBtn;
    BitBtn6: TBitBtn;
    BBT_N_06: TBitBtn;
    BitBtn8: TBitBtn;
    BBT_N_08: TBitBtn;
    BitBtn10: TBitBtn;
    BBT_N_10: TBitBtn;
    BitBtn12: TBitBtn;
    BBT_N_12: TBitBtn;
    BitBtn14: TBitBtn;
    BBT_N_14: TBitBtn;
    BitBtn16: TBitBtn;
    BBT_N_16: TBitBtn;
    BitBtn18: TBitBtn;
    BBT_N_18: TBitBtn;
    BitBtn20: TBitBtn;
    BBT_N_20: TBitBtn;
    BitBtn22: TBitBtn;
    BBT_N_22: TBitBtn;
    BitBtn24: TBitBtn;
    BBT_N_24: TBitBtn;
    BitBtn26: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BBT_PAN01_ZERARClick(Sender: TObject);
    procedure BBT_N_02Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BBT_N_04Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BBT_N_06Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BBT_N_08Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BBT_N_10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BBT_N_12Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BBT_N_14Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BBT_N_16Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BBT_N_18Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BBT_N_20Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BBT_N_22Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BBT_N_24Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BBT_SOMARClick(Sender: TObject);
    procedure BBT_SIMULARClick(Sender: TObject);
    procedure ED_SOMA_01Exit(Sender: TObject);
    procedure ED_SOMA_02Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BBT_REFINARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CB_QTD_EXCChange(Sender: TObject);
    procedure CB_QTD_SELChange(Sender: TObject);
    procedure BBT_EXECUTAR_EXCClick(Sender: TObject);
    procedure BBT_ENCERRAR_EXCClick(Sender: TObject);
    procedure BBT_EXECUTAR_SELClick(Sender: TObject);
    procedure BBT_ENCERRAR_SELClick(Sender: TObject);
    procedure BBT_EXEC_SOMA15Click(Sender: TObject);
    procedure BBT_ENCERRAR_SOMA15Click(Sender: TObject);
    procedure CB_SOMA_01Change(Sender: TObject);
    procedure CB_SOMA_02Change(Sender: TObject);
    procedure RB_SIM_MODELO_01Click(Sender: TObject);
    procedure BBT_PAN02_ZERARClick(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure BBT_PAN03_ZERARClick(Sender: TObject);
    procedure RB_SIM_MODELO_03Click(Sender: TObject);
    procedure BBT_PAN02_GERARClick(Sender: TObject);
    procedure BBT_PAN03_GERARClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_AClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_JClick(Sender: TObject);
    procedure BBT_M03_SIMULAR_CClick(Sender: TObject);
    procedure BBT_M03_SIMULAR_AClick(Sender: TObject);
    procedure BBT_M03_SIMULAR_bClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_FClick(Sender: TObject);
    procedure BBT_M02_BNOTASClick(Sender: TObject);
    procedure BBT_MATRIZ01_SIMULARClick(Sender: TObject);
    procedure BBT_301Click(Sender: TObject);
    procedure BBT_302Click(Sender: TObject);
    procedure BBT_303Click(Sender: TObject);
    procedure BBT_304Click(Sender: TObject);
    procedure BBT_305Click(Sender: TObject);
    procedure BBT_306Click(Sender: TObject);
    procedure BBT_307Click(Sender: TObject);
    procedure BBT_308Click(Sender: TObject);
    procedure BBT_309Click(Sender: TObject);
    procedure BBT_310Click(Sender: TObject);
    procedure BBT_311Click(Sender: TObject);
    procedure BBT_312Click(Sender: TObject);
    procedure BBT_313Click(Sender: TObject);
    procedure BBT_314Click(Sender: TObject);
    procedure BBT_315Click(Sender: TObject);
    procedure BBT_316Click(Sender: TObject);
    procedure BBT_317Click(Sender: TObject);
    procedure BBT_318Click(Sender: TObject);
    procedure BBT_319Click(Sender: TObject);
    procedure BBT_320Click(Sender: TObject);
    procedure BBT_321Click(Sender: TObject);
    procedure BBT_322Click(Sender: TObject);
    procedure BBT_323Click(Sender: TObject);
    procedure BBT_324Click(Sender: TObject);
    procedure BBT_325Click(Sender: TObject);
    procedure BBT_201Click(Sender: TObject);
    procedure BBT_202Click(Sender: TObject);
    procedure BBT_203Click(Sender: TObject);
    procedure BBT_204Click(Sender: TObject);
    procedure BBT_205Click(Sender: TObject);
    procedure BBT_206Click(Sender: TObject);
    procedure BBT_207Click(Sender: TObject);
    procedure BBT_208Click(Sender: TObject);
    procedure BBT_209Click(Sender: TObject);
    procedure BBT_210Click(Sender: TObject);
    procedure BBT_211Click(Sender: TObject);
    procedure BBT_212Click(Sender: TObject);
    procedure BBT_213Click(Sender: TObject);
    procedure BBT_214Click(Sender: TObject);
    procedure BBT_215Click(Sender: TObject);
    procedure BBT_216Click(Sender: TObject);
    procedure BBT_217Click(Sender: TObject);
    procedure BBT_218Click(Sender: TObject);
    procedure BBT_219Click(Sender: TObject);
    procedure BBT_220Click(Sender: TObject);
    procedure BBT_221Click(Sender: TObject);
    procedure BBT_222Click(Sender: TObject);
    procedure BBT_223Click(Sender: TObject);
    procedure BBT_224Click(Sender: TObject);
    procedure BBT_225Click(Sender: TObject);
    procedure BBT_M3_SIM_ABClick(Sender: TObject);
    procedure BBT_M3_SIM_ABCClick(Sender: TObject);
    procedure BBT_M3_SIM_BCClick(Sender: TObject);
    procedure BBT_M01_BLOCO_NOTASClick(Sender: TObject);
    procedure RB_SIM_FILTRO_01Click(Sender: TObject);
    procedure BBT_M02_ENCERRARClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_A_Click(Sender: TObject);
    procedure BBT_M02_SIMULAR_J_Click(Sender: TObject);
    procedure BBT_M02_SIMULAR_F_Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BBT_F03_A_Click(Sender: TObject);
    procedure BBT_F03_AClick(Sender: TObject);
    procedure BBT_F03_B_Click(Sender: TObject);
    procedure BBT_F03_BClick(Sender: TObject);
    procedure BBT_F03_C_Click(Sender: TObject);
    procedure BBT_F03_CClick(Sender: TObject);
    procedure BBT_F03_DClick(Sender: TObject);
    procedure BBT_F03_EClick(Sender: TObject);
    procedure BBT_F03_FClick(Sender: TObject);
    procedure BBT_F03_GClick(Sender: TObject);
    procedure BBT_F03_ENCERRARClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_B_Click(Sender: TObject);
    procedure BBT_M02_SIMULAR_C_Click(Sender: TObject);
    procedure BBT_M02_SIMULAR_BClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_CClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_DClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_EClick(Sender: TObject);
    procedure BBT_M02_SIMULAR_GClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BBT_M02_SIMULAR_H_Click(Sender: TObject);
    procedure RB_SIM_MODELO_04Click(Sender: TObject);
    procedure BBT_M04_ENCERRARClick(Sender: TObject);
    procedure BBT_M04_FILTRARClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure RB_SIM_MODELO_05Click(Sender: TObject);
    procedure BBT_M05_ENCERRARClick(Sender: TObject);
  private
    { Private declarations }
    PROCEDURE PR_BOTOES_MODELO2 (VI_NUMERO: INTEGER);
    PROCEDURE PR_BOTOES_MODELO3 (VI_NUMERO: INTEGER);
    PROCEDURE PR_LIMPAR_GRID15 ();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  VMS_TOTAL_15: ARRAY [1..4999999] OF STRING;
  VMS_REFINAR_SOBRA: ARRAY [1..5] OF ARRAY [1..6] OF STRING;

implementation

uses grids2;

{$R *.dfm}


PROCEDURE TForm1.PR_LIMPAR_GRID15 ();
BEGIN
    STGR_COMBINACOES_15.CleanupInstance;
    STGR_COMBINACOES_15.Free;
    STGR_COMBINACOES_15:= TStringGrid.Create(SELF);
    STGR_COMBINACOES_15.Parent:= PANEL6;

    STGR_COMBINACOES_15.Left   := 6 ;
    STGR_COMBINACOES_15.Top    := 27;
    STGR_COMBINACOES_15.Width  := 779;
    STGR_COMBINACOES_15.Height := 186;
    STGR_COMBINACOES_15.RowCount := 2;
    STGR_COMBINACOES_15.ColCount  := 16 ;
    STGR_COMBINACOES_15.DefaultColWidth := 46 ;
    STGR_COMBINACOES_15.FixedCols := 1  ;
    STGR_COMBINACOES_15.FixedRows := 0  ;
    STGR_COMBINACOES_15.Color     := $00E4F5AF;
    STGR_COMBINACOES_15.FixedColor := $00DFDBC8;
END;


procedure TForm1.BitBtn2Click(Sender: TObject);
begin
   BitBtn2.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(01);
        SELF.PR_BOTOES_MODELO3(01);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
       IF Edit26.TEXT = '' THEN
       BEGIN
       Edit26.TEXT := '01';
        STGR_IMPAR_A.Cells [0,0] := '0'+BitBtn2.Caption;
       Edit26.SETFOCUS;
       EXIT;
       END;

       IF Edit27.TEXT = '' THEN
       BEGIN
       Edit27.TEXT := '1';
        STGR_IMPAR_A.Cells [1,0] := '0'+BitBtn2.Caption;
       Edit27.SETFOCUS;
       EXIT;
       END;

       IF Edit28.TEXT = '' THEN
       BEGIN
       Edit28.TEXT := '1';
        STGR_IMPAR_A.Cells [2,0] := '0'+BitBtn2.Caption;
       Edit28.SETFOCUS;
       EXIT;
       END;

       IF Edit29.TEXT = '' THEN
       BEGIN
       Edit29.TEXT := '1';
        STGR_IMPAR_A.Cells [3,0] := '0'+BitBtn2.Caption;
       Edit29.SETFOCUS;
       EXIT;
       END;

       IF Edit30.TEXT = '' THEN
       BEGIN
       Edit30.TEXT := '1';
        STGR_IMPAR_A.Cells [4,0] := '0'+BitBtn2.Caption;
       Edit30.SETFOCUS;
       EXIT;
       END;

       IF Edit31.TEXT = '' THEN
       BEGIN
       Edit31.TEXT := '1';
        STGR_IMPAR_A.Cells [5,0] := '0'+BitBtn2.Caption;
       Edit31.SETFOCUS;
       EXIT;
       END;

       IF Edit32.TEXT = '' THEN
       BEGIN
       Edit32.TEXT := '1';
        STGR_IMPAR_A.Cells [6,0] := '0'+BitBtn2.Caption;
       Edit32.SETFOCUS;
       EXIT;
       END;

       IF Edit33.TEXT = '' THEN
       BEGIN
       Edit33.TEXT := '1';
        STGR_IMPAR_A.Cells [7,0] := '0'+BitBtn2.Caption;
       Edit33.SETFOCUS;
       EXIT;
       END;


       IF Edit42.TEXT = '' THEN
       BEGIN
       Edit42.TEXT := '1';
        STGR_IMPAR_B.Cells [0,0] := '0'+BitBtn2.Caption;
       Edit42.SETFOCUS;
       EXIT;
       END;

       IF Edit43.TEXT = '' THEN
       BEGIN
       Edit43.TEXT := '1';
        STGR_IMPAR_B.Cells [1,0] := '0'+BitBtn2.Caption;
       Edit43.SETFOCUS;
       EXIT;
       END;

       IF Edit44.TEXT = '' THEN
       BEGIN
       Edit44.TEXT := '1';
        STGR_IMPAR_B.Cells [2,0] := '0'+BitBtn2.Caption;
       Edit44.SETFOCUS;
       EXIT;
       END;

       IF Edit45.TEXT = '' THEN
       BEGIN
       Edit45.TEXT := '1';
        STGR_IMPAR_B.Cells [3,0] := '0'+BitBtn2.Caption;
       Edit45.SETFOCUS;
       EXIT;
       END;

       IF Edit46.TEXT = '' THEN
       BEGIN
       Edit46.TEXT := '1';
        STGR_IMPAR_B.Cells [4,0] := '0'+BitBtn2.Caption;
       Edit46.SETFOCUS;
       EXIT;
       END;
//    END ELSE
//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        {
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '1';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '1';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
//    END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '1';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '1';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '1';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
//    END; //IF (RB_SIM_MODELO_01.Checked
}
end;

procedure TForm1.BBT_PAN01_ZERARClick(Sender: TObject);
VAR
	VI_CONTADOR: INTEGER ;
begin
    SELF.PR_LIMPAR_GRID15 ();

    PA_SIMULACAO_NUMEROS1.Visible := TRUE;    
    BitBtn2.Visible := TRUE;
    BBT_N_02.Visible := TRUE;
    BitBtn4.Visible := TRUE;
    BBT_N_04.Visible := TRUE;
    BitBtn6.Visible := TRUE;
    BBT_N_06.Visible := TRUE;
    BitBtn8.Visible := TRUE;
    BBT_N_08.Visible := TRUE;
    BitBtn10.Visible := TRUE;
    BBT_N_10.Visible := TRUE;
    BitBtn12.Visible := TRUE;
    BBT_N_12.Visible := TRUE;
    BitBtn14.Visible := TRUE;
    BBT_N_14.Visible := TRUE;
    BitBtn16.Visible := TRUE;
    BBT_N_16.Visible := TRUE;
    BitBtn18.Visible := TRUE;
    BBT_N_18.Visible := TRUE;
    BitBtn20.Visible := TRUE;
    BBT_N_20.Visible := TRUE;
    BitBtn22.Visible := TRUE;
    BBT_N_22.Visible := TRUE;
    BitBtn24.Visible := TRUE;
    BBT_N_24.Visible := TRUE;
    BitBtn26.Visible := TRUE;
    Edit26.SetFocus;

	FOR VI_CONTADOR :=0 TO 8 DO
    BEGIN
		STGR_IMPAR_A.Cells[VI_CONTADOR,0] :='0';
		STGR_IMPAR_A.Cells[VI_CONTADOR,1] :='F';
    END; // FOR VI_CONTADOR
	FOR VI_CONTADOR :=0 TO 4 DO
    BEGIN
		STGR_IMPAR_B.Cells[VI_CONTADOR,0] :='0';
		STGR_IMPAR_B.Cells[VI_CONTADOR,1] :='F';
		STGR_PAR_B.Cells[VI_CONTADOR,0] :='0';
		STGR_PAR_B.Cells[VI_CONTADOR,1] :='F';
    END; // FOR VI_CONTADOR
	FOR VI_CONTADOR :=0 TO 7 DO
    BEGIN
		STGR_PAR_A.Cells[VI_CONTADOR,0] :='0';
		STGR_PAR_A.Cells[VI_CONTADOR,1] :='F';
    END; // FOR VI_CONTADOR
	FOR VI_CONTADOR :=0 TO 3 DO
    BEGIN
		STGR_IMPAR_A_SOBRA.Cells[VI_CONTADOR,0] :='0';
		STGR_IMPAR_A_SOBRA.Cells[VI_CONTADOR,1] :='F';
		STGR_PAR_A_SOBRA.Cells[VI_CONTADOR,0] :='0';
		STGR_PAR_A_SOBRA.Cells[VI_CONTADOR,1] :='F';
    END; // FOR VI_CONTADOR
	FOR VI_CONTADOR :=1 TO 25 DO
    BEGIN
	    STRGR_TODOS_NUMEROS.Cells[VI_CONTADOR,0] :=INTtoSTR (VI_CONTADOR) ;
	    STRGR_TODOS_NUMEROS.Cells[VI_CONTADOR,1] :='F';
    END; // FOR VI_CONTADOR


        STGR_IMPAR_B_SOBRA.Cells[0,0] := '0';
        STGR_IMPAR_B_SOBRA.Cells[0,1] := 'F';
        STGR_IMPAR_B_SOBRA.Cells[1,0] := '';
        STGR_IMPAR_B_SOBRA.Cells[1,1] := 'F';
    STGR_PAR_B_SOBRA.Cells[0,0] := '0';
    STGR_PAR_B_SOBRA.Cells[0,1] := 'F';
    STGR_PAR_B_SOBRA.Cells[1,0] := '0';
    STGR_PAR_B_SOBRA.Cells[1,1] := 'F';
    STGR_PAR_B_SOBRA.Cells[2,0] := '0';
    STGR_PAR_B_SOBRA.Cells[2,1] := 'F';
        STGR_IMPAR_A1.RowCount 		   := 1;
        STGR_IMPAR_A11.RowCount 	   := 1;
        STGR_IMPAR_A11_SOBROU.RowCount := 1;
    STGR_PAR_A1.RowCount  := 1;
    STGR_PAR_A11.RowCount := 1;
    STGR_PAR_A11_SOBROU.RowCount := 1;
        STGR_IMPAR_B1.RowCount   := 1;
        STGR_IMPAR_B11.RowCount  := 1;
    STGR_PAR_B1.RowCount  := 1;
    STGR_PAR_B11.RowCount := 1;
    STGR_PAR_B11_SOBROU.RowCount := 1;
        STGR_COMB_12.RowCount := 0;
        FOR VI_CONTADOR :=0 TO 12 DO
        BEGIN
            STGR_COMB_12.Cells[VI_CONTADOR,0] :='0';
        END; // FOR VI_CONTADOR
        STGR_COMB_05.RowCount := 0;
        FOR VI_CONTADOR :=0 TO 8 DO
        BEGIN
            STGR_COMB_05.Cells[VI_CONTADOR,0] :='0';
        END; // FOR VI_CONTADOR
        ED_SOMA_01.Text     := '0';
        ED_SOMA_02.Text		:= '0';
        ED_SOMA_TOTAL.Text 	:= '0';
        ED_SOMA_11.Text		:= '0';
        ED_SOMA_31.Text		:= '0';
        ED_SOMA_41.Text		:= '0';
        ED_SOMA_51.Text		:= '0';
        CB_SOMA_01.ItemIndex		:= 0;
        ED_SOMA_12.Text		:= '0';
        ED_SOMA_22.Text		:= '0';
        ED_SOMA_32.Text		:= '0';
        ED_SOMA_42.Text		:= '0';
        ED_SOMA_TOTAL2.Text := '0';
  STGR_REFINAR_SOBRA.RowCount := 0;
  STGR_REFINAR_SOBRA.RowCount := 6;
	STGR_COMBINACOES_TODAS.RowCount  := 0;
  STGR_COMBINACOES_15.RowCount     :=0;
	FOR VI_CONTADOR :=0 TO 20 DO
    BEGIN
	    STGR_COMBINACOES_TODAS.Cells[VI_CONTADOR,0] :='0';
    END; // FOR VI_CONTADOR
    STGR_COMBINACOES_SOBRAS.RowCount := 0;
	FOR VI_CONTADOR :=0 TO 5 DO
    BEGIN
	    STGR_COMBINACOES_SOBRAS.Cells[VI_CONTADOR,0] :='0';
    END; // FOR VI_CONTADOR
    mem_COMBINACOES_TODAS.Clear;
    LABEL_17PERC.Caption :='0';
    LABEL_15PERC.Caption :='0';
    LABEL_14PERC.Caption :='0';
    // --> PAINEL IMPAR A
    Edit26.Clear;
    Edit27.Clear;
    Edit28.Clear;
    Edit29.Clear;
    Edit30.Clear;
    Edit31.Clear;
    Edit32.Clear;
    Edit33.Clear;
	// --> PAINEL IMPAR B
    Edit42.Clear;
    Edit43.Clear;
    Edit44.Clear;
    Edit45.Clear;
    Edit46.Clear;
	// ==> PAINEL PAR A
    Edit34.Clear;
    Edit35.Clear;
    Edit36.Clear;
    Edit37.Clear;
    Edit38.Clear;
    Edit39.Clear;
    Edit40.Clear;
	// ==> PAINEL PAR B
    Edit50.Clear;
    Edit51.Clear;
    Edit52.Clear;
    Edit53.Clear;
    Edit54.Clear;

	// --> PAINEL IMPAR A1
    ED_IMPAR_A1_01.Clear;
    ED_IMPAR_A1_02.Clear;
    ED_IMPAR_A1_03.Clear;
    ED_IMPAR_A1_04.Clear;
	// --> PAINEL IMPAR B1
    ED_IMPAR_B1_01.Clear;
    ED_IMPAR_B1_02.Clear;
    ED_IMPAR_B1_03.Clear;
	// ==> PAINEL PAR A1
    ED_PAR_A1_01.Clear;
    ED_PAR_A1_02.Clear;
    ED_PAR_A1_03.Clear;
	// ==> PAINEL PAR B1
    ED_PAR_B1_01.Clear;
    ED_PAR_B1_02.Clear;

	// --> PAINEL IMPAR A11
    ED_IMPAR_A11_01.Clear;
    ED_IMPAR_A11_02.Clear;
	// --> PAINEL IMPAR B11
    ED_IMPAR_B11_01.Clear;
    ED_IMPAR_B11_02.Clear;
	// ==> PAINEL PAR A11
    ED_PAR_A11_01.Clear;
    ED_PAR_A11_02.Clear;
	// ==> PAINEL PAR B11
    ED_PAR_B11_01.Clear;
    ED_PAR_B11_02.Clear;

    // >>> Resultado
    STGR_COMB_05_CP.ColCount := 6;
    STGR_COMB_05.ColCount := 6;
    TRY
        F_GRIDS2.Release;
    EXCEPT
        //
    END;
    TRY
        Application.CreateForm(TF_GRIDS2, F_GRIDS2);
    EXCEPT
        //
    END;
    STGR_COMBINACOES_15E.RowCount :=0;
        FOR VI_CONTADOR := 1 TO 15 DO
        BEGIN
            STGR_COMBINACOES_15E.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M2.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M31.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M32.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M33.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M34.Cells [VI_CONTADOR, 0] :=  '0' ;
        END; // FOR VI_CONTADOR
        FOR VI_CONTADOR := 0 TO 10 DO
        BEGIN
            STGR_M03_SERIE1_INICIAL.Cells [VI_CONTADOR,0] := '0';
            STGR_M03_SERIE2_INICIAL.Cells [VI_CONTADOR,0] := '0';
        END;
        FOR VI_CONTADOR := 0 TO 5 DO
        BEGIN
            STGR_M03_SERIE3_INICIAL.Cells [VI_CONTADOR,0] := '0';
        END;
        FOR VI_CONTADOR := 0 TO 16 DO
        BEGIN
            STGR_M02_SERIE1_INICIAL.Cells [VI_CONTADOR,0] := '0';
        END;
        FOR VI_CONTADOR := 0 TO 10 DO
        BEGIN
            STGR_M02_SERIE2_INICIAL.Cells [VI_CONTADOR,0] := '0';
        END;
    MEM_COLUNA_05.Clear;
    MEM_COMBINACOES_TODAS.Clear;
    LabeL_12.Caption := 'ETAPA 1:';
    Label_05.Caption := 'ETAPA 2:';
    Label_17.Caption := 'ETAPA 3:';
    Label_15.Caption := 'ETAPA 4:';
    LABEL_14.Caption := 'ETAPA 5:';
    STGR_COMBINACOES_TODAS.ColCount := 18;
    LABEL_12PERC.Caption := '0';
    LABEL_05PERC.Caption := '0';
    LABEL_17PERC.Caption := '0';
    LABEL_15PERC.Caption := '0';
    LABEL_14PERC.Caption := '0';
    LA_EXC_PERC.Caption := '0';
    GB_EXC.Enabled    := TRUE;
    CB_QTD_EXC.ItemIndex :=0;
    GB_SEL.Enabled    := TRUE;
    CB_QTD_SEL.ItemIndex :=0;
    GB_SOMA15.Enabled := TRUE;
    ED_SOMA_15.Text := '0';
    ED_SOMA_15_2.Text := '0';
    ED_EXC_01.Text := '0' ;
    ED_EXC_02.Text := '0' ;
    ED_EXC_03.Text := '0' ;
    ED_EXC_04.Text := '0' ;
    ED_SEL_01.Text := '0' ;
    ED_SEL_02.Text := '0' ;
    ED_SEL_03.Text := '0' ;
    ED_SEL_04.Text := '0' ;
    ED_SEL_05.Text := '0' ;
    ED_SEL_06.Text := '0' ;

    ED_EXC_01.Enabled := TRUE;
    ED_EXC_02.Enabled := false;
    ED_EXC_03.Enabled := false;
    ED_EXC_04.Enabled := false;
    ED_SEL_01.Enabled := TRUE;
    ED_SEL_02.Enabled := false;
    ED_SEL_03.Enabled := false;
    ED_SEL_04.Enabled := false;
    ED_SEL_05.Enabled := false;
    ED_SEL_06.Enabled := false;
    BBT_EXECUTAR_EXC.Enabled := TRUE;
    BBT_ENCERRAR_EXC.Enabled := false;
    BBT_EXECUTAR_SEL.Enabled := TRUE;
    BBT_ENCERRAR_SEL.Enabled := false;
    BBT_EXEC_SOMA15.Enabled := TRUE;
    BBT_ENCERRAR_SOMA15.Enabled := false;
    GB_EXC.Enabled := TRUE;
    GB_SEL.Enabled := TRUE;
    // ZERA A MATRIZ 01
    STGR_MATRIZ01.Cells [1,0] := '1';
    STGR_MATRIZ01.Cells [2,0] := '2';
    STGR_MATRIZ01.Cells [3,0] := '3';
    STGR_MATRIZ01.Cells [4,0] := '4';
    STGR_MATRIZ01.Cells [5,0] := '5';
    STGR_MATRIZ01.Cells [6,0] := '6';
    STGR_MATRIZ01.Cells [7,0] := '6';
    STGR_MATRIZ01.Cells [8,0] := '6';
    STGR_MATRIZ01.Cells [0,1] := 'A';
    STGR_MATRIZ01.Cells [0,2] := 'B';
    STGR_MATRIZ01.Cells [0,3] := 'C';
    STGR_MATRIZ01.Cells [0,4] := 'D';
    STGR_MATRIZ01.Cells [8,2] := '0';
    STGR_MATRIZ01.Cells [6,3] := '0';
    STGR_MATRIZ01.Cells [7,3] := '0';
    STGR_MATRIZ01.Cells [8,3] := '0';
    STGR_MATRIZ01.Cells [6,4] := '0';
    STGR_MATRIZ01.Cells [7,4] := '0';
    STGR_MATRIZ01.Cells [8,4] := '0';
    PGBR_ETAPA5.Position := 0;
    PGBR_ETAPA5.Refresh;
end;


procedure TForm1.BitBtn4Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
BitBtn4.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(3);
        SELF.PR_BOTOES_MODELO3(3);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//  BEGIN
      IF Edit26.TEXT = '' THEN
       BEGIN
       Edit26.TEXT := BitBtn4.Caption;
        STGR_IMPAR_A.Cells [0,0] := BitBtn4.Caption;
       Edit26.SETFOCUS;
       EXIT;
       END;

       IF Edit27.TEXT = '' THEN
       BEGIN
       Edit27.TEXT := BitBtn4.Caption;
        STGR_IMPAR_A.Cells [1,0] := BitBtn4.Caption;
       Edit27.SETFOCUS;
       EXIT;
       END;

       IF Edit28.TEXT = '' THEN
       BEGIN
       Edit28.TEXT := BitBtn4.Caption;
        STGR_IMPAR_A.Cells [2,0] := BitBtn4.Caption;
       Edit28.SETFOCUS;
       EXIT;
       END;

       IF Edit29.TEXT = '' THEN
       BEGIN
       Edit29.TEXT := BitBtn4.Caption;
        STGR_IMPAR_A.Cells [3,0] := BitBtn4.Caption;
       Edit29.SETFOCUS;
       EXIT;
       END;

       IF Edit30.TEXT = '' THEN
       BEGIN
       Edit30.TEXT := BitBtn4.Caption;
        STGR_IMPAR_A.Cells [4,0] := BitBtn4.Caption;
       Edit30.SETFOCUS;
       EXIT;
       END;

       IF Edit31.TEXT = '' THEN
       BEGIN
       Edit31.TEXT := BitBtn4.Caption;
        STGR_IMPAR_A.Cells [5,0] := BitBtn4.Caption;
       Edit31.SETFOCUS;
       EXIT;
       END;

       IF Edit32.TEXT = '' THEN
       BEGIN
       Edit32.TEXT := BitBtn4.Caption;
        STGR_IMPAR_A.Cells [6,0] := BitBtn4.Caption;
       Edit32.SETFOCUS;
       EXIT;
       END;

       IF Edit33.TEXT = '' THEN
       BEGIN
       Edit33.TEXT := BitBtn4.Caption;
        STGR_IMPAR_A.Cells [7,0] := BitBtn4.Caption;
       Edit33.SETFOCUS;
       EXIT;
       END;


       IF Edit42.TEXT = '' THEN
       BEGIN
       Edit42.TEXT := BitBtn4.Caption;
        STGR_IMPAR_B.Cells [0,0] := BitBtn4.Caption;
       Edit42.SETFOCUS;
       EXIT;
       END;

       IF Edit43.TEXT = '' THEN
       BEGIN
       Edit43.TEXT := BitBtn4.Caption;
        STGR_IMPAR_B.Cells [1,0] := BitBtn4.Caption;
       Edit43.SETFOCUS;
       EXIT;
       END;

       IF Edit44.TEXT = '' THEN
       BEGIN
       Edit44.TEXT := BitBtn4.Caption;
        STGR_IMPAR_B.Cells [2,0] := BitBtn4.Caption;
       Edit44.SETFOCUS;
       EXIT;
       END;

       IF Edit45.TEXT = '' THEN
       BEGIN
       Edit45.TEXT := BitBtn4.Caption;
        STGR_IMPAR_B.Cells [3,0] := BitBtn4.Caption;
       Edit45.SETFOCUS;
       EXIT;
       END;

       IF Edit46.TEXT = '' THEN
       BEGIN
       Edit46.TEXT := BitBtn4.Caption;
        STGR_IMPAR_B.Cells [4,0] := BitBtn4.Caption;
       Edit46.SETFOCUS;
       EXIT;
       END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '3';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '3';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '3';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '3';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '3';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;



procedure TForm1.BitBtn6Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
    BitBtn6.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(5);
        SELF.PR_BOTOES_MODELO3(5);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit26.TEXT = '' THEN
       BEGIN
           Edit26.TEXT := BitBtn6.Caption;
            STGR_IMPAR_A.Cells [0,0] := BitBtn6.Caption;
           Edit26.SETFOCUS;
           EXIT;
           END;

           IF Edit27.TEXT = '' THEN
           BEGIN
           Edit27.TEXT := BitBtn6.Caption;
            STGR_IMPAR_A.Cells [1,0] := BitBtn6.Caption;
           Edit27.SETFOCUS;
           EXIT;
           END;

           IF Edit28.TEXT = '' THEN
           BEGIN
           Edit28.TEXT := BitBtn6.Caption;
            STGR_IMPAR_A.Cells [2,0] := BitBtn6.Caption;
           Edit28.SETFOCUS;
           EXIT;
           END;

           IF Edit29.TEXT = '' THEN
           BEGIN
           Edit29.TEXT := BitBtn6.Caption;
            STGR_IMPAR_A.Cells [3,0] := BitBtn6.Caption;
           Edit29.SETFOCUS;
           EXIT;
           END;

           IF Edit30.TEXT = '' THEN
           BEGIN
           Edit30.TEXT := BitBtn6.Caption;
            STGR_IMPAR_A.Cells [4,0] := BitBtn6.Caption;
           Edit30.SETFOCUS;
           EXIT;
           END;

           IF Edit31.TEXT = '' THEN
           BEGIN
           Edit31.TEXT := BitBtn6.Caption;
            STGR_IMPAR_A.Cells [5,0] := BitBtn6.Caption;
           Edit31.SETFOCUS;
           EXIT;
           END;

           IF Edit32.TEXT = '' THEN
           BEGIN
           Edit32.TEXT := BitBtn6.Caption;
            STGR_IMPAR_A.Cells [6,0] := BitBtn6.Caption;
           Edit32.SETFOCUS;
           EXIT;
           END;

           IF Edit33.TEXT = '' THEN
           BEGIN
           Edit33.TEXT := BitBtn6.Caption;
            STGR_IMPAR_A.Cells [7,0] := BitBtn6.Caption;
           Edit33.SETFOCUS;
           EXIT;
           END;


           IF Edit42.TEXT = '' THEN
           BEGIN
           Edit42.TEXT := BitBtn6.Caption;
            STGR_IMPAR_B.Cells [0,0] := BitBtn6.Caption;
           Edit42.SETFOCUS;
           EXIT;
           END;

           IF Edit43.TEXT = '' THEN
           BEGIN
           Edit43.TEXT := BitBtn6.Caption;
            STGR_IMPAR_B.Cells [1,0] := BitBtn6.Caption;
           Edit43.SETFOCUS;
           EXIT;
           END;

           IF Edit44.TEXT = '' THEN
           BEGIN
           Edit44.TEXT := BitBtn6.Caption;
            STGR_IMPAR_B.Cells [2,0] := BitBtn6.Caption;
           Edit44.SETFOCUS;
           EXIT;
           END;

           IF Edit45.TEXT = '' THEN
           BEGIN
           Edit45.TEXT := BitBtn6.Caption;
            STGR_IMPAR_B.Cells [3,0] := BitBtn6.Caption;
           Edit45.SETFOCUS;
           EXIT;
           END;

           IF Edit46.TEXT = '' THEN
           BEGIN
           Edit46.TEXT := BitBtn6.Caption;
            STGR_IMPAR_B.Cells [4,0] := BitBtn6.Caption;
           Edit46.SETFOCUS;
           EXIT;
           END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '5';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '5';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
//  END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '5';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '5';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '5';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;



procedure TForm1.BitBtn8Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
    BitBtn8.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(7);
        SELF.PR_BOTOES_MODELO3(7);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit26.TEXT = '' THEN
       BEGIN
       Edit26.TEXT := BitBtn8.Caption;
        STGR_IMPAR_A.Cells [0,0] := BitBtn8.Caption;
       Edit26.SETFOCUS;
       EXIT;
       END;

       IF Edit27.TEXT = '' THEN
       BEGIN
       Edit27.TEXT := BitBtn8.Caption;
        STGR_IMPAR_A.Cells [1,0] := BitBtn8.Caption;
       Edit27.SETFOCUS;
       EXIT;
       END;

       IF Edit28.TEXT = '' THEN
       BEGIN
       Edit28.TEXT := BitBtn8.Caption;
        STGR_IMPAR_A.Cells [2,0] := BitBtn8.Caption;
       Edit28.SETFOCUS;
       EXIT;
       END;

       IF Edit29.TEXT = '' THEN
       BEGIN
       Edit29.TEXT := BitBtn8.Caption;
        STGR_IMPAR_A.Cells [3,0] := BitBtn8.Caption;
       Edit29.SETFOCUS;
       EXIT;
       END;

       IF Edit30.TEXT = '' THEN
       BEGIN
       Edit30.TEXT := BitBtn8.Caption;
        STGR_IMPAR_A.Cells [4,0] := BitBtn8.Caption;
       Edit30.SETFOCUS;
       EXIT;
       END;

       IF Edit31.TEXT = '' THEN
       BEGIN
       Edit31.TEXT := BitBtn8.Caption;
        STGR_IMPAR_A.Cells [5,0] := BitBtn8.Caption;
       Edit31.SETFOCUS;
       EXIT;
       END;

       IF Edit32.TEXT = '' THEN
       BEGIN
       Edit32.TEXT := BitBtn8.Caption;
        STGR_IMPAR_A.Cells [6,0] := BitBtn8.Caption;
       Edit32.SETFOCUS;
       EXIT;
       END;

       IF Edit33.TEXT = '' THEN
       BEGIN
       Edit33.TEXT := BitBtn8.Caption;
        STGR_IMPAR_A.Cells [7,0] := BitBtn8.Caption;
       Edit33.SETFOCUS;
       EXIT;
       END;


       IF Edit42.TEXT = '' THEN
       BEGIN
       Edit42.TEXT := BitBtn8.Caption;
        STGR_IMPAR_B.Cells [0,0] := BitBtn8.Caption;
       Edit42.SETFOCUS;
       EXIT;
       END;

       IF Edit43.TEXT = '' THEN
       BEGIN
       Edit43.TEXT := BitBtn8.Caption;
        STGR_IMPAR_B.Cells [1,0] := BitBtn8.Caption;
       Edit43.SETFOCUS;
       EXIT;
       END;

       IF Edit44.TEXT = '' THEN
       BEGIN
       Edit44.TEXT := BitBtn8.Caption;
        STGR_IMPAR_B.Cells [2,0] := BitBtn8.Caption;
       Edit44.SETFOCUS;
       EXIT;
       END;

       IF Edit45.TEXT = '' THEN
       BEGIN
       Edit45.TEXT := BitBtn8.Caption;
        STGR_IMPAR_B.Cells [3,0] := BitBtn8.Caption;
       Edit45.SETFOCUS;
       EXIT;
       END;

       IF Edit46.TEXT = '' THEN
       BEGIN
       Edit46.TEXT := BitBtn8.Caption;
        STGR_IMPAR_B.Cells [4,0] := BitBtn8.Caption;
       Edit46.SETFOCUS;
       EXIT;
       END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '7';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '7';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '7';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '7';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '7';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;





procedure TForm1.BitBtn10Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
     BitBtn10.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(9);
        SELF.PR_BOTOES_MODELO3(9);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
         IF Edit26.TEXT = '' THEN
       BEGIN
       Edit26.TEXT := BitBtn10.Caption;
        STGR_IMPAR_A.Cells [0,0] := BitBtn10.Caption;
       Edit26.SETFOCUS;
       EXIT;
       END;

       IF Edit27.TEXT = '' THEN
       BEGIN
       Edit27.TEXT := BitBtn10.Caption;
        STGR_IMPAR_A.Cells [1,0] := BitBtn10.Caption;
       Edit27.SETFOCUS;
       EXIT;
       END;

       IF Edit28.TEXT = '' THEN
       BEGIN
       Edit28.TEXT := BitBtn10.Caption;
        STGR_IMPAR_A.Cells [2,0] := BitBtn10.Caption;
       Edit28.SETFOCUS;
       EXIT;
       END;

       IF Edit29.TEXT = '' THEN
       BEGIN
       Edit29.TEXT := BitBtn10.Caption;
        STGR_IMPAR_A.Cells [3,0] := BitBtn10.Caption;
       Edit29.SETFOCUS;
       EXIT;
       END;

       IF Edit30.TEXT = '' THEN
       BEGIN
       Edit30.TEXT := BitBtn10.Caption;
        STGR_IMPAR_A.Cells [4,0] := BitBtn10.Caption;
       Edit30.SETFOCUS;
       EXIT;
       END;

       IF Edit31.TEXT = '' THEN
       BEGIN
       Edit31.TEXT := BitBtn10.Caption;
        STGR_IMPAR_A.Cells [5,0] := BitBtn10.Caption;
       Edit31.SETFOCUS;
       EXIT;
       END;

       IF Edit32.TEXT = '' THEN
       BEGIN
       Edit32.TEXT := BitBtn10.Caption;
        STGR_IMPAR_A.Cells [6,0] := BitBtn10.Caption;
       Edit32.SETFOCUS;
       EXIT;
       END;

       IF Edit33.TEXT = '' THEN
       BEGIN
       Edit33.TEXT := BitBtn10.Caption;
        STGR_IMPAR_A.Cells [7,0] := BitBtn10.Caption;
       Edit33.SETFOCUS;
       EXIT;
       END;


       IF Edit42.TEXT = '' THEN
       BEGIN
       Edit42.TEXT := BitBtn10.Caption;
        STGR_IMPAR_B.Cells [0,0] := BitBtn10.Caption;
       Edit42.SETFOCUS;
       EXIT;
       END;

       IF Edit43.TEXT = '' THEN
       BEGIN
       Edit43.TEXT := BitBtn10.Caption;
        STGR_IMPAR_B.Cells [1,0] := BitBtn10.Caption;
       Edit43.SETFOCUS;
       EXIT;
       END;

       IF Edit44.TEXT = '' THEN
       BEGIN
       Edit44.TEXT := BitBtn10.Caption;
        STGR_IMPAR_B.Cells [2,0] := BitBtn10.Caption;
       Edit44.SETFOCUS;
       EXIT;
       END;

       IF Edit45.TEXT = '' THEN
       BEGIN
       Edit45.TEXT := BitBtn10.Caption;
        STGR_IMPAR_B.Cells [3,0] := BitBtn10.Caption;
       Edit45.SETFOCUS;
       EXIT;
       END;

       IF Edit46.TEXT = '' THEN
       BEGIN
       Edit46.TEXT := BitBtn10.Caption;
        STGR_IMPAR_B.Cells [4,0] := BitBtn10.Caption;
       Edit46.SETFOCUS;
       EXIT;
       END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '9';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '9';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '9';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '9';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '9';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;



procedure TForm1.BitBtn12Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
BitBtn12.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(11);
        SELF.PR_BOTOES_MODELO3(11);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit26.TEXT = '' THEN
       BEGIN
       Edit26.TEXT := BitBtn12.Caption;
        STGR_IMPAR_A.Cells [0,0] := BitBtn12.Caption;
       Edit26.SETFOCUS;
       EXIT;
       END;

       IF Edit27.TEXT = '' THEN
       BEGIN
       Edit27.TEXT := BitBtn12.Caption;
        STGR_IMPAR_A.Cells [1,0] := BitBtn12.Caption;
       Edit27.SETFOCUS;
       EXIT;
       END;

       IF Edit28.TEXT = '' THEN
       BEGIN
       Edit28.TEXT := BitBtn12.Caption;
        STGR_IMPAR_A.Cells [2,0] := BitBtn12.Caption;
       Edit28.SETFOCUS;
       EXIT;
       END;

       IF Edit29.TEXT = '' THEN
       BEGIN
       Edit29.TEXT := BitBtn12.Caption;
        STGR_IMPAR_A.Cells [3,0] := BitBtn12.Caption;
       Edit29.SETFOCUS;
       EXIT;
       END;

       IF Edit30.TEXT = '' THEN
       BEGIN
       Edit30.TEXT := BitBtn12.Caption;
        STGR_IMPAR_A.Cells [4,0] := BitBtn12.Caption;
       Edit30.SETFOCUS;
       EXIT;
       END;

       IF Edit31.TEXT = '' THEN
       BEGIN
       Edit31.TEXT := BitBtn12.Caption;
        STGR_IMPAR_A.Cells [5,0] := BitBtn12.Caption;
       Edit31.SETFOCUS;
       EXIT;
       END;

       IF Edit32.TEXT = '' THEN
       BEGIN
       Edit32.TEXT := BitBtn12.Caption;
        STGR_IMPAR_A.Cells [6,0] := BitBtn12.Caption;
       Edit32.SETFOCUS;
       EXIT;
       END;

       IF Edit33.TEXT = '' THEN
       BEGIN
       Edit33.TEXT := BitBtn12.Caption;
        STGR_IMPAR_A.Cells [7,0] := BitBtn12.Caption;
       Edit33.SETFOCUS;
       EXIT;
       END;


       IF Edit42.TEXT = '' THEN
       BEGIN
       Edit42.TEXT := BitBtn12.Caption;
        STGR_IMPAR_B.Cells [0,0] := BitBtn12.Caption;
       Edit42.SETFOCUS;
       EXIT;
       END;

       IF Edit43.TEXT = '' THEN
       BEGIN
       Edit43.TEXT := BitBtn12.Caption;
        STGR_IMPAR_B.Cells [1,0] := BitBtn12.Caption;
       Edit43.SETFOCUS;
       EXIT;
       END;

       IF Edit44.TEXT = '' THEN
       BEGIN
       Edit44.TEXT := BitBtn12.Caption;
        STGR_IMPAR_B.Cells [2,0] := BitBtn12.Caption;
       Edit44.SETFOCUS;
       EXIT;
       END;

       IF Edit45.TEXT = '' THEN
       BEGIN
       Edit45.TEXT := BitBtn12.Caption;
        STGR_IMPAR_B.Cells [3,0] := BitBtn12.Caption;
       Edit45.SETFOCUS;
       EXIT;
       END;

       IF Edit46.TEXT = '' THEN
       BEGIN
       Edit46.TEXT := BitBtn12.Caption;
        STGR_IMPAR_B.Cells [4,0] := BitBtn12.Caption;
       Edit46.SETFOCUS;
       EXIT;
       END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '11';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '11';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '11';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '11';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '11';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;



procedure TForm1.BitBtn14Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
BitBtn14.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(13);
        SELF.PR_BOTOES_MODELO3(13);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit26.TEXT = '' THEN
       BEGIN
       Edit26.TEXT := BitBtn14.Caption;
        STGR_IMPAR_A.Cells [0,0] := BitBtn14.Caption;
       Edit26.SETFOCUS;
       EXIT;
       END;

       IF Edit27.TEXT = '' THEN
       BEGIN
       Edit27.TEXT := BitBtn14.Caption;
        STGR_IMPAR_A.Cells [1,0] := BitBtn14.Caption;
       Edit27.SETFOCUS;
       EXIT;
       END;

       IF Edit28.TEXT = '' THEN
       BEGIN
       Edit28.TEXT := BitBtn14.Caption;
        STGR_IMPAR_A.Cells [2,0] := BitBtn14.Caption;
       Edit28.SETFOCUS;
       EXIT;
       END;

       IF Edit29.TEXT = '' THEN
       BEGIN
       Edit29.TEXT := BitBtn14.Caption;
        STGR_IMPAR_A.Cells [3,0] := BitBtn14.Caption;
       Edit29.SETFOCUS;
       EXIT;
       END;

       IF Edit30.TEXT = '' THEN
       BEGIN
       Edit30.TEXT := BitBtn14.Caption;
        STGR_IMPAR_A.Cells [4,0] := BitBtn14.Caption;
       Edit30.SETFOCUS;
       EXIT;
       END;

       IF Edit31.TEXT = '' THEN
       BEGIN
       Edit31.TEXT := BitBtn14.Caption;
        STGR_IMPAR_A.Cells [5,0] := BitBtn14.Caption;
       Edit31.SETFOCUS;
       EXIT;
       END;

       IF Edit32.TEXT = '' THEN
       BEGIN
       Edit32.TEXT := BitBtn14.Caption;
        STGR_IMPAR_A.Cells [6,0] := BitBtn14.Caption;
       Edit32.SETFOCUS;
       EXIT;
       END;

       IF Edit33.TEXT = '' THEN
       BEGIN
       Edit33.TEXT := BitBtn14.Caption;
        STGR_IMPAR_A.Cells [7,0] := BitBtn14.Caption;
       Edit33.SETFOCUS;
       EXIT;
       END;


       IF Edit42.TEXT = '' THEN
       BEGIN
       Edit42.TEXT := BitBtn14.Caption;
        STGR_IMPAR_B.Cells [0,0] := BitBtn14.Caption;
       Edit42.SETFOCUS;
       EXIT;
       END;

       IF Edit43.TEXT = '' THEN
       BEGIN
       Edit43.TEXT := BitBtn14.Caption;
        STGR_IMPAR_B.Cells [1,0] := BitBtn14.Caption;
       Edit43.SETFOCUS;
       EXIT;
       END;

       IF Edit44.TEXT = '' THEN
       BEGIN
       Edit44.TEXT := BitBtn14.Caption;
        STGR_IMPAR_B.Cells [2,0] := BitBtn14.Caption;
       Edit44.SETFOCUS;
       EXIT;
       END;

       IF Edit45.TEXT = '' THEN
       BEGIN
       Edit45.TEXT := BitBtn14.Caption;
        STGR_IMPAR_B.Cells [3,0] := BitBtn14.Caption;
       Edit45.SETFOCUS;
       EXIT;
       END;

       IF Edit46.TEXT = '' THEN
       BEGIN
       Edit46.TEXT := BitBtn14.Caption;
        STGR_IMPAR_B.Cells [4,0] := BitBtn14.Caption;
       Edit46.SETFOCUS;
       EXIT;
       END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '13';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '13';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '13';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '13';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '13';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;


procedure TForm1.BitBtn16Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
    BitBtn16.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(15);
        SELF.PR_BOTOES_MODELO3(15);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit26.TEXT = '' THEN
       BEGIN
       Edit26.TEXT := BitBtn16.Caption;
        STGR_IMPAR_A.Cells [0,0] := BitBtn16.Caption;
       Edit26.SETFOCUS;
       EXIT;
       END;

       IF Edit27.TEXT = '' THEN
       BEGIN
       Edit27.TEXT := BitBtn16.Caption;
        STGR_IMPAR_A.Cells [1,0] := BitBtn16.Caption;
       Edit27.SETFOCUS;
       EXIT;
       END;

       IF Edit28.TEXT = '' THEN
       BEGIN
       Edit28.TEXT := BitBtn16.Caption;
        STGR_IMPAR_A.Cells [2,0] := BitBtn16.Caption;
       Edit28.SETFOCUS;
       EXIT;
       END;

       IF Edit29.TEXT = '' THEN
       BEGIN
       Edit29.TEXT := BitBtn16.Caption;
        STGR_IMPAR_A.Cells [3,0] := BitBtn16.Caption;
       Edit29.SETFOCUS;
       EXIT;
       END;

       IF Edit30.TEXT = '' THEN
       BEGIN
       Edit30.TEXT := BitBtn16.Caption;
        STGR_IMPAR_A.Cells [4,0] := BitBtn16.Caption;
       Edit30.SETFOCUS;
       EXIT;
       END;

       IF Edit31.TEXT = '' THEN
       BEGIN
       Edit31.TEXT := BitBtn16.Caption;
        STGR_IMPAR_A.Cells [5,0] := BitBtn16.Caption;
       Edit31.SETFOCUS;
       EXIT;
       END;

       IF Edit32.TEXT = '' THEN
       BEGIN
       Edit32.TEXT := BitBtn16.Caption;
        STGR_IMPAR_A.Cells [6,0] := BitBtn16.Caption;
       Edit32.SETFOCUS;
       EXIT;
       END;

       IF Edit33.TEXT = '' THEN
       BEGIN
       Edit33.TEXT := BitBtn16.Caption;
        STGR_IMPAR_A.Cells [7,0] := BitBtn16.Caption;
       Edit33.SETFOCUS;
       EXIT;
       END;


       IF Edit42.TEXT = '' THEN
       BEGIN
       Edit42.TEXT := BitBtn16.Caption;
        STGR_IMPAR_B.Cells [0,0] := BitBtn16.Caption;
       Edit42.SETFOCUS;
       EXIT;
       END;

       IF Edit43.TEXT = '' THEN
       BEGIN
       Edit43.TEXT := BitBtn16.Caption;
        STGR_IMPAR_B.Cells [1,0] := BitBtn16.Caption;
       Edit43.SETFOCUS;
       EXIT;
       END;

       IF Edit44.TEXT = '' THEN
       BEGIN
       Edit44.TEXT := BitBtn16.Caption;
        STGR_IMPAR_B.Cells [2,0] := BitBtn16.Caption;
       Edit44.SETFOCUS;
       EXIT;
       END;

       IF Edit45.TEXT = '' THEN
       BEGIN
       Edit45.TEXT := BitBtn16.Caption;
        STGR_IMPAR_B.Cells [3,0] := BitBtn16.Caption;
       Edit45.SETFOCUS;
       EXIT;
       END;

       IF Edit46.TEXT = '' THEN
       BEGIN
       Edit46.TEXT := BitBtn16.Caption;
        STGR_IMPAR_B.Cells [4,0] := BitBtn16.Caption;
       Edit46.SETFOCUS;
       EXIT;
       END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '15';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '15';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '15';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '15';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '15';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;



procedure TForm1.BitBtn18Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
BitBtn18.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(17);
        SELF.PR_BOTOES_MODELO3(17);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit26.TEXT = '' THEN
       BEGIN
       Edit26.TEXT := BitBtn18.Caption;
        STGR_IMPAR_A.Cells [0,0] := BitBtn18.Caption;
       Edit26.SETFOCUS;
       EXIT;
       END;

       IF Edit27.TEXT = '' THEN
       BEGIN
       Edit27.TEXT := BitBtn18.Caption;
        STGR_IMPAR_A.Cells [1,0] := BitBtn18.Caption;
       Edit27.SETFOCUS;
       EXIT;
       END;

       IF Edit28.TEXT = '' THEN
       BEGIN
       Edit28.TEXT := BitBtn18.Caption;
        STGR_IMPAR_A.Cells [2,0] := BitBtn18.Caption;
       Edit28.SETFOCUS;
       EXIT;
       END;

       IF Edit29.TEXT = '' THEN
       BEGIN
       Edit29.TEXT := BitBtn18.Caption;
        STGR_IMPAR_A.Cells [3,0] := BitBtn18.Caption;
       Edit29.SETFOCUS;
       EXIT;
       END;

       IF Edit30.TEXT = '' THEN
       BEGIN
       Edit30.TEXT := BitBtn18.Caption;
        STGR_IMPAR_A.Cells [4,0] := BitBtn18.Caption;
       Edit30.SETFOCUS;
       EXIT;
       END;

       IF Edit31.TEXT = '' THEN
       BEGIN
       Edit31.TEXT := BitBtn18.Caption;
        STGR_IMPAR_A.Cells [5,0] := BitBtn18.Caption;
       Edit31.SETFOCUS;
       EXIT;
       END;

       IF Edit32.TEXT = '' THEN
       BEGIN
       Edit32.TEXT := BitBtn18.Caption;
        STGR_IMPAR_A.Cells [6,0] := BitBtn18.Caption;
       Edit32.SETFOCUS;
       EXIT;
       END;

       IF Edit33.TEXT = '' THEN
       BEGIN
       Edit33.TEXT := BitBtn18.Caption;
        STGR_IMPAR_A.Cells [7,0] := BitBtn18.Caption;
       Edit33.SETFOCUS;
       EXIT;
       END;


       IF Edit42.TEXT = '' THEN
       BEGIN
       Edit42.TEXT := BitBtn18.Caption;
        STGR_IMPAR_B.Cells [0,0] := BitBtn18.Caption;
       Edit42.SETFOCUS;
       EXIT;
       END;

       IF Edit43.TEXT = '' THEN
       BEGIN
       Edit43.TEXT := BitBtn18.Caption;
        STGR_IMPAR_B.Cells [1,0] := BitBtn18.Caption;
       Edit43.SETFOCUS;
       EXIT;
       END;

       IF Edit44.TEXT = '' THEN
       BEGIN
       Edit44.TEXT := BitBtn18.Caption;
        STGR_IMPAR_B.Cells [2,0] := BitBtn18.Caption;
       Edit44.SETFOCUS;
       EXIT;
       END;

       IF Edit45.TEXT = '' THEN
       BEGIN
       Edit45.TEXT := BitBtn18.Caption;
        STGR_IMPAR_B.Cells [3,0] := BitBtn18.Caption;
       Edit45.SETFOCUS;
       EXIT;
       END;

       IF Edit46.TEXT = '' THEN
       BEGIN
       Edit46.TEXT := BitBtn18.Caption;
        STGR_IMPAR_B.Cells [4,0] := BitBtn18.Caption;
       Edit46.SETFOCUS;
       EXIT;
       END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '17';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '17';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '17';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '17';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '17';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;


procedure TForm1.BitBtn20Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
BitBtn20.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(19);
        SELF.PR_BOTOES_MODELO3(19);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit26.TEXT = '' THEN
       BEGIN
       Edit26.TEXT := BitBtn20.Caption;
        STGR_IMPAR_A.Cells [0,0] := BitBtn20.Caption;
       Edit26.SETFOCUS;
       EXIT;
       END;

       IF Edit27.TEXT = '' THEN
       BEGIN
       Edit27.TEXT := BitBtn20.Caption;
        STGR_IMPAR_A.Cells [1,0] := BitBtn20.Caption;
       Edit27.SETFOCUS;
       EXIT;
       END;

       IF Edit28.TEXT = '' THEN
       BEGIN
       Edit28.TEXT := BitBtn20.Caption;
        STGR_IMPAR_A.Cells [2,0] := BitBtn20.Caption;
       Edit28.SETFOCUS;
       EXIT;
       END;

       IF Edit29.TEXT = '' THEN
       BEGIN
       Edit29.TEXT := BitBtn20.Caption;
        STGR_IMPAR_A.Cells [3,0] := BitBtn20.Caption;
       Edit29.SETFOCUS;
       EXIT;
       END;

       IF Edit30.TEXT = '' THEN
       BEGIN
       Edit30.TEXT := BitBtn20.Caption;
        STGR_IMPAR_A.Cells [4,0] := BitBtn20.Caption;
       Edit30.SETFOCUS;
       EXIT;
       END;

       IF Edit31.TEXT = '' THEN
       BEGIN
       Edit31.TEXT := BitBtn20.Caption;
        STGR_IMPAR_A.Cells [5,0] := BitBtn20.Caption;
       Edit31.SETFOCUS;
       EXIT;
       END;

       IF Edit32.TEXT = '' THEN
       BEGIN
       Edit32.TEXT := BitBtn20.Caption;
        STGR_IMPAR_A.Cells [6,0] := BitBtn20.Caption;
       Edit32.SETFOCUS;
       EXIT;
       END;

       IF Edit33.TEXT = '' THEN
       BEGIN
       Edit33.TEXT := BitBtn20.Caption;
        STGR_IMPAR_A.Cells [7,0] := BitBtn20.Caption;
       Edit33.SETFOCUS;
       EXIT;
       END;


       IF Edit42.TEXT = '' THEN
       BEGIN
       Edit42.TEXT := BitBtn20.Caption;
        STGR_IMPAR_B.Cells [0,0] := BitBtn20.Caption;
       Edit42.SETFOCUS;
       EXIT;
       END;

       IF Edit43.TEXT = '' THEN
       BEGIN
       Edit43.TEXT := BitBtn20.Caption;
        STGR_IMPAR_B.Cells [1,0] := BitBtn20.Caption;
       Edit43.SETFOCUS;
       EXIT;
       END;

       IF Edit44.TEXT = '' THEN
       BEGIN
       Edit44.TEXT := BitBtn20.Caption;
        STGR_IMPAR_B.Cells [2,0] := BitBtn20.Caption;
       Edit44.SETFOCUS;
       EXIT;
       END;

       IF Edit45.TEXT = '' THEN
       BEGIN
       Edit45.TEXT := BitBtn20.Caption;
        STGR_IMPAR_B.Cells [3,0] := BitBtn20.Caption;
       Edit45.SETFOCUS;
       EXIT;
       END;

       IF Edit46.TEXT = '' THEN
       BEGIN
       Edit46.TEXT := BitBtn20.Caption;
        STGR_IMPAR_B.Cells [4,0] := BitBtn20.Caption;
       Edit46.SETFOCUS;
       EXIT;
       END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '19';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '19';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '19';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '19';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '19';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;


procedure TForm1.BitBtn22Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
BitBtn22.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(21);
        SELF.PR_BOTOES_MODELO3(21);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit26.TEXT = '' THEN
       BEGIN
       Edit26.TEXT := BitBtn22.Caption;
        STGR_IMPAR_A.Cells [0,0] := BitBtn22.Caption;
       Edit26.SETFOCUS;
       EXIT;
       END;

       IF Edit27.TEXT = '' THEN
       BEGIN
       Edit27.TEXT := BitBtn22.Caption;
       STGR_IMPAR_A.Cells [1,0] := BitBtn22.Caption;
       Edit27.SETFOCUS;
       EXIT;
       END;

       IF Edit28.TEXT = '' THEN
       BEGIN
       Edit28.TEXT := BitBtn22.Caption;
       STGR_IMPAR_A.Cells [2,0] := BitBtn22.Caption;
       Edit28.SETFOCUS;
       EXIT;
       END;

       IF Edit29.TEXT = '' THEN
       BEGIN
       Edit29.TEXT := BitBtn22.Caption;
       STGR_IMPAR_A.Cells [3,0] := BitBtn22.Caption;
       Edit29.SETFOCUS;
       EXIT;
       END;

       IF Edit30.TEXT = '' THEN
       BEGIN
       Edit30.TEXT := BitBtn22.Caption;
       STGR_IMPAR_A.Cells [4,0] := BitBtn22.Caption;
       Edit30.SETFOCUS;
       EXIT;
       END;

       IF Edit31.TEXT = '' THEN
       BEGIN
       Edit31.TEXT := BitBtn22.Caption;
       STGR_IMPAR_A.Cells [5,0] := BitBtn22.Caption;
       Edit31.SETFOCUS;
       EXIT;
       END;

       IF Edit32.TEXT = '' THEN
       BEGIN
       Edit32.TEXT := BitBtn22.Caption;
       STGR_IMPAR_A.Cells [6,0] := BitBtn22.Caption;
       Edit32.SETFOCUS;
       EXIT;
       END;

       IF Edit33.TEXT = '' THEN
       BEGIN
       Edit33.TEXT := BitBtn22.Caption;
       STGR_IMPAR_A.Cells [7,0] := BitBtn22.Caption;
       Edit33.SETFOCUS;
       EXIT;
       END;


       IF Edit42.TEXT = '' THEN
       BEGIN
       Edit42.TEXT := BitBtn22.Caption;
        STGR_IMPAR_B.Cells [0,0] := BitBtn22.Caption;
       Edit42.SETFOCUS;
       EXIT;
       END;

       IF Edit43.TEXT = '' THEN
       BEGIN
       Edit43.TEXT := BitBtn22.Caption;
       STGR_IMPAR_B.Cells [1,0] := BitBtn22.Caption;
       Edit43.SETFOCUS;
       EXIT;
       END;

       IF Edit44.TEXT = '' THEN
       BEGIN
       Edit44.TEXT := BitBtn22.Caption;
       STGR_IMPAR_B.Cells [2,0] := BitBtn22.Caption;
       Edit44.SETFOCUS;
       EXIT;
       END;

       IF Edit45.TEXT = '' THEN
       BEGIN
       Edit45.TEXT := BitBtn22.Caption;
       STGR_IMPAR_B.Cells [3,0] := BitBtn22.Caption;
       Edit45.SETFOCUS;
       EXIT;
       END;

       IF Edit46.TEXT = '' THEN
       BEGIN
       Edit46.TEXT := BitBtn22.Caption;
       STGR_IMPAR_B.Cells [4,0] := BitBtn22.Caption;
       Edit46.SETFOCUS;
       EXIT;
       END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '21';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '21';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '21';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '21';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '21';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;



procedure TForm1.BitBtn24Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
BitBtn24.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(23);
        SELF.PR_BOTOES_MODELO3(23);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit26.TEXT = '' THEN
       BEGIN
       Edit26.TEXT := BitBtn24.Caption;
        STGR_IMPAR_A.Cells [0,0] := BitBtn24.Caption;
       Edit26.SETFOCUS;
       EXIT;
       END;

       IF Edit27.TEXT = '' THEN
       BEGIN
       Edit27.TEXT := BitBtn24.Caption;
       STGR_IMPAR_A.Cells [1,0] := BitBtn24.Caption;
       Edit27.SETFOCUS;
       EXIT;
       END;

       IF Edit28.TEXT = '' THEN
       BEGIN
       Edit28.TEXT := BitBtn24.Caption;
       STGR_IMPAR_A.Cells [2,0] := BitBtn24.Caption;
       Edit28.SETFOCUS;
       EXIT;
       END;

       IF Edit29.TEXT = '' THEN
       BEGIN
       Edit29.TEXT := BitBtn24.Caption;
       STGR_IMPAR_A.Cells [3,0] := BitBtn24.Caption;
       Edit29.SETFOCUS;
       EXIT;
       END;

       IF Edit30.TEXT = '' THEN
       BEGIN
       Edit30.TEXT := BitBtn24.Caption;
       STGR_IMPAR_A.Cells [4,0] := BitBtn24.Caption;
       Edit30.SETFOCUS;
       EXIT;
       END;

       IF Edit31.TEXT = '' THEN
       BEGIN
       Edit31.TEXT := BitBtn24.Caption;
       STGR_IMPAR_A.Cells [5,0] := BitBtn24.Caption;
       Edit31.SETFOCUS;
       EXIT;
       END;

       IF Edit32.TEXT = '' THEN
       BEGIN
       Edit32.TEXT := BitBtn24.Caption;
       STGR_IMPAR_A.Cells [6,0] := BitBtn24.Caption;
       Edit32.SETFOCUS;
       EXIT;
       END;

       IF Edit33.TEXT = '' THEN
       BEGIN
       Edit33.TEXT := BitBtn24.Caption;
       STGR_IMPAR_A.Cells [7,0] := BitBtn24.Caption;
       Edit33.SETFOCUS;
       EXIT;
       END;


       IF Edit42.TEXT = '' THEN
       BEGIN
       Edit42.TEXT := BitBtn24.Caption;
        STGR_IMPAR_B.Cells [0,0] := BitBtn24.Caption;
       Edit42.SETFOCUS;
       EXIT;
       END;

       IF Edit43.TEXT = '' THEN
       BEGIN
       Edit43.TEXT := BitBtn24.Caption;
       STGR_IMPAR_B.Cells [1,0] := BitBtn24.Caption;
       Edit43.SETFOCUS;
       EXIT;
       END;

       IF Edit44.TEXT = '' THEN
       BEGIN
       Edit44.TEXT := BitBtn24.Caption;
       STGR_IMPAR_B.Cells [2,0] := BitBtn24.Caption;
       Edit44.SETFOCUS;
       EXIT;
       END;

       IF Edit45.TEXT = '' THEN
       BEGIN
       Edit45.TEXT := BitBtn24.Caption;
       STGR_IMPAR_B.Cells [3,0] := BitBtn24.Caption;
       Edit45.SETFOCUS;
       EXIT;
       END;

       IF Edit46.TEXT = '' THEN
       BEGIN
       Edit46.TEXT := BitBtn24.Caption;
       STGR_IMPAR_B.Cells [4,0] := BitBtn24.Caption;
       Edit46.SETFOCUS;
       EXIT;
       END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '23';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '23';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '23';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '23';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '23';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;



procedure TForm1.BitBtn26Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
BitBtn26.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(25);
        SELF.PR_BOTOES_MODELO3(25);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit26.TEXT = '' THEN
       BEGIN
       Edit26.TEXT := BitBtn26.Caption;
        STGR_IMPAR_A.Cells [0,0] := BitBtn26.Caption;
       Edit26.SETFOCUS;
       EXIT;
       END;

       IF Edit27.TEXT = '' THEN
       BEGIN
       Edit27.TEXT := BitBtn26.Caption;
        STGR_IMPAR_A.Cells [1,0] := BitBtn26.Caption;
       Edit27.SETFOCUS;
       EXIT;
       END;

       IF Edit28.TEXT = '' THEN
       BEGIN
       Edit28.TEXT := BitBtn26.Caption;
       STGR_IMPAR_A.Cells [2,0] := BitBtn26.Caption;
       Edit28.SETFOCUS;
       EXIT;
       END;

       IF Edit29.TEXT = '' THEN
       BEGIN
       Edit29.TEXT := BitBtn26.Caption;
       STGR_IMPAR_A.Cells [3,0] := BitBtn26.Caption;
       Edit29.SETFOCUS;
       EXIT;
       END;

       IF Edit30.TEXT = '' THEN
       BEGIN
       Edit30.TEXT := BitBtn26.Caption;
       STGR_IMPAR_A.Cells [4,0] := BitBtn26.Caption;
       Edit30.SETFOCUS;
       EXIT;
       END;

       IF Edit31.TEXT = '' THEN
       BEGIN
       Edit31.TEXT := BitBtn26.Caption;
       STGR_IMPAR_A.Cells [5,0] := BitBtn26.Caption;
       Edit31.SETFOCUS;
       EXIT;
       END;

       IF Edit32.TEXT = '' THEN
       BEGIN
       Edit32.TEXT := BitBtn26.Caption;
       STGR_IMPAR_A.Cells [6,0] := BitBtn26.Caption;
       Edit32.SETFOCUS;
       EXIT;
       END;

       IF Edit33.TEXT = '' THEN
       BEGIN
       Edit33.TEXT := BitBtn26.Caption;
       STGR_IMPAR_A.Cells [7,0] := BitBtn26.Caption;
       Edit33.SETFOCUS;
       EXIT;
       END;


       IF Edit42.TEXT = '' THEN
       BEGIN
       Edit42.TEXT := BitBtn26.Caption;
       STGR_IMPAR_B.Cells [0,0] := BitBtn26.Caption;
       Edit42.SETFOCUS;
       EXIT;
       END;

       IF Edit43.TEXT = '' THEN
       BEGIN
       Edit43.TEXT := BitBtn26.Caption;
       STGR_IMPAR_B.Cells [1,0] := BitBtn26.Caption;
       Edit43.SETFOCUS;
       EXIT;
       END;

       IF Edit44.TEXT = '' THEN
       BEGIN
       Edit44.TEXT := BitBtn26.Caption;
       STGR_IMPAR_B.Cells [2,0] := BitBtn26.Caption;
       Edit44.SETFOCUS;
       EXIT;
       END;

       IF Edit45.TEXT = '' THEN
       BEGIN
       Edit45.TEXT := BitBtn26.Caption;
       STGR_IMPAR_B.Cells [3,0] := BitBtn26.Caption;
       Edit45.SETFOCUS;
       EXIT;
       END;

       IF Edit46.TEXT = '' THEN
       BEGIN
       Edit46.TEXT := BitBtn26.Caption;
       STGR_IMPAR_B.Cells [4,0] := BitBtn26.Caption;
       Edit46.SETFOCUS;
       EXIT;
       END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '25';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '25';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '25';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '25';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '25';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;





//========================================
//=== 	 		P A R E S			   ===
//========================================

//-----------
// BOT�O 02 -
//-----------
procedure TForm1.BBT_N_02Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
	BBT_N_02.Visible := false;
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        SELF.PR_BOTOES_MODELO2(02);
        SELF.PR_BOTOES_MODELO3(02);
       IF Edit34.TEXT = '' THEN
       BEGIN
           Edit34.TEXT := BBT_N_02.Caption;
           Edit34.SETFOCUS;
           STGR_PAR_A.Cells[0,0] := BBT_N_02.Caption;
           EXIT;
       END;

       IF Edit35.TEXT = '' THEN
       BEGIN
           Edit35.TEXT := BBT_N_02.Caption;
           STGR_PAR_A.Cells[1,0] := BBT_N_02.Caption;
           Edit35.SETFOCUS;
           EXIT;
       END;

       IF Edit36.TEXT = '' THEN
       BEGIN
           Edit36.TEXT := BBT_N_02.Caption;
           STGR_PAR_A.Cells[2,0] := BBT_N_02.Caption;
           Edit36.SETFOCUS;
           EXIT;
       END;

       IF Edit37.TEXT = '' THEN
       BEGIN
           Edit37.TEXT := BBT_N_02.Caption;
           STGR_PAR_A.Cells[3,0] := BBT_N_02.Caption;
           Edit37.SETFOCUS;
           EXIT;
       END;

       IF Edit38.TEXT = '' THEN
       BEGIN
           Edit38.TEXT := BBT_N_02.Caption;
           STGR_PAR_A.Cells[4,0] := BBT_N_02.Caption;
           Edit38.SETFOCUS;
           EXIT;
       END;

        IF Edit39.TEXT = '' THEN
       BEGIN
           Edit39.TEXT := BBT_N_02.Caption;
           STGR_PAR_A.Cells[5,0] := BBT_N_02.Caption;
           Edit39.SETFOCUS;
           EXIT;
       END;

       IF Edit40.TEXT = '' THEN
       BEGIN
         Edit40.TEXT := BBT_N_02.Caption;
           STGR_PAR_A.Cells[6,0] := BBT_N_02.Caption;
         Edit40.SETFOCUS;
         EXIT;
       END;
       // ----> PAR B
       IF Edit50.TEXT = '' THEN
       BEGIN
         Edit50.TEXT := BBT_N_02.Caption;
         STGR_PAR_B.Cells[0,0] := BBT_N_02.Caption;
         Edit50.SETFOCUS;
         EXIT;
       END;

       IF Edit51.TEXT = '' THEN
       BEGIN
         Edit51.TEXT := BBT_N_02.Caption;
         STGR_PAR_B.Cells[1,0] := BBT_N_02.Caption;
         Edit51.SETFOCUS;
         EXIT;
       END;

       IF Edit52.TEXT = '' THEN
       BEGIN
         Edit52.TEXT := BBT_N_02.Caption;
         STGR_PAR_B.Cells[2,0] := BBT_N_02.Caption;
         Edit52.SETFOCUS;
         EXIT;
       END;

       IF Edit53.TEXT = '' THEN
       BEGIN
         Edit53.TEXT := BBT_N_02.Caption;
         STGR_PAR_B.Cells[3,0] := BBT_N_02.Caption;
         Edit53.SETFOCUS;
         EXIT;
       END;

       IF Edit54.TEXT = '' THEN
       BEGIN
         Edit54.TEXT := BBT_N_02.Caption;
         STGR_PAR_B.Cells[4,0] := BBT_N_02.Caption;
         Edit54.SETFOCUS;
         EXIT;
       END;
//    END ELSE
//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
{
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '2';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '2';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
 //  END ELSE
 //   IF (RB_SIM_MODELO_03.Checked = TRUE) THEN
 //   BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '2';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '2';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '2';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
 //   END; //IF (RB_SIM_MODELO_01.Checked
 }
end;

//-----------
// BOT�O 04 -
//-----------
procedure TForm1.BBT_N_04Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
	BBT_N_04.Visible := false;
        SELF.PR_BOTOES_MODELO2(04);
        SELF.PR_BOTOES_MODELO3(04);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit34.TEXT = '' THEN
            BEGIN
            Edit34.TEXT := BBT_N_04.Caption;
            STGR_PAR_A.Cells[0,0] := BBT_N_04.Caption;
            Edit34.SETFOCUS;
            EXIT;
        END;

       IF Edit35.TEXT = '' THEN
       BEGIN
           Edit35.TEXT := BBT_N_04.Caption;
            STGR_PAR_A.Cells[1,0] := BBT_N_04.Caption;
           Edit35.SETFOCUS;
           EXIT;
       END;

       IF Edit36.TEXT = '' THEN
       BEGIN
           Edit36.TEXT := BBT_N_04.Caption;
            STGR_PAR_A.Cells[2,0] := BBT_N_04.Caption;
           Edit36.SETFOCUS;
           EXIT;
       END;

       IF Edit37.TEXT = '' THEN
       BEGIN
           Edit37.TEXT := BBT_N_04.Caption;
            STGR_PAR_A.Cells[3,0] := BBT_N_04.Caption;
           Edit37.SETFOCUS;
           EXIT;
       END;

       IF Edit38.TEXT = '' THEN
       BEGIN
           Edit38.TEXT := BBT_N_04.Caption;
            STGR_PAR_A.Cells[4,0] := BBT_N_04.Caption;
           Edit38.SETFOCUS;
           EXIT;
       END;

       IF Edit39.TEXT = '' THEN
       BEGIN
           Edit39.TEXT := BBT_N_04.Caption;
            STGR_PAR_A.Cells[5,0] := BBT_N_04.Caption;
           Edit39.SETFOCUS;
           EXIT;
       END;


       IF Edit40.TEXT = '' THEN
       BEGIN
         Edit40.TEXT := BBT_N_04.Caption;
            STGR_PAR_A.Cells[6,0] := BBT_N_04.Caption;       
         Edit40.SETFOCUS;
         EXIT;
       END;

       // ----> PAR B
       IF Edit50.TEXT = '' THEN
       BEGIN
         Edit50.TEXT := BBT_N_04.Caption;
         STGR_PAR_B.Cells[0,0] := BBT_N_04.Caption;
         Edit50.SETFOCUS;
         EXIT;
       END;

       IF Edit51.TEXT = '' THEN
       BEGIN
         Edit51.TEXT := BBT_N_04.Caption;
         STGR_PAR_B.Cells[1,0] := BBT_N_04.Caption;
         Edit51.SETFOCUS;
         EXIT;
       END;

       IF Edit52.TEXT = '' THEN
       BEGIN
         Edit52.TEXT := BBT_N_04.Caption;
         STGR_PAR_B.Cells[2,0] := BBT_N_04.Caption;
         Edit52.SETFOCUS;
         EXIT;
       END;

       IF Edit53.TEXT = '' THEN
       BEGIN
         Edit53.TEXT := BBT_N_04.Caption;
         STGR_PAR_B.Cells[3,0] := BBT_N_04.Caption;
         Edit53.SETFOCUS;
         EXIT;
       END;

       IF Edit54.TEXT = '' THEN
       BEGIN
         Edit54.TEXT := BBT_N_04.Caption;
         STGR_PAR_B.Cells[4,0] := BBT_N_04.Caption;     
         Edit54.SETFOCUS;
         EXIT;
       END;
//    END ELSE
//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '4';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '4';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
//   END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '4';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '4';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '4';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
//    END; //IF (RB_SIM_MODELO_01.Checked
end;



//-----------
// BOT�O 06 -
//-----------
procedure TForm1.BBT_N_06Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
     BBT_N_06.Visible := false;
        SELF.PR_BOTOES_MODELO2(06);
        SELF.PR_BOTOES_MODELO3(06);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit34.TEXT = '' THEN
        BEGIN
            Edit34.TEXT := BBT_N_06.Caption;
            STGR_PAR_A.Cells[0,0] := BBT_N_06.Caption;
            Edit34.SETFOCUS;
            EXIT;
        END;

       IF Edit35.TEXT = '' THEN
       BEGIN
           Edit35.TEXT := BBT_N_06.Caption;
            STGR_PAR_A.Cells[1,0] := BBT_N_06.Caption;
           Edit35.SETFOCUS;
           EXIT;
       END;

       IF Edit36.TEXT = '' THEN
       BEGIN
           Edit36.TEXT := BBT_N_06.Caption;
            STGR_PAR_A.Cells[2,0] := BBT_N_06.Caption;
           Edit36.SETFOCUS;
           EXIT;
       END;

       IF Edit37.TEXT = '' THEN
       BEGIN
           Edit37.TEXT := BBT_N_06.Caption;
            STGR_PAR_A.Cells[3,0] := BBT_N_06.Caption;
           Edit37.SETFOCUS;
           EXIT;
       END;

       IF Edit38.TEXT = '' THEN
       BEGIN
           Edit38.TEXT := BBT_N_06.Caption;
            STGR_PAR_A.Cells[4,0] := BBT_N_06.Caption;
           Edit38.SETFOCUS;
           EXIT;
       END;

       IF Edit39.TEXT = '' THEN
       BEGIN
           Edit39.TEXT := BBT_N_06.Caption;
            STGR_PAR_A.Cells[5,0] := BBT_N_06.Caption;
           Edit39.SETFOCUS;
           EXIT;
       END;

       IF Edit40.TEXT = '' THEN
       BEGIN
         Edit40.TEXT := BBT_N_06.Caption;
            STGR_PAR_A.Cells[6,0] := BBT_N_06.Caption;
         Edit40.SETFOCUS;
         EXIT;
       END;

       // ----> PAR B
       IF Edit50.TEXT = '' THEN
       BEGIN
         Edit50.TEXT := BBT_N_06.Caption;
         STGR_PAR_B.Cells[0,0] := BBT_N_06.Caption;
         Edit50.SETFOCUS;
         EXIT;
       END;

       IF Edit51.TEXT = '' THEN
       BEGIN
         Edit51.TEXT := BBT_N_06.Caption;
         STGR_PAR_B.Cells[1,0] := BBT_N_06.Caption;
         Edit51.SETFOCUS;
         EXIT;
       END;

       IF Edit52.TEXT = '' THEN
       BEGIN
         Edit52.TEXT := BBT_N_06.Caption;
         STGR_PAR_B.Cells[2,0] := BBT_N_06.Caption;
         Edit52.SETFOCUS;
         EXIT;
       END;

       IF Edit53.TEXT = '' THEN
       BEGIN
         Edit53.TEXT := BBT_N_06.Caption;
         STGR_PAR_B.Cells[3,0] := BBT_N_06.Caption;
         Edit53.SETFOCUS;
         EXIT;
       END;

       IF Edit54.TEXT = '' THEN
       BEGIN
         Edit54.TEXT := BBT_N_06.Caption;
         STGR_PAR_B.Cells[4,0] := BBT_N_06.Caption;
         Edit54.SETFOCUS;
         EXIT;
       END;
//    END ELSE
//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '6';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '6';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '6';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '6';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '6';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;



//-----------
// BOT�O 08 -
//-----------
procedure TForm1.BBT_N_08Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
	BBT_N_08.Visible := false;
        SELF.PR_BOTOES_MODELO2(08);
        SELF.PR_BOTOES_MODELO3(08);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit34.TEXT = '' THEN
        BEGIN
            Edit34.TEXT := BBT_N_08.Caption;
            STGR_PAR_A.Cells[0,0] := BBT_N_08.Caption;
            Edit34.SETFOCUS;
            EXIT;
        END;

       IF Edit35.TEXT = '' THEN
       BEGIN
           Edit35.TEXT := BBT_N_08.Caption;
            STGR_PAR_A.Cells[1,0] := BBT_N_08.Caption;
           Edit35.SETFOCUS;
           EXIT;
       END;

       IF Edit36.TEXT = '' THEN
       BEGIN
           Edit36.TEXT := BBT_N_08.Caption;
            STGR_PAR_A.Cells[2,0] := BBT_N_08.Caption;
           Edit36.SETFOCUS;
           EXIT;
       END;

       IF Edit37.TEXT = '' THEN
       BEGIN
           Edit37.TEXT := BBT_N_08.Caption;
            STGR_PAR_A.Cells[3,0] := BBT_N_08.Caption;
           Edit37.SETFOCUS;
           EXIT;
       END;

       IF Edit38.TEXT = '' THEN
       BEGIN
           Edit38.TEXT := BBT_N_08.Caption;
            STGR_PAR_A.Cells[4,0] := BBT_N_08.Caption;
           Edit38.SETFOCUS;
           EXIT;
       END;

       IF Edit39.TEXT = '' THEN
       BEGIN
           Edit39.TEXT := BBT_N_08.Caption;
            STGR_PAR_A.Cells[5,0] := BBT_N_08.Caption;
           Edit39.SETFOCUS;
           EXIT;
       END;

       IF Edit40.TEXT = '' THEN
       BEGIN
            Edit40.TEXT := BBT_N_08.Caption;
            STGR_PAR_A.Cells[6,0] := BBT_N_08.Caption;
            Edit40.SETFOCUS;
            EXIT;
       END;

       // ----> PAR B
       IF Edit50.TEXT = '' THEN
       BEGIN
         Edit50.TEXT := BBT_N_08.Caption;
         STGR_PAR_B.Cells[0,0] := BBT_N_08.Caption;
         Edit50.SETFOCUS;
         EXIT;
       END;

       IF Edit51.TEXT = '' THEN
       BEGIN
         Edit51.TEXT := BBT_N_08.Caption;
         STGR_PAR_B.Cells[1,0] := BBT_N_08.Caption;
         Edit51.SETFOCUS;
         EXIT;
       END;

       IF Edit52.TEXT = '' THEN
       BEGIN
         Edit52.TEXT := BBT_N_08.Caption;
         STGR_PAR_B.Cells[2,0] := BBT_N_08.Caption;
         Edit52.SETFOCUS;
         EXIT;
       END;

       IF Edit53.TEXT = '' THEN
       BEGIN
         Edit53.TEXT := BBT_N_08.Caption;
         STGR_PAR_B.Cells[3,0] := BBT_N_08.Caption;
         Edit53.SETFOCUS;
         EXIT;
       END;

       IF Edit54.TEXT = '' THEN
       BEGIN
         Edit54.TEXT := BBT_N_08.Caption;
         STGR_PAR_B.Cells[4,0] := BBT_N_08.Caption;
         Edit54.SETFOCUS;
         EXIT;
       END;
//    END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '8';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '8';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
 //    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '8';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '8';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '8';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;



//-----------
// BOT�O 10 -
//-----------
procedure TForm1.BBT_N_10Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
    BBT_N_10.Visible := false;
        SELF.PR_BOTOES_MODELO2(10);
        SELF.PR_BOTOES_MODELO3(10);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit34.TEXT = '' THEN
        BEGIN
            Edit34.TEXT := BBT_N_10.Caption;
            STGR_PAR_A.Cells[0,0] := BBT_N_10.Caption;
            Edit34.SETFOCUS;
            EXIT;
        END;

       IF Edit35.TEXT = '' THEN
       BEGIN
           Edit35.TEXT := BBT_N_10.Caption;
            STGR_PAR_A.Cells[1,0] := BBT_N_10.Caption;
           Edit35.SETFOCUS;
           EXIT;
       END;

       IF Edit36.TEXT = '' THEN
       BEGIN
           Edit36.TEXT := BBT_N_10.Caption;
            STGR_PAR_A.Cells[2,0] := BBT_N_10.Caption;
           Edit36.SETFOCUS;
           EXIT;
       END;

       IF Edit37.TEXT = '' THEN
       BEGIN
           Edit37.TEXT := BBT_N_10.Caption;
            STGR_PAR_A.Cells[3,0] := BBT_N_10.Caption;
           Edit37.SETFOCUS;
           EXIT;
       END;

       IF Edit38.TEXT = '' THEN
       BEGIN
           Edit38.TEXT := BBT_N_10.Caption;
            STGR_PAR_A.Cells[4,0] := BBT_N_10.Caption;
           Edit38.SETFOCUS;
           EXIT;
       END;

       IF Edit39.TEXT = '' THEN
       BEGIN
           Edit39.TEXT := BBT_N_10.Caption;
            STGR_PAR_A.Cells[5,0] := BBT_N_10.Caption;
           Edit39.SETFOCUS;
           EXIT;
       END;

       IF Edit40.TEXT = '' THEN
       BEGIN
            Edit40.TEXT := BBT_N_10.Caption;
            STGR_PAR_A.Cells[6,0] := BBT_N_10.Caption;        
            Edit40.SETFOCUS;
            EXIT;
       END;

       // ----> PAR B
       IF Edit50.TEXT = '' THEN
       BEGIN
         Edit50.TEXT := BBT_N_10.Caption;
         STGR_PAR_B.Cells[0,0] := BBT_N_10.Caption;
         Edit50.SETFOCUS;
         EXIT;
       END;

       IF Edit51.TEXT = '' THEN
       BEGIN
         Edit51.TEXT := BBT_N_10.Caption;
         STGR_PAR_B.Cells[1,0] := BBT_N_10.Caption;
         Edit51.SETFOCUS;
         EXIT;
       END;

       IF Edit52.TEXT = '' THEN
       BEGIN
         Edit52.TEXT := BBT_N_10.Caption;
         STGR_PAR_B.Cells[2,0] := BBT_N_10.Caption;
         Edit52.SETFOCUS;
         EXIT;
       END;

       IF Edit53.TEXT = '' THEN
       BEGIN
         Edit53.TEXT := BBT_N_10.Caption;
         STGR_PAR_B.Cells[3,0] := BBT_N_10.Caption;
         Edit53.SETFOCUS;
         EXIT;
       END;

       IF Edit54.TEXT = '' THEN
       BEGIN
         Edit54.TEXT := BBT_N_10.Caption;
         STGR_PAR_B.Cells[4,0] := BBT_N_10.Caption;
         Edit54.SETFOCUS;
         EXIT;
       END;
//  END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '10';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '10';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '10';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '10';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '10';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;



//-----------
// BOT�O 12 -
//-----------
procedure TForm1.BBT_N_12Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
	BBT_N_12.Visible := false;
        SELF.PR_BOTOES_MODELO2(12);
        SELF.PR_BOTOES_MODELO3(12);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit34.TEXT = '' THEN
        BEGIN
            Edit34.TEXT := BBT_N_12.Caption;
            STGR_PAR_A.Cells[0,0] := BBT_N_12.Caption;
            Edit34.SETFOCUS;
            EXIT;
        END;

       IF Edit35.TEXT = '' THEN
       BEGIN
           Edit35.TEXT := BBT_N_12.Caption;
            STGR_PAR_A.Cells[1,0] := BBT_N_12.Caption;
           Edit35.SETFOCUS;
           EXIT;
       END;

       IF Edit36.TEXT = '' THEN
       BEGIN
           Edit36.TEXT := BBT_N_12.Caption;
            STGR_PAR_A.Cells[2,0] := BBT_N_12.Caption;
           Edit36.SETFOCUS;
           EXIT;
       END;

       IF Edit37.TEXT = '' THEN
       BEGIN
           Edit37.TEXT := BBT_N_12.Caption;
            STGR_PAR_A.Cells[3,0] := BBT_N_12.Caption;
           Edit37.SETFOCUS;
           EXIT;
       END;

       IF Edit38.TEXT = '' THEN
       BEGIN
           Edit38.TEXT := BBT_N_12.Caption;
            STGR_PAR_A.Cells[4,0] := BBT_N_12.Caption;
           Edit38.SETFOCUS;
           EXIT;
       END;

       IF Edit39.TEXT = '' THEN
       BEGIN
           Edit39.TEXT := BBT_N_12.Caption;
            STGR_PAR_A.Cells[5,0] := BBT_N_12.Caption;
           Edit39.SETFOCUS;
           EXIT;
       END;

       IF Edit40.TEXT = '' THEN
       BEGIN
            Edit40.TEXT := BBT_N_12.Caption;
            STGR_PAR_A.Cells[6,0] := BBT_N_12.Caption;
            Edit40.SETFOCUS;
            EXIT;
       END;

       // ----> PAR B
       IF Edit50.TEXT = '' THEN
       BEGIN
         Edit50.TEXT := BBT_N_12.Caption;
         STGR_PAR_B.Cells[0,0] := BBT_N_12.Caption;
         Edit50.SETFOCUS;
         EXIT;
       END;

       IF Edit51.TEXT = '' THEN
       BEGIN
         Edit51.TEXT := BBT_N_12.Caption;
         STGR_PAR_B.Cells[1,0] := BBT_N_12.Caption;
         Edit51.SETFOCUS;
         EXIT;
       END;

       IF Edit52.TEXT = '' THEN
       BEGIN
         Edit52.TEXT := BBT_N_12.Caption;
         STGR_PAR_B.Cells[2,0] := BBT_N_12.Caption;
         Edit52.SETFOCUS;
         EXIT;
       END;

       IF Edit53.TEXT = '' THEN
       BEGIN
         Edit53.TEXT := BBT_N_12.Caption;
         STGR_PAR_B.Cells[3,0] := BBT_N_12.Caption;
         Edit53.SETFOCUS;
         EXIT;
       END;

       IF Edit54.TEXT = '' THEN
       BEGIN
         Edit54.TEXT := BBT_N_12.Caption;
         STGR_PAR_B.Cells[4,0] := BBT_N_12.Caption;     
         Edit54.SETFOCUS;
         EXIT;
       END;
//  END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '12';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '12';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '12';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '12';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '12';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;




//-----------
// BOT�O 14 -
//-----------
procedure TForm1.BBT_N_14Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
	BBT_N_14.Visible := false;
        SELF.PR_BOTOES_MODELO2(14);
        SELF.PR_BOTOES_MODELO3(14);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit34.TEXT = '' THEN
        BEGIN
            Edit34.TEXT := BBT_N_14.Caption;
            STGR_PAR_A.Cells[0,0] := BBT_N_14.Caption;
            Edit34.SETFOCUS;
            EXIT;
        END;

       IF Edit35.TEXT = '' THEN
       BEGIN
           Edit35.TEXT := BBT_N_14.Caption;
            STGR_PAR_A.Cells[1,0] := BBT_N_14.Caption;
           Edit35.SETFOCUS;
           EXIT;
       END;

       IF Edit36.TEXT = '' THEN
       BEGIN
           Edit36.TEXT := BBT_N_14.Caption;
            STGR_PAR_A.Cells[2,0] := BBT_N_14.Caption;
           Edit36.SETFOCUS;
           EXIT;
       END;

       IF Edit37.TEXT = '' THEN
       BEGIN
           Edit37.TEXT := BBT_N_14.Caption;
            STGR_PAR_A.Cells[3,0] := BBT_N_14.Caption;
           Edit37.SETFOCUS;
           EXIT;
       END;

       IF Edit38.TEXT = '' THEN
       BEGIN
           Edit38.TEXT := BBT_N_14.Caption;
            STGR_PAR_A.Cells[4,0] := BBT_N_14.Caption;
           Edit38.SETFOCUS;
           EXIT;
       END;

       IF Edit39.TEXT = '' THEN
       BEGIN
           Edit39.TEXT := BBT_N_14.Caption;
            STGR_PAR_A.Cells[5,0] := BBT_N_14.Caption;
           Edit39.SETFOCUS;
           EXIT;
       END;

       IF Edit40.TEXT = '' THEN
       BEGIN
            Edit40.TEXT := BBT_N_14.Caption;
            STGR_PAR_A.Cells[6,0] := BBT_N_14.Caption;
            Edit40.SETFOCUS;
            EXIT;
       END;

       // ----> PAR B
       IF Edit50.TEXT = '' THEN
       BEGIN
         Edit50.TEXT := BBT_N_14.Caption;
            STGR_PAR_B.Cells[0,0] := BBT_N_14.Caption;
         Edit50.SETFOCUS;
         EXIT;
       END;

       IF Edit51.TEXT = '' THEN
       BEGIN
         Edit51.TEXT := BBT_N_14.Caption;
            STGR_PAR_B.Cells[1,0] := BBT_N_14.Caption;
         Edit51.SETFOCUS;
         EXIT;
       END;

       IF Edit52.TEXT = '' THEN
       BEGIN
         Edit52.TEXT := BBT_N_14.Caption;
            STGR_PAR_B.Cells[2,0] := BBT_N_14.Caption;
         Edit52.SETFOCUS;
         EXIT;
       END;

       IF Edit53.TEXT = '' THEN
       BEGIN
         Edit53.TEXT := BBT_N_14.Caption;
            STGR_PAR_B.Cells[3,0] := BBT_N_14.Caption;
         Edit53.SETFOCUS;
         EXIT;
       END;

       IF Edit54.TEXT = '' THEN
       BEGIN
         Edit54.TEXT := BBT_N_14.Caption;
            STGR_PAR_B.Cells[4,0] := BBT_N_14.Caption;
         Edit54.SETFOCUS;
         EXIT;
       END;
//  END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '14';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '14';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '14';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '14';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '14';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;




//-----------
// BOT�O 16 -
//-----------
procedure TForm1.BBT_N_16Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
	BBT_N_16.Visible := false;
        SELF.PR_BOTOES_MODELO2(16);
        SELF.PR_BOTOES_MODELO3(16);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit34.TEXT = '' THEN
        BEGIN
            Edit34.TEXT := BBT_N_16.Caption;
            STGR_PAR_A.Cells[0,0] := BBT_N_16.Caption;
            Edit34.SETFOCUS;
            EXIT;
        END;

       IF Edit35.TEXT = '' THEN
       BEGIN
           Edit35.TEXT := BBT_N_16.Caption;
            STGR_PAR_A.Cells[1,0] := BBT_N_16.Caption;
           Edit35.SETFOCUS;
           EXIT;
       END;

       IF Edit36.TEXT = '' THEN
       BEGIN
           Edit36.TEXT := BBT_N_16.Caption;
            STGR_PAR_A.Cells[2,0] := BBT_N_16.Caption;
           Edit36.SETFOCUS;
           EXIT;
       END;

       IF Edit37.TEXT = '' THEN
       BEGIN
           Edit37.TEXT := BBT_N_16.Caption;
            STGR_PAR_A.Cells[3,0] := BBT_N_16.Caption;
           Edit37.SETFOCUS;
           EXIT;
       END;

       IF Edit38.TEXT = '' THEN
       BEGIN
           Edit38.TEXT := BBT_N_16.Caption;
            STGR_PAR_A.Cells[4,0] := BBT_N_16.Caption;
           Edit38.SETFOCUS;
           EXIT;
       END;

       IF Edit39.TEXT = '' THEN
       BEGIN
           Edit39.TEXT := BBT_N_16.Caption;
            STGR_PAR_A.Cells[5,0] := BBT_N_16.Caption;
           Edit39.SETFOCUS;
           EXIT;
       END;

       IF Edit40.TEXT = '' THEN
       BEGIN
            Edit40.TEXT := BBT_N_16.Caption;
            STGR_PAR_A.Cells[6,0] := BBT_N_16.Caption;        
            Edit40.SETFOCUS;
            EXIT;
       END;

       // ----> PAR B
       IF Edit50.TEXT = '' THEN
       BEGIN
         Edit50.TEXT := BBT_N_16.Caption;
            STGR_PAR_B.Cells[0,0] := BBT_N_16.Caption;
         Edit50.SETFOCUS;
         EXIT;
       END;

       IF Edit51.TEXT = '' THEN
       BEGIN
         Edit51.TEXT := BBT_N_16.Caption;
            STGR_PAR_B.Cells[1,0] := BBT_N_16.Caption;
         Edit51.SETFOCUS;
         EXIT;
       END;

       IF Edit52.TEXT = '' THEN
       BEGIN
         Edit52.TEXT := BBT_N_16.Caption;
            STGR_PAR_B.Cells[2,0] := BBT_N_16.Caption;
         Edit52.SETFOCUS;
         EXIT;
       END;

       IF Edit53.TEXT = '' THEN
       BEGIN
         Edit53.TEXT := BBT_N_16.Caption;
            STGR_PAR_B.Cells[3,0] := BBT_N_16.Caption;
         Edit53.SETFOCUS;
         EXIT;
       END;

       IF Edit54.TEXT = '' THEN
       BEGIN
         Edit54.TEXT := BBT_N_16.Caption;
            STGR_PAR_B.Cells[4,0] := BBT_N_16.Caption;
         Edit54.SETFOCUS;
         EXIT;
       END;
//  END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '16';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '16';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '16';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '16';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '16';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;




//-----------
// BOT�O 18 -
//-----------
procedure TForm1.BBT_N_18Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
	BBT_N_18.Visible := false;
        SELF.PR_BOTOES_MODELO2(18);
        SELF.PR_BOTOES_MODELO3(18);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit34.TEXT = '' THEN
        BEGIN
            Edit34.TEXT := BBT_N_18.Caption;
            STGR_PAR_A.Cells[0,0] := BBT_N_18.Caption;
            Edit34.SETFOCUS;
            EXIT;
        END;

       IF Edit35.TEXT = '' THEN
       BEGIN
           Edit35.TEXT := BBT_N_18.Caption;
            STGR_PAR_A.Cells[1,0] := BBT_N_18.Caption;
           Edit35.SETFOCUS;
           EXIT;
       END;

       IF Edit36.TEXT = '' THEN
       BEGIN
           Edit36.TEXT := BBT_N_18.Caption;
            STGR_PAR_A.Cells[2,0] := BBT_N_18.Caption;
           Edit36.SETFOCUS;
           EXIT;
       END;

       IF Edit37.TEXT = '' THEN
       BEGIN
           Edit37.TEXT := BBT_N_18.Caption;
            STGR_PAR_A.Cells[3,0] := BBT_N_18.Caption;
           Edit37.SETFOCUS;
           EXIT;
       END;

       IF Edit38.TEXT = '' THEN
       BEGIN
           Edit38.TEXT := BBT_N_18.Caption;
            STGR_PAR_A.Cells[4,0] := BBT_N_18.Caption;
           Edit38.SETFOCUS;
           EXIT;
       END;

       IF Edit39.TEXT = '' THEN
       BEGIN
           Edit39.TEXT := BBT_N_18.Caption;
            STGR_PAR_A.Cells[5,0] := BBT_N_18.Caption;
           Edit39.SETFOCUS;
           EXIT;
       END;

       IF Edit40.TEXT = '' THEN
       BEGIN
            Edit40.TEXT := BBT_N_18.Caption;
            STGR_PAR_A.Cells[6,0] := BBT_N_18.Caption;        
            Edit40.SETFOCUS;
            EXIT;
       END;

       // ----> PAR B
       IF Edit50.TEXT = '' THEN
       BEGIN
         Edit50.TEXT := BBT_N_18.Caption;
            STGR_PAR_B.Cells[0,0] := BBT_N_18.Caption;
         Edit50.SETFOCUS;
         EXIT;
       END;

       IF Edit51.TEXT = '' THEN
       BEGIN
         Edit51.TEXT := BBT_N_18.Caption;
            STGR_PAR_B.Cells[1,0] := BBT_N_18.Caption;
         Edit51.SETFOCUS;
         EXIT;
       END;

       IF Edit52.TEXT = '' THEN
       BEGIN
         Edit52.TEXT := BBT_N_18.Caption;
            STGR_PAR_B.Cells[2,0] := BBT_N_18.Caption;
         Edit52.SETFOCUS;
         EXIT;
       END;

       IF Edit53.TEXT = '' THEN
       BEGIN
         Edit53.TEXT := BBT_N_18.Caption;
            STGR_PAR_B.Cells[3,0] := BBT_N_18.Caption;
         Edit53.SETFOCUS;
         EXIT;
       END;

       IF Edit54.TEXT = '' THEN
       BEGIN
         Edit54.TEXT := BBT_N_18.Caption;
            STGR_PAR_B.Cells[4,0] := BBT_N_18.Caption;
         Edit54.SETFOCUS;
         EXIT;
       END;
//  END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '18';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '18';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '18';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '18';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '18';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;




//-----------
// BOT�O 20 -
//-----------
procedure TForm1.BBT_N_20Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
    BBT_N_20.Visible := false;
        SELF.PR_BOTOES_MODELO2(20);
        SELF.PR_BOTOES_MODELO3(20);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit34.TEXT = '' THEN
        BEGIN
            Edit34.TEXT := BBT_N_20.Caption;
            STGR_PAR_A.Cells[0,0] := BBT_N_20.Caption;
            Edit34.SETFOCUS;
            EXIT;
        END;

       IF Edit35.TEXT = '' THEN
       BEGIN
           Edit35.TEXT := BBT_N_20.Caption;
            STGR_PAR_A.Cells[1,0] := BBT_N_20.Caption;
           Edit35.SETFOCUS;
           EXIT;
       END;

       IF Edit36.TEXT = '' THEN
       BEGIN
           Edit36.TEXT := BBT_N_20.Caption;
            STGR_PAR_A.Cells[2,0] := BBT_N_20.Caption;
           Edit36.SETFOCUS;
           EXIT;
       END;

       IF Edit37.TEXT = '' THEN
       BEGIN
           Edit37.TEXT := BBT_N_20.Caption;
            STGR_PAR_A.Cells[3,0] := BBT_N_20.Caption;
           Edit37.SETFOCUS;
           EXIT;
       END;

       IF Edit38.TEXT = '' THEN
       BEGIN
           Edit38.TEXT := BBT_N_20.Caption;
            STGR_PAR_A.Cells[4,0] := BBT_N_20.Caption;
           Edit38.SETFOCUS;
           EXIT;
       END;

       IF Edit39.TEXT = '' THEN
       BEGIN
           Edit39.TEXT := BBT_N_20.Caption;
            STGR_PAR_A.Cells[5,0] := BBT_N_20.Caption;
           Edit39.SETFOCUS;
           EXIT;
       END;

       IF Edit40.TEXT = '' THEN
       BEGIN
            Edit40.TEXT := BBT_N_20.Caption;
            STGR_PAR_A.Cells[6,0] := BBT_N_20.Caption;
            Edit40.SETFOCUS;
            EXIT;
       END;

       // ----> PAR B
       IF Edit50.TEXT = '' THEN
       BEGIN
         Edit50.TEXT := BBT_N_20.Caption;
            STGR_PAR_B.Cells[0,0] := BBT_N_20.Caption;
         Edit50.SETFOCUS;
         EXIT;
       END;

       IF Edit51.TEXT = '' THEN
       BEGIN
         Edit51.TEXT := BBT_N_20.Caption;
            STGR_PAR_B.Cells[1,0] := BBT_N_20.Caption;
         Edit51.SETFOCUS;
         EXIT;
       END;

       IF Edit52.TEXT = '' THEN
       BEGIN
         Edit52.TEXT := BBT_N_20.Caption;
            STGR_PAR_B.Cells[2,0] := BBT_N_20.Caption;
         Edit52.SETFOCUS;
         EXIT;
       END;

       IF Edit53.TEXT = '' THEN
       BEGIN
         Edit53.TEXT := BBT_N_20.Caption;
            STGR_PAR_B.Cells[3,0] := BBT_N_20.Caption;
         Edit53.SETFOCUS;
         EXIT;
       END;

       IF Edit54.TEXT = '' THEN
       BEGIN
         Edit54.TEXT := BBT_N_20.Caption;
            STGR_PAR_B.Cells[4,0] := BBT_N_20.Caption;
         Edit54.SETFOCUS;
         EXIT;
       END;
//  END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '20';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '20';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '20';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '20';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '20';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;




//-----------
// BOT�O 22 -
//-----------
procedure TForm1.BBT_N_22Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
	BBT_N_22.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(22);
        SELF.PR_BOTOES_MODELO3(22);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit34.TEXT = '' THEN
        BEGIN
            Edit34.TEXT := BBT_N_22.Caption;
            STGR_PAR_A.Cells[0,0] := BBT_N_22.Caption;
            Edit34.SETFOCUS;
            EXIT;
        END;

       IF Edit35.TEXT = '' THEN
       BEGIN
           Edit35.TEXT := BBT_N_22.Caption;
            STGR_PAR_A.Cells[1,0] := BBT_N_22.Caption;
           Edit35.SETFOCUS;
           EXIT;
       END;

       IF Edit36.TEXT = '' THEN
       BEGIN
           Edit36.TEXT := BBT_N_22.Caption;
            STGR_PAR_A.Cells[2,0] := BBT_N_22.Caption;
           Edit36.SETFOCUS;
           EXIT;
       END;

       IF Edit37.TEXT = '' THEN
       BEGIN
           Edit37.TEXT := BBT_N_22.Caption;
            STGR_PAR_A.Cells[3,0] := BBT_N_22.Caption;
           Edit37.SETFOCUS;
           EXIT;
       END;

       IF Edit38.TEXT = '' THEN
       BEGIN
           Edit38.TEXT := BBT_N_22.Caption;
            STGR_PAR_A.Cells[4,0] := BBT_N_22.Caption;
           Edit38.SETFOCUS;
           EXIT;
       END;

       IF Edit39.TEXT = '' THEN
       BEGIN
           Edit39.TEXT := BBT_N_22.Caption;
            STGR_PAR_A.Cells[5,0] := BBT_N_22.Caption;
           Edit39.SETFOCUS;
           EXIT;
       END;

       IF Edit40.TEXT = '' THEN
       BEGIN
            Edit40.TEXT := BBT_N_22.Caption;
            STGR_PAR_A.Cells[6,0] := BBT_N_22.Caption;
            Edit40.SETFOCUS;
            EXIT;
       END;

       // ----> PAR B
       IF Edit50.TEXT = '' THEN
       BEGIN
         Edit50.TEXT := BBT_N_22.Caption;
            STGR_PAR_B.Cells[0,0] := BBT_N_22.Caption;
         Edit50.SETFOCUS;
         EXIT;
       END;

       IF Edit51.TEXT = '' THEN
       BEGIN
         Edit51.TEXT := BBT_N_22.Caption;
            STGR_PAR_B.Cells[1,0] := BBT_N_22.Caption;
         Edit51.SETFOCUS;
         EXIT;
       END;

       IF Edit52.TEXT = '' THEN
       BEGIN
         Edit52.TEXT := BBT_N_22.Caption;
            STGR_PAR_B.Cells[2,0] := BBT_N_22.Caption;
         Edit52.SETFOCUS;
         EXIT;
       END;

       IF Edit53.TEXT = '' THEN
       BEGIN
         Edit53.TEXT := BBT_N_22.Caption;
            STGR_PAR_B.Cells[3,0] := BBT_N_22.Caption;
         Edit53.SETFOCUS;
         EXIT;
       END;

       IF Edit54.TEXT = '' THEN
       BEGIN
         Edit54.TEXT := BBT_N_22.Caption;
            STGR_PAR_B.Cells[4,0] := BBT_N_22.Caption;
         Edit54.SETFOCUS;
         EXIT;
       END;
//  END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '22';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN            
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '22';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '22';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '22';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '22';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;




//-----------
// BOT�O 24 -
//-----------
procedure TForm1.BBT_N_24Click(Sender: TObject);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
begin
	BBT_N_24.Visible := FALSE;
        SELF.PR_BOTOES_MODELO2(24);
        SELF.PR_BOTOES_MODELO3(24);
//    IF (RB_SIM_MODELO_01.Checked = TRUE) THEN
//    BEGIN
        IF Edit34.TEXT = '' THEN
        BEGIN
            Edit34.TEXT := BBT_N_24.Caption;
            STGR_PAR_A.Cells[0,0] := BBT_N_24.Caption;
            Edit34.SETFOCUS;
            EXIT;
        END;

       IF Edit35.TEXT = '' THEN
       BEGIN
           Edit35.TEXT := BBT_N_24.Caption;
            STGR_PAR_A.Cells[1,0] := BBT_N_24.Caption;
           Edit35.SETFOCUS;
           EXIT;
       END;

       IF Edit36.TEXT = '' THEN
       BEGIN
           Edit36.TEXT := BBT_N_24.Caption;
            STGR_PAR_A.Cells[2,0] := BBT_N_24.Caption;
           Edit36.SETFOCUS;
           EXIT;
       END;

       IF Edit37.TEXT = '' THEN
       BEGIN
           Edit37.TEXT := BBT_N_24.Caption;
            STGR_PAR_A.Cells[3,0] := BBT_N_24.Caption;
           Edit37.SETFOCUS;
           EXIT;
       END;

       IF Edit38.TEXT = '' THEN
       BEGIN
           Edit38.TEXT := BBT_N_24.Caption;
           STGR_PAR_A.Cells[4,0] := BBT_N_24.Caption;
           Edit38.SETFOCUS;
           EXIT;
       END;

       IF Edit39.TEXT = '' THEN
       BEGIN
           Edit39.TEXT := BBT_N_24.Caption;
           STGR_PAR_A.Cells[5,0] := BBT_N_24.Caption;
           Edit39.SETFOCUS;
           EXIT;
       END;

       IF Edit40.TEXT = '' THEN
       BEGIN
            Edit40.TEXT := BBT_N_24.Caption;
            STGR_PAR_A.Cells[6,0] := BBT_N_24.Caption;
            Edit40.SETFOCUS;
            EXIT;
       END;

       // ----> PAR B
       IF Edit50.TEXT = '' THEN
       BEGIN
         Edit50.TEXT := BBT_N_24.Caption;
            STGR_PAR_B.Cells[0,0] := BBT_N_24.Caption;
         Edit50.SETFOCUS;
         EXIT;
       END;

       IF Edit51.TEXT = '' THEN
       BEGIN
         Edit51.TEXT := BBT_N_24.Caption;
            STGR_PAR_B.Cells[1,0] := BBT_N_24.Caption;
         Edit51.SETFOCUS;
         EXIT;
       END;

       IF Edit52.TEXT = '' THEN
       BEGIN
         Edit52.TEXT := BBT_N_24.Caption;
            STGR_PAR_B.Cells[2,0] := BBT_N_24.Caption;
         Edit52.SETFOCUS;
         EXIT;
       END;

       IF Edit53.TEXT = '' THEN
       BEGIN
         Edit53.TEXT := BBT_N_24.Caption;
            STGR_PAR_B.Cells[3,0] := BBT_N_24.Caption;
         Edit53.SETFOCUS;
         EXIT;
       END;

       IF Edit54.TEXT = '' THEN
       BEGIN
         Edit54.TEXT := BBT_N_24.Caption;
            STGR_PAR_B.Cells[4,0] := BBT_N_24.Caption;     
         Edit54.SETFOCUS;
         EXIT;
       END;
//  END ELSE
    //    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '24';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 15) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '24';
                        EXIT;
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
// END ELSE
//    IF (RB_SIM_MODELO_03.Checked = TRUE) THEN//    IF (RB_SIM_MODELO_02.Checked = TRUE) THEN
//  BEGIN
        FOR VI_CONTAR := 1 TO 10 DO
        BEGIN
            IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '24';
                EXIT;
            END ELSE
            IF (VI_CONTAR = 10) THEN
            BEGIN
                FOR VI_CONTAR2 :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                    BEGIN
                        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := '24';
                        EXIT;
                    END ELSE
                    IF (VI_CONTAR2 = 10) THEN
                    BEGIN
                        FOR VI_CONTAR3 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                            BEGIN
                                STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := '24';
                                EXIT;
                            END; // IF (VI_CONTAR2
                        END;// FOR VI_CONTAR3
                    END; // IF (STRtoINT
                END; // FOR VI_CONTAR 2
            END;// IF (STRtoINT
        END; // VI_CONTAR
    //  END; //IF (RB_SIM_MODELO_01.Checked
end;



PROCEDURE TForm1.PR_BOTOES_MODELO2 (VI_NUMERO: INTEGER);
VAR
    VI_CONTAR, VI_CONTAR2 : INTEGER;
BEGIN
    FOR VI_CONTAR := 1 TO 15 DO
    BEGIN
        IF (STRtoINT (STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
        BEGIN
            STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := INTtoSTR(VI_NUMERO);
            EXIT;
        END ELSE
        IF (VI_CONTAR = 15) THEN
        BEGIN
            FOR VI_CONTAR2 :=1 TO 10 DO
            BEGIN
                IF (STRtoINT (STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                BEGIN
                    STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := INTtoSTR(VI_NUMERO);
                    EXIT;
                END; // IF (STRtoINT
            END; // FOR VI_CONTAR 2
        END;// IF (STRtoINT
    END; // VI_CONTAR
END;


PROCEDURE TForm1.PR_BOTOES_MODELO3 (VI_NUMERO: INTEGER);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
BEGIN
   FOR VI_CONTAR := 1 TO 10 DO
    BEGIN
        IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
        BEGIN
            STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := INTtoSTR(VI_NUMERO);
            EXIT;
        END ELSE
        IF (VI_CONTAR = 10) THEN
        BEGIN
            FOR VI_CONTAR2 :=1 TO 10 DO
            BEGIN
                IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                BEGIN
                    STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := INTtoSTR(VI_NUMERO);
                    EXIT;
                END ELSE
                IF (VI_CONTAR2 = 10) THEN
                BEGIN
                    FOR VI_CONTAR3 :=1 TO 5 DO
                    BEGIN
                        IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                        BEGIN
                            STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := INTtoSTR(VI_NUMERO);
                            EXIT;
                        END; // IF (VI_CONTAR2
                    END;// FOR VI_CONTAR3
                END; // IF (STRtoINT
            END; // FOR VI_CONTAR 2
        END;// IF (STRtoINT
    END; // VI_CONTAR
END;



// ---------------
// - 	Somar    -
// ---------------
procedure TForm1.BBT_SOMARClick(Sender: TObject);
begin
	ED_SOMA_TOTAL.Text := INTtoSTR(STRtoINT(ED_SOMA_01.Text) + STRtoINT(ED_SOMA_02.Text));
	ED_SOMA_TOTAL2.Text := INTtoSTR(STRtoINT(ED_SOMA_11.Text) + STRtoINT(ED_SOMA_22.Text));
    IF (STRtoINT(ED_SOMA_01.Text) < 78) THEN
    BEGIN
    	SHOWMESSAGE ('VALOR MUITO BAIXO, FAVOR VERIFICAR');
        ED_SOMA_TOTAL.Text :='0';
        ED_SOMA_01.SetFocus;
    	EXIT;
    END; // IF STRtoINT(ED_SOMA
    IF (STRtoINT(ED_SOMA_01.Text) > 240) OR (STRtoINT(ED_SOMA_11.Text) > 240) THEN
    BEGIN
    	SHOWMESSAGE ('VALOR MUITO ALTO, FAVOR VERIFICAR');
        ED_SOMA_TOTAL.Text :='0';
        ED_SOMA_01.SetFocus;
    	EXIT;
    END; // IF STRtoINT(ED_SOMA
    IF (STRtoINT(ED_SOMA_02.Text) < 36) THEN
    BEGIN
    	SHOWMESSAGE ('VALOR MUITO BAIXO, FAVOR VERIFICAR');
        ED_SOMA_TOTAL.Text :='0';
        ED_SOMA_02.SetFocus;
    	EXIT;
    END; // IF STRtoINT(ED_SOMA
    IF (STRtoINT(ED_SOMA_02.Text) > 180) OR (STRtoINT(ED_SOMA_22.Text) > 180) THEN
    BEGIN
    	SHOWMESSAGE ('VALOR MUITO ALTO, FAVOR VERIFICAR');
        ED_SOMA_TOTAL.Text :='0';
        ED_SOMA_02.SetFocus;
    	EXIT;
    END; // IF STRtoINT(ED_SOMA
    IF (STRtoINT(ED_SOMA_TOTAL.Text) > 325) OR (STRtoINT(ED_SOMA_TOTAL2.Text) > 325) THEN
    BEGIN
    	SHOWMESSAGE ('VALORES MUITO ALTOS, FAVORT VERIFICAR');
        ED_SOMA_TOTAL.Text :='0';
    	EXIT;
    END; // IF STRtoINT(ED_SOMA
end;



// =======================
// ||||===============||||
// |||| 	SIMULAR   ||||
// ||||===============||||
// =======================
procedure TForm1.BBT_SIMULARClick(Sender: TObject);
VAR
	VI_CONTADOR_IMPAR_A, VI_CONTADOR_PAR_A, VI_CONTADOR_IMPAR_B, VI_CONTADOR_PAR_B : INTEGER;
	VI_AN_COMB1, VI_AN_COMB2, VI_AN_COMB3, VI_AN_COMB4 : INTEGER;
    VI_SOMA1, VI_LINHAS, VI_LINHAS2, VI_COL1, VI_COL2 : INTEGER;
    VI_CONTAR, VI_CNTCELULAS, VI_FLAG_QTD12, VI_FLAG_QTD05 : INTEGER;
	VI_SEG_ETAPA_COMB1, VI_SEG_ETAPA_COMB2 : INTEGER;
    VC_COMBINACOES, VC_ACHAR_REPETIDO1, VC_ACHAR_REPETIDO2, VC_ACHAR_REPETIDO3, VC_ACHAR_REPETIDO4, VC_ACHAR_REPETIDO5, VC_PAR_B11_SOBROU : STRING;
    VAS_REPETIDOS:  ARRAY [1..15] OF STRING;


    PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
    VAR
    	VI_AN_COMB1 : INTEGER;
    BEGIN
            IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-2 - Retirando os repetidos');
            SELF.IBQ_COMINACOES.SQL.Clear;
            SELF.IBQ_COMINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM COMBINACOES_15;')  ;
            SELF.IBQ_COMINACOES.Open;
            VI_CONTAR := SELF.IBQ_COMINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMINACOES.SQL.Clear;
            SELF.IBQ_COMINACOES.SQL.Add('SELECT DADOS FROM COMBINACOES_15 GROUP BY DADOS ORDER BY DADOS;')  ;
            SELF.IBQ_COMINACOES.Open;
            LABEL_14PERC.Caption:= '20 %   ' +#13+ 'QTD:' + INTtoSTR(VI_CONTAR);
            LABEL_14PERC.Repaint;
                PGBR_ETAPA5.Position := 20;
                IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-3 - Recuperando os dados');
            // ********************
            // **   ENCERRANDO   **
            // ********************
                Self.Repaint;
                Self.WindowState := wsMinimized;
                Self.WindowState :=  wsNormal;
                Self.Repaint;
            STGR_COMBINACOES_15.RowCount := 0;
            SELF.IBQ_COMINACOES.First;
            IF (TRIM(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString) ='') THEN
                SELF.IBQ_COMINACOES.Next;
            FOR VI_AN_COMB1:= 1 TO  VI_CONTAR DO
            BEGIN
                STGR_COMBINACOES_15.Cells [0, VI_AN_COMB1-1] := INTtoSTR(VI_AN_COMB1);
                STGR_COMBINACOES_15.Cells [1, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,1,2);
                STGR_COMBINACOES_15.Cells [2, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,4,2);
                STGR_COMBINACOES_15.Cells [3, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,7,2);
                STGR_COMBINACOES_15.Cells [4, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,10,2);
                STGR_COMBINACOES_15.Cells [5, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,13,2);
                STGR_COMBINACOES_15.Cells [6, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,16,2);
                STGR_COMBINACOES_15.Cells [7, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,19,2);
                STGR_COMBINACOES_15.Cells [8, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,22,2);
                STGR_COMBINACOES_15.Cells [9, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,25,2);
                STGR_COMBINACOES_15.Cells [10, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,28,2);
                STGR_COMBINACOES_15.Cells [11, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,31,2);
                STGR_COMBINACOES_15.Cells [12, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,34,2);
                STGR_COMBINACOES_15.Cells [13, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,37,2);
                STGR_COMBINACOES_15.Cells [14, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,40,2);
                STGR_COMBINACOES_15.Cells [15, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS').AsString,43,2);
                    STGR_COMBINACOES_15.RowCount := VI_AN_COMB1;
                    STGR_COMBINACOES_15.REPAINT;
                if (VI_AN_COMB1/50)=(VI_AN_COMB1 DIV 50) then
                BEGIN
                    LABEL_14PERC.Caption:=  INTtoSTR(20 + TRUNC(VI_AN_COMB1  / VI_CONTAR *10*8) ) + ' %  ';
                    LABEL_14PERC.Caption:= LABEL_14PERC.Caption +' -------  QTD:' + INTtoSTR(VI_CONTAR-1) +#13+ INTtoSTR(VI_AN_COMB1) ;
                    LABEL_14PERC.Repaint;
                    PGBR_ETAPA5.Position := (20 + TRUNC(VI_AN_COMB1  / VI_CONTAR *10*8) );
                    PGBR_ETAPA5.Repaint;
                END;
                SELF.IBQ_COMINACOES.Next;
            END; // FOR VI_AN_COMB1
            SELF.IBQ_COMINACOES.SQL.Clear;
            SELF.IBQ_COMINACOES.SQL.Add('SELECT * FROM DADOS_SIMULACAO_25;')  ;
            SELF.IBQ_COMINACOES.Open;
            // ********************************************
            // ** Restaurando/lendo os dados do Impar A  **
            // ********************************************
            Edit26.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,1,2);
            Edit27.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,4,2);
            Edit28.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,7,2);
            Edit29.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,10,2);
            Edit30.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,13,2);
            Edit31.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,16,2);
            Edit32.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,19,2);
            Edit33.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,22,2);
            STGR_IMPAR_A.Cells[0,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,1,2);
            STGR_IMPAR_A.Cells[1,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,4,2);
            STGR_IMPAR_A.Cells[2,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,7,2);
            STGR_IMPAR_A.Cells[3,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,10,2);
            STGR_IMPAR_A.Cells[4,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,13,2);
            STGR_IMPAR_A.Cells[5,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,16,2);
            STGR_IMPAR_A.Cells[6,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,19,2);
            STGR_IMPAR_A.Cells[7,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_1').AsString,22,2);
            // ********************************************
            // ** Restaurando/lendo os dados do Par A  **
            // ********************************************
            Edit34.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,1,2);
            Edit35.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,4,2);
            Edit36.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,7,2);
            Edit37.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,10,2);
            Edit38.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,13,2);
            Edit39.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,16,2);
            Edit40.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,19,2);
            STGR_PAR_A.Cells[0,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,1,2);
            STGR_PAR_A.Cells[1,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,4,2);
            STGR_PAR_A.Cells[2,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,7,2);
            STGR_PAR_A.Cells[3,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,10,2);
            STGR_PAR_A.Cells[4,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,13,2);
            STGR_PAR_A.Cells[5,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,16,2);
            STGR_PAR_A.Cells[6,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_2').AsString,19,2);
            // ********************************************
            // ** Restaurando/lendo os dados do Impar B  **
            // ********************************************
            Edit42.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_3').AsString,1,2);
            Edit43.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_3').AsString,4,2);
            Edit44.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_3').AsString,7,2);
            Edit45.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_3').AsString,10,2);
            Edit46.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_3').AsString,13,2);
            STGR_IMPAR_B.Cells[0,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_3').AsString,1,2);
            STGR_IMPAR_B.Cells[1,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_3').AsString,4,2);
            STGR_IMPAR_B.Cells[2,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_3').AsString,7,2);
            STGR_IMPAR_B.Cells[3,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_3').AsString,10,2);
            STGR_IMPAR_B.Cells[4,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_3').AsString,13,2);
            // ******************************************
            // ** Restaurando/lendo os dados do Par B  **
            // ******************************************
            Edit50.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_4').AsString,1,2);
            Edit51.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_4').AsString,4,2);
            Edit52.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_4').AsString,7,2);
            Edit53.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_4').AsString,10,2);
            Edit54.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_4').AsString,13,2);
            STGR_PAR_B.Cells[0,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_4').AsString,1,2);
            STGR_PAR_B.Cells[1,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_4').AsString,4,2);
            STGR_PAR_B.Cells[2,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_4').AsString,7,2);
            STGR_PAR_B.Cells[3,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_4').AsString,10,2);
            STGR_PAR_B.Cells[4,0] := COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_4').AsString,13,2);
            // **********************************************
            // ** Restaurando/lendo o 1� bloco Quantidade  **
            // **********************************************
            ED_SOMA_01.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_5').AsString,1,3);
            ED_SOMA_11.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_5').AsString,5,3);
            ED_SOMA_21.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_5').AsString,9,3);
            ED_SOMA_31.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_5').AsString,13,3);
            ED_SOMA_41.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_5').AsString,17,3);
            ED_SOMA_51.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_5').AsString,21,3);
            // **********************************************
            // ** Restaurando/lendo o 2� bloco Quantidade  **
            // **********************************************
            ED_SOMA_02.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_6').AsString,1,3);
            ED_SOMA_12.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_6').AsString,5,3);
            ED_SOMA_22.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_6').AsString,9,3);
            ED_SOMA_32.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_6').AsString,13,3);
            ED_SOMA_42.Text :=  COPY(SELF.IBQ_COMINACOES.FIELDBYNAME('DADOS_6').AsString,17,3);
            // ----> SOME COM OS NUMEROS DO TOPO
            PA_SIMULACAO_NUMEROS1.Visible := false;

            STGR_COMBINACOES_15.REPAINT;
            LABEL_14PERC.Caption:=  INTtoSTR(20 + TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *10*8) ) + ' %  ';
            LABEL_14PERC.Caption:= LABEL_14PERC.Caption +#13+'QTD:' + INTtoSTR(VI_CONTAR) ;
            LABEL_14PERC.Repaint;
                PGBR_ETAPA5.Position := 100;
            LA_QTD_RESULTADO.Caption := INTtoSTR(STGR_COMBINACOES_15.RowCount);
            STGR_COMBINACOES_15.REPAINT;
            LA_QTD_RESULTADO.Repaint;                

            GB_EXC.Enabled := TRUE;
            BBT_EXECUTAR_EXC.Enabled := TRUE;
            BBT_ENCERRAR_EXC.Enabled := false;
            STGR_COMBINACOES_15E.RowCount := 0;
            PGBR_MO01_1.Position := 100;
            PGBR_MO01_1.Repaint;
            SHOWMESSAGE('DADOS-4 -> Encerrado.');
    END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();            


begin
    SELF.PR_LIMPAR_GRID15 ();
    PA_SIMULACAO_NUMEROS1.Visible := TRUE;
    IF (RB_SIMULAR_RECUPERAR.Checked) THEN
    BEGIN
        PR_SIMULAR_RECUPERANDODADOS ('RECUPERANDO DADOS');
        EXIT;
    END;

    BBT_PAN02_GERAR.Click;
    BBT_PAN03_GERAR.Click;

    LABEL_12PERC.Caption := '0';
    LABEL_05PERC.Caption := '0';
    LABEL_17PERC.Caption := '0';
    LABEL_15PERC.Caption := '0';
    LABEL_14PERC.Caption := '0';
    LA_QTD_RESULTADO.Caption := '      0      ';   
    LABEL_12PERC.Repaint;
    LABEL_05PERC.Repaint;
    LABEL_17PERC.Repaint;
    LABEL_15PERC.Repaint;
    LABEL_14PERC.Repaint;
    SELF.Repaint;
    PGBR_MO01_1.Position := 0;
    PGBR_ETAPA5.Position := 0;
///    PGBR_F1_ORDENAR.Position := 0;
    PGBR_ETAPA5.Refresh;
	FOR VI_CONTAR :=0 TO 25 DO
    BEGIN
	    STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR (VI_CONTAR) ;
	    STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
    END; // FOR VI_CONTADOR
    IF (ED_SOMA_01.Text='') OR (ED_SOMA_11.Text='') THEN
    BEGIN
    	SHOWMESSAGE ('Valores indefinidos, favor verificar.');
        ED_SOMA_TOTAL.Text :='0';
        ED_SOMA_TOTAL2.Text :='0';
        ED_SOMA_01.SetFocus;
    	EXIT;
    END; // IF STRtoINT(ED_SOMA
    {
    TRY
        IF ( STRtoINT(ED_SOMA_11.Text) < STRtoINT(ED_SOMA_01.Text) ) THEN
        BEGIN
        	SHOWMESSAGE ('Valores final maior que o valor inicial, favor verificar.');
            ED_SOMA_TOTAL.Text :='0';
            ED_SOMA_TOTAL2.Text :='0';
            ED_SOMA_01.SetFocus;
        	EXIT;
        END; // IF STRtoINT(ED_SOMA
    EXCEPT
        	SHOWMESSAGE ('Valores incorretos, favor verificar.');
            ED_SOMA_TOTAL.Text :='0';
            ED_SOMA_TOTAL2.Text :='0';
            ED_SOMA_01.SetFocus;
        	EXIT;            
    END;
    }
    IF (ED_SOMA_22.Text='') OR (ED_SOMA_02.Text='') THEN
    BEGIN
    	SHOWMESSAGE ('Valores indefinidos, favor verificar.');
        ED_SOMA_TOTAL.Text :='0';
        ED_SOMA_TOTAL2.Text :='0';
        ED_SOMA_02.SetFocus;
    	EXIT;
    END; // IF STRtoINT(ED_SOMA
    {
    TRY
        IF ( STRtoINT(ED_SOMA_22.Text) < STRtoINT(ED_SOMA_02.Text) ) THEN
        BEGIN
        	SHOWMESSAGE ('Valores final maior que o valor inicial, favor verificar.');
            ED_SOMA_TOTAL.Text :='0';
            ED_SOMA_TOTAL2.Text :='0';
            ED_SOMA_22.SetFocus;
        	EXIT;
        END; // IF STRtoINT(ED_SOMA
    EXCEPT
        	SHOWMESSAGE ('Valores incorretos, favor verificar.');
            ED_SOMA_TOTAL.Text :='0';
            ED_SOMA_TOTAL2.Text :='0';
            ED_SOMA_22.SetFocus;
        	EXIT;            
    END;

    IF (STRtoINT(ED_SOMA_TOTAL.Text) > 325) OR (STRtoINT(ED_SOMA_TOTAL2.Text) > 325) THEN
    BEGIN
    	SHOWMESSAGE ('Valores muito altos, favor verificar.');
        ED_SOMA_TOTAL.Text :='0';
        ED_SOMA_TOTAL2.Text :='0';
        ED_SOMA_02.SetFocus;
    	EXIT;
    END; // IF STRtoINT(ED_SOMA
    }
    // =======================================================
    // ||||===============================================||||
    // |||| 	PRIMEIRO BLOCO - AN�LISES COMBINAT�RIAS   ||||
    // ||||===============================================||||
    // =======================================================

    // ----> ZERANDO TODOS OS FLAGS
    FOR VI_CONTAR := 0 TO 7 DO
    BEGIN
    	STGR_IMPAR_A.Cells[VI_CONTAR,1] := 'F';
        IF VI_CONTAR <=6 THEN STGR_PAR_A.Cells[VI_CONTAR,1] := 'F';
    	IF VI_CONTAR <=4 THEN STGR_IMPAR_B.Cells[VI_CONTAR,1] := 'F';
        IF VI_CONTAR <=4 THEN STGR_PAR_B.Cells[VI_CONTAR,1] := 'F';
    END; // FOR VI_CONTAR



    // *****************************************************
    // ** An�lise combinat�ria do Impar A para o IMPAR A1 **
    // *****************************************************
	VI_LINHAS := 0;
    VI_LINHAS2 := 0;
        FOR VI_AN_COMB1 :=0 TO 4 DO
        BEGIN
            FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 7 DO
            BEGIN
                FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 7 DO
                BEGIN
                    FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 7 DO
                    BEGIN
                        // ----> ZERANDO TODOS OS FLAGS
                        FOR VI_CONTAR := 0 TO 7 DO
                        BEGIN
                            STGR_IMPAR_A.Cells[VI_CONTAR,1] := 'F';
                        END; // FOR VI_CONTAR
                        // ----> MONTANDO A AN�LISE DOS DADOS
                        // ----> INDICE
                        // ----> DADOS
                        STGR_IMPAR_A1.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                        STGR_IMPAR_A1.Cells [1,VI_LINHAS] := STGR_IMPAR_A.Cells[VI_AN_COMB1,0] ;
                        STGR_IMPAR_A1.Cells [2,VI_LINHAS] := STGR_IMPAR_A.Cells[VI_AN_COMB2,0] ;
                        STGR_IMPAR_A1.Cells [3,VI_LINHAS] := STGR_IMPAR_A.Cells[VI_AN_COMB3,0] ;
                        IF (VI_AN_COMB4=3) THEN STGR_IMPAR_A1.Cells [4,VI_LINHAS] := STGR_IMPAR_A.Cells[3,0] ;
                        IF (VI_AN_COMB4=4) THEN STGR_IMPAR_A1.Cells [4,VI_LINHAS] := STGR_IMPAR_A.Cells[4,0] ;
                        IF (VI_AN_COMB4=5) THEN STGR_IMPAR_A1.Cells [4,VI_LINHAS] := STGR_IMPAR_A.Cells[5,0] ;
                        IF (VI_AN_COMB4=6) THEN STGR_IMPAR_A1.Cells [4,VI_LINHAS] := STGR_IMPAR_A.Cells[6,0] ;
                        IF (VI_AN_COMB4=7) THEN STGR_IMPAR_A1.Cells [4,VI_LINHAS] := STGR_IMPAR_A.Cells[7,0] ;

                        // ----> SETANDO OS FLAGS
	                        STGR_IMPAR_A.Cells[VI_AN_COMB1,1] :='V';
	                        STGR_IMPAR_A.Cells[VI_AN_COMB2,1] :='V';
	                        STGR_IMPAR_A.Cells[VI_AN_COMB3,1] :='V';
                        IF (VI_AN_COMB4=3) THEN STGR_IMPAR_A.Cells[3,1] :='V';
                        IF (VI_AN_COMB4=4) THEN STGR_IMPAR_A.Cells[4,1] :='V';
                        IF (VI_AN_COMB4=5) THEN STGR_IMPAR_A.Cells[5,1] :='V';
                        IF (VI_AN_COMB4=6) THEN STGR_IMPAR_A.Cells[6,1] :='V';
                        IF (VI_AN_COMB4=7) THEN STGR_IMPAR_A.Cells[7,1] :='V';
                       STGR_IMPAR_A1.Repaint;
                        STGR_IMPAR_A.Repaint;

						 // ----> Montando os n�mero que sobraram --
                         VI_CNTCELULAS :=0;
                         FOR VI_CONTAR := 0 TO 7 DO
                         BEGIN
                         	IF (STGR_IMPAR_A.Cells[VI_CONTAR,1]='F') THEN
                            BEGIN
                                STGR_IMPAR_A_SOBRA.Cells[VI_CNTCELULAS,0]:= STGR_IMPAR_A.Cells[VI_CONTAR,0];
                                VI_CNTCELULAS :=VI_CNTCELULAS+1;
                            END; // IF (STGR_IMPAR_A.Cells
                         END; // FOR VI_CON TAR
                         STGR_IMPAR_A_SOBRA.Repaint;

                        // -----------------------------------------------------------------------
                        // -- An�lise combinat�ria do Impar A para o IMPAR A11 -- SEGUNDA ETAPA --
                        // -----------------------------------------------------------------------
                        FOR VI_SEG_ETAPA_COMB1 :=0 TO 2 DO
                        BEGIN
                            FOR VI_SEG_ETAPA_COMB2 :=VI_SEG_ETAPA_COMB1+1 TO 3 DO
                            BEGIN
                                // ----> ZERANDO TODOS OS FLAGS
                                FOR VI_CONTAR := 0 TO 3 DO
                                BEGIN
                                    STGR_IMPAR_A_SOBRA.Cells[VI_CONTAR,1] := 'F';
                                END; // FOR VI_CONTAR
                                // ----> INDICE
                                STGR_IMPAR_A11.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS);
                                STGR_IMPAR_A11_SOBROU.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS);
                                // ----> DADOS
                                STGR_IMPAR_A11.Cells [1,VI_LINHAS2] := STGR_IMPAR_A_SOBRA.Cells[VI_SEG_ETAPA_COMB1,0] ;
                                IF (VI_SEG_ETAPA_COMB2=1) THEN STGR_IMPAR_A11.Cells [2,VI_LINHAS2] := STGR_IMPAR_A_SOBRA.Cells[1,0] ;
                                IF (VI_SEG_ETAPA_COMB2=2) THEN STGR_IMPAR_A11.Cells [2,VI_LINHAS2] := STGR_IMPAR_A_SOBRA.Cells[2,0] ;
                                IF (VI_SEG_ETAPA_COMB2=3) THEN STGR_IMPAR_A11.Cells [2,VI_LINHAS2] := STGR_IMPAR_A_SOBRA.Cells[3,0] ;
		                        // ----> SETANDO OS FLAGS PARTE 2
		                        STGR_IMPAR_A_SOBRA.Cells[VI_SEG_ETAPA_COMB1,1] :='V';
                                IF (VI_SEG_ETAPA_COMB2=1) THEN STGR_IMPAR_A_SOBRA.Cells[1,1] :='V';
                                IF (VI_SEG_ETAPA_COMB2=2) THEN STGR_IMPAR_A_SOBRA.Cells[2,1] :='V';
                                IF (VI_SEG_ETAPA_COMB2=3) THEN STGR_IMPAR_A_SOBRA.Cells[3,1] :='V';
                                 STGR_IMPAR_A_SOBRA.Repaint;
                                 STGR_IMPAR_A11.Repaint;
                                 STGR_IMPAR_A11_SOBROU.Repaint;
                                 // ----> Montando os n�mero que sobraram --
                                 VI_CNTCELULAS :=1;
                                 FOR VI_CONTAR := 0 TO 4 DO
                                 BEGIN
                                    IF (STGR_IMPAR_A_SOBRA.Cells[VI_CONTAR,1]='F') THEN
                                    BEGIN
                                        STGR_IMPAR_A11_SOBROU.Cells[VI_CNTCELULAS,VI_LINHAS2]:= STGR_IMPAR_A_SOBRA.Cells[VI_CONTAR,0];
                                        VI_CNTCELULAS :=VI_CNTCELULAS+1;
		                                 STGR_IMPAR_A_SOBRA.Repaint;
		                                 STGR_IMPAR_A11.Repaint;
		                                 STGR_IMPAR_A11_SOBROU.Repaint;
                                    END; // IF (STGR_IMPAR_A.Cells
                                 END; // FOR VI_CONTAR

                                VI_LINHAS2 := VI_LINHAS2 +1;
                                STGR_IMPAR_A11.RowCount := VI_LINHAS2;
                                STGR_IMPAR_A11_SOBROU.RowCount := VI_LINHAS2;
                            END; //  FOR VI_SEG_ETAPA_COMB2
                        END; // FOR VI_SEG_ETAPA_COMB1
                        STGR_IMPAR_A11.Repaint;
                        STGR_IMPAR_A_SOBRA.Repaint;
                        //---------------------------
                        // -- FIM DA SEGUNDA ETAPA --
                        //---------------------------

                        VI_LINHAS := VI_LINHAS +1;
                        STGR_IMPAR_A1.RowCount := VI_LINHAS;
					  STGR_IMPAR_A1.Repaint;
                    END; //  FOR VI_AN_COMB4
                END; // FOR VI_AN_COMB3
            END; //  FOR VI_AN_COMB2
        END; // FOR VI_AN_COMB1



   //D/ showmessage('PAR A');
    // *************************************************
    // ** An�lise combinat�ria do Par A para o PAR A1 **
    // *************************************************
	VI_LINHAS := 0;
    VI_LINHAS2 := 0;
        FOR VI_AN_COMB1 :=0 TO 4 DO
        BEGIN
            FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 6 DO
            BEGIN
                FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 6 DO
                BEGIN
                    // ----> ZERANDO TODOS OS FLAGS
                    FOR VI_CONTAR := 0 TO 6 DO
                    BEGIN
                        STGR_PAR_A.Cells[VI_CONTAR,1] := 'F';
                    END; // FOR VI_CONTAR
                    // ----> MONTANDO A AN�LISE DOS DADOS
                    // ----> INDICE
                    STGR_PAR_A1.Cells [0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
                    // ----> DADOS
                    STGR_PAR_A1.Cells [1,VI_LINHAS] := STGR_PAR_A.Cells[VI_AN_COMB1,0] ;
                    STGR_PAR_A1.Cells [2,VI_LINHAS] := STGR_PAR_A.Cells[VI_AN_COMB2,0] ;
                    IF (VI_AN_COMB3=2) THEN STGR_PAR_A1.Cells [3,VI_LINHAS] := STGR_PAR_A.Cells[2,0] ;
                    IF (VI_AN_COMB3=3) THEN STGR_PAR_A1.Cells [3,VI_LINHAS] := STGR_PAR_A.Cells[3,0] ;
                    IF (VI_AN_COMB3=4) THEN STGR_PAR_A1.Cells [3,VI_LINHAS] := STGR_PAR_A.Cells[4,0] ;
                    IF (VI_AN_COMB3=5) THEN STGR_PAR_A1.Cells [3,VI_LINHAS] := STGR_PAR_A.Cells[5,0] ;
                    IF (VI_AN_COMB3=6) THEN STGR_PAR_A1.Cells [3,VI_LINHAS] := STGR_PAR_A.Cells[6,0] ;
                    // ----> SETANDO OS FLAGS
                        STGR_PAR_A.Cells[VI_AN_COMB1,1] :='V';
                        STGR_PAR_A.Cells[VI_AN_COMB2,1] :='V';
                    IF (VI_AN_COMB3=2) THEN STGR_PAR_A.Cells[2,1] :='V';
                    IF (VI_AN_COMB3=3) THEN STGR_PAR_A.Cells[3,1] :='V';
                    IF (VI_AN_COMB3=4) THEN STGR_PAR_A.Cells[4,1] :='V';
                    IF (VI_AN_COMB3=5) THEN STGR_PAR_A.Cells[5,1] :='V';
                    IF (VI_AN_COMB3=6) THEN STGR_PAR_A.Cells[6,1] :='V';
                    STGR_PAR_A.Repaint;
                    STGR_PAR_A1.Repaint;

                     // ----> Montando os n�mero que sobraram --
                     VI_CNTCELULAS :=0;
                     FOR VI_CONTAR := 0 TO 6 DO
                     BEGIN
                        IF (STGR_PAR_A.Cells[VI_CONTAR,1]='F') THEN
                        BEGIN
                            STGR_PAR_A_SOBRA.Cells[VI_CNTCELULAS,0]:= STGR_PAR_A.Cells[VI_CONTAR,0];
                            VI_CNTCELULAS :=VI_CNTCELULAS+1;
                        END; // IF (STGR_PAR_A.Cells
                     END; // FOR VI_CON TAR
                    STGR_PAR_A.Repaint;
                    STGR_PAR_A1.Repaint;
                    STGR_PAR_A_SOBRA.Repaint;

                     // -------------------------------------------------------------------
                     // -- An�lise combinat�ria do par A para o PAR A11 -- SEGUNDA ETAPA --
                     // -------------------------------------------------------------------
                        FOR VI_SEG_ETAPA_COMB1 :=0 TO 2 DO
                        BEGIN
                            FOR VI_SEG_ETAPA_COMB2 :=VI_SEG_ETAPA_COMB1+1 TO 3 DO
                            BEGIN
                                // ----> ZERANDO TODOS OS FLAGS
                                FOR VI_CONTAR := 0 TO 3 DO
                                BEGIN
                                    STGR_PAR_A_SOBRA.Cells[VI_CONTAR,1] := 'F';
                                END; // FOR VI_CONTAR
                                // ----> INDICE
                                STGR_PAR_A11.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS);
                                STGR_PAR_A11_SOBROU.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS);
                                // ----> DADOS
                                STGR_PAR_A11.Cells [1,VI_LINHAS2] := STGR_PAR_A_SOBRA.Cells[VI_SEG_ETAPA_COMB1,0] ;
                                IF (VI_SEG_ETAPA_COMB2=1) THEN STGR_PAR_A11.Cells [2,VI_LINHAS2] := STGR_PAR_A_SOBRA.Cells[1,0] ;
                                IF (VI_SEG_ETAPA_COMB2=2) THEN STGR_PAR_A11.Cells [2,VI_LINHAS2] := STGR_PAR_A_SOBRA.Cells[2,0] ;
                                IF (VI_SEG_ETAPA_COMB2=3) THEN STGR_PAR_A11.Cells [2,VI_LINHAS2] := STGR_PAR_A_SOBRA.Cells[3,0] ;
		                        // ----> SETANDO OS FLAGS PARTE 2
		                        STGR_PAR_A_SOBRA.Cells[VI_SEG_ETAPA_COMB1,1] :='V';
                                IF (VI_SEG_ETAPA_COMB2=1) THEN STGR_PAR_A_SOBRA.Cells[1,1] :='V';
                                IF (VI_SEG_ETAPA_COMB2=2) THEN STGR_PAR_A_SOBRA.Cells[2,1] :='V';
                                IF (VI_SEG_ETAPA_COMB2=3) THEN STGR_PAR_A_SOBRA.Cells[3,1] :='V';
                                 STGR_PAR_A_SOBRA.Repaint;
                                 STGR_PAR_A11.Repaint;
                                 STGR_PAR_A11_SOBROU.Repaint;
                                 // ----> Montando os n�mero que sobraram --
                                 VI_CNTCELULAS :=1;
                                 FOR VI_CONTAR := 0 TO 4 DO
                                 BEGIN
                                    IF (STGR_PAR_A_SOBRA.Cells[VI_CONTAR,1]='F') THEN
                                    BEGIN
                                        STGR_PAR_A11_SOBROU.Cells[VI_CNTCELULAS,VI_LINHAS2]:= STGR_PAR_A_SOBRA.Cells[VI_CONTAR,0];
                                        VI_CNTCELULAS :=VI_CNTCELULAS+1;
		                                 STGR_PAR_A_SOBRA.Repaint;
		                                 STGR_PAR_A11.Repaint;
		                                 STGR_PAR_A11_SOBROU.Repaint;
                                    END; // IF (STGR_IMPAR_A.Cells
                                 END; // FOR VI_CONTAR

                                VI_LINHAS2 := VI_LINHAS2 +1;
                                STGR_PAR_A11.RowCount := VI_LINHAS2;
                                STGR_PAR_A11_SOBROU.RowCount := VI_LINHAS2;
                            END; //  FOR VI_SEG_ETAPA_COMB2
                        END; // FOR VI_SEG_ETAPA_COMB1
                        STGR_PAR_A11.Repaint;
                        STGR_PAR_A_SOBRA.Repaint;
                        //---------------------------
                        // -- FIM DA SEGUNDA ETAPA --
                        //---------------------------
                    VI_LINHAS := VI_LINHAS +1;
                    STGR_PAR_A1.RowCount := VI_LINHAS;
                    STGR_PAR_A1.Cells [0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
                END; // FOR VI_AN_COMB3
            END; //  FOR VI_AN_COMB2
        END; // FOR VI_AN_COMB1



   //D/ showmessage('IMPAR B');
    // *************************************************
    // ** An�lise combinat�ria do Par A para o PAR A1 **
    // *************************************************
	VI_LINHAS := 0;
    VI_LINHAS2 := 0;
                    STGR_IMPAR_B1.Cells [0,VI_LINHAS] := INTtoSTR(VI_LINHAS) ;
        FOR VI_AN_COMB1 := 0 TO 2 DO
        BEGIN
            FOR VI_AN_COMB2 := VI_AN_COMB1+1 TO 4 DO
            BEGIN
                FOR VI_AN_COMB3 := VI_AN_COMB2+1 TO 4 DO
                BEGIN
                    // ----> ZERANDO TODOS OS FLAGS
                    FOR VI_CONTAR := 0 TO 4 DO
                    BEGIN
                        STGR_IMPAR_B.Cells[VI_CONTAR,1] := 'F';
                    END; // FOR VI_CONTAR

                    // ----> MONTANDO A AN�LISE DOS DADOS
                    // ----> INDICE
                    STGR_IMPAR_B1.Cells [0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
                    // ----> DADOS
                    STGR_IMPAR_B1.Cells [1,VI_LINHAS] := STGR_IMPAR_B.Cells[VI_AN_COMB1,0] ;
                    STGR_IMPAR_B1.Cells [2,VI_LINHAS] := STGR_IMPAR_B.Cells[VI_AN_COMB2,0] ;
                    IF (VI_AN_COMB3=2) THEN STGR_IMPAR_B1.Cells [3,VI_LINHAS] := STGR_IMPAR_B.Cells[2,0] ;
                    IF (VI_AN_COMB3=3) THEN STGR_IMPAR_B1.Cells [3,VI_LINHAS] := STGR_IMPAR_B.Cells[3,0] ;
                    IF (VI_AN_COMB3=4) THEN STGR_IMPAR_B1.Cells [3,VI_LINHAS] := STGR_IMPAR_B.Cells[4,0] ;
                    // ----> SETANDO OS FLAGS
                      STGR_IMPAR_B.Cells[VI_AN_COMB1,1] :='V';
                      STGR_IMPAR_B.Cells[VI_AN_COMB2,1] :='V';
                    IF (VI_AN_COMB3=2) THEN STGR_IMPAR_B.Cells[2,1] :='V';
                    IF (VI_AN_COMB3=3) THEN STGR_IMPAR_B.Cells[3,1] :='V';
                    IF (VI_AN_COMB3=4) THEN STGR_IMPAR_B.Cells[4,1] :='V';
                    STGR_IMPAR_B.Repaint;
                    STGR_IMPAR_B1.Repaint;

                     // ----> Montando os n�mero que sobraram --
                     VI_CNTCELULAS := 0;
                     FOR VI_CONTAR := 0 TO 4 DO
                     BEGIN
                        IF (STGR_IMPAR_B.Cells[VI_CONTAR,1]='F') THEN
                        BEGIN
                            STGR_IMPAR_B_SOBRA.Cells[VI_CNTCELULAS,0]:= STGR_IMPAR_B.Cells[VI_CONTAR,0];
                            VI_CNTCELULAS :=VI_CNTCELULAS+1;
                        END; // IF (STGR_PAR_A.Cells
                     END; // FOR VI_CON TAR
                    STGR_IMPAR_B.Repaint;
                    STGR_IMPAR_B1.Repaint;
                    STGR_IMPAR_B_SOBRA.Repaint;

                     // -----------------------------------------------------------------------
                     // -- An�lise combinat�ria do Impar B para o IMPAR B11 -- SEGUNDA ETAPA --
                     // -----------------------------------------------------------------------
                        FOR VI_SEG_ETAPA_COMB1 :=0 TO 0 DO
                        BEGIN
                            FOR VI_SEG_ETAPA_COMB2 :=VI_SEG_ETAPA_COMB1+1 TO 1 DO
                            BEGIN
                                // ----> INDICE
                                STGR_IMPAR_B11.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS);
                                //D/ STGR_IMPAR_A11_SOBROU.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS);
                                // ----> DADOS
                                STGR_IMPAR_B11.Cells [1,VI_LINHAS2] := STGR_IMPAR_B_SOBRA.Cells[VI_SEG_ETAPA_COMB1,0] ;
                                IF (VI_SEG_ETAPA_COMB2=1) THEN STGR_IMPAR_B11.Cells [2,VI_LINHAS2] := STGR_IMPAR_B_SOBRA.Cells[1,0] ;
		                        // ----> SETANDO OS FLAGS PARTE 2
                                {    //D/
		                        STGR_IMPAR_B_SOBRA.Cells[VI_SEG_ETAPA_COMB1,1] :='V';
                                IF (VI_SEG_ETAPA_COMB2=1) THEN STGR_IMPAR_B_SOBRA.Cells[1,1] :='V';
                                }
                                 STGR_IMPAR_B_SOBRA.Repaint;
                                 STGR_IMPAR_B11.Repaint;
                                 //D/ STGR_PAR_A11_SOBROU.Repaint;
                                 // ----> Montando os n�mero que sobraram --
                                 {     //D/
                                 VI_CNTCELULAS :=1;
                                 FOR VI_CONTAR := 0 TO 4 DO
                                 BEGIN
                                    IF (STGR_PAR_A_SOBRA.Cells[VI_CONTAR,1]='F') THEN
                                    BEGIN
                                        STGR_PAR_A11_SOBROU.Cells[VI_CNTCELULAS,VI_LINHAS2]:= STGR_PAR_A_SOBRA.Cells[VI_CONTAR,0];
                                        VI_CNTCELULAS :=VI_CNTCELULAS+1;
		                                 STGR_PAR_A_SOBRA.Repaint;
		                                 STGR_PAR_A11.Repaint;
		                                 STGR_PAR_A11_SOBROU.Repaint;
                                    END; // IF (STGR_IMPAR_A.Cells
                                 END; // FOR VI_CONTAR
                                 }
                                VI_LINHAS2 := VI_LINHAS2 +1;
                                STGR_IMPAR_B11.RowCount := VI_LINHAS2;
                                //D/ STGR_PAR_B11_SOBROU.RowCount := VI_LINHAS2;
                            END; //  FOR VI_SEG_ETAPA_COMB2
                        END; // FOR VI_SEG_ETAPA_COMB1
                        STGR_IMPAR_B11.Repaint;
                        STGR_IMPAR_B_SOBRA.Repaint;
                        //---------------------------
                        // -- FIM DA SEGUNDA ETAPA --
                        //---------------------------

                    VI_LINHAS := VI_LINHAS +1;
                    STGR_IMPAR_B1.RowCount := VI_LINHAS;
                    STGR_IMPAR_B1.Cells [0,VI_LINHAS] := INTtoSTR(VI_LINHAS) ;
                END; // FOR VI_AN_COMB3
            END; //  FOR VI_AN_COMB2
        END; // FOR VI_AN_COMB1




   //D/ showmessage('PAR B');
    // *************************************************
    // ** An�lise combinat�ria do Par B para o PAR B1 **
    // *************************************************
	VI_LINHAS := 0;
    VI_LINHAS2 := 0;
                    STGR_PAR_B1.Cells [0,VI_LINHAS] := INTtoSTR(VI_LINHAS) ;
        FOR VI_AN_COMB1 :=0 TO 3 DO
        BEGIN
            FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 4 DO
            BEGIN
                // ----> ZERANDO TODOS OS FLAGS
                FOR VI_CONTAR := 0 TO 4 DO
                BEGIN
                    STGR_PAR_B.Cells[VI_CONTAR,1] := 'F';
                END; // FOR VI_CONTAR
                // ----> MONTANDO A AN�LISE DOS DADOS
                // ----> INDICE
                STGR_PAR_B1.Cells [0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
                // ----> DADOS
                STGR_PAR_B1.Cells [1,VI_LINHAS] := STGR_PAR_B.Cells[VI_AN_COMB1,0] ;
                IF (VI_AN_COMB2=1) THEN STGR_PAR_B1.Cells [2,VI_LINHAS] := STGR_PAR_B.Cells[1,0] ;
                IF (VI_AN_COMB2=2) THEN STGR_PAR_B1.Cells [2,VI_LINHAS] := STGR_PAR_B.Cells[2,0] ;
                IF (VI_AN_COMB2=3) THEN STGR_PAR_B1.Cells [2,VI_LINHAS] := STGR_PAR_B.Cells[3,0] ;
                IF (VI_AN_COMB2=4) THEN STGR_PAR_B1.Cells [2,VI_LINHAS] := STGR_PAR_B.Cells[4,0] ;
                // ----> SETANDO OS FLAGS
                    STGR_PAR_B.Cells[VI_AN_COMB1,1] :='V';
                IF (VI_AN_COMB2=1) THEN STGR_PAR_B.Cells[1,1] :='V';
                IF (VI_AN_COMB2=2) THEN STGR_PAR_B.Cells[2,1] :='V';
                IF (VI_AN_COMB2=3) THEN STGR_PAR_B.Cells[3,1] :='V';
                IF (VI_AN_COMB2=4) THEN STGR_PAR_B.Cells[4,1] :='V';
                STGR_PAR_B.Repaint;
                STGR_PAR_B1.Repaint;
                 // ----> Montando os n�mero que sobraram --
                VI_CNTCELULAS :=0;
                FOR VI_CONTAR := 0 TO 4 DO
                BEGIN
                   IF (STGR_PAR_B.Cells[VI_CONTAR,1]='F') THEN
                   BEGIN
                       STGR_PAR_B_SOBRA.Cells[VI_CNTCELULAS,0]:= STGR_PAR_B.Cells[VI_CONTAR,0];
                       VI_CNTCELULAS :=VI_CNTCELULAS+1;
                   END; // IF (STGR_PAR_A.Cells
                END; // FOR VI_CON TAR
                // -------------------------------------------------------------------
                // -- An�lise combinat�ria do par B para o PAR B11 -- SEGUNDA ETAPA --
                // -------------------------------------------------------------------
                FOR VI_SEG_ETAPA_COMB1 :=0 TO 1 DO
                BEGIN
                   FOR VI_SEG_ETAPA_COMB2 :=VI_SEG_ETAPA_COMB1+1 TO 2 DO
                   BEGIN
                       // ----> ZERANDO TODOS OS FLAGS
                       FOR VI_CONTAR := 0 TO 3 DO
                       BEGIN
                           STGR_PAR_B_SOBRA.Cells[VI_CONTAR,1] := 'F';
                       END; // FOR VI_CONTAR
                       // ----> INDICE
                       STGR_PAR_B11.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS);
                       STGR_PAR_B11_SOBROU.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS);
                       // ----> DADOS
                       STGR_PAR_B11.Cells [1,VI_LINHAS2] := STGR_PAR_B_SOBRA.Cells[VI_SEG_ETAPA_COMB1,0] ;
                       IF (VI_SEG_ETAPA_COMB2=1) THEN STGR_PAR_B11.Cells [2,VI_LINHAS2] := STGR_PAR_B_SOBRA.Cells[1,0] ;
                       IF (VI_SEG_ETAPA_COMB2=2) THEN STGR_PAR_B11.Cells [2,VI_LINHAS2] := STGR_PAR_B_SOBRA.Cells[2,0] ;
                       // ----> SETANDO OS FLAGS PARTE 2
                       STGR_PAR_B_SOBRA.Cells[VI_SEG_ETAPA_COMB1,1] :='V';
                       IF (VI_SEG_ETAPA_COMB2=1) THEN STGR_PAR_B_SOBRA.Cells[1,1] :='V';
                       IF (VI_SEG_ETAPA_COMB2=2) THEN STGR_PAR_B_SOBRA.Cells[2,1] :='V';
                        STGR_PAR_B_SOBRA.Repaint;
                        STGR_PAR_B11.Repaint;
                        STGR_PAR_B11_SOBROU.Repaint;
                        // ----> Montando os n�mero que sobraram --
                        VI_CNTCELULAS :=1;
                        FOR VI_CONTAR := 0 TO 2 DO
                        BEGIN
                           IF (STGR_PAR_B_SOBRA.Cells[VI_CONTAR,1]='F') THEN
                           BEGIN
                               STGR_PAR_B11_SOBROU.Cells[VI_CNTCELULAS,VI_LINHAS2]:= STGR_PAR_B_SOBRA.Cells[VI_CONTAR,0];
                               VI_CNTCELULAS :=VI_CNTCELULAS+1;
                                STGR_PAR_B_SOBRA.Repaint;
                                STGR_PAR_B11.Repaint;
                                STGR_PAR_B11_SOBROU.Repaint;
                           END; // IF (STGR_IMPAR_A.Cells
                        END; // FOR VI_CONTAR
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                       STGR_PAR_B11.RowCount := VI_LINHAS2;
                       STGR_PAR_B11_SOBROU.RowCount := VI_LINHAS2;
                   END; //  FOR VI_SEG_ETAPA_COMB2
                END; // FOR VI_SEG_ETAPA_COMB1
                STGR_PAR_B11.Repaint;
                STGR_PAR_B_SOBRA.Repaint;
                //---------------------------
                // -- FIM DA SEGUNDA ETAPA --
                //---------------------------

                VI_LINHAS := VI_LINHAS +1;
                STGR_PAR_B1.RowCount := VI_LINHAS;
                STGR_PAR_B1.Cells [0,VI_LINHAS] := INTtoSTR(VI_LINHAS) ;
            END; //  FOR VI_AN_COMB2
        END; // FOR VI_AN_COMB1

{
   //D/ showmessage('Limpando o IMPAR A11');
    // ******************************************
    // ** Retirando as repeti��es do IMPAR A11 **
    // ******************************************
    FOR VI_CONTADOR_PAR_B:=0 TO (STGR_IMPAR_A11.RowCount)-1 DO
    BEGIN
		VI_CNTCELULAS :=0;
		VC_ACHAR_REPETIDO1 := STGR_IMPAR_A11.Cells[1,VI_CONTADOR_PAR_B] ;
		VC_ACHAR_REPETIDO2 := STGR_IMPAR_A11.Cells[2,VI_CONTADOR_PAR_B] ;
        FOR VI_CONTAR := VI_CONTADOR_PAR_B TO (STGR_IMPAR_A11.RowCount)-1 DO
        BEGIN
			IF ((STGR_IMPAR_A11.Cells[1,VI_CONTAR]) =  VC_ACHAR_REPETIDO1) AND ((STGR_IMPAR_A11.Cells[2,VI_CONTAR]) =  VC_ACHAR_REPETIDO2) THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 11 THEN
                BEGIN
					STGR_IMPAR_A11.Cells[1,VI_CONTAR] :='0';
					STGR_IMPAR_A11.Cells[2,VI_CONTAR] :='0';

//					STGR_IMPAR_A11_SOBROU.Cells[1,VI_CONTAR] :='0';
//					STGR_IMPAR_A11_SOBROU.Cells[2,VI_CONTAR] :='0';
                END; // IF VI_CNTCELULAS
            END; //IF ((STGR_IMPAR_A11.Cells
        END; // FOR VI_CONTAR
    END; // FOR VI_CONTADOR_PAR_B:=0
}
    { //D/
	FOR VI_CONTADOR_PAR_B:=(STGR_IMPAR_A11.RowCount)-1 TO 0 DO
    BEGIN
        IF ((STGR_IMPAR_A11.Cells[1,VI_CONTADOR_PAR_B]) <>  '0') AND ((STGR_IMPAR_A11.Cells[2,VI_CONTADOR_PAR_B]) <>  '0') THEN
        BEGIN
            VI_CNTCELULAS 		:= (STGR_IMPAR_A11.RowCount) -1;
            STGR_IMPAR_A11.RowCount := VI_CONTADOR_PAR_B + 1;
            EXIT;
        END; //IF IF ((STGR_IMPAR_A11.Cells
    END; // FOR VI_CONTADOR_PAR_B
    }

  {
    // *****************************************************
    // ** Retirando as repeti��es do par IMPAR_A11_SOBROU **
    // *****************************************************
    FOR VI_CONTADOR_PAR_B:=0 TO (STGR_IMPAR_A11_SOBROU.RowCount)-1 DO
    BEGIN
		VI_CNTCELULAS :=0;
		VC_ACHAR_REPETIDO1 := STGR_IMPAR_A11_SOBROU.Cells[1,VI_CONTADOR_PAR_B] ;
		VC_ACHAR_REPETIDO2 := STGR_IMPAR_A11_SOBROU.Cells[2,VI_CONTADOR_PAR_B] ;
        FOR VI_CONTAR := VI_CONTADOR_PAR_B TO (STGR_IMPAR_A11_SOBROU.RowCount)-1 DO
        BEGIN
			IF ((STGR_IMPAR_A11_SOBROU.Cells[1,VI_CONTAR]) =  VC_ACHAR_REPETIDO1) AND ((STGR_IMPAR_A11_SOBROU.Cells[2,VI_CONTAR]) =  VC_ACHAR_REPETIDO2) THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 1 THEN
                BEGIN
					STGR_IMPAR_A11_SOBROU.Cells[1,VI_CONTAR] :='0';
					STGR_IMPAR_A11_SOBROU.Cells[2,VI_CONTAR] :='0';
                END; // IF VI_CNTCELULAS
            END; //IF ((STGR_IMPAR_A11_SOBROU.Cells
        END; // FOR VI_CONTAR
    END; // FOR VI_CONTADOR_PAR_B:=0
    }


   //d/ showmessage('Limpando o PAR A11');
    // ****************************************
    // ** Retirando as repeti��es do par A11 **
    // ****************************************
    FOR VI_CONTADOR_PAR_B:=0 TO (STGR_PAR_A11.RowCount)-1 DO
    BEGIN
		VI_CNTCELULAS :=0;
		VC_ACHAR_REPETIDO1 := STGR_PAR_A11.Cells[1,VI_CONTADOR_PAR_B] ;
		VC_ACHAR_REPETIDO2 := STGR_PAR_A11.Cells[2,VI_CONTADOR_PAR_B] ;
        FOR VI_CONTAR := VI_CONTADOR_PAR_B TO (STGR_PAR_A11.RowCount)-1 DO
        BEGIN
			IF ((STGR_PAR_A11.Cells[1,VI_CONTAR]) =  VC_ACHAR_REPETIDO1) AND ((STGR_PAR_A11.Cells[2,VI_CONTAR]) =  VC_ACHAR_REPETIDO2) THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 2 THEN
                BEGIN
					STGR_PAR_A11.Cells[1,VI_CONTAR] :='0';
					STGR_PAR_A11.Cells[2,VI_CONTAR] :='0';
                END; // IF VI_CNTCELULAS
            END; //IF ((STGR_PAR_A11.Cells
        END; // FOR VI_CONTAR
    END; // FOR VI_CONTADOR_PAR_B:=0



   //D/ showmessage('Limpando o PAR_A11_SOBROU');
        // ***********************************************
        // ** Retirando as repeti��es do PAR_A11_SOBROU **
        // ***********************************************
    FOR VI_CONTADOR_PAR_B:=0 TO (STGR_PAR_A11_SOBROU.RowCount)-1 DO
    BEGIN
		VI_CNTCELULAS :=0;
		VC_ACHAR_REPETIDO1 := STGR_PAR_A11_SOBROU.Cells[1,VI_CONTADOR_PAR_B] ;
		VC_ACHAR_REPETIDO2 := STGR_PAR_A11_SOBROU.Cells[2,VI_CONTADOR_PAR_B] ;
        FOR VI_CONTAR := VI_CONTADOR_PAR_B TO (STGR_PAR_A11_SOBROU.RowCount)-1 DO
        BEGIN
			IF ((STGR_PAR_A11_SOBROU.Cells[1,VI_CONTAR]) =  VC_ACHAR_REPETIDO1) AND ((STGR_PAR_A11_SOBROU.Cells[2,VI_CONTAR]) =  VC_ACHAR_REPETIDO2) THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 2 THEN
                BEGIN
					STGR_PAR_A11_SOBROU.Cells[1,VI_CONTAR] :='0';
					STGR_PAR_A11_SOBROU.Cells[2,VI_CONTAR] :='0';
                END; // IF VI_CNTCELULAS
            END; //IF ((STGR_PAR_A11_SOBROU.Cells
        END; // FOR VI_CONTAR
    END; // FOR VI_CONTADOR_PAR_B:=0STGR_PAR_A11_SOBROU


   //D/ showmessage('Limpando o IMPAR B11');
    // ***********************************************
    // ** Retirando as repeti��es do STGR_IMPAR_B11 **
    // ***********************************************
    FOR VI_CONTADOR_PAR_B:=0 TO (STGR_IMPAR_B11.RowCount)-1 DO
    BEGIN
		VI_CNTCELULAS :=0;
		VC_ACHAR_REPETIDO1 := STGR_IMPAR_B11.Cells[1,VI_CONTADOR_PAR_B] ;
		VC_ACHAR_REPETIDO2 := STGR_IMPAR_B11.Cells[2,VI_CONTADOR_PAR_B] ;
        FOR VI_CONTAR := VI_CONTADOR_PAR_B TO (STGR_IMPAR_B11.RowCount)-1 DO
        BEGIN
			IF ((STGR_IMPAR_B11.Cells[1,VI_CONTAR]) =  VC_ACHAR_REPETIDO1) AND ((STGR_IMPAR_B11.Cells[2,VI_CONTAR]) =  VC_ACHAR_REPETIDO2) THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 2 THEN
                BEGIN
					STGR_IMPAR_B11.Cells[1,VI_CONTAR] :='0';
					STGR_IMPAR_B11.Cells[2,VI_CONTAR] :='0';
                END; // IF VI_CNTCELULAS
            END; //IF ((STGR_IMPAR_B11.Cells
        END; // FOR VI_CONTAR
    END; // FOR VI_CONTADOR_PAR_B:=0


   //d/ showmessage('Limpando o PAR B11');
    // ****************************************
    // ** Retirando as repeti��es do par B11 **
    // ****************************************
    FOR VI_CONTADOR_PAR_B:=0 TO (STGR_PAR_B11.RowCount)-1 DO
    BEGIN
		VI_CNTCELULAS :=0;
		VC_ACHAR_REPETIDO1 := STGR_PAR_B11.Cells[1,VI_CONTADOR_PAR_B] ;
		VC_ACHAR_REPETIDO2 := STGR_PAR_B11.Cells[2,VI_CONTADOR_PAR_B] ;
        FOR VI_CONTAR := VI_CONTADOR_PAR_B TO (STGR_PAR_B11.RowCount)-1 DO
        BEGIN
			IF ((STGR_PAR_B11.Cells[1,VI_CONTAR]) =  VC_ACHAR_REPETIDO1) AND ((STGR_PAR_B11.Cells[2,VI_CONTAR]) =  VC_ACHAR_REPETIDO2) THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 2 THEN
                BEGIN
					STGR_PAR_B11.Cells[1,VI_CONTAR] :='0';
					STGR_PAR_B11.Cells[2,VI_CONTAR] :='0';
                END; // IF VI_CNTCELULAS
            END;
        END; // FOR VI_CONTAR
    END; // VI_CONTADOR_PAR_B:=0
       //D / showmessage('Limpando o STGR_PAR_B11_SOBROU');

            // ****************************************************
            // ** Retirando as repeti��es do STGR_PAR_B11_SOBROU **
            // ****************************************************
    FOR VI_CONTADOR_PAR_B:=0 TO (STGR_PAR_B11_SOBROU.RowCount)-1 DO
    BEGIN
		VI_CNTCELULAS :=0;
		VC_ACHAR_REPETIDO1 := STGR_PAR_B11_SOBROU.Cells[1,VI_CONTADOR_PAR_B] ;
        FOR VI_CONTAR := VI_CONTADOR_PAR_B TO (STGR_PAR_B11_SOBROU.RowCount)-1 DO
        BEGIN
			IF ((STGR_PAR_B11_SOBROU.Cells[1,VI_CONTAR]) =  VC_ACHAR_REPETIDO1) THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 2 THEN
                BEGIN
					STGR_PAR_B11_SOBROU.Cells[1,VI_CONTAR] :='0';
                END; // IF VI_CNTCELULAS
            END;
        END; // FOR VI_CONTAR
    END; // VI_CONTADOR_PAR_B:=0




    //D/ showmessage('Bloco de 12');
    // ===============================================================================================================================
    // ||||=======================================================================================================================||||
    // |||| 	SEGUNDO BLOCO - COMBINA��O DAS AN�LISES COMBINAT�RIAS COM O VALOR DESEJADO A OBTER P/ GERAS AS SOLU��ES POSS�VEIS ||||
    // ||||=======================================================================================================================||||
    // ===============================================================================================================================
    // *****************
    // ** Bloco de 12 **
    // *****************
    VI_FLAG_QTD12:=0;
	VI_LINHAS := 0;
    STGR_COMBINACOES_TODAS.ColCount := 18;
	FOR VI_CONTADOR_IMPAR_A:=0 TO (STGR_IMPAR_A1.RowCount)-1 DO
    BEGIN
        FOR VI_CONTADOR_PAR_A:=0 TO (STGR_PAR_A1.RowCount)-1 DO
        BEGIN
            FOR VI_CONTADOR_IMPAR_B:=0 TO (STGR_IMPAR_B1.RowCount)-1 DO
            BEGIN
                FOR VI_CONTADOR_PAR_B:=0 TO (STGR_PAR_B1.RowCount)-1 DO
                BEGIN
                	TRY
                         VI_SOMA1:=
                        STRtoINT(STGR_IMPAR_A1.Cells[1,VI_CONTADOR_IMPAR_A]) +STRtoINT(STGR_IMPAR_A1.Cells[2,VI_CONTADOR_IMPAR_A]) +STRtoINT(STGR_IMPAR_A1.Cells[3,VI_CONTADOR_IMPAR_A]) +STRtoINT(STGR_IMPAR_A1.Cells[4,VI_CONTADOR_IMPAR_A])
                        +STRtoINT(STGR_PAR_A1.Cells[1,VI_CONTADOR_PAR_A])  +STRtoINT(STGR_PAR_A1.Cells[2,VI_CONTADOR_PAR_A]) +STRtoINT(STGR_PAR_A1.Cells[3,VI_CONTADOR_PAR_A])
                        +STRtoINT(STGR_IMPAR_B1.Cells[1,VI_CONTADOR_IMPAR_B]) +STRtoINT(STGR_IMPAR_B1.Cells[2,VI_CONTADOR_IMPAR_B]) +STRtoINT(STGR_IMPAR_B1.Cells[3,VI_CONTADOR_IMPAR_B])
                        +STRtoINT(STGR_PAR_B1.Cells[1,VI_CONTADOR_PAR_B])  +STRtoINT(STGR_PAR_B1.Cells[2,VI_CONTADOR_PAR_B]);
                    EXCEPT
                    	ShowMessage ('Erro na soma em algum lugar');
                    END; // TRY
                    TRY

                        IF (VI_SOMA1 = STRtoINT(ED_SOMA_01.Text) ) OR (VI_SOMA1 = STRtoINT(ED_SOMA_11.Text) )
                            or (VI_SOMA1 = STRtoINT(ED_SOMA_21.Text) ) OR (VI_SOMA1 = STRtoINT(ED_SOMA_31.Text) )
                            or (VI_SOMA1 = STRtoINT(ED_SOMA_41.Text) ) OR (VI_SOMA1 = STRtoINT(ED_SOMA_51.Text) )
                            {
                        IF (VI_SOMA1 >= STRtoINT(ED_SOMA_01.Text) ) AND (VI_SOMA1 <= STRtoINT(ED_SOMA_11.Text) )
                            }
                        THEN
                        BEGIN
                            TRY
                                STGR_COMB_12.Cells [0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
                                STGR_COMB_12.Cells [1,VI_LINHAS] := STGR_IMPAR_A1.Cells[1,VI_CONTADOR_IMPAR_A] ;
                                STGR_COMB_12.Cells [2,VI_LINHAS] := STGR_IMPAR_A1.Cells[2,VI_CONTADOR_IMPAR_A] ;
                                STGR_COMB_12.Cells [3,VI_LINHAS] := STGR_IMPAR_A1.Cells[3,VI_CONTADOR_IMPAR_A] ;
                                STGR_COMB_12.Cells [4,VI_LINHAS] := STGR_IMPAR_A1.Cells[4,VI_CONTADOR_IMPAR_A] ;

                                STGR_COMB_12.Cells [5,VI_LINHAS] := STGR_PAR_A1.Cells[1,VI_CONTADOR_PAR_A] ;
                                STGR_COMB_12.Cells [6,VI_LINHAS] := STGR_PAR_A1.Cells[2,VI_CONTADOR_PAR_A] ;
                                STGR_COMB_12.Cells [7,VI_LINHAS] := STGR_PAR_A1.Cells[3,VI_CONTADOR_PAR_A] ;

                                STGR_COMB_12.Cells [8,VI_LINHAS] := STGR_IMPAR_B1.Cells[1,VI_CONTADOR_IMPAR_B] ;
                                STGR_COMB_12.Cells [9,VI_LINHAS] := STGR_IMPAR_B1.Cells[2,VI_CONTADOR_IMPAR_B] ;
                                STGR_COMB_12.Cells [10,VI_LINHAS] := STGR_IMPAR_B1.Cells[3,VI_CONTADOR_IMPAR_B] ;

                                STGR_COMB_12.Cells [11,VI_LINHAS] := STGR_PAR_B1.Cells[1,VI_CONTADOR_PAR_B] ;
                                STGR_COMB_12.Cells [12,VI_LINHAS] := STGR_PAR_B1.Cells[2,VI_CONTADOR_PAR_B] ;
                                        //-----> ORDENANDO ATRAV�S DOS FLAGS
                                        {
                                        FOR VI_CONTAR :=1 TO 25 DO
                                        BEGIN
                                            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                        END; // FOR VI_CONTAR
                                        FOR VI_CONTAR :=1 TO 12 DO
                                        BEGIN
                                            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB_12.Cells[VI_CONTAR,VI_LINHAS])) ,1]:='V';
                                        END; // FOR VI_CONTAR
                                        VI_COL1 := 1;
                                        FOR VI_CONTAR :=1 TO 25 DO
                                        BEGIN
                                            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') AND ((VI_CONTAR MOD 2)<>0) THEN
                                            BEGIN
                                                STGR_COMB_12.Cells [VI_COL1, VI_LINHAS] := (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]);
                                                VI_COL1 := VI_COL1 + 1;
                                            END; // IF (STRGR_TODOS_NUMEROS
                                        END; // FOR VI_CONTAR
                                        VI_COL1 := 8;
                                        FOR VI_CONTAR :=1 TO 25 DO
                                        BEGIN
                                            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') AND ((VI_CONTAR MOD 2)=0) THEN
                                            BEGIN
                                                STGR_COMB_12.Cells [VI_COL1, VI_LINHAS] := (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]);
                                                VI_COL1 := VI_COL1 + 1;
                                            END; // IF (STRGR_TODOS_NUMEROS
                                        END; // FOR VI_CONTAR
                                        }
                                        {
                                        FOR VI_CONTAR :=1 TO 25 DO
                                        BEGIN
                                            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                                            BEGIN
                                                STGR_COMB_12.Cells [VI_COL1, VI_LINHAS] := (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]);
                                                VI_COL1 := VI_COL1 + 1;
                                            END; // IF (STRGR_TODOS_NUMEROS
                                        END; // FOR VI_CONTAR
                                        }
                            EXCEPT
                                SHOWMESSAGE('ERRO EM ALGUM LUGAR NA CRIA��O DOS 12 ELEMENTOS');
                            END; // TRY
                            VI_LINHAS := VI_LINHAS +1;
                            VI_FLAG_QTD12  := VI_FLAG_QTD12 +1;
                            STGR_COMB_12.RowCount := VI_LINHAS;
                            //STGR_COMB_12.Repaint;
                        END; // IF (VI_SOMA1
                    EXCEPT
                    	ShowMessage ('Erro ao preencher dados');
                    END; // TRY
                END; // FOR VI_CONTADOR_PAR_B
            END; // FOR VI_CONTADOR_IMPAR_B
        END; // FOR VI_CONTADOR_PAR_A
        LABEL_12.Repaint;
        LABEL_12PERC.Caption:=   INTtoSTR(TRUNC(VI_CONTADOR_IMPAR_A  / ((STGR_IMPAR_A1.RowCount)-1) *100) ) + ' % ';
        LABEL_12PERC.Repaint;
    END; // FOR VI_CONTADOR_IMPAR_A
    PGBR_MO01_1.Position := 20;

    STGR_COMB_12.Repaint;
    IF (VI_FLAG_QTD12 = 0) THEN
    BEGIN
    	SHOWMESSAGE ('A combina��o de 12 N�O gerou resultados. A proxima simula��a n�o ser� poss�vel');
        EXIT;
    END; // IF (VI_FLAG

    SLEEP (10);
    Self.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    

    //D/ showmessage('Bloco de 5');
    // ****************
    // ** Bloco de 5 **
    // ****************
	VI_LINHAS := 0;
    VI_FLAG_QTD05 := 0 ;
    LA_TXTRESULTADO2.Caption := 'COLUNA COM 5';
    LABEL_05.Repaint;
    LABEL_05.Caption := 'Etapa 2/1:';      
	FOR VI_CONTADOR_IMPAR_A:=0 TO (STGR_IMPAR_A11.RowCount)-1 DO
    BEGIN
        IF (STGR_IMPAR_A11.Cells[1,VI_CONTADOR_IMPAR_A] <> '0') and  (STGR_IMPAR_A11_SOBROU.Cells[1,VI_CONTADOR_IMPAR_A] <> '0')  THEN
        BEGIN
            FOR VI_CONTADOR_PAR_A:=0 TO (STGR_PAR_A11.RowCount)-1 DO
            BEGIN
                IF (STGR_PAR_A11.Cells[1,VI_CONTADOR_PAR_A] <> '0') and (STGR_PAR_A11_SOBROU.Cells[1,VI_CONTADOR_PAR_A] <> '0')  THEN
                BEGIN
                    FOR VI_CONTADOR_IMPAR_B:=0 TO (STGR_IMPAR_B11.RowCount)-1 DO
                    BEGIN
                        IF (STGR_IMPAR_B11.Cells[1,VI_CONTADOR_IMPAR_B] <> '0') THEN
                        BEGIN
                            FOR VI_CONTADOR_PAR_B:=0 TO (STGR_PAR_B11.RowCount)-1 DO
                            BEGIN
                                VC_PAR_B11_SOBROU :=  STGR_PAR_B11_SOBROU.Cells[1,VI_CONTADOR_PAR_B];
                                IF (STGR_PAR_B11.Cells[1,VI_CONTADOR_PAR_B] <> '0') and ( VC_PAR_B11_SOBROU <> '0') THEN
                                BEGIN
                                    TRY     {
                                            VI_SOMA1:=
                                            STRtoINT(STGR_IMPAR_A11_SOBROU.Cells[1,VI_CONTADOR_IMPAR_A]) +STRtoINT(STGR_IMPAR_A11_SOBROU.Cells[2,VI_CONTADOR_IMPAR_A])
                                            +STRtoINT(STGR_PAR_A11_SOBROU.Cells[1,VI_CONTADOR_PAR_A])  +STRtoINT(STGR_PAR_A11_SOBROU.Cells[2,VI_CONTADOR_PAR_A])
                                            +STRtoINT(STGR_PAR_B11_SOBROU.Cells[1,VI_CONTADOR_PAR_B]);
                                            }
                                        VI_SOMA1:=
                                        STRtoINT(STGR_IMPAR_A11.Cells[1,VI_CONTADOR_IMPAR_A]) +STRtoINT(STGR_IMPAR_A11.Cells[2,VI_CONTADOR_IMPAR_A])
                                        +STRtoINT(STGR_PAR_A11.Cells[1,VI_CONTADOR_PAR_A])  +STRtoINT(STGR_PAR_A11.Cells[2,VI_CONTADOR_PAR_A])
                                        +STRtoINT(STGR_IMPAR_B11.Cells[1,VI_CONTADOR_IMPAR_B]) +STRtoINT(STGR_IMPAR_B11.Cells[2,VI_CONTADOR_IMPAR_B])
                                        +STRtoINT(STGR_PAR_B11.Cells[1,VI_CONTADOR_PAR_B])  +STRtoINT(STGR_PAR_B11.Cells[2,VI_CONTADOR_PAR_B]);
                                    EXCEPT
                                        ShowMessage ('Erro na soma em algum lugar');
                                    END; // TRY
                                    IF (VI_SOMA1 = STRtoINT(ED_SOMA_02.Text) ) OR  (VI_SOMA1 = STRtoINT(ED_SOMA_12.Text) )
                                        OR (VI_SOMA1 = STRtoINT(ED_SOMA_22.Text) ) OR  (VI_SOMA1 = STRtoINT(ED_SOMA_32.Text) )
                                        OR (VI_SOMA1 = STRtoINT(ED_SOMA_42.Text) )
                                    THEN
                                    BEGIN
                                        STGR_COMB_05.Cells [0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
                                        STGR_COMB_05.Cells [1,VI_LINHAS] := STGR_IMPAR_A11_SOBROU.Cells[1,VI_CONTADOR_IMPAR_A] ;
                                        STGR_COMB_05.Cells [2,VI_LINHAS] := STGR_IMPAR_A11_SOBROU.Cells[2,VI_CONTADOR_IMPAR_A] ;

                                        STGR_COMB_05.Cells [3,VI_LINHAS] := STGR_PAR_A11_SOBROU.Cells[1,VI_CONTADOR_PAR_A] ;
                                        STGR_COMB_05.Cells [4,VI_LINHAS] := STGR_PAR_A11_SOBROU.Cells[2,VI_CONTADOR_PAR_A] ;

                                        //d/ STGR_COMB_05.Cells [5,VI_LINHAS] := STGR_IMPAR_B11.Cells[1,VI_CONTADOR_IMPAR_B] ;
                                        //d/ STGR_COMB_05.Cells [6,VI_LINHAS] := STGR_IMPAR_B11.Cells[2,VI_CONTADOR_IMPAR_B] ;

                                        STGR_COMB_05.Cells [5,VI_LINHAS] := STGR_PAR_B11_SOBROU.Cells[1,VI_CONTADOR_PAR_B] ;

                                        // BLOQUINHO DE 08
                                        STGR_COMB_08.Cells [0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
                                        STGR_COMB_08.Cells [1,VI_LINHAS] := STGR_IMPAR_A11.Cells[1,VI_CONTADOR_IMPAR_A] ;
                                        STGR_COMB_08.Cells [2,VI_LINHAS] := STGR_IMPAR_A11.Cells[2,VI_CONTADOR_IMPAR_A] ;

                                        STGR_COMB_08.Cells [3,VI_LINHAS] := STGR_PAR_A11.Cells[1,VI_CONTADOR_PAR_A] ;
                                        STGR_COMB_08.Cells [4,VI_LINHAS] := STGR_PAR_A11.Cells[2,VI_CONTADOR_PAR_A] ;

                                        STGR_COMB_08.Cells [5,VI_LINHAS] := STGR_IMPAR_B11.Cells[1,VI_CONTADOR_IMPAR_B] ;
                                        STGR_COMB_08.Cells [6,VI_LINHAS] := STGR_IMPAR_B11.Cells[2,VI_CONTADOR_IMPAR_B] ;

                                        STGR_COMB_08.Cells [7,VI_LINHAS] := STGR_PAR_B11.Cells[1,VI_CONTADOR_PAR_B] ;
                                        STGR_COMB_08.Cells [8,VI_LINHAS] := STGR_PAR_B11.Cells[2,VI_CONTADOR_PAR_B] ;
                                        //-----> ORDENANDO ATRAV�S DOS FLAGS
                                        FOR VI_CONTAR :=1 TO 25 DO
                                        BEGIN
                                            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                        END; // FOR VI_CONTAR
                                        FOR VI_CONTAR :=1 TO 5 DO
                                        BEGIN
                                                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB_05.Cells[VI_CONTAR,VI_LINHAS])) ,1]:='V';
                                        END; // FOR VI_CONTAR
                                        VI_COL1 := 1;
                                        FOR VI_CONTAR :=1 TO 25 DO
                                        BEGIN
                                            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') AND ((VI_CONTAR MOD 2)<>0) THEN
                                            BEGIN
                                                STGR_COMB_05.Cells [VI_COL1, VI_LINHAS] := (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]);
                                                VI_COL1 := VI_COL1 + 1;
                                            END; // IF (STRGR_TODOS_NUMEROS
                                        END; // FOR VI_CONTAR
                                        VI_COL1 := 3;
                                        FOR VI_CONTAR :=1 TO 25 DO
                                        BEGIN
                                            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') AND ((VI_CONTAR MOD 2)=0) THEN
                                            BEGIN
                                                STGR_COMB_05.Cells [VI_COL1, VI_LINHAS] := (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]);
                                                VI_COL1 := VI_COL1 + 1;
                                            END; // IF (STRGR_TODOS_NUMEROS
                                        END; // FOR VI_CONTAR
                                        {
                                        FOR VI_CONTAR :=1 TO 25 DO
                                        BEGIN
                                            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                                            BEGIN
                                                STGR_COMB_05.Cells [VI_COL1, VI_LINHAS] := (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]);
                                                VI_COL1 := VI_COL1 + 1;
                                            END; // IF (STRGR_TODOS_NUMEROS
                                        END; // FOR VI_CONTAR
                                        }
                                        VI_LINHAS := VI_LINHAS +1;
                                        VI_FLAG_QTD05 := VI_FLAG_QTD05 + 1;
                                        STGR_COMB_05.RowCount := VI_LINHAS;
                                    END; // IF (VI_SOMA1
                                END; // IF IF (STGR_PAR_B11.Cells
                            END; // FOR VI_CONTADOR_PAR_B

                    	 END; //if (STGR_IMPAR_B11
                    END; // FOR VI_CONTADOR_IMPAR_B

                END; // IF IF (STGR_PAR_A11.Cells[1,VI_CONTADOR_PAR_A]
            END; // FOR VI_CONTADOR_PAR_A
        END; // IF IF (STGR_PAR_IMPA11.Cells[1,VI_CONTADOR_IMPAR_A]
//            SHOWMESSAGE ('CONTADOR: ' + INTtoSTR(VI_CONTADOR_IMPAR_A) +'  DE UM TOTAL DE: ' + INTtoSTR((STGR_IMPAR_A11.RowCount)-1) );
    LABEL_05PERC.Caption:=   INTtoSTR(TRUNC(VI_CONTADOR_IMPAR_A  / ((STGR_IMPAR_A11.RowCount)-1) *100) ) + ' %';
    LABEL_05PERC.Repaint;
    END; // FOR VI_CONTADOR_IMPAR_A
   //d/ showmessage('Bloco de 5 parte 2');
   LABEL_05PERC.Caption:=   INTtoSTR(TRUNC(VI_CONTADOR_IMPAR_A  / ((STGR_IMPAR_A11.RowCount)-1) *100) ) + ' % ' + INTtoSTR(STGR_COMB_05.RowCount);
   STGR_COMB_05.REPAINT;

    // *******************************************
    // ** Retirando as repeti��es do BLOCO DE 5 **
    // *******************************************
    STGR_COMB_05_CP.ColCount := 6;
    STGR_COMB_05.ColCount := 6; 
    IF (VI_FLAG_QTD05 =0) OR (VI_FLAG_QTD12 = 0) THEN
    BEGIN
    	SHOWMESSAGE ('A combina��o de 12 e/ou a de 05 n�o gerarm resultados. A proxima simula��a n�o ser� poss�vel');
        EXIT;
    END; // IF (VI_FLAG
        LABEL_05.Caption := 'Etapa 2/2:';
        LABEL_05.Repaint;
    FOR VI_CONTADOR_PAR_B:=0 TO (STGR_COMB_05.RowCount)-1 DO
    BEGIN
		VI_CNTCELULAS :=0;
		VC_ACHAR_REPETIDO1 := STGR_COMB_05.Cells[1,VI_CONTADOR_PAR_B] ;
		VC_ACHAR_REPETIDO2 := STGR_COMB_05.Cells[2,VI_CONTADOR_PAR_B] ;
		VC_ACHAR_REPETIDO3 := STGR_COMB_05.Cells[3,VI_CONTADOR_PAR_B] ;
		VC_ACHAR_REPETIDO4 := STGR_COMB_05.Cells[4,VI_CONTADOR_PAR_B] ;
		VC_ACHAR_REPETIDO5 := STGR_COMB_05.Cells[5,VI_CONTADOR_PAR_B] ;
        FOR VI_CONTAR := VI_CONTADOR_PAR_B TO (STGR_COMB_05.RowCount)-1 DO
        BEGIN
			IF ((STGR_COMB_05.Cells[1,VI_CONTAR]) =  VC_ACHAR_REPETIDO1)
            	AND ((STGR_COMB_05.Cells[2,VI_CONTAR]) =  VC_ACHAR_REPETIDO2)
            	AND ((STGR_COMB_05.Cells[3,VI_CONTAR]) =  VC_ACHAR_REPETIDO3)
            	AND ((STGR_COMB_05.Cells[4,VI_CONTAR]) =  VC_ACHAR_REPETIDO4)
            	AND ((STGR_COMB_05.Cells[5,VI_CONTAR]) =  VC_ACHAR_REPETIDO5)
            THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 1 THEN
                BEGIN
					STGR_COMB_05.Cells[1,VI_CONTAR] :='0';
				   //	STGR_COMB_05.Cells[2,VI_CONTAR] :='0';
				   //	STGR_COMB_05.Cells[3,VI_CONTAR] :='0';
				   //	STGR_COMB_05.Cells[4,VI_CONTAR] :='0';
				   //	STGR_COMB_05.Cells[5,VI_CONTAR] :='0';
                END; // IF VI_CNTCELULAS
            END; //IF ((STGR_PAR_A11.Cells
        END; // FOR VI_CONTAR
        LABEL_05PERC.Caption:=   INTtoSTR(TRUNC(VI_CONTADOR_PAR_B  / ((STGR_COMB_05.RowCount)-1) *100) ) + ' % ' + INTtoSTR(VI_CONTADOR_PAR_B);
        LABEL_05PERC.Repaint;
    END; // FOR VI_CONTADOR_PAR_B:=0
    VI_LINHAS:=0;
    STGR_COMB_05_CP.RowCount := VI_LINHAS;    
    FOR VI_CONTAR:=0 TO (STGR_COMB_05.RowCount)-1 DO
    BEGIN
		IF ((STGR_COMB_05.Cells[1,VI_CONTAR]) <> '0') THEN
    	BEGIN
            STGR_COMB_05_CP.Cells [0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
            STGR_COMB_05_CP.Cells [1,VI_LINHAS] := STGR_COMB_05.Cells[1,VI_CONTAR];
            STGR_COMB_05_CP.Cells [2,VI_LINHAS] := STGR_COMB_05.Cells[2,VI_CONTAR];
            STGR_COMB_05_CP.Cells [3,VI_LINHAS] := STGR_COMB_05.Cells[3,VI_CONTAR];
            STGR_COMB_05_CP.Cells [4,VI_LINHAS] := STGR_COMB_05.Cells[4,VI_CONTAR];
            STGR_COMB_05_CP.Cells [5,VI_LINHAS] := STGR_COMB_05.Cells[5,VI_CONTAR];
            VI_LINHAS := VI_LINHAS +1;
            STGR_COMB_05_CP.RowCount := VI_LINHAS;
        END // IF (STGR_COMB_05.
    END; // FOR VI_CONTADOR
    STGR_COMB_05.Repaint;
    STGR_COMB_05_CP.Repaint;

    FOR VI_CONTAR:=0 TO (STGR_COMB_05_CP.RowCount)-1 DO
    BEGIN
        STGR_COMB_05.Cells [0,VI_CONTAR]:= INTtoSTR(VI_CONTAR);
        STGR_COMB_05.Cells[1,VI_CONTAR]:=  STGR_COMB_05_CP.Cells [1,VI_CONTAR];
        STGR_COMB_05.Cells[2,VI_CONTAR]:=  STGR_COMB_05_CP.Cells [2,VI_CONTAR];
        STGR_COMB_05.Cells[3,VI_CONTAR]:=  STGR_COMB_05_CP.Cells [3,VI_CONTAR];
        STGR_COMB_05.Cells[4,VI_CONTAR]:=  STGR_COMB_05_CP.Cells [4,VI_CONTAR];
        STGR_COMB_05.Cells[5,VI_CONTAR]:=  STGR_COMB_05_CP.Cells [5,VI_CONTAR];
    END; // FOR VI_CONTADOR
            STGR_COMB_05.Repaint;
   //D/ showmessage('End Bloco de 5');
    PGBR_MO01_1.Position := 40;

    SLEEP (100);
    STGR_COMB_05.RowCount := STGR_COMB_05_CP.RowCount;
    LABEL_05PERC.Caption:=   '100 % ' + INTtoSTR(STGR_COMB_05.RowCount);
    Self.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    LA_TXTRESULTADO3.Caption := 'RESULTADO:';
    Label_17.Caption := 'ETAPA 3';


    // ======================================================================================================
    // ||||==============================================================================================||||
    // |||| 	TERCEIRO BLOCO - TODAS AS COMBINA��ES DO PROCESSAMENTO ANTERIOR E A DEFINI��O DAS SOBRAS ||||
    // ||||==============================================================================================||||
    // ======================================================================================================
	VI_LINHAS := 0;
    IF (VI_FLAG_QTD05 =0) OR (VI_FLAG_QTD12 = 0) THEN
    BEGIN
    	SHOWMESSAGE ('A combina��o de 12 e/ou a de 05 n�o gerarm resultados. A proxima simula��a n�o ser� poss�vel');
        EXIT;
    END; // IF (VI_FLAG

    // =================== AQUI

    FOR VI_AN_COMB1:= 0 TO  TRUNC(((STGR_COMB_12.RowCount)-1)/1) DO
    BEGIN
        FOR VI_AN_COMB2:= 0 TO  TRUNC((((STGR_COMB_05.RowCount)-1))/1) DO
        BEGIN
		    //D/ CB_ORDENAR.Clear;
            // ----> SETANDO OS FLAGS
            FOR VI_CONTAR :=1 TO 25 DO
            BEGIN
                STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
			END; // FOR VI_CONTAR

            // ----> MONTADO E VERIFICANDO TODOS OS 17 D�GITOS
            FOR VI_CONTAR :=1 TO 12 DO
            BEGIN
                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB_12.Cells[VI_CONTAR,VI_AN_COMB1])) ,1]:='V';
            END; // FOR VI_CONTAR
            FOR VI_CONTAR :=1 TO 5 DO
            BEGIN
            		STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB_05.Cells[VI_CONTAR,VI_AN_COMB2])) ,1]:='V';
            END; // FOR VI_CONTAR
            // -----> MONTANDO O RESULTADO CASO HAJA 15 N�MEROS DIFERENTES OU +
            VI_CNTCELULAS :=0;
            FOR VI_CONTAR :=1 TO 25 DO
            BEGIN
            	IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
					VI_CNTCELULAS:= VI_CNTCELULAS + 1
            END; // FOR VI_CONTAR3
            IF (VI_CNTCELULAS = 17) THEN
            BEGIN
                TRY
                    STGR_COMBINACOES_TODAS.Cells[0, VI_LINHAS] := INTtoSTR(VI_LINHAS);
                EXCEPT
                    SHOWMESSAGE('ERRO AO GERAR A SEQUENCIA DE 17 NUMEROS');
                END; // TRY
                {
                FOR VI_CONTAR :=1 TO 20 DO
                BEGIN
                    CB_ORDENAR.ItemIndex := VI_CONTAR-1;
                    STGR_COMBINACOES_TODAS.Cells[VI_CONTAR, VI_LINHAS] := CB_ORDENAR.Text; //CB_ORDENAR.Items.Strings[VI_CONTAR-1];
                END; // FOR VI_CONTAR
                }
                // MONTANDO OS N�MEROS QUE SOBRAM
                FOR VI_CONTAR :=1 TO 12 DO
                BEGIN
                       TRY
    					   STGR_COMBINACOES_TODAS.Cells [VI_CONTAR, VI_LINHAS] := (STGR_COMB_12.Cells[VI_CONTAR,VI_AN_COMB1]);
                       EXCEPT
                            SHOWMESSAGE('ERRO A GERAR OS PRIMEIROS 12 DIGITOS DE 15.');
                       END;
                END; // FOR VI_CONTAR
	                {VI_COL1 := 1;
                    FOR VI_CONTAR :=1 TO 25 DO
                    BEGIN
                        IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                        BEGIN
                            STGR_COMBINACOES_TODAS.Cells [VI_COL1, VI_LINHAS] := (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]);
                            VI_COL1 := VI_COL1 + 1;
                        END; // IF (STRGR_TODOS_NUMEROS
                    END; // FOR VI_CONTAR
                    }
                FOR VI_CONTAR :=1 TO 5 DO
                BEGIN
                       TRY
    					   STGR_COMBINACOES_TODAS.Cells [VI_CONTAR+12, VI_LINHAS] := (STGR_COMB_05.Cells[VI_CONTAR,VI_AN_COMB2]);
                       EXCEPT
                            SHOWMESSAGE('ERRO A GERAR OS DIGITOS DE 15.');
                       END; // TRY
                END; // FOR VI_CONTAR



                {
                VI_COL1 := 1;
                VI_COL2 := 1;
                FOR VI_CONTAR :=1 TO 25 DO
                BEGIN
                    IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='F') THEN
                    BEGIN
					   STGR_COMBINACOES_SOBRAS.Cells [VI_COL1, VI_LINHAS] := (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]);
                       VI_COL1 := VI_COL1 + 1;
                    END ELSE
                    BEGIN
						STGR_COMBINACOES_TODAS.Cells [VI_COL2, VI_LINHAS] := (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]);
                        VI_COL2 := VI_COL2 + 1;
                    END; // IF (STRGR_TODOS_NUMEROS
                END; // FOR VI_CONTAR
                }
                STGR_COMBINACOES_TODAS.Repaint;
	            VI_LINHAS := VI_LINHAS + 1;
	            STGR_COMBINACOES_TODAS.RowCount := VI_LINHAS;
	            //D/ CB_ORDENAR.Repaint;
	            //D/ STRGR_TODOS_NUMEROS.Repaint;
            END; // IF (VI_CNTCELULAS
        END; // FOR VI_AN_COMB2
              STGR_COMBINACOES_15.Repaint;
        if (VI_AN_COMB1/1000)=(VI_AN_COMB1 DIV 1000) then
        BEGIN
              Self.Repaint;
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              STGR_COMBINACOES_15.Repaint;
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
            LABEL_17.Repaint;
            LABEL_17PERC.Caption:=   INTtoSTR(TRUNC(VI_AN_COMB1  / ((STGR_COMB_12.RowCount)-1) *100) ) + ' %';
            LABEL_17PERC.Caption:=   LABEL_17PERC.Caption + #13 +  '->' + INTtoSTR(VI_LINHAS-1);
            SELF.Repaint;
            LABEL_17PERC.Repaint;
    END; // FOR VI_AN_COMB1:=
    STGR_COMBINACOES_TODAS.Repaint;
    STGR_COMBINACOES_SOBRAS.RowCount := VI_LINHAS;
    PGBR_MO01_1.Position := 60;
    if (RB_SIMULAR_BANCO_DADOS.Checked) THEN
    BEGIN
            // ************************************************************************************
            // **   BANCO DE DADOS  - ZERANDO O BANCO DE DADOS PARA, SE NECESS�RIO GERAR UM NOVO **
            // ************************************************************************************
            SELF.IBQ_COMINACOES.Close;
            SELF.IBQ_COMINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMINACOES.SQL.Clear;
            SELF.IBQ_COMINACOES.SQL.Add('DELETE FROM COMBINACOES_15')  ;
            SELF.IBQ_COMINACOES.ExecSQL;
            SELF.IBQ_COMINACOES.SQL.Clear;
            SELF.IBQ_COMINACOES.SQL.Add('DELETE FROM DADOS_SIMULACAO_25')  ;
            SELF.IBQ_COMINACOES.ExecSQL;
            SELF.IBQ_COMINACOES.SQL.Clear;
            SELF.IBQ_COMINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMINACOES.ExecSQL;
            SELF.IBQ_COMINACOES.SQL.Clear;
            SELF.IBQ_COMINACOES.SQL.Add('SELECT FIRST 10 * FROM COMBINACOES_15 ORDER BY DADOS; ')  ;
            SELF.IBQ_COMINACOES.Open;
    END; //

    BBT_REFINAR.Click;
    //Self.WindowState := wsMinimized;
    //Self.WindowState :=  wsNormal;
    Self.Repaint;
    PGBR_MO01_1.Position := 80;



    // ==================================================
    // ||||==========================================||||
    // |||| 	ORDENA��O E ELIMINA��O DE REPETIDOS  ||||
    // ||||==========================================||||
    // ==================================================
    // *******************
    // **   ORDENANDO   **
    // *******************
    CB_QTD_EXC.ItemHeight := 0 ;
    LA_EXC_PERC.Caption := '0%';
    ED_EXC_01.Text := '0';
    ED_EXC_02.Text := '0';
    ED_EXC_03.Text := '0';
    ED_EXC_04.Text := '0';
  {
  /// codigo eliminado devido a ordena��o estar sendo executada em tempo de montagem do grid de 15 n�meros.

    LABEL_14PERC.Caption := 'ORDENANDO';
    LABEL_14PERC.Repaint;
        Self.Repaint;
        Self.WindowState := wsMinimized;
        Self.WindowState :=  wsNormal;
    BBT_EXECUTAR_EXC.Click;
    LABEL_14PERC.Caption := 'Carregando os dados ordenados.';
    LABEL_14PERC.Repaint;
        Self.Repaint;
        Self.WindowState := wsMinimized;
        Self.WindowState :=  wsNormal;
    BBT_ENCERRAR_EXC.Click;
    }
    GB_EXC.Enabled := TRUE;
    BBT_EXECUTAR_EXC.Enabled := TRUE;
    BBT_ENCERRAR_EXC.Enabled := false;

    STGR_COMBINACOES_15E.RowCount := 0;
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            STGR_COMBINACOES_15E.Cells [VI_CONTAR, 0] :=  '0' ;
        END; // FOR VI_CONTADOR



    if (RB_SIMULAR_BANCO_DADOS.Checked) THEN
    BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************

            // ---> GERADO A PARTIR DO REFINAR
    end; //     if (RB_SIMULAR_BANCO_DADOS.Checked) THEN

    if (RB_SIMULAR_BANCO_DADOS.Checked) THEN
    BEGIN
            PR_SIMULAR_RECUPERANDODADOS ('SIMULACAO');
            EXIT;
    END; // if (RB_SIMULAR_BANCO_DADOS.Checked)




    if (RB_SIMULAR_NA_MEMORIA.Checked) THEN
    BEGIN
            LA_QTD_RESULTADO.Caption := INTtoSTR(STGR_COMBINACOES_15.RowCount);
            LA_QTD_RESULTADO.Repaint;
            // ----->> MONTANDO O ARRAY
            SHOWMESSAGE('Vetor-1 -> Montando a Matriz na mem�ria');
            LABEL_14PERC.Caption:= '0 %   ';
            VMS_TOTAL_15[1] := INTtoSTR(STGR_COMBINACOES_15.RowCount+1);
            FOR VI_AN_COMB1:= 0 TO  TRUNC((STGR_COMBINACOES_15.RowCount-1)/1) DO
            BEGIN
                VC_COMBINACOES :='';
                FOR VI_CNTCELULAS := 1 TO 15 DO
                BEGIN
                       VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
                END; // FOR VI_CNTCELULAS
                IF ((VI_AN_COMB1/100) = (VI_AN_COMB1 DIV 100) ) THEN
                BEGIN
                    Self.Repaint;
                     LABEL_14PERC.Caption:=   INTtoSTR(TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *10) ) + ' %  ';
                     LABEL_14PERC.Repaint;
                    SELF.Repaint;
                    LABEL_14PERC.Repaint;
                    PGBR_ETAPA5.Position := (TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *10) );
                    PGBR_ETAPA5.Repaint;
                END; //IF
                VMS_TOTAL_15 [VI_AN_COMB1+2] := VC_COMBINACOES;
            END; // FOR VI_AN_COMB1:=
            SHOWMESSAGE('Vetor-2 -> Retirando os Repetidos');

            // ********************************
            // **   REMOVENDO OS REPETIDOS   **  VETOR
            // ********************************
            PGBR_ETAPA5.Position := 10;
            VI_LINHAS2 := 0;
            FOR VI_AN_COMB1:= 0 TO  TRUNC((STGR_COMBINACOES_15.RowCount-1)/1) DO
            BEGIN
                VC_COMBINACOES :='';
                FOR VI_CONTAR := 1 TO 15 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15.Cells[VI_CONTAR,VI_AN_COMB1] +' ';
                END; // FOR VI_CNTCELULAS
                VI_CNTCELULAS :=0;
                FOR VI_CONTAR := VI_AN_COMB1 TO (STGR_COMBINACOES_15.RowCount) DO
                BEGIN
                    IF ((VMS_TOTAL_15 [VI_CONTAR+2]) = VC_COMBINACOES)
                    THEN
                    BEGIN
                        VI_CNTCELULAS := VI_CNTCELULAS+1;
                        IF  VI_CNTCELULAS > 1 THEN
                        BEGIN
                            VMS_TOTAL_15 [VI_CONTAR+2] := '00';
                        END;
                    END; // IF ((STGR_COMB_05.Cells[1,VI_CONTAR])
                END; // FOR VI_CONTAR
                IF ((VI_AN_COMB1/100) = (VI_AN_COMB1 DIV 100) ) THEN
                BEGIN
                    Self.Refresh;
                    LABEL_14PERC.Caption:= INTtoSTR(10+ TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *80) ) + ' %  ' ;
                    LABEL_14PERC.Caption:= LABEL_14PERC.Caption + INTtoSTR(VI_AN_COMB1);
                    LABEL_14PERC.Repaint;
                    PGBR_ETAPA5.Position := (10+ TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *80) );
                    PGBR_ETAPA5.Repaint;
                END ELSE
                IF ((VI_AN_COMB1/499) = (VI_AN_COMB1 DIV 499) ) THEN
                BEGIN
                    Self.Refresh;
                    LABEL_14PERC.Caption:= INTtoSTR(10+ TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *80) ) + ' %  ' ;
                    LABEL_14PERC.Caption:= LABEL_14PERC.Caption + INTtoSTR(VI_AN_COMB1);
                    LABEL_14PERC.Repaint;
                    PGBR_ETAPA5.Position := (10+ TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *80) );
                    PGBR_ETAPA5.Repaint;
                    Self.Repaint;
                    Self.WindowState := wsMinimized;
                    Self.WindowState :=  wsNormal;
                    Self.Repaint;
                END;
                {
                VI_LINHAS2:= VI_LINHAS2 + 1;
                STGR_COMBINACOES_15E.RowCount := VI_LINHAS2;
                STGR_COMBINACOES_15E.Refresh;
                }
            END; // FOR VI_AN_COMB1



            // ********************
            // **   ENCERRANDO   **
            // ********************
                Self.Repaint;
                Self.WindowState := wsMinimized;
                Self.WindowState :=  wsNormal;
                Self.Repaint;
                {
            PGBR_ETAPA5.Position := 80;
            STGR_COMBINACOES_15E.RowCount := 0;
            VI_LINHAS2 := 0;
            VI_CONTAR := STRtoINT(VMS_TOTAL_15[1]);
            FOR VI_AN_COMB1:= 2 TO  STRtoINT(VMS_TOTAL_15[1]) DO
            BEGIN
                VC_COMBINACOES := COPY(VMS_TOTAL_15[VI_AN_COMB1],1,2);
                IF (STRtoINT(VC_COMBINACOES) <>  0) THEN
                BEGIN
                        STGR_COMBINACOES_15E.Cells [1, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],1,2);
                        STGR_COMBINACOES_15E.Cells [2, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],4,2);
                        STGR_COMBINACOES_15E.Cells [3, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],7,2);
                        STGR_COMBINACOES_15E.Cells [4, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],10,2);
                        STGR_COMBINACOES_15E.Cells [5, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],13,2);
                        STGR_COMBINACOES_15E.Cells [6, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],16,2);
                        STGR_COMBINACOES_15E.Cells [7, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],19,2);
                        STGR_COMBINACOES_15E.Cells [8, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],22,2);
                        STGR_COMBINACOES_15E.Cells [9, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],25,2);
                        STGR_COMBINACOES_15E.Cells [10, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],28,2);
                        STGR_COMBINACOES_15E.Cells [11, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],31,2);
                        STGR_COMBINACOES_15E.Cells [12, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],34,2);
                        STGR_COMBINACOES_15E.Cells [13, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],37,2);
                        STGR_COMBINACOES_15E.Cells [14, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],40,2);
                        STGR_COMBINACOES_15E.Cells [15, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],43,2);
                    VI_LINHAS2 := VI_LINHAS2 +1;
                    STGR_COMBINACOES_15E.RowCount := VI_LINHAS2;
                    //F_GRIDS2.STGR_COMBINACOES_15E.REPAINT;
                END; // IF NOT
                IF ((VI_AN_COMB1/100) = (VI_AN_COMB1 DIV 100) ) OR (VI_AN_COMB1 = STRtoINT(VMS_TOTAL_15[1]) ) THEN
                BEGIN
                    Self.Refresh;
                    LABEL_14PERC.Caption:= INTtoSTR(80+ TRUNC(VI_AN_COMB1  / VI_CONTAR *20) ) + ' %  ' ;
                    LABEL_14PERC.Caption:= LABEL_14PERC.Caption + INTtoSTR(VI_AN_COMB1);
                    LABEL_14PERC.Repaint;
                    PGBR_ETAPA5.Position := (80+ TRUNC(VI_AN_COMB1  / VI_CONTAR *20) );
                    PGBR_ETAPA5.Repaint;
                END;
            END; // FOR VI_AN_COMB1
            STGR_COMBINACOES_15E.REPAINT;

            BBT_ENCERRAR_EXC.Click;
            }

            SELF.PR_LIMPAR_GRID15 ();

            PGBR_ETAPA5.Position := 80;
            STGR_COMBINACOES_15.RowCount := 0;
            VI_LINHAS2 := 0;
            VI_CONTAR := STRtoINT(VMS_TOTAL_15[1]);
            FOR VI_AN_COMB1:= 2 TO  STRtoINT(VMS_TOTAL_15[1]) DO
            BEGIN
                VC_COMBINACOES := COPY(VMS_TOTAL_15[VI_AN_COMB1],1,2);
                IF (STRtoINT(VC_COMBINACOES) <>  0) THEN
                BEGIN
                        STGR_COMBINACOES_15.Cells [0, VI_LINHAS2] :=  INTtoSTR(VI_LINHAS2);
                        STGR_COMBINACOES_15.Cells [1, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],1,2);
                        STGR_COMBINACOES_15.Cells [2, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],4,2);
                        STGR_COMBINACOES_15.Cells [3, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],7,2);
                        STGR_COMBINACOES_15.Cells [4, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],10,2);
                        STGR_COMBINACOES_15.Cells [5, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],13,2);
                        STGR_COMBINACOES_15.Cells [6, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],16,2);
                        STGR_COMBINACOES_15.Cells [7, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],19,2);
                        STGR_COMBINACOES_15.Cells [8, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],22,2);
                        STGR_COMBINACOES_15.Cells [9, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],25,2);
                        STGR_COMBINACOES_15.Cells [10, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],28,2);
                        STGR_COMBINACOES_15.Cells [11, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],31,2);
                        STGR_COMBINACOES_15.Cells [12, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],34,2);
                        STGR_COMBINACOES_15.Cells [13, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],37,2);
                        STGR_COMBINACOES_15.Cells [14, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],40,2);
                        STGR_COMBINACOES_15.Cells [15, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],43,2);
                    VI_LINHAS2 := VI_LINHAS2 +1;
                    STGR_COMBINACOES_15.RowCount := VI_LINHAS2;
                    //F_GRIDS2.STGR_COMBINACOES_15.REPAINT;
                END; // IF NOT
                IF ((VI_AN_COMB1/100) = (VI_AN_COMB1 DIV 100) ) OR (VI_AN_COMB1 = STRtoINT(VMS_TOTAL_15[1]) ) THEN
                BEGIN
                    Self.Refresh;
                    LABEL_14PERC.Caption:= INTtoSTR(80+ TRUNC(VI_AN_COMB1  / VI_CONTAR *20) ) + ' %  ' ;
                    LABEL_14PERC.Caption:= LABEL_14PERC.Caption + INTtoSTR(VI_AN_COMB1);
                    LABEL_14PERC.Repaint;
                    PGBR_ETAPA5.Position := (80+ TRUNC(VI_AN_COMB1  / VI_CONTAR *20) );
                    PGBR_ETAPA5.Repaint;
                END;
            END; // FOR VI_AN_COMB1
            LA_QTD_RESULTADO.Repaint;

            GB_EXC.Enabled := TRUE;
            BBT_EXECUTAR_EXC.Enabled := TRUE;
            BBT_ENCERRAR_EXC.Enabled := false;
            STGR_COMBINACOES_15E.RowCount := 0;
            PGBR_MO01_1.Position := 100;
            PGBR_MO01_1.Repaint;
            LA_QTD_RESULTADO.Caption := INTtoSTR(STGR_COMBINACOES_15.RowCount);
            LA_QTD_RESULTADO.Repaint;
            SHOWMESSAGE('CONCLU�DO');
    END; //    if (RB_SIMULAR_NA_MEMORIA.Checked) THEN
    

     (*
    // ********************************
    // **   REMOVENDO OS REPETIDOS   **    STRINGRID
    // ********************************
    VI_LINHAS2 := 0;
    FOR VI_AN_COMB1:= 0 TO  TRUNC((STGR_COMBINACOES_15.RowCount-1)/1) DO
    BEGIN
		VI_CNTCELULAS :=0;
        VAS_REPETIDOS [1] := STGR_COMBINACOES_15.Cells[1,VI_AN_COMB1];
        VAS_REPETIDOS [2] := STGR_COMBINACOES_15.Cells[2,VI_AN_COMB1];
        VAS_REPETIDOS [3] := STGR_COMBINACOES_15.Cells[3,VI_AN_COMB1];
        VAS_REPETIDOS [4] := STGR_COMBINACOES_15.Cells[4,VI_AN_COMB1];
        VAS_REPETIDOS [5] := STGR_COMBINACOES_15.Cells[5,VI_AN_COMB1];
        VAS_REPETIDOS [6] := STGR_COMBINACOES_15.Cells[6,VI_AN_COMB1];
        VAS_REPETIDOS [7] := STGR_COMBINACOES_15.Cells[7,VI_AN_COMB1];
        VAS_REPETIDOS [8] := STGR_COMBINACOES_15.Cells[8,VI_AN_COMB1];
        VAS_REPETIDOS [9] := STGR_COMBINACOES_15.Cells[9,VI_AN_COMB1];
        VAS_REPETIDOS [10] := STGR_COMBINACOES_15.Cells[10,VI_AN_COMB1];
        VAS_REPETIDOS [11] := STGR_COMBINACOES_15.Cells[11,VI_AN_COMB1];
        VAS_REPETIDOS [12] := STGR_COMBINACOES_15.Cells[12,VI_AN_COMB1];
        VAS_REPETIDOS [13] := STGR_COMBINACOES_15.Cells[13,VI_AN_COMB1];
        VAS_REPETIDOS [14] := STGR_COMBINACOES_15.Cells[14,VI_AN_COMB1];
        VAS_REPETIDOS [15] := STGR_COMBINACOES_15.Cells[15,VI_AN_COMB1];

        FOR VI_CONTAR := VI_AN_COMB1 TO (STGR_COMBINACOES_15.RowCount) DO
        BEGIN
			IF ((STGR_COMBINACOES_15.Cells[1,VI_CONTAR]) =  VAS_REPETIDOS [1])
             AND ((STGR_COMBINACOES_15.Cells[2,VI_CONTAR]) =  VAS_REPETIDOS [2])
             AND ((STGR_COMBINACOES_15.Cells[3,VI_CONTAR]) =  VAS_REPETIDOS [3])
             AND ((STGR_COMBINACOES_15.Cells[4,VI_CONTAR]) =  VAS_REPETIDOS [4])
             AND ((STGR_COMBINACOES_15.Cells[5,VI_CONTAR]) =  VAS_REPETIDOS [5])
             AND ((STGR_COMBINACOES_15.Cells[6,VI_CONTAR]) =  VAS_REPETIDOS [6])
             AND ((STGR_COMBINACOES_15.Cells[7,VI_CONTAR]) =  VAS_REPETIDOS [7])
             AND ((STGR_COMBINACOES_15.Cells[8,VI_CONTAR]) =  VAS_REPETIDOS [8])
             AND ((STGR_COMBINACOES_15.Cells[9,VI_CONTAR]) =  VAS_REPETIDOS [9])
             AND ((STGR_COMBINACOES_15.Cells[10,VI_CONTAR]) =  VAS_REPETIDOS [10])
             AND ((STGR_COMBINACOES_15.Cells[11,VI_CONTAR]) =  VAS_REPETIDOS [11])
             AND ((STGR_COMBINACOES_15.Cells[12,VI_CONTAR]) =  VAS_REPETIDOS [12])
             AND ((STGR_COMBINACOES_15.Cells[13,VI_CONTAR]) =  VAS_REPETIDOS [13])
             AND ((STGR_COMBINACOES_15.Cells[14,VI_CONTAR]) =  VAS_REPETIDOS [14])
             AND ((STGR_COMBINACOES_15.Cells[15,VI_CONTAR]) =  VAS_REPETIDOS [15])
            THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 1 THEN
                BEGIN
                    FOR VI_SEG_ETAPA_COMB1 := 1 TO 2 DO
                    BEGIN
                        STGR_COMBINACOES_15.Cells [VI_SEG_ETAPA_COMB1, VI_CONTAR] :=  '0';
                    END; // FOR VI_CONTAR
                END;
            END; // IF ((STGR_COMB_05.Cells[1,VI_CONTAR])
        END; // FOR VI_CONTAR
        LABEL_14PERC.Caption:=   INTtoSTR(TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ' ;
        IF ((VI_AN_COMB1/100) = (VI_AN_COMB1 DIV 100) ) THEN
        BEGIN
            LABEL_14PERC.Caption:= LABEL_14PERC.Caption + INTtoSTR(VI_AN_COMB1);
            Self.Repaint;
           // Self.WindowState := wsMinimized;
           // Self.WindowState :=  wsNormal;
            LABEL_14PERC.Repaint;
            Self.Repaint;
        END;
        {
        VI_LINHAS2:= VI_LINHAS2 + 1;
        STGR_COMBINACOES_15E.RowCount := VI_LINHAS2;
        STGR_COMBINACOES_15E.Refresh;
        }
    END; // FOR VI_AN_COMB1
    // ********************
    // **   ENCERRANDO   **
    // ********************
        Self.Repaint;
        Self.WindowState := wsMinimized;
        Self.WindowState :=  wsNormal;
    F_GRIDS2.STGR_COMBINACOES_15E.RowCount := 0;
    VI_LINHAS2 := 0;
    FOR VI_AN_COMB1:= 0 TO  TRUNC((STGR_COMBINACOES_15.RowCount-1)/1) DO
    BEGIN
    	IF (STRtoINT(STGR_COMBINACOES_15.Cells[1,VI_AN_COMB1]) <>  0) THEN
        BEGIN
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
                F_GRIDS2.STGR_COMBINACOES_15E.Cells [VI_CONTAR, VI_LINHAS2] :=  STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_AN_COMB1];
            END; // FOR VI_CONTAR
            VI_LINHAS2 := VI_LINHAS2 +1;
            F_GRIDS2.STGR_COMBINACOES_15E.RowCount := VI_LINHAS2;
        END; // IF NOT
    END; // FOR VI_AN_COMB1
    F_GRIDS2.STGR_COMBINACOES_15E.REPAINT;

    BBT_ENCERRAR_EXC.Click;
    GB_EXC.Enabled := TRUE;
    BBT_EXECUTAR_EXC.Enabled := TRUE;
    BBT_ENCERRAR_EXC.Enabled := false;
    F_GRIDS2.STGR_COMBINACOES_15E.RowCount := 0;
    PGBR_MO01_1.Position := 100;
    PGBR_MO01_1.Repaint;
              *)

    // ****************************
    // **   ELIMINAR REPETIDOS   **
    // ****************************
     {
    Self.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    MEM_COMBINACOES_TODAS.Clear;
    FOR VI_CONTAR := 1 TO STGR_COMBINACOES_TODAS.RowCount-1 DO
    BEGIN
		VC_COMBINACOES :='';
    	FOR VI_CNTCELULAS := 1 TO 12 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_TODAS.Cells[VI_CNTCELULAS,VI_CONTAR] +'  ';
        END; // FOR VI_CNTCELULAS
        VC_COMBINACOES := VC_COMBINACOES + '   -   ';
    	FOR VI_CNTCELULAS := 1 TO 5 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_TODAS.Cells[VI_CNTCELULAS+12,VI_CONTAR] +'  ';
        END; // FOR VI_CNTCELULAS
       	MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    }
   //showmessage('SIMULA��O COMPLETADA' +#13+#13+ 'PROCESSAMENTO ENCERRADO');

      

end;// ========================
	// ||||================||||
	// |||| FIM DO SIMULAR ||||
	// ||||================||||
	// ========================






procedure TForm1.ED_SOMA_01Exit(Sender: TObject);
begin
	TRY
		IF (STRtoINT (ED_SOMA_01.Text)=0) THEN LABEL_17PERC.Caption :='0';
    EXCEPT
		SHOWMESSAGE('DIGITE APENAS NUMEROS INTEIROS');
    END; //TRY
end;

procedure TForm1.ED_SOMA_02Exit(Sender: TObject);
begin
	TRY
		IF (STRtoINT (ED_SOMA_02.Text)=0) THEN LABEL_17PERC.Caption :='0';
    EXCEPT
		SHOWMESSAGE('DIGITE APENAS NUMEROS INTEIROS');
    END; //TRY
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
	STGR_IMPAR_B.Cells[0,0] := Edit42.Text;
	STGR_IMPAR_B.Cells[1,0] := Edit43.Text;
	STGR_IMPAR_B.Cells[2,0] := Edit44.Text;
	STGR_IMPAR_B.Cells[3,0] := Edit45.Text;
	STGR_IMPAR_B.Cells[4,0] := Edit46.Text;
end;


procedure TForm1.BBT_REFINARClick(Sender: TObject);
var
    VI_AN_COMB1, VI_AN_COMB2, VI_AN_COMB3, VI_CONTAR, VI_CNTCELULAS, VI_LINHAS, VI_LINHAS2 : INTEGER;
	VC_ACHAR_REPETIDO1, VC_ACHAR_REPETIDO2, VC_ACHAR_REPETIDO3, VC_COMBINACOES: STRING;

    PROCEDURE PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2: INTEGER);
    var
        VI_CONTAR: INTEGER;
    begin
        // ************************
    	// **  Ordena os dados   **
	    // ************************
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
        END; // FOR VI_CONTAR
        // ----> MONTADO E VERIFICANDO TODOS OS 23 D�GITOS
        FOR VI_CONTAR :=1 TO 15 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMBINACOES_15.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 1;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMBINACOES_15.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15
    
    
    PROCEDURE PR_ORDENAR_PRE_REMOCAO (OUT VI_LINHAS1: INTEGER);
    var
        VI_CONTAR: INTEGER;
    begin
        // ****************************************
    	// ** VERIFICA SE H� REPETIDOS PARA TR�S **
	    // ****************************************
        IF (VI_LINHAS2) >=355 THEN
        BEGIN
            FOR VI_CONTAR :=  (STGR_COMBINACOES_15.RowCount-354) TO (STGR_COMBINACOES_15.RowCount-4) DO
            BEGIN
                IF  (STGR_COMBINACOES_15.Cells[1,VI_CONTAR] = STGR_COMBINACOES_15.Cells[1,VI_LINHAS1]) AND
                    (STGR_COMBINACOES_15.Cells[2,VI_CONTAR] = STGR_COMBINACOES_15.Cells[2,VI_LINHAS1]) AND
                    (STGR_COMBINACOES_15.Cells[3,VI_CONTAR] = STGR_COMBINACOES_15.Cells[3,VI_LINHAS1])
                    THEN
                BEGIN
                    IF  (STGR_COMBINACOES_15.Cells[4,VI_CONTAR] = STGR_COMBINACOES_15.Cells[4,VI_LINHAS1]) AND
                        (STGR_COMBINACOES_15.Cells[5,VI_CONTAR] = STGR_COMBINACOES_15.Cells[5,VI_LINHAS1]) AND
                        (STGR_COMBINACOES_15.Cells[6,VI_CONTAR] = STGR_COMBINACOES_15.Cells[6,VI_LINHAS1]) AND
                        (STGR_COMBINACOES_15.Cells[7,VI_CONTAR] = STGR_COMBINACOES_15.Cells[7,VI_LINHAS1]) AND
                        (STGR_COMBINACOES_15.Cells[8,VI_CONTAR] = STGR_COMBINACOES_15.Cells[8,VI_LINHAS1]) AND
                        (STGR_COMBINACOES_15.Cells[9,VI_CONTAR] = STGR_COMBINACOES_15.Cells[9,VI_LINHAS1]) AND
                        (STGR_COMBINACOES_15.Cells[10,VI_CONTAR] = STGR_COMBINACOES_15.Cells[10,VI_LINHAS1]) AND
                        (STGR_COMBINACOES_15.Cells[11,VI_CONTAR] = STGR_COMBINACOES_15.Cells[11,VI_LINHAS1]) AND
                        (STGR_COMBINACOES_15.Cells[12,VI_CONTAR] = STGR_COMBINACOES_15.Cells[12,VI_LINHAS1]) AND
                        (STGR_COMBINACOES_15.Cells[13,VI_CONTAR] = STGR_COMBINACOES_15.Cells[13,VI_LINHAS1]) AND
                        (STGR_COMBINACOES_15.Cells[14,VI_CONTAR] = STGR_COMBINACOES_15.Cells[14,VI_LINHAS1]) AND
                        (STGR_COMBINACOES_15.Cells[15,VI_CONTAR] = STGR_COMBINACOES_15.Cells[15,VI_LINHAS1])
                        THEN
                    BEGIN
                         VI_LINHAS1 := VI_LINHAS1 - 1;
                    END; // if (STGR_COMBINACOES_15.Cells[1,VI_CONTAR]

                END; // if (STGR_COMBINACOES_15.Cells[1,VI_CONTAR]
            END; // FOR VI_CONTAR
        END;// IF (VI_LINHAS2)
    end; //  PROCEDURE ORDENAR_PRE_REMOCAO

    PROCEDURE PR_GRAVAR_DADOS (VC_FINALIZAR: STRING; OUT VI_LINHAS2:INTEGER);
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DADOS1, VC_DADOS2, VC_DADOS3, VC_DADOS4, VC_DADOS5, VC_DADOS6 : STRING;
    BEGIN
        VI_TOTALGERADO := STGR_COMBINACOES_15.RowCount-1;
        IF ((VI_TOTALGERADO/3000) = (VI_TOTALGERADO DIV 3000))
            or ((VI_TOTALGERADO/3001) = (VI_TOTALGERADO DIV 3001))
            or ((VI_TOTALGERADO/3002) = (VI_TOTALGERADO DIV 3002))
            OR (VC_FINALIZAR = 'SIM') THEN
        BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMBINACOES_15.Repaint;
            Self.Repaint;
            Self.WindowState := wsMinimized;
            Self.WindowState :=  wsNormal;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
                PGBR_ETAPA5.Position := 0;
            LA_ETAPA5_PERC_BD.Caption:= '0 %   ';
            FOR VI_AN_COMB1:= 0 TO  TRUNC((STGR_COMBINACOES_15.RowCount-1)/1) DO
            BEGIN
                VC_COMBINACOES :='';
                FOR VI_CNTCELULAS := 1 TO 15 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
                END; // FOR VI_CNTCELULAS
                SELF.IBQ_COMINACOES.SQL.Clear;
                VC_QUERY  := 'INSERT INTO COMBINACOES_15 (DADOS) VALUES(' +#39+ VC_COMBINACOES + #39 +');';
                SELF.IBQ_COMINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMINACOES.ExecSQL;
                if (VI_AN_COMB1/100)=(VI_AN_COMB1 DIV 100) then
                BEGIN
                     LA_ETAPA5_PERC_BD.Caption:=   INTtoSTR(TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %  ';
                     LA_ETAPA5_PERC_BD.Repaint;
                     PGBR_ETAPA5.Position :=  (TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *100) );
                     PGBR_ETAPA5.Repaint;
               END; // IF (VI_ANCOMB1
            END;
            SELF.PR_LIMPAR_GRID15 ();
            VI_LINHAS2:=2;
            STGR_COMBINACOES_15.RowCount := VI_LINHAS2;
        END; // IF (VI_TOTALGERADO/1000)
        IF (VC_FINALIZAR = 'SIM') THEN
        BEGIN
            VC_DADOS1 := RIGHTSTR ('0'+Edit26.Text,2) + ' ' + RIGHTSTR ('0'+Edit27.Text,2) + ' '  + RIGHTSTR ('0'+Edit28.Text,2) + ' '  + RIGHTSTR ('0'+Edit29.Text,2) + ' '  + RIGHTSTR ('0'+Edit30.Text,2) + ' '  + RIGHTSTR ('0'+Edit31.Text,2) + ' ' + RIGHTSTR ('0'+Edit32.Text,2) + ' ' + RIGHTSTR ('0'+Edit33.Text,2) ;
            VC_DADOS2 := RIGHTSTR ('0'+Edit34.Text,2) + ' ' + RIGHTSTR ('0'+Edit35.Text,2) + ' '  + RIGHTSTR ('0'+Edit36.Text,2) + ' '  + RIGHTSTR ('0'+Edit37.Text,2) + ' '  + RIGHTSTR ('0'+Edit38.Text,2) + ' '  + RIGHTSTR ('0'+Edit39.Text,2) + ' ' + RIGHTSTR ('0'+Edit40.Text,2) ;
            VC_DADOS3 := RIGHTSTR ('0'+Edit42.Text,2) + ' ' + RIGHTSTR ('0'+Edit43.Text,2) + ' '  + RIGHTSTR ('0'+Edit44.Text,2) + ' '  + RIGHTSTR ('0'+Edit45.Text,2) + ' '  + RIGHTSTR ('0'+Edit46.Text,2);
            VC_DADOS4 := RIGHTSTR ('0'+Edit50.Text,2) + ' ' + RIGHTSTR ('0'+Edit51.Text,2) + ' '  + RIGHTSTR ('0'+Edit52.Text,2) + ' '  + RIGHTSTR ('0'+Edit53.Text,2) + ' '  + RIGHTSTR ('0'+Edit54.Text,2);
            VC_DADOS5 := RIGHTSTR ('00'+ED_SOMA_01.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_11.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_21.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_31.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_41.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_51.Text,3) ;
            VC_DADOS6 := RIGHTSTR ('00'+ED_SOMA_02.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_12.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_22.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_32.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_42.Text,3);
                SELF.IBQ_COMINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO DADOS_SIMULACAO_25 (DADOS_1, DADOS_2, DADOS_3, DADOS_4, DADOS_5, DADOS_6) VALUES(' +#39+ VC_DADOS1 + #39 +','  +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 + #39 +','  +#39+ VC_DADOS4 + #39 +','  +#39+ VC_DADOS5 + #39 +','  +#39+ VC_DADOS6 + #39 +');';
                SELF.IBQ_COMINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMINACOES.ExecSQL;
        END; // IF (VC_FINALIZAR = 'SIM')
        PGBR_ETAPA5.Position := 0;        
        Label_14.Caption := 'ETAPA 5:' ;
        LA_ETAPA5_PERC_BD.Repaint;
        LA_ETAPA5_PERC_BD.Caption:= '0 %   ';
        LA_ETAPA5_PERC_BD.Repaint;
        SELF.IBQ_COMINACOES.SQL.Clear;
        SELF.IBQ_COMINACOES.SQL.Add('COMMIT')  ;
        SELF.IBQ_COMINACOES.ExecSQL;
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS
   
begin
//    BBT_SIMULAR.Click;
    // ============================================================
    // ||||====================================================||||
    // |||| 	GERANDO O BLOCO DE 15 A PARTIR DO BLOCO DE 17  ||||
    // ||||====================================================||||
    // ============================================================
    VI_LINHAS2 :=0;
    FOR VI_AN_COMB1:= 0 TO (STGR_COMBINACOES_TODAS.RowCount)-1 DO
    BEGIN
        // ******************************
    	// ** Gerando as 6 combina��es **
	    // ******************************
	    VI_LINHAS  := 0;

	    FOR VI_AN_COMB2:= 0 TO 1 do
        BEGIN
        {
            STGR_REFINAR_SOBRA.Cells[0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
            STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[13+VI_AN_COMB2,VI_AN_COMB1];
            STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[15,VI_AN_COMB1];
            STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[16,VI_AN_COMB1];
            STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'F';
            }

            VMS_REFINAR_SOBRA [5,VI_LINHAS] := INTtoSTR(VI_LINHAS);
            VMS_REFINAR_SOBRA [1,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[13+VI_AN_COMB2,VI_AN_COMB1];
            VMS_REFINAR_SOBRA [2,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[15,VI_AN_COMB1];
            VMS_REFINAR_SOBRA [3,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[16,VI_AN_COMB1];
            VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'F';
                          //STGR_REFINAR_SOBRA.Repaint;

            // -----> Conferir e setar o Flag
                // ----> Se o numero estiver na Impar_A
            {if (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[0,0]) OR
            	(STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[1,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[2,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[3,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[4,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[5,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[6,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[7,0]) }
            if  (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[0,0]) OR
            	(VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[1,0]) OR
                (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[2,0]) OR
                (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[3,0]) OR
                (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[4,0]) OR
                (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[5,0]) OR
                (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[6,0]) OR
                (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[7,0])
                THEN
                    VMS_REFINAR_SOBRA[4,VI_LINHAS] := 'V';
                    //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'V';
                // ----> Se o numero estiver na Linha Par_A
           { if  ((STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_B.Cells[0,0]) OR
            	(STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[1,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[2,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[3,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[4,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[5,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[6,0]) )
                (VMS_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[6,0]) )}
            if ((VMS_REFINAR_SOBRA[2,VI_LINHAS] = STGR_PAR_B.Cells[0,0]) OR
            	(VMS_REFINAR_SOBRA[2,VI_LINHAS] = STGR_PAR_A.Cells[1,0]) OR
                (VMS_REFINAR_SOBRA[2,VI_LINHAS] = STGR_PAR_A.Cells[2,0]) OR
                (VMS_REFINAR_SOBRA[2,VI_LINHAS] = STGR_PAR_A.Cells[3,0]) OR
                (VMS_REFINAR_SOBRA[2,VI_LINHAS] = STGR_PAR_A.Cells[4,0]) OR
                (VMS_REFINAR_SOBRA[2,VI_LINHAS] = STGR_PAR_A.Cells[5,0]) OR
                (VMS_REFINAR_SOBRA[2,VI_LINHAS] = STGR_PAR_A.Cells[6,0]) )
                AND (VMS_REFINAR_SOBRA[4,VI_LINHAS] = 'V')
                THEN
   	                VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'V'// STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'V'
                ELSE
	                VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'F'; //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'F';

            {if  ((STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[0,0]) OR
            	(STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[1,0]) OR
                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[2,0]) OR
                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[3,0]) OR
                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[4,0])  )
                AND (STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] = 'V')       }
            if ((VMS_REFINAR_SOBRA[3,VI_LINHAS] = STGR_PAR_B.Cells[0,0]) OR
            	(VMS_REFINAR_SOBRA[3,VI_LINHAS] = STGR_PAR_B.Cells[1,0]) OR
                (VMS_REFINAR_SOBRA[3,VI_LINHAS] = STGR_PAR_B.Cells[2,0]) OR
                (VMS_REFINAR_SOBRA[3,VI_LINHAS] = STGR_PAR_B.Cells[3,0]) OR
                (VMS_REFINAR_SOBRA[3,VI_LINHAS] = STGR_PAR_B.Cells[4,0])  )
                AND (VMS_REFINAR_SOBRA[4,VI_LINHAS] = 'V')
                THEN
	                VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'V' //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'V'
                ELSE
	                VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'F'; //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'F';


            {IF (STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] = 'F') THEN}
            IF (VMS_REFINAR_SOBRA[4,VI_LINHAS] = 'F') THEN
            BEGIN
                            // ----> SEGUNDA VERIFICA��O, PARA O CASO DE O A LOCALIZA��O DO 2�
                            // E 3� ESTIVEREM EM OUTRO PAR A/B
                            // ----> Se o numero estiver na Impar_A
                            if (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[0,0]) OR
                            (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[1,0]) OR
                            (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[2,0]) OR
                            (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[3,0]) OR
                            (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[4,0]) OR
                            (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[5,0]) OR
                            (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[6,0]) OR
                            (VMS_REFINAR_SOBRA[1,VI_LINHAS] = STGR_IMPAR_A.Cells[7,0])
                            {
                            if (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[0,0]) OR
                            (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[1,0]) OR
                            (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[2,0]) OR
                            (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[3,0]) OR
                            (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[4,0]) OR
                            (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[5,0]) OR
                            (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[6,0]) OR
                            (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[7,0])   }
                            THEN
                               VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'V'; // STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'V';
                            // ----> Se o numero estiver na Linha Par_A
                           { if  ((STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_B.Cells[0,0]) OR
                                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_B.Cells[1,0]) OR
                                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_B.Cells[2,0]) OR
                                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_B.Cells[3,0]) OR
                                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_B.Cells[4,0]) )
                                AND (STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] = 'V')  }
                            if ((VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_B.Cells[0,0]) OR
                                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_B.Cells[1,0]) OR
                                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_B.Cells[2,0]) OR
                                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_B.Cells[3,0]) OR
                                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_B.Cells[4,0]) )
                                AND (VMS_REFINAR_SOBRA[4,VI_LINHAS] = 'V')
                                THEN
                                    VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'V' //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'V'
                                ELSE
                                    VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'F'; //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'F';

                // ----> Se o numero estiver na Linha Par_B
                            {if  ((STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[0,0]) OR
                                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_A.Cells[1,0]) OR
                                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_A.Cells[2,0]) OR
                                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_A.Cells[3,0]) OR
                                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_A.Cells[4,0]) OR
                                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_A.Cells[5,0]) OR
                                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_A.Cells[6,0]) )
                                AND (STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] = 'V')      }
                            if ((VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_B.Cells[0,0]) OR
                                (VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_A.Cells[1,0]) OR
                                (VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_A.Cells[2,0]) OR
                                (VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_A.Cells[3,0]) OR
                                (VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_A.Cells[4,0]) OR
                                (VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_A.Cells[5,0]) OR
                                (VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_A.Cells[6,0]) )
                                AND (VMS_REFINAR_SOBRA [4,VI_LINHAS] = 'V')
                                THEN
                                    VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'V' //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'V'
                                ELSE
                                    VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'F';//STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'F';
            END; // IF (STGR_REFINAR_SOBRA

            // -----> Caso as condi��es da sobra sejem verdadeiras da 15 e 16
            {IF (STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] = 'V') THEN}
            IF (VMS_REFINAR_SOBRA [4,VI_LINHAS] = 'V') THEN
            BEGIN
            	STGR_COMBINACOES_15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
            	FOR VI_CNTCELULAS :=1 TO 12 DO
                BEGIN
                    //AQUI\ VMS_TOTAL_15[VI_CNTCELULAS,VI_LINHAS2] :=  STGR_COMBINACOES_TODAS.Cells [VI_CNTCELULAS,VI_AN_COMB1] ;
	            	STGR_COMBINACOES_15.Cells [VI_CNTCELULAS,VI_LINHAS2] := STGR_COMBINACOES_TODAS.Cells [VI_CNTCELULAS,VI_AN_COMB1];
                END;
            	FOR VI_CNTCELULAS :=1 TO 3 DO
                BEGIN
                    //AQUI\ VMS_TOTAL_15[VI_CNTCELULAS,VI_LINHAS2] :=  STGR_REFINAR_SOBRA.Cells [VI_CNTCELULAS,VI_LINHAS] ;
	            	{STGR_COMBINACOES_15.Cells [VI_CNTCELULAS+12,VI_LINHAS2] := STGR_REFINAR_SOBRA.Cells [VI_CNTCELULAS,VI_LINHAS];}
	            	STGR_COMBINACOES_15.Cells [VI_CNTCELULAS+12,VI_LINHAS2] := VMS_REFINAR_SOBRA [VI_CNTCELULAS,VI_LINHAS];
                END;
                PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2) ;
	            VI_LINHAS2 := VI_LINHAS2 +1;
            END; // IF (STGR_REFINAR_SOBRA


    	    VI_LINHAS  := VI_LINHAS +1;
            {
            STGR_REFINAR_SOBRA.Cells[0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
            STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[13+VI_AN_COMB2,VI_AN_COMB1];
            STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[15,VI_AN_COMB1];
            STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[17,VI_AN_COMB1];
            STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'F'; }
            VMS_REFINAR_SOBRA [5,VI_LINHAS] := INTtoSTR(VI_LINHAS);
            VMS_REFINAR_SOBRA [1,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[13+VI_AN_COMB2,VI_AN_COMB1];
            VMS_REFINAR_SOBRA [2,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[15,VI_AN_COMB1];
            VMS_REFINAR_SOBRA [3,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[17,VI_AN_COMB1];
            VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'F';
            // -----> Conferir e setar o Flag
           { if (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[0,0]) OR
            	(STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[1,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[2,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[3,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[4,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[5,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[6,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[7,0])  }
            if  (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[0,0]) OR
            	(VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[1,0]) OR
                (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[2,0]) OR
                (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[3,0]) OR
                (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[4,0]) OR
                (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[5,0]) OR
                (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[6,0]) OR
                (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[7,0])
                THEN
              	  VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'V';
              	  //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'V';
           { if ((STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[0,0]) OR
            	(STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[1,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[2,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[3,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[4,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[5,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[6,0]) )
                AND (STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] = 'V')  }
            if ((VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[0,0]) OR
            	(VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[1,0]) OR
                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[2,0]) OR
                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[3,0]) OR
                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[4,0]) OR
                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[5,0]) OR
                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[6,0]) )
                AND (VMS_REFINAR_SOBRA [4,VI_LINHAS] = 'V')
                THEN
	                VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'V'
	                //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'V'
                ELSE
	                VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'F';
	                //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'F';
          {  if  ((STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[0,0]) OR
            	(STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[1,0]) OR
                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[2,0]) OR
                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[3,0]) OR
                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[4,0]) )
                AND (STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] = 'V')  }
            if ((VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_B.Cells[0,0]) OR
            	(VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_B.Cells[1,0]) OR
                (VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_B.Cells[2,0]) OR
                (VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_B.Cells[3,0]) OR
                (VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_B.Cells[4,0]) )
                AND (VMS_REFINAR_SOBRA [4,VI_LINHAS] = 'V')
                THEN
	                VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'V'
	                // STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'V'
                ELSE
	                VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'F';
	                // STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'F';
            // -----> Caso as condi��es da sobra sejem verdadeiras  da 15 e 17

            {IF (STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] = 'V') THEN }
            IF (VMS_REFINAR_SOBRA [4,VI_LINHAS] = 'V') THEN
            BEGIN
            	STGR_COMBINACOES_15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
            	FOR VI_CNTCELULAS :=1 TO 12 DO
                BEGIN
                    //AQUI\ VMS_TOTAL_15[VI_CNTCELULAS,VI_LINHAS2] := ( STGR_COMBINACOES_TODAS.Cells [VI_CNTCELULAS,VI_AN_COMB1] );
	            	STGR_COMBINACOES_15.Cells [VI_CNTCELULAS,VI_LINHAS2] := STGR_COMBINACOES_TODAS.Cells [VI_CNTCELULAS,VI_AN_COMB1];
                END;
            	FOR VI_CNTCELULAS :=1 TO 3 DO
                BEGIN
                    //AQUI\ VMS_TOTAL_15[VI_CNTCELULAS,VI_LINHAS2] := ( STGR_REFINAR_SOBRA.Cells [VI_CNTCELULAS,VI_LINHAS] );
	            	{STGR_COMBINACOES_15.Cells [VI_CNTCELULAS+12,VI_LINHAS2] := STGR_REFINAR_SOBRA.Cells [VI_CNTCELULAS,VI_LINHAS];}
	            	STGR_COMBINACOES_15.Cells [VI_CNTCELULAS+12,VI_LINHAS2] := VMS_REFINAR_SOBRA [VI_CNTCELULAS,VI_LINHAS];
                END;
                PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2);
	            VI_LINHAS2 := VI_LINHAS2 +1;
            END; // IF (STGR_REFINAR_SOBRA

    	    VI_LINHAS := VI_LINHAS+1;
            {
            STGR_REFINAR_SOBRA.Cells[0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
            STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[13+VI_AN_COMB2,VI_AN_COMB1];
            STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[16,VI_AN_COMB1];
            STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[17,VI_AN_COMB1];
            STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'F';
            }
            VMS_REFINAR_SOBRA [5,VI_LINHAS] := INTtoSTR(VI_LINHAS);
            VMS_REFINAR_SOBRA [1,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[13+VI_AN_COMB2,VI_AN_COMB1];
            VMS_REFINAR_SOBRA [2,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[16,VI_AN_COMB1];
            VMS_REFINAR_SOBRA [3,VI_LINHAS] := STGR_COMBINACOES_TODAS.Cells[17,VI_AN_COMB1];
            VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'F';
            // -----> Conferir e setar o Flag
            {
            if (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[0,0]) OR
            	(STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[1,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[2,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[3,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[4,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[5,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[6,0]) OR
                (STGR_REFINAR_SOBRA.Cells[1,VI_LINHAS] = STGR_IMPAR_A.Cells[7,0])
                }
            if  (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[0,0]) OR
            	(VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[1,0]) OR
                (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[2,0]) OR
                (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[3,0]) OR
                (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[4,0]) OR
                (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[5,0]) OR
                (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[6,0]) OR
                (VMS_REFINAR_SOBRA [1,VI_LINHAS] = STGR_IMPAR_A.Cells[7,0])
                THEN
                    VMS_REFINAR_SOBRA[4,VI_LINHAS] := 'V'; //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'V';
            {
            if ((STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[0,0]) OR
            	(STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[1,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[2,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[3,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[4,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[5,0]) OR
                (STGR_REFINAR_SOBRA.Cells[2,VI_LINHAS] = STGR_PAR_A.Cells[6,0]) )
                AND (STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] = 'V')
                }
            if ((VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[0,0]) OR
            	(VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[1,0]) OR
                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[2,0]) OR
                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[3,0]) OR
                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[4,0]) OR
                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[5,0]) OR
                (VMS_REFINAR_SOBRA [2,VI_LINHAS] = STGR_PAR_A.Cells[6,0]) )
                AND (VMS_REFINAR_SOBRA [4,VI_LINHAS] = 'V')
                THEN
	                VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'V' //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'V'
                ELSE
	                VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'F'; //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'F';
            {
            if  ((STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[0,0]) OR
            	(STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[1,0]) OR
                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[2,0]) OR
                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[3,0]) OR
                (STGR_REFINAR_SOBRA.Cells[3,VI_LINHAS] = STGR_PAR_B.Cells[4,0]) )
                AND (STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] = 'V')
                }
            if ((VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_B.Cells[0,0]) OR
            	(VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_B.Cells[1,0]) OR
                (VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_B.Cells[2,0]) OR
                (VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_B.Cells[3,0]) OR
                (VMS_REFINAR_SOBRA [3,VI_LINHAS] = STGR_PAR_B.Cells[4,0]) )
                AND (VMS_REFINAR_SOBRA [4,VI_LINHAS] = 'V')
                THEN
	                VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'V' //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'V'
                ELSE
	                VMS_REFINAR_SOBRA [4,VI_LINHAS] := 'F'; //STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] := 'F';
            // -----> Caso as condi��es da sobra sejem verdadeiras  da 17 e 16
            {IF (STGR_REFINAR_SOBRA.Cells[4,VI_LINHAS] = 'V') THEN}
            IF (VMS_REFINAR_SOBRA [4,VI_LINHAS] = 'V') THEN
            BEGIN
            	STGR_COMBINACOES_15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
            	FOR VI_CNTCELULAS :=1 TO 12 DO
                BEGIN
                    //AQUI\ VMS_TOTAL_15[VI_CNTCELULAS,VI_LINHAS2] := ( STGR_COMBINACOES_TODAS.Cells [VI_CNTCELULAS,VI_AN_COMB1] );
	            	STGR_COMBINACOES_15.Cells [VI_CNTCELULAS,VI_LINHAS2] := STGR_COMBINACOES_TODAS.Cells [VI_CNTCELULAS,VI_AN_COMB1];
                END;
            	FOR VI_CNTCELULAS :=1 TO 3 DO
                BEGIN
                    //AQUI\ VMS_TOTAL_15[VI_CNTCELULAS,VI_LINHAS2] := ( STGR_REFINAR_SOBRA.Cells [VI_CNTCELULAS,VI_LINHAS] );
	            	{STGR_COMBINACOES_15.Cells [VI_CNTCELULAS+12,VI_LINHAS2] := STGR_REFINAR_SOBRA.Cells [VI_CNTCELULAS,VI_LINHAS];}
	            	STGR_COMBINACOES_15.Cells [VI_CNTCELULAS+12,VI_LINHAS2] := VMS_REFINAR_SOBRA [VI_CNTCELULAS,VI_LINHAS];
                END;
                PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2);
                VI_LINHAS2 := VI_LINHAS2 +1;
            END; // IF (STGR_REFINAR_SOBRA



    	    VI_LINHAS := VI_LINHAS+1;
            STGR_COMBINACOES_15.RowCount := VI_LINHAS2;
            IF (RB_SIMULAR_BANCO_DADOS.Checked) THEN
                 PR_GRAVAR_DADOS ('NAO',VI_LINHAS2);            
        END; // FOR VI_AN_COMB2:=

        if (VI_AN_COMB1/5000)=(VI_AN_COMB1 DIV 5000) then
        BEGIN
              STGR_REFINAR_SOBRA.Repaint;
              STGR_COMBINACOES_15.Repaint;
              Self.Repaint;
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              Self.Refresh;
        END;
       // LABEL_15PERC.Caption := INTtoSTR(VI_AN_COMB1);
        LABEL_15PERC.Caption:=   INTtoSTR(TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_TODAS.RowCount)-1) *100) ) + ' %';
        LABEL_15PERC.Caption:=   LABEL_15PERC.Caption + #13 +  '->' + INTtoSTR(VI_LINHAS2-1);
        LABEL_15PERC.Repaint;
    END ; //FOR VI_AN_COMB1:= 0
    IF (RB_SIMULAR_BANCO_DADOS.Checked) THEN
        PR_GRAVAR_DADOS ('SIM', VI_LINHAS2);
    STGR_REFINAR_SOBRA.Repaint;
    STGR_COMBINACOES_15.Repaint;
    BBT_EXECUTAR_EXC.Enabled := TRUE;

//    Self.WindowState := wsMinimized;
//    Self.WindowState :=  wsNormal;
    Self.Refresh;
    Self.Repaint;
    Self.Refresh;
    {
    MEM_COMBINACOES_TODAS.Clear;
    FOR VI_CONTAR := 0 TO STGR_COMBINACOES_15.RowCount-1 DO
    BEGIN
		VC_COMBINACOES :='';
    	FOR VI_CNTCELULAS := 1 TO 12 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15.Cells[VI_CNTCELULAS,VI_CONTAR] +'  ';
        END; // FOR VI_CNTCELULAS
        VC_COMBINACOES := VC_COMBINACOES + '   -   ';
    	FOR VI_CNTCELULAS := 1 TO 3 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15.Cells[VI_CNTCELULAS+12,VI_CONTAR] +'  ';
        END; // FOR VI_CNTCELULAS
       	MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
    }
   //showmessage('REFINAR COMPLETADO' +#13+#13+ 'PROCESSAMENTO ENCERRADO');
end;



procedure TForm1.BitBtn3Click(Sender: TObject);
var
    VI_AN_COMB1, VI_AN_COMB2, VI_CONTAR, VI_CNTCELULAS, VI_LINHAS, VI_CNTCELULAS2 : INTEGER;
	VC_ACHAR_REPETIDO1, VC_ACHAR_REPETIDO2, VC_ACHAR_REPETIDO3, VC_COMBINACOES: STRING;
begin
    // ==========================================================
    // ||||==================================================||||
    // |||| 	GERANDO O BLOCO DE 3 A PARTIR DO BLOCO DE 5  ||||
    // ||||==================================================||||
    // ==========================================================
	STGR_COMB_05_CP.RowCount :=1;
    STGR_COMB_05_CP.ColCount := 4;
    VI_LINHAS:=0;
    FOR VI_AN_COMB1 :=0 TO (STGR_COMB_05.RowCount)-1 DO
    BEGIN
    	FOR VI_CONTAR := 1 TO 2 DO
        BEGIN
	            STGR_COMB_05_CP.Cells[0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
                STGR_COMB_05_CP.Cells[1,VI_LINHAS] := ( STGR_COMB_05.Cells [VI_CONTAR,VI_AN_COMB1] );
                STGR_COMB_05_CP.Cells[2,VI_LINHAS] := ( STGR_COMB_05.Cells [3,VI_AN_COMB1] );
                STGR_COMB_05_CP.Cells[3,VI_LINHAS] := ( STGR_COMB_05.Cells [4,VI_AN_COMB1] );
                VI_LINHAS := VI_LINHAS +1;
                STGR_COMB_05_CP.RowCount := VI_LINHAS;

	            STGR_COMB_05_CP.Cells[0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
                STGR_COMB_05_CP.Cells[1,VI_LINHAS] := ( STGR_COMB_05.Cells [VI_CONTAR,VI_AN_COMB1] );
                STGR_COMB_05_CP.Cells[2,VI_LINHAS] := ( STGR_COMB_05.Cells [3,VI_AN_COMB1] );
                STGR_COMB_05_CP.Cells[3,VI_LINHAS] := ( STGR_COMB_05.Cells [5,VI_AN_COMB1] );
                VI_LINHAS := VI_LINHAS +1;
                STGR_COMB_05_CP.RowCount := VI_LINHAS;

	            STGR_COMB_05_CP.Cells[0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
                STGR_COMB_05_CP.Cells[1,VI_LINHAS] := ( STGR_COMB_05.Cells [VI_CONTAR,VI_AN_COMB1] );
                STGR_COMB_05_CP.Cells[2,VI_LINHAS] := ( STGR_COMB_05.Cells [4,VI_AN_COMB1] );
                STGR_COMB_05_CP.Cells[3,VI_LINHAS] := ( STGR_COMB_05.Cells [5,VI_AN_COMB1] );
                VI_LINHAS := VI_LINHAS +1;
                STGR_COMB_05_CP.RowCount := VI_LINHAS;
        END; // FOR VI_CONTAR
    END; // FOR VI_AN_COMB1
    // ****************************************************************
    // ** Retirando as repeti��es do BLOCO DE 3  e gerando-o na tela **
    // ****************************************************************
    VI_LINHAS:=0;
    STGR_COMB_05.ColCount := 4;
    FOR VI_AN_COMB1 :=0 TO (STGR_COMB_05_CP.RowCount)-1 DO
    BEGIN
		VI_CNTCELULAS :=0;
		VC_ACHAR_REPETIDO1 := STGR_COMB_05_CP.Cells[1,VI_AN_COMB1] ;
		VC_ACHAR_REPETIDO2 := STGR_COMB_05_CP.Cells[2,VI_AN_COMB1] ;
		VC_ACHAR_REPETIDO3 := STGR_COMB_05_CP.Cells[3,VI_AN_COMB1] ;
        FOR VI_CONTAR := VI_AN_COMB1 TO (STGR_COMB_05_CP.RowCount)-1 DO
        BEGIN
			IF ((STGR_COMB_05_CP.Cells[1,VI_CONTAR]) =  VC_ACHAR_REPETIDO1)
            	AND ((STGR_COMB_05_CP.Cells[2,VI_CONTAR]) =  VC_ACHAR_REPETIDO2)
            	AND ((STGR_COMB_05_CP.Cells[3,VI_CONTAR]) =  VC_ACHAR_REPETIDO3)
            THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 1 THEN
                BEGIN
					STGR_COMB_05_CP.Cells[1,VI_CONTAR] :='0';
                END; //
            END; // IF ((STGR_COMB_05.Cells[1,VI_CONTAR])
        END; // FOR VI_CONTAR
    END; // FOR VI_AN_COMB1
    VI_LINHAS := 0;
    FOR VI_CONTAR:=0 TO (STGR_COMB_05_CP.RowCount)-1 DO
    BEGIN
  		IF ((STGR_COMB_05_CP.Cells[1,VI_CONTAR]) <> '0') THEN
    	BEGIN
            STGR_COMB_05.Cells [0,VI_LINHAS]:= INTtoSTR(VI_LINHAS);
            STGR_COMB_05.Cells[1,VI_LINHAS]:=  STGR_COMB_05_CP.Cells [1,VI_CONTAR];
            STGR_COMB_05.Cells[2,VI_LINHAS]:=  STGR_COMB_05_CP.Cells [2,VI_CONTAR];
            STGR_COMB_05.Cells[3,VI_LINHAS]:=  STGR_COMB_05_CP.Cells [3,VI_CONTAR];
            VI_LINHAS := VI_LINHAS +1;
            STGR_COMB_05.RowCount := VI_LINHAS;
        END; // IF ((STGR
    END; // FOR VI_CONTADOR
    STGR_COMB_05.Repaint;
    LA_TXTRESULTADO2.Caption := 'COLUNA COM 3';
    LA_TXTRESULTADO3.Caption := 'RESULTADO';
    LA_TXTRESULTADO2.Repaint;
    LA_TXTRESULTADO3.Repaint;
    Label_15.Caption := 'COLUNA COM 15';
    Label_15.Caption := '0      ';
    Label_15.Repaint;
    STGR_COMBINACOES_TODAS.ColCount := 16;
    STGR_COMBINACOES_TODAS.RowCount := 1;
    // ==================================================================
    // ||||==========================================================||||
    // |||| 	TERCEIRO BLOCO - TODAS AS COMBINA��ES DO REFINAMENTO ||||
    // ||||==========================================================||||
    // ==================================================================
	VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 0 TO (STGR_COMB_12.RowCount)-1 DO
    BEGIN
        FOR VI_AN_COMB2:= 0 TO  (STGR_COMB_05.RowCount)-1  DO
        BEGIN
		    //D/ CB_ORDENAR.Clear;
            // ----> SETANDO OS FLAGS
            FOR VI_CONTAR :=1 TO 25 DO
            BEGIN
                STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
			END; // FOR VI_CONTAR
            FOR VI_CONTAR :=1 TO 12 DO
            BEGIN
                STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB_12.Cells[VI_CONTAR,VI_AN_COMB1])) ,1]:='V';
            END; // FOR VI_CONTAR
            FOR VI_CONTAR :=1 TO 3 DO
            BEGIN
            		STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB_05.Cells[VI_CONTAR,VI_AN_COMB2])) ,1]:='V';
            END; // FOR VI_CONTAR
            // -----> MONTANDO O RESULTADO CASO HAJA 15 N�MEROS DIFERENTES OU +
            VI_CNTCELULAS :=0;
            FOR VI_CONTAR :=1 TO 25 DO
            BEGIN
            	IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
					VI_CNTCELULAS:= VI_CNTCELULAS + 1
            END; // FOR VI_CONTAR3
             // -----> MONTANDO O RESULTADO CASO HAJA 15 N�MEROS DIFERENTES OU +
            IF (VI_CNTCELULAS = 15) THEN
			BEGIN
                {
                FOR VI_CONTAR :=1 TO 25 DO
                BEGIN
                    STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                END; // FOR VI_CONTAR
                STGR_COMBINACOES_TODAS.Cells[0, VI_LINHAS] := INTtoSTR(VI_LINHAS);
                FOR VI_CONTAR :=1 TO 12 DO
                BEGIN
                    STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB_12.Cells[VI_CONTAR,VI_AN_COMB1])) ,1]:='V';
                END; // FOR VI_CONTAR
                }
                // MONTANDO OS N�MEROS - BLOCO DE 12 EM ORDEM NUM�RICA E O BLOCO DE 3 N�O
				{  VI_CNTCELULAS2 :=1;
                FOR VI_CONTAR :=1 TO 25 DO
                BEGIN
                    IF  STRGR_TODOS_NUMEROS.Cells [VI_CONTAR,1] = 'V' THEN
                    begin
                       STGR_COMBINACOES_TODAS.Cells [VI_CNTCELULAS2, VI_LINHAS] := (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]);
                       VI_CNTCELULAS2 := VI_CNTCELULAS2 +1;
                    end;
                END; // FOR_VI_CONTAR
                }

                FOR VI_CONTAR :=1 TO 12 DO
                BEGIN
                    STGR_COMBINACOES_TODAS.Cells [VI_CONTAR, VI_LINHAS] := (STGR_COMB_12.Cells[VI_CONTAR,VI_AN_COMB1]);
                END; // FOR VI_CONTAR
               STGR_COMBINACOES_TODAS.Cells [13, VI_LINHAS] := (STGR_COMB_05.Cells[1,VI_AN_COMB2]);
               STGR_COMBINACOES_TODAS.Cells [14, VI_LINHAS] := (STGR_COMB_05.Cells[2,VI_AN_COMB2]);
               STGR_COMBINACOES_TODAS.Cells [15, VI_LINHAS] := (STGR_COMB_05.Cells[3,VI_AN_COMB2]);
               IF VI_LINHAS >= 57 THEN CLOSE;
            END; // FOR VI_CONTAR
            VI_LINHAS := VI_LINHAS + 1;
            STGR_COMBINACOES_TODAS.RowCount := VI_LINHAS;
            //D/ CB_ORDENAR.Repaint;
            //D/ STRGR_TODOS_NUMEROS.Repaint;
        END; // FOR VI_AN_COMB2
                STGR_COMBINACOES_TODAS.Repaint;
                LABEL_15PERC.Caption:=   INTtoSTR(TRUNC(VI_AN_COMB1  / ((STGR_COMB_12.RowCount)-1) *100) ) + ' %';
                LABEL_15PERC.Caption:=   LABEL_17PERC.Caption + #13 +  '->' + INTtoSTR(VI_LINHAS);
                LABEL_15PERC.Repaint;
    END; // FOR VI_AN_COMB1:=
    STGR_COMBINACOES_TODAS.Repaint;
    STGR_COMBINACOES_SOBRAS.RowCount := VI_LINHAS;

    MEM_COMBINACOES_TODAS.Clear;
    FOR VI_CONTAR := 1 TO STGR_COMBINACOES_TODAS.RowCount-1 DO
    BEGIN
		VC_COMBINACOES :='';
    	FOR VI_CNTCELULAS := 1 TO 12 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_TODAS.Cells[VI_CNTCELULAS,VI_CONTAR] +'  ';
        END; // FOR VI_CNTCELULAS
        VC_COMBINACOES := VC_COMBINACOES + '   -   ';
    	FOR VI_CNTCELULAS := 1 TO 3 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_TODAS.Cells[VI_CNTCELULAS+12,VI_CONTAR] +'  ';
        END; // FOR VI_CNTCELULAS
       	MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
   //showmessage('REFINAR - PROCESSAMENTO ENCERRADO');
end;



procedure TForm1.FormShow(Sender: TObject);
begin
    BBT_PAN01_ZERAR.Click;
    BBT_PAN02_ZERAR.Click;
    BBT_PAN03_ZERAR.Click;
    SELF.Top  :=4;
    SELF.Left :=4;
    IF (dayof(DATE) >=12) AND (MONTHOF(DATE) >=02) and (YEAROF(date)>=2017) THEN APPLICATION.Terminate;
end;



procedure TForm1.CB_QTD_EXCChange(Sender: TObject);
begin
     IF (CB_QTD_EXC.ItemIndex =0) THEN
     BEGIN
          ED_EXC_01.Enabled := TRUE;
          ED_EXC_02.Enabled := false;
          ED_EXC_03.Enabled := false;
          ED_EXC_04.Enabled := false;
          ED_EXC_02.Text := '0';
          ED_EXC_03.Text := '0';
          ED_EXC_04.Text := '0';
     END ELSE
     IF (CB_QTD_EXC.ItemIndex =1) THEN
     BEGIN
          ED_EXC_01.Enabled := TRUE;
          ED_EXC_02.Enabled := TRUE;
          ED_EXC_03.Enabled := false;
          ED_EXC_04.Enabled := false;
          ED_EXC_03.Text := '0';
          ED_EXC_04.Text := '0';
     END ELSE
     IF (CB_QTD_EXC.ItemIndex =2) THEN
     BEGIN
          ED_EXC_01.Enabled := TRUE;
          ED_EXC_02.Enabled := TRUE;
          ED_EXC_03.Enabled := TRUE;
          ED_EXC_04.Enabled := false;
          ED_EXC_04.Text := '0';
     END ELSE
     IF (CB_QTD_EXC.ItemIndex =3) THEN
     BEGIN
          ED_EXC_01.Enabled := TRUE;
          ED_EXC_02.Enabled := TRUE;
          ED_EXC_03.Enabled := TRUE;
          ED_EXC_04.Enabled := TRUE;
     END;  //  IF (CB_QTD_EXC

end;

procedure TForm1.CB_QTD_SELChange(Sender: TObject);
begin
     IF (CB_QTD_SEL.ItemIndex =0) THEN
     BEGIN
          ED_SEL_01.Enabled := TRUE;
          ED_SEL_02.Enabled := false;
          ED_SEL_03.Enabled := false;
          ED_SEL_04.Enabled := false;
          ED_SEL_05.Enabled := false;
          ED_SEL_06.Enabled := false;
          ED_SEL_02.Text := '0';
          ED_SEL_03.Text := '0';
          ED_SEL_04.Text := '0';
          ED_SEL_05.Text := '0';
          ED_SEL_06.Text := '0';
     END ELSE
     IF (CB_QTD_SEL.ItemIndex =1) THEN
     BEGIN
          ED_SEL_01.Enabled := TRUE;
          ED_SEL_02.Enabled := TRUE;
          ED_SEL_03.Enabled := false;
          ED_SEL_04.Enabled := false;
          ED_SEL_05.Enabled := false;
          ED_SEL_06.Enabled := false;
          ED_SEL_03.Text := '0';
          ED_SEL_04.Text := '0';
          ED_SEL_05.Text := '0';
          ED_SEL_06.Text := '0';
     END ELSE
     IF (CB_QTD_SEL.ItemIndex =2) THEN
     BEGIN
          ED_SEL_01.Enabled := TRUE;
          ED_SEL_02.Enabled := TRUE;
          ED_SEL_03.Enabled := TRUE;
          ED_SEL_04.Enabled := false;
          ED_SEL_05.Enabled := false;
          ED_SEL_06.Enabled := false;
          ED_SEL_04.Text := '0';
          ED_SEL_05.Text := '0';
          ED_SEL_06.Text := '0';
     END ELSE
     IF (CB_QTD_SEL.ItemIndex =3) THEN
     BEGIN
          ED_SEL_01.Enabled := TRUE;
          ED_SEL_02.Enabled := TRUE;
          ED_SEL_03.Enabled := TRUE;
          ED_SEL_04.Enabled := TRUE;
          ED_SEL_05.Enabled := false;
          ED_SEL_06.Enabled := false;
          ED_SEL_05.Text := '0';
          ED_SEL_06.Text := '0';
     END ELSE
     IF (CB_QTD_SEL.ItemIndex =4) THEN
     BEGIN
          ED_SEL_01.Enabled := TRUE;
          ED_SEL_02.Enabled := TRUE;
          ED_SEL_03.Enabled := TRUE;
          ED_SEL_04.Enabled := TRUE;
          ED_SEL_05.Enabled := TRUE;
          ED_SEL_06.Enabled := false;
          ED_SEL_06.Text := '0';
     END ELSE
     IF (CB_QTD_SEL.ItemIndex =5) THEN
     BEGIN
          ED_SEL_01.Enabled := TRUE;
          ED_SEL_02.Enabled := TRUE;
          ED_SEL_03.Enabled := TRUE;
          ED_SEL_04.Enabled := TRUE;
          ED_SEL_05.Enabled := TRUE;
          ED_SEL_06.Enabled := TRUE;
     END;  //  IF (CB_QTD_SEL
end;




procedure TForm1.BBT_EXECUTAR_EXCClick(Sender: TObject);
VAR
    VI_AN_COMB1, VI_CONTAR, VI_COL1, VI_LINHAS, VI_LINHAS2 : INTEGER;
begin
//
///    PGBR_F1_ORDENAR.Position := 0;
    TRY
        F_GRIDS2.Release;
    EXCEPT
        //
    END;
    TRY
        Application.CreateForm(TF_GRIDS2, F_GRIDS2);
    EXCEPT
        //
    END;

    STGR_COMBINACOES_15E.RowCount := 0;
    STGR_COMBINACOES_15E.Repaint;
    VI_LINHAS :=0;
    VI_LINHAS2 :=0;
    STGR_COMBINACOES_15E.RowCount := 0;
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
                STGR_COMBINACOES_15E.Cells [VI_CONTAR, 0] :=  '0' ;
            END; // FOR VI_CONTAR    
    FOR VI_AN_COMB1 := 0 TO (STGR_COMBINACOES_15.RowCount) -1 DO
    BEGIN
        IF (TRIM(STGR_COMBINACOES_15.Cells[0,VI_AN_COMB1])='') THEN
        BEGIN
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
                STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_AN_COMB1]:='0';
            END; // FOR VI_CONTAR
        END;
        FOR VI_CONTAR := 0 TO 25 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR (VI_CONTAR) ;
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
        END; // FOR VI_CONTADOR
        STRGR_TODOS_NUMEROS.Repaint;
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMBINACOES_15.Cells[VI_CONTAR,VI_AN_COMB1])) ,1]:='V';
        END; // FOR VI_CONTAR
        STRGR_TODOS_NUMEROS.Repaint;
        VI_COL1 := 1;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMBINACOES_15V.Cells [VI_COL1, 0] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_COL1 := VI_COL1 + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
        STGR_COMBINACOES_15V.Cells [16,0] := 'V';
        // -----> EXCLUINDO
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (CB_QTD_EXC.ItemIndex =0) THEN
            BEGIN
                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_EXC_01.Text) ) THEN
                BEGIN
                    STGR_COMBINACOES_15V.Cells [16,0] := 'F';
                END;
            END ELSE
            IF (CB_QTD_EXC.ItemIndex =1) THEN
            BEGIN
                IF  (STRtoINT(ED_EXC_02.Text)=0) OR (STRtoINT(ED_EXC_02.Text)>25) THEN
                BEGIN
                    SHOWMESSAGE ('NUMERO(S) INV�LIDO(S)');
                    ED_EXC_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_EXC_01.Text) )
                    OR ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_EXC_02.Text) )THEN
                BEGIN
                    STGR_COMBINACOES_15V.Cells [16,0] := 'F';
                END;
            END ELSE
            IF (CB_QTD_EXC.ItemIndex =2) THEN
            BEGIN
                IF  (STRtoINT(ED_EXC_02.Text)=0) OR (STRtoINT(ED_EXC_02.Text)>25) OR (STRtoINT(ED_EXC_03.Text)=0) OR (STRtoINT(ED_EXC_03.Text)>25) THEN
                BEGIN
                    SHOWMESSAGE ('NUMERO(S) INV�LIDO(S)');
                    ED_EXC_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_EXC_01.Text) )
                    OR ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_EXC_02.Text) )
                    OR ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_EXC_03.Text) )
                    THEN
                BEGIN
                    STGR_COMBINACOES_15V.Cells [16,0] := 'F';
                END;
            END ELSE
            IF (CB_QTD_EXC.ItemIndex =3) THEN
            BEGIN
                IF  (STRtoINT(ED_EXC_02.Text)=0) OR (STRtoINT(ED_EXC_02.Text)>25) OR (STRtoINT(ED_EXC_03.Text)=0) OR (STRtoINT(ED_EXC_03.Text)>25)  OR (STRtoINT(ED_EXC_04.Text)=0) OR (STRtoINT(ED_EXC_04.Text)>25) THEN
                BEGIN
                    SHOWMESSAGE ('NUMERO(S) INV�LIDO(S)');
                    ED_EXC_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_EXC_01.Text) )
                    OR ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_EXC_02.Text) )
                    OR ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_EXC_03.Text) )
                    OR ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_EXC_04.Text) )
                    THEN
                BEGIN
                    STGR_COMBINACOES_15V.Cells [16,0] := 'F';
                END;
            END; // IF (CB_QTD_EXC
        END; // FOR VI_CONTAR

        STGR_COMBINACOES_15E.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
        IF (STGR_COMBINACOES_15V.Cells [16,0] = 'V') THEN
        BEGIN
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
                STGR_COMBINACOES_15E.Cells [VI_CONTAR, VI_LINHAS2] :=  STGR_COMBINACOES_15V.Cells [VI_CONTAR,0];
            END; // FOR VI_CONTAR
            VI_LINHAS2 := VI_LINHAS2 +1;
            STGR_COMBINACOES_15E.RowCount := VI_LINHAS2;
        END; // IF IF (STGR_COMBINACOES_15V
        LA_EXC_PERC.Caption:=   INTtoSTR(TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %  ';
        LA_EXC_PERC.Repaint;
        IF  (VI_AN_COMB1 /500) = (VI_AN_COMB1 DIV 500) THEN
        BEGIN
///            PGBR_F1_ORDENAR.Position := (TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *100) );
///            PGBR_F1_ORDENAR.Repaint;
            SLEEP (10);
        END ELSE
        IF  (VI_AN_COMB1 /5000) = (VI_AN_COMB1 DIV 5000) THEN
        BEGIN
            Self.Repaint;
            Self.WindowState := wsMinimized;
            Self.WindowState :=  wsNormal;
            Self.Refresh;
            Self.Repaint;
            Self.Refresh;
        END; // IF IF  (VI_AN_COMB1 /1000)
    END; // FOR VI_AN_COMB1 := 0
///    PGBR_F1_ORDENAR.Position := 100;
///    PGBR_F1_ORDENAR.Repaint;
    STGR_COMBINACOES_15V.Repaint;    
    SHOWMESSAGE ('OK');
    BBT_ENCERRAR_EXC.Enabled := TRUE;
end;


procedure TForm1.BBT_ENCERRAR_EXCClick(Sender: TObject);
VAR
    VI_AN_COMB1, VI_CONTAR : INTEGER;
begin
    STGR_COMBINACOES_15V.Repaint;
    STGR_COMBINACOES_15E.Repaint;
    STGR_COMBINACOES_15.RowCount := 0;
    FOR VI_AN_COMB1 :=0 TO (STGR_COMBINACOES_15E.RowCount ) DO
    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
           STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_AN_COMB1] := STGR_COMBINACOES_15E.Cells [VI_CONTAR,VI_AN_COMB1];
           STGR_COMBINACOES_15.RowCount := VI_AN_COMB1;
        END;
    END;
    STGR_COMBINACOES_15.Repaint;
    GB_EXC.Enabled := FALSE;
    SHOWMESSAGE ('OK');
    RB_SIM_MODELO_01.Checked := TRUE;
    //BBT_EXECUTAR_SEL.Enabled := TRUE;
end;



procedure TForm1.BBT_EXECUTAR_SELClick(Sender: TObject);
VAR
    VI_AN_COMB1, VI_CONTAR, VI_COL1, VI_LINHAS, VI_LINHAS2 : SMALLINT;
    VI_CONTARSEL2, VI_CONTARSEL3, VI_CONTARSEL4, VI_CONTARSEL5, VI_CONTARSEL6 : SMALLINT;
begin
    TRY
        F_GRIDS2.Release;
    EXCEPT
        //
    END;
    TRY
        Application.CreateForm(TF_GRIDS2, F_GRIDS2);
    EXCEPT
        //
    END;
    STGR_COMBINACOES_15E.RowCount := 0;
    STGR_COMBINACOES_15E.Repaint;
    VI_LINHAS :=0;
    VI_LINHAS2 :=0;
    STGR_COMBINACOES_15E.RowCount := 0;
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
                STGR_COMBINACOES_15E.Cells [VI_CONTAR, 0] :=  '0' ;
            END; // FOR VI_CONTAR    
    FOR VI_AN_COMB1 := 0 TO (STGR_COMBINACOES_15.RowCount)-1 DO
    BEGIN
        IF (TRIM(STGR_COMBINACOES_15.Cells[0,VI_AN_COMB1])='') THEN
        BEGIN
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
                STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_AN_COMB1]:='0';
            END; // FOR VI_CONTAR
        END;    
        FOR VI_CONTAR := 0 TO 25 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR (VI_CONTAR) ;
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
        END; // FOR VI_CONTADOR
        STRGR_TODOS_NUMEROS.Repaint;
        FOR VI_CONTAR := 0 TO 15 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMBINACOES_15.Cells[VI_CONTAR,VI_AN_COMB1])) ,1]:='V';
        END; // FOR VI_CONTAR
        STRGR_TODOS_NUMEROS.Repaint;
        VI_COL1 := 1;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMBINACOES_15V.Cells [VI_COL1, 0] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2);
                VI_COL1 := VI_COL1 + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
        STGR_COMBINACOES_15V.Cells [16,0] := 'F';
        STGR_COMBINACOES_15V.Repaint;
        // ----->�SELECIONANDO
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            IF (CB_QTD_SEL.ItemIndex =0) THEN
            BEGIN
                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_SEL_01.Text) ) THEN
                BEGIN
                    STGR_COMBINACOES_15V.Cells [16,0] := 'V';
                END;
            END ELSE

            IF (CB_QTD_SEL.ItemIndex =1) THEN
            BEGIN
                IF (STRtoINT(ED_SEL_01.Text)=0) OR (STRtoINT(ED_SEL_01.Text)>25) or (STRtoINT(ED_SEL_02.Text)=0) OR (STRtoINT(ED_SEL_02.Text)>25) THEN
                BEGIN
                    SHOWMESSAGE ('NUMERO(S) INV�LIDO(S)');
                    ED_SEL_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(ED_SEL_02.Text)<=STRtoINT(ED_SEL_01.Text) ) THEN
                BEGIN
                    SHOWMESSAGE ('O PREENCHIMENTO NUM�RICO DEVE SER EM ORDEM CRESCENTE.');
                    ED_SEL_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_SEL_01.Text) ) THEN
                BEGIN
                    FOR VI_CONTARSEL2:= VI_CONTAR TO 15 DO
                    BEGIN
                        IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL2,0]) = STRtoINT(ED_SEL_02.Text) )
                         THEN STGR_COMBINACOES_15V.Cells [16,0] := 'V';
                    END;// FOR VI_CONTARSEL2
                END; //IF ( STRtoINT(STGR_COMBINACOES_15V.Cells
            END ELSE
            IF (CB_QTD_SEL.ItemIndex =2) THEN
            BEGIN
                IF (STRtoINT(ED_SEL_01.Text)=0) OR (STRtoINT(ED_SEL_01.Text)>25) or (STRtoINT(ED_SEL_01.Text)=0) OR (STRtoINT(ED_SEL_01.Text)>25) or (STRtoINT(ED_SEL_02.Text)=0) OR (STRtoINT(ED_SEL_02.Text)>25) OR (STRtoINT(ED_SEL_03.Text)=0) OR (STRtoINT(ED_SEL_03.Text)>25) THEN
                BEGIN
                    SHOWMESSAGE ('NUMERO(S) INV�LIDO(S)');
                    ED_SEL_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(ED_SEL_02.Text)<=STRtoINT(ED_SEL_01.Text) ) OR ( STRtoINT(ED_SEL_03.Text)<=STRtoINT(ED_SEL_02.Text)  ) THEN
                BEGIN
                    SHOWMESSAGE ('O PREENCHIMENTO NUM�RICO DEVE SER EM ORDEM CRESCENTE.');
                    ED_SEL_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_SEL_01.Text) ) THEN
                BEGIN
                    FOR VI_CONTARSEL2:= VI_CONTAR TO 15 DO
                    BEGIN
                        IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL2,0]) = STRtoINT(ED_SEL_02.Text) )
                        THEN
                            FOR VI_CONTARSEL3:= VI_CONTARSEL2 TO 15 DO
                            BEGIN
                                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL3,0]) = STRtoINT(ED_SEL_03.Text) )
                                    THEN STGR_COMBINACOES_15V.Cells [16,0] := 'V';

                            end; // FOR VI_CONTARSEL3
                    END;// FOR VI_CONTARSEL2
                END; //IF ( STRtoINT(STGR_COMBINACOES_15V.Cells
            END ELSE
            IF (CB_QTD_SEL.ItemIndex =3) THEN
            BEGIN
                IF  (STRtoINT(ED_SEL_01.Text)=0) OR (STRtoINT(ED_SEL_01.Text)>25) or (STRtoINT(ED_SEL_02.Text)=0) OR (STRtoINT(ED_SEL_02.Text)>25) OR (STRtoINT(ED_SEL_03.Text)=0) OR (STRtoINT(ED_SEL_03.Text)>25)  OR (STRtoINT(ED_SEL_04.Text)=0) OR (STRtoINT(ED_SEL_04.Text)>25) THEN
                BEGIN
                    SHOWMESSAGE ('NUMERO(S) INV�LIDO(S)');
                    ED_SEL_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(ED_SEL_02.Text)<=STRtoINT(ED_SEL_01.Text) )
                 OR ( STRtoINT(ED_SEL_03.Text)<=STRtoINT(ED_SEL_02.Text))
                 OR ( STRtoINT(ED_SEL_04.Text)<=STRtoINT(ED_SEL_03.Text))  THEN
                BEGIN
                    SHOWMESSAGE ('O PREENCHIMENTO NUM�RICO DEVE SER EM ORDEM CRESCENTE.');
                    ED_SEL_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_SEL_01.Text) ) THEN
                BEGIN
                    FOR VI_CONTARSEL2:= VI_CONTAR TO 15 DO
                    BEGIN
                        IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL2,0]) = STRtoINT(ED_SEL_02.Text) )
                        THEN
                            FOR VI_CONTARSEL3:= VI_CONTARSEL2 TO 15 DO
                            BEGIN
                                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL3,0]) = STRtoINT(ED_SEL_03.Text) )
                                 THEN
                                    FOR VI_CONTARSEL4:= VI_CONTARSEL3 TO 15 DO
                                    BEGIN
                                        IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL4,0]) = STRtoINT(ED_SEL_04.Text) )
                                            THEN STGR_COMBINACOES_15V.Cells [16,0] := 'V';
                                    END; // FOR VI_CONTARSEL4
                            end; // FOR VI_CONTARSEL3
                    END;// FOR VI_CONTARSEL2
                END; //IF ( STRtoINT(STGR_COMBINACOES_15V.Cells
            END ELSE
            IF (CB_QTD_SEL.ItemIndex =4) THEN
            BEGIN
                IF (STRtoINT(ED_SEL_01.Text)=0) OR (STRtoINT(ED_SEL_01.Text)>25)
                    OR (STRtoINT(ED_SEL_02.Text)=0) OR (STRtoINT(ED_SEL_02.Text)>25)
                    OR (STRtoINT(ED_SEL_03.Text)=0) OR (STRtoINT(ED_SEL_03.Text)>25)
                    OR (STRtoINT(ED_SEL_04.Text)=0) OR (STRtoINT(ED_SEL_04.Text)>25)
                    OR (STRtoINT(ED_SEL_05.Text)=0) OR (STRtoINT(ED_SEL_05.Text)>25) THEN
                BEGIN
                    SHOWMESSAGE ('NUMERO(S) INV�LIDO(S)');
                    ED_SEL_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(ED_SEL_02.Text)<=STRtoINT(ED_SEL_01.Text) ) OR ( STRtoINT(ED_SEL_03.Text)<=STRtoINT(ED_SEL_02.Text) ) OR ( STRtoINT(ED_SEL_04.Text)<=STRtoINT(ED_SEL_03.Text) ) THEN
                BEGIN
                    SHOWMESSAGE ('O PREENCHIMENTO NUM�RICO DEVE SER EM ORDEM CRESCENTE.');
                    ED_SEL_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_SEL_01.Text) ) THEN
                BEGIN
                    FOR VI_CONTARSEL2:= VI_CONTAR TO 15 DO
                    BEGIN
                        IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL2,0]) = STRtoINT(ED_SEL_02.Text) )
                        THEN
                            FOR VI_CONTARSEL3:= VI_CONTARSEL2 TO 15 DO
                            BEGIN
                                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL3,0]) = STRtoINT(ED_SEL_03.Text) )
                                THEN
                                    FOR VI_CONTARSEL4:= VI_CONTARSEL3 TO 15 DO
                                    BEGIN
                                        IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL4,0]) = STRtoINT(ED_SEL_04.Text) )
                                        THEN
                                            FOR VI_CONTARSEL5:= VI_CONTARSEL3 TO 15 DO
                                            BEGIN
                                                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL5,0]) = STRtoINT(ED_SEL_05.Text) )
                                                THEN STGR_COMBINACOES_15V.Cells [16,0] := 'V';
                                            END; // FOR VI_CONTARSEL5
                                    END; // FOR VI_CONTARSEL4
                            end; // FOR VI_CONTARSEL3
                    END;// FOR VI_CONTARSEL2
                END; //IF ( STRtoINT(STGR_COMBINACOES_15V.Cells
            END ELSE
            IF (CB_QTD_SEL.ItemIndex =5) THEN
            BEGIN
                IF (STRtoINT(ED_SEL_01.Text)=0) OR (STRtoINT(ED_SEL_01.Text)>25)
                    OR (STRtoINT(ED_SEL_02.Text)=0) OR (STRtoINT(ED_SEL_02.Text)>25)
                    OR (STRtoINT(ED_SEL_03.Text)=0) OR (STRtoINT(ED_SEL_03.Text)>25)
                    OR (STRtoINT(ED_SEL_04.Text)=0) OR (STRtoINT(ED_SEL_04.Text)>25)
                    OR (STRtoINT(ED_SEL_05.Text)=0) OR (STRtoINT(ED_SEL_05.Text)>25)
                    OR (STRtoINT(ED_SEL_06.Text)=0) OR (STRtoINT(ED_SEL_06.Text)>25) THEN
                BEGIN
                    SHOWMESSAGE ('NUMERO(S) INV�LIDO(S)');
                    ED_SEL_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(ED_SEL_02.Text)<=STRtoINT(ED_SEL_01.Text) ) OR ( STRtoINT(ED_SEL_03.Text)<=STRtoINT(ED_SEL_02.Text) ) OR ( STRtoINT(ED_SEL_04.Text)<=STRtoINT(ED_SEL_03.Text) ) THEN
                BEGIN
                    SHOWMESSAGE ('O PREENCHIMENTO NUM�RICO DEVE SER EM ORDEM CRESCENTE.');
                    ED_SEL_01.SetFocus;
                    EXIT;
                END;
                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTAR,0]) = STRtoINT(ED_SEL_01.Text) ) THEN
                BEGIN
                    FOR VI_CONTARSEL2:= VI_CONTAR TO 15 DO
                    BEGIN
                        IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL2,0]) = STRtoINT(ED_SEL_02.Text) )
                        THEN
                            FOR VI_CONTARSEL3:= VI_CONTARSEL2 TO 15 DO
                            BEGIN
                                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL3,0]) = STRtoINT(ED_SEL_03.Text) )
                                THEN
                                    FOR VI_CONTARSEL4:= VI_CONTARSEL3 TO 15 DO
                                    BEGIN
                                        IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL4,0]) = STRtoINT(ED_SEL_04.Text) )
                                        THEN
                                            FOR VI_CONTARSEL5:= VI_CONTARSEL3 TO 15 DO
                                            BEGIN
                                                IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL5,0]) = STRtoINT(ED_SEL_05.Text) )
                                                THEN
                                                    FOR VI_CONTARSEL6:= VI_CONTARSEL3 TO 15 DO
                                                    BEGIN
                                                        IF ( STRtoINT(STGR_COMBINACOES_15V.Cells [VI_CONTARSEL6,0]) = STRtoINT(ED_SEL_06.Text) )
                                                        THEN STGR_COMBINACOES_15V.Cells [16,0] := 'V';
                                                    END; // FOR VI_CONTARSEL6
                                            END; // FOR VI_CONTARSEL5
                                    END; // FOR VI_CONTARSEL4
                            end; // FOR VI_CONTARSEL3
                    END;// FOR VI_CONTARSEL2
                END; //IF ( STRtoINT(STGR_COMBINACOES_15V.Cells

            END; // IF (CB_QTD_SEL
        END; // FOR VI_CONTAR

        STGR_COMBINACOES_15E.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
        IF (STGR_COMBINACOES_15V.Cells [16,0] = 'V') THEN
        BEGIN
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
                STGR_COMBINACOES_15E.Cells [VI_CONTAR, VI_LINHAS2] :=  STGR_COMBINACOES_15V.Cells [VI_CONTAR,0];
            END; // FOR VI_CONTAR
            VI_LINHAS2 := VI_LINHAS2 +1;
            STGR_COMBINACOES_15E.RowCount := VI_LINHAS2;
        END; // IF IF (STGR_COMBINACOES_15V
        LA_SEL_PERC.Caption:=   INTtoSTR(TRUNC(VI_AN_COMB1  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %  ';
        LA_SEL_PERC.Repaint;
    END; // FOR VI_AN_COMB1 := 0
    SHOWMESSAGE ('OK');
    BBT_ENCERRAR_SEL.Enabled:= TRUE;
end;

procedure TForm1.BBT_ENCERRAR_SELClick(Sender: TObject);
VAR
    VI_AN_COMB1, VI_CONTAR : INTEGER;
begin
    STGR_COMBINACOES_15V.Repaint;
    STGR_COMBINACOES_15E.Repaint;
    STGR_COMBINACOES_15.RowCount := 0;
    FOR VI_AN_COMB1 :=0 TO (STGR_COMBINACOES_15E.RowCount) DO
    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
           STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_AN_COMB1] := STGR_COMBINACOES_15E.Cells [VI_CONTAR,VI_AN_COMB1];
           STGR_COMBINACOES_15.RowCount := VI_AN_COMB1;
        END;
    END;
    STGR_COMBINACOES_15.Repaint;
    GB_SEL.Enabled := FALSE;
    SHOWMESSAGE ('OK');
    RB_SIM_MODELO_01.Checked := TRUE;    
    //BBT_EXEC_SOMA15.Enabled := TRUE;
end;

procedure TForm1.BBT_EXEC_SOMA15Click(Sender: TObject);
VAR
    VI_AN_COMB1, VI_CONTAR, VI_LINHAS, VI_SOMAR : INTEGER;
begin
    TRY
        F_GRIDS2.Release;
    EXCEPT
        //
    END;
    TRY
        Application.CreateForm(TF_GRIDS2, F_GRIDS2);
    EXCEPT
        //
    END;
    
    STGR_COMBINACOES_15E.RowCount := 0;
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
                STGR_COMBINACOES_15E.Cells [VI_CONTAR, 0] :=  '0' ;
            END; // FOR VI_CONTAR
    STGR_COMBINACOES_15E.Repaint;
    VI_LINHAS :=0;
    VI_LINHAS :=0;
    IF (STRtoINT(ED_SOMA_15_2.Text) < STRtoINT(ED_SOMA_15.Text) ) THEN
    BEGIN
        	SHOWMESSAGE ('Valores final maior que o valor inicial, favor verificar.');
            ED_SOMA_15.SetFocus;
        	EXIT;
    END;
    FOR VI_AN_COMB1 := 0 TO (STGR_COMBINACOES_15.RowCount)-1 DO
    BEGIN
        IF (TRIM(STGR_COMBINACOES_15.Cells[0,VI_AN_COMB1])='') THEN
        BEGIN
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
                STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_AN_COMB1]:='0';
            END; // FOR VI_CONTAR
        END;    
        VI_SOMAR := 0;
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
             VI_SOMAR := VI_SOMAR + STRtoINT (STGR_COMBINACOES_15.Cells[VI_CONTAR, VI_AN_COMB1]);
        END; // FOR VI_CONTAR
        IF (VI_SOMAR >= STRtoINT (ED_SOMA_15.Text)) AND (VI_SOMAR <= STRtoINT (ED_SOMA_15_2.Text)) THEN
        BEGIN
            STGR_COMBINACOES_15E.Cells[0,VI_LINHAS] := INTtoSTR(VI_LINHAS);
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
                STGR_COMBINACOES_15E.Cells [VI_CONTAR, VI_LINHAS] :=  RIGHTSTR('0'+(STGR_COMBINACOES_15.Cells [VI_CONTAR, VI_AN_COMB1]),2 );
            END; // FOR VI_CONTAR
            STGR_COMBINACOES_15E.RowCount := VI_LINHAS;
            VI_LINHAS := VI_LINHAS +1;
        END; // IF (VI_SOMAR
    END; // FOR VI_AN_COMB1
    STGR_COMBINACOES_15E.Repaint;
    BBT_ENCERRAR_SOMA15.Enabled := TRUE;
end;

procedure TForm1.BBT_ENCERRAR_SOMA15Click(Sender: TObject);
VAR
    VI_AN_COMB1, VI_CONTAR : INTEGER;
    VC_COMBINACOES : string;
begin
    STGR_COMBINACOES_15V.Repaint;
    STGR_COMBINACOES_15E.Repaint;
    STGR_COMBINACOES_15.RowCount := 0;
    FOR VI_AN_COMB1 :=0 TO (STGR_COMBINACOES_15E.RowCount) DO
    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
           STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_AN_COMB1] := STGR_COMBINACOES_15E.Cells [VI_CONTAR,VI_AN_COMB1];
           STGR_COMBINACOES_15.RowCount := VI_AN_COMB1;
        END;
    END;
    STGR_COMBINACOES_15.Repaint;
    //GB_SOMA15.Enabled := FALSE;

    {
    MEM_COMBINACOES_TODAS.Clear;
   	MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + INTtoSTR(STGR_COMBINACOES_15.RowCount-1)) ;
   	MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
    FOR VI_CONTAR := 0 TO STGR_COMBINACOES_15.RowCount-1 DO
    BEGIN
		VC_COMBINACOES :='';
    	FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15.Cells[VI_AN_COMB1,VI_CONTAR] +'  ';
        END; // FOR VI_AN_COMB1
       	MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    winExec('Notepad.exe C:\COMBINACOES_15_TODAS_VERIFICADAS.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
   showmessage('REFINAR COMPLETADO' +#13+#13+ 'PROCESSAMENTO ENCERRADO');
   }
    SHOWMESSAGE ('OK');
    RB_SIM_MODELO_01.Checked := TRUE;    
end;

procedure TForm1.CB_SOMA_01Change(Sender: TObject);
begin
    IF (CB_SOMA_01.ItemIndex = 0) THEN
    BEGIN
        ED_SOMA_01.Text :='155';
        ED_SOMA_11.Text :='0';
        ED_SOMA_21.Text :='0';
        ED_SOMA_31.Text :='0';
        ED_SOMA_41.Text :='0';
        ED_SOMA_51.Text :='0';
        ED_SOMA_11.Enabled := false;
        ED_SOMA_21.Enabled := false;
        ED_SOMA_31.Enabled := false;
        ED_SOMA_41.Enabled := false;
        ED_SOMA_51.Enabled := false;
    END ELSE
    IF (CB_SOMA_01.ItemIndex = 1) THEN
    BEGIN
        ED_SOMA_01.Text :='155';
        ED_SOMA_11.Text :='157';
        ED_SOMA_21.Text :='0';
        ED_SOMA_31.Text :='0';
        ED_SOMA_41.Text :='0';
        ED_SOMA_51.Text :='0';
        ED_SOMA_11.Enabled := TRUE;
        ED_SOMA_21.Enabled := false;
        ED_SOMA_31.Enabled := false;
        ED_SOMA_41.Enabled := false;
        ED_SOMA_51.Enabled := false;
    END ELSE
    IF (CB_SOMA_01.ItemIndex = 2) THEN
    BEGIN
        ED_SOMA_01.Text :='153';
        ED_SOMA_11.Text :='155';
        ED_SOMA_21.Text :='157';
        ED_SOMA_31.Text :='159';
        ED_SOMA_41.Text :='0';
        ED_SOMA_51.Text :='0';
        ED_SOMA_11.Enabled := TRUE;
        ED_SOMA_21.Enabled := TRUE;
        ED_SOMA_31.Enabled := TRUE;
        ED_SOMA_41.Enabled := false;
        ED_SOMA_51.Enabled := false;
    END ELSE
    IF (CB_SOMA_01.ItemIndex = 3) THEN
    BEGIN
        IF (RB_SIMULAR_NA_MEMORIA.Checked) THEN
        BEGIN
            SHOWMESSAGE ('ESSA SIMULA��O S� � POSS�VEL EM DISCO');
            EXIT;
        END;    
        ED_SOMA_01.Text :='151';
        ED_SOMA_11.Text :='153';
        ED_SOMA_21.Text :='155';
        ED_SOMA_31.Text :='157';
        ED_SOMA_41.Text :='159';
        ED_SOMA_51.Text :='161';
        ED_SOMA_11.Enabled := TRUE;
        ED_SOMA_21.Enabled := TRUE;
        ED_SOMA_31.Enabled := TRUE;
        ED_SOMA_41.Enabled := TRUE;
        ED_SOMA_51.Enabled := TRUE;
    END ;
end;





procedure TForm1.CB_SOMA_02Change(Sender: TObject);
begin
    IF (CB_SOMA_02.ItemIndex = 0) THEN
    BEGIN
        ED_SOMA_02.Text :='0';
        ED_SOMA_12.Text :='0';
        ED_SOMA_22.Text :='0';
        ED_SOMA_32.Text :='0';
        ED_SOMA_42.Text :='0';
        ED_SOMA_12.Enabled := false;
        ED_SOMA_22.Enabled := false;
        ED_SOMA_32.Enabled := false;
        ED_SOMA_42.Enabled := false;
    END ELSE
    IF (CB_SOMA_02.ItemIndex = 1) THEN
    BEGIN
        ED_SOMA_02.Text :='104';
        ED_SOMA_12.Text :='108';
        ED_SOMA_22.Text :='0';
        ED_SOMA_32.Text :='0';
        ED_SOMA_42.Text :='0';
        ED_SOMA_12.Enabled := TRUE;
        ED_SOMA_22.Enabled := false;
        ED_SOMA_32.Enabled := false;
        ED_SOMA_42.Enabled := false;
    END ELSE
    IF (CB_SOMA_02.ItemIndex = 2) THEN
    BEGIN
        ED_SOMA_02.Text :='102';
        ED_SOMA_12.Text :='104';
        ED_SOMA_22.Text :='106';
        ED_SOMA_32.Text :='0';
        ED_SOMA_42.Text :='0';
        ED_SOMA_12.Enabled := TRUE;
        ED_SOMA_22.Enabled := TRUE;
        ED_SOMA_32.Enabled := false;
        ED_SOMA_42.Enabled := false;
    END ELSE
    IF (CB_SOMA_02.ItemIndex = 3) THEN
    BEGIN
        IF (RB_SIMULAR_NA_MEMORIA.Checked) THEN
        BEGIN
            SHOWMESSAGE ('ESSA SIMULA��O S� � POSS�VEL EM DISCO');
            EXIT;
        END;
        ED_SOMA_02.Text :='100';
        ED_SOMA_12.Text :='102';
        ED_SOMA_22.Text :='104';
        ED_SOMA_32.Text :='106';
        ED_SOMA_42.Text :='108';
        ED_SOMA_12.Enabled := TRUE;
        ED_SOMA_22.Enabled := TRUE;
        ED_SOMA_32.Enabled := TRUE;
        ED_SOMA_42.Enabled := TRUE;
    END ;
end;



procedure TForm1.RB_SIM_MODELO_01Click(Sender: TObject);
begin
    RB_SIM_MODELO_01.Checked := TRUE;
    RB_SIM_FILTRO_01.Checked := false;
    RB_SIM_MODELO_02.Checked := false;
    RB_SIM_MODELO_03.Checked := false;
    RB_SIM_MODELO_04.Checked := false;
    RB_SIM_MODELO_05.Checked := false;    
    PA_PANS01.Left := 1 ;
    PA_PANS01.Top  := 96;
//    BBT_PAN01_ZERAR.Click;
    PA_PAN01.Top :=  1100 ;
    PA_PAN02.Left := 1100 ;
    PA_PAN03.Top  := 1100;
    PA_PAN01_MATRIZ01.Top := 1100;
    PA_PAN05.Top  := 1100;
    SELF.Repaint;
    LA_QTD_RESULTADO.Caption := INTtoSTR(STGR_COMBINACOES_15.RowCount);
    LA_QTD_RESULTADO.Repaint;    
end;

procedure TForm1.RB_SIM_FILTRO_01Click(Sender: TObject);
begin
    RB_SIM_MODELO_01.Checked := false;
    RB_SIM_FILTRO_01.Checked := TRUE;
    RB_SIM_MODELO_02.Checked := false;
    RB_SIM_MODELO_03.Checked := false;
    RB_SIM_MODELO_04.Checked := false;
    RB_SIM_MODELO_05.Checked := false;
    PA_PAN01.Left := 1 ;
    PA_PAN01.Top  := 96;
//    BBT_PAN01_ZERAR.Click;
    PA_PANS01.Top :=  1100 ;
    PA_PAN02.Left := 1100 ;
    PA_PAN03.Top  := 1100;
    PA_PAN01_MATRIZ01.Top := 1100;
    PA_PAN05.Top  := 1100;
    PA_PAN01.Repaint;
    SELF.Repaint;
end;

procedure TForm1.Label11Click(Sender: TObject);
begin
    RB_SIM_MODELO_01.Checked := false;
    RB_SIM_FILTRO_01.Checked := false;
    RB_SIM_MODELO_02.Checked := TRUE;
    RB_SIM_MODELO_03.Checked := false;
    RB_SIM_MODELO_04.Checked := false;
    RB_SIM_MODELO_05.Checked := false;
    PA_PAN02.Left := 1 ;
    PA_PAN02.Top  := 96;
  //  BBT_PAN02_ZERAR.Click;
    PA_PANS01.Left := 1100 ;
    PA_PAN01.Top :=  1100 ;
    PA_PAN03.Top  := 1100;
    PA_PAN01_MATRIZ01.Top := 1100;
    PA_PAN05.Top  := 1100;
    SELF.Repaint;
end;

procedure TForm1.RB_SIM_MODELO_03Click(Sender: TObject);
begin
    RB_SIM_MODELO_01.Checked := false;
    RB_SIM_FILTRO_01.Checked := false;
    RB_SIM_MODELO_02.Checked := false;
    RB_SIM_MODELO_03.Checked := TRUE;
    RB_SIM_MODELO_04.Checked := false;
    RB_SIM_MODELO_05.Checked := false;
    PA_PAN03.Left := 1 ;
    PA_PAN03.Top  := 96;
    PA_PAN03.Repaint;
  //  BBT_PAN03_ZERAR.Click;
    PA_PANS01.Left := 1100 ;
    PA_PAN01.Top :=  1100 ;
    PA_PAN02.Left := 1100 ;
    PA_PAN01_MATRIZ01.Top := 1100;
    PA_PAN05.Top  := 1100;
    SELF.Repaint;
end;


procedure TForm1.RB_SIM_MODELO_04Click(Sender: TObject);
begin
    RB_SIM_MODELO_01.Checked := false;
    RB_SIM_FILTRO_01.Checked := false;
    RB_SIM_MODELO_02.Checked := false;
    RB_SIM_MODELO_03.Checked := false;
    RB_SIM_MODELO_04.Checked := TRUE;
    RB_SIM_MODELO_05.Checked := false;
    PA_PAN01_MATRIZ01.Top := 1100;
    PA_PAN01_MATRIZ01.Left := 1 ;
    PA_PAN01_MATRIZ01.Top  := 96;
    PA_PAN03.Repaint;
  //  BBT_PAN03_ZERAR.Click;
    PA_PANS01.Left := 1100 ;
    PA_PAN01.Top :=  1100 ;
    PA_PAN02.Left := 1100 ;
    PA_PAN03.Top  := 1100;
    PA_PAN05.Top  := 1100;
    SELF.Repaint;
end;


procedure TForm1.RB_SIM_MODELO_05Click(Sender: TObject);
begin
    RB_SIM_MODELO_01.Checked := false;
    RB_SIM_FILTRO_01.Checked := false;
    RB_SIM_MODELO_02.Checked := false;
    RB_SIM_MODELO_03.Checked := false;
    RB_SIM_MODELO_04.Checked := false;
    RB_SIM_MODELO_05.Checked := TRUE;
    PA_PAN05.Left := 1 ;
    PA_PAN05.Top  := 96;
    PA_PAN05.Repaint;
  //  BBT_PAN03_ZERAR.Click;
    PA_PANS01.Left := 1100 ;
    PA_PAN01.Top :=  1100 ;
    PA_PAN02.Left := 1100 ;
    PA_PAN03.Top  := 1100;
    PA_PAN01_MATRIZ01.Top  := 1100;
    SELF.Repaint;
end;

procedure TForm1.BBT_PAN02_ZERARClick(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
    BBT_201.Visible := TRUE;
    BBT_202.Visible := TRUE;
    BBT_203.Visible := TRUE;
    BBT_204.Visible := TRUE;
    BBT_205.Visible := TRUE;
    BBT_206.Visible := TRUE;
    BBT_207.Visible := TRUE;
    BBT_208.Visible := TRUE;
    BBT_209.Visible := TRUE;
    BBT_210.Visible := TRUE;
    BBT_211.Visible := TRUE;
    BBT_212.Visible := TRUE;
    BBT_213.Visible := TRUE;
    BBT_214.Visible := TRUE;
    BBT_215.Visible := TRUE;
    BBT_216.Visible := TRUE;
    BBT_217.Visible := TRUE;
    BBT_218.Visible := TRUE;
    BBT_219.Visible := TRUE;
    BBT_220.Visible := TRUE;
    BBT_221.Visible := TRUE;
    BBT_222.Visible := TRUE;
    BBT_223.Visible := TRUE;
    BBT_224.Visible := TRUE;
    BBT_225.Visible := TRUE;

    FOR VI_CONTAR := 0 TO 16 DO
    BEGIN
        STGR_M02_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '0';
    END;
    FOR VI_CONTAR := 0 TO 10 DO
    BEGIN
        STGR_M02_SERIE2_INICIAL.Cells [VI_CONTAR,0] := '0';
    END;
    STGR_M02_SERIE1_07.RowCount := 0;
    STGR_M02_SERIE1_08.RowCount := 0;
    STGR_M02_SERIE1_09.RowCount := 0;
    STGR_M02_SERIE1_10.RowCount := 0;
    STGR_M02_SERIE1_11.RowCount := 0;
    STGR_M02_SERIE2_08.RowCount := 0;
    STGR_M02_SERIE2_07.RowCount := 0;
    STGR_M02_SERIE2_06.RowCount := 0;
    STGR_M02_SERIE2_05.RowCount := 0;
    STGR_M02_SERIE2_04.RowCount := 0;
    FOR VI_CONTAR := 0 TO 11 DO
    BEGIN
        STGR_M02_SERIE1_07.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE1_08.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE1_09.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE1_10.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE1_11.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE2_08.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE2_07.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE2_06.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE2_05.Cells [VI_CONTAR,0] := '0';
        STGR_M02_SERIE2_04.Cells [VI_CONTAR,0] := '0';
    END;
    STGR_COMBINACOES_15M2.RowCount :=0;
    FOR VI_CONTAR := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
end;


procedure TForm1.BBT_PAN03_ZERARClick(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
    BBT_301.Visible := TRUE;
    BBT_302.Visible := TRUE;
    BBT_303.Visible := TRUE;
    BBT_304.Visible := TRUE;
    BBT_305.Visible := TRUE;
    BBT_306.Visible := TRUE;
    BBT_307.Visible := TRUE;
    BBT_308.Visible := TRUE;
    BBT_309.Visible := TRUE;
    BBT_310.Visible := TRUE;
    BBT_311.Visible := TRUE;
    BBT_312.Visible := TRUE;
    BBT_313.Visible := TRUE;
    BBT_314.Visible := TRUE;
    BBT_315.Visible := TRUE;
    BBT_316.Visible := TRUE;
    BBT_317.Visible := TRUE;
    BBT_318.Visible := TRUE;
    BBT_319.Visible := TRUE;
    BBT_320.Visible := TRUE;
    BBT_321.Visible := TRUE;
    BBT_322.Visible := TRUE;
    BBT_323.Visible := TRUE;
    BBT_324.Visible := TRUE;
    BBT_325.Visible := TRUE;

    FOR VI_CONTAR := 0 TO 10 DO
    BEGIN
        STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR,0] := '0';
    END;
    FOR VI_CONTAR := 0 TO 5 DO
    BEGIN
        STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR,0] := '0';
    END;

    STGR_M03_SERIE1_04.RowCount := 0;
    STGR_M03_SERIE1_05.RowCount := 0;
    STGR_M03_SERIE1_06.RowCount := 0;
    STGR_M03_SERIE1_07.RowCount := 0;
    STGR_M03_SERIE1_08.RowCount := 0;
    STGR_M03_SERIE2_04.RowCount := 0;
    STGR_M03_SERIE2_05.RowCount := 0;
    STGR_M03_SERIE2_06.RowCount := 0;
    STGR_M03_SERIE2_07.RowCount := 0;
    STGR_M03_SERIE2_08.RowCount := 0;
    STGR_M03_SERIE3_02.RowCount := 0;
    STGR_M03_SERIE3_03.RowCount := 0;
    STGR_M03_SERIE3_04.RowCount := 0;
    FOR VI_CONTAR := 0 TO 11 DO
    BEGIN
        STGR_M03_SERIE1_04.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE1_05.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE1_06.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE1_07.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE1_08.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE2_04.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE2_05.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE2_06.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE2_07.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE2_08.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE3_02.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE3_03.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE3_04.Cells [VI_CONTAR,0] := '0';
    END;
        STGR_COMBINACOES_15M31.RowCount :=0;
        STGR_COMBINACOES_15M32.RowCount :=0;
        STGR_COMBINACOES_15M33.RowCount :=0;
        STGR_COMBINACOES_15M34.RowCount :=0;
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            STGR_COMBINACOES_15M31.Cells [VI_CONTAR, 0] :=  '0' ;
            STGR_COMBINACOES_15M32.Cells [VI_CONTAR, 0] :=  '0' ;
            STGR_COMBINACOES_15M33.Cells [VI_CONTAR, 0] :=  '0' ;
            STGR_COMBINACOES_15M34.Cells [VI_CONTAR, 0] :=  '0' ;
        END; // FOR VI_CONTADOR
        STGR_COMBINACOES_15M31.Repaint;
        STGR_COMBINACOES_15M32.Repaint;
        STGR_COMBINACOES_15M33.Repaint;
        STGR_COMBINACOES_15M34.Repaint;    
end;



procedure TForm1.BBT_PAN03_GERARClick(Sender: TObject);
VAR
    VI_CONTAR, VI_LINHAS  : INTEGER;
    VI_AN_COMB1, VI_AN_COMB2, VI_AN_COMB3, VI_AN_COMB4, VI_AN_COMB5, VI_AN_COMB6, VI_AN_COMB7, VI_AN_COMB8, VI_AN_COMB9 : INTEGER;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 1 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 3 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 4 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 5 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 6 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 7 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 8 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 9 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 10 DO
                                BEGIN
                                    STGR_M03_SERIE1_08.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                    STGR_M03_SERIE1_08.Cells [1,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                    STGR_M03_SERIE1_08.Cells [2,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                    STGR_M03_SERIE1_08.Cells [3,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                    STGR_M03_SERIE1_08.Cells [4,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                    STGR_M03_SERIE1_08.Cells [5,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                    STGR_M03_SERIE1_08.Cells [6,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                    STGR_M03_SERIE1_08.Cells [7,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                    STGR_M03_SERIE1_08.Cells [8,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB8,0] ;
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_M03_SERIE1_08.RowCount := VI_LINHAS;
                                END; //  FOR VI_AN_COMB8
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE1_08.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE1_08.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 2 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 4 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 5 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 6 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 7 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 8 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 9 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 10 DO
                            BEGIN
                                STGR_M03_SERIE1_07.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                STGR_M03_SERIE1_07.Cells [1,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                STGR_M03_SERIE1_07.Cells [2,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                STGR_M03_SERIE1_07.Cells [3,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                STGR_M03_SERIE1_07.Cells [4,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                STGR_M03_SERIE1_07.Cells [5,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                STGR_M03_SERIE1_07.Cells [6,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                STGR_M03_SERIE1_07.Cells [7,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                VI_LINHAS := VI_LINHAS + 1;
                                STGR_M03_SERIE1_07.RowCount := VI_LINHAS;
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE1_07.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE1_07.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 3 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 5 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 6 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 7 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 8 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 9 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 10 DO
                        BEGIN
                            STGR_M03_SERIE1_06.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                            STGR_M03_SERIE1_06.Cells [1,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                            STGR_M03_SERIE1_06.Cells [2,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                            STGR_M03_SERIE1_06.Cells [3,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                            STGR_M03_SERIE1_06.Cells [4,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                            STGR_M03_SERIE1_06.Cells [5,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                            STGR_M03_SERIE1_06.Cells [6,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_M03_SERIE1_06.RowCount := VI_LINHAS;
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE1_06.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE1_06.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 4 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 6 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 7 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 8 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 9 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 10 DO
                    BEGIN
                        STGR_M03_SERIE1_05.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                        STGR_M03_SERIE1_05.Cells [1,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                        STGR_M03_SERIE1_05.Cells [2,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                        STGR_M03_SERIE1_05.Cells [3,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                        STGR_M03_SERIE1_05.Cells [4,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                        STGR_M03_SERIE1_05.Cells [5,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                        VI_LINHAS := VI_LINHAS + 1;
                        STGR_M03_SERIE1_05.RowCount := VI_LINHAS;
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE1_05.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE1_05.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 5 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 7 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 8 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 9 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 10 DO
                BEGIN
                        STGR_M03_SERIE1_04.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                        STGR_M03_SERIE1_04.Cells [1,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                        STGR_M03_SERIE1_04.Cells [2,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                        STGR_M03_SERIE1_04.Cells [3,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                        STGR_M03_SERIE1_04.Cells [4,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                        VI_LINHAS := VI_LINHAS + 1;
                        STGR_M03_SERIE1_04.RowCount := VI_LINHAS;
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE1_04.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE1_04.Repaint;



    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 1 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 3 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 4 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 5 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 6 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 7 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 8 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 9 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 10 DO
                                BEGIN
                                    STGR_M03_SERIE2_08.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                    STGR_M03_SERIE2_08.Cells [1,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                                    STGR_M03_SERIE2_08.Cells [2,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                                    STGR_M03_SERIE2_08.Cells [3,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                                    STGR_M03_SERIE2_08.Cells [4,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                                    STGR_M03_SERIE2_08.Cells [5,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                                    STGR_M03_SERIE2_08.Cells [6,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB6,0] ;
                                    STGR_M03_SERIE2_08.Cells [7,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB7,0] ;
                                    STGR_M03_SERIE2_08.Cells [8,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB8,0] ;
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_M03_SERIE2_08.RowCount := VI_LINHAS;
                                END; //  FOR VI_AN_COMB8
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE2_08.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE2_08.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 2 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 4 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 5 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 6 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 7 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 8 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 9 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 10 DO
                            BEGIN
                                STGR_M03_SERIE2_07.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                STGR_M03_SERIE2_07.Cells [1,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                                STGR_M03_SERIE2_07.Cells [2,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                                STGR_M03_SERIE2_07.Cells [3,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                                STGR_M03_SERIE2_07.Cells [4,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                                STGR_M03_SERIE2_07.Cells [5,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                                STGR_M03_SERIE2_07.Cells [6,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB6,0] ;
                                STGR_M03_SERIE2_07.Cells [7,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB7,0] ;
                                VI_LINHAS := VI_LINHAS + 1;
                                STGR_M03_SERIE2_07.RowCount := VI_LINHAS;
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE2_07.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE2_07.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 3 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 5 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 6 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 7 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 8 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 9 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 10 DO
                        BEGIN
                            STGR_M03_SERIE2_06.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                            STGR_M03_SERIE2_06.Cells [1,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                            STGR_M03_SERIE2_06.Cells [2,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                            STGR_M03_SERIE2_06.Cells [3,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                            STGR_M03_SERIE2_06.Cells [4,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                            STGR_M03_SERIE2_06.Cells [5,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                            STGR_M03_SERIE2_06.Cells [6,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB6,0] ;
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_M03_SERIE2_06.RowCount := VI_LINHAS;
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE2_06.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE2_06.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 4 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 6 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 7 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 8 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 9 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 10 DO
                    BEGIN
                        STGR_M03_SERIE2_05.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                        STGR_M03_SERIE2_05.Cells [1,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                        STGR_M03_SERIE2_05.Cells [2,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                        STGR_M03_SERIE2_05.Cells [3,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                        STGR_M03_SERIE2_05.Cells [4,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                        STGR_M03_SERIE2_05.Cells [5,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                        VI_LINHAS := VI_LINHAS + 1;
                        STGR_M03_SERIE2_05.RowCount := VI_LINHAS;
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE2_05.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE2_05.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 5 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 7 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 8 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 9 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 10 DO
                BEGIN
                        STGR_M03_SERIE2_04.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                        STGR_M03_SERIE2_04.Cells [1,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                        STGR_M03_SERIE2_04.Cells [2,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                        STGR_M03_SERIE2_04.Cells [3,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                        STGR_M03_SERIE2_04.Cells [4,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                        VI_LINHAS := VI_LINHAS + 1;
                        STGR_M03_SERIE2_04.RowCount := VI_LINHAS;
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE2_04.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE2_04.Repaint;




    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 1 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 2 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 3 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 4 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 5 DO
                BEGIN
                        STGR_M03_SERIE3_04.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                        STGR_M03_SERIE3_04.Cells [1,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB1,0] ;
                        STGR_M03_SERIE3_04.Cells [2,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB2,0] ;
                        STGR_M03_SERIE3_04.Cells [3,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB3,0] ;
                        STGR_M03_SERIE3_04.Cells [4,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB4,0] ;
                        VI_LINHAS := VI_LINHAS + 1;
                        STGR_M03_SERIE3_04.RowCount := VI_LINHAS;
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE3_04.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE3_04.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 2 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 3 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 4 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 5 DO
            BEGIN
                STGR_M03_SERIE3_03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                STGR_M03_SERIE3_03.Cells [1,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB1,0] ;
                STGR_M03_SERIE3_03.Cells [2,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB2,0] ;
                STGR_M03_SERIE3_03.Cells [3,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB3,0] ;
                VI_LINHAS := VI_LINHAS + 1;
                STGR_M03_SERIE3_03.RowCount := VI_LINHAS;
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE3_03.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE3_03.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	S�RIE 3 - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 4 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 5 DO
        BEGIN
                STGR_M03_SERIE3_02.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                STGR_M03_SERIE3_02.Cells [1,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB1,0] ;
                STGR_M03_SERIE3_02.Cells [2,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB2,0] ;
                VI_LINHAS := VI_LINHAS + 1;
                STGR_M03_SERIE3_02.RowCount := VI_LINHAS;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE3_02.Repaint;
end;





procedure TForm1.BBT_PAN02_GERARClick(Sender: TObject);
VAR
    VI_CONTAR, VI_LINHAS  : INTEGER;
    VI_AN_COMB1, VI_AN_COMB2, VI_AN_COMB3, VI_AN_COMB4, VI_AN_COMB5, VI_AN_COMB6, VI_AN_COMB7, VI_AN_COMB8,
        VI_AN_COMB9,VI_AN_COMBa, VI_AN_COMBb : INTEGER;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA- AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // ******************************
    	// ** S�rie 1 c/ 9 combina��es **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 7 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 8 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 9 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 10 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 11 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 12 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 13 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 14 DO
                                BEGIN
                                    FOR VI_AN_COMB9 :=VI_AN_COMB8+1 TO 15 DO
                                    BEGIN
                                        STGR_M02_SERIE1_09.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                        STGR_M02_SERIE1_09.Cells [1,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                        STGR_M02_SERIE1_09.Cells [2,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                        STGR_M02_SERIE1_09.Cells [3,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                        STGR_M02_SERIE1_09.Cells [4,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                        STGR_M02_SERIE1_09.Cells [5,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                        STGR_M02_SERIE1_09.Cells [6,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                        STGR_M02_SERIE1_09.Cells [7,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                        STGR_M02_SERIE1_09.Cells [8,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB8,0] ;
                                        STGR_M02_SERIE1_09.Cells [9,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB9,0] ;
                                        VI_LINHAS := VI_LINHAS + 1;
                                        STGR_M02_SERIE1_09.RowCount := VI_LINHAS;
                                    END; // FOR VI_AN_COMB9
                                END; //  FOR VI_AN_COMB8
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE1_09.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE1_09.Repaint;

        // ******************************
    	// ** S�rie 1 c/ 6 combina��es **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 5 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 6 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 7 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 8 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 9 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 10 DO
                        BEGIN
                            STGR_M02_SERIE2_06.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                            STGR_M02_SERIE2_06.Cells [1,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                            STGR_M02_SERIE2_06.Cells [2,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                            STGR_M02_SERIE2_06.Cells [3,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                            STGR_M02_SERIE2_06.Cells [4,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                            STGR_M02_SERIE2_06.Cells [5,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                            STGR_M02_SERIE2_06.Cells [6,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB6,0] ;
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_M02_SERIE2_06.RowCount := VI_LINHAS;
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE2_06.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE2_06.Repaint;

    // =================================================
    // ||||=========================================||||
    // |||| 	SEGUNDA  - AN�LISES COMBINAT�RIAS   ||||
    // ||||=========================================||||
    // =================================================
        // ******************************
    	// ** S�rie 1 c/ 8 combina��es **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 8 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 9 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 10 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 11 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 12 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 13 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 14 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 15 DO
                                BEGIN
                                        STGR_M02_SERIE1_08.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                        STGR_M02_SERIE1_08.Cells [1,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                        STGR_M02_SERIE1_08.Cells [2,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                        STGR_M02_SERIE1_08.Cells [3,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                        STGR_M02_SERIE1_08.Cells [4,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                        STGR_M02_SERIE1_08.Cells [5,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                        STGR_M02_SERIE1_08.Cells [6,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                        STGR_M02_SERIE1_08.Cells [7,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                        STGR_M02_SERIE1_08.Cells [8,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB8,0] ;
                                        VI_LINHAS := VI_LINHAS + 1;
                                        STGR_M02_SERIE1_08.RowCount := VI_LINHAS;
                                END; //  FOR VI_AN_COMB8
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE1_08.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE1_08.Repaint;

        // ******************************
    	// ** S�rie 2 c/ 7 combina��es **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 4 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 5 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 6 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 7 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 8 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 9 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 10 DO
                            BEGIN
                                STGR_M02_SERIE2_07.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                STGR_M02_SERIE2_07.Cells [1,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                                STGR_M02_SERIE2_07.Cells [2,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                                STGR_M02_SERIE2_07.Cells [3,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                                STGR_M02_SERIE2_07.Cells [4,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                                STGR_M02_SERIE2_07.Cells [5,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                                STGR_M02_SERIE2_07.Cells [6,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB6,0] ;
                                STGR_M02_SERIE2_07.Cells [7,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB7,0] ;
                                VI_LINHAS := VI_LINHAS + 1;
                                STGR_M02_SERIE2_07.RowCount := VI_LINHAS;
                            END; // FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE2_07.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE2_07.Repaint;

    // =================================================
    // ||||=========================================||||
    // |||| 	TERCEIRA - AN�LISES COMBINAT�RIAS   ||||
    // ||||=========================================||||
    // =================================================
        // ******************************
    	// ** S�rie 1 c/ 10 combina��es **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 6 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 7 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 8 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 9 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 10 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 11 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 12 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 13 DO
                                BEGIN
                                    FOR VI_AN_COMB9 :=VI_AN_COMB8+1 TO 14 DO
                                    BEGIN
                                        FOR VI_AN_COMBa :=VI_AN_COMB9+1 TO 15 DO
                                        BEGIN
                                            STGR_M02_SERIE1_10.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                            STGR_M02_SERIE1_10.Cells [1,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                            STGR_M02_SERIE1_10.Cells [2,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                            STGR_M02_SERIE1_10.Cells [3,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                            STGR_M02_SERIE1_10.Cells [4,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                            STGR_M02_SERIE1_10.Cells [5,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                            STGR_M02_SERIE1_10.Cells [6,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                            STGR_M02_SERIE1_10.Cells [7,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                            STGR_M02_SERIE1_10.Cells [8,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB8,0] ;
                                            STGR_M02_SERIE1_10.Cells [9,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB9,0] ;
                                            STGR_M02_SERIE1_10.Cells [10,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMBa,0] ;
                                            VI_LINHAS := VI_LINHAS + 1;
                                            STGR_M02_SERIE1_10.RowCount := VI_LINHAS;
                                        END; // FOR VI_AN_COMBa
                                    END; // FOR VI_AN_COMB9
                                END; //  FOR VI_AN_COMB8
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE1_10.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE1_10.Repaint;

        // ******************************
    	// ** S�rie 2 c/ 5 combina��es **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 6 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 7 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 8 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 9 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 10 DO
                    BEGIN
                                STGR_M02_SERIE2_05.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                STGR_M02_SERIE2_05.Cells [1,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                                STGR_M02_SERIE2_05.Cells [2,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                                STGR_M02_SERIE2_05.Cells [3,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                                STGR_M02_SERIE2_05.Cells [4,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                                STGR_M02_SERIE2_05.Cells [5,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                                VI_LINHAS := VI_LINHAS + 1;
                                STGR_M02_SERIE2_05.RowCount := VI_LINHAS;
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE2_05.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE2_05.Repaint;


    // =================================================
    // ||||=========================================||||
    // |||| 	QUARTA  -  AN�LISES COMBINAT�RIAS   ||||
    // ||||=========================================||||
    // =================================================
        // ******************************
    	// ** S�rie 1 c/ 7 combina��es **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 7 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 9 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 10 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 11 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 12 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 13 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 14 DO
                            BEGIN
                                    STGR_M02_SERIE1_07.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                    STGR_M02_SERIE1_07.Cells [1,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                    STGR_M02_SERIE1_07.Cells [2,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                    STGR_M02_SERIE1_07.Cells [3,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                    STGR_M02_SERIE1_07.Cells [4,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                    STGR_M02_SERIE1_07.Cells [5,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                    STGR_M02_SERIE1_07.Cells [6,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                    STGR_M02_SERIE1_07.Cells [7,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                    STGR_M02_SERIE1_07.Cells [8,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB8,0] ;
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_M02_SERIE1_07.RowCount := VI_LINHAS;
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE1_07.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE1_07.Repaint;

        // ******************************
    	// ** S�rie 2 c/ 8 combina��es **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 3 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 4 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 5 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 6 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 7 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 8 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 9 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 10 DO
                                BEGIN
                                    STGR_M02_SERIE2_08.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                    STGR_M02_SERIE2_08.Cells [1,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                                    STGR_M02_SERIE2_08.Cells [2,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                                    STGR_M02_SERIE2_08.Cells [3,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                                    STGR_M02_SERIE2_08.Cells [4,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                                    STGR_M02_SERIE2_08.Cells [5,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                                    STGR_M02_SERIE2_08.Cells [6,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB6,0] ;
                                    STGR_M02_SERIE2_08.Cells [7,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB7,0] ;
                                    STGR_M02_SERIE2_08.Cells [8,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB8,0] ;
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_M02_SERIE2_08.RowCount := VI_LINHAS;
                                END; // FOR VI_AN_COMB8
                            END; // FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE2_08.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
   STGR_M02_SERIE2_08.Repaint;

    // =================================================
    // ||||=========================================||||
    // |||| 	QUINTA  -  AN�LISES COMBINAT�RIAS   ||||
    // ||||=========================================||||
    // =================================================
        // ******************************
    	// ** S�rie 1 c/ 11 combina��es **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 5 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 6 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 7 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 8 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 9 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 10 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 11 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 12 DO
                                BEGIN
                                    FOR VI_AN_COMB9 :=VI_AN_COMB8+1 TO 13 DO
                                    BEGIN
                                        FOR VI_AN_COMBa :=VI_AN_COMB9+1 TO 14 DO
                                        BEGIN
                                            FOR VI_AN_COMBb :=VI_AN_COMBa+1 TO 15 DO
                                            BEGIN
                                                STGR_M02_SERIE1_11.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                                STGR_M02_SERIE1_11.Cells [1,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                                STGR_M02_SERIE1_11.Cells [2,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                                STGR_M02_SERIE1_11.Cells [3,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                                STGR_M02_SERIE1_11.Cells [4,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                                STGR_M02_SERIE1_11.Cells [5,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                                STGR_M02_SERIE1_11.Cells [6,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                                STGR_M02_SERIE1_11.Cells [7,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                                STGR_M02_SERIE1_11.Cells [8,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB8,0] ;
                                                STGR_M02_SERIE1_11.Cells [9,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMB9,0] ;
                                                STGR_M02_SERIE1_11.Cells [10,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMBa,0] ;
                                                STGR_M02_SERIE1_11.Cells [11,VI_LINHAS] := STGR_M02_SERIE1_INICIAL.Cells[VI_AN_COMBb,0] ;
                                                VI_LINHAS := VI_LINHAS + 1;
                                                STGR_M02_SERIE1_11.RowCount := VI_LINHAS;
                                            END; // FOR VI_AN_COMBb
                                        END; // FOR VI_AN_COMBa
                                    END; // FOR VI_AN_COMB9
                                END; //  FOR VI_AN_COMB8
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE1_11.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE1_11.Repaint;

        // ******************************
    	// ** S�rie 2 c/ 4 combina��es **
	    // ******************************
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 7 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 8 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 9 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 10 DO
                BEGIN
                    STGR_M02_SERIE2_04.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                    STGR_M02_SERIE2_04.Cells [1,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                    STGR_M02_SERIE2_04.Cells [2,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                    STGR_M02_SERIE2_04.Cells [3,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                    STGR_M02_SERIE2_04.Cells [4,VI_LINHAS] := STGR_M02_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                    VI_LINHAS := VI_LINHAS + 1;
                    STGR_M02_SERIE2_04.RowCount := VI_LINHAS;
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M02_SERIE2_04.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M02_SERIE2_04.Repaint;
end;


procedure TForm1.BBT_M02_ENCERRARClick(Sender: TObject);
VAR
    VI_AN_COMB1, VI_CONTAR : INTEGER;
begin
    STGR_COMBINACOES_15M2.Repaint;
    STGR_COMBINACOES_15.RowCount := 0;
    FOR VI_AN_COMB1 :=0 TO (STGR_COMBINACOES_15M2.RowCount ) DO
    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
           STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_AN_COMB1] := STGR_COMBINACOES_15M2.Cells [VI_CONTAR,VI_AN_COMB1];
           STGR_COMBINACOES_15.RowCount := VI_AN_COMB1;
        END;
    END;
    STGR_COMBINACOES_15.Repaint;
    SHOWMESSAGE ('OK');
    RB_SIM_MODELO_01.Checked := true;
    //BBT_EXECUTAR_SEL.Enabled := TRUE;
end;



procedure TForm1.BBT_M02_SIMULAR_AClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_A_.Click;

    {
    MEM_COMBINACOES_TODAS.Clear;
    MEM_COMBINACOES_TODAS.Lines.Add('9 6 - OK: ' + INTtoSTR(VI_LINHAS));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M2.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M2.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS_M03.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS_M03.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
}
    showmessage('PROCESSAMENTO EFETUADO');
end;


procedure TForm1.BBT_M02_SIMULAR_A_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
        // *********************************************
    	// ** S�rie 1 c/ 9 e S�rie 2 c/ 6 combina��es **
	    // *********************************************
    LA_TXT1.Caption := ' 9 X 6               ';
    LA_TXT2.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT3.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT2.Repaint;
    LA_TXT3.Repaint;
    if (STGR_COMBINACOES_15M2.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15M2.RowCount;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_09.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 9 DO
                BEGIN
                    IF (strTOint(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = strTOint(STGR_M02_SERIE1_09.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 9 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_06.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                            BEGIN
                                IF (strTOint(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = strTOint(STGR_M02_SERIE2_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE = 9)
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        LA_TXT3.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT3.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
end;



procedure TForm1.BBT_M02_SIMULAR_B_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VI_QTD1, VI_QTD2 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA- AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // *********************************************
    	// ** S�rie 1 c/ 8 e S�rie 2 c/ 7 combina��es **
	    // *********************************************
    LA_TXT1.Caption := ' 8 X 7               ';        
    LA_TXT2.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT3.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT2.Repaint;
    LA_TXT3.Repaint;
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    if (STGR_COMBINACOES_15M2.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15M2.RowCount;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_08.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M02_SERIE1_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_07.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M02_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE = 9)
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        VI_QTD1 := VI_LINHAS;
        LA_TXT2.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT2.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
end;


procedure TForm1.BBT_M02_SIMULAR_C_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VI_QTD1, VI_QTD2 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA- AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    LA_TXT1.Caption := ' 10 X 5               ';    
    LA_TXT2.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT3.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT2.Repaint;
    LA_TXT3.Repaint;
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    if (STGR_COMBINACOES_15M2.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15M2.RowCount;
        // *********************************************
    	// ** S�rie 1 c/ 10 e S�rie 2 c/ 5 combina��es **
	    // *********************************************
//    VI_LINHAS := 0;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_10.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M02_SERIE1_10.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 10 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_05.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M02_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        VI_QTD2 := VI_LINHAS;
        LA_TXT3.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT3.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
end;



procedure TForm1.BBT_M02_SIMULAR_JClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_B_.Click;
{
    MEM_COMBINACOES_TODAS.Clear;
    MEM_COMBINACOES_TODAS.Lines.Add('7 8 e 11 4 - OK: ' + INTtoSTR(VI_QTD1 + VI_QTD2));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M2.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M2.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS_M03.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS_M03.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
}
    showmessage('PROCESSAMENTO EFETUADO');
end;

procedure TForm1.BBT_M02_SIMULAR_J_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VI_QTD1, VI_QTD2 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA- AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // *********************************************
    	// ** S�rie 1 c/ 7 e S�rie 2 c/ 8 combina��es **
	    // *********************************************
    LA_TXT2.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT3.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT2.Repaint;
    LA_TXT3.Repaint;    
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    if (STGR_COMBINACOES_15M2.RowCount)= 0 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15M2.RowCount;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_07.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                BEGIN
                    IF (strTOint(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = strTOint(STGR_M02_SERIE1_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_08.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                            BEGIN
                                IF (strTOint( STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = strTOint(STGR_M02_SERIE2_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE = 9)
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        VI_QTD1 := VI_LINHAS;
        LA_TXT2.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT2.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0

        // *********************************************
    	// ** S�rie 1 c/ 11 e S�rie 2 c/ 4 combina��es **
	    // *********************************************
//    VI_LINHAS := 0;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_11.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 11 DO
                BEGIN
                    IF (strTOint( STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = strTOint(STGR_M02_SERIE1_11.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 11 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE1_11.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                            BEGIN
                                IF (strTOint( STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = strTOint(STGR_M02_SERIE2_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE 
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        VI_QTD2 := VI_LINHAS;
        LA_TXT3.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT3.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    SHOWMESSAGE('2 - B');
end;


procedure TForm1.BBT_M03_SIMULAR_CClick(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR3, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS : INTEGER;
    VI_QTD1, VI_QTD2, VI_QTD3, VI_QTD4, VI_CONTADOR, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA - AN�LISE COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        STGR_COMBINACOES_15M31.RowCount :=0;
        STGR_COMBINACOES_15M32.RowCount :=0;
        STGR_COMBINACOES_15M33.RowCount :=0;
        STGR_COMBINACOES_15M34.RowCount :=0;    
        FOR VI_CONTADOR := 1 TO 15 DO
        BEGIN
            STGR_COMBINACOES_15M31.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M32.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M33.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M34.Cells [VI_CONTADOR, 0] :=  '0' ;
        END; // FOR VI_CONTADOR
        STGR_COMBINACOES_15M31.Repaint;
        STGR_COMBINACOES_15M32.Repaint;
        STGR_COMBINACOES_15M33.Repaint;
        STGR_COMBINACOES_15M34.Repaint;
        PGBR_M02.Position := 0;
        PGBR_M02.Repaint;
        // ************************************************************
    	// ** S�rie 1 c/ 4 e S�rie 2 c/ 7 e s�rie 3 c/ 4 combina��es **
	    // ************************************************************
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    VI_QTD3 := 0;
    VI_QTD4 := 0;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';    
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '4 7 4               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 6 4               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 4 4               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    PA_PAN03.Refresh;
    LA_TXT11.Refresh;
    PA_PAN03.Repaint;
    LA_TXT21.Caption := 'ANALISANDO 4 7 4  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_04.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_07.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_04.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M31.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M31.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M31.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M31.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE = 7 )
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE = 4)
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M31.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    PGBR_M02.Position := 25;
    SLEEP(50);
    SELF.Repaint;


    // ================================================
    // ||||========================================||||
    // |||| 	SEGUNDA - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** S�rie 1 c/ 5 e S�rie 2 c/ 6 e s�rie 3 c/ 4 combina��es **
	    // ************************************************************
    VI_QTD1 := VI_LINHAS;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '4 7 4 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 6 4';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 4 4';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Refresh;
    LA_TXT21.Caption := 'ANALISANDO 5 6 4  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_05.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_06.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_04.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M32.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M32.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M32.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M32.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M32.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    PGBR_M02.Position := 50;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    SLEEP(50);


    // ================================================
    // ||||========================================||||
    // |||| 	TERCEIRA- AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** S�rie 1 c/ 6 e S�rie 2 c/ 5 e s�rie 3 c/ 4 combina��es **
	    // ************************************************************
    VI_QTD2 := VI_LINHAS;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '4 7 4 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 6 4 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 4 4';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    LA_TXT21.Caption := 'ANALISANDO: 6 5 4  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_06.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_05.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_04.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M33.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M33.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M33.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M33.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M33.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    PGBR_M02.Position := 75;
    SELF.Repaint;
    SLEEP(50);

    // ================================================
    // ||||========================================||||
    // |||| 	QUARTA - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** S�rie 1 c/ 7 e S�rie 2 c/ 4 e s�rie 3 c/ 4 combina��es **
	    // ************************************************************
    VI_QTD3 := VI_LINHAS ;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';    
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '4 7 4 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 6 4 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4 - OK: ' + INTtoSTR(VI_QTD3) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 4 4';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    LA_TXT21.Caption := 'ANALISANDO- 7 4 4  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_07.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_04.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_04.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M34.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M34.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M34.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M34.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M34.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    VI_QTD4 := VI_LINHAS;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 4 7 4 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 5 6 4 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 6 5 4 - OK: ' + INTtoSTR(VI_QTD3) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 7 4 4 - OK: ' + INTtoSTR(VI_QTD4) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    PGBR_M02.Position := 100;
    PGBR_M02.Repaint;
    SLEEP(50);
    SHOWMESSAGE('3-C - OK');

    // ===============================
    // ||||=======================||||
    // |||| GERANDO OS RESULTADOS ||||
    // ||||=======================||||
    // ===============================
    MEM_COMBINACOES_TODAS.Clear;
    MEM_COMBINACOES_TODAS.Lines.Add('4 7 4 - OK: ' + INTtoSTR(VI_QTD1));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M31.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M31.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Lines.Add('');
    MEM_COMBINACOES_TODAS.Lines.Add('--------------------------------------');
    MEM_COMBINACOES_TODAS.Lines.Add('5 6 4 - OK: ' + INTtoSTR(VI_QTD2));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M32.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M32.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Lines.Add('');
    MEM_COMBINACOES_TODAS.Lines.Add('--------------------------------------');
    MEM_COMBINACOES_TODAS.Lines.Add('6 5 4 - OK: ' + INTtoSTR(VI_QTD3));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M33.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M33.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Lines.Add('');
    MEM_COMBINACOES_TODAS.Lines.Add('--------------------------------------');
    MEM_COMBINACOES_TODAS.Lines.Add('7 4 4 - OK: ' + INTtoSTR(VI_QTD4));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M34.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M34.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
   showmessage('PROCESSAMENTO EFETUADO');
end;




procedure TForm1.BBT_M03_SIMULAR_AClick(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR3, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS : INTEGER;
    VI_QTD1, VI_QTD2, VI_QTD3, VI_QTD4, VI_CONTADOR, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
    VC_CMP_ORIGEM, VC_CMP_B : STRING;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA - AN�LISE COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        STGR_COMBINACOES_15M31.RowCount :=0;
        STGR_COMBINACOES_15M32.RowCount :=0;
        STGR_COMBINACOES_15M33.RowCount :=0;
        STGR_COMBINACOES_15M34.RowCount :=0;
        FOR VI_CONTADOR := 1 TO 15 DO
        BEGIN
            STGR_COMBINACOES_15M31.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M32.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M33.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M34.Cells [VI_CONTADOR, 0] :=  '0' ;
        END; // FOR VI_CONTADOR
        STGR_COMBINACOES_15M31.Repaint;
        STGR_COMBINACOES_15M32.Repaint;
        STGR_COMBINACOES_15M33.Repaint;
        STGR_COMBINACOES_15M34.Repaint;
        PGBR_M02.Position := 0;
        PGBR_M02.Repaint;
        // ************************************************************
    	// ** S�rie 1 c/ 5 e S�rie 2 c/ 8 e s�rie 2 c/ 4 combina��es **
	    // ************************************************************
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    VI_QTD3 := 0;
    VI_QTD4 := 0;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 8 2               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 7 2               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '8 5 2               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Refresh;    
    LA_TXT21.Caption := 'ANALISANDO 5 8 2  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_05.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                BEGIN
                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM];
                    VC_CMP_B      := STGR_M03_SERIE1_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1] ;
                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_08.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                            BEGIN
                                VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                VC_CMP_B      := STGR_M03_SERIE2_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2] ;
                                IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_02.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 2 DO
                                    BEGIN
                                        VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                        VC_CMP_B      := STGR_M03_SERIE3_02.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3] ;
                                        IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 2 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M31.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M31.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M31.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M31.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M31.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    Self.Repaint;
    PGBR_M02.Position := 25;
    PGBR_M02.Repaint;
    SLEEP(100);

    // ================================================
    // ||||========================================||||
    // |||| 	SEGUNDA - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** S�rie 1 c/ 6 e S�rie 2 c/ 7e s�rie 3 c/ 2 combina��es **
	    // ************************************************************
    VI_QTD1 := VI_LINHAS;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';    
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 8 2 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 7 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '8 5 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    PA_PAN03.Refresh;
    LA_TXT11.Refresh;
    PA_PAN03.Repaint;
    LA_TXT21.Caption := 'ANALISANDO 6 7 2  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_06.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                BEGIN
                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM];
                    VC_CMP_B      := STGR_M03_SERIE1_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1] ;
                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_07.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                            BEGIN
                            VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                            VC_CMP_B      := STGR_M03_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2] ;
                            IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_02.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 2 DO
                                    BEGIN
                                        VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                        VC_CMP_B      := STGR_M03_SERIE3_02.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3] ;
                                        IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 2 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M32.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M32.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M32.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M32.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M32.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    PGBR_M02.Position := 50;
    PGBR_M02.Repaint;
    SLEEP(100);

    // ================================================
    // ||||========================================||||
    // |||| 	TERCEIRA- AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** S�rie 1 c/ 7 e S�rie 2 c/ 6 e s�rie 3 c/ 2 combina��es **
	    // ************************************************************
    VI_QTD2 := VI_LINHAS;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';    
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 8 2 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 7 2 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '8 5 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    LA_TXT21.Caption := 'ANALISANDO: 7 6 2  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_07.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                BEGIN
                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM];
                    VC_CMP_B      := STGR_M03_SERIE1_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1] ;
                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_06.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                            BEGIN
                                VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                VC_CMP_B      := STGR_M03_SERIE2_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2] ;
                                IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_02.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 2 DO
                                    BEGIN
                                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                    VC_CMP_B      := STGR_M03_SERIE3_02.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3] ;
                                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 2 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M33.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M33.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M33.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M33.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M33.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    PGBR_M02.Position := 75;
    PGBR_M02.Repaint;
    SLEEP(100);


    // ================================================
    // ||||========================================||||
    // |||| 	QUARTA  -  �LISES COMBINAT�RIAS    ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** S�rie 1 c/ 8 e S�rie 2 c/ 5 e s�rie 3 c/ 2 combina��es **
	    // ************************************************************
    VI_QTD3 := VI_LINHAS;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';    
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 8 2 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 7 2 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2 - OK: ' + INTtoSTR(VI_QTD3) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '8 5 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    LA_TXT21.Caption := 'ANALISANDO- 8 5 2  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_08.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                BEGIN
                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM];
                    VC_CMP_B      := STGR_M03_SERIE1_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1] ;
                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_05.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                            BEGIN
                                VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                VC_CMP_B      := STGR_M03_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2] ;
                                IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_02.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 2 DO
                                    BEGIN
                                        VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                        VC_CMP_B      := STGR_M03_SERIE3_02.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3] ;
                                        IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 2 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M34.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M34.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M34.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M34.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M34.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    VI_QTD4 := VI_LINHAS;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 5 8 2 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 6 7 2 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 7 6 2 - OK: ' + INTtoSTR(VI_QTD3) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 8 5 2 - OK: ' + INTtoSTR(VI_QTD4) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    PGBR_M02.Position := 100;
    PGBR_M02.Repaint;
    SLEEP(100);    
    SHOWMESSAGE('3-A - OK');

    
    // =================================
    // ||||=========================||||
    // |||| GERANDO OS RESULTADOS   ||||
    // ||||=========================||||
    // =================================
    MEM_COMBINACOES_TODAS.Clear;
    MEM_COMBINACOES_TODAS.Lines.Add('5 8 2 - OK: ' + INTtoSTR(VI_QTD1));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M31.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M31.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Lines.Add('');
    MEM_COMBINACOES_TODAS.Lines.Add('--------------------------------------');
    MEM_COMBINACOES_TODAS.Lines.Add('6 7 2 - OK: ' + INTtoSTR(VI_QTD2));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M32.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M32.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Lines.Add('');
    MEM_COMBINACOES_TODAS.Lines.Add('--------------------------------------');
    MEM_COMBINACOES_TODAS.Lines.Add('7 6 2 - OK: ' + INTtoSTR(VI_QTD3));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M33.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M33.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Lines.Add('');
    MEM_COMBINACOES_TODAS.Lines.Add('--------------------------------------');
    MEM_COMBINACOES_TODAS.Lines.Add('8 5 2 - OK: ' + INTtoSTR(VI_QTD4));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M34.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M34.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
   showmessage('PROCESSAMENTO EFETUADO');
end;




procedure TForm1.BBT_M03_SIMULAR_bClick(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR3, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS : INTEGER;
    VI_QTD1, VI_QTD2, VI_QTD3, VI_QTD4, VI_CONTADOR, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;    
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA - AN�LISE COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        STGR_COMBINACOES_15M31.RowCount :=0;
        STGR_COMBINACOES_15M32.RowCount :=0;
        STGR_COMBINACOES_15M33.RowCount :=0;
        STGR_COMBINACOES_15M34.RowCount :=0;
        FOR VI_CONTADOR := 1 TO 15 DO
        BEGIN
            STGR_COMBINACOES_15M31.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M32.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M33.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M34.Cells [VI_CONTADOR, 0] :=  '0' ;
        END; // FOR VI_CONTADOR
        STGR_COMBINACOES_15M31.Repaint;
        STGR_COMBINACOES_15M32.Repaint;
        STGR_COMBINACOES_15M33.Repaint;
        STGR_COMBINACOES_15M34.Repaint;
        PGBR_M02.Position := 0;
        PGBR_M02.Repaint;
        // ************************************************************
    	// ** S�rie 1 c/ 4 e S�rie 2 c/ 8 e s�rie 3 c/ 3 combina��es **
	    // ************************************************************
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    VI_QTD3 := 0;
    VI_QTD4 := 0;        
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '4 8 3               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 7 3               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 6 3               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 5 3               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);    
    PA_PAN03.Refresh;
    LA_TXT11.Refresh;
    PA_PAN03.Repaint;
    LA_TXT21.Caption := 'ANALISANDO 4 8 3  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_04.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_08.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_03.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 3 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_03.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 3 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M31.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M31.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M31.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M31.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE = 7 )
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE = 4)
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M31.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    SELF.Repaint;
    PGBR_M02.Position := 25;
    PGBR_M02.Repaint;


    // ================================================
    // ||||========================================||||
    // |||| 	SEGUNDA - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** S�rie 1 c/ 5 e S�rie 2 c/ 7 e s�rie 3 c/ 3 combina��es **
	    // ************************************************************
    VI_QTD1 := VI_LINHAS;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';    
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '4 8 3 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 7 3';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 6 3';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 5 3';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Refresh;
    LA_TXT21.Caption := 'ANALISANDO 5 7 3  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_05.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_07.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_03.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 3 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_03.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 3 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M32.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M32.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M32.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M32.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M32.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    PGBR_M02.Position := 50;
    PGBR_M02.Repaint;
    SLEEP(100);


    // ================================================
    // ||||========================================||||
    // |||| 	TERCEIRA- AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** S�rie 1 c/ 6 e S�rie 2 c/ 6 e s�rie 3 c/ 3 combina��es **
	    // ************************************************************
    VI_QTD2 := VI_LINHAS;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '4 8 3 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 7 3 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 6 3';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 5 3';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    LA_TXT21.Caption := 'ANALISANDO: 6 6 3  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_06.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_06.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_03.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 3 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_03.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 3 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M33.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M33.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M33.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M33.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M33.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    PGBR_M02.Position := 75;
    PGBR_M02.Repaint;
    SLEEP(100);


    // ================================================
    // ||||========================================||||
    // |||| 	QUARTA - AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** S�rie 1 c/ 7 e S�rie 2 c/ 5 e s�rie 3 c/ 3 combina��es **
	    // ************************************************************
    VI_QTD3 := VI_LINHAS ;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '4 8 3 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 7 3 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 6 3 - OK: ' + INTtoSTR(VI_QTD3) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 5 3';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    LA_TXT21.Caption := 'ANALISANDO- 7 5 3  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_07.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_05.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_03.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 3 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_03.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 3 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M34.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M34.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M34.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M34.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M34.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    VI_QTD4 := VI_LINHAS;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 4 8 3 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 5 7 3 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 6 6 3 - OK: ' + INTtoSTR(VI_QTD3) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 7 5 3 - OK: ' + INTtoSTR(VI_QTD4) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    PGBR_M02.Position := 100;
    PGBR_M02.Repaint;
    SHOWMESSAGE('3-B - OK');

    // ================================================
    // ||||========================================||||
    // |||| GERANDO OS RESULTADOS, CASO HAJA ALGUM ||||
    // ||||========================================||||
    // ================================================
    MEM_COMBINACOES_TODAS.Clear;
    MEM_COMBINACOES_TODAS.Lines.Add('4 8 3 - OK: ' + INTtoSTR(VI_QTD1));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M31.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M31.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Lines.Add('');
    MEM_COMBINACOES_TODAS.Lines.Add('--------------------------------------');
    MEM_COMBINACOES_TODAS.Lines.Add('5 7 3 - OK: ' + INTtoSTR(VI_QTD2));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M32.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M32.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Lines.Add('');
    MEM_COMBINACOES_TODAS.Lines.Add('--------------------------------------');
    MEM_COMBINACOES_TODAS.Lines.Add('6 6 3 - OK: ' + INTtoSTR(VI_QTD3));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M33.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M33.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Lines.Add('');
    MEM_COMBINACOES_TODAS.Lines.Add('--------------------------------------');
    MEM_COMBINACOES_TODAS.Lines.Add('7 5 3 - OK: ' + INTtoSTR(VI_QTD4));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M34.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M34.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
   showmessage('PROCESSAMENTO EFETUADO');
end;


procedure TForm1.BBT_M02_SIMULAR_FClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    self.Repaint;
    BBT_M02_SIMULAR_B_.Click;    
    BBT_M02_SIMULAR_C_.Click;
{
    MEM_COMBINACOES_TODAS.Clear;
    MEM_COMBINACOES_TODAS.Lines.Add('8 7 e 10 5 - OK: ' + INTtoSTR(VI_QTD1 + VI_QTD2));
    MEM_COMBINACOES_TODAS.Lines.Add('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=' );
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M2.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M2.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS_M03.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS_M03.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
  }
    showmessage('PROCESSAMENTO EFETUADO');
end;


procedure TForm1.BitBtn1Click(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    BBT_M02_SIMULAR_A_.Click;
    BBT_M02_SIMULAR_F_.Click;
    BBT_M02_SIMULAR_J_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;


procedure TForm1.BBT_M02_SIMULAR_F_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VI_QTD1, VI_QTD2 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA- AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // *********************************************
    	// ** S�rie 1 c/ 8 e S�rie 2 c/ 7 combina��es **
	    // *********************************************
    LA_TXT2.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT3.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT2.Repaint;
    LA_TXT3.Repaint;
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    if (STGR_COMBINACOES_15M2.RowCount)= 0 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15M2.RowCount;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_08.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M02_SERIE1_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_07.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M02_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE = 9)
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        VI_QTD1 := VI_LINHAS;
        LA_TXT2.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT2.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0

        // *********************************************
    	// ** S�rie 1 c/ 10 e S�rie 2 c/ 5 combina��es **
	    // *********************************************
//    VI_LINHAS := 0;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_10.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 10 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M02_SERIE1_10.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 10 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_05.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M02_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        VI_QTD2 := VI_LINHAS;
        LA_TXT3.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT3.Caption := LA_TXT3.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT3.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0

    SHOWMESSAGE('2 - C');
end;


procedure TForm1.BBT_M02_BNOTASClick(Sender: TObject);
VAR
    VI_CONTAR1,VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES: STRING;
BEGIN
    MEM_COMBINACOES_TODAS.Clear;
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M2.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M2.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS_M03.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS_M03.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
    showmessage('PROCESSAMENTO EFETUADO');
end;







procedure TForm1.BBT_MATRIZ01_SIMULARClick(Sender: TObject);
VAR
    VMI_MATRIZ01FILTRO:  ARRAY [1..9] OF ARRAY [1..6] OF INTEGER;    // VMI = Variavel Matriz Inteira
    VMS_ML1: ARRAY[1..5] OF ARRAY [1..850] OF STRING;
    VMS_ML2: ARRAY[1..4] OF ARRAY [1..850] OF STRING;
    VMS_ML3: ARRAY[1..3] OF ARRAY [1..350] OF STRING;
    VMS_ML4: ARRAY[1..3] OF ARRAY [1..350] OF STRING;
   // VMS_ML1_2_3_4: ARRAY[1..15] OF ARRAY [1..12990] OF STRING;
    VI_COL_ARRAY, VI_LIN_ARRAY : SMALLINT;
    VI_N_COMB,VI_CNTCELULAS, VI_LINHAS1, VI_LINHAS2, VI_CONTAR1 : INTEGER;
  	VI_AN_COMB1, VI_AN_COMB2, VI_AN_COMB3, VI_AN_COMB4, VI_AN_COMB5,VI_AN_COMB6 : INTEGER;
    VI_SEG_ETAPA_COMB1, VI_SEG_ETAPA_COMB2 : INTEGER;
    VC_COMBINACOES, VC_TROCA1, VC_TROCA2 : STRING;
    VI_MAIOR_L1_3, VI_MENOR_L2_3, VI_MAIOR_L1_2, VI_MENOR_L2_2 : INTEGER;
    VI_MAIOR_L2_3, VI_MENOR_L1_3, VI_MAIOR_L2_2, VI_MENOR_L1_2 : INTEGER;
    VI_CONTARMATRIZ : SMALLINT;


    PROCEDURE PR_Atualizar_Matriz01();
    VAR
        VI_COL_ARRAY, VI_LIN_ARRAY : SMALLINT;
    BEGIN
        FOR VI_COL_ARRAY := 1 TO 8 DO
        BEGIN
            FOR VI_LIN_ARRAY := 1 TO 45 DO
            BEGIN
                STGR_MATRIZ01.Cells [VI_COL_ARRAY,VI_LIN_ARRAY] := RIGHTSTR('0'+INTtoSTR(VMI_MATRIZ01FILTRO [VI_COL_ARRAY,VI_LIN_ARRAY]),2);
            END; // FOR VI_LIN_ARRAY
        END; // FOR VI_COL_ARRAY
        STGR_MATRIZ01.Repaint;
    END;   //  PROCEDURE PR_Atualizar_Matriz01()


    PROCEDURE PR_SomaColunas_Matriz01 (OUT VI_TOTAL1:  INTEGER; OUT VI_TOTAL2:  INTEGER; OUT VI_TOTAL3:  INTEGER; VI_TOTAL4 :  INTEGER );
    BEGIN
        VI_TOTAL1 := VMI_MATRIZ01FILTRO [3,1] + VMI_MATRIZ01FILTRO [3,2] + VMI_MATRIZ01FILTRO [3,3]  + VMI_MATRIZ01FILTRO [3,4] ;
        VI_TOTAL2 := VMI_MATRIZ01FILTRO [5,1] + VMI_MATRIZ01FILTRO [4,2] + VMI_MATRIZ01FILTRO [4,3]  + VMI_MATRIZ01FILTRO [4,4] ;
        VI_TOTAL3 := VMI_MATRIZ01FILTRO [5,1] + VMI_MATRIZ01FILTRO [5,2] + VMI_MATRIZ01FILTRO [5,3]  + VMI_MATRIZ01FILTRO [5,4] ;
        VI_TOTAL4 := VMI_MATRIZ01FILTRO [6,1] + VMI_MATRIZ01FILTRO [7,1] + VMI_MATRIZ01FILTRO [8,1]  + VMI_MATRIZ01FILTRO [6,2]  + VMI_MATRIZ01FILTRO [7,2] ;
    END;  //  PROCEDURE PR_SomaColunas_Matriz01


    PROCEDURE PR_FlagColunas_Matriz01 (OUT VI_FLAG3:  SMALLINT; OUT VI_FLAG4: SMALLINT; OUT VI_FLAG5:  SMALLINT; VI_FLAG6 : SMALLINT );
    VAR
        VI_SOMA3, VI_SOMA4, VI_SOMA5, VI_SOMA6 : SMALLINT;
        VI_TOTAL1,  VI_TOTAL2, VI_TOTAL3 : SMALLINT;
    BEGIN
        VI_SOMA3 := VMI_MATRIZ01FILTRO [3,1] + VMI_MATRIZ01FILTRO [3,2] + VMI_MATRIZ01FILTRO [3,3]  + VMI_MATRIZ01FILTRO [3,4] ;
        VI_SOMA4 := VMI_MATRIZ01FILTRO [5,1] + VMI_MATRIZ01FILTRO [4,2] + VMI_MATRIZ01FILTRO [4,3]  + VMI_MATRIZ01FILTRO [4,4] ;
        VI_SOMA5 := VMI_MATRIZ01FILTRO [5,1] + VMI_MATRIZ01FILTRO [5,2] + VMI_MATRIZ01FILTRO [5,3]  + VMI_MATRIZ01FILTRO [5,4] ;
        VI_SOMA6 := VMI_MATRIZ01FILTRO [6,1] + VMI_MATRIZ01FILTRO [7,1] + VMI_MATRIZ01FILTRO [8,1]  + VMI_MATRIZ01FILTRO [6,2]  + VMI_MATRIZ01FILTRO [7,2] ;
        // ***************************************************
        // ** VERIFICANDO A COLUNA 3, SE ATENDE A SOMATORIA **
        // ***************************************************
        CASE (CB_01_COL3.ItemIndex ) OF
            0:
            BEGIN
                VI_TOTAL1 := 50;
                VI_TOTAL2 := 50;
                VI_TOTAL3 := 50;
            END;
            1:
            BEGIN
                VI_TOTAL1 := 52;
                VI_TOTAL2 := 52;
                VI_TOTAL3 := 52;
            END;
            2:
            BEGIN
                VI_TOTAL1 := 54;
                VI_TOTAL2 := 54;
                VI_TOTAL3 := 54;
            END;
            3:
            BEGIN
                VI_TOTAL1 := 50;
                VI_TOTAL2 := 50;
                VI_TOTAL3 := 54;
            END;
            4:
            BEGIN
                VI_TOTAL1 := 50;
                VI_TOTAL2 := 52;
                VI_TOTAL3 := 54;
            END;

        END; // CASE

        IF (VI_SOMA3 =VI_TOTAL1) OR (VI_SOMA3 =VI_TOTAL2) OR (VI_SOMA3 =VI_TOTAL3) THEN
                VI_FLAG3 := 1
           ELSE
                VI_FLAG3 := 0;


        // ***************************************************
        // ** VERIFICANDO A COLUNA 4, SE ATENDE A SOMATORIA **
        // ***************************************************
        CASE (CB_01_COL4.ItemIndex ) OF
            0:
            BEGIN
                VI_TOTAL1 := 50;
                VI_TOTAL2 := 50;
                VI_TOTAL3 := 50;
            END;
            1:
            BEGIN
                VI_TOTAL1 := 52;
                VI_TOTAL2 := 52;
                VI_TOTAL3 := 52;
            END;
            2:
            BEGIN
                VI_TOTAL1 := 54;
                VI_TOTAL2 := 54;
                VI_TOTAL3 := 54;
            END;
            3:
            BEGIN
                VI_TOTAL1 := 50;
                VI_TOTAL2 := 50;
                VI_TOTAL3 := 54;
            END;
            4:
            BEGIN
                VI_TOTAL1 := 50;
                VI_TOTAL2 := 52;
                VI_TOTAL3 := 54;
            END;

        END; // CASE

        IF (VI_SOMA4 =VI_TOTAL1) OR (VI_SOMA4 =VI_TOTAL2) OR (VI_SOMA4 =VI_TOTAL3) THEN
                VI_FLAG4 := 1
           ELSE
                VI_FLAG4 := 0;


        // ***************************************************
        // ** VERIFICANDO A COLUNA 5, SE ATENDE A SOMATORIA **
        // ***************************************************
        CASE (CB_01_COL5.ItemIndex ) OF
            0:
            BEGIN
                VI_TOTAL1 := 50;
                VI_TOTAL2 := 50;
                VI_TOTAL3 := 50;
            END;
            1:
            BEGIN
                VI_TOTAL1 := 52;
                VI_TOTAL2 := 52;
                VI_TOTAL3 := 52;
            END;
            2:
            BEGIN
                VI_TOTAL1 := 54;
                VI_TOTAL2 := 54;
                VI_TOTAL3 := 54;
            END;
            3:
            BEGIN
                VI_TOTAL1 := 50;
                VI_TOTAL2 := 50;
                VI_TOTAL3 := 54;
            END;
            4:
            BEGIN
                VI_TOTAL1 := 50;
                VI_TOTAL2 := 52;
                VI_TOTAL3 := 54;
            END;

        END; // CASE

        IF (VI_SOMA5 =VI_TOTAL1) OR (VI_SOMA5 =VI_TOTAL2) OR (VI_SOMA5 =VI_TOTAL3) THEN
                VI_FLAG5 := 1
           ELSE
                VI_FLAG5 := 0;

                
        // ***************************************************
        // ** VERIFICANDO A COLUNA 6, SE ATENDE A SOMATORIA **
        // ***************************************************
        CASE (CB_01_COL6.ItemIndex ) OF
            0:
            BEGIN
                VI_TOTAL1 := 50;
                VI_TOTAL2 := 50;
                VI_TOTAL3 := 50;
            END;
            1:
            BEGIN
                VI_TOTAL1 := 52;
                VI_TOTAL2 := 52;
                VI_TOTAL3 := 52;
            END;
            2:
            BEGIN
                VI_TOTAL1 := 54;
                VI_TOTAL2 := 54;
                VI_TOTAL3 := 54;
            END;
            3:
            BEGIN
                VI_TOTAL1 := 50;
                VI_TOTAL2 := 50;
                VI_TOTAL3 := 54;
            END;
            4:
            BEGIN
                VI_TOTAL1 := 50;
                VI_TOTAL2 := 52;
                VI_TOTAL3 := 54;
            END;

        END; // CASE

        IF (VI_SOMA6 =VI_TOTAL1) OR (VI_SOMA6 =VI_TOTAL2) OR (VI_SOMA6 =VI_TOTAL3) THEN
                VI_FLAG6 := 1
           ELSE
                VI_FLAG6 := 0;
    END; // PROCEDURE PR_FlagColunas_Matriz01


begin  //procedure TForm1.BBT_MATRIZ01_SIMULARClick

    STRGR_ML1_2_3_4.RowCount := 2;
    STGR_COMBINACOES_15M04.RowCount:=2;
    PGBR_FILTRANDO_04.Position := 0;
    PGBR_REFINANDO_04.Position := 0;
    LA_Gerando_04_.Caption := '0              ';
    LA_FILTRANDO_04_.Caption :='0           '+#13+'              ' +#13+ '                     ';
    SELF.Repaint;
    // =======================================================
    // ||||===============================================||||
    // |||| 	PRIMEIRO ETAPA - MONTANDO O ARRAY         ||||
    // ||||===============================================||||
    // =======================================================
    VMI_MATRIZ01FILTRO [1,1] := STRtoINT( STGR_IMPAR_A.Cells [0,0] );
    VMI_MATRIZ01FILTRO [2,1] := STRtoINT( STGR_IMPAR_A.Cells [1,0] );
    VMI_MATRIZ01FILTRO [3,1] := STRtoINT( STGR_IMPAR_A.Cells [2,0] );
    VMI_MATRIZ01FILTRO [4,1] := STRtoINT( STGR_IMPAR_A.Cells [3,0] );
    VMI_MATRIZ01FILTRO [5,1] := STRtoINT( STGR_IMPAR_A.Cells [4,0] );
    VMI_MATRIZ01FILTRO [6,1] := STRtoINT( STGR_IMPAR_A.Cells [5,0] );
    VMI_MATRIZ01FILTRO [7,1] := STRtoINT( STGR_IMPAR_A.Cells [6,0] );
    VMI_MATRIZ01FILTRO [8,1] := STRtoINT( STGR_IMPAR_A.Cells [7,0] );

    VMI_MATRIZ01FILTRO [1,2] := STRtoINT( STGR_PAR_A.Cells [0,0] );
    VMI_MATRIZ01FILTRO [2,2] := STRtoINT( STGR_PAR_A.Cells [1,0] );
    VMI_MATRIZ01FILTRO [3,2] := STRtoINT( STGR_PAR_A.Cells [2,0] );
    VMI_MATRIZ01FILTRO [4,2] := STRtoINT( STGR_PAR_A.Cells [3,0] );
    VMI_MATRIZ01FILTRO [5,2] := STRtoINT( STGR_PAR_A.Cells [4,0] );
    VMI_MATRIZ01FILTRO [6,2] := STRtoINT( STGR_PAR_A.Cells [5,0] );
    VMI_MATRIZ01FILTRO [7,2] := STRtoINT( STGR_PAR_A.Cells [6,0] );

    VMI_MATRIZ01FILTRO [1,3] := STRtoINT( STGR_IMPAR_B.Cells [0,0] );
    VMI_MATRIZ01FILTRO [2,3] := STRtoINT( STGR_IMPAR_B.Cells [1,0] );
    VMI_MATRIZ01FILTRO [3,3] := STRtoINT( STGR_IMPAR_B.Cells [2,0] );
    VMI_MATRIZ01FILTRO [4,3] := STRtoINT( STGR_IMPAR_B.Cells [3,0] );
    VMI_MATRIZ01FILTRO [5,3] := STRtoINT( STGR_IMPAR_B.Cells [4,0] );

    VMI_MATRIZ01FILTRO [1,4] := STRtoINT( STGR_PAR_B.Cells [0,0] );
    VMI_MATRIZ01FILTRO [2,4] := STRtoINT( STGR_PAR_B.Cells [1,0] );
    VMI_MATRIZ01FILTRO [3,4] := STRtoINT( STGR_PAR_B.Cells [2,0] );
    VMI_MATRIZ01FILTRO [4,4] := STRtoINT( STGR_PAR_B.Cells [3,0] );
    VMI_MATRIZ01FILTRO [5,4] := STRtoINT( STGR_PAR_B.Cells [4,0] );

    VMI_MATRIZ01FILTRO [8,2] := 0;
    VMI_MATRIZ01FILTRO [6,3] := 0;
    VMI_MATRIZ01FILTRO [7,3] := 0;
    VMI_MATRIZ01FILTRO [8,3] := 0;
    VMI_MATRIZ01FILTRO [6,4] := 0;
    VMI_MATRIZ01FILTRO [7,4] := 0;
    VMI_MATRIZ01FILTRO [8,4] := 0;
    PR_Atualizar_Matriz01() ;
  {
    FOR VI_CONTAR1_L4 :=1 TO 5 DO
    BEGIN
        FOR VI_CONTAR2_L4 :=VI_CONTAR1_L4+1 TO 5 DO
        BEGIN

        END; // VI_CONTAR2_L4
    END; // VI_CONTAR1_L4
  }

    // ======================================================================================
    // ||||==============================================================================||||
    // |||| 	S�RIE 1 - AN�LISES COMBINAT�RIAS para gerar as combina��es da 4� Linha   ||||
    // ||||==============================================================================||||
    // ======================================================================================

    // *****************************************************
    // ** An�lise combinat�ria  **
    // *****************************************************
	VI_LINHAS1:= 1;
    VI_LINHAS2:= 1;
    VI_N_COMB := 1;
    STRGR_ML4.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
    STRGR_ML4_SOBRA.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
        FOR VI_AN_COMB1 :=0 TO 2 DO
        BEGIN
            FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 4 DO
            BEGIN
                FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 4 DO
                BEGIN

                    // ----> ZERANDO TODOS OS FLAGS
                    FOR VI_CONTAR1 := 0 TO 4 DO
                    BEGIN
                        STGR_PAR_B.Cells[VI_CONTAR1,1] := 'F';
                    END; // FOR VI_CONTAR
                    // ----> MONTANDO A AN�LISE DOS DADOS
                    // ----> INDICE
                    STRGR_ML4.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                    STRGR_ML4_SOBRA.Cells [0,VI_LINHAS2] := INTtoSTR (VI_N_COMB) ;
                    // ----> DADOS
                    STRGR_ML4.Cells [1,VI_LINHAS1] := STGR_PAR_B.Cells[VI_AN_COMB1,0] ;
                    STRGR_ML4.Cells [2,VI_LINHAS1] := STGR_PAR_B.Cells[VI_AN_COMB2,0] ;
                    IF (VI_AN_COMB3=2) THEN STRGR_ML4.Cells [3,VI_LINHAS1] := STGR_PAR_B.Cells[2,0] ;
                    IF (VI_AN_COMB3=3) THEN STRGR_ML4.Cells [3,VI_LINHAS1] := STGR_PAR_B.Cells[3,0] ;
                    IF (VI_AN_COMB3=4) THEN STRGR_ML4.Cells [3,VI_LINHAS1] := STGR_PAR_B.Cells[4,0] ;
                    // ----> SETANDO OS FLAGS
                        STGR_PAR_B.Cells[VI_AN_COMB1,1] :='V';
                        STGR_PAR_B.Cells[VI_AN_COMB2,1] :='V';
                    IF (VI_AN_COMB3=2) THEN STGR_PAR_B.Cells[2,1] :='V';
                    IF (VI_AN_COMB3=3) THEN STGR_PAR_B.Cells[3,1] :='V';
                    IF (VI_AN_COMB3=4) THEN STGR_PAR_B.Cells[4,1] :='V';

                     // ----> Montando os n�mero que sobraram --
                     VI_CNTCELULAS :=1;
                     FOR VI_CONTAR1 := 0 TO 4 DO
                     BEGIN
                        IF (STGR_PAR_B.Cells[VI_CONTAR1,1]='F') THEN
                        BEGIN
                            STRGR_ML4_SOBRA.Cells[VI_CNTCELULAS,VI_LINHAS2]:= STGR_PAR_B.Cells[VI_CONTAR1,0];
                            VI_CNTCELULAS :=VI_CNTCELULAS+1;
                        END; // IF (STGR_PAR_B.Cells
                     END; // FOR VI_CON TAR
                    // ***************************************************************
                    // ** An�lise combinat�ria  ** gerando as outras 5  / 1  poss�veis
                    // ***************************************************************
                    {  --------------------->>>> retirado para evitar repetidos
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STRGR_ML4.RowCount := VI_LINHAS1;
                    STRGR_ML4.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                    STRGR_ML4.Cells [1,VI_LINHAS1]:= STRGR_ML4.Cells [1,VI_LINHAS1-1];
                    STRGR_ML4.Cells [2,VI_LINHAS1]:= STRGR_ML4.Cells [3,VI_LINHAS1-1];
                    STRGR_ML4.Cells [3,VI_LINHAS1]:= STRGR_ML4.Cells [2,VI_LINHAS1-1];
                        VI_LINHAS1 := VI_LINHAS1 +1;
                        STRGR_ML4.RowCount := VI_LINHAS1;
                        STRGR_ML4.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                        STRGR_ML4.Cells [1,VI_LINHAS1]:= STRGR_ML4.Cells [3,VI_LINHAS1-2];
                        STRGR_ML4.Cells [2,VI_LINHAS1]:= STRGR_ML4.Cells [1,VI_LINHAS1-2];
                        STRGR_ML4.Cells [3,VI_LINHAS1]:= STRGR_ML4.Cells [2,VI_LINHAS1-2];
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STRGR_ML4.RowCount := VI_LINHAS1;
                    STRGR_ML4.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                    STRGR_ML4.Cells [1,VI_LINHAS1]:= STRGR_ML4.Cells [3,VI_LINHAS1-3];
                    STRGR_ML4.Cells [2,VI_LINHAS1]:= STRGR_ML4.Cells [2,VI_LINHAS1-3];
                    STRGR_ML4.Cells [3,VI_LINHAS1]:= STRGR_ML4.Cells [1,VI_LINHAS1-3];
                        VI_LINHAS1 := VI_LINHAS1 +1;
                        STRGR_ML4.RowCount := VI_LINHAS1;
                        STRGR_ML4.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                        STRGR_ML4.Cells [1,VI_LINHAS1]:= STRGR_ML4.Cells [2,VI_LINHAS1-4];
                        STRGR_ML4.Cells [2,VI_LINHAS1]:= STRGR_ML4.Cells [3,VI_LINHAS1-4];
                        STRGR_ML4.Cells [3,VI_LINHAS1]:= STRGR_ML4.Cells [1,VI_LINHAS1-4];
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STRGR_ML4.RowCount := VI_LINHAS1;
                    STRGR_ML4.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                    STRGR_ML4.Cells [1,VI_LINHAS1]:= STRGR_ML4.Cells [2,VI_LINHAS1-5];
                    STRGR_ML4.Cells [2,VI_LINHAS1]:= STRGR_ML4.Cells [1,VI_LINHAS1-5];
                    STRGR_ML4.Cells [3,VI_LINHAS1]:= STRGR_ML4.Cells [3,VI_LINHAS1-5];

                            VI_LINHAS2 := VI_LINHAS2 +1;
                            STRGR_ML4_SOBRA.RowCount := VI_LINHAS2;
                            STRGR_ML4_SOBRA.Cells [0,VI_LINHAS2] := INTtoSTR (VI_N_COMB) ;
                            STRGR_ML4_SOBRA.Cells [1,VI_LINHAS2]:= STRGR_ML4_SOBRA.Cells [2,VI_LINHAS2-1];
                            STRGR_ML4_SOBRA.Cells [2,VI_LINHAS2]:= STRGR_ML4_SOBRA.Cells [1,VI_LINHAS2-1];
                     }
                    VI_N_COMB := VI_N_COMB +1;
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    VI_LINHAS2 := VI_LINHAS2 +1;
                    STRGR_ML4.RowCount := VI_LINHAS1;
                    STRGR_ML4_SOBRA.RowCount := VI_LINHAS2;
                END; // FOR VI_AN_COMB3
            END; //  FOR VI_AN_COMB2
        END; // FOR VI_AN_COMB1
        STRGR_ML4.Repaint;
        STRGR_ML4_SOBRA.Repaint;
        SLEEP(50);
        SELF.Repaint;
        VI_N_COMB := 1;
        VI_LINHAS1 := 1;
        FOR VI_AN_COMB1 :=1 TO (STRGR_ML4.RowCount-1) DO
        BEGIN
            VMS_ML4 [1,VI_AN_COMB1] := STRGR_ML4.Cells [1,VI_AN_COMB1];
            VMS_ML4 [2,VI_AN_COMB1] := STRGR_ML4.Cells [2,VI_AN_COMB1];
            VMS_ML4 [3,VI_AN_COMB1] := STRGR_ML4.Cells [3,VI_AN_COMB1];
        END;

    {
    VI_LINHAS1 := 0;
    VI_LINHAS2 := 0;
    STRGR_ML4.RowCount := VI_LINHAS1;
    // MONTANDO A PRIMEIRA LINHA
    FOR VI_CONTAR1:= 1 TO 5 DO
        STRGR_ML4.Cells [VI_CONTAR1,VI_LINHAS1] := STGR_MATRIZ01.Cells[VI_CONTAR1,4]  ;
    VI_LINHAS1 := VI_LINHAS1 + 1;
    STRGR_ML4.RowCount := VI_LINHAS1;
    FOR VI_AN_COMB2:= 1 TO 5 DO
    BEGIN
        FOR VI_AN_COMB3:= 5 DOWNTO 1 DO
        BEGIN
            FOR VI_AN_COMB4:= 1 TO 5 DO
            BEGIN
                FOR VI_AN_COMB5:= 2 TO 5 DO
                BEGIN
                        FOR VI_CONTAR1:= 1 TO 5 DO
                            STRGR_ML4.Cells [VI_CONTAR1,VI_LINHAS1] := STRGR_ML4.Cells[VI_CONTAR1,VI_LINHAS1-1];
                    STRGR_ML4.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                    VC_TROCA1                        := (STRGR_ML4.Cells[VI_AN_COMB5,VI_LINHAS1]);
                    VC_TROCA2                        := (STRGR_ML4.Cells [VI_AN_COMB5-1,VI_LINHAS1]) ;
                    STRGR_ML4.Cells [VI_AN_COMB5,VI_LINHAS1] := VC_TROCA2;
                    STRGR_ML4.Cells [VI_AN_COMB5-1,VI_LINHAS1] := VC_TROCA1;
                    VI_LINHAS1 := VI_LINHAS1 + 1;
                    STRGR_ML4.RowCount := VI_LINHAS1;
                END; // FOR
                //VI_LINHAS2 := VI_LINHAS1;
                STRGR_ML4.Repaint;
            END; // FOR
            // FAZ A ROTA��O DE DADOS NA �LTIMA LINHA
            VI_LINHAS1:= VI_LINHAS1-1;
            STRGR_ML4.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
            VC_TROCA1                        := (STRGR_ML4.Cells[1,VI_LINHAS1]);
            VC_TROCA2                        := (STRGR_ML4.Cells [VI_AN_COMB3,VI_LINHAS1]) ;
            STRGR_ML4.Cells [1,VI_LINHAS1] := VC_TROCA2;
            STRGR_ML4.Cells [VI_AN_COMB3,VI_LINHAS1] := VC_TROCA1;
            VI_LINHAS1 := VI_LINHAS1 + 1;
            STRGR_ML4.RowCount := VI_LINHAS1;
        END; // FOR
        VI_LINHAS1:= VI_LINHAS1-1;
        //STRGR_ML4.RowCount := VI_LINHAS1;
        //STRGR_ML4.Repaint;
                  //  FOR VI_CONTAR1:= 1 TO 5 DO
                  //      STRGR_ML4.Cells [VI_CONTAR1,VI_LINHAS1] := STRGR_ML4.Cells[VI_CONTAR1,VI_LINHAS1-1];
        STRGR_ML4.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
        VC_TROCA1                        := (STRGR_ML4.Cells[5,VI_LINHAS1]);
        VC_TROCA2                        := (STRGR_ML4.Cells [VI_AN_COMB2,VI_LINHAS1]) ;
        STRGR_ML4.Cells [5,VI_LINHAS1] := VC_TROCA2;
        STRGR_ML4.Cells [VI_AN_COMB2,VI_LINHAS1] := VC_TROCA1;
        VI_LINHAS1 := VI_LINHAS1 + 1;
        STRGR_ML4.RowCount := VI_LINHAS1;
    END; // FOR VI_AN_COMB2


    // ********************************
    // **   REMOVENDO OS REPETIDOS DA LINHA D(4)  **  VETOR
    // ********************************
    // ----->> PARTE 1 MONTANDO O ARRAY
    VMS_TOTAL_15[1] := INTtoSTR(STRGR_ML4.RowCount+1);
    FOR VI_AN_COMB1:= 0 TO  TRUNC((STRGR_ML4.RowCount-1)/1) DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_CNTCELULAS := 1 TO 5 DO
        BEGIN
               VC_COMBINACOES := VC_COMBINACOES + STRGR_ML4.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
        END; // FOR VI_CNTCELULAS
        VMS_TOTAL_15 [VI_AN_COMB1+2] := VC_COMBINACOES;
    END; // FOR VI_AN_COMB1:=
    // ----->> PARTE 2 MARCANDO OS REPETIDOS
    VI_LINHAS2 := 0;
    FOR VI_AN_COMB1:= 0 TO  TRUNC((STRGR_ML4.RowCount-1)/1) DO
    BEGIN
        VC_COMBINACOES :='';
    	FOR VI_CONTAR1 := 1 TO 5 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STRGR_ML4.Cells[VI_CONTAR1,VI_AN_COMB1] +' ';
        END; // FOR VI_CNTCELULAS
        VI_CNTCELULAS :=0;
        FOR VI_CONTAR1 := VI_AN_COMB1 TO (STRGR_ML4.RowCount) DO
        BEGIN
			IF ((VMS_TOTAL_15 [VI_CONTAR1+2]) = VC_COMBINACOES)
            THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 1 THEN
                BEGIN
                    VMS_TOTAL_15 [VI_CONTAR1+2] := '00';
                END;
            END; // IF ((STGR_COMB_05.Cells[1,VI_CONTAR])
        END; // FOR VI_CONTAR
    END; // FOR VI_AN_COMB1
    // ----->> PARTE 3 REMONTANDO O ARRAY
    VI_LINHAS2 := 0;
    VI_CONTAR1 := STRtoINT(VMS_TOTAL_15[1]);
    FOR VI_AN_COMB1:= 2 TO  VI_CONTAR1 DO
    BEGIN
        VC_COMBINACOES := COPY(VMS_TOTAL_15[VI_AN_COMB1],1,2);
    	IF (STRtoINT(VC_COMBINACOES) <>  0) THEN
        BEGIN
                STRGR_ML4.Cells [1, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],1,2);
                STRGR_ML4.Cells [2, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],4,2);
                STRGR_ML4.Cells [3, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],7,2);
                STRGR_ML4.Cells [4, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],10,2);
                STRGR_ML4.Cells [5, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],13,2);
            VI_LINHAS2 := VI_LINHAS2 +1;
            STRGR_ML4.RowCount := VI_LINHAS2;
            //F_GRIDS2.STGR_COMBINACOES_15E.REPAINT;
        END; // IF NOT
    END; // FOR VI_AN_COMB1
 }


    

    // ======================================================================================
    // ||||==============================================================================||||
    // |||| 	S�RIE 2 - AN�LISES COMBINAT�RIAS para gerar as combina��es da 3� Linha   ||||
    // ||||==============================================================================||||
    // ======================================================================================
    // *****************************************************
    // ** An�lise combinat�ria  **
    // *****************************************************
	VI_LINHAS1:= 1;
    VI_LINHAS2:= 1;
    VI_N_COMB := 1;
    STRGR_ML3.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
    STRGR_ML3_SOBRA.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
        FOR VI_AN_COMB1 :=0 TO 2 DO
        BEGIN
            FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 4 DO
            BEGIN
                FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 4 DO
                BEGIN

                    // ----> ZERANDO TODOS OS FLAGS
                    FOR VI_CONTAR1 := 0 TO 4 DO
                    BEGIN
                        STGR_IMPAR_B.Cells[VI_CONTAR1,1] := 'F';
                    END; // FOR VI_CONTAR
                    // ----> MONTANDO A AN�LISE DOS DADOS
                    // ----> INDICE
                    STRGR_ML3.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                    STRGR_ML3_SOBRA.Cells [0,VI_LINHAS2] := INTtoSTR (VI_N_COMB) ;
                    // ----> DADOS
                    STRGR_ML3.Cells [1,VI_LINHAS1] := STGR_IMPAR_B.Cells[VI_AN_COMB1,0] ;
                    STRGR_ML3.Cells [2,VI_LINHAS1] := STGR_IMPAR_B.Cells[VI_AN_COMB2,0] ;
                    IF (VI_AN_COMB3=2) THEN STRGR_ML3.Cells [3,VI_LINHAS1] := STGR_IMPAR_B.Cells[2,0] ;
                    IF (VI_AN_COMB3=3) THEN STRGR_ML3.Cells [3,VI_LINHAS1] := STGR_IMPAR_B.Cells[3,0] ;
                    IF (VI_AN_COMB3=4) THEN STRGR_ML3.Cells [3,VI_LINHAS1] := STGR_IMPAR_B.Cells[4,0] ;
                    // ----> SETANDO OS FLAGS
                        STGR_IMPAR_B.Cells[VI_AN_COMB1,1] :='V';
                        STGR_IMPAR_B.Cells[VI_AN_COMB2,1] :='V';
                    IF (VI_AN_COMB3=2) THEN STGR_IMPAR_B.Cells[2,1] :='V';
                    IF (VI_AN_COMB3=3) THEN STGR_IMPAR_B.Cells[3,1] :='V';
                    IF (VI_AN_COMB3=4) THEN STGR_IMPAR_B.Cells[4,1] :='V';

                     // ----> Montando os n�mero que sobraram --
                     VI_CNTCELULAS :=1;
                     FOR VI_CONTAR1 := 0 TO 4 DO
                     BEGIN
                        IF (STGR_IMPAR_B.Cells[VI_CONTAR1,1]='F') THEN
                        BEGIN
                            STRGR_ML3_SOBRA.Cells[VI_CNTCELULAS,VI_LINHAS2]:= STGR_IMPAR_B.Cells[VI_CONTAR1,0];
                            VI_CNTCELULAS :=VI_CNTCELULAS+1;
                        END; // IF (STGR_IMPAR_B.Cells
                     END; // FOR VI_CON TAR
                    // ***************************************************************
                    // ** An�lise combinat�ria  ** gerando as outras 5  / 1  poss�veis
                    // ***************************************************************
                    {  --------------------->>>> retirado para evitar repetidos
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STRGR_ML3.RowCount := VI_LINHAS1;
                    STRGR_ML3.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                    STRGR_ML3.Cells [1,VI_LINHAS1]:= STRGR_ML3.Cells [1,VI_LINHAS1-1];
                    STRGR_ML3.Cells [2,VI_LINHAS1]:= STRGR_ML3.Cells [3,VI_LINHAS1-1];
                    STRGR_ML3.Cells [3,VI_LINHAS1]:= STRGR_ML3.Cells [2,VI_LINHAS1-1];
                        VI_LINHAS1 := VI_LINHAS1 +1;
                        STRGR_ML3.RowCount := VI_LINHAS1;
                        STRGR_ML3.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                        STRGR_ML3.Cells [1,VI_LINHAS1]:= STRGR_ML3.Cells [3,VI_LINHAS1-2];
                        STRGR_ML3.Cells [2,VI_LINHAS1]:= STRGR_ML3.Cells [1,VI_LINHAS1-2];
                        STRGR_ML3.Cells [3,VI_LINHAS1]:= STRGR_ML3.Cells [2,VI_LINHAS1-2];
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STRGR_ML3.RowCount := VI_LINHAS1;
                    STRGR_ML3.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                    STRGR_ML3.Cells [1,VI_LINHAS1]:= STRGR_ML3.Cells [3,VI_LINHAS1-3];
                    STRGR_ML3.Cells [2,VI_LINHAS1]:= STRGR_ML3.Cells [2,VI_LINHAS1-3];
                    STRGR_ML3.Cells [3,VI_LINHAS1]:= STRGR_ML3.Cells [1,VI_LINHAS1-3];
                        VI_LINHAS1 := VI_LINHAS1 +1;
                        STRGR_ML3.RowCount := VI_LINHAS1;
                        STRGR_ML3.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                        STRGR_ML3.Cells [1,VI_LINHAS1]:= STRGR_ML3.Cells [2,VI_LINHAS1-4];
                        STRGR_ML3.Cells [2,VI_LINHAS1]:= STRGR_ML3.Cells [3,VI_LINHAS1-4];
                        STRGR_ML3.Cells [3,VI_LINHAS1]:= STRGR_ML3.Cells [1,VI_LINHAS1-4];
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STRGR_ML3.RowCount := VI_LINHAS1;
                    STRGR_ML3.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                    STRGR_ML3.Cells [1,VI_LINHAS1]:= STRGR_ML3.Cells [2,VI_LINHAS1-5];
                    STRGR_ML3.Cells [2,VI_LINHAS1]:= STRGR_ML3.Cells [1,VI_LINHAS1-5];
                    STRGR_ML3.Cells [3,VI_LINHAS1]:= STRGR_ML3.Cells [3,VI_LINHAS1-5];

                            VI_LINHAS2 := VI_LINHAS2 +1;
                            STRGR_ML3_SOBRA.RowCount := VI_LINHAS2;
                            STRGR_ML3_SOBRA.Cells [0,VI_LINHAS2] := INTtoSTR (VI_N_COMB) ;
                            STRGR_ML3_SOBRA.Cells [1,VI_LINHAS2]:= STRGR_ML3_SOBRA.Cells [2,VI_LINHAS2-1];
                            STRGR_ML3_SOBRA.Cells [2,VI_LINHAS2]:= STRGR_ML3_SOBRA.Cells [1,VI_LINHAS2-1];
                     }
                    VI_N_COMB := VI_N_COMB +1;
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    VI_LINHAS2 := VI_LINHAS2 +1;
                    STRGR_ML3.RowCount := VI_LINHAS1;
                    STRGR_ML3_SOBRA.RowCount := VI_LINHAS2;
                END; // FOR VI_AN_COMB3
            END; //  FOR VI_AN_COMB2
        END; // FOR VI_AN_COMB1
        STRGR_ML3.Repaint;
        STRGR_ML3_SOBRA.Repaint;
        SLEEP(50);
        SELF.Repaint;
        VI_N_COMB := 1;
        VI_LINHAS1 := 1;
        FOR VI_AN_COMB1 :=1 TO (STRGR_ML3.RowCount-1) DO
        BEGIN
            VMS_ML4 [1,VI_AN_COMB1] := STRGR_ML3.Cells [1,VI_AN_COMB1];
            VMS_ML4 [2,VI_AN_COMB1] := STRGR_ML3.Cells [2,VI_AN_COMB1];
            VMS_ML4 [3,VI_AN_COMB1] := STRGR_ML3.Cells [3,VI_AN_COMB1];
        END;


    {
    VI_LINHAS1 := 0;
    VI_LINHAS2 := 0;
    STRGR_ML3.RowCount := VI_LINHAS1;
    // MONTANDO A PRIMEIRA LINHA
    FOR VI_CONTAR1:= 1 TO 5 DO
        STRGR_ML3.Cells [VI_CONTAR1,VI_LINHAS1] := STGR_MATRIZ01.Cells[VI_CONTAR1,3]  ;
    VI_LINHAS1 := VI_LINHAS1 + 1;
    STRGR_ML3.RowCount := VI_LINHAS1;
    FOR VI_AN_COMB2:= 1 TO 5 DO
    BEGIN
        FOR VI_AN_COMB3:= 5 DOWNTO 1 DO
        BEGIN
            FOR VI_AN_COMB4:= 1 TO 5 DO
            BEGIN
                FOR VI_AN_COMB5:= 2 TO 5 DO
                BEGIN
                        FOR VI_CONTAR1:= 1 TO 5 DO
                            STRGR_ML3.Cells [VI_CONTAR1,VI_LINHAS1] := STRGR_ML3.Cells[VI_CONTAR1,VI_LINHAS1-1];
                    STRGR_ML3.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                    VC_TROCA1                        := (STRGR_ML3.Cells[VI_AN_COMB5,VI_LINHAS1]);
                    VC_TROCA2                        := (STRGR_ML3.Cells [VI_AN_COMB5-1,VI_LINHAS1]) ;
                    STRGR_ML3.Cells [VI_AN_COMB5,VI_LINHAS1] := VC_TROCA2;
                    STRGR_ML3.Cells [VI_AN_COMB5-1,VI_LINHAS1] := VC_TROCA1;
                    VI_LINHAS1 := VI_LINHAS1 + 1;
                    STRGR_ML3.RowCount := VI_LINHAS1;
                END; // FOR
                //VI_LINHAS2 := VI_LINHAS1;
                STRGR_ML3.Repaint;
            END; // FOR
            // FAZ A ROTA��O DE DADOS NA �LTIMA LINHA
            VI_LINHAS1:= VI_LINHAS1-1;
            STRGR_ML3.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
            VC_TROCA1                        := (STRGR_ML3.Cells[1,VI_LINHAS1]);
            VC_TROCA2                        := (STRGR_ML3.Cells [VI_AN_COMB3,VI_LINHAS1]) ;
            STRGR_ML3.Cells [1,VI_LINHAS1] := VC_TROCA2;
            STRGR_ML3.Cells [VI_AN_COMB3,VI_LINHAS1] := VC_TROCA1;
            VI_LINHAS1 := VI_LINHAS1 + 1;
            STRGR_ML3.RowCount := VI_LINHAS1;
        END; // FOR
        VI_LINHAS1:= VI_LINHAS1-1;
        //STRGR_ML3.RowCount := VI_LINHAS1;
        //STRGR_ML3.Repaint;
                  //  FOR VI_CONTAR1:= 1 TO 5 DO
                  //      STRGR_ML3.Cells [VI_CONTAR1,VI_LINHAS1] := STRGR_ML3.Cells[VI_CONTAR1,VI_LINHAS1-1];
        STRGR_ML3.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
        VC_TROCA1                        := (STRGR_ML3.Cells[5,VI_LINHAS1]);
        VC_TROCA2                        := (STRGR_ML3.Cells [VI_AN_COMB2,VI_LINHAS1]) ;
        STRGR_ML3.Cells [5,VI_LINHAS1] := VC_TROCA2;
        STRGR_ML3.Cells [VI_AN_COMB2,VI_LINHAS1] := VC_TROCA1;
        VI_LINHAS1 := VI_LINHAS1 + 1;
        STRGR_ML3.RowCount := VI_LINHAS1;
    END; // FOR VI_AN_COMB2


    // ********************************
    // **   REMOVENDO OS REPETIDOS DA LINHA D(4)  **  VETOR
    // ********************************
    // ----->> PARTE 1 MONTANDO O ARRAY
    VMS_TOTAL_15[1] := INTtoSTR(STRGR_ML3.RowCount+1);
    FOR VI_AN_COMB1:= 0 TO  TRUNC((STRGR_ML3.RowCount-1)/1) DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_CNTCELULAS := 1 TO 5 DO
        BEGIN
               VC_COMBINACOES := VC_COMBINACOES + STRGR_ML3.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
        END; // FOR VI_CNTCELULAS
        VMS_TOTAL_15 [VI_AN_COMB1+2] := VC_COMBINACOES;
    END; // FOR VI_AN_COMB1:=
    // ----->> PARTE 2 MARCANDO OS REPETIDOS
    VI_LINHAS2 := 0;
    FOR VI_AN_COMB1:= 0 TO  TRUNC((STRGR_ML3.RowCount-1)/1) DO
    BEGIN
        VC_COMBINACOES :='';
    	FOR VI_CONTAR1 := 1 TO 5 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STRGR_ML3.Cells[VI_CONTAR1,VI_AN_COMB1] +' ';
        END; // FOR VI_CNTCELULAS
        VI_CNTCELULAS :=0;
        FOR VI_CONTAR1 := VI_AN_COMB1 TO (STRGR_ML3.RowCount) DO
        BEGIN
			IF ((VMS_TOTAL_15 [VI_CONTAR1+2]) = VC_COMBINACOES)
            THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 1 THEN
                BEGIN
                    VMS_TOTAL_15 [VI_CONTAR1+2] := '00';
                END;
            END; // IF ((STGR_COMB_05.Cells[1,VI_CONTAR])
        END; // FOR VI_CONTAR
    END; // FOR VI_AN_COMB1
    // ----->> PARTE 3 REMONTANDO O ARRAY
    VI_LINHAS2 := 0;
    VI_CONTAR1 := STRtoINT(VMS_TOTAL_15[1]);
    FOR VI_AN_COMB1:= 2 TO  VI_CONTAR1 DO
    BEGIN
        VC_COMBINACOES := COPY(VMS_TOTAL_15[VI_AN_COMB1],1,2);
    	IF (STRtoINT(VC_COMBINACOES) <>  0) THEN
        BEGIN
                STRGR_ML3.Cells [1, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],1,2);
                STRGR_ML3.Cells [2, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],4,2);
                STRGR_ML3.Cells [3, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],7,2);
                STRGR_ML3.Cells [4, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],10,2);
                STRGR_ML3.Cells [5, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],13,2);
            VI_LINHAS2 := VI_LINHAS2 +1;
            STRGR_ML3.RowCount := VI_LINHAS2;
            //F_GRIDS2.STGR_COMBINACOES_15E.REPAINT;
        END; // IF NOT
    END; // FOR VI_AN_COMB1
    }
    // ======================================================================================
    // ||||==============================================================================||||
    // |||| 	S�RIE 3 - AN�LISES COMBINAT�RIAS para gerar as combina��es da 2� Linha   ||||
    // ||||==============================================================================||||
    // ======================================================================================
    // *****************************************************
    // ** An�lise combinat�ria  **
    // *****************************************************
	VI_LINHAS1:= 1;
    VI_LINHAS2:= 1;
    VI_N_COMB := 1;
    STRGR_ML2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
    STRGR_ML2_SOBRA.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
        FOR VI_AN_COMB1 :=0 TO 2 DO
        BEGIN
            FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 6 DO
            BEGIN
                FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 6 DO
                BEGIN
                    FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 6 DO
                    BEGIN
                        FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 6 DO
                        BEGIN
                            // ----> ZERANDO TODOS OS FLAGS
                            FOR VI_CONTAR1 := 0 TO 6 DO
                            BEGIN
                                STGR_PAR_A.Cells[VI_CONTAR1,1] := 'F';
                            END; // FOR VI_CONTAR
                            // ----> MONTANDO A AN�LISE DOS DADOS
                            // ----> INDICE
                            STRGR_ML2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                            STRGR_ML2_SOBRA.Cells [0,VI_LINHAS2] := INTtoSTR (VI_N_COMB) ;
                            // ----> DADOS
                            STRGR_ML2.Cells [1,VI_LINHAS1] := STGR_PAR_A.Cells[VI_AN_COMB1,0] ;
                            STRGR_ML2.Cells [2,VI_LINHAS1] := STGR_PAR_A.Cells[VI_AN_COMB2,0] ;
                            STRGR_ML2.Cells [3,VI_LINHAS1] := STGR_PAR_A.Cells[VI_AN_COMB3,0] ;
                            STRGR_ML2.Cells [4,VI_LINHAS1] := STGR_PAR_A.Cells[VI_AN_COMB4,0] ;
                            IF (VI_AN_COMB5=4) THEN STRGR_ML2.Cells [5,VI_LINHAS1] := STGR_PAR_A.Cells[4,0] ;
                            IF (VI_AN_COMB5=5) THEN STRGR_ML2.Cells [5,VI_LINHAS1] := STGR_PAR_A.Cells[5,0] ;
                            IF (VI_AN_COMB5=6) THEN STRGR_ML2.Cells [5,VI_LINHAS1] := STGR_PAR_A.Cells[6,0] ;
                            // ----> SETANDO OS FLAGS
                                STGR_PAR_A.Cells[VI_AN_COMB1,1] :='V';
                                STGR_PAR_A.Cells[VI_AN_COMB2,1] :='V';
                                STGR_PAR_A.Cells[VI_AN_COMB3,1] :='V';
                                STGR_PAR_A.Cells[VI_AN_COMB4,1] :='V';
                            IF (VI_AN_COMB5=4) THEN STGR_PAR_A.Cells[4,1] :='V';
                            IF (VI_AN_COMB5=5) THEN STGR_PAR_A.Cells[5,1] :='V';
                            IF (VI_AN_COMB5=6) THEN STGR_PAR_A.Cells[6,1] :='V';

                             // ----> Montando os n�mero que sobraram --
                             VI_CNTCELULAS :=1;
                             FOR VI_CONTAR1 := 0 TO 6 DO
                             BEGIN
                                IF (STGR_PAR_A.Cells[VI_CONTAR1,1]='F') THEN
                                BEGIN
                                    STRGR_ML2_SOBRA.Cells[VI_CNTCELULAS,VI_LINHAS2]:= STGR_PAR_A.Cells[VI_CONTAR1,0];
                                    VI_CNTCELULAS :=VI_CNTCELULAS+1;
                                END; // IF (STGR_PAR_A.Cells
                             END; // FOR VI_CON TAR
                            // ***************************************************************
                            // ** An�lise combinat�ria  ** gerando as outras 5  / 1  poss�veis
                            // ***************************************************************
                            STRGR_ML2.Cells [6,VI_LINHAS1] := 'V' ;
                    {  --------------------->>>> retirado para evitar repetidos
                            VI_LINHAS1 := VI_LINHAS1 +1;
                            STRGR_ML2.RowCount := VI_LINHAS1;
                            STRGR_ML2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                            STRGR_ML2.Cells [1,VI_LINHAS1]:= STRGR_ML2.Cells [1,VI_LINHAS1-1];
                            STRGR_ML2.Cells [2,VI_LINHAS1]:= STRGR_ML2.Cells [3,VI_LINHAS1-1];
                            STRGR_ML2.Cells [3,VI_LINHAS1]:= STRGR_ML2.Cells [2,VI_LINHAS1-1];
                                                        STRGR_ML2.Cells [4,VI_LINHAS1]:= STRGR_ML2.Cells [4,VI_LINHAS1-1];
                                                        STRGR_ML2.Cells [5,VI_LINHAS1]:= STRGR_ML2.Cells [5,VI_LINHAS1-1];
                                STRGR_ML2.Cells [6,VI_LINHAS1] := 'V' ;
                                VI_LINHAS1 := VI_LINHAS1 +1;
                                STRGR_ML2.RowCount := VI_LINHAS1;
                                STRGR_ML2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                                STRGR_ML2.Cells [1,VI_LINHAS1]:= STRGR_ML2.Cells [3,VI_LINHAS1-2];
                                STRGR_ML2.Cells [2,VI_LINHAS1]:= STRGR_ML2.Cells [1,VI_LINHAS1-2];
                                STRGR_ML2.Cells [3,VI_LINHAS1]:= STRGR_ML2.Cells [2,VI_LINHAS1-2];
                                                        STRGR_ML2.Cells [4,VI_LINHAS1]:= STRGR_ML2.Cells [4,VI_LINHAS1-1];
                                                        STRGR_ML2.Cells [5,VI_LINHAS1]:= STRGR_ML2.Cells [5,VI_LINHAS1-1];
                            STRGR_ML2.Cells [6,VI_LINHAS1] := 'V' ;
                            VI_LINHAS1 := VI_LINHAS1 +1;
                            STRGR_ML2.RowCount := VI_LINHAS1;
                            STRGR_ML2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                            STRGR_ML2.Cells [1,VI_LINHAS1]:= STRGR_ML2.Cells [3,VI_LINHAS1-3];
                            STRGR_ML2.Cells [2,VI_LINHAS1]:= STRGR_ML2.Cells [2,VI_LINHAS1-3];
                            STRGR_ML2.Cells [3,VI_LINHAS1]:= STRGR_ML2.Cells [1,VI_LINHAS1-3];
                                                        STRGR_ML2.Cells [4,VI_LINHAS1]:= STRGR_ML2.Cells [4,VI_LINHAS1-1];
                                                        STRGR_ML2.Cells [5,VI_LINHAS1]:= STRGR_ML2.Cells [5,VI_LINHAS1-1];
                                STRGR_ML2.Cells [6,VI_LINHAS1] := 'V' ;
                                VI_LINHAS1 := VI_LINHAS1 +1;
                                STRGR_ML2.RowCount := VI_LINHAS1;
                                STRGR_ML2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                                STRGR_ML2.Cells [1,VI_LINHAS1]:= STRGR_ML2.Cells [2,VI_LINHAS1-4];
                                STRGR_ML2.Cells [2,VI_LINHAS1]:= STRGR_ML2.Cells [3,VI_LINHAS1-4];
                                STRGR_ML2.Cells [3,VI_LINHAS1]:= STRGR_ML2.Cells [1,VI_LINHAS1-4];
                                                        STRGR_ML2.Cells [4,VI_LINHAS1]:= STRGR_ML2.Cells [4,VI_LINHAS1-1];
                                                        STRGR_ML2.Cells [5,VI_LINHAS1]:= STRGR_ML2.Cells [5,VI_LINHAS1-1];
                            STRGR_ML2.Cells [6,VI_LINHAS1] := 'V' ;
                            VI_LINHAS1 := VI_LINHAS1 +1;
                            STRGR_ML2.RowCount := VI_LINHAS1;
                            STRGR_ML2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                            STRGR_ML2.Cells [1,VI_LINHAS1]:= STRGR_ML2.Cells [2,VI_LINHAS1-5];
                            STRGR_ML2.Cells [2,VI_LINHAS1]:= STRGR_ML2.Cells [1,VI_LINHAS1-5];
                            STRGR_ML2.Cells [3,VI_LINHAS1]:= STRGR_ML2.Cells [3,VI_LINHAS1-5];
                                                        STRGR_ML2.Cells [4,VI_LINHAS1]:= STRGR_ML2.Cells [4,VI_LINHAS1-1];
                                                        STRGR_ML2.Cells [5,VI_LINHAS1]:= STRGR_ML2.Cells [5,VI_LINHAS1-1];
                            STRGR_ML2.Cells [6,VI_LINHAS1] := 'V' ;
                            }
                                                        {
                                // invertendo os 2 �ltimos com os 2 primeiros
                                VI_LINHAS1 := VI_LINHAS1 +1;
                                STRGR_ML2.RowCount := VI_LINHAS1;
                                STRGR_ML2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                                STRGR_ML2.Cells [1,VI_LINHAS1]:= STRGR_ML2.Cells [4,VI_LINHAS1-6];
                                STRGR_ML2.Cells [2,VI_LINHAS1]:= STRGR_ML2.Cells [5,VI_LINHAS1-6];
                                        STRGR_ML2.Cells [3,VI_LINHAS1]:= STRGR_ML2.Cells [3,VI_LINHAS1-6];
                                                            STRGR_ML2.Cells [4,VI_LINHAS1]:= STRGR_ML2.Cells [1,VI_LINHAS1-6];
                                                            STRGR_ML2.Cells [5,VI_LINHAS1]:= STRGR_ML2.Cells [2,VI_LINHAS1-6];
                                        // invertendo os �ltimo e o pen�ltimo
                                        VI_LINHAS1 := VI_LINHAS1 +1;
                                        STRGR_ML2.RowCount := VI_LINHAS1;
                                        STRGR_ML2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                                        STRGR_ML2.Cells [1,VI_LINHAS1]:= STRGR_ML2.Cells [1,VI_LINHAS1-1];
                                        STRGR_ML2.Cells [2,VI_LINHAS1]:= STRGR_ML2.Cells [2,VI_LINHAS1-1];
                                                STRGR_ML2.Cells [3,VI_LINHAS1]:= STRGR_ML2.Cells [3,VI_LINHAS1-1];
                                                                    STRGR_ML2.Cells [4,VI_LINHAS1]:= STRGR_ML2.Cells [2,VI_LINHAS1-1];
                                                                    STRGR_ML2.Cells [5,VI_LINHAS1]:= STRGR_ML2.Cells [1,VI_LINHAS1-1];
                                                       }
                            VI_N_COMB := VI_N_COMB +1;
                            VI_LINHAS1 := VI_LINHAS1 +1;
                            VI_LINHAS2 := VI_LINHAS2 +1;
                            STRGR_ML2.RowCount := VI_LINHAS1;
                            STRGR_ML2_SOBRA.RowCount := VI_LINHAS2;
                        END; // FOR VI_AN_COMB5                            
                    END; // FOR VI_AN_COMB4
                END; // FOR VI_AN_COMB3
            END; //  FOR VI_AN_COMB2
        END; // FOR VI_AN_COMB1
        STRGR_ML2.Repaint;
        STRGR_ML2_SOBRA.Repaint;
        SLEEP(50);
        SELF.Repaint;
        VI_N_COMB := 1;
        VI_LINHAS1 := 1;


    (*
    VI_LINHAS1 := 0;
    VI_LINHAS2 := 0;
    STRGR_ML2.RowCount := VI_LINHAS1;
    // MONTANDO A PRIMEIRA LINHA
    FOR VI_CONTAR1:= 1 TO 7 DO
        STRGR_ML2.Cells [VI_CONTAR1,VI_LINHAS1] := STGR_MATRIZ01.Cells[VI_CONTAR1,2]  ;
    VI_LINHAS1 := VI_LINHAS1 + 1;
    STRGR_ML2.RowCount := VI_LINHAS1;
    FOR VI_AN_COMB2:= 1 TO {7}1 DO
    BEGIN
        FOR VI_AN_COMB3:= 7 DOWNTO 1 DO
        BEGIN
            FOR VI_AN_COMB4:= 1 TO 7 DO
            BEGIN
                FOR VI_AN_COMB5:= 2 TO 7 DO
                BEGIN
                        FOR VI_CONTAR1:= 1 TO 7 DO
                            STRGR_ML2.Cells [VI_CONTAR1,VI_LINHAS1] := STRGR_ML2.Cells[VI_CONTAR1,VI_LINHAS1-1];
                    STRGR_ML2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                    VC_TROCA1                        := (STRGR_ML2.Cells[VI_AN_COMB5,VI_LINHAS1]);
                    VC_TROCA2                        := (STRGR_ML2.Cells [VI_AN_COMB5-1,VI_LINHAS1]) ;
                    STRGR_ML2.Cells [VI_AN_COMB5,VI_LINHAS1] := VC_TROCA2;
                    STRGR_ML2.Cells [VI_AN_COMB5-1,VI_LINHAS1] := VC_TROCA1;
                    VI_LINHAS1 := VI_LINHAS1 + 1;
                    STRGR_ML2.RowCount := VI_LINHAS1;
                END; // FOR
                //VI_LINHAS2 := VI_LINHAS1;
                STRGR_ML2.Repaint;
            END; // FOR
            // FAZ A ROTA��O DE DADOS NA �LTIMA LINHA
            VI_LINHAS1:= VI_LINHAS1-1;
            STRGR_ML2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
            VC_TROCA1                        := (STRGR_ML2.Cells[1,VI_LINHAS1]);
            VC_TROCA2                        := (STRGR_ML2.Cells [VI_AN_COMB3,VI_LINHAS1]) ;
            STRGR_ML2.Cells [1,VI_LINHAS1] := VC_TROCA2;
            STRGR_ML2.Cells [VI_AN_COMB3,VI_LINHAS1] := VC_TROCA1;
            VI_LINHAS1 := VI_LINHAS1 + 1;
            STRGR_ML2.RowCount := VI_LINHAS1;
        END; // FOR
        VI_LINHAS1:= VI_LINHAS1-1;
        //STRGR_ML2.RowCount := VI_LINHAS1;
        //STRGR_ML2.Repaint;
                  //  FOR VI_CONTAR1:= 1 TO 5 DO
                  //      STRGR_ML2.Cells [VI_CONTAR1,VI_LINHAS1] := STRGR_ML2.Cells[VI_CONTAR1,VI_LINHAS1-1];
        STRGR_ML2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
        VC_TROCA1                        := (STRGR_ML2.Cells[7,VI_LINHAS1]);
        VC_TROCA2                        := (STRGR_ML2.Cells [VI_AN_COMB2,VI_LINHAS1]) ;
        STRGR_ML2.Cells [7,VI_LINHAS1] := VC_TROCA2;
        STRGR_ML2.Cells [VI_AN_COMB2,VI_LINHAS1] := VC_TROCA1;
        VI_LINHAS1 := VI_LINHAS1 + 1;
        STRGR_ML2.RowCount := VI_LINHAS1;
    END; // FOR VI_AN_COMB2


    // ********************************
    // **   REMOVENDO OS REPETIDOS DA LINHA D(4)  **  VETOR
    // ********************************
    // ----->> PARTE 1 MONTANDO O ARRAY
    VMS_TOTAL_15[1] := INTtoSTR(STRGR_ML2.RowCount+1);
    FOR VI_AN_COMB1:= 0 TO  TRUNC((STRGR_ML2.RowCount-1)/1) DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_CNTCELULAS := 1 TO 7 DO
        BEGIN
               VC_COMBINACOES := VC_COMBINACOES + STRGR_ML2.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
        END; // FOR VI_CNTCELULAS
        VMS_TOTAL_15 [VI_AN_COMB1+2] := VC_COMBINACOES;
    END; // FOR VI_AN_COMB1:=
    // ----->> PARTE 2 MARCANDO OS REPETIDOS
    VI_LINHAS2 := 0;
    FOR VI_AN_COMB1:= 0 TO  TRUNC((STRGR_ML2.RowCount-1)/1) DO
    BEGIN
        VC_COMBINACOES :='';
    	FOR VI_CONTAR1 := 1 TO 7 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STRGR_ML2.Cells[VI_CONTAR1,VI_AN_COMB1] +' ';
        END; // FOR VI_CNTCELULAS
        VI_CNTCELULAS :=0;
        FOR VI_CONTAR1 := VI_AN_COMB1 TO (STRGR_ML2.RowCount) DO
        BEGIN
			IF ((VMS_TOTAL_15 [VI_CONTAR1+2]) = VC_COMBINACOES)
            THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 1 THEN
                BEGIN
                    VMS_TOTAL_15 [VI_CONTAR1+2] := '00';
                END;
            END; // IF ((STGR_COMB_05.Cells[1,VI_CONTAR])
        END; // FOR VI_CONTAR
    END; // FOR VI_AN_COMB1
    // ----->> PARTE 3 REMONTANDO O ARRAY
    VI_LINHAS2 := 0;
    VI_CONTAR1 := STRtoINT(VMS_TOTAL_15[1]);
    FOR VI_AN_COMB1:= 2 TO  VI_CONTAR1 DO
    BEGIN
        VC_COMBINACOES := COPY(VMS_TOTAL_15[VI_AN_COMB1],1,2);
    	IF (STRtoINT(VC_COMBINACOES) <>  0) THEN
        BEGIN
                STRGR_ML2.Cells [1, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],1,2);
                STRGR_ML2.Cells [2, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],4,2);
                STRGR_ML2.Cells [3, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],7,2);
                STRGR_ML2.Cells [4, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],10,2);
                STRGR_ML2.Cells [5, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],13,2);
                STRGR_ML2.Cells [6, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],16,2);
                STRGR_ML2.Cells [7, VI_LINHAS2] :=  COPY(VMS_TOTAL_15[VI_AN_COMB1],19,2);
            VI_LINHAS2 := VI_LINHAS2 +1;
            STRGR_ML2.RowCount := VI_LINHAS2;
            //F_GRIDS2.STGR_COMBINACOES_15E.REPAINT;
        END; // IF NOT
    END; // FOR VI_AN_COMB1
    *)

    // ======================================================================================
    // ||||==============================================================================||||
    // |||| 	S�RIE 3 - AN�LISES COMBINAT�RIAS para gerar as combina��es da 1� Linha]   ||||
    // ||||==============================================================================||||
    // ======================================================================================
    // *****************************************************
    // ** An�lise combinat�ria  **
    // *****************************************************
	VI_LINHAS1:= 1;
    VI_LINHAS2:= 1;
    VI_N_COMB := 1;
    STRGR_ML1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
    STRGR_ML1_SOBRA.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
    FOR VI_AN_COMB1 :=0 TO 3 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 7 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 7 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 7 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 7 DO
                    BEGIN
                        // ----> ZERANDO TODOS OS FLAGS
                        FOR VI_CONTAR1 := 0 TO 7 DO
                        BEGIN
                            STGR_IMPAR_A.Cells[VI_CONTAR1,1] := 'F';
                        END; // FOR VI_CONTAR
                        // ----> MONTANDO A AN�LISE DOS DADOS
                        // ----> INDICE
                        STRGR_ML1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                        STRGR_ML1_SOBRA.Cells [0,VI_LINHAS2] := INTtoSTR (VI_N_COMB) ;
                        // ----> DADOS
                        STRGR_ML1.Cells [1,VI_LINHAS1] := STGR_IMPAR_A.Cells[VI_AN_COMB1,0] ;
                        STRGR_ML1.Cells [2,VI_LINHAS1] := STGR_IMPAR_A.Cells[VI_AN_COMB2,0] ;
                        STRGR_ML1.Cells [3,VI_LINHAS1] := STGR_IMPAR_A.Cells[VI_AN_COMB3,0] ;
                        STRGR_ML1.Cells [4,VI_LINHAS1] := STGR_IMPAR_A.Cells[VI_AN_COMB4,0] ;
                        IF (VI_AN_COMB5=4) THEN STRGR_ML1.Cells [5,VI_LINHAS1] := STGR_IMPAR_A.Cells[4,0] ;
                        IF (VI_AN_COMB5=5) THEN STRGR_ML1.Cells [5,VI_LINHAS1] := STGR_IMPAR_A.Cells[5,0] ;                                IF (VI_AN_COMB6=6) THEN STRGR_ML1.Cells [6,VI_LINHAS1] := STGR_IMPAR_A.Cells[6,0] ;
                        IF (VI_AN_COMB5=6) THEN STRGR_ML1.Cells [5,VI_LINHAS1] := STGR_IMPAR_A.Cells[6,0] ;
                        IF (VI_AN_COMB5=7) THEN STRGR_ML1.Cells [5,VI_LINHAS1] := STGR_IMPAR_A.Cells[7,0] ;
                        // ----> SETANDO OS FLAGS
                            STGR_IMPAR_A.Cells[VI_AN_COMB1,1] :='V';
                            STGR_IMPAR_A.Cells[VI_AN_COMB2,1] :='V';
                            STGR_IMPAR_A.Cells[VI_AN_COMB3,1] :='V';
                            STGR_IMPAR_A.Cells[VI_AN_COMB4,1] :='V';
                        IF (VI_AN_COMB5=4) THEN STGR_IMPAR_A.Cells[4,1] :='V';
                        IF (VI_AN_COMB5=5) THEN STGR_IMPAR_A.Cells[5,1] :='V';
                        IF (VI_AN_COMB5=6) THEN STGR_IMPAR_A.Cells[6,1] :='V';
                        IF (VI_AN_COMB5=7) THEN STGR_IMPAR_A.Cells[7,1] :='V';
                         // ----> Montando os n�mero que sobraram --
                         VI_CNTCELULAS :=1;
                         FOR VI_CONTAR1 := 0 TO 7 DO
                         BEGIN
                            IF (STGR_IMPAR_A.Cells[VI_CONTAR1,1]='F') THEN
                            BEGIN
                                STRGR_ML1_SOBRA.Cells[VI_CNTCELULAS,VI_LINHAS2]:= STGR_IMPAR_A.Cells[VI_CONTAR1,0];
                                VI_CNTCELULAS :=VI_CNTCELULAS+1;
                            END; // IF (STGR_IMPAR_A.Cells
                         END; // FOR VI_CON TAR
                        STRGR_ML1.Cells[6,VI_LINHAS1] := 'V' ;
                        // ***************************************************************
                        // ** An�lise combinat�ria  ** gerando as outras 5  / 1  poss�veis
                        // ***************************************************************
                    {  --------------------->>>> retirado para evitar repetidos
                        VI_LINHAS1 := VI_LINHAS1 +1;
                        STRGR_ML1.RowCount := VI_LINHAS1;
                        STRGR_ML1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                        STRGR_ML1.Cells [1,VI_LINHAS1]:= STRGR_ML1.Cells [1,VI_LINHAS1-1];
                        STRGR_ML1.Cells [2,VI_LINHAS1]:= STRGR_ML1.Cells [3,VI_LINHAS1-1];
                        STRGR_ML1.Cells [3,VI_LINHAS1]:= STRGR_ML1.Cells [2,VI_LINHAS1-1];
                                                    STRGR_ML1.Cells [4,VI_LINHAS1]:= STRGR_ML1.Cells [4,VI_LINHAS1-1];
                                                    STRGR_ML1.Cells [5,VI_LINHAS1]:= STRGR_ML1.Cells [5,VI_LINHAS1-1];
                                        STRGR_ML1.Cells[6,VI_LINHAS1] := 'V' ;
                            VI_LINHAS1 := VI_LINHAS1 +1;
                            STRGR_ML1.RowCount := VI_LINHAS1;
                            STRGR_ML1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                            STRGR_ML1.Cells [1,VI_LINHAS1]:= STRGR_ML1.Cells [3,VI_LINHAS1-2];
                            STRGR_ML1.Cells [2,VI_LINHAS1]:= STRGR_ML1.Cells [1,VI_LINHAS1-2];
                            STRGR_ML1.Cells [3,VI_LINHAS1]:= STRGR_ML1.Cells [2,VI_LINHAS1-2];
                                                    STRGR_ML1.Cells [4,VI_LINHAS1]:= STRGR_ML1.Cells [4,VI_LINHAS1-1];
                                                    STRGR_ML1.Cells [5,VI_LINHAS1]:= STRGR_ML1.Cells [5,VI_LINHAS1-1];
                                        STRGR_ML1.Cells[6,VI_LINHAS1] := 'V' ;
                        VI_LINHAS1 := VI_LINHAS1 +1;
                        STRGR_ML1.RowCount := VI_LINHAS1;
                        STRGR_ML1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                        STRGR_ML1.Cells [1,VI_LINHAS1]:= STRGR_ML1.Cells [3,VI_LINHAS1-3];
                        STRGR_ML1.Cells [2,VI_LINHAS1]:= STRGR_ML1.Cells [2,VI_LINHAS1-3];
                        STRGR_ML1.Cells [3,VI_LINHAS1]:= STRGR_ML1.Cells [1,VI_LINHAS1-3];
                                                    STRGR_ML1.Cells [4,VI_LINHAS1]:= STRGR_ML1.Cells [4,VI_LINHAS1-1];
                                                    STRGR_ML1.Cells [5,VI_LINHAS1]:= STRGR_ML1.Cells [5,VI_LINHAS1-1];
                                        STRGR_ML1.Cells[6,VI_LINHAS1] := 'V' ;
                            VI_LINHAS1 := VI_LINHAS1 +1;
                            STRGR_ML1.RowCount := VI_LINHAS1;
                            STRGR_ML1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                            STRGR_ML1.Cells [1,VI_LINHAS1]:= STRGR_ML1.Cells [2,VI_LINHAS1-4];
                            STRGR_ML1.Cells [2,VI_LINHAS1]:= STRGR_ML1.Cells [3,VI_LINHAS1-4];
                            STRGR_ML1.Cells [3,VI_LINHAS1]:= STRGR_ML1.Cells [1,VI_LINHAS1-4];
                                                    STRGR_ML1.Cells [4,VI_LINHAS1]:= STRGR_ML1.Cells [4,VI_LINHAS1-1];
                                                    STRGR_ML1.Cells [5,VI_LINHAS1]:= STRGR_ML1.Cells [5,VI_LINHAS1-1];
                                        STRGR_ML1.Cells[6,VI_LINHAS1] := 'V' ;
                        VI_LINHAS1 := VI_LINHAS1 +1;
                        STRGR_ML1.RowCount := VI_LINHAS1;
                        STRGR_ML1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                        STRGR_ML1.Cells [1,VI_LINHAS1]:= STRGR_ML1.Cells [2,VI_LINHAS1-5];
                        STRGR_ML1.Cells [2,VI_LINHAS1]:= STRGR_ML1.Cells [1,VI_LINHAS1-5];
                        STRGR_ML1.Cells [3,VI_LINHAS1]:= STRGR_ML1.Cells [3,VI_LINHAS1-5];
                                                    STRGR_ML1.Cells [4,VI_LINHAS1]:= STRGR_ML1.Cells [4,VI_LINHAS1-1];
                                                    STRGR_ML1.Cells [5,VI_LINHAS1]:= STRGR_ML1.Cells [5,VI_LINHAS1-1];
                                        STRGR_ML1.Cells[6,VI_LINHAS1] := 'V' ;
                                                                          }
                            {
                            // invertendo os 2 �ltimos com os 2 primeiros
                            VI_LINHAS1 := VI_LINHAS1 +1;
                            STRGR_ML1.RowCount := VI_LINHAS1;
                            STRGR_ML1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                            STRGR_ML1.Cells [1,VI_LINHAS1]:= STRGR_ML1.Cells [4,VI_LINHAS1-6];
                            STRGR_ML1.Cells [2,VI_LINHAS1]:= STRGR_ML1.Cells [5,VI_LINHAS1-6];
                                STRGR_ML1.Cells [3,VI_LINHAS1]:= STRGR_ML1.Cells [3,VI_LINHAS1-6];
                                                        STRGR_ML1.Cells [4,VI_LINHAS1]:= STRGR_ML1.Cells [1,VI_LINHAS1-6];
                                                        STRGR_ML1.Cells [5,VI_LINHAS1]:= STRGR_ML1.Cells [2,VI_LINHAS1-6];
                            // invertendo os 2 �ltimos com os 2 e o 3 primeiros
                            VI_LINHAS1 := VI_LINHAS1 +1;
                            STRGR_ML1.RowCount := VI_LINHAS1;
                            STRGR_ML1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                            STRGR_ML1.Cells [1,VI_LINHAS1]:= STRGR_ML1.Cells [1,VI_LINHAS1-7];
                            STRGR_ML1.Cells [2,VI_LINHAS1]:= STRGR_ML1.Cells [4,VI_LINHAS1-7];
                                STRGR_ML1.Cells [3,VI_LINHAS1]:= STRGR_ML1.Cells [5,VI_LINHAS1-7];
                                                        STRGR_ML1.Cells [4,VI_LINHAS1]:= STRGR_ML1.Cells [2,VI_LINHAS1-7];
                                                        STRGR_ML1.Cells [5,VI_LINHAS1]:= STRGR_ML1.Cells [3,VI_LINHAS1-7];
                            // invertendo os 2 �ltimos com os 1 e o 3 primeiros
                            VI_LINHAS1 := VI_LINHAS1 +1;
                            STRGR_ML1.RowCount := VI_LINHAS1;
                            STRGR_ML1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_N_COMB) ;
                            STRGR_ML1.Cells [1,VI_LINHAS1]:= STRGR_ML1.Cells [4,VI_LINHAS1-8];
                            STRGR_ML1.Cells [2,VI_LINHAS1]:= STRGR_ML1.Cells [2,VI_LINHAS1-8];
                                STRGR_ML1.Cells [3,VI_LINHAS1]:= STRGR_ML1.Cells [5,VI_LINHAS1-8];
                                                        STRGR_ML1.Cells [4,VI_LINHAS1]:= STRGR_ML1.Cells [1,VI_LINHAS1-8];
                                                        STRGR_ML1.Cells [5,VI_LINHAS1]:= STRGR_ML1.Cells [3,VI_LINHAS1-8];
                           }

                        VI_N_COMB := VI_N_COMB +1;
                        VI_LINHAS1 := VI_LINHAS1 +1;
                        VI_LINHAS2 := VI_LINHAS2 +1;
                        STRGR_ML1.RowCount := VI_LINHAS1;
                        STRGR_ML1_SOBRA.RowCount := VI_LINHAS2;
                    END; // FOR VI_AN_COMB5
                END; // FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
        END; //  FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STRGR_ML1.Repaint;
    STRGR_ML1_SOBRA.Repaint;
    SLEEP(50);
    SELF.Repaint;
    VI_N_COMB := 1;
    VI_LINHAS1 := 1;



    // ======================================================================================
    // ||||==============================================================================||||
    // |||| 	REFINANDO - Eliminando as combina��es  desnecess�rias  ||||
    // ||||==============================================================================||||
    // ======================================================================================


    // combina��o possivel: 19+21+23 = 63 e se as proximas forem 2+4=6  a soma total � 69 que supera o m�xima de 67
    FOR VI_AN_COMB1 :=1 TO (STRGR_ML1_SOBRA.RowCount-1) DO
    BEGIN
        IF (( STRtoINT(STRGR_ML1_SOBRA.Cells[1,VI_AN_COMB1]) >= 18) AND  ( STRtoINT(STRGR_ML1_SOBRA.Cells[2,VI_AN_COMB1]) >= 18) AND  ( STRtoINT(STRGR_ML1_SOBRA.Cells[3,VI_AN_COMB1]) >= 18))
        THEN
        BEGIN
            STRGR_ML1_SOBRA.Cells[4,VI_AN_COMB1] := 'F';
            FOR VI_AN_COMB2:= (VI_AN_COMB1){*5} TO (STRGR_ML1.RowCount-1) DO
            BEGIN
                IF (STRtoINT(STRGR_ML1_SOBRA.Cells[0,VI_AN_COMB1])) = (STRtoINT(STRGR_ML1.Cells[0,VI_AN_COMB2])) THEN
                    STRGR_ML1.Cells[6,VI_AN_COMB2] := 'F'
            END; // FOR VI_AN_COMB2
        END
        ELSE IF ( STRtoINT(STRGR_ML1_SOBRA.Cells[1,VI_AN_COMB1])
                + STRtoINT(STRGR_ML1_SOBRA.Cells[2,VI_AN_COMB1])
                + STRtoINT(STRGR_ML1_SOBRA.Cells[3,VI_AN_COMB1])  >= 60 ) THEN
        BEGIN
            STRGR_ML1_SOBRA.Cells[4,VI_AN_COMB1] := 'F';
            FOR VI_AN_COMB2:= (VI_AN_COMB1){*5} TO (STRGR_ML1.RowCount-1) DO
            BEGIN
                IF (STRtoINT(STRGR_ML1_SOBRA.Cells[0,VI_AN_COMB1])) = (STRtoINT(STRGR_ML1.Cells[0,VI_AN_COMB2])) THEN
                    STRGR_ML1.Cells[6,VI_AN_COMB2] := 'F'
            END; // FOR VI_AN_COMB2
        END
        ELSE
        BEGIN
            STRGR_ML1_SOBRA.Cells[4,VI_AN_COMB1] := 'V';
        END; // IF
    END; // FOR VI_AN_COMB1

    // combina��o possivel: 7+5+3 = 9 e se as proximas forem 24+22=48  a soma total � 57 que � menor o m�xima de 63
    FOR VI_AN_COMB1 :=1 TO (STRGR_ML1_SOBRA.RowCount-1) DO
    BEGIN
        IF (( STRtoINT(STRGR_ML1_SOBRA.Cells[1,VI_AN_COMB1]) <= 7) AND  ( STRtoINT(STRGR_ML1_SOBRA.Cells[2,VI_AN_COMB1]) <= 7) AND  ( STRtoINT(STRGR_ML1_SOBRA.Cells[3,VI_AN_COMB1]) <= 7))
            AND(STRGR_ML1_SOBRA.Cells[4,VI_AN_COMB1] = 'V')
        THEN
        BEGIN
            STRGR_ML1_SOBRA.Cells[4,VI_AN_COMB1] := 'F';
            FOR VI_AN_COMB2:= (VI_AN_COMB1){*5} TO (STRGR_ML1.RowCount-1) DO
            BEGIN
                IF (STRtoINT(STRGR_ML1_SOBRA.Cells[0,VI_AN_COMB1])) = (STRtoINT(STRGR_ML1.Cells[0,VI_AN_COMB2])) THEN
                    STRGR_ML1.Cells[6,VI_AN_COMB2] := 'F'
            END; // FOR VI_AN_COMB2
        END; // IF
    END; // FOR VI_AN_COMB1

    FOR VI_AN_COMB1 :=1 TO (STRGR_ML1_SOBRA.RowCount-1) DO
    BEGIN
       IF (RB_FILTRO04_NORMAL.Checked) or (RB_FILTRO04_RIGOROSO.Checked) then
       BEGIN
            IF (  ( STRtoINT(STRGR_ML1_SOBRA.Cells[1,VI_AN_COMB1])) = STRtoINT( STGR_IMPAR_A.Cells [0,0])   ) or
               (  ( STRtoINT(STRGR_ML1_SOBRA.Cells[1,VI_AN_COMB1])) = STRtoINT( STGR_IMPAR_A.Cells [1,0])   ) {or
               (  ( STRtoINT(STRGR_ML1_SOBRA.Cells[1,VI_AN_COMB1])) = STRtoINT( STGR_IMPAR_A.Cells [2,0])   ) }
            THEN
            BEGIN
                STRGR_ML1_SOBRA.Cells[4,VI_AN_COMB1] := 'F';
                FOR VI_AN_COMB2:= (VI_AN_COMB1){*5} TO (STRGR_ML1.RowCount-1) DO
                BEGIN
                    IF (STRtoINT(STRGR_ML1_SOBRA.Cells[0,VI_AN_COMB1])) = (STRtoINT(STRGR_ML1.Cells[0,VI_AN_COMB2])) THEN
                        STRGR_ML1.Cells[6,VI_AN_COMB2] := 'F'
                END; // FOR VI_AN_COMB2
            END; // IF
       END ELSE
       IF (RB_FILTRO04_MUITORIGOR.Checked) THEN
       BEGIN
            IF (  ( STRtoINT(STRGR_ML1_SOBRA.Cells[1,VI_AN_COMB1])) = STRtoINT( STGR_IMPAR_A.Cells [0,0])   ) or
               (  ( STRtoINT(STRGR_ML1_SOBRA.Cells[1,VI_AN_COMB1])) = STRtoINT( STGR_IMPAR_A.Cells [1,0])   ) or
               (  ( STRtoINT(STRGR_ML1_SOBRA.Cells[1,VI_AN_COMB1])) = STRtoINT( STGR_IMPAR_A.Cells [2,0])   )
            THEN
            BEGIN
                STRGR_ML1_SOBRA.Cells[4,VI_AN_COMB1] := 'F';
                FOR VI_AN_COMB2:= (VI_AN_COMB1){*5} TO (STRGR_ML1.RowCount-1) DO
                BEGIN
                    IF (STRtoINT(STRGR_ML1_SOBRA.Cells[0,VI_AN_COMB1])) = (STRtoINT(STRGR_ML1.Cells[0,VI_AN_COMB2])) THEN
                        STRGR_ML1.Cells[6,VI_AN_COMB2] := 'F'
                END; // FOR VI_AN_COMB2
            END; // IF
       END; // IF
    END; // FOR VI_AN_COMB1



    FOR VI_AN_COMB1 :=1 TO (STRGR_ML2_SOBRA.RowCount-1) DO
    BEGIN
        IF ( STRtoINT(STRGR_ML2_SOBRA.Cells[1,VI_AN_COMB1]) <= 6) AND  ( STRtoINT(STRGR_ML2_SOBRA.Cells[2,VI_AN_COMB1]) <= 6) THEN
        BEGIN
            STRGR_ML2_SOBRA.Cells[3,VI_AN_COMB1] := 'F';
            FOR VI_AN_COMB2:= (VI_AN_COMB1){*5} TO (STRGR_ML2.RowCount-1) DO
            BEGIN
                IF (STRtoINT(STRGR_ML2_SOBRA.Cells[0,VI_AN_COMB1])) = (STRtoINT(STRGR_ML2.Cells[0,VI_AN_COMB2])) THEN
                    STRGR_ML2.Cells[6,VI_AN_COMB2] := 'F'
            END; // FOR VI_AN_COMB2
        END
        ELSE
        BEGIN
            STRGR_ML2_SOBRA.Cells[3,VI_AN_COMB1] := 'V';
        END; // IF
    END; // FOR VI_AN_COMB1

    // ----> MONTADO DE ACORDO COM O N�VEL/RIGOR DO FILTRO.
    FOR VI_AN_COMB1 :=1 TO (STRGR_ML2_SOBRA.RowCount-1) DO
    BEGIN
        IF (RB_FILTRO04_NORMAL.Checked) THEN
        BEGIN
            IF (  ( STRtoINT(STRGR_ML2_SOBRA.Cells[1,VI_AN_COMB1])) = STRtoINT( STGR_PAR_A.Cells [0,0])   )
            THEN
            BEGIN
                STRGR_ML2_SOBRA.Cells[3,VI_AN_COMB1] := 'F';
                FOR VI_AN_COMB2:= (VI_AN_COMB1){*5} TO (STRGR_ML2.RowCount-1) DO
                BEGIN
                    IF (STRtoINT(STRGR_ML2_SOBRA.Cells[0,VI_AN_COMB1])) = (STRtoINT(STRGR_ML2.Cells[0,VI_AN_COMB2])) THEN
                        STRGR_ML2.Cells[6,VI_AN_COMB2] := 'F'
                END; // FOR VI_AN_COMB2
            END; // IF
        END ELSE
        IF (RB_FILTRO04_RIGOROSO.Checked) THEN
        BEGIN
            IF (  ( STRtoINT(STRGR_ML2_SOBRA.Cells[1,VI_AN_COMB1])) = STRtoINT( STGR_PAR_A.Cells [0,0])   ) or
               (  ( STRtoINT(STRGR_ML2_SOBRA.Cells[1,VI_AN_COMB1])) = STRtoINT( STGR_PAR_A.Cells [1,0])   )
            THEN
            BEGIN
                STRGR_ML2_SOBRA.Cells[3,VI_AN_COMB1] := 'F';
                FOR VI_AN_COMB2:= (VI_AN_COMB1){*5} TO (STRGR_ML2.RowCount-1) DO
                BEGIN
                    IF (STRtoINT(STRGR_ML2_SOBRA.Cells[0,VI_AN_COMB1])) = (STRtoINT(STRGR_ML2.Cells[0,VI_AN_COMB2])) THEN
                        STRGR_ML2.Cells[6,VI_AN_COMB2] := 'F'
                END; // FOR VI_AN_COMB2
            END; // IF
        END ELSE
        IF (RB_FILTRO04_MUITORIGOR.Checked) THEN
        BEGIN
            IF (  ( STRtoINT(STRGR_ML2_SOBRA.Cells[1,VI_AN_COMB1])) = STRtoINT( STGR_PAR_A.Cells [0,0])   ) or
               (  ( STRtoINT(STRGR_ML2_SOBRA.Cells[1,VI_AN_COMB1])) = STRtoINT( STGR_PAR_A.Cells [1,0])   )               
            THEN
            BEGIN
                STRGR_ML2_SOBRA.Cells[3,VI_AN_COMB1] := 'F';
                FOR VI_AN_COMB2:= (VI_AN_COMB1){*5} TO (STRGR_ML2.RowCount-1) DO
                BEGIN
                    IF (STRtoINT(STRGR_ML2_SOBRA.Cells[0,VI_AN_COMB1])) = (STRtoINT(STRGR_ML2.Cells[0,VI_AN_COMB2])) THEN
                        STRGR_ML2.Cells[6,VI_AN_COMB2] := 'F'
                END; // FOR VI_AN_COMB2
            END; // IF
        END; // IF (RB_FILTRO04_NORMAL.Checked)
    END; // FOR VI_AN_COMB1

    // *********************************************************
    // ** Montando os primeiros arrays / matrizes na mem�ria  **
    // *********************************************************
    VI_LINHAS1 := 1;
    STRGR_ML1_FINAL.RowCount := 2;
    STRGR_ML1_FINAL.Repaint;
    FOR VI_AN_COMB1 :=1 TO (STRGR_ML1.RowCount-1) DO
    BEGIN
        IF (STRGR_ML1.Cells [6,VI_AN_COMB1] = 'V') THEN
        BEGIN
           { VMS_ML1 [1,VI_LINHAS1] := STRGR_ML1.Cells [4,VI_AN_COMB1];
            VMS_ML1 [2,VI_LINHAS1] := STRGR_ML1.Cells [5,VI_AN_COMB1];
            VMS_ML1 [3,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [1,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
            VMS_ML1 [4,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [2,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
            VMS_ML1 [5,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [3,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];  }

                STRGR_ML1_FINAL.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                STRGR_ML1_FINAL.Cells [1,VI_LINHAS1] := STRGR_ML1.Cells [4,VI_AN_COMB1];
                STRGR_ML1_FINAL.Cells [2,VI_LINHAS1] := STRGR_ML1.Cells [5,VI_AN_COMB1];
                STRGR_ML1_FINAL.Cells [3,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [1,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
                STRGR_ML1_FINAL.Cells [4,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [2,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
                STRGR_ML1_FINAL.Cells [5,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [3,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
                VI_LINHAS1 := VI_LINHAS1 +1;
                STRGR_ML1_FINAL.RowCount := VI_LINHAS1;
        END; // IF  (STRGR_ML1.Cells [1,VI_AN_COMB1] = 'V')
    END; // FOR VI_AN_COMB1
  { VMS_ML1 [1,850] := INTtoSTR(STRGR_ML1.RowCount-1);  }
    IF (RB_FILTRO04_SEMRIGOR.Checked) OR (RB_FILTRO04_PADRAO.Checked) THEN
    BEGIN
        FOR VI_AN_COMB1 :=1 TO (STRGR_ML1.RowCount-1) DO
        BEGIN
            IF (STRGR_ML1.Cells [6,VI_AN_COMB1] = 'V') THEN
            BEGIN
             {   VMS_ML1 [1,VI_LINHAS1] := STRGR_ML1.Cells [3,VI_AN_COMB1];
                VMS_ML1 [2,VI_LINHAS1] := STRGR_ML1.Cells [4,VI_AN_COMB1];
                VMS_ML1 [3,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [1,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
                VMS_ML1 [4,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [2,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
                VMS_ML1 [5,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [3,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];    }

                    STRGR_ML1_FINAL.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                    STRGR_ML1_FINAL.Cells [1,VI_LINHAS1] := STRGR_ML1.Cells [3,VI_AN_COMB1];
                    STRGR_ML1_FINAL.Cells [2,VI_LINHAS1] := STRGR_ML1.Cells [4,VI_AN_COMB1];
                    STRGR_ML1_FINAL.Cells [3,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [1,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
                    STRGR_ML1_FINAL.Cells [4,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [2,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
                    STRGR_ML1_FINAL.Cells [5,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [3,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STRGR_ML1_FINAL.RowCount := VI_LINHAS1;
                    STRGR_ML1_FINAL.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                    STRGR_ML1_FINAL.Cells [1,VI_LINHAS1] := STRGR_ML1.Cells [1,VI_AN_COMB1];
                    STRGR_ML1_FINAL.Cells [2,VI_LINHAS1] := STRGR_ML1.Cells [2,VI_AN_COMB1];
                    STRGR_ML1_FINAL.Cells [3,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [1,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
                    STRGR_ML1_FINAL.Cells [4,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [2,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
                    STRGR_ML1_FINAL.Cells [5,VI_LINHAS1] := STRGR_ML1_SOBRA.Cells [3,STRtoINT(STRGR_ML1.Cells [0,VI_AN_COMB1])];
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STRGR_ML1_FINAL.RowCount := VI_LINHAS1;
            END; // IF  (STRGR_ML1.Cells [1,VI_AN_COMB1] = 'V')
        END; // FOR VI_AN_COMB1
      {  VMS_ML1 [1,850] := INTtoSTR(STRGR_ML1.RowCount-1);  }
    END; // IF (RB_FILTRO04_SEMRIGOR.Checked)


    VI_LINHAS1 := 1;
    STRGR_ML2_FINAL.RowCount := 2;
    STRGR_ML2_FINAL.Repaint;
    FOR VI_AN_COMB1 :=1 TO (STRGR_ML2.RowCount-1) DO
    BEGIN
        IF (STRGR_ML2.Cells [6,VI_AN_COMB1] = 'V') THEN
        BEGIN
               { VMS_ML2 [1,VI_LINHAS1] := STRGR_ML2.Cells [4,VI_AN_COMB1];
                VMS_ML2 [2,VI_LINHAS1] := STRGR_ML2.Cells [5,VI_AN_COMB1];
                VMS_ML2 [3,VI_LINHAS1] := STRGR_ML2_SOBRA.Cells [1,STRtoINT(STRGR_ML2.Cells [0,VI_AN_COMB1])];
                VMS_ML2 [4,VI_LINHAS1] := STRGR_ML2_SOBRA.Cells [2,STRtoINT(STRGR_ML2.Cells [0,VI_AN_COMB1])];}

                STRGR_ML2_FINAL.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                STRGR_ML2_FINAL.Cells [1,VI_LINHAS1] := STRGR_ML2.Cells [4,VI_AN_COMB1];
                STRGR_ML2_FINAL.Cells [2,VI_LINHAS1] := STRGR_ML2.Cells [5,VI_AN_COMB1];
                STRGR_ML2_FINAL.Cells [3,VI_LINHAS1] := STRGR_ML2_SOBRA.Cells [1,STRtoINT(STRGR_ML2.Cells [0,VI_AN_COMB1])];
                STRGR_ML2_FINAL.Cells [4,VI_LINHAS1] := STRGR_ML2_SOBRA.Cells [2,STRtoINT(STRGR_ML2.Cells [0,VI_AN_COMB1])];
                VI_LINHAS1 := VI_LINHAS1 +1;
                STRGR_ML2_FINAL.RowCount := VI_LINHAS1;
        END; // IF  (STRGR_ML2.Cells [1,VI_AN_COMB1] = 'V')
    END; // FOR VI_AN_COMB1
   { VMS_ML2 [1,850] := INTtoSTR(VI_LINHAS1); }
    IF (RB_FILTRO04_SEMRIGOR.Checked) THEN
    BEGIN
        FOR VI_AN_COMB1 :=1 TO (STRGR_ML2.RowCount-1) DO
        BEGIN
            IF (STRGR_ML2.Cells [6,VI_AN_COMB1] = 'V') THEN
            BEGIN
                  {  VMS_ML2 [1,VI_LINHAS1] := STRGR_ML2.Cells [2,VI_AN_COMB1];
                    VMS_ML2 [2,VI_LINHAS1] := STRGR_ML2.Cells [3,VI_AN_COMB1];
                    VMS_ML2 [3,VI_LINHAS1] := STRGR_ML2_SOBRA.Cells [1,STRtoINT(STRGR_ML2.Cells [0,VI_AN_COMB1])];
                    VMS_ML2 [4,VI_LINHAS1] := STRGR_ML2_SOBRA.Cells [2,STRtoINT(STRGR_ML2.Cells [0,VI_AN_COMB1])];  }

                    STRGR_ML2_FINAL.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                    STRGR_ML2_FINAL.Cells [1,VI_LINHAS1] := STRGR_ML2.Cells [2,VI_AN_COMB1];
                    STRGR_ML2_FINAL.Cells [2,VI_LINHAS1] := STRGR_ML2.Cells [3,VI_AN_COMB1];
                    STRGR_ML2_FINAL.Cells [3,VI_LINHAS1] := STRGR_ML2_SOBRA.Cells [1,STRtoINT(STRGR_ML2.Cells [0,VI_AN_COMB1])];
                    STRGR_ML2_FINAL.Cells [4,VI_LINHAS1] := STRGR_ML2_SOBRA.Cells [2,STRtoINT(STRGR_ML2.Cells [0,VI_AN_COMB1])];
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STRGR_ML2_FINAL.RowCount := VI_LINHAS1;
            END; // IF  (STRGR_ML2.Cells [1,VI_AN_COMB1] = 'V')
        END; // FOR VI_AN_COMB1
       { VMS_ML2 [1,850] := INTtoSTR(VI_LINHAS1);  }
    END; // IF (RB_FILTRO04_SEMRIGOR.Checked)

    FOR VI_AN_COMB1 :=1 TO (STRGR_ML3.RowCount-1) DO
    BEGIN
        VMS_ML3 [1,VI_AN_COMB1] := STRGR_ML3.Cells [1,VI_AN_COMB1];
        VMS_ML3 [2,VI_AN_COMB1] := STRGR_ML3.Cells [2,VI_AN_COMB1];
        VMS_ML3 [3,VI_AN_COMB1] := STRGR_ML3.Cells [3,VI_AN_COMB1];
    END; // FOR VI_AN_COMB1
    VMS_ML3 [1,350] := INTtoSTR((STRGR_ML3.RowCount-1));

    FOR VI_AN_COMB1 :=1 TO (STRGR_ML4.RowCount-1) DO
    BEGIN
        VMS_ML4 [1,VI_AN_COMB1] := STRGR_ML4.Cells [1,VI_AN_COMB1];
        VMS_ML4 [2,VI_AN_COMB1] := STRGR_ML4.Cells [2,VI_AN_COMB1];
        VMS_ML4 [3,VI_AN_COMB1] := STRGR_ML4.Cells [3,VI_AN_COMB1];
    END; // FOR VI_AN_COMB1
    VMS_ML4 [1,350] := INTtoSTR((STRGR_ML4.RowCount-1));
    {
    // *********************************************************
    // ** Montando as combina��es poss�veis da linha 3 e 4 e verificando o
    // ** numero menos da linha 1 e maior da linha 2 e tamb�m o maior da linha 1
    // ** eo menor da 2 e somar. Subtrair 54 do menor e dividir por 2 arrendondando
    // ** para cima. Com isso, ao combinar a linha 3 e 4, e se ambas tiverem na
    // ** posi��o 2� ou da 3� casa um numero maior, significa que esta combina��o n�o
    // ** ser� utilizada, por isso ser� descartada.
    // *********************************************************
    VI_MAIOR_L1_3 := STRtoINT(VMS_ML1 [3,1]);
    VI_MENOR_L2_3 := STRtoINT(VMS_ML2 [3,1]);
    VI_MAIOR_L1_2 := STRtoINT(VMS_ML1 [2,1]);
    VI_MENOR_L2_2 := STRtoINT(VMS_ML2 [2,1]);

    VI_MAIOR_L2_3 := STRtoINT(VMS_ML2 [3,1]);
    VI_MENOR_L1_3 := STRtoINT(VMS_ML1 [3,1]);
    VI_MAIOR_L2_2 := STRtoINT(VMS_ML2 [2,1]);
    VI_MENOR_L1_2 := STRtoINT(VMS_ML1 [2,1]);

    FOR VI_CONTARMATRIZ := 1 TO (STRGR_ML1_FINAL.RowCount-1) DO
    BEGIN
        IF VI_MAIOR_L1_2 > STRtoINT(VMS_ML1 [2,VI_CONTARMATRIZ]) THEN
            VI_MAIOR_L1_2 := STRtoINT(VMS_ML1 [2,VI_CONTARMATRIZ]);
        IF VI_MAIOR_L1_3 > STRtoINT(VMS_ML1 [3,VI_CONTARMATRIZ]) THEN
             VI_MAIOR_L1_3 := STRtoINT(VMS_ML1 [3,VI_CONTARMATRIZ]);
        IF VI_MENOR_L1_2 < STRtoINT(VMS_ML1 [2,VI_CONTARMATRIZ]) THEN
             VI_MAIOR_L1_2 := STRtoINT(VMS_ML1 [2,VI_CONTARMATRIZ]);
        IF VI_MENOR_L1_3 < STRtoINT(VMS_ML1 [3,VI_CONTARMATRIZ]) THEN
            VI_MAIOR_L1_3 := STRtoINT(VMS_ML1 [3,VI_CONTARMATRIZ]);
    END; // FOR VI_AN_COMB1
    }
    STRGR_ML1_2_3_4.RowCount := 2;
    VI_LINHAS1 := 1;
    FOR VI_AN_COMB1 := 1 TO (STRGR_ML1_FINAL.RowCount-1) DO
    BEGIN
        FOR VI_AN_COMB2 := 1 TO (STRGR_ML2_FINAL.RowCount-1) DO
        BEGIN
            FOR VI_AN_COMB3 := 1 TO (STRGR_ML3.RowCount-1) DO
            BEGIN
                FOR VI_AN_COMB4 := 1 TO (STRGR_ML4.RowCount-1) DO
                BEGIN
                        STRGR_ML1_2_3_4.Cells[0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                    STRGR_ML1_2_3_4.Cells[1,VI_LINHAS1] := STRGR_ML1_FINAL.Cells[1,VI_AN_COMB1];
                    STRGR_ML1_2_3_4.Cells[2,VI_LINHAS1] := STRGR_ML1_FINAL.Cells[2,VI_AN_COMB1];
                    STRGR_ML1_2_3_4.Cells[3,VI_LINHAS1] := STRGR_ML1_FINAL.Cells[3,VI_AN_COMB1];
                    STRGR_ML1_2_3_4.Cells[4,VI_LINHAS1] := STRGR_ML1_FINAL.Cells[4,VI_AN_COMB1];
                    STRGR_ML1_2_3_4.Cells[5,VI_LINHAS1] := STRGR_ML1_FINAL.Cells[5,VI_AN_COMB1];
                        STRGR_ML1_2_3_4.Cells[6,VI_LINHAS1] := STRGR_ML2_FINAL.Cells[1,VI_AN_COMB2];
                        STRGR_ML1_2_3_4.Cells[7,VI_LINHAS1] := STRGR_ML2_FINAL.Cells[2,VI_AN_COMB2];
                        STRGR_ML1_2_3_4.Cells[8,VI_LINHAS1] := STRGR_ML2_FINAL.Cells[3,VI_AN_COMB2];
                        STRGR_ML1_2_3_4.Cells[9,VI_LINHAS1] := STRGR_ML2_FINAL.Cells[4,VI_AN_COMB2];
                    STRGR_ML1_2_3_4.Cells[10,VI_LINHAS1] := STRGR_ML3.Cells[1,VI_AN_COMB3];
                    STRGR_ML1_2_3_4.Cells[11,VI_LINHAS1] := STRGR_ML3.Cells[2,VI_AN_COMB3];
                    STRGR_ML1_2_3_4.Cells[12,VI_LINHAS1] := STRGR_ML3.Cells[3,VI_AN_COMB3];
                        STRGR_ML1_2_3_4.Cells[13,VI_LINHAS1] := STRGR_ML4.Cells[1,VI_AN_COMB4];
                        STRGR_ML1_2_3_4.Cells[14,VI_LINHAS1] := STRGR_ML4.Cells[2,VI_AN_COMB4];
                        STRGR_ML1_2_3_4.Cells[15,VI_LINHAS1] := STRGR_ML4.Cells[3,VI_AN_COMB4];
                    FOR VI_CONTAR1 := 0 TO 25 DO
                    BEGIN
                        STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,0] :=INTtoSTR (VI_CONTAR1) ;
                        STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,1] :='F';
                    END; // FOR VI_CONTar1
                    STRGR_TODOS_NUMEROS.Repaint;
                    FOR VI_CONTAR1 := 1 TO 15 DO
                    BEGIN
                        STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STRGR_ML1_2_3_4.Cells[VI_CONTAR1,VI_LINHAS1])) ,1]:='V';
                    END; // FOR VI_CONTAR1
                    VI_CNTCELULAS := 1;
                    FOR VI_CONTAR1 :=1 TO 25 DO
                    BEGIN
                        IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,1]='V') THEN
                        BEGIN
                            STRGR_ML1_2_3_4.Cells [VI_CNTCELULAS, VI_LINHAS1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,0]),2) ;
                            //VMS_ML1_2_3_4[VI_CNTCELULAS, VI_LINHAS1] := STRGR_ML1_2_3_4.Cells [VI_CNTCELULAS, VI_LINHAS1];
                            VI_CNTCELULAS := VI_CNTCELULAS + 1;
                        END; // IF (STRGR_TODOS_NUMEROS
                    END; // FOR VI_CONTAR
                    VI_LINHAS1 := VI_LINHAS1+1;
                    STRGR_ML1_2_3_4.RowCount := VI_LINHAS1;
                END; //  FOR VI_AN_COMB4
            END; //  FOR VI_AN_COMB3
        END; //  FOR VI_AN_COMB2
              STRGR_ML1_2_3_4.Repaint;
              LA_Gerando_04_.Caption := FLOATtoSTR(ROUNDto(( (VI_AN_COMB1*VI_AN_COMB2) / ((STRGR_ML1_FINAL.RowCount)*(STRGR_ML2_FINAL.RowCount)) *100 ),-2 ))+ '%';
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(2);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;        
    END; //  FOR VI_AN_COMB1
    LA_Gerando_04_.Caption := '100%' +#13+ INTtoSTR(VI_LINHAS1);
      LA_Gerando_04_.Repaint;
      Self.WindowState := wsMinimized;
      Self.WindowState :=  wsNormal;
      SELF.Repaint;

    VI_CNTCELULAS :=0;
    VI_LINHAS1:=1;
    STGR_COMBINACOES_15M04.RowCount := 2;
    FOR VI_AN_COMB1 := 1 TO (STGR_COMBINACOES_15.RowCount - 1) DO
    BEGIN
        FOR VI_AN_COMB2 := 1 TO (STRGR_ML1_2_3_4.RowCount - 1) DO
        BEGIN
            IF (STGR_COMBINACOES_15.Cells[1,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[1,VI_AN_COMB2])
                AND (STGR_COMBINACOES_15.Cells[2,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[2,VI_AN_COMB2])
            THEN
            BEGIN
            {
                IF (STGR_COMBINACOES_15.Cells[3,VI_AN_COMB1] = VMS_ML1_2_3_4[3,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[4,VI_AN_COMB1] = VMS_ML1_2_3_4[4,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[5,VI_AN_COMB1] = VMS_ML1_2_3_4[5,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[6,VI_AN_COMB1] = VMS_ML1_2_3_4[6,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[7,VI_AN_COMB1] = VMS_ML1_2_3_4[7,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[8,VI_AN_COMB1] = VMS_ML1_2_3_4[8,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[9,VI_AN_COMB1] = VMS_ML1_2_3_4[9,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[10,VI_AN_COMB1] = VMS_ML1_2_3_4[10,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[11,VI_AN_COMB1] = VMS_ML1_2_3_4[11,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[12,VI_AN_COMB1] = VMS_ML1_2_3_4[12,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[13,VI_AN_COMB1] = VMS_ML1_2_3_4[13,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[14,VI_AN_COMB1] = VMS_ML1_2_3_4[14,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[15,VI_AN_COMB1] = VMS_ML1_2_3_4[15,VI_AN_COMB2])
                   }
                IF (STGR_COMBINACOES_15.Cells[3,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[3,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[4,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[4,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[5,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[5,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[6,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[6,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[7,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[7,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[8,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[8,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[9,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[9,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[10,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[10,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[11,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[11,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[12,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[12,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[13,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[13,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[14,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[14,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[15,VI_AN_COMB1] = STRGR_ML1_2_3_4.Cells[15,VI_AN_COMB2])
                THEN
                BEGIN
                    STGR_COMBINACOES_15M04.Cells[0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                    FOR VI_CONTAR1 :=1 TO 15 DO
                    BEGIN
                        STGR_COMBINACOES_15M04.Cells[VI_CONTAR1,VI_LINHAS1] := STGR_COMBINACOES_15.Cells[VI_CONTAR1,VI_AN_COMB1];
                        //STGR_COMBINACOES_15M04.Repaint;
                    END; // FOR VI_CONTAR1
                    STGR_COMBINACOES_15M04.Cells[16,VI_LINHAS1] := INTtoSTR(VI_AN_COMB1);
                    STGR_COMBINACOES_15M04.Cells[17,VI_LINHAS1] := 'V';
                    VI_CNTCELULAS := VI_CNTCELULAS +1;
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STGR_COMBINACOES_15M04.RowCount := VI_LINHAS1;
                END; // IF (STGR_COMBINACOES_15.Cells[3,VI_AN_COMB1]
            END; // IF (STGR_COMBINACOES_15.Cells[1,VI_LINHAS1]
        END; // FOR VI_AN_COMB2
        IF (VI_AN_COMB1/300) = (VI_AN_COMB1 DIV 300) THEN
        BEGIN
              STGR_COMBINACOES_15M04.Repaint;
              LA_FILTRANDO_04_.Caption := FLOATtoSTR(ROUNDto(( VI_AN_COMB1 / (STGR_COMBINACOES_15.RowCount - 1) *100 ),-2 ))+ '%';
              PGBR_FILTRANDO_04.Position := TRUNC(VI_AN_COMB1 / (STGR_COMBINACOES_15.RowCount - 1) *100);
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(2);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END // IF
    END; // FOR VI_AN_COMB1
      STGR_COMBINACOES_15M04.Repaint;
      LA_FILTRANDO_04_.Caption :=  '100% - Resultado total:'+ #13 + INTtoSTR(VI_LINHAS1-1);
      PGBR_FILTRANDO_04.Position := 100;
      LA_FILTRANDO_04_.Repaint;
      PGBR_FILTRANDO_04.Repaint;
      Self.WindowState := wsMinimized;
      Self.WindowState :=  wsNormal;
      SELF.Repaint;

    VI_LINHAS2:=1;
    FOR VI_AN_COMB1 := 1 TO (STGR_COMBINACOES_15M04.RowCount - 1) DO
    BEGIN
        VI_CNTCELULAS := 0;
        VC_TROCA1 :=  STGR_COMBINACOES_15M04.Cells[16,VI_AN_COMB1];
        FOR VI_AN_COMB2 := VI_AN_COMB1 TO (STGR_COMBINACOES_15M04.RowCount - 1) DO
        BEGIN
            IF ((STGR_COMBINACOES_15M04.Cells[16,VI_AN_COMB2]) = VC_TROCA1) THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 1 THEN
                BEGIN
                    STGR_COMBINACOES_15M04.Cells[17,VI_AN_COMB2] := 'F';
                END; //
                IF  (STGR_COMBINACOES_15M04.Cells[17,VI_AN_COMB2] = 'V') THEN
                BEGIN
                     VI_LINHAS2:=VI_LINHAS2+1;
                END; // IF

                STGR_COMBINACOES_15M04.Cells[18,VI_AN_COMB2] := INTtoSTR(VI_LINHAS2);
            END ; // IF
        END; // FOR VI_AN_COMB2
        IF (VI_AN_COMB1/500) = (VI_AN_COMB1 DIV 500) THEN
        BEGIN
              PGBR_REFINANDO_04.Position := TRUNC(VI_AN_COMB1 / (STGR_COMBINACOES_15M04.RowCount - 1) *100);
              PGBR_REFINANDO_04.Repaint;              
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(2);
              Self.Refresh;
              Self.Repaint;
        END // IF
    END; //  FOR VI_AN_COMB1
    STGR_COMBINACOES_15M04.Repaint;
    PGBR_REFINANDO_04.Position := 100;
    PGBR_REFINANDO_04.Repaint;
    LA_FILTRANDO_04_.Caption := LA_FILTRANDO_04_.Caption +#13+ INTtoSTR(VI_LINHAS2-1);
    SHOWMESSAGE('');
end;



procedure TForm1.BBT_M04_ENCERRARClick(Sender: TObject);
VAR
    VI_LINHAS1, VI_AN_COMB1, VI_CONTAR : INTEGER;
begin
    STGR_COMBINACOES_15M04.Repaint;
    STGR_COMBINACOES_15.RowCount := 0;
    VI_LINHAS1 := 0;
    FOR VI_AN_COMB1 :=0 TO (STGR_COMBINACOES_15M04.RowCount ) DO
    BEGIN
        IF (STGR_COMBINACOES_15M04.Cells[17,VI_AN_COMB1] = 'V') THEN
        BEGIN
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
               STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_LINHAS1] := STGR_COMBINACOES_15M04.Cells [VI_CONTAR,VI_AN_COMB1];
            END; //FOR
           VI_LINHAS1 := VI_LINHAS1 +1 ;
           STGR_COMBINACOES_15.RowCount := VI_LINHAS1;
        END; //IF
    END; // FOR
    STGR_COMBINACOES_15.Repaint;
    SHOWMESSAGE ('OK');
    RB_SIM_MODELO_01.Checked := true;
end;




procedure TForm1.BBT_301Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(1);
    BBT_301.Visible := false;
end;

procedure TForm1.BBT_302Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(2);
    BBT_302.Visible := false;
end;

procedure TForm1.BBT_303Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(3);
    BBT_303.Visible := false;
end;

procedure TForm1.BBT_304Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(4);
    BBT_304.Visible := false;
end;

procedure TForm1.BBT_305Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(5);
    BBT_305.Visible := false;
end;

procedure TForm1.BBT_306Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(6);
    BBT_306.Visible := false;
end;

procedure TForm1.BBT_307Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(7);
    BBT_307.Visible := false;
end;

procedure TForm1.BBT_308Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(8);
    BBT_308.Visible := false;
end;

procedure TForm1.BBT_309Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(9);
    BBT_309.Visible := false;
end;

procedure TForm1.BBT_310Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(10);
    BBT_310.Visible := false;
end;

procedure TForm1.BBT_311Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(11);
    BBT_311.Visible := false;
end;

procedure TForm1.BBT_312Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(12);
    BBT_312.Visible := false;
end;

procedure TForm1.BBT_313Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(13);
    BBT_313.Visible := false;
end;

procedure TForm1.BBT_314Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(14);
    BBT_314.Visible := false;
end;

procedure TForm1.BBT_315Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(15);
    BBT_315.Visible := false;
end;

procedure TForm1.BBT_316Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(16);
    BBT_316.Visible := false;
end;

procedure TForm1.BBT_317Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(17);
    BBT_317.Visible := false;
end;

procedure TForm1.BBT_318Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(18);
    BBT_318.Visible := false;
end;

procedure TForm1.BBT_319Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(19);
    BBT_319.Visible := false;
end;

procedure TForm1.BBT_320Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(20);
    BBT_320.Visible := false;
end;

procedure TForm1.BBT_321Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(21);
    BBT_321.Visible := false;
end;

procedure TForm1.BBT_322Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(22);
    BBT_322.Visible := false;
end;

procedure TForm1.BBT_323Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(23);
    BBT_323.Visible := false;
end;

procedure TForm1.BBT_324Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(24);
    BBT_324.Visible := false;
end;

procedure TForm1.BBT_325Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(25);
    BBT_325.Visible := false;
end;






procedure TForm1.BBT_201Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(1);
    BBT_201.Visible := false;
end;

procedure TForm1.BBT_202Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(2);
    BBT_202.Visible := false;
end;

procedure TForm1.BBT_203Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(3);
    BBT_203.Visible := false;
end;

procedure TForm1.BBT_204Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(4);
    BBT_204.Visible := false;
end;

procedure TForm1.BBT_205Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(5);
    BBT_205.Visible := false;
end;

procedure TForm1.BBT_206Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(6);
    BBT_206.Visible := false;
end;

procedure TForm1.BBT_207Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(7);
    BBT_207.Visible := false;
end;

procedure TForm1.BBT_208Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(8);
    BBT_208.Visible := false;
end;

procedure TForm1.BBT_209Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(9);
    BBT_209.Visible := false;
end;

procedure TForm1.BBT_210Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(10);
    BBT_210.Visible := false;
end;

procedure TForm1.BBT_211Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(11);
    BBT_211.Visible := false;
end;

procedure TForm1.BBT_212Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(12);
    BBT_212.Visible := false;
end;

procedure TForm1.BBT_213Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(13);
    BBT_213.Visible := false;
end;

procedure TForm1.BBT_214Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(14);
    BBT_214.Visible := false;
end;

procedure TForm1.BBT_215Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(15);
    BBT_215.Visible := false;
end;

procedure TForm1.BBT_216Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(16);
    BBT_216.Visible := false;
end;

procedure TForm1.BBT_217Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(17);
    BBT_217.Visible := false;
end;

procedure TForm1.BBT_218Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(18);
    BBT_218.Visible := false;
end;

procedure TForm1.BBT_219Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(19);
    BBT_219.Visible := false;
end;

procedure TForm1.BBT_220Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(20);
    BBT_220.Visible := false;
end;

procedure TForm1.BBT_221Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(21);
    BBT_221.Visible := false;
end;

procedure TForm1.BBT_222Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(22);
    BBT_222.Visible := false;
end;

procedure TForm1.BBT_223Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(23);
    BBT_223.Visible := false;
end;

procedure TForm1.BBT_224Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(24);
    BBT_224.Visible := false;
end;



procedure TForm1.BBT_225Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO2(25);
    BBT_225.Visible := false;
end;



procedure TForm1.BBT_M3_SIM_ABClick(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
    MEM_COLUNA_05.Clear;
    BBT_M03_SIMULAR_A.Click;
    MEM_COLUNA_05.Lines.LoadFromFile('C:\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    BBT_M03_SIMULAR_b.Click;
    FOR VI_CONTAR :=1 TO (MEM_COMBINACOES_TODAS.Lines.Count) DO
    BEGIN
        MEM_COLUNA_05.Lines.Add(MEM_COMBINACOES_TODAS.Lines[VI_CONTAR]);
    END; // FOR
    MEM_COLUNA_05.Lines.Add('SIMULA��ES A e B EFETUADAS.');
    MEM_COLUNA_05.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
    showmessage('SIMULA��ES A e B EFETUADAS.')
end;

procedure TForm1.BBT_M3_SIM_ABCClick(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
    MEM_COLUNA_05.Clear;
    BBT_M03_SIMULAR_A.Click;
    MEM_COLUNA_05.Lines.LoadFromFile('C:\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    BBT_M03_SIMULAR_b.Click;
    FOR VI_CONTAR :=1 TO (MEM_COMBINACOES_TODAS.Lines.Count) DO
    BEGIN
        MEM_COLUNA_05.Lines.Add(MEM_COMBINACOES_TODAS.Lines[VI_CONTAR]);
    END; // FOR
    BBT_M03_SIMULAR_C.Click;
    FOR VI_CONTAR :=1 TO (MEM_COMBINACOES_TODAS.Lines.Count) DO
    BEGIN
        MEM_COLUNA_05.Lines.Add(MEM_COMBINACOES_TODAS.Lines[VI_CONTAR]);
    END; // FOR
    MEM_COLUNA_05.Lines.Add('SIMULA��ES A, B e C EFETUADAS.');
    MEM_COLUNA_05.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
    showmessage('SIMULA��ES A, B e C EFETUADAS.')
end;

procedure TForm1.BBT_M3_SIM_BCClick(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
    MEM_COLUNA_05.Clear;
    BBT_M03_SIMULAR_b.Click;
    MEM_COLUNA_05.Lines.LoadFromFile('C:\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    BBT_M03_SIMULAR_C.Click;
    FOR VI_CONTAR :=1 TO (MEM_COMBINACOES_TODAS.Lines.Count) DO
    BEGIN
        MEM_COLUNA_05.Lines.Add(MEM_COMBINACOES_TODAS.Lines[VI_CONTAR]);
    END; // FOR
    MEM_COLUNA_05.Lines.Add('SIMULA��ES B e C EFETUADAS.');
    MEM_COLUNA_05.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
    showmessage('SIMULA��ES B e C EFETUADAS.')
end;

procedure TForm1.BBT_M01_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, VI_CONTAR : INTEGER;
    VC_COMBINACOES : string;
begin
    MEM_COMBINACOES_TODAS.Clear;
   	MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + INTtoSTR(STGR_COMBINACOES_15.RowCount)) ;
   	MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
    FOR VI_CONTAR := 0 TO STGR_COMBINACOES_15.RowCount-1 DO
    BEGIN
		VC_COMBINACOES :='';
    	FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15.Cells[VI_AN_COMB1,VI_CONTAR] +' ';
        END; // FOR VI_AN_COMB1
       	MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
   showmessage('BLOCO DE NOTAS GERADO');
end;









procedure TForm1.BBT_F03_A_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR3, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS : INTEGER;
    VI_QTD1, VI_QTD2, VI_CONTADOR, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
    VC_CMP_ORIGEM, VC_CMP_B : STRING;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA - AN�LISE COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** S�rie 1 c/ 5 e S�rie 2 c/ 6 e s�rie 3 c/ 4 combina��es **
	    // ************************************************************
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    VI_LINHAS := 0;
    if (STGR_COMBINACOES_15F03.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15F03.RowCount;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 6 4';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ';
    LA_TXT11.Refresh;
    LA_TXT21.Caption := 'ANALISANDO 5 6 4  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_05.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_06.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_04.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15F03.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
                                END; // IF (VI_CONTAR_QUANTIDADE
                                STGR_COMBINACOES_15F03.Repaint;
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M32.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        SELF.Repaint;
        LA_TXT31.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    //PGBR_M02.Position := 50;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    SLEEP(50);


    // ================================================
    // ||||========================================||||
    // |||| 	TERCEIRA- AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** S�rie 1 c/ 6 e S�rie 2 c/ 5 e s�rie 3 c/ 4 combina��es **
	    // ************************************************************
    VI_QTD1 := VI_LINHAS;
//    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 6 4 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2);
    LA_TXT11.Repaint;
    LA_TXT21.Caption := 'ANALISANDO: 6 5 4  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_06.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_05.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_04.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15F03.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15F03.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                                STGR_COMBINACOES_15F03.Repaint;
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15F03.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        self.Repaint;
        LA_TXT31.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    //PGBR_M02.Position := 75;
    SELF.Repaint;
    SLEEP(50);
    VI_QTD2 := VI_LINHAS - VI_QTD1;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 6 4 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4 - OK: ' + INTtoSTR(VI_QTD2) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD1);
    LA_TXT11.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    PGBR_M02.Position := 100;
    PGBR_M02.Repaint;
    SLEEP(50);
end;

procedure TForm1.BBT_F03_AClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15F03.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_A_.Click;

    showmessage('PROCESSAMENTO EFETUADO');
end;




procedure TForm1.BBT_F03_BClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15F03.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_B_.Click;

    showmessage('PROCESSAMENTO EFETUADO');
end;

procedure TForm1.BBT_F03_B_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR3, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS : INTEGER;
    VI_QTD3, VI_QTD4, VI_CONTADOR, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;    
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA - AN�LISE COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_QTD3 := 0;
    VI_QTD4 := 0;
    VI_LINHAS := 0;
    if (STGR_COMBINACOES_15F03.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15F03.RowCount;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 7 3';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 5 3';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD3);
    LA_TXT11.Refresh;
    LA_TXT21.Caption := 'ANALISANDO 5 7 3  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_05.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_07.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_03.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 3 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_03.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 3 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15F03.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15F03.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M32.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        SELF.Repaint;        
        LA_TXT31.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    PGBR_M02.Position := 50;
    PGBR_M02.Repaint;
    SLEEP(100);

        // ************************************************************
    	// ** S�rie 1 c/ 7 e S�rie 2 c/ 5 e s�rie 3 c/ 3 combina��es **
	    // ************************************************************
    VI_QTD3 := VI_LINHAS ;
   // VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 7 3 - OK: ' + INTtoSTR(VI_QTD3);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 5 3';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    LA_TXT21.Caption := 'ANALISANDO- 7 5 3  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_07.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_05.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_03.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 3 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_03.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 3 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15F03.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15F03.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M34.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        self.Repaint;
        LA_TXT31.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    VI_QTD4 := VI_LINHAS - VI_QTD3;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 5 7 3 - OK: ' + INTtoSTR(VI_QTD3);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 7 5 3 - OK: ' + INTtoSTR(VI_QTD4) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    PGBR_M02.Position := 100;
    PGBR_M02.Repaint;
end;



procedure TForm1.BBT_F03_C_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR3, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS : INTEGER;
    VI_QTD2, VI_QTD3, VI_CONTADOR, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
    VC_CMP_ORIGEM, VC_CMP_B : STRING;     
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA - AN�LISE COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_QTD2 := 0;
    VI_QTD3 := 0;
    VI_LINHAS := 0;
    if (STGR_COMBINACOES_15F03.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15F03.RowCount;

        // ************************************************************
    	// ** S�rie 1 c/ 6 e S�rie 2 c/ 7e s�rie 3 c/ 2 combina��es **
	    // ************************************************************
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';    
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 7 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD2 + VI_QTD3);
    PA_PAN03.Refresh;
    LA_TXT11.Refresh;
    PA_PAN03.Repaint;
    LA_TXT21.Caption := 'ANALISANDO 6 7 2  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_06.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                BEGIN
                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM];
                    VC_CMP_B      := STGR_M03_SERIE1_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1] ;
                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_07.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                            BEGIN
                            VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                            VC_CMP_B      := STGR_M03_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2] ;
                            IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_02.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 2 DO
                                    BEGIN
                                        VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                        VC_CMP_B      := STGR_M03_SERIE3_02.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3] ;
                                        IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 2 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15F03.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15F03.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M32.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        SELF.Repaint;
        SELF.Repaint;        
        LA_TXT31.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    PGBR_M02.Position := 50;
    PGBR_M02.Repaint;
    SLEEP(100);

    // ================================================
    // ||||========================================||||
    // |||| 	TERCEIRA- AN�LISES COMBINAT�RIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** S�rie 1 c/ 7 e S�rie 2 c/ 6 e s�rie 3 c/ 2 combina��es **
	    // ************************************************************
    VI_QTD2 := VI_LINHAS;
 //   VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 7 2 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Repaint;
    LA_TXT21.Caption := 'ANALISANDO: 7 6 2  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_07.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                BEGIN
                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM];
                    VC_CMP_B      := STGR_M03_SERIE1_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1] ;
                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_06.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                            BEGIN
                                VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                VC_CMP_B      := STGR_M03_SERIE2_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2] ;
                                IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_02.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 2 DO
                                    BEGIN
                                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                    VC_CMP_B      := STGR_M03_SERIE3_02.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3] ;
                                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 2 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15F03.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15F03.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15F03.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        SELF.Repaint;
        LA_TXT31.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    PGBR_M02.Position := 75;
    PGBR_M02.Repaint;
    SLEEP(100);

    VI_QTD3 := VI_LINHAS - VI_QTD2;
    LA_TXT11.Caption := 'TOTAL DE COMBINA��ES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 7 2 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2' + INTtoSTR(VI_QTD3);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_LINHAS);
    LA_TXT11.Repaint;
    PGBR_M02.Position := 100;
    PGBR_M02.Repaint;
end;

procedure TForm1.BBT_F03_CClick(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15F03.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_C_.Click;

    showmessage('PROCESSAMENTO EFETUADO');
end;

procedure TForm1.BBT_F03_DClick(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15F03.RowCount :=0;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;

    BBT_F03_A_.Click;
    BBT_F03_B_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;

procedure TForm1.BBT_F03_EClick(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15F03.RowCount :=0;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_A_.Click;
    BBT_F03_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;

procedure TForm1.BBT_F03_FClick(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15F03.RowCount :=0;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_B_.Click;
    BBT_F03_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');    
end;

procedure TForm1.BBT_F03_GClick(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15F03.RowCount :=0;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_A_.Click;
    BBT_F03_B_.Click;
    BBT_F03_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');    
end;


procedure TForm1.BBT_F03_ENCERRARClick(Sender: TObject);
VAR
    VI_AN_COMB1, VI_CONTAR : INTEGER;
begin
    STGR_COMBINACOES_15F03.Repaint;
    STGR_COMBINACOES_15.RowCount := 0;
    FOR VI_AN_COMB1 :=1 TO (STGR_COMBINACOES_15F03.RowCount ) DO
    BEGIN
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
           STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_AN_COMB1] := STGR_COMBINACOES_15F03.Cells [VI_CONTAR,VI_AN_COMB1];
           STGR_COMBINACOES_15.RowCount := VI_AN_COMB1;
        END;
    END;
    STGR_COMBINACOES_15.Repaint;
    SHOWMESSAGE ('OK');
    RB_SIM_MODELO_01.Checked := true;
    //BBT_EXECUTAR_SEL.Enabled := TRUE;
end;





procedure TForm1.BBT_M02_SIMULAR_BClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_B_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;

procedure TForm1.BBT_M02_SIMULAR_CClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;

procedure TForm1.BBT_M02_SIMULAR_DClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_A_.Click;
    BBT_M02_SIMULAR_B_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;

procedure TForm1.BBT_M02_SIMULAR_EClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_A_.Click;
    BBT_M02_SIMULAR_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;

procedure TForm1.BBT_M02_SIMULAR_GClick(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_A_.Click;
    BBT_M02_SIMULAR_B_.Click;
    BBT_M02_SIMULAR_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
var
    VI_CONTAR1,VI_CONTAR_QUANTIDADE, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
    STGR_COMBINACOES_15M2.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15M2.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15M2.Repaint;
    BBT_M02_SIMULAR_A_.Click;
    BBT_M02_SIMULAR_B_.Click;
    BBT_M02_SIMULAR_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;

procedure TForm1.BBT_M02_SIMULAR_H_Click(Sender: TObject);
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
begin
        // *********************************************
    	// ** S�rie 1 c/ 8 e S�rie 2 c/ 7 combina��es **
	    // *********************************************
    LA_TXT1.Caption := ' 7 X 8               ';
    LA_TXT2.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT3.Caption := '       ' +#13+ '       ' +#13+ '       ';
    LA_TXT2.Repaint;
    LA_TXT3.Repaint;
    if (STGR_COMBINACOES_15M2.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15M2.RowCount;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M02_SERIE1_08.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO C�LULA POR C�LULA NA PRIMEIRA S�RIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M02_SERIE1_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINA��ES SEJA VERDADEIRAS, VERIFICIAR NA PR�XIMA S�RIE
            IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M02_SERIE2_07.RowCount-1) DO
                    BEGIN
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M02_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
                        BEGIN
                            // LA_TXT1.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR1);
                            // LA_TXT1.Repaint;
                            VI_CONTAR_QUANTIDADE := 0;
                            STGR_COMBINACOES_15M2.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                            FOR VI_CONTAR15:=1 TO 15 DO
                            BEGIN
                                STGR_COMBINACOES_15M2.Cells [VI_CONTAR15,VI_LINHAS] := STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM];
                            END ;// FOR VI_CONTAR15
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_COMBINACOES_15M2.RowCount := VI_LINHAS;
                            STGR_COMBINACOES_15M2.Repaint;
                        END; // IF (VI_CONTAR_QUANTIDADE = 6 )
                        // --> SENDO AS COMBINA��ES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE = 9)
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M2.Repaint;
        LA_TXT2.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_CONTAR_ORIGEM) ;
        LA_TXT2.Caption := LA_TXT2.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT2.Repaint;
        if (VI_CONTAR_ORIGEM / 200)=(VI_CONTAR_ORIGEM DIV 200) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0

end;




procedure TForm1.BBT_M04_FILTRARClick(Sender: TObject);
VAR
    VMI_MATRIZ01FILTRO:  ARRAY [1..9] OF ARRAY [1..6] OF INTEGER;    // VMI = Variavel Matriz Inteira
    VI_LINHAS1, VI_LINHAS2, VI_CONTAR1, VI_CNTCELULAS : INTEGER;
  	VI_AN_COMB0, VI_AN_COMB1, VI_AN_COMB2, VI_AN_COMB3, VI_AN_COMB4, VI_AN_COMB5, VI_AN_COMB6, VI_AN_COMB7 : INTEGER;
  	VI_AN_COMB8, VI_AN_COMB9, VI_AN_COMBa, VI_AN_COMBb, VI_AN_COMBc, VI_AN_COMBd, VI_AN_COMBe, VI_AN_COMBf : INTEGER;
    VI_VALOR_SOMA_INICIAL, VI_VALOR_SOMA_FINAL, VI_VALOR_SOMA1, VI_VALOR_SOMA2 : SMALLINT;


    PROCEDURE PR_Atualizar_Matriz01();
    VAR
        VI_COL_ARRAY, VI_LIN_ARRAY : SMALLINT;
    BEGIN
        FOR VI_COL_ARRAY := 1 TO 9 DO
        BEGIN
            FOR VI_LIN_ARRAY := 1 TO 6 DO
            BEGIN
                STGR_M05_MATRIZBASE.Cells [VI_COL_ARRAY,VI_LIN_ARRAY] := RIGHTSTR('0'+INTtoSTR(VMI_MATRIZ01FILTRO [VI_COL_ARRAY,VI_LIN_ARRAY]),2);
            END; // FOR VI_LIN_ARRAY
            STGR_M05_MATRIZBASE.Cells [9,3] := INTtoSTR(VMI_MATRIZ01FILTRO [9,3]);
            STGR_M05_MATRIZBASE.Cells [9,4] := INTtoSTR(VMI_MATRIZ01FILTRO [9,4]);
        END; // FOR VI_COL_ARRAY
        STGR_M05_MATRIZBASE.Repaint;
    END;   //  PROCEDURE PR_Atualizar_Matriz01()



begin
    STGR_COMBINACOES_15M05.Free;
    STGR_COMBINACOES_15M05 := TstringGrid.Create(Self);
    STGR_COMBINACOES_15M05.Parent := Self.PA_PAN05;

    STGR_COMBINACOES_15M05.RowCount := 3;
    STGR_COMBINACOES_15M05.ColCount := 16;
    STGR_COMBINACOES_15M05.DefaultColWidth  := 46;
    STGR_COMBINACOES_15M05.DefaultRowHeight := 22;
    STGR_COMBINACOES_15M05.FixedCols := 1;
    STGR_COMBINACOES_15M05.FixedRows := 1;
    STGR_COMBINACOES_15M05.Color  := $00E4F5AF;
    STGR_COMBINACOES_15M05.Left   := 14 ;
    STGR_COMBINACOES_15M05.Top    := 321 ;
    STGR_COMBINACOES_15M05.Width  := 780 ;
    STGR_COMBINACOES_15M05.Height := 136  ;


    LA_M05_ETAPA1N.Caption :='         ';
    LA_M05_ETAPA2Np.Caption :='         ';
    LA_M05_ETAPA3Np.Caption :='         ';
    LA_M05_ETAPA3N.Caption :='         ';
    LA_M05_ETAPA4NP.Caption :='         ';
    LA_M05_ETAPA4N.Caption :='         ';
    STGR_M05_1LINHA1.RowCount :=2;
    STGR_M05_1LINHA1.Cells[1,1] := '0';
    STGR_M05_1LINHA1.Cells[2,1] := '0';
    STGR_M05_1LINHA1.Cells[3,1] := '0';
    STGR_M05_1LINHA1.Cells[4,1] := '0';
    STGR_M05_1LINHA1.Cells[5,1] := '0';
    STGR_M05_1LINHA1.Cells[6,1] := '0';
    STGR_M05_1LINHA1.Cells[7,1] := '0';
    STGR_M05_1LINHA2.RowCount :=2;
    STGR_M05_1LINHA2.Cells[1,1] := '0';
    STGR_M05_1LINHA2.Cells[2,1] := '0';
    STGR_M05_1LINHA2.Cells[3,1] := '0';
    STGR_M05_1LINHA2.Cells[4,1] := '0';
    STGR_M05_1LINHA2.Cells[5,1] := '0';
    STGR_M05_1LINHA2.Cells[6,1] := '0';
    PGBR_M05_ETAPA1.Position :=0;
    PGBR_M05_ETAPA2.Position :=0;
    PGBR_M05_ETAPA3.Position :=0;
    PGBR_M05_ETAPA4.Position :=0;
    PGBR_M05_ETAPA1.Repaint;
    PGBR_M05_ETAPA2.Repaint;
    PGBR_M05_ETAPA3.Repaint;
    PGBR_M05_ETAPA4.Repaint;
    LA_M05_ETAPA4NP.Repaint;
    LA_M05_ETAPA4N.Repaint;
    SELF.Repaint;
    // =======================================================
    // ||||===============================================||||
    // |||| 	PRIMEIRO ETAPA - MONTANDO O ARRAY         ||||
    // ||||===============================================||||
    // =======================================================
    VMI_MATRIZ01FILTRO [1,1] := STRtoINT( STGR_IMPAR_A.Cells [0,0] );
    VMI_MATRIZ01FILTRO [2,1] := STRtoINT( STGR_IMPAR_A.Cells [1,0] );
    VMI_MATRIZ01FILTRO [3,1] := STRtoINT( STGR_IMPAR_A.Cells [2,0] );
    VMI_MATRIZ01FILTRO [4,1] := STRtoINT( STGR_IMPAR_A.Cells [3,0] );
    VMI_MATRIZ01FILTRO [5,1] := STRtoINT( STGR_IMPAR_A.Cells [4,0] );
    VMI_MATRIZ01FILTRO [6,1] := STRtoINT( STGR_IMPAR_A.Cells [5,0] );
    VMI_MATRIZ01FILTRO [7,1] := STRtoINT( STGR_IMPAR_A.Cells [6,0] );
    VMI_MATRIZ01FILTRO [8,1] := STRtoINT( STGR_IMPAR_A.Cells [7,0] );

    VMI_MATRIZ01FILTRO [1,2] := STRtoINT( STGR_PAR_A.Cells [0,0] );
    VMI_MATRIZ01FILTRO [2,2] := STRtoINT( STGR_PAR_A.Cells [1,0] );
    VMI_MATRIZ01FILTRO [3,2] := STRtoINT( STGR_PAR_A.Cells [2,0] );
    VMI_MATRIZ01FILTRO [4,2] := STRtoINT( STGR_PAR_A.Cells [3,0] );
    VMI_MATRIZ01FILTRO [5,2] := STRtoINT( STGR_PAR_A.Cells [4,0] );
    VMI_MATRIZ01FILTRO [6,2] := STRtoINT( STGR_PAR_A.Cells [5,0] );
    VMI_MATRIZ01FILTRO [7,2] := STRtoINT( STGR_PAR_A.Cells [6,0] );

    VMI_MATRIZ01FILTRO [1,3] := STRtoINT( STGR_IMPAR_B.Cells [0,0] );
    VMI_MATRIZ01FILTRO [2,3] := STRtoINT( STGR_IMPAR_B.Cells [1,0] );
    VMI_MATRIZ01FILTRO [3,3] := STRtoINT( STGR_IMPAR_B.Cells [2,0] );
    VMI_MATRIZ01FILTRO [4,3] := STRtoINT( STGR_IMPAR_B.Cells [3,0] );
    VMI_MATRIZ01FILTRO [5,3] := STRtoINT( STGR_IMPAR_B.Cells [4,0] );

    VMI_MATRIZ01FILTRO [1,4] := STRtoINT( STGR_PAR_B.Cells [0,0] );
    VMI_MATRIZ01FILTRO [2,4] := STRtoINT( STGR_PAR_B.Cells [1,0] );
    VMI_MATRIZ01FILTRO [3,4] := STRtoINT( STGR_PAR_B.Cells [2,0] );
    VMI_MATRIZ01FILTRO [4,4] := STRtoINT( STGR_PAR_B.Cells [3,0] );
    VMI_MATRIZ01FILTRO [5,4] := STRtoINT( STGR_PAR_B.Cells [4,0] );

    VMI_MATRIZ01FILTRO [9,1] := 0;
    VMI_MATRIZ01FILTRO [8,2] := 0;
    VMI_MATRIZ01FILTRO [9,2] := 0;
    VMI_MATRIZ01FILTRO [6,3] := 0;
    VMI_MATRIZ01FILTRO [7,3] := 0;
    VMI_MATRIZ01FILTRO [8,3] := 0;
    VMI_MATRIZ01FILTRO [6,4] := 0;
    VMI_MATRIZ01FILTRO [7,4] := 0;
    VMI_MATRIZ01FILTRO [8,4] := 0;

    VMI_MATRIZ01FILTRO [9,3] := STRtoINT( STGR_IMPAR_B.Cells [0,0] )
                                + STRtoINT( STGR_IMPAR_B.Cells [1,0] )
                                + STRtoINT( STGR_IMPAR_B.Cells [2,0] )
                                + STRtoINT( STGR_IMPAR_B.Cells [3,0] )
                                + STRtoINT( STGR_IMPAR_B.Cells [4,0] );
    VMI_MATRIZ01FILTRO [9,4] := STRtoINT( STGR_PAR_B.Cells [0,0] )
                               + STRtoINT( STGR_PAR_B.Cells [1,0] )
                               + STRtoINT( STGR_PAR_B.Cells [2,0] )
                               + STRtoINT( STGR_PAR_B.Cells [3,0] )
                               + STRtoINT( STGR_PAR_B.Cells [4,0] );
    PR_Atualizar_Matriz01() ;

    // =======================================================================================
    // ||||===============================================================================||||
    // |||| 	ETAPA 1 - AN�LISES COMBINAT�RIAS para gerar as combina��es da 1� Linha]   ||||
    // ||||===============================================================================||||
    // =======================================================================================
    // *****************************************************
    // ** An�lise combinat�ria  **
    // *****************************************************
	VI_LINHAS1:= 1;
    VI_LINHAS2:= 1;
    STGR_M05_1LINHA1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
    FOR VI_AN_COMB1 :=0 TO 3 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 7 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 7 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 7 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 7 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 7 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 7 DO
                            BEGIN
                                // ----> ZERANDO TODOS OS FLAGS
                                FOR VI_CONTAR1 := 0 TO 7 DO
                                BEGIN
                                    STGR_IMPAR_A.Cells[VI_CONTAR1,1] := 'F';
                                END; // FOR VI_CONTAR
                                // ----> MONTANDO A AN�LISE DOS DADOS
                                // ----> INDICE
                                STGR_M05_1LINHA1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                                // ----> DADOS
                                STGR_M05_1LINHA1.Cells [1,VI_LINHAS1] := STGR_IMPAR_A.Cells[VI_AN_COMB1,0] ;
                                STGR_M05_1LINHA1.Cells [2,VI_LINHAS1] := STGR_IMPAR_A.Cells[VI_AN_COMB2,0] ;
                                STGR_M05_1LINHA1.Cells [3,VI_LINHAS1] := STGR_IMPAR_A.Cells[VI_AN_COMB3,0] ;
                                STGR_M05_1LINHA1.Cells [4,VI_LINHAS1] := STGR_IMPAR_A.Cells[VI_AN_COMB4,0] ;
                                STGR_M05_1LINHA1.Cells [5,VI_LINHAS1] := STGR_IMPAR_A.Cells[VI_AN_COMB5,0] ;
                                STGR_M05_1LINHA1.Cells [6,VI_LINHAS1] := STGR_IMPAR_A.Cells[VI_AN_COMB6,0] ;
                                IF (VI_AN_COMB7=6) THEN STGR_M05_1LINHA1.Cells [7,VI_LINHAS1] := STGR_IMPAR_A.Cells[6,0] ;
                                IF (VI_AN_COMB7=7) THEN STGR_M05_1LINHA1.Cells [7,VI_LINHAS1] := STGR_IMPAR_A.Cells[7,0] ;
                                STGR_M05_1LINHA1.Cells [8,VI_LINHAS1] := '--' ;
                                STGR_M05_1LINHA1.Cells [9,VI_LINHAS1] :=  INTtoSTR( STRtoINT(STGR_M05_1LINHA1.Cells [1,VI_LINHAS1])
                                                                          + STRtoINT(STGR_M05_1LINHA1.Cells [2,VI_LINHAS1])
                                                                          + STRtoINT(STGR_M05_1LINHA1.Cells [3,VI_LINHAS1])
                                                                          + STRtoINT(STGR_M05_1LINHA1.Cells [4,VI_LINHAS1])
                                                                          + STRtoINT(STGR_M05_1LINHA1.Cells [5,VI_LINHAS1])
                                                                          + STRtoINT(STGR_M05_1LINHA1.Cells [6,VI_LINHAS1])
                                                                          + STRtoINT(STGR_M05_1LINHA1.Cells [7,VI_LINHAS1]) );
                                // ----> SETANDO OS FLAGS
                                    STGR_IMPAR_A.Cells[VI_AN_COMB1,1] :='V';
                                    STGR_IMPAR_A.Cells[VI_AN_COMB2,1] :='V';
                                    STGR_IMPAR_A.Cells[VI_AN_COMB3,1] :='V';
                                    STGR_IMPAR_A.Cells[VI_AN_COMB4,1] :='V';
                                    STGR_IMPAR_A.Cells[VI_AN_COMB5,1] :='V';
                                    STGR_IMPAR_A.Cells[VI_AN_COMB6,1] :='V';
                                IF (VI_AN_COMB7=6) THEN STGR_IMPAR_A.Cells[6,1] :='V';
                                IF (VI_AN_COMB7=7) THEN STGR_IMPAR_A.Cells[7,1] :='V';
                                 // ----> Montando os n�mero que sobraram --
                                 VI_CNTCELULAS :=1;
                                 {
                                 FOR VI_CONTAR1 := 0 TO 7 DO
                                 BEGIN
                                    IF (STGR_IMPAR_A.Cells[VI_CONTAR1,1]='F') THEN
                                    BEGIN
                                        STGR_M05_1LINHA1.Cells[VI_CNTCELULAS,VI_LINHAS2]:= STGR_IMPAR_A.Cells[VI_CONTAR1,0];
                                        VI_CNTCELULAS :=VI_CNTCELULAS+1;
                                    END; // IF (STGR_IMPAR_A.Cells
                                 END; // FOR VI_CON TAR
                                 }
                                VI_LINHAS1 := VI_LINHAS1 +1;
                                STGR_M05_1LINHA1.RowCount := VI_LINHAS1;
                            END; // FOR VI_AN_COMB7
                        END; // FOR VI_AN_COMB6
                    END; // FOR VI_AN_COMB5
                END; // FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
        END; //  FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    PGBR_M05_ETAPA1.Position :=30;
    LA_M05_ETAPA1N.Caption :='30 %';
    LA_M05_ETAPA1N.Repaint;
    PGBR_M05_ETAPA1.Repaint;
    STGR_M05_1LINHA1.Repaint;
    SLEEP(90);
    SELF.Repaint;
    VI_LINHAS1 := 1;
    // =======================================================================================
    // ||||===============================================================================||||
    // |||| 	ETAPA 1 - AN�LISES COMBINAT�RIAS para gerar as combina��es da 2� Linha]   ||||
    // ||||===============================================================================||||
    // =======================================================================================
    // *****************************************************
    // ** An�lise combinat�ria  **
    // *****************************************************
	VI_LINHAS1:= 1;
    VI_LINHAS2:= 1;
    STGR_M05_1LINHA2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
    FOR VI_AN_COMB1 :=0 TO 3 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 6 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 6 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 6 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 6 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 6 DO
                        BEGIN
                                // ----> ZERANDO TODOS OS FLAGS
                                FOR VI_CONTAR1 := 0 TO 7 DO
                                BEGIN
                                    STGR_PAR_A.Cells[VI_CONTAR1,1] := 'F';
                                END; // FOR VI_CONTAR
                                // ----> MONTANDO A AN�LISE DOS DADOS
                                // ----> INDICE
                                STGR_M05_1LINHA2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                                // ----> DADOS
                                STGR_M05_1LINHA2.Cells [1,VI_LINHAS1] := STGR_PAR_A.Cells[VI_AN_COMB1,0] ;
                                STGR_M05_1LINHA2.Cells [2,VI_LINHAS1] := STGR_PAR_A.Cells[VI_AN_COMB2,0] ;
                                STGR_M05_1LINHA2.Cells [3,VI_LINHAS1] := STGR_PAR_A.Cells[VI_AN_COMB3,0] ;
                                STGR_M05_1LINHA2.Cells [4,VI_LINHAS1] := STGR_PAR_A.Cells[VI_AN_COMB4,0] ;
                                STGR_M05_1LINHA2.Cells [5,VI_LINHAS1] := STGR_PAR_A.Cells[VI_AN_COMB5,0] ;
                                IF (VI_AN_COMB6=5) THEN STGR_M05_1LINHA2.Cells [6,VI_LINHAS1] := STGR_PAR_A.Cells[5,0] ;
                                IF (VI_AN_COMB6=6) THEN STGR_M05_1LINHA2.Cells [6,VI_LINHAS1] := STGR_PAR_A.Cells[6,0] ;
                                STGR_M05_1LINHA2.Cells [7,VI_LINHAS1] := '--' ;
                                STGR_M05_1LINHA2.Cells [8,VI_LINHAS1] :=  INTtoSTR( STRtoINT(STGR_M05_1LINHA2.Cells [1,VI_LINHAS1])
                                                                          + STRtoINT(STGR_M05_1LINHA2.Cells [2,VI_LINHAS1])
                                                                          + STRtoINT(STGR_M05_1LINHA2.Cells [3,VI_LINHAS1])
                                                                          + STRtoINT(STGR_M05_1LINHA2.Cells [4,VI_LINHAS1])
                                                                          + STRtoINT(STGR_M05_1LINHA2.Cells [5,VI_LINHAS1])
                                                                          + STRtoINT(STGR_M05_1LINHA2.Cells [6,VI_LINHAS1]) );
                                // ----> SETANDO OS FLAGS
                                    STGR_PAR_A.Cells[VI_AN_COMB1,1] :='V';
                                    STGR_PAR_A.Cells[VI_AN_COMB2,1] :='V';
                                    STGR_PAR_A.Cells[VI_AN_COMB3,1] :='V';
                                    STGR_PAR_A.Cells[VI_AN_COMB4,1] :='V';
                                    STGR_PAR_A.Cells[VI_AN_COMB5,1] :='V';
                                IF (VI_AN_COMB6=5) THEN STGR_PAR_A.Cells[5,1] :='V';
                                IF (VI_AN_COMB6=6) THEN STGR_PAR_A.Cells[6,1] :='V';
                                 // ----> Montando os n�mero que sobraram --
                                 VI_CNTCELULAS :=1;
                                 {
                                 FOR VI_CONTAR1 := 0 TO 7 DO
                                 BEGIN
                                    IF (STGR_PAR_A.Cells[VI_CONTAR1,1]='F') THEN
                                    BEGIN
                                        STGR_M05_1LINHA2.Cells[VI_CNTCELULAS,VI_LINHAS2]:= STGR_PAR_A.Cells[VI_CONTAR1,0];
                                        VI_CNTCELULAS :=VI_CNTCELULAS+1;
                                    END; // IF (STGR_IMPAR_A.Cells
                                 END; // FOR VI_CON TAR
                                 }
                                VI_LINHAS1 := VI_LINHAS1 +1;
                                STGR_M05_1LINHA2.RowCount := VI_LINHAS1;
                        END; // FOR VI_AN_COMB6
                    END; // FOR VI_AN_COMB5
                END; // FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
        END; //  FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    PGBR_M05_ETAPA1.Position :=70;
    LA_M05_ETAPA1N.Caption :='70 %';
    LA_M05_ETAPA1N.Repaint;
    PGBR_M05_ETAPA1.Repaint;
    STGR_M05_1LINHA1.Repaint;
    STGR_M05_1LINHA2.Repaint;
    SLEEP(90);
    SELF.Repaint;
    // =============================================================================
    // ||||=====================================================================||||
    // |||| 	ETAPA 1 - FINAL - GRUPO DE ANALISES COMBINAT�RIA POSS�VEIS:     ||||
    // ||||=====================================================================||||
    // =============================================================================
    STGR_M05_1LINHA1e2.RowCount :=2;
    STGR_M05_1LINHA1e2.Cells[0,1] := '00';
    STGR_M05_1LINHA1e2.Cells[1,1] := '00';
    STGR_M05_1LINHA1e2.Cells[2,1] := '00';
    STGR_M05_1LINHA1e2.Cells[3,1] := '00';
    STGR_M05_1LINHA1e2.Cells[4,1] := '00';
    STGR_M05_1LINHA1e2.Cells[5,1] := '00';
    STGR_M05_1LINHA1e2.Cells[6,1] := '00';
    STGR_M05_1LINHA1e2.Cells[7,1] := '00';
    STGR_M05_1LINHA1e2.Cells[8,1] := '00';
    STGR_M05_1LINHA1e2.Cells[9,1] := '00';
    STGR_M05_1LINHA1e2.Cells[10,1] := '00';
    STGR_M05_1LINHA1e2.Cells[11,1] := '00';
    STGR_M05_1LINHA1e2.Cells[12,1] := '00';
    STGR_M05_1LINHA1e2.Cells[13,1] := '00';
    STGR_M05_1LINHA1e2.Cells[14,1] := '00';
    STGR_M05_1LINHA1e2.Cells[15,1] := '00';
    STGR_M05_1LINHA1e2.Cells[16,1] := '00';
    STGR_M05_1LINHA1e2.Cells[17,1] := '00';
    STGR_M05_1LINHA1e2.Cells[18,1] := '00';
    STGR_M05_1LINHA1e2.Cells[19,1] := '00';
    STGR_M05_1LINHA1e2.Cells[20,1] := '00';
    STGR_M05_1LINHA1e2.Cells[21,1] := '00';
    STGR_M05_1LINHA1e2.Cells[22,1] := '00';
    STGR_M05_1LINHA1e2.Cells[23,1] := '00';
    STGR_M05_1LINHA1e2.Cells[24,1] := '00';
    STGR_M05_1LINHA1e2.Cells[25,1] := '00';
    STGR_M05_1LINHA1e2.Cells[26,1] := '00';
    STGR_M05_1LINHA1e2.Cells[27,1] := '00';
    STGR_M05_1LINHA1e2.Cells[28,1] := '00';
    STGR_M05_1LINHA1e2.Repaint;
    Self.Repaint;
    IF (CB_M04_TOTAL1.ItemIndex = 0) THEN VI_VALOR_SOMA_INICIAL := 290
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 1) THEN VI_VALOR_SOMA_INICIAL := 292
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 2) THEN VI_VALOR_SOMA_INICIAL := 294
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 3) THEN VI_VALOR_SOMA_INICIAL := 296
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 4) THEN VI_VALOR_SOMA_INICIAL := 298
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 5) THEN VI_VALOR_SOMA_INICIAL := 300
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 6) THEN VI_VALOR_SOMA_INICIAL := 302
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 7) THEN VI_VALOR_SOMA_INICIAL := 304
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 8) THEN VI_VALOR_SOMA_INICIAL := 306
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 9) THEN VI_VALOR_SOMA_INICIAL := 308
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 10) THEN VI_VALOR_SOMA_INICIAL := 290
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 11) THEN VI_VALOR_SOMA_INICIAL := 294
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 12) THEN VI_VALOR_SOMA_INICIAL := 292;


    IF (CB_M04_TOTAL1.ItemIndex = 0) THEN VI_VALOR_SOMA_FINAL := 290
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 1) THEN VI_VALOR_SOMA_FINAL := 292
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 2) THEN VI_VALOR_SOMA_FINAL := 294
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 3) THEN VI_VALOR_SOMA_FINAL := 296
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 4) THEN VI_VALOR_SOMA_FINAL := 298
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 5) THEN VI_VALOR_SOMA_FINAL := 300
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 6) THEN VI_VALOR_SOMA_FINAL := 302
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 7) THEN VI_VALOR_SOMA_FINAL := 304
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 8) THEN VI_VALOR_SOMA_FINAL := 306
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 9) THEN VI_VALOR_SOMA_FINAL := 308
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 10) THEN VI_VALOR_SOMA_FINAL := 292
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 11) THEN VI_VALOR_SOMA_FINAL := 298
     ELSE
    IF (CB_M04_TOTAL1.ItemIndex = 12) THEN VI_VALOR_SOMA_FINAL := 308;

    VI_VALOR_SOMA1 :=  STRtoINT (STGR_M05_MATRIZBASE.Cells [9,3]) + STRtoINT(STGR_M05_MATRIZBASE.Cells [9,4]);     //----> SOMA DA 3� E 4� LINHA
    VI_LINHAS1 := 1;

    FOR VI_AN_COMB1 :=1 TO (STGR_M05_1LINHA1.RowCount-1) DO
    BEGIN
        FOR VI_AN_COMB2 :=1 TO (STGR_M05_1LINHA2.RowCount-1) DO
        BEGIN
            VI_VALOR_SOMA2 := STRtoINT (STGR_M05_1LINHA1.Cells [9,VI_AN_COMB1]) + STRtoINT(STGR_M05_1LINHA2.Cells [8,VI_AN_COMB2]);
            IF ( (VI_VALOR_SOMA1+VI_VALOR_SOMA2) >= VI_VALOR_SOMA_INICIAL ) AND ( (VI_VALOR_SOMA1+VI_VALOR_SOMA2) <= VI_VALOR_SOMA_FINAL ) THEN
            BEGIN
                STGR_M05_1LINHA1E2.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                STGR_M05_1LINHA1E2.Cells [1,VI_LINHAS1] := STGR_M05_1LINHA1.Cells [1,VI_AN_COMB1];
                STGR_M05_1LINHA1E2.Cells [2,VI_LINHAS1] := STGR_M05_1LINHA1.Cells [2,VI_AN_COMB1];
                STGR_M05_1LINHA1E2.Cells [3,VI_LINHAS1] := STGR_M05_1LINHA1.Cells [3,VI_AN_COMB1];
                STGR_M05_1LINHA1E2.Cells [4,VI_LINHAS1] := STGR_M05_1LINHA1.Cells [4,VI_AN_COMB1];
                STGR_M05_1LINHA1E2.Cells [5,VI_LINHAS1] := STGR_M05_1LINHA1.Cells [5,VI_AN_COMB1];
                STGR_M05_1LINHA1E2.Cells [6,VI_LINHAS1] := STGR_M05_1LINHA1.Cells [6,VI_AN_COMB1];
                STGR_M05_1LINHA1E2.Cells [7,VI_LINHAS1] := STGR_M05_1LINHA1.Cells [7,VI_AN_COMB1];
                //STGR_M05_1LINHA1E2.Cells [8,VI_LINHAS1] := '---';

                STGR_M05_1LINHA1E2.Cells [8,VI_LINHAS1] := STGR_M05_1LINHA2.Cells [1,VI_AN_COMB2];
                STGR_M05_1LINHA1E2.Cells [9,VI_LINHAS1] := STGR_M05_1LINHA2.Cells [2,VI_AN_COMB2];
                STGR_M05_1LINHA1E2.Cells [10,VI_LINHAS1] := STGR_M05_1LINHA2.Cells [3,VI_AN_COMB2];
                STGR_M05_1LINHA1E2.Cells [11,VI_LINHAS1] := STGR_M05_1LINHA2.Cells [4,VI_AN_COMB2];
                STGR_M05_1LINHA1E2.Cells [12,VI_LINHAS1] := STGR_M05_1LINHA2.Cells [5,VI_AN_COMB2];
                STGR_M05_1LINHA1E2.Cells [13,VI_LINHAS1] := STGR_M05_1LINHA2.Cells [6,VI_AN_COMB2];
                //STGR_M05_1LINHA1E2.Cells [15,VI_LINHAS1] := '---';

                STGR_M05_1LINHA1E2.Cells [14,VI_LINHAS1] := STGR_M05_MATRIZBASE.Cells [1,3];
                STGR_M05_1LINHA1E2.Cells [15,VI_LINHAS1] := STGR_M05_MATRIZBASE.Cells [2,3];
                STGR_M05_1LINHA1E2.Cells [16,VI_LINHAS1] := STGR_M05_MATRIZBASE.Cells [3,3];
                STGR_M05_1LINHA1E2.Cells [17,VI_LINHAS1] := STGR_M05_MATRIZBASE.Cells [4,3];
                STGR_M05_1LINHA1E2.Cells [18,VI_LINHAS1] := STGR_M05_MATRIZBASE.Cells [5,3];
                //TGR_M05_1LINHA1E2.Cells [21,VI_LINHAS1] := '---';

                STGR_M05_1LINHA1E2.Cells [19,VI_LINHAS1] := STGR_M05_MATRIZBASE.Cells [1,4];
                STGR_M05_1LINHA1E2.Cells [20,VI_LINHAS1] := STGR_M05_MATRIZBASE.Cells [2,4];
                STGR_M05_1LINHA1E2.Cells [21,VI_LINHAS1] := STGR_M05_MATRIZBASE.Cells [3,4];
                STGR_M05_1LINHA1E2.Cells [22,VI_LINHAS1] := STGR_M05_MATRIZBASE.Cells [4,4];
                STGR_M05_1LINHA1E2.Cells [23,VI_LINHAS1] := STGR_M05_MATRIZBASE.Cells [5,4];
                STGR_M05_1LINHA1E2.Cells [24,VI_LINHAS1] := '---';

                STGR_M05_1LINHA1E2.Cells [25,VI_LINHAS1] := INTtoSTR(VI_VALOR_SOMA1+VI_VALOR_SOMA2);
                VI_LINHAS1 := VI_LINHAS1 + 1;
                STGR_M05_1LINHA1E2.RowCount := VI_LINHAS1;
            END; // IF
        END; //  FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M05_1LINHA1E2.Repaint;
    PGBR_M05_ETAPA1.Position :=100;
    LA_M05_ETAPA1N.Caption :='100 %';
    LA_M05_ETAPA1N.Repaint;
    PGBR_M05_ETAPA1.Repaint;
    STGR_M05_1LINHA1.Repaint;
    IF (VI_LINHAS1 =1) THEN
    BEGIN
        SHOWMESSAGE('FILTRO N�O GEROU RESULTADOS');
        EXIT;
    END; // IF
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    SLEEP(2);
    Self.Refresh;
    Self.Repaint;
    Self.Refresh;

    // =============================================================================
    // ||||=====================================================================||||
    // |||| 	ETAPA 2 - GERANDO AS COMBINA��ES POSS�VEIS PARA FILTRAGEM :     ||||
    // ||||=====================================================================||||
    // =============================================================================
    FOR VI_AN_COMB0 := 1 TO {1} (STGR_M05_1LINHA1E2.RowCount-1) DO
    BEGIN
        // *****************************************************
        // ** Montando o Array base para gerar o(s) filtro(s) **
        // *****************************************************
        FOR VI_CONTAR1 := 1 TO 7 DO
        BEGIN
            STGR_M05_MATRIZBASE2.Cells [VI_CONTAR1,1] := RIGHTSTR('0'+STGR_M05_1LINHA1E2.Cells [VI_CONTAR1,VI_AN_COMB0],2);
        END; // FOR VI_COL_ARRAY
        FOR VI_CONTAR1 := 1 TO 6 DO
        BEGIN
            STGR_M05_MATRIZBASE2.Cells [VI_CONTAR1,2] := RIGHTSTR('0'+STGR_M05_1LINHA1E2.Cells [7+VI_CONTAR1,VI_AN_COMB0],2);
        END; // FOR VI_COL_ARRAY
        FOR VI_CONTAR1 := 1 TO 5 DO
        BEGIN
            STGR_M05_MATRIZBASE2.Cells [VI_CONTAR1,3] := RIGHTSTR('0'+STGR_M05_1LINHA1E2.Cells [13+VI_CONTAR1,VI_AN_COMB0],2);
        END; // FOR VI_COL_ARRAY
        FOR VI_CONTAR1 := 1 TO 5 DO
        BEGIN
            STGR_M05_MATRIZBASE2.Cells [VI_CONTAR1,4] := RIGHTSTR('0'+STGR_M05_1LINHA1E2.Cells [18+VI_CONTAR1,VI_AN_COMB0],2);
        END; // FOR VI_COL_ARRAY
        STGR_M05_MATRIZBASE2.Cells [6,3] := '0';
        STGR_M05_MATRIZBASE2.Cells [6,4] := '0';
        STGR_M05_MATRIZBASE2.Cells [7,2] := '0';
        STGR_M05_MATRIZBASE2.Cells [7,3] := '0';
        STGR_M05_MATRIZBASE2.Cells [7,4] := '0';

        STGR_M05_MATRIZBASE2.Cells [8,1] := '---';
        STGR_M05_MATRIZBASE2.Cells [8,2] := '---';
        STGR_M05_MATRIZBASE2.Cells [8,3] := '---';
        STGR_M05_MATRIZBASE2.Cells [8,4] := '---';
        STGR_M05_MATRIZBASE2.Cells [9,1] :=  INTtoSTR( STRtoINT( STGR_M05_MATRIZBASE2.Cells [1,1] )
                                             + STRtoINT( STGR_M05_MATRIZBASE2.Cells [2,1] )
                                             + STRtoINT( STGR_M05_MATRIZBASE2.Cells [3,1] )
                                             + STRtoINT( STGR_M05_MATRIZBASE2.Cells [4,1] )
                                             + STRtoINT( STGR_M05_MATRIZBASE2.Cells [5,1] )
                                             + STRtoINT( STGR_M05_MATRIZBASE2.Cells [6,1] )
                                             + STRtoINT( STGR_M05_MATRIZBASE2.Cells [7,1] ) );
        STGR_M05_MATRIZBASE2.Cells [9,2] := INTtoSTR( STRtoINT( STGR_M05_MATRIZBASE2.Cells [1,2] )
                                            + STRtoINT( STGR_M05_MATRIZBASE2.Cells [2,2] )
                                            + STRtoINT( STGR_M05_MATRIZBASE2.Cells [3,2] )
                                            + STRtoINT( STGR_M05_MATRIZBASE2.Cells [4,2] )
                                            + STRtoINT( STGR_M05_MATRIZBASE2.Cells [5,2] )
                                            + STRtoINT( STGR_M05_MATRIZBASE2.Cells [6,2] )  );
        STGR_M05_MATRIZBASE2.Cells [9,3] :=  INTtoSTR( STRtoINT( STGR_M05_MATRIZBASE2.Cells [1,3] )
                                             + STRtoINT( STGR_M05_MATRIZBASE2.Cells [2,3] )
                                             + STRtoINT( STGR_M05_MATRIZBASE2.Cells [3,3] )
                                             + STRtoINT( STGR_M05_MATRIZBASE2.Cells [4,3] )
                                             + STRtoINT( STGR_M05_MATRIZBASE2.Cells [5,3] ) );

        STGR_M05_MATRIZBASE2.Cells [9,4] := INTtoSTR( STRtoINT( STGR_M05_MATRIZBASE2.Cells [1,4] )
                                            + STRtoINT( STGR_M05_MATRIZBASE2.Cells [2,4] )
                                            + STRtoINT( STGR_M05_MATRIZBASE2.Cells [3,4] )
                                            + STRtoINT( STGR_M05_MATRIZBASE2.Cells [4,4] )
                                            + STRtoINT( STGR_M05_MATRIZBASE2.Cells [5,4] ) );
        STGR_M05_MATRIZBASE2.Repaint;
            // ----> ORDENANDO
            // ----> SETANDO OS FLAGS
        FOR VI_CONTAR1 :=1 TO 25 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,1] :='F';
        END; // FOR VI_CONTAR1
        // ----> MONTADO E VERIFICANDO TODOS OS 23 D�GITOS
        FOR VI_CONTAR1 :=1 TO 23 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_M05_1LINHA1e2.Cells[VI_CONTAR1,VI_AN_COMB0])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 1;
        FOR VI_CONTAR1 :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,1]='V') THEN
            BEGIN
                STGR_M05_1LINHA1e2.Cells [VI_CNTCELULAS, VI_AN_COMB0] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR1
//       SHOWMESSAGE('');
(*
    END;// FOR VI_AN_COMB0

    FOR VI_AN_COMB0 := 1 TO {1} (STGR_M05_1LINHA1E2.RowCount-1) DO
    BEGIN     *)
        // ***************************************************************
        // ** Montando o grupo de an�lises combinat�rias  para a 1� linha
        // ****************************************************************
        VI_LINHAS1 := 1;
        FOR VI_AN_COMB1 := 1 TO 3 DO
        BEGIN
           FOR VI_AN_COMB2 := VI_AN_COMB1+1 TO 4 DO
           BEGIN
               FOR VI_AN_COMB3 := VI_AN_COMB2+1 TO 5 DO
               BEGIN
                   FOR VI_AN_COMB4 := VI_AN_COMB3+1 TO 6 DO
                   BEGIN
                       FOR VI_AN_COMB5 := VI_AN_COMB4+1 TO 7 DO
                       BEGIN
                            STGR_M05_2LINHA1.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                            STGR_M05_2LINHA1.Cells [1,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB1,1] ;
                            STGR_M05_2LINHA1.Cells [2,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB2,1] ;
                            STGR_M05_2LINHA1.Cells [3,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB3,1] ;
                            STGR_M05_2LINHA1.Cells [4,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB4,1] ;
                            STGR_M05_2LINHA1.Cells [5,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB5,1] ;
                            VI_LINHAS1 := VI_LINHAS1 + 1;
                            STGR_M05_2LINHA1.RowCount := VI_LINHAS1;
                       END; // FOR VI_AN_COMB5
                   END; // FOR VI_AN_COMB4
               END; // FOR VI_AN_COMB3
           END; // FOR VI_AN_COMB2
        END; // FOR VI_AN_COMB1


        // ************************************************************************
        // ** Montando o grupo de an�lises combinat�rias  para a 2� linha  **
        // ************************************************************************
        VI_LINHAS1 := 1;
        FOR VI_AN_COMB1 := 1 TO 3 DO
        BEGIN
           FOR VI_AN_COMB2 := VI_AN_COMB1+1 TO 4 DO
           BEGIN
               FOR VI_AN_COMB3 := VI_AN_COMB2+1 TO 5 DO
               BEGIN
                   FOR VI_AN_COMB4 := VI_AN_COMB3+1 TO 6 DO
                   BEGIN
                        STGR_M05_2LINHA2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                        STGR_M05_2LINHA2.Cells [1,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB1,2] ;
                        STGR_M05_2LINHA2.Cells [2,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB2,2] ;
                        STGR_M05_2LINHA2.Cells [3,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB3,2] ;
                        STGR_M05_2LINHA2.Cells [4,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB4,2] ;
                        VI_LINHAS1 := VI_LINHAS1 + 1;
                        STGR_M05_2LINHA2.RowCount := VI_LINHAS1;
                   END; // FOR VI_AN_COMB4
               END; // FOR VI_AN_COMB3
           END; // FOR VI_AN_COMB2
        END; // FOR VI_AN_COMB1

        // ***********************************************************************************
        // ** Montando o grupo de an�lises combinat�rias  para a 1� e 2� linha 1� resultado **
        // ***********************************************************************************
        IF (VI_AN_COMB0 = 1) THEN
        BEGIN
            VI_LINHAS1 := 1;
            FOR VI_AN_COMB1 := 1 TO STGR_M05_2LINHA1.RowCount-1 DO
            BEGIN
               FOR VI_AN_COMB2 := 1 TO STGR_M05_2LINHA2.RowCount-1 DO
               BEGIN
                        STGR_M05_2LINHA1e2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                        STGR_M05_2LINHA1e2.Cells [1,VI_LINHAS1] := STGR_M05_2LINHA1.Cells[1,VI_AN_COMB1] ;
                        STGR_M05_2LINHA1e2.Cells [2,VI_LINHAS1] := STGR_M05_2LINHA1.Cells[2,VI_AN_COMB1] ;
                        STGR_M05_2LINHA1e2.Cells [3,VI_LINHAS1] := STGR_M05_2LINHA1.Cells[3,VI_AN_COMB1] ;
                        STGR_M05_2LINHA1e2.Cells [4,VI_LINHAS1] := STGR_M05_2LINHA1.Cells[4,VI_AN_COMB1] ;
                        STGR_M05_2LINHA1e2.Cells [5,VI_LINHAS1] := STGR_M05_2LINHA1.Cells[5,VI_AN_COMB1] ;
                        STGR_M05_2LINHA1e2.Cells [6,VI_LINHAS1] := STGR_M05_2LINHA2.Cells[1,VI_AN_COMB2] ;
                        STGR_M05_2LINHA1e2.Cells [7,VI_LINHAS1] := STGR_M05_2LINHA2.Cells[2,VI_AN_COMB2] ;
                        STGR_M05_2LINHA1e2.Cells [8,VI_LINHAS1] := STGR_M05_2LINHA2.Cells[3,VI_AN_COMB2] ;
                        STGR_M05_2LINHA1e2.Cells [9,VI_LINHAS1] := STGR_M05_2LINHA2.Cells[4,VI_AN_COMB2] ;
                        FOR VI_CONTAR1 :=1 TO 25 DO
                        BEGIN
                            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,1] :='F';
                        END; // FOR VI_CONTAR1
                        // ----> MONTADO E VERIFICANDO TODOS OS 23 D�GITOS
                        FOR VI_CONTAR1 :=1 TO 9 DO
                        BEGIN
                            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_M05_2LINHA1e2.Cells[VI_CONTAR1,VI_LINHAS1])) ,1]:='V';
                        END; // FOR VI_CONTAR1
                        VI_CNTCELULAS := 1;
                        FOR VI_CONTAR1 :=1 TO 25 DO
                        BEGIN
                            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,1]='V') THEN
                            BEGIN
                                STGR_M05_2LINHA1e2.Cells [VI_CNTCELULAS, VI_LINHAS1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,0]),2) ;
                                VI_CNTCELULAS := VI_CNTCELULAS + 1;
                            END; // IF (STRGR_TODOS_NUMEROS
                        END; // FOR VI_CONTAR1
                        VI_LINHAS1 := VI_LINHAS1 + 1;
                        STGR_M05_2LINHA1e2.RowCount := VI_LINHAS1;
               END; // FOR VI_AN_COMB2
            END; // FOR VI_AN_COMB1
        END ELSE
        IF (VI_AN_COMB0 >= 2) THEN
        BEGIN
            STGR_M05_2DIF1e2A.RowCount := 2;
            // **********************************************************************************
            // ** Montando o grupo de an�lises combinat�rias  para a 1� e 2� + de  1 resultado **
            // **********************************************************************************
            VI_LINHAS2 := STGR_M05_2LINHA1e2.RowCount-1;
            VI_LINHAS1 := 1;
            FOR VI_AN_COMB1 := 1 TO STGR_M05_2LINHA1.RowCount-1 DO
            BEGIN
               FOR VI_AN_COMB2 := 1 TO STGR_M05_2LINHA2.RowCount-1 DO
               BEGIN
                        STGR_M05_2DIF1e2A.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                        STGR_M05_2DIF1e2A.Cells [1,VI_LINHAS1] := STGR_M05_2LINHA1.Cells[1,VI_AN_COMB1] ;
                        STGR_M05_2DIF1e2A.Cells [2,VI_LINHAS1] := STGR_M05_2LINHA1.Cells[2,VI_AN_COMB1] ;
                        STGR_M05_2DIF1e2A.Cells [3,VI_LINHAS1] := STGR_M05_2LINHA1.Cells[3,VI_AN_COMB1] ;
                        STGR_M05_2DIF1e2A.Cells [4,VI_LINHAS1] := STGR_M05_2LINHA1.Cells[4,VI_AN_COMB1] ;
                        STGR_M05_2DIF1e2A.Cells [5,VI_LINHAS1] := STGR_M05_2LINHA1.Cells[5,VI_AN_COMB1] ;
                        STGR_M05_2DIF1e2A.Cells [6,VI_LINHAS1] := STGR_M05_2LINHA2.Cells[1,VI_AN_COMB2] ;
                        STGR_M05_2DIF1e2A.Cells [7,VI_LINHAS1] := STGR_M05_2LINHA2.Cells[2,VI_AN_COMB2] ;
                        STGR_M05_2DIF1e2A.Cells [8,VI_LINHAS1] := STGR_M05_2LINHA2.Cells[3,VI_AN_COMB2] ;
                        STGR_M05_2DIF1e2A.Cells [9,VI_LINHAS1] := STGR_M05_2LINHA2.Cells[4,VI_AN_COMB2] ;
                        FOR VI_CONTAR1 :=1 TO 25 DO
                        BEGIN
                            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,1] :='F';
                        END; // FOR VI_CONTAR1
                        // ----> MONTADO E VERIFICANDO TODOS OS 23 D�GITOS
                        FOR VI_CONTAR1 :=1 TO 9 DO
                        BEGIN
                            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_M05_2DIF1e2A.Cells[VI_CONTAR1,VI_LINHAS1])) ,1]:='V';
                        END; // FOR VI_CONTAR1
                        VI_CNTCELULAS := 1;
                        FOR VI_CONTAR1 :=1 TO 25 DO
                        BEGIN
                            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,1]='V') THEN
                            BEGIN
                                STGR_M05_2DIF1e2A.Cells [VI_CNTCELULAS, VI_LINHAS1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,0]),2) ;
                                VI_CNTCELULAS := VI_CNTCELULAS + 1;
                            END; // IF (STRGR_TODOS_NUMEROS
                        END; // FOR VI_CONTAR1
                        // ----> A LINHA ABAIXO MARCA TODOS COMO DIFERENTES (1) OS IGUAIS (0) SER�O MARCADOS DEPOIS
                        STGR_M05_2DIF1e2A.Cells [10,VI_LINHAS1] := '1' ;
                        VI_LINHAS1 := VI_LINHAS1 + 1;
                        STGR_M05_2DIF1e2A.RowCount := VI_LINHAS1;
               END; // FOR VI_AN_COMB2
            END; // FOR VI_AN_COMB1
            // ----> PROCURANDO OS IGUAIS (0) E MARCANDO-OS
            FOR VI_AN_COMB1 := 1 TO STGR_M05_2DIF1e2A.RowCount-1 DO
            BEGIN
               FOR VI_AN_COMB2 := 1 TO STGR_M05_2LINHA1e2.RowCount-1 DO
               BEGIN
                   IF (STGR_M05_2DIF1e2A.Cells [1,VI_AN_COMB1] = STGR_M05_2LINHA1e2.Cells [1,VI_AN_COMB2])
                        AND  (STGR_M05_2DIF1e2A.Cells [2,VI_AN_COMB1] = STGR_M05_2LINHA1e2.Cells [2,VI_AN_COMB2])  THEN
                   BEGIN
                       IF (STGR_M05_2DIF1e2A.Cells [3,VI_AN_COMB1] = STGR_M05_2LINHA1e2.Cells [3,VI_AN_COMB2])
                            AND (STGR_M05_2DIF1e2A.Cells [4,VI_AN_COMB1] = STGR_M05_2LINHA1e2.Cells [4,VI_AN_COMB2])
                            AND (STGR_M05_2DIF1e2A.Cells [5,VI_AN_COMB1] = STGR_M05_2LINHA1e2.Cells [5,VI_AN_COMB2])
                            AND (STGR_M05_2DIF1e2A.Cells [6,VI_AN_COMB1] = STGR_M05_2LINHA1e2.Cells [6,VI_AN_COMB2])
                            AND (STGR_M05_2DIF1e2A.Cells [7,VI_AN_COMB1] = STGR_M05_2LINHA1e2.Cells [7,VI_AN_COMB2])
                            AND (STGR_M05_2DIF1e2A.Cells [8,VI_AN_COMB1] = STGR_M05_2LINHA1e2.Cells [8,VI_AN_COMB2])
                            AND (STGR_M05_2DIF1e2A.Cells [9,VI_AN_COMB1] = STGR_M05_2LINHA1e2.Cells [9,VI_AN_COMB2])
                       THEN
                            STGR_M05_2DIF1e2A.Cells [10,VI_AN_COMB1] := '0' ;
                   END; // IF
               END; // FOR VI_AN_COMB2
            END; // FOR VI_AN_COMB1
            VI_LINHAS1 := STGR_M05_2LINHA1e2.RowCount;
            FOR VI_AN_COMB1 := 1 TO STGR_M05_2DIF1e2A.RowCount-1 DO
            BEGIN
                IF (TRIM(STGR_M05_2DIF1e2A.Cells [10,VI_AN_COMB1]) = '1')  THEN
                BEGIN
                    STGR_M05_2LINHA1e2.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                    STGR_M05_2LINHA1e2.Cells [1,VI_LINHAS1] := STGR_M05_2DIF1e2A.Cells[1,VI_AN_COMB1] ;
                    STGR_M05_2LINHA1e2.Cells [2,VI_LINHAS1] := STGR_M05_2DIF1e2A.Cells[2,VI_AN_COMB1] ;
                    STGR_M05_2LINHA1e2.Cells [3,VI_LINHAS1] := STGR_M05_2DIF1e2A.Cells[3,VI_AN_COMB1] ;
                    STGR_M05_2LINHA1e2.Cells [4,VI_LINHAS1] := STGR_M05_2DIF1e2A.Cells[4,VI_AN_COMB1] ;
                    STGR_M05_2LINHA1e2.Cells [5,VI_LINHAS1] := STGR_M05_2DIF1e2A.Cells[5,VI_AN_COMB1] ;
                    STGR_M05_2LINHA1e2.Cells [6,VI_LINHAS1] := STGR_M05_2DIF1e2A.Cells[6,VI_AN_COMB1] ;
                    STGR_M05_2LINHA1e2.Cells [7,VI_LINHAS1] := STGR_M05_2DIF1e2A.Cells[7,VI_AN_COMB1] ;
                    STGR_M05_2LINHA1e2.Cells [8,VI_LINHAS1] := STGR_M05_2DIF1e2A.Cells[8,VI_AN_COMB1] ;
                    STGR_M05_2LINHA1e2.Cells [9,VI_LINHAS1] := STGR_M05_2DIF1e2A.Cells[9,VI_AN_COMB1] ;
                    VI_LINHAS1 := VI_LINHAS1 + 1;
                    STGR_M05_2LINHA1e2.RowCount := VI_LINHAS1;
                END; // IF
            end; // FOR VI_AN_COMB1
            STGR_M05_2LINHA1e2.Repaint;
        END;
        // ************************************************************************
        // ** Montando o grupo de an�lises combinat�rias  para a 3� linha  **
        // ************************************************************************
        VI_LINHAS1 := 1;
        FOR VI_AN_COMB1 := 1 TO 3 DO
        BEGIN
           FOR VI_AN_COMB2 := VI_AN_COMB1+1 TO 4 DO
           BEGIN
               FOR VI_AN_COMB3 := VI_AN_COMB2+1 TO 5 DO
               BEGIN
                    STGR_M05_2LINHA3.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                    STGR_M05_2LINHA3.Cells [1,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB1,3] ;
                    STGR_M05_2LINHA3.Cells [2,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB2,3] ;
                    STGR_M05_2LINHA3.Cells [3,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB3,3] ;
                    VI_LINHAS1 := VI_LINHAS1 + 1;
                    STGR_M05_2LINHA3.RowCount := VI_LINHAS1;
               END; // FOR VI_AN_COMB3
           END; // FOR VI_AN_COMB2
        END; // FOR VI_AN_COMB1

        // ************************************************************************
        // ** Montando o grupo de an�lises combinat�rias  para a 4� linha  **
        // ************************************************************************
        VI_LINHAS1 := 1;
        FOR VI_AN_COMB1 := 1 TO 3 DO
        BEGIN
           FOR VI_AN_COMB2 := VI_AN_COMB1+1 TO 4 DO
           BEGIN
               FOR VI_AN_COMB3 := VI_AN_COMB2+1 TO 5 DO
               BEGIN
                    STGR_M05_2LINHA4.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                    STGR_M05_2LINHA4.Cells [1,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB1,4] ;
                    STGR_M05_2LINHA4.Cells [2,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB2,4] ;
                    STGR_M05_2LINHA4.Cells [3,VI_LINHAS1] := STGR_M05_MATRIZBASE2.Cells[VI_AN_COMB3,4] ;
                    VI_LINHAS1 := VI_LINHAS1 + 1;
                    STGR_M05_2LINHA4.RowCount := VI_LINHAS1;
               END; // FOR VI_AN_COMB3
           END; // FOR VI_AN_COMB2
        END; // FOR VI_AN_COMB1
         PGBR_M05_ETAPA2.Position := TRUNC (VI_AN_COMB0 / STGR_M05_1LINHA1E2.RowCount * 100);
         LA_M05_ETAPA2NP.Caption := INTtoSTR(PGBR_M05_ETAPA2.Position)+ ' %';
         SLEEP (10);
         PGBR_M05_ETAPA2.Repaint;
         LA_M05_ETAPA2NP.Repaint;
     END; // FOR VI_AN_COMB0 := 1 TO
     PGBR_M05_ETAPA2.Position := 100;
     LA_M05_ETAPA2NP.Caption := INTtoSTR(PGBR_M05_ETAPA2.Position)+ ' %';;
     SLEEP (10);
     PGBR_M05_ETAPA2.Repaint;
     LA_M05_ETAPA2NP.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    SLEEP(2);
    Self.Refresh;
    Self.Repaint;
    Self.Refresh;

    // =============================================================================
    // ||||=====================================================================||||
    // |||| 	ETAPA 3 - GERANDO AS COMBINA��ES POSS�VEIS PARA FILTRAGEM 2     ||||
    // ||||=====================================================================||||
    // =============================================================================
    // ******************************************
    // ** Iniciando as an�lises combinat�rias  **
    // ******************************************
    PGBR_M05_ETAPA3.Position := 0;
    VI_LINHAS1 := 1;
    FOR VI_AN_COMB1 := 1 TO STGR_M05_2LINHA1e2.RowCount-1 DO
    BEGIN
       FOR VI_AN_COMB2 := 1 TO STGR_M05_2LINHA3.RowCount-1 DO
       BEGIN
            FOR VI_AN_COMB3 := 1 TO STGR_M05_2LINHA4.RowCount-1 DO
            BEGIN
                STGR_COMBINACOES_15M05.Cells [0,VI_LINHAS1] := INTtoSTR (VI_LINHAS1) ;
                STGR_COMBINACOES_15M05.Cells [1,VI_LINHAS1] := STGR_M05_2LINHA1e2.Cells[1,VI_AN_COMB1] ;
                STGR_COMBINACOES_15M05.Cells [2,VI_LINHAS1] := STGR_M05_2LINHA1e2.Cells[2,VI_AN_COMB1] ;
                STGR_COMBINACOES_15M05.Cells [3,VI_LINHAS1] := STGR_M05_2LINHA1e2.Cells[3,VI_AN_COMB1] ;
                STGR_COMBINACOES_15M05.Cells [4,VI_LINHAS1] := STGR_M05_2LINHA1e2.Cells[4,VI_AN_COMB1] ;
                STGR_COMBINACOES_15M05.Cells [5,VI_LINHAS1] := STGR_M05_2LINHA1e2.Cells[5,VI_AN_COMB1] ;
                STGR_COMBINACOES_15M05.Cells [6,VI_LINHAS1] := STGR_M05_2LINHA1e2.Cells[6,VI_AN_COMB1] ;
                STGR_COMBINACOES_15M05.Cells [7,VI_LINHAS1] := STGR_M05_2LINHA1e2.Cells[7,VI_AN_COMB1] ;
                STGR_COMBINACOES_15M05.Cells [8,VI_LINHAS1] := STGR_M05_2LINHA1e2.Cells[8,VI_AN_COMB1] ;
                STGR_COMBINACOES_15M05.Cells [9,VI_LINHAS1] := STGR_M05_2LINHA1e2.Cells[9,VI_AN_COMB1] ;
                STGR_COMBINACOES_15M05.Cells [10,VI_LINHAS1] := STGR_M05_2LINHA3.Cells[1,VI_AN_COMB2] ;
                STGR_COMBINACOES_15M05.Cells [11,VI_LINHAS1] := STGR_M05_2LINHA3.Cells[2,VI_AN_COMB2] ;
                STGR_COMBINACOES_15M05.Cells [12,VI_LINHAS1] := STGR_M05_2LINHA3.Cells[3,VI_AN_COMB2] ;
                STGR_COMBINACOES_15M05.Cells [13,VI_LINHAS1] := STGR_M05_2LINHA4.Cells[1,VI_AN_COMB3] ;
                STGR_COMBINACOES_15M05.Cells [14,VI_LINHAS1] := STGR_M05_2LINHA4.Cells[2,VI_AN_COMB3] ;
                STGR_COMBINACOES_15M05.Cells [15,VI_LINHAS1] := STGR_M05_2LINHA4.Cells[3,VI_AN_COMB3] ;
                FOR VI_CONTAR1 :=1 TO 25 DO
                BEGIN
                    STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,1] :='F';
                END; // FOR VI_CONTAR1
                // ----> MONTADO E VERIFICANDO TODOS OS 23 D�GITOS
                FOR VI_CONTAR1 :=1 TO 15 DO
                BEGIN
                    STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMBINACOES_15M05.Cells[VI_CONTAR1,VI_LINHAS1])) ,1]:='V';
                END; // FOR VI_CONTAR1
                VI_CNTCELULAS := 1;
                FOR VI_CONTAR1 :=1 TO 25 DO
                BEGIN
                    IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,1]='V') THEN
                    BEGIN
                        STGR_COMBINACOES_15M05.Cells [VI_CNTCELULAS, VI_LINHAS1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR1,0]),2) ;
                        VI_CNTCELULAS := VI_CNTCELULAS + 1;
                    END; // IF (STRGR_TODOS_NUMEROS
                END; // FOR VI_CONTAR1

                VI_LINHAS1 := VI_LINHAS1 + 1;
                STGR_COMBINACOES_15M05.RowCount := VI_LINHAS1;
            END; // FOR VI_AN_COMB3
        END; // FOR VI_AN_COMB2
        PGBR_M05_ETAPA3.Position := TRUNC((VI_AN_COMB1*VI_AN_COMB2*VI_AN_COMB3) / ((STGR_M05_2LINHA1e2.RowCount)*(STGR_M05_2LINHA3.RowCount)*(STGR_M05_2LINHA4.RowCount)) *100);
        PGBR_M05_ETAPA3.Repaint;
        LA_M05_ETAPA3N.Caption :=  INTtoSTR(STGR_COMBINACOES_15M05.RowCount-1);
        LA_M05_ETAPA3NP.Caption := INTtoSTR(TRUNC((VI_AN_COMB1*VI_AN_COMB2*VI_AN_COMB3) / ((STGR_M05_2LINHA1e2.RowCount)*(STGR_M05_2LINHA3.RowCount)*(STGR_M05_2LINHA4.RowCount)) *100))+' %';
        PGBR_M05_ETAPA3.Repaint;
        SELF.Repaint;
        IF (VI_AN_COMB1/5000) = (VI_AN_COMB1 DIV 5000) THEN
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(2);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END // IF
    END; // FOR VI_AN_COMB1
    LA_M05_ETAPA3N.Caption :=  INTtoSTR(STGR_COMBINACOES_15M05.RowCount-1);
    PGBR_M05_ETAPA3.Position := 100;
    LA_M05_ETAPA3NP.Caption := '100 %';
    SLEEP(10);
    PGBR_M05_ETAPA3.Repaint;
    SELF.Repaint;

    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    SLEEP(2);
    Self.Refresh;
    Self.Repaint;
    Self.Refresh;

    // =====================================
    // ||||=============================||||
    // |||| 	ETAPA 4 - FILTRANDO     ||||
    // ||||=============================||||
    // =====================================
    VI_LINHAS1 := 1;
    STGR_COMBINACOES_15M05_FINAL.RowCount := 2;
    FOR VI_AN_COMB1 := 1 TO (STGR_COMBINACOES_15.RowCount - 1) DO
    BEGIN
        FOR VI_AN_COMB2 := 1 TO (STGR_COMBINACOES_15M05.RowCount - 1) DO
        BEGIN
            IF (STGR_COMBINACOES_15.Cells[1,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[1,VI_AN_COMB2])
                AND (STGR_COMBINACOES_15.Cells[2,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[2,VI_AN_COMB2])
            THEN
            BEGIN
                IF (STGR_COMBINACOES_15.Cells[3,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[3,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[4,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[4,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[5,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[5,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[6,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[6,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[7,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[7,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[8,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[8,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[9,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[9,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[10,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[10,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[11,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[11,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[12,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[12,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[13,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[13,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[14,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[14,VI_AN_COMB2])
                   AND (STGR_COMBINACOES_15.Cells[15,VI_AN_COMB1] = STGR_COMBINACOES_15M05.Cells[15,VI_AN_COMB2])
                THEN
                BEGIN
                    STGR_COMBINACOES_15M05_FINAL.Cells[0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                    FOR VI_CONTAR1 :=1 TO 15 DO
                    BEGIN
                        STGR_COMBINACOES_15M05_FINAL.Cells[VI_CONTAR1,VI_LINHAS1] := STGR_COMBINACOES_15.Cells[VI_CONTAR1,VI_AN_COMB1];
                        //STGR_COMBINACOES_15M05_FINAL.Repaint;
                    END; // FOR VI_CONTAR1
                    STGR_COMBINACOES_15M05_FINAL.Cells[16,VI_LINHAS1] := INTtoSTR(VI_AN_COMB1);
                    STGR_COMBINACOES_15M05_FINAL.Cells[17,VI_LINHAS1] := 'V';
                    VI_CNTCELULAS := VI_CNTCELULAS +1;
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STGR_COMBINACOES_15M05_FINAL.RowCount := VI_LINHAS1;
                END; // IF (STGR_COMBINACOES_15.Cells[3,VI_AN_COMB1]
            END; // IF (STGR_COMBINACOES_15.Cells[1,VI_LINHAS1]
        END; // FOR VI_AN_COMB2
        IF (VI_AN_COMB1/300) = (VI_AN_COMB1 DIV 300) THEN
        BEGIN
              STGR_COMBINACOES_15M05_FINAL.Repaint;
              LA_M05_ETAPA4NP.Caption := FLOATtoSTR(ROUNDto(( VI_AN_COMB1 / (STGR_COMBINACOES_15.RowCount - 1) *100 ),-2 ))+ '%';
              LA_M05_ETAPA4N.Caption :=  INTtoSTR(VI_LINHAS1-1) ;
              PGBR_M05_ETAPA4.Position := TRUNC(VI_AN_COMB1 / (STGR_COMBINACOES_15.RowCount - 1) *100);
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(2);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END // IF
    END; // FOR VI_AN_COMB1
    STGR_COMBINACOES_15M05_FINAL.Repaint;
    LA_M05_ETAPA4NP.Caption :=  '100%';
    LA_M05_ETAPA4N.Caption :=  INTtoSTR(VI_LINHAS1-1) ;
    PGBR_M05_ETAPA4.Position := 100;
    LA_M05_ETAPA4NP.Repaint;
    LA_M05_ETAPA4N.Repaint;
    PGBR_M05_ETAPA4.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    (*
    VI_LINHAS2:=1;
    FOR VI_AN_COMB1 := 1 TO (STGR_COMBINACOES_15M05_FINAL.RowCount - 1) DO
    BEGIN
        VI_CNTCELULAS := 0;
        VC_TROCA1 :=  STGR_COMBINACOES_15M05_FINAL.Cells[16,VI_AN_COMB1];
        FOR VI_AN_COMB2 := VI_AN_COMB1 TO (STGR_COMBINACOES_15M05_FINAL.RowCount - 1) DO
        BEGIN
            IF ((STGR_COMBINACOES_15M05_FINAL.Cells[16,VI_AN_COMB2]) = VC_TROCA1) THEN
            BEGIN
                VI_CNTCELULAS := VI_CNTCELULAS+1;
                IF  VI_CNTCELULAS > 1 THEN
                BEGIN
                    STGR_COMBINACOES_15M05_FINAL.Cells[17,VI_AN_COMB2] := 'F';
                END; //
                IF  (STGR_COMBINACOES_15M05_FINAL.Cells[17,VI_AN_COMB2] = 'V') THEN
                BEGIN
                     VI_LINHAS2:=VI_LINHAS2+1;
                END; // IF

                STGR_COMBINACOES_15M05_FINAL.Cells[18,VI_AN_COMB2] := INTtoSTR(VI_LINHAS2);
            END ; // IF
        END; // FOR VI_AN_COMB2
        IF (VI_AN_COMB1/500) = (VI_AN_COMB1 DIV 500) THEN
        BEGIN
              //PGBR_REFINANDO_04.Position := TRUNC(VI_AN_COMB1 / (STGR_COMBINACOES_15M05_FINAL.RowCount - 1) *100);
              //PGBR_REFINANDO_04.Repaint;
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(2);
              Self.Refresh;
              Self.Repaint;
        END // IF
    END; //  FOR VI_AN_COMB1
    STGR_COMBINACOES_15M05_FINAL.Repaint;
    //PGBR_REFINANDO_04.Position := 100;
    //PGBR_REFINANDO_04.Repaint;
    LA_M05_ETAPA4N.Caption := LA_FILTRANDO_04_.Caption +#13+ INTtoSTR(VI_LINHAS2-1);
    *)
    SHOWMESSAGE('');


end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
    BitBtn2.Click;
    BitBtn4.Click;
    BitBtn6.Click;
    BitBtn8.Click;
   // BitBtn10.Click;
    BitBtn12.Click;
    BitBtn14.Click;
    BitBtn16.Click;
    BBT_N_02.Click;
    BBT_N_04.Click;
    BBT_N_06.Click;
  //  BBT_N_08.Click;
    BBT_N_10.Click;
    BBT_N_12.Click;
   // BBT_N_14.Click;
    BBT_N_16.Click;
    BBT_N_18.Click;
    BBT_N_20.Click;
    BBT_N_22.Click;
    BBT_N_24.Click;
end;



procedure TForm1.BBT_M05_ENCERRARClick(Sender: TObject);
VAR
    VI_LINHAS1, VI_AN_COMB1, VI_CONTAR : INTEGER;
begin
    STGR_COMBINACOES_15M05_FINAL.Repaint;
    STGR_COMBINACOES_15.RowCount := 0;
    VI_LINHAS1 := 0;
    FOR VI_AN_COMB1 :=0 TO (STGR_COMBINACOES_15M05_FINAL.RowCount ) DO
    BEGIN
        IF (STGR_COMBINACOES_15M05_FINAL.Cells[17,VI_AN_COMB1] = 'V') THEN
        BEGIN
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
               STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_LINHAS1] := STGR_COMBINACOES_15M05_FINAL.Cells [VI_CONTAR,VI_AN_COMB1];
            END; //FOR
           VI_LINHAS1 := VI_LINHAS1 +1 ;
           STGR_COMBINACOES_15.RowCount := VI_LINHAS1;
        END; //IF
    END; // FOR
    STGR_COMBINACOES_15.Repaint;
    SHOWMESSAGE ('OK');
    RB_SIM_MODELO_01.Checked := true;
end;

end.














//SHELLEXECUTE(handle, 'open', 'notepad.exe', nil, nil, SW_SHOWNORMAL);
















procedure TForm1.Button1Click(Sender: TObject);
begin
winExec('Notepad.exe C:\Users\Andrew\Desktop\teste.txt', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
end;



ShellApi


var
  sPath, conf: String;

  try
  sPath := GetCurrentDir + '\conf\';
  conf := 'nginx.conf';
ShellExecute(Application.Handle, 'open', PChar(conf), '', Pchar(sPath+conf), SW_SHOW);
  except
    ShowMessage('Invalid config path.');
  end;


end;




