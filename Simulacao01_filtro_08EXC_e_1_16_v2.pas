unit Simulacao01_filtro_08EXC_e_1_16_v2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, VCL.Forms,
  Vcl.Dialogs, DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, Vcl.ComCtrls, Vcl.StdCtrls, System.StrUtils,
  Vcl.Buttons, ExtCtrls, Menus, Grids, System.UITypes;

type
  T_F_FILTRO_08_NS1_16_v2 = class(TForm)
    PA_TOPO: TPanel;
    BBT_CLOSE: TImage;
    Label34: TLabel;
    PA_GABARITO: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    RB_RESULTADOS: TRadioButton;
    RB_GABARITO: TRadioButton;
    RB_RES_GABARITOS: TRadioButton;
    PA_REMOVEUREPET: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    LA_rTOTAL_COMB: TLabel;
    LA_rQTD_COMB: TLabel;
    Label50: TLabel;
    LA_rTOTAL_100REPET: TLabel;
    Label58: TLabel;
    LA_gINICIO_100REPET: TLabel;
    Label60: TLabel;
    Label49: TLabel;
    LA_gFIM_100REPET: TLabel;
    LA_gFIM_GERAR: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_CARREGAR_SIMULACAO: TButton;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    SCBX_GABARITO: TScrollBox;
    Bevel4: TBevel;
    PA_RESULTADO: TPanel;
    STGR_COMB10: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_TOTAL_100REPET: TLabel;
    Label87: TLabel;
    LA_QTD_COMB: TLabel;
    LA_GERAR_COMB: TLabel;
    LA_TOTAL_COMB: TLabel;
    PGBR_REMREPET: TProgressBar;
    PGBR_GERARCOMB: TProgressBar;
    PGBR_GERARCOMB3: TProgressBar;
    Pa_bASE5: TPanel;
    STGR_BASE_SOMA2: TStringGrid;
    PA_PREENCHIMENTO: TPanel;
    Label79: TLabel;
    Label78: TLabel;
    Label77: TLabel;
    Label76: TLabel;
    STGR_BASE_L4: TStringGrid;
    STGR_BASE_L3: TStringGrid;
    STGR_BASE_L2: TStringGrid;
    STGR_BASE_L1: TStringGrid;
    BBT_RECOMECAR: TBitBtn;
    ED_fixoS_1: TEdit;
    PA_SOMA7_1: TPanel;
    LA_SOMA_7: TLabel;
    ED_SOMA7_INI: TEdit;
    ED_SOMA7_Final: TEdit;
    TRB_SOMA7_INI: TTrackBar;
    TRB_SOMA7_Final: TTrackBar;
    PA_EXCLUIDOS: TPanel;
    Label32: TLabel;
    ED_EXC_01: TEdit;
    ED_EXC_02: TEdit;
    ED_EXC_03: TEdit;
    PA_FIXOS: TPanel;
    Label39: TLabel;
    ED_FIXOS_01: TEdit;
    ED_FIXOS_02: TEdit;
    ED_FIXOS_03: TEdit;
    ED_FIXOS_04: TEdit;
    ED_FIXOS_05: TEdit;
    STGR_BASE_L1V: TStringGrid;
    STGR_BASE_L4V: TStringGrid;
    STGR_BASE_L3V: TStringGrid;
    STGR_BASE_L2V: TStringGrid;
    STGR_BASE_SOMA1: TStringGrid;
    STGR_BASE_SOMA12_1: TStringGrid;
    STGR_BASE_SOMA12_2: TStringGrid;
    PA_SOMA12_1: TPanel;
    LA_SOMA_16: TLabel;
    ED_SOMA12_INI: TEdit;
    ED_SOMA12_Final: TEdit;
    TRB_SOMA12_INI: TTrackBar;
    TRB_SOMA12_Final: TTrackBar;
    STGR_COMB15: TStringGrid;
    STGR_BASE_SUBFILTRO_1: TStringGrid;
    ED_Fora_SUBFILTRO_1: TEdit;
    Bevel5: TBevel;
    Label5: TLabel;
    STGR_HLINHAS_1_3: TStringGrid;
    STGR_HLINHAS_1_2: TStringGrid;
    Label7: TLabel;
    Label9: TLabel;
    STGR_HLINHAS_1_4: TStringGrid;
    Label10: TLabel;
    STGR_HLINHAS_1_5: TStringGrid;
    STGR_HLINHAS_1_6: TStringGrid;
    Label11: TLabel;
    Label12: TLabel;
    STGR_HLINHAS_2_3: TStringGrid;
    Label13: TLabel;
    STGR_HLINHAS_2_4: TStringGrid;
    Label14: TLabel;
    STGR_HLINHAS_2_5: TStringGrid;
    Label15: TLabel;
    STGR_HLINHAS_2_6: TStringGrid;
    Label18: TLabel;
    STGR_HLINHAS_3_4: TStringGrid;
    Label19: TLabel;
    STGR_HLINHAS_3_5: TStringGrid;
    Label20: TLabel;
    STGR_HLINHAS_3_6: TStringGrid;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    STGR_HLINHAS_4_5: TStringGrid;
    STGR_HLINHAS_4_6: TStringGrid;
    STGR_HLINHAS_5_6: TStringGrid;
    Bevel6: TBevel;
    Label38: TLabel;
    STGR_HLINHAS_TODAS: TStringGrid;
    BBT_PREPARAR_MENU: TBitBtn;
    BBT_GERAR_MENU: TBitBtn;
    STGR_FILTRO_HLINHAS: TStringGrid;
    STGR_FILTRO_VCOLUNAS: TStringGrid;
    PA_BASE: TPanel;
    BBT_725: TBitBtn;
    BBT_724: TBitBtn;
    BBT_723: TBitBtn;
    BBT_722: TBitBtn;
    BBT_721: TBitBtn;
    BBT_720: TBitBtn;
    BBT_719: TBitBtn;
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
    BBT_708: TBitBtn;
    BBT_707: TBitBtn;
    BBT_706: TBitBtn;
    BBT_705: TBitBtn;
    BBT_704: TBitBtn;
    BBT_703: TBitBtn;
    BBT_702: TBitBtn;
    BBT_701: TBitBtn;
    PA_BASE_SUBFILTRO: TPanel;
    BBT_125: TBitBtn;
    BBT_124: TBitBtn;
    BBT_123: TBitBtn;
    BBT_122: TBitBtn;
    BBT_121: TBitBtn;
    BBT_120: TBitBtn;
    BBT_119: TBitBtn;
    BBT_118: TBitBtn;
    BBT_117: TBitBtn;
    BBT_116: TBitBtn;
    BBT_115: TBitBtn;
    BBT_114: TBitBtn;
    BBT_113: TBitBtn;
    BBT_112: TBitBtn;
    BBT_111: TBitBtn;
    BBT_110: TBitBtn;
    BBT_109: TBitBtn;
    BBT_108: TBitBtn;
    BBT_107: TBitBtn;
    BBT_106: TBitBtn;
    BBT_105: TBitBtn;
    BBT_104: TBitBtn;
    BBT_103: TBitBtn;
    BBT_102: TBitBtn;
    BBT_101: TBitBtn;
    BBT_RECOMECAR_Q2: TBitBtn;
    Bevel7: TBevel;
    ED_EXC_04: TEdit;
    ED_EXC_05: TEdit;
    BBT_CLICK_TUDO: TButton;
    BBT_BLOCO_NOTAS: TBitBtn;
    MEM_COMBINACOES_TODAS: TMemo;
    PA_GERAR: TPanel;
    LA_SOMA8e9: TLabel;
    Panel3: TPanel;
    Label190: TLabel;
    BBT_GERAR: TBitBtn;
    BBT_GERAR_VOLTAR: TBitBtn;
    CB_SOMA_8e9: TComboBox;
    PA_PREPARAR: TPanel;
    Label40: TLabel;
    Panel2: TPanel;
    Label41: TLabel;
    BBT_PREPARAR1: TBitBtn;
    BitBtn2: TBitBtn;
    CB_NUMEROS_OBRIGATORIOS: TComboBox;
    Label42: TLabel;
    CB_SOMATORIA_8_NumerosBase: TComboBox;
    CB_SOMATORIA_16_NumerosBase: TComboBox;
    STGR_TODOS_OS_16: TStringGrid;
    Label25: TLabel;
    STGR_TODOS_OS_8: TStringGrid;
    Label3: TLabel;
    PageControl1: TPageControl;
    TBS_1223_3221: TTabSheet;
    Label2: TLabel;
    LA_LINHA_1_100REP: TLabel;
    Label16: TLabel;
    LA_LINHA_2_100REP: TLabel;
    Label17: TLabel;
    LA_LINHA_3_100REP: TLabel;
    Label21: TLabel;
    LA_LINHA_4_100REP: TLabel;
    STGR_LINHA_1_C1: TStringGrid;
    STGR_LINHA_2_C1: TStringGrid;
    STGR_LINHA_3_C1: TStringGrid;
    STGR_LINHA_4_C1: TStringGrid;
    TBS_2312_2132: TTabSheet;
    TBS_1232_3213: TTabSheet;
    LA_LINHA_24_100REP: TLabel;
    STGR_LINHA_23_C1: TStringGrid;
    Label48: TLabel;
    LA_LINHA_23_100REP: TLabel;
    STGR_LINHA_24_C1: TStringGrid;
    Label52: TLabel;
    LA_LINHA_22_100REP: TLabel;
    STGR_LINHA_21_C1: TStringGrid;
    Label54: TLabel;
    LA_LINHA_21_100REP: TLabel;
    STGR_LINHA_22_C1: TStringGrid;
    Label57: TLabel;
    Label59: TLabel;
    LA_LINHA_31_100REP: TLabel;
    STGR_LINHA_31_C1: TStringGrid;
    Label62: TLabel;
    LA_LINHA_32_100REP: TLabel;
    STGR_LINHA_32_C1: TStringGrid;
    LA_LINHA_34_100REP: TLabel;
    STGR_LINHA_34_C1: TStringGrid;
    Label65: TLabel;
    Label66: TLabel;
    LA_LINHA_33_100REP: TLabel;
    STGR_LINHA_33_C1: TStringGrid;
    PageControl2: TPageControl;
    TBS_5443_3445: TTabSheet;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    STGR_LINHA_1_C2: TStringGrid;
    STGR_LINHA_2_C2: TStringGrid;
    STGR_LINHA_3_C2: TStringGrid;
    STGR_LINHA_4_C2: TStringGrid;
    TBS_4534_4354: TTabSheet;
    TBS_5434_3453: TTabSheet;
    Label43: TLabel;
    STGR_LINHA_23_C2: TStringGrid;
    STGR_LINHA_24_C2: TStringGrid;
    Label51: TLabel;
    STGR_LINHA_21_C2: TStringGrid;
    Label53: TLabel;
    STGR_LINHA_22_C2: TStringGrid;
    Label56: TLabel;
    Label61: TLabel;
    STGR_LINHA_32_C2: TStringGrid;
    STGR_LINHA_31_C2: TStringGrid;
    Label63: TLabel;
    Label64: TLabel;
    STGR_LINHA_33_C2: TStringGrid;
    Label67: TLabel;
    STGR_LINHA_34_C2: TStringGrid;
    TBS_1322_3122: TTabSheet;
    TBS_5344_3544: TTabSheet;
    Label68: TLabel;
    STGR_LINHA_41_C1: TStringGrid;
    LA_LINHA_41_100REP: TLabel;
    Label70: TLabel;
    STGR_LINHA_44_C1: TStringGrid;
    LA_LINHA_42_100REP: TLabel;
    Label72: TLabel;
    STGR_LINHA_42_C1: TStringGrid;
    LA_LINHA_43_100REP: TLabel;
    Label74: TLabel;
    STGR_LINHA_43_C1: TStringGrid;
    LA_LINHA_44_100REP: TLabel;
    Label80: TLabel;
    STGR_LINHA_43_C2: TStringGrid;
    Label81: TLabel;
    STGR_LINHA_42_C2: TStringGrid;
    STGR_LINHA_44_C2: TStringGrid;
    Label82: TLabel;
    Label83: TLabel;
    STGR_LINHA_41_C2: TStringGrid;
    TBS_2213_2231: TTabSheet;
    TBS_4453_4435: TTabSheet;
    STGR_LINHA_53_C1: TStringGrid;
    Label69: TLabel;
    LA_LINHA_53_100REP: TLabel;
    Label73: TLabel;
    LA_LINHA_54_100REP: TLabel;
    STGR_LINHA_54_C1: TStringGrid;
    STGR_LINHA_52_C1: TStringGrid;
    STGR_LINHA_51_C1: TStringGrid;
    Label84: TLabel;
    LA_LINHA_51_100REP: TLabel;
    Label86: TLabel;
    LA_LINHA_52_100REP: TLabel;
    STGR_LINHA_52_C2: TStringGrid;
    STGR_LINHA_51_C2: TStringGrid;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    STGR_LINHA_54_C2: TStringGrid;
    STGR_LINHA_53_C2: TStringGrid;
    Label92: TLabel;
    TBS_2123_2321: TTabSheet;
    TBS_4543_4345: TTabSheet;
    LA_LINHA_62_100REP: TLabel;
    STGR_LINHA_62_C1: TStringGrid;
    Label75: TLabel;
    STGR_LINHA_61_C1: TStringGrid;
    LA_LINHA_61_100REP: TLabel;
    Label88: TLabel;
    Label93: TLabel;
    STGR_LINHA_63_C1: TStringGrid;
    LA_LINHA_63_100REP: TLabel;
    Label95: TLabel;
    STGR_LINHA_64_C1: TStringGrid;
    LA_LINHA_64_100REP: TLabel;
    Label97: TLabel;
    STGR_LINHA_61_C2: TStringGrid;
    Label98: TLabel;
    STGR_LINHA_62_C2: TStringGrid;
    Label99: TLabel;
    STGR_LINHA_64_C2: TStringGrid;
    Label100: TLabel;
    STGR_LINHA_63_C2: TStringGrid;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label33: TLabel;
    STGR_COLUNA_11_Q2: TStringGrid;
    STGR_COLUNA_12_Q2: TStringGrid;
    STGR_COLUNA_13_Q2: TStringGrid;
    STGR_COLUNA_14_Q2: TStringGrid;
    TabSheet2: TTabSheet;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label71: TLabel;
    STGR_COLUNA_23_Q2: TStringGrid;
    STGR_COLUNA_24_Q2: TStringGrid;
    STGR_COLUNA_21_Q2: TStringGrid;
    STGR_COLUNA_22_Q2: TStringGrid;
    TabSheet3: TTabSheet;
    Label85: TLabel;
    Label94: TLabel;
    Label96: TLabel;
    Label101: TLabel;
    STGR_COLUNA_32_Q2: TStringGrid;
    STGR_COLUNA_31_Q2: TStringGrid;
    STGR_COLUNA_33_Q2: TStringGrid;
    STGR_COLUNA_34_Q2: TStringGrid;
    TabSheet4: TTabSheet;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    STGR_COLUNA_43_Q2: TStringGrid;
    STGR_COLUNA_42_Q2: TStringGrid;
    STGR_COLUNA_44_Q2: TStringGrid;
    STGR_COLUNA_41_Q2: TStringGrid;
    TabSheet5: TTabSheet;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    STGR_COLUNA_52_Q2: TStringGrid;
    STGR_COLUNA_51_Q2: TStringGrid;
    STGR_COLUNA_54_Q2: TStringGrid;
    STGR_COLUNA_53_Q2: TStringGrid;
    TabSheet6: TTabSheet;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    STGR_COLUNA_61_Q2: TStringGrid;
    STGR_COLUNA_62_Q2: TStringGrid;
    STGR_COLUNA_64_Q2: TStringGrid;
    STGR_COLUNA_63_Q2: TStringGrid;
    STGR_TODOS_OS_16_Q2: TStringGrid;
    Label114: TLabel;
    LA_COLUNA_11_100REP: TLabel;
    LA_COLUNA_12_100REP: TLabel;
    LA_COLUNA_14_100REP: TLabel;
    LA_COLUNA_13_100REP: TLabel;
    Label115: TLabel;
    CB_NUMEROS_QUADRO1: TComboBox;
    LA_QTD_Q1Q2: TLabel;
    CB_QTD_Q1Q2: TComboBox;
    BBT_GERAR_MENU_Q1: TBitBtn;
    BBT_GERAR_MENU_Q2: TBitBtn;
    Label116: TLabel;
    STGR_COLUNA_s61_Q2: TStringGrid;
    Label117: TLabel;
    Label118: TLabel;
    STGR_COLUNA_s62_Q2: TStringGrid;
    Label119: TLabel;
    Label120: TLabel;
    STGR_COLUNA_s63_Q2: TStringGrid;
    Label121: TLabel;
    Label122: TLabel;
    STGR_COLUNA_s64_Q2: TStringGrid;
    Label123: TLabel;
    Bevel1: TBevel;
    Label124: TLabel;
    STGR_TODOS_OS_08_Q2: TStringGrid;
    LA_SOMA_8e9_DESC: TLabel;
    BBT_GERAR2: TBitBtn;
    BT_REAJUSTAR: TButton;
    BBT_SAIR: TButton;
    BBT_CANCELAR: TBitBtn;
    Bevel2: TBevel;
    RB_SOMA8e9: TRadioButton;
    RB_NUMERO8e9: TRadioButton;
    LA_NUMERO8e9: TLabel;
    CB_NUMERO_8e9: TComboBox;
    CB_DUPLAS_LINHAS_Q2: TComboBox;
    LA_DUPLAS_LINHAS_Q2: TLabel;


    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBT_701Click(Sender: TObject);
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
    procedure BBT_702Click(Sender: TObject);
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
    procedure TRB_SOMA7_INIChange(Sender: TObject);
    procedure TRB_SOMA7_FinalChange(Sender: TObject);
    procedure BBT_101Click(Sender: TObject);
    procedure BBT_103Click(Sender: TObject);
    procedure BBT_105Click(Sender: TObject);
    procedure BBT_107Click(Sender: TObject);
    procedure BBT_109Click(Sender: TObject);
    procedure BBT_111Click(Sender: TObject);
    procedure BBT_113Click(Sender: TObject);
    procedure BBT_115Click(Sender: TObject);
    procedure BBT_117Click(Sender: TObject);
    procedure BBT_119Click(Sender: TObject);
    procedure BBT_121Click(Sender: TObject);
    procedure BBT_123Click(Sender: TObject);
    procedure BBT_125Click(Sender: TObject);
    procedure BBT_102Click(Sender: TObject);
    procedure BBT_104Click(Sender: TObject);
    procedure BBT_106Click(Sender: TObject);
    procedure BBT_108Click(Sender: TObject);
    procedure BBT_110Click(Sender: TObject);
    procedure BBT_112Click(Sender: TObject);
    procedure BBT_114Click(Sender: TObject);
    procedure BBT_116Click(Sender: TObject);
    procedure BBT_118Click(Sender: TObject);
    procedure BBT_120Click(Sender: TObject);
    procedure BBT_122Click(Sender: TObject);
    procedure BBT_124Click(Sender: TObject);     
    procedure BBT_RECOMECARClick(Sender: TObject);
    procedure BBT_CLICK_TUDOClick(Sender: TObject);
    procedure BBT_PREPARAR1Click(Sender: TObject);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure BBT_GERAR_MENUClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure BBT_GERAR_SAIRClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BT_CARREGAR_SIMULACAOClick(Sender: TObject);
    procedure RB_RESULTADOSClick(Sender: TObject);
    procedure TRB_SOMA12_INIChange(Sender: TObject);
    procedure TRB_SOMA12_FinalChange(Sender: TObject);
    procedure BBT_RECOMECAR_Q2Click(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
    procedure BBT_PREPARAR_MENUClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BBT_GERAR_VOLTARClick(Sender: TObject);
    procedure CB_SOMATORIA_8_NumerosBaseChange(Sender: TObject);
    procedure CB_SOMATORIA_16_NumerosBaseChange(Sender: TObject);
    procedure BBT_GERAR_MENU_Q1Click(Sender: TObject);
    procedure BBT_GERAR_MENU_Q2Click(Sender: TObject);
    procedure BBT_GERAR2Click(Sender: TObject);
    procedure BBT_CANCELARClick(Sender: TObject);

  private
    { Private declarations }
     PROCEDURE PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
     PROCEDURE PR_BOTOES_MODELO_1234 (VI_NUMERO: INTEGER);     
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);     
     PROCEDURE PR_LIMPAR_GRID10();
     procedure PR_LIMPAR_GRID_QUADRO1();

  public
    { Public declarations }
  end;


var
  _F_FILTRO_08_NS1_16_v2: T_F_FILTRO_08_NS1_16_v2;

implementation


{$R *.dfm}



procedure T_F_FILTRO_08_NS1_16_v2.FormCreate(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
     SELF.ClientWidth  := 1563;
     SELF.ClientHeight := 760;
     SELF.Top  := 69;
     SELF.Left := 9;
    FOR VI_CONTAR := 2 TO 18 DO
    BEGIN
        STGR_COMB10.Cells [VI_CONTAR,1] := '0';
        STGR_COMB15.Cells [VI_CONTAR,1] := '0';        
    END;
    STGR_COMB10.RowCount := 2;
    STGR_COMB15.RowCount := 2;
    FOR VI_CONTAR := 1 TO 6 DO
    BEGIN
        STGR_BASE_L1.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_L2.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_L3.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_L4.Cells[VI_CONTAR,0] := '0';
    END;
    STGR_COMB10.Cells[0,0] := 'QTD';
    STGR_COMB10.Cells[1,0] := '100REP';
    FOR VI_CONTAR := 1 TO 15 DO
    BEGIN
        STGR_COMB10.Cells [VI_CONTAR+1,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
    END;
     FOR VI_CONTAR :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
     END; // FOR VI_CONTAR
    ED_fixoS_1.Text := '00';
    FOR VI_CONTAR := 1 TO 3 DO
    BEGIN
        STGR_BASE_L1V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L1V.Cells [2, VI_CONTAR] := '0';
        STGR_BASE_L2V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L2V.Cells [2, VI_CONTAR] := '0';
        STGR_BASE_L3V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L3V.Cells [2, VI_CONTAR] := '0';
        STGR_BASE_L4V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L4V.Cells [2, VI_CONTAR] := '0';
    END;
    FOR VI_CONTAR := 1 TO 4 DO
    BEGIN
        STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,1] := '0';
        STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,2] := '0';
        STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,3] := '0';
        STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,4] := '0';
        STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,5] := '0';
        STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,6] := '0';
    END;
     PA_REMOVEUREPET.Left := 5000;
     PA_GABARITO.Visible := false;
     PA_PREENCHIMENTO.Enabled := false;
     SCBX_GABARITO.Enabled := false;
     PA_RESULTADO.Enabled := false;

     BT_NOVA_SIMULACAO.Enabled := TRUE;
     BT_REAJUSTAR.Enabled := false;
     BT_CARREGAR_SIMULACAO.Enabled := TRUE;
     BBT_SAIR.Enabled := TRUE;
     BBT_CANCELAR.Enabled := TRUE;
     PA_INICIAL.Left := 450;
     PA_INICIAL.Visible := TRUE;
//     PA_GERAR.Visible := false;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     PA_GERAR.Repaint;
//     PA_PREPARAR.Visible := false;
     PA_PREPARAR.Enabled := false;
     PA_PREPARAR.Left := 4500;
     PA_PREPARAR.Repaint;
     bbt_close.Left := SELF.ClientWidth-35;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0008EXC2_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     PA_INICIAL.Repaint;
end;


procedure T_F_FILTRO_08_NS1_16_v2.FormShow(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     PA_GABARITO.Enabled := false;
     PA_PREENCHIMENTO.Enabled := false;
     SCBX_GABARITO.Enabled := false;
     PA_RESULTADO.Enabled := false;
     PA_INICIAL.Left := 450;
     PA_INICIAL.Visible := TRUE;
     PA_GERAR.Visible := false;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     PA_GERAR.Repaint;
   //  BT_NOVA_SIMULACAO.Click;
end;


procedure T_F_FILTRO_08_NS1_16_v2.FormClose(Sender: TObject;
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




procedure T_F_FILTRO_08_NS1_16_v2.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_FILTRO_08_NS1_16_v2.PR_LIMPAR_GRID_QUADRO1();
begin
     SCBX_GABARITO.HorzScrollBar.Position := 1539;
     SCBX_GABARITO.Repaint;
     STGR_TODOS_OS_8.CleanupInstance;
     STGR_TODOS_OS_8.Free;
     STGR_TODOS_OS_8 := TStringGrid.Create (Self);
     STGR_TODOS_OS_8.Parent := SCBX_GABARITO;
  STGR_TODOS_OS_8.Left := 338;
  STGR_TODOS_OS_8.Top := 25;
  STGR_TODOS_OS_8.Width := 302;
  STGR_TODOS_OS_8.Height := 168;
  STGR_TODOS_OS_8.TabStop := False;
  STGR_TODOS_OS_8.Color := 12636851;
  STGR_TODOS_OS_8.ColCount := 9;
  STGR_TODOS_OS_8.DefaultColWidth := 28;
  STGR_TODOS_OS_8.DefaultRowHeight := 23;
  STGR_TODOS_OS_8.FixedColor := 11053056;
  STGR_TODOS_OS_8.RowCount := 2;
  STGR_TODOS_OS_8.Options := [goFixedHorzLine, goHorzLine, goRangeSelect];
  STGR_TODOS_OS_8.TabOrder := 24;
  STGR_TODOS_OS_8.Repaint;
  SLEEP(9);

     STGR_TODOS_OS_16.CleanupInstance;
     STGR_TODOS_OS_16.Free;
     STGR_TODOS_OS_16 := TStringGrid.Create (Self);
     STGR_TODOS_OS_16.Parent := SCBX_GABARITO;
  STGR_TODOS_OS_16.Left := 654;
  STGR_TODOS_OS_16.Top := 26;
  STGR_TODOS_OS_16.Width := 541;
  STGR_TODOS_OS_16.Height := 165;
  STGR_TODOS_OS_16.TabStop := False;
  STGR_TODOS_OS_16.Color := 9231585;
  STGR_TODOS_OS_16.ColCount := 17;
  STGR_TODOS_OS_16.DefaultColWidth := 28;
  STGR_TODOS_OS_16.DefaultRowHeight := 23;
  STGR_TODOS_OS_16.FixedColor := 7190272;
  STGR_TODOS_OS_16.RowCount := 2;
  STGR_TODOS_OS_16.Options := [goFixedHorzLine, goHorzLine, goRangeSelect];
  STGR_TODOS_OS_16.TabOrder := 23;
  STGR_TODOS_OS_16.Repaint;
  SLEEP(19);


     SCBX_GABARITO.HorzScrollBar.Position := 6608;
     SCBX_GABARITO.Repaint;
     STGR_TODOS_OS_16_Q2.CleanupInstance;
     STGR_TODOS_OS_16_Q2.Free;
     STGR_TODOS_OS_16_Q2 := TStringGrid.Create (Self);
     STGR_TODOS_OS_16_Q2.Parent := SCBX_GABARITO;
  STGR_TODOS_OS_16_Q2.Left := 996;
  STGR_TODOS_OS_16_Q2.Top := 26;
  STGR_TODOS_OS_16_Q2.Width := 541;
  STGR_TODOS_OS_16_Q2.Height := 165;
  STGR_TODOS_OS_16_Q2.TabStop := False;
  STGR_TODOS_OS_16_Q2.Color := $00D3F3F8;
  STGR_TODOS_OS_16_Q2.ColCount := 17;
  STGR_TODOS_OS_16_Q2.DefaultColWidth := 28;
  STGR_TODOS_OS_16_Q2.DefaultRowHeight := 23;
  STGR_TODOS_OS_16_Q2.FixedColor := $00706000;
  STGR_TODOS_OS_16_Q2.RowCount := 2;
  STGR_TODOS_OS_16_Q2.Options := [goFixedHorzLine, goHorzLine, goRangeSelect];
  STGR_TODOS_OS_16_Q2.TabOrder := 21;
  STGR_TODOS_OS_16_Q2.Repaint;
  SLEEP(9);
end;




procedure T_F_FILTRO_08_NS1_16_v2.TRB_SOMA7_INIChange(Sender: TObject);
begin
     CASE CB_SOMATORIA_8_NumerosBase.ItemIndex OF
          0:
          BEGIN
               IF TRB_SOMA7_INI.Position = 1 THEN
                    ED_SOMA7_INI.Text := '72';
               IF TRB_SOMA7_INI.Position = 2 THEN
                    ED_SOMA7_INI.Text := '73';
               IF TRB_SOMA7_INI.Position = 3 THEN
                    ED_SOMA7_INI.Text := '74';
               IF TRB_SOMA7_INI.Position = 4 THEN
                    ED_SOMA7_INI.Text := '75';
               IF TRB_SOMA7_INI.Position = 5 THEN
                    ED_SOMA7_INI.Text := '76';
               IF TRB_SOMA7_INI.Position = 6 THEN
                    ED_SOMA7_INI.Text := '77';
               IF TRB_SOMA7_INI.Position = 7 THEN
                    ED_SOMA7_INI.Text := '78';
               IF TRB_SOMA7_INI.Position = 8 THEN
                    ED_SOMA7_INI.Text := '79';
               IF TRB_SOMA7_INI.Position = 9 THEN
                    ED_SOMA7_INI.Text := '80';
               IF TRB_SOMA7_INI.Position = 10 THEN
                    ED_SOMA7_INI.Text := '81';
               IF TRB_SOMA7_INI.Position = 11 THEN
                    ED_SOMA7_INI.Text := '82';
               IF TRB_SOMA7_INI.Position = 12 THEN
                    ED_SOMA7_INI.Text := '83';
               IF TRB_SOMA7_INI.Position = 13 THEN
                    ED_SOMA7_INI.Text := '84';
          END; // O:
          1:
          BEGIN
               IF TRB_SOMA7_INI.Position = 1 THEN
                    ED_SOMA7_INI.Text := '85';
               IF TRB_SOMA7_INI.Position = 2 THEN
                    ED_SOMA7_INI.Text := '86';
               IF TRB_SOMA7_INI.Position = 3 THEN
                    ED_SOMA7_INI.Text := '87';
               IF TRB_SOMA7_INI.Position = 4 THEN
                    ED_SOMA7_INI.Text := '88';
               IF TRB_SOMA7_INI.Position = 5 THEN
                    ED_SOMA7_INI.Text := '89';
               IF TRB_SOMA7_INI.Position = 6 THEN
                    ED_SOMA7_INI.Text := '90';
               IF TRB_SOMA7_INI.Position = 7 THEN
                    ED_SOMA7_INI.Text := '91';
               IF TRB_SOMA7_INI.Position = 8 THEN
                    ED_SOMA7_INI.Text := '92';
               IF TRB_SOMA7_INI.Position = 9 THEN
                    ED_SOMA7_INI.Text := '93';
               IF TRB_SOMA7_INI.Position = 10 THEN
                    ED_SOMA7_INI.Text := '94';
               IF TRB_SOMA7_INI.Position = 11 THEN
                    ED_SOMA7_INI.Text := '95';
               IF TRB_SOMA7_INI.Position = 12 THEN
                    ED_SOMA7_INI.Text := '96';
               IF TRB_SOMA7_INI.Position = 13 THEN
                    ED_SOMA7_INI.Text := '97';
          END; // 1:
          2:
          BEGIN
               IF TRB_SOMA7_INI.Position = 1 THEN
                    ED_SOMA7_INI.Text := '96';
               IF TRB_SOMA7_INI.Position = 2 THEN
                    ED_SOMA7_INI.Text := '97';
               IF TRB_SOMA7_INI.Position = 3 THEN
                    ED_SOMA7_INI.Text := '98';
               IF TRB_SOMA7_INI.Position = 4 THEN
                    ED_SOMA7_INI.Text := '99';
               IF TRB_SOMA7_INI.Position = 5 THEN
                    ED_SOMA7_INI.Text := '100';
               IF TRB_SOMA7_INI.Position = 6 THEN
                    ED_SOMA7_INI.Text := '101';
               IF TRB_SOMA7_INI.Position = 7 THEN
                    ED_SOMA7_INI.Text := '102';
               IF TRB_SOMA7_INI.Position = 8 THEN
                    ED_SOMA7_INI.Text := '103';
               IF TRB_SOMA7_INI.Position = 9 THEN
                    ED_SOMA7_INI.Text := '104';
               IF TRB_SOMA7_INI.Position = 10 THEN
                    ED_SOMA7_INI.Text := '105';
               IF TRB_SOMA7_INI.Position = 11 THEN
                    ED_SOMA7_INI.Text := '106';
               IF TRB_SOMA7_INI.Position = 12 THEN
                    ED_SOMA7_INI.Text := '107';
               IF TRB_SOMA7_INI.Position = 13 THEN
                    ED_SOMA7_INI.Text := '108';
          END; // 2:
     END; // CASE
end;



procedure T_F_FILTRO_08_NS1_16_v2.TRB_SOMA7_FinalChange(Sender: TObject);
begin
     CASE CB_SOMATORIA_8_NumerosBase.ItemIndex OF
          0:
          BEGIN
               IF TRB_SOMA7_Final.Position = 1 THEN
                    ED_SOMA7_Final.Text := '72';
               IF TRB_SOMA7_Final.Position = 2 THEN
                    ED_SOMA7_Final.Text := '73';
               IF TRB_SOMA7_Final.Position = 3 THEN
                    ED_SOMA7_Final.Text := '74';
               IF TRB_SOMA7_Final.Position = 4 THEN
                    ED_SOMA7_Final.Text := '75';
               IF TRB_SOMA7_Final.Position = 5 THEN
                    ED_SOMA7_Final.Text := '76';
               IF TRB_SOMA7_Final.Position = 6 THEN
                    ED_SOMA7_Final.Text := '77';
               IF TRB_SOMA7_Final.Position = 7 THEN
                    ED_SOMA7_Final.Text := '78';
               IF TRB_SOMA7_Final.Position = 8 THEN
                    ED_SOMA7_Final.Text := '79';
               IF TRB_SOMA7_Final.Position = 9 THEN
                    ED_SOMA7_Final.Text := '80';
               IF TRB_SOMA7_Final.Position = 10 THEN
                    ED_SOMA7_Final.Text := '81';
               IF TRB_SOMA7_Final.Position = 11 THEN
                    ED_SOMA7_Final.Text := '82';
               IF TRB_SOMA7_Final.Position = 12 THEN
                    ED_SOMA7_Final.Text := '83';
               IF TRB_SOMA7_Final.Position = 13 THEN
                    ED_SOMA7_Final.Text := '84';
          END; // O:
          1:
          BEGIN
               IF TRB_SOMA7_Final.Position = 1 THEN
                    ED_SOMA7_Final.Text := '85';
               IF TRB_SOMA7_Final.Position = 2 THEN
                    ED_SOMA7_Final.Text := '86';
               IF TRB_SOMA7_Final.Position = 3 THEN
                    ED_SOMA7_Final.Text := '87';
               IF TRB_SOMA7_Final.Position = 4 THEN
                    ED_SOMA7_Final.Text := '88';
               IF TRB_SOMA7_Final.Position = 5 THEN
                    ED_SOMA7_Final.Text := '89';
               IF TRB_SOMA7_Final.Position = 6 THEN
                    ED_SOMA7_Final.Text := '90';
               IF TRB_SOMA7_Final.Position = 7 THEN
                    ED_SOMA7_Final.Text := '91';
               IF TRB_SOMA7_Final.Position = 8 THEN
                    ED_SOMA7_Final.Text := '92';
               IF TRB_SOMA7_Final.Position = 9 THEN
                    ED_SOMA7_Final.Text := '93';
               IF TRB_SOMA7_Final.Position = 10 THEN
                    ED_SOMA7_Final.Text := '94';
               IF TRB_SOMA7_Final.Position = 11 THEN
                    ED_SOMA7_Final.Text := '95';
               IF TRB_SOMA7_Final.Position = 12 THEN
                    ED_SOMA7_Final.Text := '96';
               IF TRB_SOMA7_Final.Position = 13 THEN
                    ED_SOMA7_Final.Text := '97';
          END; // 1:
          2:
          BEGIN
               IF TRB_SOMA7_Final.Position = 1 THEN
                    ED_SOMA7_Final.Text := '96';
               IF TRB_SOMA7_Final.Position = 2 THEN
                    ED_SOMA7_Final.Text := '97';
               IF TRB_SOMA7_Final.Position = 3 THEN
                    ED_SOMA7_Final.Text := '98';
               IF TRB_SOMA7_Final.Position = 4 THEN
                    ED_SOMA7_Final.Text := '99';
               IF TRB_SOMA7_Final.Position = 5 THEN
                    ED_SOMA7_Final.Text := '100';
               IF TRB_SOMA7_Final.Position = 6 THEN
                    ED_SOMA7_Final.Text := '101';
               IF TRB_SOMA7_Final.Position = 7 THEN
                    ED_SOMA7_Final.Text := '102';
               IF TRB_SOMA7_Final.Position = 8 THEN
                    ED_SOMA7_Final.Text := '103';
               IF TRB_SOMA7_Final.Position = 9 THEN
                    ED_SOMA7_Final.Text := '104';
               IF TRB_SOMA7_Final.Position = 10 THEN
                    ED_SOMA7_Final.Text := '105';
               IF TRB_SOMA7_Final.Position = 11 THEN
                    ED_SOMA7_Final.Text := '106';
               IF TRB_SOMA7_Final.Position = 12 THEN
                    ED_SOMA7_Final.Text := '107';
               IF TRB_SOMA7_Final.Position = 13 THEN
                    ED_SOMA7_Final.Text := '108';
          END; // 2:
     END; // CASE

end;



procedure T_F_FILTRO_08_NS1_16_v2.TRB_SOMA12_INIChange(Sender: TObject);
begin
     CASE CB_SOMATORIA_16_NumerosBase.ItemIndex OF
          0:
          BEGIN
               IF TRB_SOMA12_INI.Position = 1 THEN
                    ED_SOMA12_INI.Text := '163';
               IF TRB_SOMA12_INI.Position = 2 THEN
                    ED_SOMA12_INI.Text := '164';
               IF TRB_SOMA12_INI.Position = 3 THEN
                    ED_SOMA12_INI.Text := '165';
               IF TRB_SOMA12_INI.Position = 4 THEN
                    ED_SOMA12_INI.Text := '166';
               IF TRB_SOMA12_INI.Position = 5 THEN
                    ED_SOMA12_INI.Text := '167';
               IF TRB_SOMA12_INI.Position = 6 THEN
                    ED_SOMA12_INI.Text := '168';
               IF TRB_SOMA12_INI.Position = 7 THEN
                    ED_SOMA12_INI.Text := '169';
               IF TRB_SOMA12_INI.Position = 8 THEN
                    ED_SOMA12_INI.Text := '170';
               IF TRB_SOMA12_INI.Position = 9 THEN
                    ED_SOMA12_INI.Text := '171';
               IF TRB_SOMA12_INI.Position = 10 THEN
                    ED_SOMA12_INI.Text := '172';
               IF TRB_SOMA12_INI.Position = 11 THEN
                    ED_SOMA12_INI.Text := '173';
               IF TRB_SOMA12_INI.Position = 12 THEN
                    ED_SOMA12_INI.Text := '174';
               IF TRB_SOMA12_INI.Position = 13 THEN
                    ED_SOMA12_INI.Text := '175';
          END; //0
          1:
          BEGIN
               IF TRB_SOMA12_INI.Position = 1 THEN
                    ED_SOMA12_INI.Text := '178';
               IF TRB_SOMA12_INI.Position = 2 THEN
                    ED_SOMA12_INI.Text := '179';
               IF TRB_SOMA12_INI.Position = 3 THEN
                    ED_SOMA12_INI.Text := '180';
               IF TRB_SOMA12_INI.Position = 4 THEN
                    ED_SOMA12_INI.Text := '181';
               IF TRB_SOMA12_INI.Position = 5 THEN
                    ED_SOMA12_INI.Text := '182';
               IF TRB_SOMA12_INI.Position = 6 THEN
                    ED_SOMA12_INI.Text := '183';
               IF TRB_SOMA12_INI.Position = 7 THEN
                    ED_SOMA12_INI.Text := '184';
               IF TRB_SOMA12_INI.Position = 8 THEN
                    ED_SOMA12_INI.Text := '185';
               IF TRB_SOMA12_INI.Position = 9 THEN
                    ED_SOMA12_INI.Text := '186';
               IF TRB_SOMA12_INI.Position = 10 THEN
                    ED_SOMA12_INI.Text := '187';
               IF TRB_SOMA12_INI.Position = 11 THEN
                    ED_SOMA12_INI.Text := '188';
               IF TRB_SOMA12_INI.Position = 12 THEN
                    ED_SOMA12_INI.Text := '189';
               IF TRB_SOMA12_INI.Position = 13 THEN
                    ED_SOMA12_INI.Text := '190';
          END; // 1
          2:
          BEGIN
               IF TRB_SOMA12_INI.Position = 1 THEN
                    ED_SOMA12_INI.Text := '189';
               IF TRB_SOMA12_INI.Position = 2 THEN
                    ED_SOMA12_INI.Text := '190';
               IF TRB_SOMA12_INI.Position = 3 THEN
                    ED_SOMA12_INI.Text := '191';
               IF TRB_SOMA12_INI.Position = 4 THEN
                    ED_SOMA12_INI.Text := '192';
               IF TRB_SOMA12_INI.Position = 5 THEN
                    ED_SOMA12_INI.Text := '193';
               IF TRB_SOMA12_INI.Position = 6 THEN
                    ED_SOMA12_INI.Text := '194';
               IF TRB_SOMA12_INI.Position = 7 THEN
                    ED_SOMA12_INI.Text := '195';
               IF TRB_SOMA12_INI.Position = 8 THEN
                    ED_SOMA12_INI.Text := '196';
               IF TRB_SOMA12_INI.Position = 9 THEN
                    ED_SOMA12_INI.Text := '197';
               IF TRB_SOMA12_INI.Position = 10 THEN
                    ED_SOMA12_INI.Text := '198';
               IF TRB_SOMA12_INI.Position = 11 THEN
                    ED_SOMA12_INI.Text := '199';
               IF TRB_SOMA12_INI.Position = 12 THEN
                    ED_SOMA12_INI.Text := '200';
               IF TRB_SOMA12_INI.Position = 13 THEN
                    ED_SOMA12_INI.Text := '201';
          END; // 1
     END; // CASE
end;



procedure T_F_FILTRO_08_NS1_16_v2.TRB_SOMA12_FinalChange(Sender: TObject);
begin
     CASE CB_SOMATORIA_16_NumerosBase.ItemIndex OF
          0:
          BEGIN
               IF TRB_SOMA12_Final.Position = 1 THEN
                    ED_SOMA12_Final.Text := '163';
               IF TRB_SOMA12_Final.Position = 2 THEN
                    ED_SOMA12_Final.Text := '164';
               IF TRB_SOMA12_Final.Position = 3 THEN
                    ED_SOMA12_Final.Text := '165';
               IF TRB_SOMA12_Final.Position = 4 THEN
                    ED_SOMA12_Final.Text := '166';
               IF TRB_SOMA12_Final.Position = 5 THEN
                    ED_SOMA12_Final.Text := '167';
               IF TRB_SOMA12_Final.Position = 6 THEN
                    ED_SOMA12_Final.Text := '168';
               IF TRB_SOMA12_Final.Position = 7 THEN
                    ED_SOMA12_Final.Text := '169';
               IF TRB_SOMA12_Final.Position = 8 THEN
                    ED_SOMA12_Final.Text := '170';
               IF TRB_SOMA12_Final.Position = 9 THEN
                    ED_SOMA12_Final.Text := '171';
               IF TRB_SOMA12_Final.Position = 10 THEN
                    ED_SOMA12_Final.Text := '172';
               IF TRB_SOMA12_Final.Position = 11 THEN
                    ED_SOMA12_Final.Text := '173';
               IF TRB_SOMA12_Final.Position = 12 THEN
                    ED_SOMA12_Final.Text := '174';
               IF TRB_SOMA12_Final.Position = 13 THEN
                    ED_SOMA12_Final.Text := '175';
          END; //0
          1:
          BEGIN
               IF TRB_SOMA12_Final.Position = 1 THEN
                    ED_SOMA12_Final.Text := '178';
               IF TRB_SOMA12_Final.Position = 2 THEN
                    ED_SOMA12_Final.Text := '179';
               IF TRB_SOMA12_Final.Position = 3 THEN
                    ED_SOMA12_Final.Text := '180';
               IF TRB_SOMA12_Final.Position = 4 THEN
                    ED_SOMA12_Final.Text := '181';
               IF TRB_SOMA12_Final.Position = 5 THEN
                    ED_SOMA12_Final.Text := '182';
               IF TRB_SOMA12_Final.Position = 6 THEN
                    ED_SOMA12_Final.Text := '183';
               IF TRB_SOMA12_Final.Position = 7 THEN
                    ED_SOMA12_Final.Text := '184';
               IF TRB_SOMA12_Final.Position = 8 THEN
                    ED_SOMA12_Final.Text := '185';
               IF TRB_SOMA12_Final.Position = 9 THEN
                    ED_SOMA12_Final.Text := '186';
               IF TRB_SOMA12_Final.Position = 10 THEN
                    ED_SOMA12_Final.Text := '187';
               IF TRB_SOMA12_Final.Position = 11 THEN
                    ED_SOMA12_Final.Text := '188';
               IF TRB_SOMA12_Final.Position = 12 THEN
                    ED_SOMA12_Final.Text := '189';
               IF TRB_SOMA12_Final.Position = 13 THEN
                    ED_SOMA12_Final.Text := '190';
          END; //1
          2:
          BEGIN
               IF TRB_SOMA12_Final.Position = 1 THEN
                    ED_SOMA12_Final.Text := '189';
               IF TRB_SOMA12_Final.Position = 2 THEN
                    ED_SOMA12_Final.Text := '190';
               IF TRB_SOMA12_Final.Position = 3 THEN
                    ED_SOMA12_Final.Text := '191';
               IF TRB_SOMA12_Final.Position = 4 THEN
                    ED_SOMA12_Final.Text := '192';
               IF TRB_SOMA12_Final.Position = 5 THEN
                    ED_SOMA12_Final.Text := '193';
               IF TRB_SOMA12_Final.Position = 6 THEN
                    ED_SOMA12_Final.Text := '194';
               IF TRB_SOMA12_Final.Position = 7 THEN
                    ED_SOMA12_Final.Text := '195';
               IF TRB_SOMA12_Final.Position = 8 THEN
                    ED_SOMA12_Final.Text := '196';
               IF TRB_SOMA12_Final.Position = 9 THEN
                    ED_SOMA12_Final.Text := '197';
               IF TRB_SOMA12_Final.Position = 10 THEN
                    ED_SOMA12_Final.Text := '198';
               IF TRB_SOMA12_Final.Position = 11 THEN
                    ED_SOMA12_Final.Text := '199';
               IF TRB_SOMA12_Final.Position = 12 THEN
                    ED_SOMA12_Final.Text := '200';
               IF TRB_SOMA12_Final.Position = 13 THEN
                    ED_SOMA12_Final.Text := '201';
          END; //1
     END; // CASE
end;



procedure T_F_FILTRO_08_NS1_16_v2.BBT_RECOMECARClick(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
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
    FOR VI_CONTAR := 2 TO 18 DO
    BEGIN
        STGR_COMB10.Cells [VI_CONTAR,1] := '0';
        STGR_COMB15.Cells [VI_CONTAR,1] := '0';
    END;
    STGR_COMB10.RowCount := 2;
    STGR_COMB15.RowCount := 2;
    FOR VI_CONTAR := 1 TO 6 DO
    BEGIN
        STGR_BASE_L1.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L2.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L3.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L4.Cells [VI_CONTAR,0] := '0';
    END;
    ED_fixoS_1.Text := '00';  
    FOR VI_CONTAR := 1 TO 3 DO
    BEGIN
        STGR_BASE_L1V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L1V.Cells [2, VI_CONTAR] := '0';
        STGR_BASE_L2V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L2V.Cells [2, VI_CONTAR] := '0';
        STGR_BASE_L3V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L3V.Cells [2, VI_CONTAR] := '0';
        STGR_BASE_L4V.Cells [1, VI_CONTAR] := '0';
        STGR_BASE_L4V.Cells [2, VI_CONTAR] := '0';
    END;
end;


procedure T_F_FILTRO_08_NS1_16_v2.BBT_RECOMECAR_Q2Click(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
    BBT_101.Enabled := TRUE;
    BBT_102.Enabled := TRUE;
    BBT_103.Enabled := TRUE;
    BBT_104.Enabled := TRUE;
    BBT_105.Enabled := TRUE;
    BBT_106.Enabled := TRUE;
    BBT_107.Enabled := TRUE;
    BBT_108.Enabled := TRUE;
    BBT_109.Enabled := TRUE;
    BBT_110.Enabled := TRUE;
    BBT_111.Enabled := TRUE;
    BBT_112.Enabled := TRUE;
    BBT_113.Enabled := TRUE;
    BBT_114.Enabled := TRUE;
    BBT_115.Enabled := TRUE;
    BBT_116.Enabled := TRUE;
    BBT_117.Enabled := TRUE;
    BBT_118.Enabled := TRUE;
    BBT_119.Enabled := TRUE;
    BBT_120.Enabled := TRUE;
    BBT_121.Enabled := TRUE;
    BBT_122.Enabled := TRUE;
    BBT_123.Enabled := TRUE;
    BBT_124.Enabled := TRUE;
    BBT_125.Enabled := TRUE;
    FOR VI_CONTAR := 1 TO 4 DO
    BEGIN
        STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,1] := '0';
        STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,2] := '0';
        STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,3] := '0';
        STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,4] := '0';
        STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,5] := '0';
        STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,6] := '0';
    END;
     ED_Fora_SUBFILTRO_1.Text := '00';      
end;



procedure T_F_FILTRO_08_NS1_16_v2.BBT_CLICK_TUDOClick(Sender: TObject);
begin
     BBT_701.Click;
     BBT_702.Click;
     BBT_707.Click;
     BBT_708.Click;
     BBT_703.Click;
     BBT_704.Click;
     BBT_709.Click;
     BBT_711.Click;
     BBT_705.Click;
     BBT_706.Click;
     BBT_710.Click;
     BBT_712.Click;

     BBT_718.Click;
     BBT_719.Click;
     BBT_724.Click;
     BBT_725.Click;
     BBT_715.Click;
     BBT_717.Click;
     BBT_714.Click;
     BBT_722.Click;
     BBT_723.Click;
     BBT_716.Click;
     BBT_720.Click;
     BBT_721.Click;

     BBT_713.Click;
     ED_Fora_SUBFILTRO_1.Text := '25';

     BBT_101.Click;
     BBT_118.Click;
     BBT_124.Click;
     BBT_107.Click;
     BBT_103.Click;
     BBT_115.Click;
     BBT_114.Click;
     BBT_109.Click;


     BBT_102.Click;
     BBT_119.Click;
     BBT_125.Click;
     BBT_108.Click;
     BBT_104.Click;
     BBT_117.Click;
     BBT_122.Click;
     BBT_111.Click;


     BBT_106.Click;
     BBT_105.Click;
     BBT_112.Click;
     BBT_110.Click;
     BBT_123.Click;
     BBT_116.Click;
     BBT_120.Click;
     BBT_121.Click;

     BBT_113.Click;
end;




procedure T_F_FILTRO_08_NS1_16_v2.BBT_PREPARAR1Click(Sender: TObject);
var
     VI_CONTADOR, VI_CONTAR, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2: integer;
     VI_COMBINACOES3, VI_COMBINACOES4, VI_COMBINACOES5: SMALLINT;
     VI_LINHAS1: SMALLINT;
     VS_NUMEROSPRINCIPAIS: STRING;
begin
     BBT_GERAR_MENU.Enabled := TRUE;
     BBT_GERAR_MENU_Q1.Enabled := TRUE;
     BBT_GERAR_MENU_Q2.Enabled := TRUE;
     PA_RESULTADO.Enabled := false;
     CASE CB_NUMEROS_OBRIGATORIOS.ItemIndex OF
          0:
          BEGIN
               ED_EXC_01.Text :='01';
               ED_EXC_02.Text :='24';
               if (STRtoINT(ED_fixoS_1.Text) = 1) OR (STRtoINT(ED_fixoS_1.Text) = 24) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0);
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    EXIT;
               END; // IF
          END; // 0:
          1:
          BEGIN
               ED_EXC_01.Text :='02';
               ED_EXC_02.Text :='25';
               if (STRtoINT(ED_fixoS_1.Text) = 2) OR (STRtoINT(ED_fixoS_1.Text) = 25) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0) ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    EXIT;
               END; // IF
          END; // 1:
          2:
          BEGIN
               ED_EXC_01.Text :='01';
               ED_EXC_02.Text :='02';
               ED_EXC_03.Text :='24';
               if (STRtoINT(ED_fixoS_1.Text) = 01) OR (STRtoINT(ED_fixoS_1.Text) = 02) OR (STRtoINT(ED_fixoS_1.Text) = 24) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0)  ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    Exit;
               END; // IF
          END; // 2:
          3:
          BEGIN
               ED_EXC_01.Text :='02';
               ED_EXC_02.Text :='24';
               ED_EXC_03.Text :='25';
               if (STRtoINT(ED_fixoS_1.Text) = 02) OR (STRtoINT(ED_fixoS_1.Text) = 24) OR (STRtoINT(ED_fixoS_1.Text) = 25) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0)  ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    Exit;
               END; // IF
          END; // 3:
          4:
          BEGIN
               ED_EXC_01.Text :='01';
               ED_EXC_02.Text :='02';
               ED_EXC_03.Text :='25';
               if (STRtoINT(ED_fixoS_1.Text) = 01) OR (STRtoINT(ED_fixoS_1.Text) = 02) OR (STRtoINT(ED_fixoS_1.Text) = 25) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0)  ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    Exit;
               END; // IF
          END; // 4:
          5:
          BEGIN
               ED_EXC_01.Text :='01';
               ED_EXC_02.Text :='24';
               ED_EXC_03.Text :='25';
               if (STRtoINT(ED_fixoS_1.Text) = 01) OR (STRtoINT(ED_fixoS_1.Text) = 24) OR (STRtoINT(ED_fixoS_1.Text) = 25) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0)  ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    Exit;
               END; // IF
          END; // 5:
          6:
          BEGIN
               ED_EXC_01.Text :='01';
               ED_EXC_02.Text :='02';
               ED_EXC_03.Text :='24';
               ED_EXC_04.Text :='25';
               if (STRtoINT(ED_fixoS_1.Text) = 01) OR (STRtoINT(ED_fixoS_1.Text) = 02) OR (STRtoINT(ED_fixoS_1.Text) = 24) OR (STRtoINT(ED_fixoS_1.Text) = 25) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0)  ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    Exit;
               END; // IF
          END; // 6:
          7:
          BEGIN
               ED_EXC_01.Text :='13';
               if (STRtoINT(ED_fixoS_1.Text) = 13) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0)  ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    Exit;
               END; // IF
          END; // 7:
          8:
          BEGIN
               ED_EXC_01.Text :='12';
               ED_EXC_02.Text :='13';
               if (STRtoINT(ED_fixoS_1.Text) = 12) OR (STRtoINT(ED_fixoS_1.Text) = 13) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0)  ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    Exit;
               END; // IF
          END; // 8:
          9:
          BEGIN
               ED_EXC_01.Text :='12';
               ED_EXC_02.Text :='14';
               if (STRtoINT(ED_fixoS_1.Text) = 12) OR (STRtoINT(ED_fixoS_1.Text) = 14) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0)  ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    Exit;
               END; // IF
          END; // 9:
          10:
          BEGIN
               ED_EXC_01.Text :='12';
               ED_EXC_02.Text :='13';
               ED_EXC_03.Text :='14';
               if (STRtoINT(ED_fixoS_1.Text) = 12) OR (STRtoINT(ED_fixoS_1.Text) = 13) OR (STRtoINT(ED_fixoS_1.Text) = 14) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0)  ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    Exit;
               END; // IF
          END; // 10:
          11:
          BEGIN
               ED_EXC_01.Text :='13';
               ED_EXC_02.Text :='14';
               if (STRtoINT(ED_fixoS_1.Text) = 13) OR (STRtoINT(ED_fixoS_1.Text) = 14) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0)  ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    Exit;
               END; // IF
          END; // 11:
          12:
          BEGIN
               ED_EXC_01.Text :='12';
               ED_EXC_02.Text :='13';
               ED_EXC_03.Text :='15';
               if (STRtoINT(ED_fixoS_1.Text) = 12) OR (STRtoINT(ED_fixoS_1.Text) = 13) OR (STRtoINT(ED_fixoS_1.Text) = 15) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0)  ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    Exit;
               END; // IF
          END; // 12:
          13:
          BEGIN
               ED_EXC_01.Text :='11';
               ED_EXC_02.Text :='13';
               ED_EXC_03.Text :='14';
               if (STRtoINT(ED_fixoS_1.Text) = 11) OR (STRtoINT(ED_fixoS_1.Text) = 13) OR (STRtoINT(ED_fixoS_1.Text) = 14) THEN
               BEGIN
                    MESSAGEDLG ('Esta opção é invalida, tente outra.', mtInformation,[mbOk],0)  ;
                    CB_NUMEROS_OBRIGATORIOS.ItemIndex := 14;
                    Exit;
               END; // IF
          END; // 13:
          14:
          BEGIN
               //ED_EXC_01.Text :='00';
               //ED_EXC_02.Text :='00';
               //ED_EXC_03.Text :='00';
               //ED_EXC_04.Text :='00';
               //ED_EXC_05.Text :='00';
          END; // 11:
     END; // CASE
     PA_PREPARAR.Visible := false;
     PA_PREPARAR.Enabled := false;
     PA_PREPARAR.Left := 4500;
     PA_PREPARAR.Repaint;
     PA_RESULTADO.Enabled := TRUE;
          // desinvertendo
                 STGR_BASE_L4.Cells [1,0]  :=  STGR_BASE_L4V.Cells[1,1];
                 STGR_BASE_L4.Cells [2,0]  :=  STGR_BASE_L4V.Cells[2,1];
                 STGR_BASE_L4.Cells [3,0]  :=  STGR_BASE_L4V.Cells[1,2];
                 STGR_BASE_L4.Cells [4,0]  :=  STGR_BASE_L4V.Cells[2,2];
                 STGR_BASE_L4.Cells [5,0]  :=  STGR_BASE_L4V.Cells[1,3];
                 STGR_BASE_L4.Cells [6,0]  :=  STGR_BASE_L4V.Cells[2,3];

                 STGR_BASE_L3.Cells [1,0]  :=  STGR_BASE_L3V.Cells[1,1];
                 STGR_BASE_L3.Cells [2,0]  :=  STGR_BASE_L3V.Cells[2,1];
                 STGR_BASE_L3.Cells [3,0]  :=  STGR_BASE_L3V.Cells[1,2];
                 STGR_BASE_L3.Cells [4,0]  :=  STGR_BASE_L3V.Cells[2,2];
                 STGR_BASE_L3.Cells [5,0]  :=  STGR_BASE_L3V.Cells[1,3];
                 STGR_BASE_L3.Cells [6,0]  :=  STGR_BASE_L3V.Cells[2,3];

                 STGR_BASE_L2.Cells [1,0]  :=  STGR_BASE_L2V.Cells[1,1];
                 STGR_BASE_L2.Cells [2,0]  :=  STGR_BASE_L2V.Cells[2,1];
                 STGR_BASE_L2.Cells [3,0]  :=  STGR_BASE_L2V.Cells[1,2];
                 STGR_BASE_L2.Cells [4,0]  :=  STGR_BASE_L2V.Cells[2,2];
                 STGR_BASE_L2.Cells [5,0]  :=  STGR_BASE_L2V.Cells[1,3];
                 STGR_BASE_L2.Cells [6,0]  :=  STGR_BASE_L2V.Cells[2,3];

                 STGR_BASE_L1.Cells [1,0]  :=  STGR_BASE_L1V.Cells[1,1];
                 STGR_BASE_L1.Cells [2,0]  :=  STGR_BASE_L1V.Cells[2,1];
                 STGR_BASE_L1.Cells [3,0]  :=  STGR_BASE_L1V.Cells[1,2];
                 STGR_BASE_L1.Cells [4,0]  :=  STGR_BASE_L1V.Cells[2,2];
                 STGR_BASE_L1.Cells [5,0]  :=  STGR_BASE_L1V.Cells[1,3];
                 STGR_BASE_L1.Cells [6,0]  :=  STGR_BASE_L1V.Cells[2,3];
     FOR VI_CONTAR := 1 TO 09 DO
     BEGIN
        STGR_COMB10.Cells [VI_CONTAR+1,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_COMB10.Cells [VI_CONTAR+1,1] := '00';
     END;
     FOR VI_CONTAR := 1 TO 16 DO
     BEGIN
        STGR_COMB15.Cells [VI_CONTAR+1,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_COMB15.Cells [VI_CONTAR+1,1] := '00';
     END;
          FOR VI_CONTAR :=1 TO 25 DO
          BEGIN
              STGR_FILTRO_VCOLUNAS.Cells[VI_CONTAR,0] :=INTtoSTR (VI_CONTAR) ;
              STGR_FILTRO_VCOLUNAS.Cells[VI_CONTAR,1] :='F';
              STGR_FILTRO_VCOLUNAS.Cells[VI_CONTAR,2] :='F';
              STGR_FILTRO_HLINHAS.Cells[VI_CONTAR,0] :=INTtoSTR (VI_CONTAR) ;
              STGR_FILTRO_HLINHAS.Cells[VI_CONTAR,1] :='F';
              STGR_FILTRO_HLINHAS.Cells[VI_CONTAR,2] :='F';
          end;
     STGR_COMB10.RowCount := 2;
     STGR_COMB10.Repaint;
     STGR_COMB15.RowCount := 2;
     STGR_COMB15.Repaint;
     STGR_TODOS_OS_08_Q2.RowCount := 2;
     STGR_TODOS_OS_08_Q2.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB3.Position :=0;
     PGBR_GERARCOMB.Repaint;
     PGBR_GERARCOMB3.Repaint;
     PGBR_REMREPET.Position := 00;
     PGBR_REMREPET.Repaint;
     LA_SOMA_8e9_DESC.Caption := 'MODO:                                         ';
     LA_LINHA_1_100REP.Caption := '00';
     LA_LINHA_2_100REP.Caption := '00';
     LA_LINHA_3_100REP.Caption := '00';
     LA_LINHA_4_100REP.Caption := '00';
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_QTD_COMB.Repaint;
    // ==========================================
    // ||||==================================||||
    // |||| 	Conferindo numeros válidos   ||||
    // ||||==================================||||
    // ==========================================
        // **************
        // **  LINHA 1 **
        // **************
//    IF (STRtoINT(STGR_BASE_L4.Cells [5,0] ) =0) THEN
//    BEGIN
//       SHOWMESSAGE ('TERMINE O PREENCHIMENTO.');
//       ED_fixoS_L4.SetFocus;
//       EXIT;
//   END; // IF
        // ***************************
        // **  CONFERINDO OS EXCLUIDOS **
        // ***************************
  {   IF (STRtoINT(ED_EXC_01.Text) = 0  ) OR
       (STRtoINT(ED_EXC_02.Text) = 0  ) OR
       (STRtoINT(ED_EXC_03.Text) = 0  ) THEN
     BEGIN
            SHOWMESSAGE ('NÚMERO EXCLUÍDO NÃO PODE SER 0.');
            ED_EXC_01.SetFocus;
            EXIT;
     END; // IF    }
{
    IF (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
            ED_FIXOS_01.SetFocus;
            EXIT;
    END; // IF
    IF (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
            ED_FIXOS_02.SetFocus;
            EXIT;
    END; // IF
    IF (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
            ED_FIXOS_02.SetFocus;
            EXIT;
    END; // IF
    IF (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
            ED_FIXOS_02.SetFocus;
            EXIT;
    END; // IF
        // ***************************
        // **  Verificando números inicias e finais **
        // ***************************
     if (STRtoINT(ED_FIXOS_01.Text)=00) then
     begin
          SHOWMESSAGE ('O PRIMEIRO NUMERO FIXO É ZERO, PORTANDO OS DEMAIS NÃO TERÃO EFEITO E SERÃO ZERADO.');
          ED_FIXOS_02.Text := '00';
          ED_FIXOS_03.Text := '00';
          ED_FIXOS_04.Text := '00';
          ED_FIXOS_01.SetFocus;
     end
     ELSE if (STRtoINT(ED_FIXOS_02.Text)=0) or (STRtoINT(ED_FIXOS_03.Text)=0) or (STRtoINT(ED_FIXOS_04.Text)=0)then
     begin
          SHOWMESSAGE ('APENAS O PRIMEIRO NUMERO FIXO PODE SER ZERO.');
          ED_FIXOS_02.SetFocus;          
     end; // IF   }

     IF (STRtoINT(ED_SOMA7_INI.Text)) > (STRtoINT(ED_SOMA7_Final.Text)) THEN
     BEGIN
       SHOWMESSAGE ('ORDEM NUMÉRICA - POR FAVOR.');
       TRB_SOMA7_INI.SetFocus;
       EXIT;
     END;

     PR_LIMPAR_GRID_QUADRO1();
    // ===========================================================
    // ||||===================================================||||
    // ||||  PRIMEIRA ABA 1 - 2 - 2 - 3  E  3 - 2 - 2 - 1     ||||
    // ||||===================================================||||
    // ===========================================================

    // ===========================================================
    // ||||  1 - 2 - 2 -3     SOBRAS:  5 -  4  -  4  -  3     ||||
    // ===========================================================

        // ******************
        // **  LINHA_1 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 6 DO
     BEGIN
                    STGR_LINHA_1_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_1_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_1_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                                   // pega o primeiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_1_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o segundo numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_1_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o terceiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_1_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o quarto numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_1_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o quinto numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_1_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_1_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_1_C2.RowCount := VI_LINHAS2;
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_1_C1.Repaint;
     STGR_LINHA_1_C2.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_1_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_1_100REP.Repaint;

        // ******************
        // **  LINHA_2 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
                    STGR_LINHA_2_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_2_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_2_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_2_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L2.Cells[VI_COMBINACOES2,0]+ '-';
                                   // pega o primeiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_2_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o segundo numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_2_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o terceiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_2_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L2.Cells[VI_CONTADOR,0];                                                  
                                             end;
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o quarto numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_2_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_2_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_2_C2.RowCount := VI_LINHAS2;
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_2_C1.Repaint;
     STGR_LINHA_2_C2.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1

     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_2_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_2_100REP.Repaint;


        // ******************
        // **  LINHA_3 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
                    STGR_LINHA_3_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_3_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_3_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_3_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                                   // pega o primeiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_3_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o segundo numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_3_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o terceiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_3_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o quarto numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_3_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_3_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_3_C2.RowCount := VI_LINHAS2;                         
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_3_C1.Repaint;
     STGR_LINHA_3_C2.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                   (STRtoINT(STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1

     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_3_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_3_100REP.Repaint;


        // ******************
        // **  LINHA_4 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
               BEGIN
                    STGR_LINHA_4_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_4_C1.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_LINHA_4_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_4_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_4_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L4.Cells[VI_COMBINACOES2,0] + '-' +
                              STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
                                   // pega o primeiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_4_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o segundo numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             begin
                                                  STGR_LINHA_4_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                             end; // if
                                        END;
                                   END; // FOR VI_CONTADOR
                                   // pega o terceiro numero que sobrou
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 6 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_4_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_4_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_4_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_4_C1.Repaint;
     STGR_LINHA_4_C2.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                   (STRtoINT(STGR_LINHA_4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                   (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                   (STRtoINT(STGR_LINHA_4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                   (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                   (STRtoINT(STGR_LINHA_4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                   (STRtoINT(STGR_LINHA_4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_4_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_4_100REP.Repaint;



     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;



     VI_LINHAS2 := 1;
     STGR_TODOS_OS_8.ColWidths[0] := 50;
     STGR_TODOS_OS_16.ColWidths[0] := 50;
     // PRIMEIRO BLOCO - 1 A 6 X 1 A 15 X 1 A 15 X 1 A 20
     FOR VI_COMBINACOES1 := 1{2} TO 6 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
     BEGIN
          IF (STGR_LINHA_1_C1.Cells[1,VI_COMBINACOES1] = 'F') then
               continue;
          FOR VI_COMBINACOES2 := 1{16} TO 15 {(STGR_LINHA_2_C1.RowCount-1)} DO
          BEGIN
               IF (STGR_LINHA_2_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                    continue;
               FOR VI_COMBINACOES3 := 1 TO 15 {(STGR_LINHA_3_C1.RowCount-1)} DO
               BEGIN
                    IF (STGR_LINHA_3_C1.Cells[1,VI_COMBINACOES3] = 'F') then
                         continue;
                    FOR VI_COMBINACOES4 := 1{22} TO 20 {(STGR_LINHA_4_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_LINHA_4_C1.Cells[1,VI_COMBINACOES4] = 'F') then
                              continue;
                         // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6 E SOMA
                         STGR_TODOS_OS_8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_TODOS_OS_8.Cells[1,VI_LINHAS2] := STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1];
                         STGR_TODOS_OS_8.Cells[2,VI_LINHAS2] := STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES2];
                         STGR_TODOS_OS_8.Cells[3,VI_LINHAS2] := STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES2];
                         STGR_TODOS_OS_8.Cells[4,VI_LINHAS2] := STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES3];
                         STGR_TODOS_OS_8.Cells[5,VI_LINHAS2] := STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES3];
                         STGR_TODOS_OS_8.Cells[6,VI_LINHAS2] := STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES4];
                         STGR_TODOS_OS_8.Cells[7,VI_LINHAS2] := STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES4];
                         STGR_TODOS_OS_8.Cells[8,VI_LINHAS2] := STGR_LINHA_4_C1.Cells[4,VI_COMBINACOES4];
                         // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13 E SOMA
                         STGR_TODOS_OS_16.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_TODOS_OS_16.Cells[1,VI_LINHAS2] := STGR_LINHA_1_C2.Cells[2,VI_COMBINACOES1];
                         STGR_TODOS_OS_16.Cells[2,VI_LINHAS2] := STGR_LINHA_1_C2.Cells[3,VI_COMBINACOES1];
                         STGR_TODOS_OS_16.Cells[3,VI_LINHAS2] := STGR_LINHA_1_C2.Cells[4,VI_COMBINACOES1];
                         STGR_TODOS_OS_16.Cells[4,VI_LINHAS2] := STGR_LINHA_1_C2.Cells[5,VI_COMBINACOES1];
                         STGR_TODOS_OS_16.Cells[5,VI_LINHAS2] := STGR_LINHA_1_C2.Cells[6,VI_COMBINACOES1];
                         STGR_TODOS_OS_16.Cells[6,VI_LINHAS2] := STGR_LINHA_2_C2.Cells[2,VI_COMBINACOES2];
                         STGR_TODOS_OS_16.Cells[7,VI_LINHAS2] := STGR_LINHA_2_C2.Cells[3,VI_COMBINACOES2];
                         STGR_TODOS_OS_16.Cells[8,VI_LINHAS2] := STGR_LINHA_2_C2.Cells[4,VI_COMBINACOES2];
                         STGR_TODOS_OS_16.Cells[9,VI_LINHAS2] := STGR_LINHA_2_C2.Cells[5,VI_COMBINACOES2];
                         STGR_TODOS_OS_16.Cells[10,VI_LINHAS2] := STGR_LINHA_3_C2.Cells[2,VI_COMBINACOES3];
                         STGR_TODOS_OS_16.Cells[11,VI_LINHAS2] := STGR_LINHA_3_C2.Cells[3,VI_COMBINACOES3];
                         STGR_TODOS_OS_16.Cells[12,VI_LINHAS2] := STGR_LINHA_3_C2.Cells[4,VI_COMBINACOES3];
                         STGR_TODOS_OS_16.Cells[13,VI_LINHAS2] := STGR_LINHA_3_C2.Cells[5,VI_COMBINACOES3];
                         STGR_TODOS_OS_16.Cells[14,VI_LINHAS2] := STGR_LINHA_4_C2.Cells[2,VI_COMBINACOES4];
                         STGR_TODOS_OS_16.Cells[15,VI_LINHAS2] := STGR_LINHA_4_C2.Cells[3,VI_COMBINACOES4];
                         STGR_TODOS_OS_16.Cells[16,VI_LINHAS2] := STGR_LINHA_4_C2.Cells[4,VI_COMBINACOES4];
                         VI_LINHAS2 := VI_LINHAS2 +1;
                    end;//FOR  VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          end;//FOR VI_COMBINACOES2
     END; // FOR sI_COMBINACOES1
     STGR_TODOS_OS_8.RowCount := VI_LINHAS2;
     STGR_TODOS_OS_16.RowCount := VI_LINHAS2;


    // ===========================================================
    // ||||  3 - 2 - 2 -1     SOBRAS:  3 -  4  -  4  -  5     ||||
    // ===========================================================
     IF (CB_NUMEROS_QUADRO1.ItemIndex >=1) THEN
     BEGIN    
             // ******************
             // **  LINHA_1 **
             // ******************
          VI_LINHAS2:= STGR_LINHA_1_C1.RowCount;
          FOR VI_COMBINACOES1:= 1 TO 6 DO
          BEGIN
                         STGR_LINHA_1_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_1_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_1_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                              VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                                        // pega o primeiro numero que sobrou
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_LINHA_1_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                                        // pega o segundo numero que sobrou
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_LINHA_1_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                                        // pega o terceiro numero que sobrou
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_LINHA_1_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                                        // pega o quarto numero que sobrou
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_LINHA_1_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                                        // pega o quinto numero que sobrou
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                       STGR_LINHA_1_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                             END;
                                        END; // FOR VI_CONTADOR
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_1_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_1_C2.RowCount := VI_LINHAS2;
          END; // FOR VI_COMBINACOES1
          STGR_LINHA_1_C1.Repaint;
          STGR_LINHA_1_C2.Repaint;
                         // -------------------------------
                         // --  Removendo os EXCLUIDOS DA COLUNA  --
                         // -------------------------------
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
          VI_CONTAR := 0;
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF (STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
          END;
          LA_LINHA_1_100REP.Caption := INTtoSTR(VI_CONTAR);
          LA_LINHA_1_100REP.Repaint;

             // ******************
             // **  LINHA_4 **
             // ******************
          VI_LINHAS2:= STGR_LINHA_4_C1.RowCount;
          FOR VI_COMBINACOES1:= 1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
               BEGIN
                    FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                    BEGIN
                         STGR_LINHA_4_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_4_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_4_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_4_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                         STGR_LINHA_4_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                              VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                                   STGR_BASE_L1.Cells[VI_COMBINACOES2,0] + '-' +
                                   STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                                        // pega o primeiro numero que sobrou
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_LINHA_4_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                                        // pega o segundo numero que sobrou
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_LINHA_4_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                                        // pega o terceiro numero que sobrou
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                       STGR_LINHA_4_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                             END;
                                        END; // FOR VI_CONTADOR
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_4_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_4_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES3                         
               END; // FOR VI_COMBINACOES2
          END; // FOR VI_COMBINACOES1
          STGR_LINHA_4_C1.Repaint;
          STGR_LINHA_4_C2.Repaint;
                         // -------------------------------
                         // --  Removendo os EXCLUIDOS DA COLUNA  --
                         // -------------------------------
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                        (STRtoINT(STGR_LINHA_4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                        (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                        (STRtoINT(STGR_LINHA_4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                        (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                        (STRtoINT(STGR_LINHA_4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                        (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                        (STRtoINT(STGR_LINHA_4_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
          VI_CONTAR := 0;
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF (STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
          END;
          LA_LINHA_4_100REP.Caption := INTtoSTR(VI_CONTAR);
          LA_LINHA_4_100REP.Repaint;
          // GERANDO OS NUMEROS
          VI_LINHAS2 := STGR_TODOS_OS_8.RowCount;
          // segundo BLOCO - 7 A 13 X 1 A 15 X 1 A 15 X 21 A 40
          FOR VI_COMBINACOES1 := 7{2} TO 12 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
          BEGIN
               IF (STGR_LINHA_1_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                    continue;
               FOR VI_COMBINACOES2 := 1{16} TO 15 {(STGR_LINHA_2_C1.RowCount-1)} DO
               BEGIN
                    IF (STGR_LINHA_2_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                         continue;
                    FOR VI_COMBINACOES3 := 1 TO 15 {(STGR_LINHA_3_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_LINHA_3_C1.Cells[1,VI_COMBINACOES3] = 'F') then
                              continue;
                         FOR VI_COMBINACOES4 := 21{22} TO 40 {(STGR_LINHA_4_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_LINHA_4_C1.Cells[1,VI_COMBINACOES4] = 'F') then
                                   continue;
                              // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6 E SOMA
                              STGR_TODOS_OS_8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                              STGR_TODOS_OS_8.Cells[1,VI_LINHAS2] := STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1];
                              STGR_TODOS_OS_8.Cells[2,VI_LINHAS2] := STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES2];
                              STGR_TODOS_OS_8.Cells[3,VI_LINHAS2] := STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES2];
                              STGR_TODOS_OS_8.Cells[4,VI_LINHAS2] := STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES3];
                              STGR_TODOS_OS_8.Cells[5,VI_LINHAS2] := STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES3];
                              STGR_TODOS_OS_8.Cells[6,VI_LINHAS2] := STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES4];
                              STGR_TODOS_OS_8.Cells[7,VI_LINHAS2] := STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES4];
                              STGR_TODOS_OS_8.Cells[8,VI_LINHAS2] := STGR_LINHA_4_C1.Cells[4,VI_COMBINACOES4];
                              // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13 E SOMA
                              STGR_TODOS_OS_16.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                              STGR_TODOS_OS_16.Cells[1,VI_LINHAS2] := STGR_LINHA_1_C2.Cells[2,VI_COMBINACOES1];
                              STGR_TODOS_OS_16.Cells[2,VI_LINHAS2] := STGR_LINHA_1_C2.Cells[3,VI_COMBINACOES1];
                              STGR_TODOS_OS_16.Cells[3,VI_LINHAS2] := STGR_LINHA_1_C2.Cells[4,VI_COMBINACOES1];
                              STGR_TODOS_OS_16.Cells[4,VI_LINHAS2] := STGR_LINHA_1_C2.Cells[5,VI_COMBINACOES1];
                              STGR_TODOS_OS_16.Cells[5,VI_LINHAS2] := STGR_LINHA_1_C2.Cells[6,VI_COMBINACOES1];
                              STGR_TODOS_OS_16.Cells[6,VI_LINHAS2] := STGR_LINHA_2_C2.Cells[2,VI_COMBINACOES2];
                              STGR_TODOS_OS_16.Cells[7,VI_LINHAS2] := STGR_LINHA_2_C2.Cells[3,VI_COMBINACOES2];
                              STGR_TODOS_OS_16.Cells[8,VI_LINHAS2] := STGR_LINHA_2_C2.Cells[4,VI_COMBINACOES2];
                              STGR_TODOS_OS_16.Cells[9,VI_LINHAS2] := STGR_LINHA_2_C2.Cells[5,VI_COMBINACOES2];
                              STGR_TODOS_OS_16.Cells[10,VI_LINHAS2] := STGR_LINHA_3_C2.Cells[2,VI_COMBINACOES3];
                              STGR_TODOS_OS_16.Cells[11,VI_LINHAS2] := STGR_LINHA_3_C2.Cells[3,VI_COMBINACOES3];
                              STGR_TODOS_OS_16.Cells[12,VI_LINHAS2] := STGR_LINHA_3_C2.Cells[4,VI_COMBINACOES3];
                              STGR_TODOS_OS_16.Cells[13,VI_LINHAS2] := STGR_LINHA_3_C2.Cells[5,VI_COMBINACOES3];
                              STGR_TODOS_OS_16.Cells[14,VI_LINHAS2] := STGR_LINHA_4_C2.Cells[2,VI_COMBINACOES4];
                              STGR_TODOS_OS_16.Cells[15,VI_LINHAS2] := STGR_LINHA_4_C2.Cells[3,VI_COMBINACOES4];
                              STGR_TODOS_OS_16.Cells[16,VI_LINHAS2] := STGR_LINHA_4_C2.Cells[4,VI_COMBINACOES4];
                              VI_LINHAS2 := VI_LINHAS2 +1;
                         end;//FOR  VI_COMBINACOES4
                    END; // FOR VI_COMBINACOES3
               end;//FOR VI_COMBINACOES2
          END; // FOR sI_COMBINACOES1
     END; // IF (CB_NUMEROS_QUADRO1.ItemIndex >=1)
     STGR_TODOS_OS_8.RowCount := VI_LINHAS2;
     STGR_TODOS_OS_16.RowCount := VI_LINHAS2;


     IF (CB_NUMEROS_QUADRO1.ItemIndex >=3) THEN
     BEGIN
              // ===========================================================
              // ||||===================================================||||
              // ||||  SEGUNDA ABA  2 - 1 - 3 - 2  E  2 - 3 - 1 - 2     ||||
              // ||||===================================================||||
              // ===========================================================

              // ===========================================================
              // ||||  2 - 1 - 3 -2     SOBRAS:  4 -  5  -  3  -  4     ||||
              // ===========================================================

                  // ******************
                  // **  LINHA_1 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                              STGR_LINHA_21_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_21_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_21_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_21_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_21_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_21_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_21_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_21_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_21_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_21_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_21_C1.Repaint;
               STGR_LINHA_21_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_21_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_21_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_21_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_21_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_21_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_21_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                             (STRtoINT(STGR_LINHA_21_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_21_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_21_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_21_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_21_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_21_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_21_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_21_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                             (STRtoINT(STGR_LINHA_21_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_21_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_21_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_21_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_21_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_21_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_21_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_21_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_21_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_21_100REP.Repaint;

                  // ******************
                  // **  LINHA_2 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 6 DO
               BEGIN

                              STGR_LINHA_22_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_22_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_22_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_22_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_22_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_22_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end;
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_22_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end;
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quINTo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_22_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_22_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_22_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_22_C1.Repaint;
               STGR_LINHA_22_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_22_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_22_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_22_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_22_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_22_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_22_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_22_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_22_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_22_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_22_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_22_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_22_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_22_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_22_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_22_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1

               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_22_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_22_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_22_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_22_100REP.Repaint;

                  // ******************
                  // **  LINHA_3 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_LINHA_23_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_23_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_23_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_23_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                              STGR_LINHA_23_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L3.Cells[VI_COMBINACOES2,0] + '-' +
                                        STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_23_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_23_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_23_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_23_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_23_C2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3                         
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_23_C1.Repaint;
               STGR_LINHA_23_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_23_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_23_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                             (STRtoINT(STGR_LINHA_23_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_23_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_23_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_23_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_23_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_23_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_23_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_23_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_23_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_23_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_23_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_23_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_23_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_23_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_23_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_23_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_23_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_23_100REP.Repaint;

                  // ******************
                  // **  LINHA_4 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                              STGR_LINHA_24_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_24_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_24_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_24_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_24_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_24_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_24_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_24_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_24_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_24_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_24_C1.Repaint;
               STGR_LINHA_24_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_24_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_24_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_24_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_24_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_24_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_24_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                             (STRtoINT(STGR_LINHA_24_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_24_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_24_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_24_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_24_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_24_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_24_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_24_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                             (STRtoINT(STGR_LINHA_24_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_24_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_24_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_24_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_24_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_24_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_24_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_24_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_24_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_24_100REP.Repaint;
               // GERANDO OS NUMEROS
               VI_LINHAS2 := STGR_TODOS_OS_8.RowCount;
               // PRIMEIRO BLOCO - 1 A 15 X 1 A 6 X 1 A 20 X 1 A 15
               FOR VI_COMBINACOES1 := 1{2} TO 15 {TRUNC((STGR_LINHA_21_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_LINHA_21_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 6 {(STGR_LINHA_22_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_LINHA_22_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 20 {(STGR_LINHA_23_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_LINHA_23_C1.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 15 {(STGR_LINHA_24_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_LINHA_24_C1.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6,7,8 E SOMA
                                   STGR_TODOS_OS_8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_8.Cells[1,VI_LINHAS2] := STGR_LINHA_21_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[2,VI_LINHAS2] := STGR_LINHA_21_C1.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[3,VI_LINHAS2] := STGR_LINHA_22_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[4,VI_LINHAS2] := STGR_LINHA_23_C1.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[5,VI_LINHAS2] := STGR_LINHA_23_C1.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[6,VI_LINHAS2] := STGR_LINHA_23_C1.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[7,VI_LINHAS2] := STGR_LINHA_24_C1.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[8,VI_LINHAS2] := STGR_LINHA_24_C1.Cells[3,VI_COMBINACOES4];
                                   // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13,14 E SOMA
                                   STGR_TODOS_OS_16.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16.Cells[1,VI_LINHAS2] := STGR_LINHA_21_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[2,VI_LINHAS2] := STGR_LINHA_21_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[3,VI_LINHAS2] := STGR_LINHA_21_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[4,VI_LINHAS2] := STGR_LINHA_21_C2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[5,VI_LINHAS2] := STGR_LINHA_22_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[6,VI_LINHAS2] := STGR_LINHA_22_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[7,VI_LINHAS2] := STGR_LINHA_22_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[8,VI_LINHAS2] := STGR_LINHA_22_C2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[9,VI_LINHAS2] := STGR_LINHA_22_C2.Cells[6,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[10,VI_LINHAS2] := STGR_LINHA_23_C2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[11,VI_LINHAS2] := STGR_LINHA_23_C2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[12,VI_LINHAS2] := STGR_LINHA_23_C2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[13,VI_LINHAS2] := STGR_LINHA_24_C2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[14,VI_LINHAS2] := STGR_LINHA_24_C2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[15,VI_LINHAS2] := STGR_LINHA_24_C2.Cells[4,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[16,VI_LINHAS2] := STGR_LINHA_24_C2.Cells[5,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_8.RowCount := VI_LINHAS2;
               STGR_TODOS_OS_16.RowCount := VI_LINHAS2;

              // ===========================================================
              // ||||  2 - 3 - 1 -2     SOBRAS:  4 -  3  -  5  -  4     ||||
              // ===========================================================
                  // ******************
                  // **  LINHA_2 **
                  // ******************
               VI_LINHAS2:= STGR_LINHA_22_C1.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 6 DO
               BEGIN

                              STGR_LINHA_22_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_22_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_22_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_22_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_22_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_22_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end;
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_22_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end;
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quINTo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_22_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_22_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_22_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_22_C1.Repaint;
               STGR_LINHA_22_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_22_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_22_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_22_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_22_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_22_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_22_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_22_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_22_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_22_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_22_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_22_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_22_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_22_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_22_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_22_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1

               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_22_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_22_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_22_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_22_100REP.Repaint;

                  // ******************
                  // **  LINHA_3 **
                  // ******************
               VI_LINHAS2:= STGR_LINHA_23_C1.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_LINHA_23_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_23_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_23_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_23_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                              STGR_LINHA_23_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L2.Cells[VI_COMBINACOES2,0] + '-' +
                                        STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_23_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_23_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_23_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_23_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_23_C2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3                         
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_23_C1.Repaint;
               STGR_LINHA_23_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_23_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_23_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                             (STRtoINT(STGR_LINHA_23_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_23_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_23_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_23_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_23_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_23_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_23_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_23_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_23_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_23_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_23_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_23_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_23_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_23_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_23_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_23_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_23_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_23_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_23_100REP.Repaint;
               // GERANDO OS NUMEROS
               VI_LINHAS2 := STGR_TODOS_OS_8.RowCount;
               // segundo BLOCO - 1 A 15 X 7 A 12 X 21 A 40 X 1 A 15
               FOR VI_COMBINACOES1 := 1{2} TO 15 {TRUNC((STGR_LINHA_21_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_LINHA_21_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 7{16} TO 12 {(STGR_LINHA_22_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_LINHA_22_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 21 TO 40 {(STGR_LINHA_23_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_LINHA_23_C1.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 15 {(STGR_LINHA_24_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_LINHA_24_C1.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6,7,8 E SOMA
                                   STGR_TODOS_OS_8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_8.Cells[1,VI_LINHAS2] := STGR_LINHA_21_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[2,VI_LINHAS2] := STGR_LINHA_21_C1.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[3,VI_LINHAS2] := STGR_LINHA_22_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[4,VI_LINHAS2] := STGR_LINHA_23_C1.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[5,VI_LINHAS2] := STGR_LINHA_23_C1.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[6,VI_LINHAS2] := STGR_LINHA_23_C1.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[7,VI_LINHAS2] := STGR_LINHA_24_C1.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[8,VI_LINHAS2] := STGR_LINHA_24_C1.Cells[3,VI_COMBINACOES4];
                                   // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13,14 E SOMA
                                   STGR_TODOS_OS_16.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16.Cells[1,VI_LINHAS2] := STGR_LINHA_21_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[2,VI_LINHAS2] := STGR_LINHA_21_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[3,VI_LINHAS2] := STGR_LINHA_21_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[4,VI_LINHAS2] := STGR_LINHA_21_C2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[5,VI_LINHAS2] := STGR_LINHA_22_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[6,VI_LINHAS2] := STGR_LINHA_22_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[7,VI_LINHAS2] := STGR_LINHA_22_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[8,VI_LINHAS2] := STGR_LINHA_22_C2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[9,VI_LINHAS2] := STGR_LINHA_22_C2.Cells[6,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[10,VI_LINHAS2] := STGR_LINHA_23_C2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[11,VI_LINHAS2] := STGR_LINHA_23_C2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[12,VI_LINHAS2] := STGR_LINHA_23_C2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[13,VI_LINHAS2] := STGR_LINHA_24_C2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[14,VI_LINHAS2] := STGR_LINHA_24_C2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[15,VI_LINHAS2] := STGR_LINHA_24_C2.Cells[4,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[16,VI_LINHAS2] := STGR_LINHA_24_C2.Cells[5,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_8.RowCount := VI_LINHAS2;
               STGR_TODOS_OS_16.RowCount := VI_LINHAS2;


              // ===========================================================
              // ||||===================================================||||
              // ||||  TERCEIRA ABA 1 - 2 - 3 - 2  E  3 - 2 - 1 - 2     ||||
              // ||||===================================================||||
              // ===========================================================

              // ===========================================================
              // ||||  1 - 2 - 3 -2     SOBRAS:  5 -  4  -  3  -  4     ||||
              // ===========================================================

                  // ******************
                  // **  LINHA_1 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 6 DO
               BEGIN
                              STGR_LINHA_31_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_31_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_31_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_31_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_31_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_31_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_31_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quinto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_31_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_31_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_31_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_31_C1.Repaint;
               STGR_LINHA_31_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_31_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_31_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_31_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_31_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_31_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_31_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_31_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_31_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_31_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_31_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_31_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_31_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_31_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_31_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_31_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_31_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_31_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_31_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_31_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_31_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_31_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_31_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_31_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_31_100REP.Repaint;

                  // ******************
                  // **  LINHA_2 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                              STGR_LINHA_32_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_32_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_32_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_32_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L2.Cells[VI_COMBINACOES2,0]+ '-';
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_32_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_32_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_32_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];                                                  
                                                       end;
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_32_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_32_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_32_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_32_C1.Repaint;
               STGR_LINHA_32_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_32_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_32_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_32_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_32_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_32_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_32_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_32_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                             (STRtoINT(STGR_LINHA_32_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_32_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_32_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_32_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_32_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_32_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_32_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_32_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_32_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_32_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                             (STRtoINT(STGR_LINHA_32_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_32_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_32_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_32_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_32_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_32_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_32_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_32_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1

               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_32_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_32_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_32_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_32_100REP.Repaint;

                  // ******************
                  // **  LINHA_3 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_LINHA_33_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_33_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_33_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_33_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                              STGR_LINHA_33_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L3.Cells[VI_COMBINACOES2,0] + '-' +
                                        STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_33_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_33_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_33_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_33_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_33_C2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3                         
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_33_C1.Repaint;
               STGR_LINHA_33_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_33_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_33_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                             (STRtoINT(STGR_LINHA_33_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_33_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_33_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_33_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_33_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_33_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_33_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_33_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_33_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_33_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_33_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_33_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_33_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_33_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_33_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_33_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_33_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_33_100REP.Repaint;

                  // ******************
                  // **  LINHA_4 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                              STGR_LINHA_34_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_34_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_34_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_34_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_34_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_34_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_34_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_34_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_34_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_34_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_34_C1.Repaint;
               STGR_LINHA_34_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_34_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_34_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_34_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_34_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_34_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_34_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                             (STRtoINT(STGR_LINHA_34_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_34_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_34_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_34_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_34_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_34_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_34_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_34_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                             (STRtoINT(STGR_LINHA_34_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_34_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_34_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_34_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_34_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_34_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_34_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_34_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_34_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_34_100REP.Repaint;
             // 6-15-20-15
               // GERANDO OS NUMEROS
               VI_LINHAS2 := STGR_TODOS_OS_8.RowCount;
               // PRIMEIRO BLOCO - 1 A 6 X 1 A 15 X 1 A 20 X 1 A 15
               FOR VI_COMBINACOES1 := 1{2} TO 6 {TRUNC((STGR_LINHA_31_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_LINHA_31_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 15 {(STGR_LINHA_32_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_LINHA_32_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 20 {(STGR_LINHA_33_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_LINHA_33_C1.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 15 {(STGR_LINHA_34_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_LINHA_34_C1.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6,7,8 E SOMA
                                   STGR_TODOS_OS_8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_8.Cells[1,VI_LINHAS2] := STGR_LINHA_31_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[2,VI_LINHAS2] := STGR_LINHA_32_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[3,VI_LINHAS2] := STGR_LINHA_32_C1.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[4,VI_LINHAS2] := STGR_LINHA_33_C1.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[5,VI_LINHAS2] := STGR_LINHA_33_C1.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[6,VI_LINHAS2] := STGR_LINHA_33_C1.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[7,VI_LINHAS2] := STGR_LINHA_34_C1.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[8,VI_LINHAS2] := STGR_LINHA_34_C1.Cells[3,VI_COMBINACOES4];
                                   // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13,14 E SOMA
                                   STGR_TODOS_OS_16.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16.Cells[1,VI_LINHAS2] := STGR_LINHA_31_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[2,VI_LINHAS2] := STGR_LINHA_31_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[3,VI_LINHAS2] := STGR_LINHA_31_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[4,VI_LINHAS2] := STGR_LINHA_31_C2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[5,VI_LINHAS2] := STGR_LINHA_31_C2.Cells[6,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[6,VI_LINHAS2] := STGR_LINHA_32_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[7,VI_LINHAS2] := STGR_LINHA_32_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[8,VI_LINHAS2] := STGR_LINHA_32_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[9,VI_LINHAS2] := STGR_LINHA_32_C2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[10,VI_LINHAS2] := STGR_LINHA_33_C2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[11,VI_LINHAS2] := STGR_LINHA_33_C2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[12,VI_LINHAS2] := STGR_LINHA_33_C2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[13,VI_LINHAS2] := STGR_LINHA_34_C2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[14,VI_LINHAS2] := STGR_LINHA_34_C2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[15,VI_LINHAS2] := STGR_LINHA_34_C2.Cells[4,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[16,VI_LINHAS2] := STGR_LINHA_34_C2.Cells[5,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_8.RowCount := VI_LINHAS2;
               STGR_TODOS_OS_16.RowCount := VI_LINHAS2;

              // ===========================================================
              // ||||  3 - 2 - 1 -2     SOBRAS:  3 -  4  -  5  -  4     ||||
              // ===========================================================

                  // ******************
                  // **  LINHA_1 **
                  // ******************
               VI_LINHAS2:= STGR_LINHA_31_C1.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 6 DO
               BEGIN
                              STGR_LINHA_31_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_31_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_31_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_31_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_31_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_31_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_31_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quinto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_31_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_31_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_31_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_31_C1.Repaint;
               STGR_LINHA_31_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_31_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_31_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_31_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_31_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_31_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_31_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_31_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_31_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_31_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_31_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_31_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_31_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_31_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_31_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_31_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_31_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_31_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_31_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_31_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_31_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_31_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_31_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_31_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_31_100REP.Repaint;

                  // ******************
                  // **  LINHA_3 **
                  // ******************
               VI_LINHAS2:= STGR_LINHA_33_C1.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_LINHA_33_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_33_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_33_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_33_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                              STGR_LINHA_33_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L1.Cells[VI_COMBINACOES2,0] + '-' +
                                        STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_33_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_33_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_33_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_33_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_33_C2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3                         
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_33_C1.Repaint;
               STGR_LINHA_33_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_33_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_33_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                             (STRtoINT(STGR_LINHA_33_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_33_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_33_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_33_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_33_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_33_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_33_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_33_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_33_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_33_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_33_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_33_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_33_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_33_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_33_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_33_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_33_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_33_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_33_100REP.Repaint;
             // 6-15-20-15  - 12-15-40-15
               // GERANDO OS NUMEROS
               VI_LINHAS2 := STGR_TODOS_OS_8.RowCount;
               // PRIMEIRO BLOCO - 7 A 12 X 1 A 15 X 21 A 40 X 1 A 15
               FOR VI_COMBINACOES1 := 7{2} TO 12 {TRUNC((STGR_LINHA_31_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_LINHA_31_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 15 {(STGR_LINHA_32_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_LINHA_32_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 21 TO 40 {(STGR_LINHA_33_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_LINHA_33_C1.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 15 {(STGR_LINHA_34_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_LINHA_34_C1.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6,7,8 E SOMA
                                   STGR_TODOS_OS_8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_8.Cells[1,VI_LINHAS2] := STGR_LINHA_31_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[2,VI_LINHAS2] := STGR_LINHA_32_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[3,VI_LINHAS2] := STGR_LINHA_32_C1.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[4,VI_LINHAS2] := STGR_LINHA_33_C1.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[5,VI_LINHAS2] := STGR_LINHA_33_C1.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[6,VI_LINHAS2] := STGR_LINHA_33_C1.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[7,VI_LINHAS2] := STGR_LINHA_34_C1.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[8,VI_LINHAS2] := STGR_LINHA_34_C1.Cells[3,VI_COMBINACOES4];
                                   // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13,14 E SOMA
                                   STGR_TODOS_OS_16.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16.Cells[1,VI_LINHAS2] := STGR_LINHA_31_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[2,VI_LINHAS2] := STGR_LINHA_31_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[3,VI_LINHAS2] := STGR_LINHA_31_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[4,VI_LINHAS2] := STGR_LINHA_31_C2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[5,VI_LINHAS2] := STGR_LINHA_31_C2.Cells[6,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[6,VI_LINHAS2] := STGR_LINHA_32_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[7,VI_LINHAS2] := STGR_LINHA_32_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[8,VI_LINHAS2] := STGR_LINHA_32_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[9,VI_LINHAS2] := STGR_LINHA_32_C2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[10,VI_LINHAS2] := STGR_LINHA_33_C2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[11,VI_LINHAS2] := STGR_LINHA_33_C2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[12,VI_LINHAS2] := STGR_LINHA_33_C2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[13,VI_LINHAS2] := STGR_LINHA_34_C2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[14,VI_LINHAS2] := STGR_LINHA_34_C2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[15,VI_LINHAS2] := STGR_LINHA_34_C2.Cells[4,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[16,VI_LINHAS2] := STGR_LINHA_34_C2.Cells[5,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_8.RowCount := VI_LINHAS2;
               STGR_TODOS_OS_16.RowCount := VI_LINHAS2;


              // ===========================================================
              // ||||===================================================||||
              // ||||  QUARTA ABA   1 - 3 - 2 - 2  E  3 - 1 - 2 - 2     ||||
              // ||||===================================================||||
              // ===========================================================

              // ===========================================================
              // ||||  1 - 3 - 2 -2     SOBRAS:  5 -  3  -  4  -  4     ||||
              // ===========================================================

                  // ******************
                  // **  LINHA_1 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 6 DO
               BEGIN
                              STGR_LINHA_41_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_41_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_41_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_41_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_41_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_41_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_41_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quinto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_41_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_41_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_41_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_41_C1.Repaint;
               STGR_LINHA_41_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_41_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_41_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_41_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_41_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_41_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_41_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_41_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_41_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_41_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_41_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_41_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_41_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_41_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_41_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_41_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_41_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_41_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_41_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_41_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_41_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_41_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_41_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_41_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_41_100REP.Repaint;

                  // ******************
                  // **  LINHA_2 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_LINHA_42_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_42_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_42_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_42_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                              STGR_LINHA_42_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L2.Cells[VI_COMBINACOES2,0] + '-' +
                                        STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_42_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_42_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_42_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_42_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_42_C2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3                         
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_42_C1.Repaint;
               STGR_LINHA_42_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_42_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_42_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                             (STRtoINT(STGR_LINHA_42_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_42_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_42_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_42_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_42_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_42_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_42_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_42_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_42_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_42_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_42_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_42_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_42_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_42_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_42_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_42_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_42_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_42_100REP.Repaint;

                  // ******************
                  // **  LINHA_3 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                              STGR_LINHA_43_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_43_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_43_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_43_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L3.Cells[VI_COMBINACOES2,0]+ '-';
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_43_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_43_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_43_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];                                                  
                                                       end;
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_43_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_43_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_43_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_43_C1.Repaint;
               STGR_LINHA_43_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_43_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_43_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_43_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_43_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_43_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_43_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_43_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                             (STRtoINT(STGR_LINHA_43_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_43_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_43_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_43_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_43_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_43_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_43_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_43_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_43_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_43_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                             (STRtoINT(STGR_LINHA_43_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_43_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_43_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_43_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_43_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_43_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_43_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_43_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1

               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_43_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_43_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_43_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_43_100REP.Repaint;

                  // ******************
                  // **  LINHA_4 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                              STGR_LINHA_44_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_44_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_44_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_44_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L4.Cells[VI_COMBINACOES2,0]+ '-';
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_44_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_44_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_44_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];                                                  
                                                       end;
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_44_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_44_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_44_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_44_C1.Repaint;
               STGR_LINHA_44_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_44_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_44_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_44_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_44_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_44_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_44_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_44_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                             (STRtoINT(STGR_LINHA_44_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_44_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_44_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_44_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_44_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_44_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_44_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_44_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_44_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_44_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                             (STRtoINT(STGR_LINHA_44_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_44_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_44_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_44_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_44_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_44_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_44_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_44_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1

               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_44_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_44_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_44_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_44_100REP.Repaint;
               // 6-20-15-15
               // GERANDO OS NUMEROS
               VI_LINHAS2 := STGR_TODOS_OS_8.RowCount;
               // PRIMEIRO BLOCO - 1 A 6 X 1 A 20 X 1 A 15 X 1 A 15
               FOR VI_COMBINACOES1 := 1{2} TO 6 {TRUNC((STGR_LINHA_41_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_LINHA_41_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 20 {(STGR_LINHA_42_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_LINHA_42_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 15 {(STGR_LINHA_43_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_LINHA_43_C1.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 15 {(STGR_LINHA_44_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_LINHA_44_C1.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6,7,8 E SOMA
                                   STGR_TODOS_OS_8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_8.Cells[1,VI_LINHAS2] := STGR_LINHA_41_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[2,VI_LINHAS2] := STGR_LINHA_42_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[3,VI_LINHAS2] := STGR_LINHA_42_C1.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[4,VI_LINHAS2] := STGR_LINHA_42_C1.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[5,VI_LINHAS2] := STGR_LINHA_43_C1.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[6,VI_LINHAS2] := STGR_LINHA_43_C1.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[7,VI_LINHAS2] := STGR_LINHA_44_C1.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[8,VI_LINHAS2] := STGR_LINHA_44_C1.Cells[3,VI_COMBINACOES4];
                                   // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13,14 E SOMA
                                   STGR_TODOS_OS_16.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16.Cells[1,VI_LINHAS2] := STGR_LINHA_41_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[2,VI_LINHAS2] := STGR_LINHA_41_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[3,VI_LINHAS2] := STGR_LINHA_41_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[4,VI_LINHAS2] := STGR_LINHA_41_C2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[5,VI_LINHAS2] := STGR_LINHA_41_C2.Cells[6,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[6,VI_LINHAS2] := STGR_LINHA_42_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[7,VI_LINHAS2] := STGR_LINHA_42_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[8,VI_LINHAS2] := STGR_LINHA_42_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[9,VI_LINHAS2] := STGR_LINHA_43_C2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[10,VI_LINHAS2] := STGR_LINHA_43_C2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[11,VI_LINHAS2] := STGR_LINHA_43_C2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[12,VI_LINHAS2] := STGR_LINHA_43_C2.Cells[5,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[13,VI_LINHAS2] := STGR_LINHA_44_C2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[14,VI_LINHAS2] := STGR_LINHA_44_C2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[15,VI_LINHAS2] := STGR_LINHA_44_C2.Cells[4,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[16,VI_LINHAS2] := STGR_LINHA_44_C2.Cells[5,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_8.RowCount := VI_LINHAS2;
               STGR_TODOS_OS_16.RowCount := VI_LINHAS2;

              // ===========================================================
              // ||||  3 - 1 - 2 -2     SOBRAS:  3 -  5  -  4  -  4     ||||
              // ===========================================================

                  // ******************
                  // **  LINHA_1 **
                  // ******************
               VI_LINHAS2:= STGR_LINHA_41_C1.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 6 DO
               BEGIN
                              STGR_LINHA_41_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_41_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_41_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_41_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_41_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_41_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_41_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quinto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_41_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_41_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_41_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_41_C1.Repaint;
               STGR_LINHA_41_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_41_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_41_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_41_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_41_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_41_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_41_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_41_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_41_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_41_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_41_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_41_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_41_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_41_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_41_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_41_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_41_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_41_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_41_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_41_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_41_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_41_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_41_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_41_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_41_100REP.Repaint;


                  // ******************
                  // **  LINHA_2 **
                  // ******************
               VI_LINHAS2:= STGR_LINHA_42_C1.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_LINHA_42_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_42_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_42_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_42_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                              STGR_LINHA_42_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L1.Cells[VI_COMBINACOES2,0] + '-' +
                                        STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_42_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_42_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_42_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_42_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_42_C2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_42_C1.Repaint;
               STGR_LINHA_42_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_42_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_42_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                             (STRtoINT(STGR_LINHA_42_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_42_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_42_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_42_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_42_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_42_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_42_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_42_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_42_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_42_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_42_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_42_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_42_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_42_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_42_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_42_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_42_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_42_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_42_100REP.Repaint;
               // GERANDO OS NUMEROS
               VI_LINHAS2 := STGR_TODOS_OS_8.RowCount;
               // segundo BLOCO - 7 A 12 X 21 A 40 X 1 A 15 X 1 A 15
               FOR VI_COMBINACOES1 := 7{2} TO 12 {TRUNC((STGR_LINHA_41_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_LINHA_41_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 21{16} TO 40 {(STGR_LINHA_42_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_LINHA_42_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 15 {(STGR_LINHA_43_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_LINHA_43_C1.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 15 {(STGR_LINHA_44_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_LINHA_44_C1.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6,7,8 E SOMA
                                   STGR_TODOS_OS_8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_8.Cells[1,VI_LINHAS2] := STGR_LINHA_41_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[2,VI_LINHAS2] := STGR_LINHA_42_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[3,VI_LINHAS2] := STGR_LINHA_42_C1.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[4,VI_LINHAS2] := STGR_LINHA_42_C1.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[5,VI_LINHAS2] := STGR_LINHA_43_C1.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[6,VI_LINHAS2] := STGR_LINHA_43_C1.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[7,VI_LINHAS2] := STGR_LINHA_44_C1.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[8,VI_LINHAS2] := STGR_LINHA_44_C1.Cells[3,VI_COMBINACOES4];
                                   // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13,14 E SOMA
                                   STGR_TODOS_OS_16.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16.Cells[1,VI_LINHAS2] := STGR_LINHA_41_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[2,VI_LINHAS2] := STGR_LINHA_41_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[3,VI_LINHAS2] := STGR_LINHA_41_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[4,VI_LINHAS2] := STGR_LINHA_41_C2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[5,VI_LINHAS2] := STGR_LINHA_41_C2.Cells[6,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[6,VI_LINHAS2] := STGR_LINHA_42_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[7,VI_LINHAS2] := STGR_LINHA_42_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[8,VI_LINHAS2] := STGR_LINHA_42_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[9,VI_LINHAS2] := STGR_LINHA_43_C2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[10,VI_LINHAS2] := STGR_LINHA_43_C2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[11,VI_LINHAS2] := STGR_LINHA_43_C2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[12,VI_LINHAS2] := STGR_LINHA_43_C2.Cells[5,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[13,VI_LINHAS2] := STGR_LINHA_44_C2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[14,VI_LINHAS2] := STGR_LINHA_44_C2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[15,VI_LINHAS2] := STGR_LINHA_44_C2.Cells[4,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[16,VI_LINHAS2] := STGR_LINHA_44_C2.Cells[5,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_8.RowCount := VI_LINHAS2;
               STGR_TODOS_OS_16.RowCount := VI_LINHAS2;




              // ===========================================================
              // ||||===================================================||||
              // ||||  QUINTA  ABA  2 - 2 - 1 - 3  E  2 - 2 - 3 - 1     ||||
              // ||||===================================================||||
              // ===========================================================

              // ===========================================================
              // ||||  2 - 2 - 1 -3     SOBRAS:  4 -  4  -  5  -  3     ||||
              // ===========================================================
                  // ******************
                  // **  LINHA_1 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                              STGR_LINHA_51_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_51_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_51_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_51_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L1.Cells[VI_COMBINACOES2,0]+ '-';
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_51_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_51_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_51_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];                                                  
                                                       end;
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_51_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_51_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_51_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_51_C1.Repaint;
               STGR_LINHA_51_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_51_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_51_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_51_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_51_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_51_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_51_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_51_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                             (STRtoINT(STGR_LINHA_51_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_51_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_51_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_51_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_51_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_51_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_51_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_51_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_51_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_51_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                             (STRtoINT(STGR_LINHA_51_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_51_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_51_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_51_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_51_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_51_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_51_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_51_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1

               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_51_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_51_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_51_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_51_100REP.Repaint;

                  // ******************
                  // **  LINHA_2 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                              STGR_LINHA_52_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_52_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_52_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_52_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L2.Cells[VI_COMBINACOES2,0]+ '-';
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_52_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_52_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_52_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];                                                  
                                                       end;
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_52_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_52_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_52_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_52_C1.Repaint;
               STGR_LINHA_52_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_52_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_52_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_52_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_52_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_52_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_52_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_52_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                             (STRtoINT(STGR_LINHA_52_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_52_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_52_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_52_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_52_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_52_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_52_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_52_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_52_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_52_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                             (STRtoINT(STGR_LINHA_52_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_52_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_52_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_52_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_52_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_52_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_52_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_52_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1

               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_52_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_52_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_52_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_52_100REP.Repaint;

                  // ******************
                  // **  LINHA_3 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 6 DO
               BEGIN
                              STGR_LINHA_53_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_53_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_53_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_53_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_53_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_53_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_53_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quinto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_53_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_53_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_53_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_53_C1.Repaint;
               STGR_LINHA_53_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_53_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_53_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_53_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_53_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_53_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_53_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_53_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_53_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_53_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_53_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_53_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_53_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_53_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_53_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_53_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_53_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_53_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_53_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_53_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_53_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_53_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_53_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_53_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_53_100REP.Repaint;

                  // ******************
                  // **  LINHA_4 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_LINHA_54_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_54_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_54_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_54_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                              STGR_LINHA_54_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L4.Cells[VI_COMBINACOES2,0] + '-' +
                                        STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_54_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_54_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_54_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_54_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_54_C2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3                         
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_54_C1.Repaint;
               STGR_LINHA_54_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_54_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_54_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                             (STRtoINT(STGR_LINHA_54_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_54_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_54_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_54_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_54_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_54_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_54_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_54_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_54_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_54_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_54_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_54_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_54_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_54_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_54_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_54_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_54_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_54_100REP.Repaint;
               // 15-15-6-20
               // GERANDO OS NUMEROS
               VI_LINHAS2 := STGR_TODOS_OS_8.RowCount;
               // PRIMEIRO BLOCO - 1 A 15 X 1 A 15 X 1 A 6 X 1 A 20
               FOR VI_COMBINACOES1 := 1{2} TO 15 {TRUNC((STGR_LINHA_41_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_LINHA_51_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 15 {(STGR_LINHA_42_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_LINHA_52_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 6 {(STGR_LINHA_43_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_LINHA_53_C1.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 20 {(STGR_LINHA_44_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_LINHA_54_C1.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6,7,8 E SOMA
                                   STGR_TODOS_OS_8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_8.Cells[1,VI_LINHAS2] := STGR_LINHA_51_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[2,VI_LINHAS2] := STGR_LINHA_51_C1.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[3,VI_LINHAS2] := STGR_LINHA_52_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[4,VI_LINHAS2] := STGR_LINHA_52_C1.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[5,VI_LINHAS2] := STGR_LINHA_53_C1.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[6,VI_LINHAS2] := STGR_LINHA_54_C1.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[7,VI_LINHAS2] := STGR_LINHA_54_C1.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[8,VI_LINHAS2] := STGR_LINHA_54_C1.Cells[4,VI_COMBINACOES4];
                                   // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13,14 E SOMA
                                   STGR_TODOS_OS_16.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16.Cells[1,VI_LINHAS2] := STGR_LINHA_51_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[2,VI_LINHAS2] := STGR_LINHA_51_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[3,VI_LINHAS2] := STGR_LINHA_51_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[4,VI_LINHAS2] := STGR_LINHA_51_C2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[5,VI_LINHAS2] := STGR_LINHA_52_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[6,VI_LINHAS2] := STGR_LINHA_52_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[7,VI_LINHAS2] := STGR_LINHA_52_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[8,VI_LINHAS2] := STGR_LINHA_52_C2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[9,VI_LINHAS2] := STGR_LINHA_53_C2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[10,VI_LINHAS2] := STGR_LINHA_53_C2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[11,VI_LINHAS2] := STGR_LINHA_53_C2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[12,VI_LINHAS2] := STGR_LINHA_53_C2.Cells[5,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[13,VI_LINHAS2] := STGR_LINHA_53_C2.Cells[6,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[14,VI_LINHAS2] := STGR_LINHA_54_C2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[15,VI_LINHAS2] := STGR_LINHA_54_C2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[16,VI_LINHAS2] := STGR_LINHA_54_C2.Cells[4,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_8.RowCount := VI_LINHAS2;
               STGR_TODOS_OS_16.RowCount := VI_LINHAS2;


              // ===========================================================
              // ||||  2 - 2 - 3 -1     SOBRAS:  4 -  4  -  3  -  5     ||||
              // ===========================================================

                  // ******************
                  // **  LINHA_3 **
                  // ******************
               VI_LINHAS2:= STGR_LINHA_53_C1.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 6 DO
               BEGIN
                              STGR_LINHA_53_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_53_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_53_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_53_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_53_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_53_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_53_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quinto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_53_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_53_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_53_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_53_C1.Repaint;
               STGR_LINHA_53_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_53_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_53_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_53_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_53_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_53_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_53_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_53_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_53_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_53_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_53_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_53_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_53_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_53_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_53_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_53_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_53_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_53_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_53_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_53_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_53_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_53_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_53_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_53_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_53_100REP.Repaint;


                  // ******************
                  // **  lINHA_4  **
                  // ******************
               VI_LINHAS2:= STGR_LINHA_54_C2.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_LINHA_54_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_54_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_54_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_54_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                              STGR_LINHA_54_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L3.Cells[VI_COMBINACOES2,0] + '-' +
                                        STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_54_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_54_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_54_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_54_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_54_C2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3                         
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_54_C1.Repaint;
               STGR_LINHA_54_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_54_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_54_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                             (STRtoINT(STGR_LINHA_54_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_54_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_54_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_54_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_54_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_54_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_54_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_54_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_54_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_54_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_54_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_54_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_54_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_54_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_54_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_54_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_54_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_54_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_54_100REP.Repaint;
               // 15-15-7->12- 21->40
               // GERANDO OS NUMEROS
               VI_LINHAS2 := STGR_TODOS_OS_8.RowCount;
               // segundo BLOCO - 1 A 15 X 1 A 15 X 7 A 12 X 21 A 40
               FOR VI_COMBINACOES1 := 1{2} TO 15 {TRUNC((STGR_LINHA_41_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_LINHA_51_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 15 {(STGR_LINHA_42_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_LINHA_52_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 7 TO 12 {(STGR_LINHA_43_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_LINHA_53_C1.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 21{22} TO 40 {(STGR_LINHA_44_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_LINHA_54_C1.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6,7,8 E SOMA
                                   STGR_TODOS_OS_8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_8.Cells[1,VI_LINHAS2] := STGR_LINHA_51_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[2,VI_LINHAS2] := STGR_LINHA_51_C1.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[3,VI_LINHAS2] := STGR_LINHA_52_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[4,VI_LINHAS2] := STGR_LINHA_52_C1.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[5,VI_LINHAS2] := STGR_LINHA_53_C1.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[6,VI_LINHAS2] := STGR_LINHA_54_C1.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[7,VI_LINHAS2] := STGR_LINHA_54_C1.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[8,VI_LINHAS2] := STGR_LINHA_54_C1.Cells[4,VI_COMBINACOES4];
                                   // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13,14 E SOMA
                                   STGR_TODOS_OS_16.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16.Cells[1,VI_LINHAS2] := STGR_LINHA_51_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[2,VI_LINHAS2] := STGR_LINHA_51_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[3,VI_LINHAS2] := STGR_LINHA_51_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[4,VI_LINHAS2] := STGR_LINHA_51_C2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[5,VI_LINHAS2] := STGR_LINHA_52_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[6,VI_LINHAS2] := STGR_LINHA_52_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[7,VI_LINHAS2] := STGR_LINHA_52_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[8,VI_LINHAS2] := STGR_LINHA_52_C2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[9,VI_LINHAS2] := STGR_LINHA_53_C2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[10,VI_LINHAS2] := STGR_LINHA_53_C2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[11,VI_LINHAS2] := STGR_LINHA_53_C2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[12,VI_LINHAS2] := STGR_LINHA_53_C2.Cells[5,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[13,VI_LINHAS2] := STGR_LINHA_53_C2.Cells[6,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[14,VI_LINHAS2] := STGR_LINHA_54_C2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[15,VI_LINHAS2] := STGR_LINHA_54_C2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[16,VI_LINHAS2] := STGR_LINHA_54_C2.Cells[4,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_8.RowCount := VI_LINHAS2;
               STGR_TODOS_OS_16.RowCount := VI_LINHAS2;

              // ===========================================================
              // ||||===================================================||||
              // ||||  SEGUNDA ABA  2 - 1 - 2 - 3  E  2 - 3 - 2 - 1     ||||
              // ||||===================================================||||
              // ===========================================================

              // ===========================================================
              // ||||  2 - 1 - 2 - 3    SOBRAS:  4 -  5  -  4  -  3     ||||
              // ===========================================================

                  // ******************
                  // **  LINHA_1 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                              STGR_LINHA_61_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_61_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_61_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_61_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_61_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_61_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_61_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_61_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_61_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_61_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_61_C1.Repaint;
               STGR_LINHA_61_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_61_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_61_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_61_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_61_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_61_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_61_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                             (STRtoINT(STGR_LINHA_61_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_61_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_61_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_61_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_61_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_61_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_61_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_61_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                             (STRtoINT(STGR_LINHA_61_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_61_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_61_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_61_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_61_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_61_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_61_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_61_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_61_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_61_100REP.Repaint;

                  // ******************
                  // **  LINHA_2 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 6 DO
               BEGIN

                              STGR_LINHA_62_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_62_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_62_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_62_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_62_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_62_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end;
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_62_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end;
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quINTo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_62_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_62_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_62_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_62_C1.Repaint;
               STGR_LINHA_62_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_62_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_62_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_62_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_6_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_62_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_62_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_62_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_6_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_62_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_62_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_62_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_6_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_62_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_62_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_62_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_6_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_62_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_62_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_62_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_6_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1

               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_62_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_62_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_62_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_62_100REP.Repaint;

                  // ******************
                  // **  LINHA_3 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                              STGR_LINHA_63_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_63_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_63_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_63_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_63_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_63_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_63_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_63_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_63_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_63_C2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_63_C1.Repaint;
               STGR_LINHA_63_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_63_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_63_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_63_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_63_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_63_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_63_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                             (STRtoINT(STGR_LINHA_63_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_63_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_63_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_63_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_63_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_63_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_63_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_63_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text)) OR
                             (STRtoINT(STGR_LINHA_63_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_63_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_63_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_63_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_63_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_63_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_63_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_63_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_63_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_63_100REP.Repaint;

                  // ******************
                  // **  LINHA_4 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_LINHA_64_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_64_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_64_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_64_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                              STGR_LINHA_64_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L4.Cells[VI_COMBINACOES2,0] + '-' +
                                        STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_64_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_64_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_64_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_64_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_64_C2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_64_C1.Repaint;
               STGR_LINHA_64_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_64_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_64_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                             (STRtoINT(STGR_LINHA_64_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_64_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_64_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_64_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_64_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_64_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_64_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_64_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_64_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_64_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_64_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_64_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_64_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_64_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_64_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_64_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_64_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_64_100REP.Repaint;
          // 15 - 6 - 15 -20
               // GERANDO OS NUMEROS
               VI_LINHAS2 := STGR_TODOS_OS_8.RowCount;
               // PRIMEIRO BLOCO - 1 A 15 X 1 A 6 X 1 A 15 X 1 A 20
               FOR VI_COMBINACOES1 := 1{2} TO 15 {TRUNC((STGR_LINHA_61_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_LINHA_61_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 6 {(STGR_LINHA_62_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_LINHA_62_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 15 {(STGR_LINHA_63_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_LINHA_63_C1.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 20 {(STGR_LINHA_64_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_LINHA_64_C1.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6,7,8 E SOMA
                                   STGR_TODOS_OS_8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_8.Cells[1,VI_LINHAS2] := STGR_LINHA_61_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[2,VI_LINHAS2] := STGR_LINHA_61_C1.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[3,VI_LINHAS2] := STGR_LINHA_62_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[4,VI_LINHAS2] := STGR_LINHA_63_C1.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[5,VI_LINHAS2] := STGR_LINHA_63_C1.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[6,VI_LINHAS2] := STGR_LINHA_64_C1.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[7,VI_LINHAS2] := STGR_LINHA_64_C1.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[8,VI_LINHAS2] := STGR_LINHA_64_C1.Cells[4,VI_COMBINACOES4];
                                   // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13,14 E SOMA
                                   STGR_TODOS_OS_16.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16.Cells[1,VI_LINHAS2] := STGR_LINHA_61_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[2,VI_LINHAS2] := STGR_LINHA_61_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[3,VI_LINHAS2] := STGR_LINHA_61_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[4,VI_LINHAS2] := STGR_LINHA_61_C2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[5,VI_LINHAS2] := STGR_LINHA_62_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[6,VI_LINHAS2] := STGR_LINHA_62_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[7,VI_LINHAS2] := STGR_LINHA_62_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[8,VI_LINHAS2] := STGR_LINHA_62_C2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[9,VI_LINHAS2] := STGR_LINHA_62_C2.Cells[6,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[10,VI_LINHAS2] := STGR_LINHA_63_C2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[11,VI_LINHAS2] := STGR_LINHA_63_C2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[12,VI_LINHAS2] := STGR_LINHA_63_C2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[13,VI_LINHAS2] := STGR_LINHA_63_C2.Cells[5,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[14,VI_LINHAS2] := STGR_LINHA_64_C2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[15,VI_LINHAS2] := STGR_LINHA_64_C2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[16,VI_LINHAS2] := STGR_LINHA_64_C2.Cells[4,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_8.RowCount := VI_LINHAS2;
               STGR_TODOS_OS_16.RowCount := VI_LINHAS2;



              // ===========================================================
              // ||||  2 - 3 - 2 -1     SOBRAS:  4 -  3  -  4  -  5     ||||
              // ===========================================================
                  // ******************
                  // **  LINHA_4 **
                  // ******************
               VI_LINHAS2:= STGR_LINHA_64_C1.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_LINHA_64_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_64_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_64_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                              STGR_LINHA_64_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                              STGR_LINHA_64_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_L2.Cells[VI_COMBINACOES2,0] + '-' +
                                        STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_64_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_64_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_64_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_64_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_64_C2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_64_C1.Repaint;
               STGR_LINHA_64_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_64_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_64_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) or
                             (STRtoINT(STGR_LINHA_64_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_64_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_64_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_64_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))  OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_64_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_64_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_64_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_64_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_64_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_64_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))  OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_64_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_64_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_64_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text)) OR
                             (STRtoINT(STGR_LINHA_64_C1.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_64_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_64_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_64_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_64_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_64_100REP.Repaint;

                  // ******************
                  // **  LINHA_2 **
                  // ******************
               VI_LINHAS2:= STGR_LINHA_62_C1.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 6 DO
               BEGIN
                              STGR_LINHA_62_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_LINHA_62_C1.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_LINHA_62_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                                             // pega o primeiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_62_C2.Cells[2,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o segundo numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_62_C2.Cells[3,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o terceiro numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_62_C2.Cells[4,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quarto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                       begin
                                                            STGR_LINHA_62_C2.Cells[5,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                            VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                                 STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                       end; // if
                                                  END;
                                             END; // FOR VI_CONTADOR
                                             // pega o quinto numero que sobrou
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 6 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_LINHA_62_C2.Cells[6,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_LINHA_62_C1.RowCount := VI_LINHAS2;
                                   STGR_LINHA_62_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES1
               STGR_LINHA_62_C1.Repaint;
               STGR_LINHA_62_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_62_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_62_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_62_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_62_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_62_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_62_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_62_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_62_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_62_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_62_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_62_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_62_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_62_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_62_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_04.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_62_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_62_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_62_C1.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_LINHA_62_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_05.Text))
                             THEN
                         BEGIN
                             STGR_LINHA_62_C1.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_62_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_62_C1.RowCount-1) DO
               BEGIN
                    IF (STGR_LINHA_62_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
               LA_LINHA_62_100REP.Caption := INTtoSTR(VI_CONTAR);
               LA_LINHA_62_100REP.Repaint;
          // 15 - 7->12 - 15 -21->40
               // GERANDO OS NUMEROS
               VI_LINHAS2 := STGR_TODOS_OS_8.RowCount;
               // segundo BLOCO - 1 A 15 X 1 A 6 X 1 A 15 X 1 A 20
               FOR VI_COMBINACOES1 := 1{2} TO 15 {TRUNC((STGR_LINHA_61_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_LINHA_61_C1.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 7{16} TO 12 {(STGR_LINHA_62_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_LINHA_62_C1.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 15 {(STGR_LINHA_63_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_LINHA_63_C1.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 21{22} TO 40 {(STGR_LINHA_64_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_LINHA_64_C1.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6,7,8 E SOMA
                                   STGR_TODOS_OS_8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_8.Cells[1,VI_LINHAS2] := STGR_LINHA_61_C1.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[2,VI_LINHAS2] := STGR_LINHA_61_C1.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_8.Cells[3,VI_LINHAS2] := STGR_LINHA_62_C1.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_8.Cells[4,VI_LINHAS2] := STGR_LINHA_63_C1.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[5,VI_LINHAS2] := STGR_LINHA_63_C1.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_8.Cells[6,VI_LINHAS2] := STGR_LINHA_64_C1.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[7,VI_LINHAS2] := STGR_LINHA_64_C1.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_8.Cells[8,VI_LINHAS2] := STGR_LINHA_64_C1.Cells[4,VI_COMBINACOES4];
                                   // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13,14 E SOMA
                                   STGR_TODOS_OS_16.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16.Cells[1,VI_LINHAS2] := STGR_LINHA_61_C2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[2,VI_LINHAS2] := STGR_LINHA_61_C2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[3,VI_LINHAS2] := STGR_LINHA_61_C2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[4,VI_LINHAS2] := STGR_LINHA_61_C2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16.Cells[5,VI_LINHAS2] := STGR_LINHA_62_C2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[6,VI_LINHAS2] := STGR_LINHA_62_C2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[7,VI_LINHAS2] := STGR_LINHA_62_C2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[8,VI_LINHAS2] := STGR_LINHA_62_C2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[9,VI_LINHAS2] := STGR_LINHA_62_C2.Cells[6,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16.Cells[10,VI_LINHAS2] := STGR_LINHA_63_C2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[11,VI_LINHAS2] := STGR_LINHA_63_C2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[12,VI_LINHAS2] := STGR_LINHA_63_C2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[13,VI_LINHAS2] := STGR_LINHA_63_C2.Cells[5,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16.Cells[14,VI_LINHAS2] := STGR_LINHA_64_C2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[15,VI_LINHAS2] := STGR_LINHA_64_C2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16.Cells[16,VI_LINHAS2] := STGR_LINHA_64_C2.Cells[4,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_8.RowCount := VI_LINHAS2;
               STGR_TODOS_OS_16.RowCount := VI_LINHAS2;
     END; // IF (CB_NUMEROS_QUADRO1.ItemIndex



    // =====================================
    // ||||==========================||||
    // |||| 	Segunda Parte      ||||
    // ||||==========================||||
    // =====================================
        // ******************
        // **  LINHA 1 e 2 **
        // ******************
     VI_LINHAS1:= 1;
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_1_2.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_1_2.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,1];
                         STGR_HLINHAS_1_2.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,1];
                         STGR_HLINHAS_1_2.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,2];
                         STGR_HLINHAS_1_2.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,2];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,1];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,1];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,2];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,2];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR  VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          end;//FOR VI_COMBINACOES2
     END; // FOR sI_COMBINACOES1
     STGR_HLINHAS_1_2.RowCount := VI_LINHAS2;

        // ******************
        // **  LINHA 1 e 3 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_1_3.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_1_3.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,1];
                         STGR_HLINHAS_1_3.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,1];
                         STGR_HLINHAS_1_3.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,3];
                         STGR_HLINHAS_1_3.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,3];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,1];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,1];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,3];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,3];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_1_3.RowCount := VI_LINHAS2;

        // ******************
        // **  LINHA 1 e 4 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_1_4.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_1_4.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,1];
                         STGR_HLINHAS_1_4.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,1];
                         STGR_HLINHAS_1_4.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,4];
                         STGR_HLINHAS_1_4.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,4];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,1];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,1];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,4];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,4];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_1_4.RowCount := VI_LINHAS2;

        // ******************
        // **  LINHA 1 e 5 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_1_5.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_1_5.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,1];
                         STGR_HLINHAS_1_5.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,1];
                         STGR_HLINHAS_1_5.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,5];
                         STGR_HLINHAS_1_5.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,5];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,1];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,1];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,5];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,5];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_1_5.RowCount := VI_LINHAS2;
        // ******************
        // **  LINHA 1 e 6 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_1_6.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_1_6.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,1];
                         STGR_HLINHAS_1_6.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,1];
                         STGR_HLINHAS_1_6.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,6];
                         STGR_HLINHAS_1_6.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,6];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,1];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,1];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,6];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,6];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_1_6.RowCount := VI_LINHAS2;



        // ******************
        // **  LINHA 2 e 3 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_2_3.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_2_3.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,2];
                         STGR_HLINHAS_2_3.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,2];
                         STGR_HLINHAS_2_3.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,3];
                         STGR_HLINHAS_2_3.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,3];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,2];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,2];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,3];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,3];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_2_3.RowCount := VI_LINHAS2;

        // ******************
        // **  LINHA 2 e 4 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_2_4.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_2_4.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,2];
                         STGR_HLINHAS_2_4.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,2];
                         STGR_HLINHAS_2_4.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,4];
                         STGR_HLINHAS_2_4.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,4];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,2];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,2];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,4];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,4];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_2_4.RowCount := VI_LINHAS2;

        // ******************
        // **  LINHA 2 e 5 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_2_5.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_2_5.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,2];
                         STGR_HLINHAS_2_5.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,2];
                         STGR_HLINHAS_2_5.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,5];
                         STGR_HLINHAS_2_5.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,5];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,2];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,2];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,5];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,5];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_2_5.RowCount := VI_LINHAS2;

        // ******************
        // **  LINHA 2 e 6 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_2_6.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_2_6.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,2];
                         STGR_HLINHAS_2_6.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,2];
                         STGR_HLINHAS_2_6.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,6];
                         STGR_HLINHAS_2_6.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,6];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,2];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,2];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,6];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,6];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_2_6.RowCount := VI_LINHAS2;



        // ******************
        // **  LINHA 3 e 4 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_3_4.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_3_4.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,3];
                         STGR_HLINHAS_3_4.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,3];
                         STGR_HLINHAS_3_4.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,4];
                         STGR_HLINHAS_3_4.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,4];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,3];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,3];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,4];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,4];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_3_4.RowCount := VI_LINHAS2;

        // ******************
        // **  LINHA 3 e 5 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_3_5.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_3_5.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,3];
                         STGR_HLINHAS_3_5.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,3];
                         STGR_HLINHAS_3_5.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,5];
                         STGR_HLINHAS_3_5.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,5];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,3];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,3];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,5];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,5];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_3_5.RowCount := VI_LINHAS2;

        // ******************
        // **  LINHA 3 e 6 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_3_6.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_3_6.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,3];
                         STGR_HLINHAS_3_6.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,3];
                         STGR_HLINHAS_3_6.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,6];
                         STGR_HLINHAS_3_6.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,6];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,3];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,3];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,6];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,6];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_3_6.RowCount := VI_LINHAS2;



        // ******************
        // **  LINHA 4 e 5 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_4_5.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_4_5.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,4];
                         STGR_HLINHAS_4_5.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,4];
                         STGR_HLINHAS_4_5.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,5];
                         STGR_HLINHAS_4_5.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,5];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,4];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,4];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,5];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,5];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_4_5.RowCount := VI_LINHAS2;

        // ******************
        // **  LINHA 4 e 6 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_4_6.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_4_6.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,4];
                         STGR_HLINHAS_4_6.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,4];
                         STGR_HLINHAS_4_6.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,6];
                         STGR_HLINHAS_4_6.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,6];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,4];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,4];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,6];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,6];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_4_6.RowCount := VI_LINHAS2;



        // ******************
        // **  LINHA 5 e 6 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 3 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 4 DO
                    BEGIN
                         IF (VI_COMBINACOES1 = VI_COMBINACOES2) OR (VI_COMBINACOES3=VI_COMBINACOES4) THEN
                              CONTINUE;
                         STGR_HLINHAS_5_6.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_HLINHAS_5_6.Cells [1,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,5];
                         STGR_HLINHAS_5_6.Cells [2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,5];
                         STGR_HLINHAS_5_6.Cells [3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,6];
                         STGR_HLINHAS_5_6.Cells [4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,6];
                              STGR_HLINHAS_TODAS.Cells [0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                              STGR_HLINHAS_TODAS.Cells [1,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES1,5];
                              STGR_HLINHAS_TODAS.Cells [2,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES2,5];
                              STGR_HLINHAS_TODAS.Cells [3,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES3,6];
                              STGR_HLINHAS_TODAS.Cells [4,VI_LINHAS1] := STGR_BASE_SUBFILTRO_1.Cells [VI_COMBINACOES4,6];
                         VI_LINHAS1:= VI_LINHAS1 + 1;
                         VI_LINHAS2:= VI_LINHAS2 + 1;
                    end;//FOR
               END; // FOR
          end;//FOR
     END; // FOR
     STGR_HLINHAS_5_6.RowCount := VI_LINHAS2;
     STGR_HLINHAS_TODAS.RowCount := VI_LINHAS1;

    // =================================================================
    // ||||==========================================================||||
    // ||||  PRIMEIRA ABA  5 -  4  -  4  -  3   E   3 - 4 - 4 -5     ||||
    // ||||==========================================================||||
    // ==================================================================

        // ******************
        // **  COLUNA_1 **
        // ******************
     VI_LINHAS2:= 1;
     STGR_TODOS_OS_16_Q2.ColWidths[0] := 50;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 6 DO
                         BEGIN
                              STGR_COLUNA_11_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_COLUNA_11_Q2.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_COLUNA_11_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES1];
                              STGR_COLUNA_11_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES2];
                              STGR_COLUNA_11_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES3];
                              STGR_COLUNA_11_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES4];
                              STGR_COLUNA_11_Q2.Cells [6,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES5];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES1]+ '-' +
                                                          STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES2]+ '-' +
                                                          STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES3]+ '-' +
                                                          STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES4]+ '-' +
                                                          STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES5]  ;
                                        // pega o numero que sobrou
                                        STGR_COLUNA_s61_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_s61_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_SUBFILTRO_1.Cells[1,VI_CONTADOR], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_COLUNA_s61_Q2.Cells[2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells[1,VI_CONTADOR];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_SUBFILTRO_1.Cells[1,VI_CONTADOR];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_COLUNA_11_Q2.RowCount := VI_LINHAS2;
                                   STGR_COLUNA_s61_Q2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES5
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_COLUNA_11_Q2.Repaint;
     STGR_COLUNA_s61_Q2.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_11_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_11_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_11_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_11_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_11_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_11_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_11_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_11_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_11_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_11_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_11_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                   (STRtoINT(STGR_COLUNA_11_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_11_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_11_Q2.RowCount-1) DO
     BEGIN
          IF (STGR_COLUNA_11_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_COLUNA_11_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_COLUNA_11_100REP.Repaint;

        // ******************
        // **  COLUNA_2 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                    BEGIN
                         STGR_COLUNA_12_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_COLUNA_12_Q2.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_COLUNA_12_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES1];
                         STGR_COLUNA_12_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES2];
                         STGR_COLUNA_12_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES3];
                         STGR_COLUNA_12_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES4];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES1]+ '-' +
                                                          STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES2]+ '-' +
                                                          STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES3]+ '-' +
                                                          STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES4]  ;
                                        // pega o 1º numero que sobrou
                                        STGR_COLUNA_s62_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_s62_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_SUBFILTRO_1.Cells[2,VI_CONTADOR], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_COLUNA_s62_Q2.Cells[2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells[2,VI_CONTADOR];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_SUBFILTRO_1.Cells[2,VI_CONTADOR];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                                        // pega o 2º numero que sobrou
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_SUBFILTRO_1.Cells[2,VI_CONTADOR], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_COLUNA_s62_Q2.Cells[3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells[2,VI_CONTADOR];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_SUBFILTRO_1.Cells[2,VI_CONTADOR];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_COLUNA_12_Q2.RowCount := VI_LINHAS2;
                              STGR_COLUNA_s62_Q2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES4                              
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_COLUNA_12_Q2.Repaint;
     STGR_COLUNA_s62_Q2.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_12_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_12_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                   (STRtoINT(STGR_COLUNA_12_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                   (STRtoINT(STGR_COLUNA_12_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                   (STRtoINT(STGR_COLUNA_12_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_12_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_12_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_12_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                   (STRtoINT(STGR_COLUNA_12_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                   (STRtoINT(STGR_COLUNA_12_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))  OR
                   (STRtoINT(STGR_COLUNA_12_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_12_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_12_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_12_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                   (STRtoINT(STGR_COLUNA_12_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                   (STRtoINT(STGR_COLUNA_12_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                   (STRtoINT(STGR_COLUNA_12_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_12_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_12_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_12_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                   (STRtoINT(STGR_COLUNA_12_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                   (STRtoINT(STGR_COLUNA_12_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                   (STRtoINT(STGR_COLUNA_12_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_12_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_12_Q2.RowCount-1) DO
     BEGIN
          IF (STGR_COLUNA_12_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_COLUNA_12_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_COLUNA_12_100REP.Repaint;

        // ******************
        // **  COLUNA_3 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                    BEGIN
                         STGR_COLUNA_13_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_COLUNA_13_Q2.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_COLUNA_13_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES1];
                         STGR_COLUNA_13_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES2];
                         STGR_COLUNA_13_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES3];
                         STGR_COLUNA_13_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES4];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES1]+ '-' +
                                                          STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES2]+ '-' +
                                                          STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES3]+ '-' +
                                                          STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES4]  ;
                                       // pega o 1º numero que sobrou
                                        STGR_COLUNA_s63_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_s63_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_SUBFILTRO_1.Cells[3,VI_CONTADOR], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_COLUNA_s63_Q2.Cells[2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells[3,VI_CONTADOR];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_SUBFILTRO_1.Cells[3,VI_CONTADOR];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                                        // pega o 2º numero que sobrou
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_SUBFILTRO_1.Cells[3,VI_CONTADOR], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_COLUNA_s63_Q2.Cells[3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells[3,VI_CONTADOR];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_SUBFILTRO_1.Cells[3,VI_CONTADOR];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_COLUNA_13_Q2.RowCount := VI_LINHAS2;
                              STGR_COLUNA_s63_Q2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_COLUNA_13_Q2.Repaint;
     STGR_COLUNA_s63_Q2.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_13_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_13_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                   (STRtoINT(STGR_COLUNA_13_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                   (STRtoINT(STGR_COLUNA_13_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                   (STRtoINT(STGR_COLUNA_13_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_13_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_13_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_13_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                   (STRtoINT(STGR_COLUNA_13_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                   (STRtoINT(STGR_COLUNA_13_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                   (STRtoINT(STGR_COLUNA_13_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_13_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_13_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_13_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                   (STRtoINT(STGR_COLUNA_13_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                   (STRtoINT(STGR_COLUNA_13_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                   (STRtoINT(STGR_COLUNA_13_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_13_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_13_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_13_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                   (STRtoINT(STGR_COLUNA_13_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                   (STRtoINT(STGR_COLUNA_13_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                   (STRtoINT(STGR_COLUNA_13_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_13_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_13_Q2.RowCount-1) DO
     BEGIN
          IF (STGR_COLUNA_13_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_COLUNA_13_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_COLUNA_13_100REP.Repaint;

        // ******************
        // **  COLUNA_4 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
               BEGIN
                    STGR_COLUNA_14_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_COLUNA_14_Q2.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_COLUNA_14_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES1];
                    STGR_COLUNA_14_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES2];
                    STGR_COLUNA_14_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES3];
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES1]+ '-' +
                                                          STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES2]+ '-' +
                                                          STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES3] ;
                                       // pega o 1º numero que sobrou
                                        STGR_COLUNA_s64_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_s64_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_SUBFILTRO_1.Cells[4,VI_CONTADOR], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_COLUNA_s64_Q2.Cells[2,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells[4,VI_CONTADOR];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_SUBFILTRO_1.Cells[4,VI_CONTADOR];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                                        // pega o 2º numero que sobrou
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_SUBFILTRO_1.Cells[4,VI_CONTADOR], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_COLUNA_s64_Q2.Cells[3,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells[4,VI_CONTADOR];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_SUBFILTRO_1.Cells[4,VI_CONTADOR];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                                        // pega o 3º numero que sobrou
                                        VI_CONTAR :=0;
                                        FOR VI_CONTADOR := 1 TO 6 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_SUBFILTRO_1.Cells[4,VI_CONTADOR], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  IF (VI_CONTAR=1) THEN
                                                  begin
                                                       STGR_COLUNA_s64_Q2.Cells[4,VI_LINHAS2] := STGR_BASE_SUBFILTRO_1.Cells[4,VI_CONTADOR];
                                                       VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                            STGR_BASE_SUBFILTRO_1.Cells[4,VI_CONTADOR];
                                                  end; // if
                                             END;
                                        END; // FOR VI_CONTADOR
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_COLUNA_14_Q2.RowCount := VI_LINHAS2;
                         STGR_COLUNA_s64_Q2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_COLUNA_14_Q2.Repaint;
     STGR_COLUNA_s64_Q2.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_14_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_14_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                   (STRtoINT(STGR_COLUNA_14_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                   (STRtoINT(STGR_COLUNA_14_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_14_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_14_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_14_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                   (STRtoINT(STGR_COLUNA_14_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                   (STRtoINT(STGR_COLUNA_14_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_14_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_14_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_14_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                   (STRtoINT(STGR_COLUNA_14_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                   (STRtoINT(STGR_COLUNA_14_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_14_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_14_Q2.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_COLUNA_14_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                   (STRtoINT(STGR_COLUNA_14_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                   (STRtoINT(STGR_COLUNA_14_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                   THEN
               BEGIN
                   STGR_COLUNA_14_Q2.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_14_Q2.RowCount-1) DO
     BEGIN
          IF (STGR_COLUNA_14_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_COLUNA_14_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_COLUNA_14_100REP.Repaint;

     // gerando os numeros
     // 6-15-15-20
     VI_LINHAS2 := 1;
     STGR_TODOS_OS_16_Q2.ColWidths[0] := 50;
     STGR_TODOS_OS_08_Q2.ColWidths[0] := 50;
     FOR VI_COMBINACOES1 := 1{2} TO 6 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
     BEGIN
          IF (STGR_COLUNA_11_Q2.Cells[1,VI_COMBINACOES1] = 'F') then
               continue;
          FOR VI_COMBINACOES2 := 1{16} TO 15 {(STGR_LINHA_2_C1.RowCount-1)} DO
          BEGIN
               IF (STGR_COLUNA_12_Q2.Cells[1,VI_COMBINACOES2] = 'F') then
                    continue;
               FOR VI_COMBINACOES3 := 1 TO 15 {(STGR_LINHA_3_C1.RowCount-1)} DO
               BEGIN
                    IF (STGR_COLUNA_13_Q2.Cells[1,VI_COMBINACOES3] = 'F') then
                         continue;
                    FOR VI_COMBINACOES4 := 1{22} TO 20 {(STGR_LINHA_4_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_COLUNA_14_Q2.Cells[1,VI_COMBINACOES4] = 'F') then
                              continue;
                         STGR_TODOS_OS_16_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_TODOS_OS_16_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_11_Q2.Cells[2,VI_COMBINACOES1];
                         STGR_TODOS_OS_16_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_11_Q2.Cells[3,VI_COMBINACOES1];
                         STGR_TODOS_OS_16_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_11_Q2.Cells[4,VI_COMBINACOES1];
                         STGR_TODOS_OS_16_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_11_Q2.Cells[5,VI_COMBINACOES1];
                         STGR_TODOS_OS_16_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_11_Q2.Cells[6,VI_COMBINACOES1];
                         STGR_TODOS_OS_16_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_12_Q2.Cells[2,VI_COMBINACOES2];
                         STGR_TODOS_OS_16_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_12_Q2.Cells[3,VI_COMBINACOES2];
                         STGR_TODOS_OS_16_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_12_Q2.Cells[4,VI_COMBINACOES2];
                         STGR_TODOS_OS_16_Q2.Cells[9,VI_LINHAS2] := STGR_COLUNA_12_Q2.Cells[5,VI_COMBINACOES2];
                         STGR_TODOS_OS_16_Q2.Cells[10,VI_LINHAS2] := STGR_COLUNA_13_Q2.Cells[2,VI_COMBINACOES3];
                         STGR_TODOS_OS_16_Q2.Cells[11,VI_LINHAS2] := STGR_COLUNA_13_Q2.Cells[3,VI_COMBINACOES3];
                         STGR_TODOS_OS_16_Q2.Cells[12,VI_LINHAS2] := STGR_COLUNA_13_Q2.Cells[4,VI_COMBINACOES3];
                         STGR_TODOS_OS_16_Q2.Cells[13,VI_LINHAS2] := STGR_COLUNA_13_Q2.Cells[5,VI_COMBINACOES3];
                         STGR_TODOS_OS_16_Q2.Cells[14,VI_LINHAS2] := STGR_COLUNA_14_Q2.Cells[2,VI_COMBINACOES4];
                         STGR_TODOS_OS_16_Q2.Cells[15,VI_LINHAS2] := STGR_COLUNA_14_Q2.Cells[3,VI_COMBINACOES4];
                         STGR_TODOS_OS_16_Q2.Cells[16,VI_LINHAS2] := STGR_COLUNA_14_Q2.Cells[4,VI_COMBINACOES4];
                         //
                         STGR_TODOS_OS_08_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_TODOS_OS_08_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_s61_Q2.Cells[2,VI_COMBINACOES1];
                         STGR_TODOS_OS_08_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_s62_Q2.Cells[2,VI_COMBINACOES2];
                         STGR_TODOS_OS_08_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_s62_Q2.Cells[3,VI_COMBINACOES2];
                         STGR_TODOS_OS_08_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_s63_Q2.Cells[2,VI_COMBINACOES3];
                         STGR_TODOS_OS_08_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_s63_Q2.Cells[3,VI_COMBINACOES3];
                         STGR_TODOS_OS_08_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_s64_Q2.Cells[2,VI_COMBINACOES4];
                         STGR_TODOS_OS_08_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_s64_Q2.Cells[3,VI_COMBINACOES4];
                         STGR_TODOS_OS_08_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_s64_Q2.Cells[4,VI_COMBINACOES4];
                         VI_LINHAS2 := VI_LINHAS2 +1;
                    end;//FOR  VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          end;//FOR VI_COMBINACOES2
     END; // FOR sI_COMBINACOES1
     STGR_TODOS_OS_16_Q2.RowCount := VI_LINHAS2 ;
     STGR_TODOS_OS_08_Q2.RowCount := VI_LINHAS2 ;
     IF (CB_NUMEROS_QUADRO1.ItemIndex >=1) THEN
     BEGIN
         // ===================================
         // ||||    3 -  4  -  4  -  5     ||||
         // ===================================
             // ******************
             // **  COLUNA_1 **
             // ******************
          VI_LINHAS2:= STGR_COLUNA_11_Q2.RowCount;
          FOR VI_COMBINACOES1:= 1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
               BEGIN
                    FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 6 DO
                              BEGIN
                                   STGR_COLUNA_11_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_11_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_11_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES1];
                                   STGR_COLUNA_11_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES2];
                                   STGR_COLUNA_11_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES3];
                                   STGR_COLUNA_11_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES4];
                                   STGR_COLUNA_11_Q2.Cells [6,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES5];
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_11_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_11_Q2.RowCount := VI_LINHAS2;
                              END; // FOR VI_COMBINACOES5
                         END; // FOR VI_COMBINACOES4
                    END; // FOR VI_COMBINACOES3
               END; // FOR VI_COMBINACOES2
          END; // FOR VI_COMBINACOES1
          STGR_COLUNA_11_Q2.Repaint;
          STGR_LINHA_1_C2.Repaint;
                         // -------------------------------
                         // --  Removendo os EXCLUIDOS DA COLUNA  --
                         // -------------------------------
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_11_Q2.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_COLUNA_11_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))

                        THEN
                    BEGIN
                        STGR_COLUNA_11_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_11_Q2.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_COLUNA_11_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                        THEN
                    BEGIN
                        STGR_COLUNA_11_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_11_Q2.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_COLUNA_11_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                        THEN
                    BEGIN
                        STGR_COLUNA_11_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_11_Q2.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_COLUNA_11_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                        (STRtoINT(STGR_COLUNA_11_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                        THEN
                    BEGIN
                        STGR_COLUNA_11_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
          VI_CONTAR := 0;
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_11_Q2.RowCount-1) DO
          BEGIN
               IF (STGR_COLUNA_11_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
          END;
          LA_COLUNA_11_100REP.Caption := INTtoSTR(VI_CONTAR);
          LA_COLUNA_11_100REP.Repaint;

             // ******************
             // **  COLUNA_4 **
             // ******************
          VI_LINHAS2:= STGR_COLUNA_14_Q2.RowCount;
          FOR VI_COMBINACOES1:= 1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
               BEGIN
                    FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                    BEGIN
                         STGR_COLUNA_14_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_COLUNA_14_Q2.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_COLUNA_14_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES1];
                         STGR_COLUNA_14_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES2];
                         STGR_COLUNA_14_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES3];
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_COLUNA_14_Q2.RowCount := VI_LINHAS2;
                              STGR_COLUNA_14_Q2.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES3
               END; // FOR VI_COMBINACOES2
          END; // FOR VI_COMBINACOES1
          STGR_COLUNA_14_Q2.Repaint;
          STGR_LINHA_1_C2.Repaint;
                         // -------------------------------
                         // --  Removendo os EXCLUIDOS DA COLUNA  --
                         // -------------------------------
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_14_Q2.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_COLUNA_14_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                        (STRtoINT(STGR_COLUNA_14_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                        (STRtoINT(STGR_COLUNA_14_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                        THEN
                    BEGIN
                        STGR_COLUNA_14_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_14_Q2.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_COLUNA_14_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                        (STRtoINT(STGR_COLUNA_14_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                        (STRtoINT(STGR_COLUNA_14_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                        THEN
                    BEGIN
                        STGR_COLUNA_14_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_14_Q2.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_COLUNA_14_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                        (STRtoINT(STGR_COLUNA_14_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                        (STRtoINT(STGR_COLUNA_14_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                        THEN
                    BEGIN
                        STGR_COLUNA_14_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_14_Q2.RowCount-1) DO
               BEGIN
                    IF  (STRtoINT(STGR_COLUNA_14_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                        (STRtoINT(STGR_COLUNA_14_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                        (STRtoINT(STGR_COLUNA_14_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                        THEN
                    BEGIN
                        STGR_COLUNA_14_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES1
          VI_CONTAR := 0;
          FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_14_Q2.RowCount-1) DO
          BEGIN
               IF (STGR_COLUNA_14_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
          END;
          LA_COLUNA_14_100REP.Caption := INTtoSTR(VI_CONTAR);
          LA_COLUNA_14_100REP.Repaint;

          // gerando os numeros
          // 7a12-15-15-21 a 40
          VI_LINHAS2 := STGR_TODOS_OS_16_Q2.RowCount;
          FOR VI_COMBINACOES1 := 7{2} TO 12 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
          BEGIN
               IF (STGR_COLUNA_11_Q2.Cells[1,VI_COMBINACOES1] = 'F') then
                    continue;
               FOR VI_COMBINACOES2 := 1{16} TO 15 {(STGR_LINHA_2_C1.RowCount-1)} DO
               BEGIN
                    IF (STGR_COLUNA_12_Q2.Cells[1,VI_COMBINACOES2] = 'F') then
                         continue;
                    FOR VI_COMBINACOES3 := 1 TO 15 {(STGR_LINHA_3_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_COLUNA_13_Q2.Cells[1,VI_COMBINACOES3] = 'F') then
                              continue;
                         FOR VI_COMBINACOES4 := 21{22} TO 40 {(STGR_LINHA_4_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_COLUNA_14_Q2.Cells[1,VI_COMBINACOES4] = 'F') then
                                   continue;
                              STGR_TODOS_OS_16_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                              STGR_TODOS_OS_16_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_11_Q2.Cells[2,VI_COMBINACOES1];
                              STGR_TODOS_OS_16_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_11_Q2.Cells[3,VI_COMBINACOES1];
                              STGR_TODOS_OS_16_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_11_Q2.Cells[4,VI_COMBINACOES1];
                              STGR_TODOS_OS_16_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_11_Q2.Cells[5,VI_COMBINACOES1];
                              STGR_TODOS_OS_16_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_11_Q2.Cells[6,VI_COMBINACOES1];
                              STGR_TODOS_OS_16_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_12_Q2.Cells[2,VI_COMBINACOES2];
                              STGR_TODOS_OS_16_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_12_Q2.Cells[3,VI_COMBINACOES2];
                              STGR_TODOS_OS_16_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_12_Q2.Cells[4,VI_COMBINACOES2];
                              STGR_TODOS_OS_16_Q2.Cells[9,VI_LINHAS2] := STGR_COLUNA_12_Q2.Cells[5,VI_COMBINACOES2];
                              STGR_TODOS_OS_16_Q2.Cells[10,VI_LINHAS2] := STGR_COLUNA_13_Q2.Cells[2,VI_COMBINACOES3];
                              STGR_TODOS_OS_16_Q2.Cells[11,VI_LINHAS2] := STGR_COLUNA_13_Q2.Cells[3,VI_COMBINACOES3];
                              STGR_TODOS_OS_16_Q2.Cells[12,VI_LINHAS2] := STGR_COLUNA_13_Q2.Cells[4,VI_COMBINACOES3];
                              STGR_TODOS_OS_16_Q2.Cells[13,VI_LINHAS2] := STGR_COLUNA_13_Q2.Cells[5,VI_COMBINACOES3];
                              STGR_TODOS_OS_16_Q2.Cells[14,VI_LINHAS2] := STGR_COLUNA_14_Q2.Cells[2,VI_COMBINACOES4];
                              STGR_TODOS_OS_16_Q2.Cells[15,VI_LINHAS2] := STGR_COLUNA_14_Q2.Cells[3,VI_COMBINACOES4];
                              STGR_TODOS_OS_16_Q2.Cells[16,VI_LINHAS2] := STGR_COLUNA_14_Q2.Cells[4,VI_COMBINACOES4];
                              VI_LINHAS2 := VI_LINHAS2 +1;
                         end;//FOR  VI_COMBINACOES4
                    END; // FOR VI_COMBINACOES3
               end;//FOR VI_COMBINACOES2
          END; // FOR sI_COMBINACOES1
     END; //  IF (CB_NUMEROS_QUADRO1.ItemIndex >=1) THEN

     STGR_TODOS_OS_16_Q2.RowCount := VI_LINHAS2 ;




     IF (CB_NUMEROS_QUADRO1.ItemIndex = 2) OR (CB_NUMEROS_QUADRO1.ItemIndex =4) THEN
     BEGIN
              // ===========================================================
              // ||||===================================================||||
              // ||||  SEGUNDA ABA  4 -  5  -  3  -  3   E   4 - 3 - 5 -4     ||||
              // ||||===================================================||||
              // ===========================================================

                  // ******************
                  // **  COLUNA_1 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   STGR_COLUNA_21_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_21_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_21_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES1];
                                   STGR_COLUNA_21_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES2];
                                   STGR_COLUNA_21_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES3];
                                   STGR_COLUNA_21_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES4];                                   
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_21_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_21_Q2.RowCount := VI_LINHAS2;
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_21_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_21_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_21_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_21_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_21_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_21_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_21_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_21_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_21_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_21_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_21_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_21_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_21_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_21_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_21_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_21_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_21_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_21_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_21_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_21_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_21_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_21_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_21_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_21_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_21_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_21_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_21_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
            //   LA_COLUNA_21_100REP.Caption := INTtoSTR(VI_CONTAR);
            //   LA_COLUNA_21_100REP.Repaint;

                  // ******************
                  // **  COLUNA_2 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 6 DO
                                   BEGIN
                                        STGR_COLUNA_22_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_22_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_COLUNA_22_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES1];
                                        STGR_COLUNA_22_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES2];
                                        STGR_COLUNA_22_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES3];
                                        STGR_COLUNA_22_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES4];
                                        STGR_COLUNA_22_Q2.Cells [6,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES5];                                                                                
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_COLUNA_22_Q2.RowCount := VI_LINHAS2;
                                             STGR_COLUNA_22_Q2.RowCount := VI_LINHAS2;
                                   END; // FOR VI_COMBINACOES5
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_22_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_22_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_22_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_22_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_22_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_22_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_22_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_22_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_22_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_22_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_22_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_22_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_22_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_22_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_22_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
           //    LA_COLUNA_22_100REP.Caption := INTtoSTR(VI_CONTAR);
           //    LA_COLUNA_22_100REP.Repaint;

                  // ******************
                  // **  COLUNA_3 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                                   STGR_COLUNA_23_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_23_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_23_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES1];
                                   STGR_COLUNA_23_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES2];
                                   STGR_COLUNA_23_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES3];
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_23_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_23_Q2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_23_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_23_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_23_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_23_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_23_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_23_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_23_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_23_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_23_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_23_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_23_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_23_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_23_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_23_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_23_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
            //   LA_COLUNA_23_100REP.Caption := INTtoSTR(VI_CONTAR);
           //    LA_COLUNA_23_100REP.Repaint;

                  // ******************
                  // **  COLUNA_4 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   STGR_COLUNA_24_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_24_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_24_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES1];
                                   STGR_COLUNA_24_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES2];
                                   STGR_COLUNA_24_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES3];
                                   STGR_COLUNA_24_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES4];                                   
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_24_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_24_Q2.RowCount := VI_LINHAS2;
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_24_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_24_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_24_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_24_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_24_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_24_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_24_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_24_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_24_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_24_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_24_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_24_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_24_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_24_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_24_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_24_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_24_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_24_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_24_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_24_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_24_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_24_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_24_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_24_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_24_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_24_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_24_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
              // LA_COLUNA_24_100REP.Caption := INTtoSTR(VI_CONTAR);
             //  LA_COLUNA_24_100REP.Repaint;
               // gerando os numeros
               // 15-6-20-15
               VI_LINHAS2 := STGR_TODOS_OS_16_Q2.RowCount;
               FOR VI_COMBINACOES1 := 1{2} TO 15 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_COLUNA_21_Q2.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 6 {(STGR_LINHA_2_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_COLUNA_22_Q2.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 20 {(STGR_LINHA_3_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_COLUNA_23_Q2.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 15 {(STGR_LINHA_4_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_COLUNA_24_Q2.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   STGR_TODOS_OS_16_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_21_Q2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_21_Q2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_21_Q2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_21_Q2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_22_Q2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_22_Q2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_22_Q2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_22_Q2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[9,VI_LINHAS2] := STGR_COLUNA_22_Q2.Cells[6,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[10,VI_LINHAS2] := STGR_COLUNA_23_Q2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[11,VI_LINHAS2] := STGR_COLUNA_23_Q2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[12,VI_LINHAS2] := STGR_COLUNA_23_Q2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[13,VI_LINHAS2] := STGR_COLUNA_24_Q2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[14,VI_LINHAS2] := STGR_COLUNA_24_Q2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[15,VI_LINHAS2] := STGR_COLUNA_24_Q2.Cells[4,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[16,VI_LINHAS2] := STGR_COLUNA_24_Q2.Cells[5,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_16_Q2.RowCount := VI_LINHAS2 ;

              // ===================================
              // ||||    4 -  3  -  5  -  4     ||||
              // ===================================
                  // ******************
                  // **  COLUNA_2 **
                  // ******************
               VI_LINHAS2:= STGR_COLUNA_22_Q2.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 6 DO
                                   BEGIN
                                        STGR_COLUNA_22_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_22_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_COLUNA_22_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES1];
                                        STGR_COLUNA_22_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES2];
                                        STGR_COLUNA_22_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES3];
                                        STGR_COLUNA_22_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES4];
                                        STGR_COLUNA_22_Q2.Cells [6,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES5];
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_COLUNA_22_Q2.RowCount := VI_LINHAS2;
                                             STGR_COLUNA_22_Q2.RowCount := VI_LINHAS2;
                                   END; // FOR VI_COMBINACOES5
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_22_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_22_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_22_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_22_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_22_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_22_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_22_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_22_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_22_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_22_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_22_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_22_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_22_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_22_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_22_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_22_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
           //    LA_COLUNA_22_100REP.Caption := INTtoSTR(VI_CONTAR);
           //    LA_COLUNA_22_100REP.Repaint;

                  // ******************
                  // **  COLUNA_3 **
                  // ******************
               VI_LINHAS2:= STGR_COLUNA_23_Q2.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                                   STGR_COLUNA_23_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_23_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_23_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES1];
                                   STGR_COLUNA_23_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES2];
                                   STGR_COLUNA_23_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES3];
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_23_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_23_Q2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_23_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_23_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_23_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_23_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_23_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_23_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_23_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_23_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_23_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_23_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_23_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_23_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_23_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_23_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_23_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_23_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
            //   LA_COLUNA_23_100REP.Caption := INTtoSTR(VI_CONTAR);
           //    LA_COLUNA_23_100REP.Repaint;
               // gerando os numeros
               // 15-7 A 12-21 A 40-15
               VI_LINHAS2 := STGR_TODOS_OS_16_Q2.RowCount;
               FOR VI_COMBINACOES1 := 1{2} TO 15 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_COLUNA_21_Q2.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 7{16} TO 12 {(STGR_LINHA_2_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_COLUNA_22_Q2.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 21 TO 40 {(STGR_LINHA_3_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_COLUNA_23_Q2.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 15 {(STGR_LINHA_4_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_COLUNA_24_Q2.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   STGR_TODOS_OS_16_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_21_Q2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_21_Q2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_21_Q2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_21_Q2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_22_Q2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_22_Q2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_22_Q2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_22_Q2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[9,VI_LINHAS2] := STGR_COLUNA_22_Q2.Cells[6,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[10,VI_LINHAS2] := STGR_COLUNA_23_Q2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[11,VI_LINHAS2] := STGR_COLUNA_23_Q2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[12,VI_LINHAS2] := STGR_COLUNA_23_Q2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[13,VI_LINHAS2] := STGR_COLUNA_24_Q2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[14,VI_LINHAS2] := STGR_COLUNA_24_Q2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[15,VI_LINHAS2] := STGR_COLUNA_24_Q2.Cells[4,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[16,VI_LINHAS2] := STGR_COLUNA_24_Q2.Cells[5,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_16_Q2.RowCount := VI_LINHAS2 ;



              // =================================================================
              // ||||==========================================================||||
              // ||||  TERCEIRA ABA       ||||
              // ||||==========================================================||||
              // ==================================================================

                  // ******************
                  // **  COLUNA_1 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 6 DO
                                   BEGIN
                                        STGR_COLUNA_31_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_31_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_COLUNA_31_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES1];
                                        STGR_COLUNA_31_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES2];
                                        STGR_COLUNA_31_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES3];
                                        STGR_COLUNA_31_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES4];
                                        STGR_COLUNA_31_Q2.Cells [6,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES5];                                                                                
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_COLUNA_31_Q2.RowCount := VI_LINHAS2;
                                             STGR_COLUNA_31_Q2.RowCount := VI_LINHAS2;
                                   END; // FOR VI_COMBINACOES5
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_31_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_31_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_31_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_31_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_31_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_31_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_31_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_31_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_31_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_31_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_31_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_31_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_31_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_31_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_31_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          //     LA_COLUNA_31_100REP.Caption := INTtoSTR(VI_CONTAR);
          //     LA_COLUNA_31_100REP.Repaint;

                  // ******************
                  // **  COLUNA_2 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   STGR_COLUNA_32_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_32_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_32_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES1];
                                   STGR_COLUNA_32_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES2];
                                   STGR_COLUNA_32_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES3];
                                   STGR_COLUNA_32_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES4];                                   
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_32_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_32_Q2.RowCount := VI_LINHAS2;
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_32_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_32_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_32_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_32_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_32_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_32_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_32_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_32_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_32_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_32_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_32_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_32_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_32_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_32_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_32_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_32_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_32_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_32_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_32_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_32_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_32_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_32_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_32_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_32_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_32_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_32_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_32_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          //     LA_COLUNA_32_100REP.Caption := INTtoSTR(VI_CONTAR);
          //     LA_COLUNA_32_100REP.Repaint;

                  // ******************
                  // **  COLUNA_3 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_COLUNA_33_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_COLUNA_33_Q2.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_COLUNA_33_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES1];
                              STGR_COLUNA_33_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES2];
                              STGR_COLUNA_33_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES3];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_COLUNA_33_Q2.RowCount := VI_LINHAS2;
                                   STGR_COLUNA_33_Q2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_33_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_33_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_33_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_33_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_33_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_33_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_33_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_33_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_33_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_33_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_33_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_33_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_33_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_33_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_33_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          //     LA_COLUNA_33_100REP.Caption := INTtoSTR(VI_CONTAR);
          //     LA_COLUNA_33_100REP.Repaint;

                  // ******************
                  // **  COLUNA_4 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   STGR_COLUNA_34_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_34_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_34_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES1];
                                   STGR_COLUNA_34_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES2];
                                   STGR_COLUNA_34_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES3];
                                   STGR_COLUNA_34_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES4];
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_34_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_34_Q2.RowCount := VI_LINHAS2;
                              END; // FOR VI_COMBINACOES4                                        
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_34_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_34_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_34_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_34_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_34_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_34_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_34_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_34_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_34_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_34_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_34_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_34_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_34_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_34_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_34_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_34_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_34_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_34_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_34_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_34_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_34_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_34_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_34_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_34_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_34_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_34_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_34_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          //     LA_COLUNA_34_100REP.Caption := INTtoSTR(VI_CONTAR);
          //     LA_COLUNA_34_100REP.Repaint;
          // gerando os numeros
               // 6-15-20-15
               VI_LINHAS2 := STGR_TODOS_OS_16_Q2.RowCount;
               FOR VI_COMBINACOES1 := 1{2} TO 6 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_COLUNA_31_Q2.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 15 {(STGR_LINHA_2_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_COLUNA_32_Q2.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 20 {(STGR_LINHA_3_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_COLUNA_33_Q2.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 15 {(STGR_LINHA_4_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_COLUNA_34_Q2.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   STGR_TODOS_OS_16_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_31_Q2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_31_Q2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_31_Q2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_31_Q2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_31_Q2.Cells[6,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_32_Q2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_32_Q2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_32_Q2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[9,VI_LINHAS2] := STGR_COLUNA_32_Q2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[10,VI_LINHAS2] := STGR_COLUNA_33_Q2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[11,VI_LINHAS2] := STGR_COLUNA_33_Q2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[12,VI_LINHAS2] := STGR_COLUNA_33_Q2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[13,VI_LINHAS2] := STGR_COLUNA_34_Q2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[14,VI_LINHAS2] := STGR_COLUNA_34_Q2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[15,VI_LINHAS2] := STGR_COLUNA_34_Q2.Cells[4,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[16,VI_LINHAS2] := STGR_COLUNA_34_Q2.Cells[5,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_16_Q2.RowCount := VI_LINHAS2 ;


                  // ******************
                  // **  COLUNA_1 **
                  // ******************
               VI_LINHAS2:= STGR_COLUNA_31_Q2.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 6 DO
                                   BEGIN
                                        STGR_COLUNA_31_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_31_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_COLUNA_31_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES1];
                                        STGR_COLUNA_31_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES2];
                                        STGR_COLUNA_31_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES3];
                                        STGR_COLUNA_31_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES4];
                                        STGR_COLUNA_31_Q2.Cells [6,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES5];
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_COLUNA_31_Q2.RowCount := VI_LINHAS2;
                                             STGR_COLUNA_31_Q2.RowCount := VI_LINHAS2;
                                   END; // FOR VI_COMBINACOES5
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_31_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_31_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_31_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_31_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_31_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_31_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_31_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_31_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_31_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_31_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_31_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_31_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_31_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_31_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_31_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_31_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          //     LA_COLUNA_31_100REP.Caption := INTtoSTR(VI_CONTAR);
          //     LA_COLUNA_31_100REP.Repaint;
                  // ******************
                  // **  COLUNA_3 **
                  // ******************
               VI_LINHAS2:= STGR_COLUNA_33_Q2.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_COLUNA_33_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_COLUNA_33_Q2.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_COLUNA_33_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES1];
                              STGR_COLUNA_33_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES2];
                              STGR_COLUNA_33_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES3];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_COLUNA_33_Q2.RowCount := VI_LINHAS2;
                                   STGR_COLUNA_33_Q2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_33_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_33_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_33_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_33_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_33_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_33_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_33_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_33_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_33_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_33_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_33_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_33_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_33_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_33_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_33_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_33_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          //     LA_COLUNA_33_100REP.Caption := INTtoSTR(VI_CONTAR);
          //     LA_COLUNA_33_100REP.Repaint;
          // gerando os numeros
               // 6 A 12-15-21 A 40-15
               VI_LINHAS2 := STGR_TODOS_OS_16_Q2.RowCount;
               FOR VI_COMBINACOES1 := 7{2} TO 12 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_COLUNA_31_Q2.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 15 {(STGR_LINHA_2_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_COLUNA_32_Q2.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 21 TO 40 {(STGR_LINHA_3_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_COLUNA_33_Q2.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 15 {(STGR_LINHA_4_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_COLUNA_34_Q2.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   STGR_TODOS_OS_16_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_31_Q2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_31_Q2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_31_Q2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_31_Q2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_31_Q2.Cells[6,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_32_Q2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_32_Q2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_32_Q2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[9,VI_LINHAS2] := STGR_COLUNA_32_Q2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[10,VI_LINHAS2] := STGR_COLUNA_33_Q2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[11,VI_LINHAS2] := STGR_COLUNA_33_Q2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[12,VI_LINHAS2] := STGR_COLUNA_33_Q2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[13,VI_LINHAS2] := STGR_COLUNA_34_Q2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[14,VI_LINHAS2] := STGR_COLUNA_34_Q2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[15,VI_LINHAS2] := STGR_COLUNA_34_Q2.Cells[4,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[16,VI_LINHAS2] := STGR_COLUNA_34_Q2.Cells[5,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_16_Q2.RowCount := VI_LINHAS2 ;




              // ===========================================================
              // ||||===================================================||||
              // ||||  QUARTA ABA    ||||
              // ||||===================================================||||
              // ===========================================================

                  // ******************
                  // **  COLUNA_1 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 6 DO
                                   BEGIN
                                        STGR_COLUNA_41_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_41_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_COLUNA_41_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES1];
                                        STGR_COLUNA_41_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES2];
                                        STGR_COLUNA_41_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES3];
                                        STGR_COLUNA_41_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES4];
                                        STGR_COLUNA_41_Q2.Cells [6,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES5];
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_COLUNA_41_Q2.RowCount := VI_LINHAS2;
                                             STGR_COLUNA_41_Q2.RowCount := VI_LINHAS2;
                                   END; // FOR VI_COMBINACOES5
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_41_Q2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_41_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_41_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_41_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_41_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_41_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_41_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_41_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_41_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_41_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_41_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_41_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_41_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_41_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_41_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
            //   LA_COLUNA_41_100REP.Caption := INTtoSTR(VI_CONTAR);
            //   LA_COLUNA_41_100REP.Repaint;

                  // ******************
                  // **  COLUNA_2 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_COLUNA_42_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_COLUNA_42_Q2.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_COLUNA_42_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES1];
                              STGR_COLUNA_42_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES2];
                              STGR_COLUNA_42_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES3];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_COLUNA_42_Q2.RowCount := VI_LINHAS2;
                                   STGR_COLUNA_42_Q2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_42_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_42_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_42_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_42_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_42_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_42_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_42_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_42_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_42_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_42_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_42_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_42_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_42_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_42_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_42_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
           //    LA_COLUNA_42_100REP.Caption := INTtoSTR(VI_CONTAR);
           //    LA_COLUNA_42_100REP.Repaint;

                  // ******************
                  // **  COLUNA_3 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   STGR_COLUNA_43_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_43_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_43_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES1];
                                   STGR_COLUNA_43_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES2];
                                   STGR_COLUNA_43_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES3];
                                   STGR_COLUNA_43_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES4];
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_43_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_43_Q2.RowCount := VI_LINHAS2;
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_43_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_43_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_43_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_43_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_43_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_43_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_43_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_43_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_43_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_43_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_43_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_43_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_43_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_43_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_43_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_43_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_43_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_43_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_43_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_43_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_43_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_43_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_43_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_43_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_43_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_43_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_43_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
            //   LA_COLUNA_43_100REP.Caption := INTtoSTR(VI_CONTAR);
           //    LA_COLUNA_43_100REP.Repaint;

                  // ******************
                  // **  COLUNA_4 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   STGR_COLUNA_44_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_44_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_44_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES1];
                                   STGR_COLUNA_44_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES2];
                                   STGR_COLUNA_44_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES3];
                                   STGR_COLUNA_44_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES4];                                   
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_44_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_44_Q2.RowCount := VI_LINHAS2;
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_44_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_44_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_44_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_44_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_44_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_44_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_44_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_44_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_44_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_44_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_44_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_44_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_44_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_44_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_44_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_44_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_44_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_44_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_44_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_44_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_44_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_44_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_44_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_44_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_44_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_44_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_44_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
              // LA_COLUNA_44_100REP.Caption := INTtoSTR(VI_CONTAR);
             //  LA_COLUNA_44_100REP.Repaint;
          // gerando os numeros
               // 6-20-15-15
               VI_LINHAS2 := STGR_TODOS_OS_16_Q2.RowCount;
               FOR VI_COMBINACOES1 := 1{2} TO 6 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_COLUNA_41_Q2.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 20 {(STGR_LINHA_2_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_COLUNA_42_Q2.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 15 {(STGR_LINHA_3_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_COLUNA_43_Q2.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 15 {(STGR_LINHA_4_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_COLUNA_44_Q2.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   STGR_TODOS_OS_16_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_41_Q2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_41_Q2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_41_Q2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_41_Q2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_41_Q2.Cells[6,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_42_Q2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_42_Q2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_42_Q2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[9,VI_LINHAS2] := STGR_COLUNA_43_Q2.Cells[2,VI_COMBINACOES3];								   
                                   STGR_TODOS_OS_16_Q2.Cells[10,VI_LINHAS2] := STGR_COLUNA_43_Q2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[11,VI_LINHAS2] := STGR_COLUNA_43_Q2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[12,VI_LINHAS2] := STGR_COLUNA_43_Q2.Cells[5,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[13,VI_LINHAS2] := STGR_COLUNA_44_Q2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[14,VI_LINHAS2] := STGR_COLUNA_44_Q2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[15,VI_LINHAS2] := STGR_COLUNA_44_Q2.Cells[4,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[16,VI_LINHAS2] := STGR_COLUNA_44_Q2.Cells[5,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_16_Q2.RowCount := VI_LINHAS2 ;
               

                  // ******************
                  // **  COLUNA_1 **
                  // ******************
               VI_LINHAS2:= STGR_COLUNA_41_Q2.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 6 DO
                                   BEGIN
                                        STGR_COLUNA_41_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_41_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_COLUNA_41_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES1];
                                        STGR_COLUNA_41_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES2];
                                        STGR_COLUNA_41_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES3];
                                        STGR_COLUNA_41_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES4];
                                        STGR_COLUNA_41_Q2.Cells [6,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES5];
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_COLUNA_41_Q2.RowCount := VI_LINHAS2;
                                             STGR_COLUNA_41_Q2.RowCount := VI_LINHAS2;
                                   END; // FOR VI_COMBINACOES5
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_41_Q2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_41_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_41_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_41_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_41_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_41_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_41_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_41_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_41_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_41_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_41_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_41_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_41_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_41_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_41_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_41_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
            //   LA_COLUNA_41_100REP.Caption := INTtoSTR(VI_CONTAR);
            //   LA_COLUNA_41_100REP.Repaint;

                  // ******************
                  // **  COLUNA_2 **
                  // ******************
               VI_LINHAS2:= STGR_COLUNA_42_Q2.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_COLUNA_42_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_COLUNA_42_Q2.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_COLUNA_42_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES1];
                              STGR_COLUNA_42_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES2];
                              STGR_COLUNA_42_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES3];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_COLUNA_42_Q2.RowCount := VI_LINHAS2;
                                   STGR_COLUNA_42_Q2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_42_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_42_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_42_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_42_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_42_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_42_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_42_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_42_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_42_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_42_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_42_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_42_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_42_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_42_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_42_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_42_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          // gerando os numeros
               // 7 A 12 -21 A 40-15-15
               VI_LINHAS2 := STGR_TODOS_OS_16_Q2.RowCount;
               FOR VI_COMBINACOES1 := 7{2} TO 12 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_COLUNA_41_Q2.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 21{16} TO 40 {(STGR_LINHA_2_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_COLUNA_42_Q2.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 15 {(STGR_LINHA_3_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_COLUNA_43_Q2.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 15 {(STGR_LINHA_4_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_COLUNA_44_Q2.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   STGR_TODOS_OS_16_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_41_Q2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_41_Q2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_41_Q2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_41_Q2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_41_Q2.Cells[6,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_42_Q2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_42_Q2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_42_Q2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[9,VI_LINHAS2] := STGR_COLUNA_43_Q2.Cells[2,VI_COMBINACOES3];								   
                                   STGR_TODOS_OS_16_Q2.Cells[10,VI_LINHAS2] := STGR_COLUNA_43_Q2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[11,VI_LINHAS2] := STGR_COLUNA_43_Q2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[12,VI_LINHAS2] := STGR_COLUNA_43_Q2.Cells[5,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[13,VI_LINHAS2] := STGR_COLUNA_44_Q2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[14,VI_LINHAS2] := STGR_COLUNA_44_Q2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[15,VI_LINHAS2] := STGR_COLUNA_44_Q2.Cells[4,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[16,VI_LINHAS2] := STGR_COLUNA_44_Q2.Cells[5,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_16_Q2.RowCount := VI_LINHAS2 ;
           //    LA_COLUNA_42_100REP.Caption := INTtoSTR(VI_CONTAR);
           //    LA_COLUNA_42_100REP.Repaint;

              // =================================================================
              // ||||==========================================================||||
              // ||||  QUINTA ABA       ||||
              // ||||==========================================================||||
              // ==================================================================

                  // ******************
                  // **  COLUNA_1 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   STGR_COLUNA_51_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_51_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_51_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES1];
                                   STGR_COLUNA_51_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES2];
                                   STGR_COLUNA_51_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES3];
                                   STGR_COLUNA_51_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES4];
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_51_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_51_Q2.RowCount := VI_LINHAS2;
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_51_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_51_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_51_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_51_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_51_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_51_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_51_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_51_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_51_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_51_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_51_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_51_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_51_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_51_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_51_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_51_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_51_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_51_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_51_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_51_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_51_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_51_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_51_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_51_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_51_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_51_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_51_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          //     LA_COLUNA_51_100REP.Caption := INTtoSTR(VI_CONTAR);
          //     LA_COLUNA_51_100REP.Repaint;

                  // ******************
                  // **  COLUNA_2 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   STGR_COLUNA_52_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_52_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_52_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES1];
                                   STGR_COLUNA_52_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES2];
                                   STGR_COLUNA_52_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES3];
                                   STGR_COLUNA_52_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES4];
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_52_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_52_Q2.RowCount := VI_LINHAS2;
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_52_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_52_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_52_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_52_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_52_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_52_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_52_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_52_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_52_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_52_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_52_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_52_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_52_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_52_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_52_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_52_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_52_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_52_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_52_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_52_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_52_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_52_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_52_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_52_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_52_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_52_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_52_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          //     LA_COLUNA_52_100REP.Caption := INTtoSTR(VI_CONTAR);
          //     LA_COLUNA_52_100REP.Repaint;

                  // ******************
                  // **  COLUNA_3 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 6 DO
                                   BEGIN
                                        STGR_COLUNA_53_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_53_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_COLUNA_53_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES1];
                                        STGR_COLUNA_53_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES2];
                                        STGR_COLUNA_53_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES3];
                                        STGR_COLUNA_53_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES4];
                                        STGR_COLUNA_53_Q2.Cells [6,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES5];
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_COLUNA_53_Q2.RowCount := VI_LINHAS2;
                                             STGR_COLUNA_53_Q2.RowCount := VI_LINHAS2;
                                   END; // FOR VI_COMBINACOES5
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_53_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_53_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_53_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_53_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_53_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_53_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_53_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_53_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_53_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_53_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_53_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_53_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_53_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_53_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_53_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          //     LA_COLUNA_53_100REP.Caption := INTtoSTR(VI_CONTAR);
          //     LA_COLUNA_53_100REP.Repaint;

                  // ******************
                  // **  COLUNA_4 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_COLUNA_54_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_COLUNA_54_Q2.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_COLUNA_54_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES1];
                              STGR_COLUNA_54_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES2];
                              STGR_COLUNA_54_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES3];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_COLUNA_54_Q2.RowCount := VI_LINHAS2;
                                   STGR_COLUNA_54_Q2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_54_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_54_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_54_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_54_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_54_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_54_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_54_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_54_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_54_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_54_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_54_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_54_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_54_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_54_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_54_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          //     LA_COLUNA_54_100REP.Caption := INTtoSTR(VI_CONTAR);
          //     LA_COLUNA_54_100REP.Repaint;

          // gerando os numeros
               // 15-15-6-20
               VI_LINHAS2 := STGR_TODOS_OS_16_Q2.RowCount;
               FOR VI_COMBINACOES1 := 1{2} TO 15 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_COLUNA_51_Q2.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 15 {(STGR_LINHA_2_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_COLUNA_52_Q2.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 6 {(STGR_LINHA_3_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_COLUNA_53_Q2.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 20 {(STGR_LINHA_4_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_COLUNA_54_Q2.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   STGR_TODOS_OS_16_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_51_Q2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_51_Q2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_51_Q2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_51_Q2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_52_Q2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_52_Q2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_52_Q2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_52_Q2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[9,VI_LINHAS2] := STGR_COLUNA_53_Q2.Cells[2,VI_COMBINACOES3];								   
                                   STGR_TODOS_OS_16_Q2.Cells[10,VI_LINHAS2] := STGR_COLUNA_53_Q2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[11,VI_LINHAS2] := STGR_COLUNA_53_Q2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[12,VI_LINHAS2] := STGR_COLUNA_53_Q2.Cells[5,VI_COMBINACOES3];								   
                                   STGR_TODOS_OS_16_Q2.Cells[13,VI_LINHAS2] := STGR_COLUNA_53_Q2.Cells[6,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[14,VI_LINHAS2] := STGR_COLUNA_54_Q2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[15,VI_LINHAS2] := STGR_COLUNA_54_Q2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[16,VI_LINHAS2] := STGR_COLUNA_54_Q2.Cells[4,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_16_Q2.RowCount := VI_LINHAS2 ;


                  // ******************
                  // **  COLUNA_3 **
                  // ******************
               VI_LINHAS2:= STGR_COLUNA_53_Q2.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 6 DO
                                   BEGIN
                                        STGR_COLUNA_53_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_53_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_COLUNA_53_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES1];
                                        STGR_COLUNA_53_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES2];
                                        STGR_COLUNA_53_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES3];
                                        STGR_COLUNA_53_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES4];
                                        STGR_COLUNA_53_Q2.Cells [6,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES5];
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_COLUNA_53_Q2.RowCount := VI_LINHAS2;
                                             STGR_COLUNA_53_Q2.RowCount := VI_LINHAS2;
                                   END; // FOR VI_COMBINACOES5
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_53_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_53_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_53_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_53_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_53_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_53_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_53_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_53_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_53_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_53_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_53_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_53_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_53_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_53_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_53_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_53_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          //     LA_COLUNA_53_100REP.Caption := INTtoSTR(VI_CONTAR);
          //     LA_COLUNA_53_100REP.Repaint;

                  // ******************
                  // **  COLUNA_4 **
                  // ******************
               VI_LINHAS2:= STGR_COLUNA_54_Q2.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_COLUNA_54_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_COLUNA_54_Q2.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_COLUNA_54_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES1];
                              STGR_COLUNA_54_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES2];
                              STGR_COLUNA_54_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES3];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_COLUNA_54_Q2.RowCount := VI_LINHAS2;
                                   STGR_COLUNA_54_Q2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_54_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_54_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_54_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_54_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_54_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_54_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_54_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_54_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_54_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_54_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_54_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_54_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_54_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_54_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_54_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_54_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
          //     LA_COLUNA_54_100REP.Caption := INTtoSTR(VI_CONTAR);
          //     LA_COLUNA_54_100REP.Repaint;
          // gerando os numeros
               // 15-15-7 A 12 -21 A 40
               VI_LINHAS2 := STGR_TODOS_OS_16_Q2.RowCount;
               FOR VI_COMBINACOES1 := 1{2} TO 15 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_COLUNA_51_Q2.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 15 {(STGR_LINHA_2_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_COLUNA_52_Q2.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 7 TO 12 {(STGR_LINHA_3_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_COLUNA_53_Q2.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 21{22} TO 40 {(STGR_LINHA_4_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_COLUNA_54_Q2.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   STGR_TODOS_OS_16_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_51_Q2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_51_Q2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_51_Q2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_51_Q2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_52_Q2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_52_Q2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_52_Q2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_52_Q2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[9,VI_LINHAS2] := STGR_COLUNA_53_Q2.Cells[2,VI_COMBINACOES3];								   
                                   STGR_TODOS_OS_16_Q2.Cells[10,VI_LINHAS2] := STGR_COLUNA_53_Q2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[11,VI_LINHAS2] := STGR_COLUNA_53_Q2.Cells[4,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[12,VI_LINHAS2] := STGR_COLUNA_53_Q2.Cells[5,VI_COMBINACOES3];								   
                                   STGR_TODOS_OS_16_Q2.Cells[13,VI_LINHAS2] := STGR_COLUNA_53_Q2.Cells[6,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[14,VI_LINHAS2] := STGR_COLUNA_54_Q2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[15,VI_LINHAS2] := STGR_COLUNA_54_Q2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[16,VI_LINHAS2] := STGR_COLUNA_54_Q2.Cells[4,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_16_Q2.RowCount := VI_LINHAS2 ;



              // ===========================================================
              // ||||===================================================||||
              // ||||  SEXTA ABA    ||||
              // ||||===================================================||||
              // ===========================================================

                  // ******************
                  // **  COLUNA_1 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   STGR_COLUNA_61_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_61_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_61_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES1];
                                   STGR_COLUNA_61_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES2];
                                   STGR_COLUNA_61_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES3];
                                   STGR_COLUNA_61_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[1,VI_COMBINACOES4];
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_61_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_61_Q2.RowCount := VI_LINHAS2;
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_61_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_61_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_61_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_61_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_61_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_61_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_61_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_61_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_61_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_61_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_61_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_61_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_61_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_61_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_61_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_61_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_61_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_61_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_61_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_61_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_61_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_61_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_61_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_61_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_61_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_61_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_61_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
            //   LA_COLUNA_61_100REP.Caption := INTtoSTR(VI_CONTAR);
            //   LA_COLUNA_61_100REP.Repaint;

                  // ******************
                  // **  COLUNA_2 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 6 DO
                                   BEGIN
                                        STGR_COLUNA_62_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_62_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_COLUNA_62_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES1];
                                        STGR_COLUNA_62_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES2];
                                        STGR_COLUNA_62_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES3];
                                        STGR_COLUNA_62_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES4];
                                        STGR_COLUNA_62_Q2.Cells [6,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES5];
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_COLUNA_62_Q2.RowCount := VI_LINHAS2;
                                             STGR_COLUNA_62_Q2.RowCount := VI_LINHAS2;
                                   END; // FOR VI_COMBINACOES5
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_62_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_62_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_62_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_62_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_62_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_62_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_62_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_62_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_62_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_62_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_62_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_62_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_62_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_62_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_62_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
           //    LA_COLUNA_62_100REP.Caption := INTtoSTR(VI_CONTAR);
           //    LA_COLUNA_62_100REP.Repaint;

                  // ******************
                  // **  COLUNA_3 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   STGR_COLUNA_63_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_COLUNA_63_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_COLUNA_63_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES1];
                                   STGR_COLUNA_63_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES2];
                                   STGR_COLUNA_63_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES3];
                                   STGR_COLUNA_63_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[3,VI_COMBINACOES4];                                   
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_COLUNA_63_Q2.RowCount := VI_LINHAS2;
                                        STGR_COLUNA_63_Q2.RowCount := VI_LINHAS2;
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_63_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_63_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_63_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_63_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_63_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_63_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_63_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_63_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_63_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_63_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_63_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_63_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_63_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_63_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_63_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_63_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_63_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_63_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_63_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_63_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_63_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_63_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_63_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_63_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_63_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_63_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_63_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
            //   LA_COLUNA_63_100REP.Caption := INTtoSTR(VI_CONTAR);
           //    LA_COLUNA_63_100REP.Repaint;

                  // ******************
                  // **  COLUNA_4 **
                  // ******************
               VI_LINHAS2:= 1;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_COLUNA_64_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_COLUNA_64_Q2.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_COLUNA_64_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES1];
                              STGR_COLUNA_64_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES2];
                              STGR_COLUNA_64_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES3];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_COLUNA_64_Q2.RowCount := VI_LINHAS2;
                                   STGR_COLUNA_64_Q2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_64_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_64_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_64_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_64_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_64_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_64_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_64_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_64_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_64_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_64_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_64_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_64_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_64_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_64_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_64_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
              // LA_COLUNA_64_100REP.Caption := INTtoSTR(VI_CONTAR);
             //  LA_COLUNA_64_100REP.Repaint;
          // gerando os numeros
               // 15-6-15-20
               VI_LINHAS2 := STGR_TODOS_OS_16_Q2.RowCount;
               FOR VI_COMBINACOES1 := 1{2} TO 15 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_COLUNA_61_Q2.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 1{16} TO 6 {(STGR_LINHA_2_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_COLUNA_62_Q2.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 15 {(STGR_LINHA_3_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_COLUNA_63_Q2.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 1{22} TO 20 {(STGR_LINHA_4_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_COLUNA_64_Q2.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   STGR_TODOS_OS_16_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_61_Q2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_61_Q2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_61_Q2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_61_Q2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_62_Q2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_62_Q2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_62_Q2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_62_Q2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[9,VI_LINHAS2] := STGR_COLUNA_62_Q2.Cells[6,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[10,VI_LINHAS2] := STGR_COLUNA_63_Q2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[11,VI_LINHAS2] := STGR_COLUNA_63_Q2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[12,VI_LINHAS2] := STGR_COLUNA_63_Q2.Cells[4,VI_COMBINACOES3];								   
                                   STGR_TODOS_OS_16_Q2.Cells[13,VI_LINHAS2] := STGR_COLUNA_63_Q2.Cells[5,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[14,VI_LINHAS2] := STGR_COLUNA_64_Q2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[15,VI_LINHAS2] := STGR_COLUNA_64_Q2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[16,VI_LINHAS2] := STGR_COLUNA_64_Q2.Cells[4,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_16_Q2.RowCount := VI_LINHAS2 ;


                  // ******************
                  // **  COLUNA_2 **
                  // ******************
               VI_LINHAS2:= STGR_COLUNA_62_Q2.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 6 DO
                              BEGIN
                                   FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 6 DO
                                   BEGIN
                                        STGR_COLUNA_62_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_COLUNA_62_Q2.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_COLUNA_62_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES1];
                                        STGR_COLUNA_62_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES2];
                                        STGR_COLUNA_62_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES3];
                                        STGR_COLUNA_62_Q2.Cells [5,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES4];
                                        STGR_COLUNA_62_Q2.Cells [6,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[4,VI_COMBINACOES5];
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_COLUNA_62_Q2.RowCount := VI_LINHAS2;
                                             STGR_COLUNA_62_Q2.RowCount := VI_LINHAS2;
                                   END; // FOR VI_COMBINACOES5
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_62_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_62_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_62_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_62_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_62_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_62_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_62_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_62_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_62_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_62_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_62_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_62_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_62_Q2.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_62_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_62_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_62_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
           //    LA_COLUNA_62_100REP.Caption := INTtoSTR(VI_CONTAR);
           //    LA_COLUNA_62_100REP.Repaint;

                  // ******************
                  // **  COLUNA_4 **
                  // ******************
               VI_LINHAS2:= STGR_COLUNA_64_Q2.RowCount;
               FOR VI_COMBINACOES1:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 6 DO
                         BEGIN
                              STGR_COLUNA_64_Q2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_COLUNA_64_Q2.Cells [1,VI_LINHAS2]:= 'V';
                              STGR_COLUNA_64_Q2.Cells [2,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES1];
                              STGR_COLUNA_64_Q2.Cells [3,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES2];
                              STGR_COLUNA_64_Q2.Cells [4,VI_LINHAS2]:= STGR_BASE_SUBFILTRO_1.Cells[2,VI_COMBINACOES3];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_COLUNA_64_Q2.RowCount := VI_LINHAS2;
                                   STGR_COLUNA_64_Q2.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
               STGR_COLUNA_64_Q2.Repaint;
               STGR_LINHA_1_C2.Repaint;
                              // -------------------------------
                              // --  Removendo os EXCLUIDOS DA COLUNA  --
                              // -------------------------------
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_64_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_64_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_01.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_64_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_64_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_64_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_02.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_64_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_64_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_64_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_FIXOS_03.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_64_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
                    FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_64_Q2.RowCount-1) DO
                    BEGIN
                         IF  (STRtoINT(STGR_COLUNA_64_Q2.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text)) OR
                             (STRtoINT(STGR_COLUNA_64_Q2.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_1.Text))
                             THEN
                         BEGIN
                             STGR_COLUNA_64_Q2.Cells [1,VI_COMBINACOES1] := 'F';
                         END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
                    END; // FOR VI_COMBINACOES1
               VI_CONTAR := 0;
               FOR VI_COMBINACOES1:= 1 TO (STGR_COLUNA_64_Q2.RowCount-1) DO
               BEGIN
                    IF (STGR_COLUNA_64_Q2.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
               END;
              // LA_COLUNA_64_100REP.Caption := INTtoSTR(VI_CONTAR);
             //  LA_COLUNA_64_100REP.Repaint;
          // gerando os numeros
               // 15-7 A 12-15-21 A 40
               VI_LINHAS2 := STGR_TODOS_OS_16_Q2.RowCount;
               FOR VI_COMBINACOES1 := 1{2} TO 15 {TRUNC((STGR_LINHA_1_C1.RowCount-1)/1)} DO
               BEGIN
                    IF (STGR_COLUNA_61_Q2.Cells[1,VI_COMBINACOES1] = 'F') then
                         continue;
                    FOR VI_COMBINACOES2 := 7{16} TO 12 {(STGR_LINHA_2_C1.RowCount-1)} DO
                    BEGIN
                         IF (STGR_COLUNA_62_Q2.Cells[1,VI_COMBINACOES2] = 'F') then
                              continue;
                         FOR VI_COMBINACOES3 := 1 TO 15 {(STGR_LINHA_3_C1.RowCount-1)} DO
                         BEGIN
                              IF (STGR_COLUNA_63_Q2.Cells[1,VI_COMBINACOES3] = 'F') then
                                   continue;
                              FOR VI_COMBINACOES4 := 21{22} TO 40 {(STGR_LINHA_4_C1.RowCount-1)} DO
                              BEGIN
                                   IF (STGR_COLUNA_64_Q2.Cells[1,VI_COMBINACOES4] = 'F') then
                                        continue;
                                   STGR_TODOS_OS_16_Q2.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   STGR_TODOS_OS_16_Q2.Cells[1,VI_LINHAS2] := STGR_COLUNA_61_Q2.Cells[2,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[2,VI_LINHAS2] := STGR_COLUNA_61_Q2.Cells[3,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[3,VI_LINHAS2] := STGR_COLUNA_61_Q2.Cells[4,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[4,VI_LINHAS2] := STGR_COLUNA_61_Q2.Cells[5,VI_COMBINACOES1];
                                   STGR_TODOS_OS_16_Q2.Cells[5,VI_LINHAS2] := STGR_COLUNA_62_Q2.Cells[2,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[6,VI_LINHAS2] := STGR_COLUNA_62_Q2.Cells[3,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[7,VI_LINHAS2] := STGR_COLUNA_62_Q2.Cells[4,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[8,VI_LINHAS2] := STGR_COLUNA_62_Q2.Cells[5,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[9,VI_LINHAS2] := STGR_COLUNA_62_Q2.Cells[6,VI_COMBINACOES2];
                                   STGR_TODOS_OS_16_Q2.Cells[10,VI_LINHAS2] := STGR_COLUNA_63_Q2.Cells[2,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[11,VI_LINHAS2] := STGR_COLUNA_63_Q2.Cells[3,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[12,VI_LINHAS2] := STGR_COLUNA_63_Q2.Cells[4,VI_COMBINACOES3];								   
                                   STGR_TODOS_OS_16_Q2.Cells[13,VI_LINHAS2] := STGR_COLUNA_63_Q2.Cells[5,VI_COMBINACOES3];
                                   STGR_TODOS_OS_16_Q2.Cells[14,VI_LINHAS2] := STGR_COLUNA_64_Q2.Cells[2,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[15,VI_LINHAS2] := STGR_COLUNA_64_Q2.Cells[3,VI_COMBINACOES4];
                                   STGR_TODOS_OS_16_Q2.Cells[16,VI_LINHAS2] := STGR_COLUNA_64_Q2.Cells[4,VI_COMBINACOES4];
                                   VI_LINHAS2 := VI_LINHAS2 +1;
                              end;//FOR  VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    end;//FOR VI_COMBINACOES2
               END; // FOR sI_COMBINACOES1
               STGR_TODOS_OS_16_Q2.RowCount := VI_LINHAS2 ;           
               
     END; // IF (CB_NUMEROS_QUADRO1.ItemIndex

            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0008EXC2_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0008EXC2_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_0008EXC2_DEFINICAO; ')  ;
            SELF.IBQ_COMBINACOES.Open;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0008EXC2_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            PA_SOMA7_1.Repaint;
            SELF.Repaint;
     showmessage('OK');
end;



procedure T_F_FILTRO_08_NS1_16_v2.BT_NOVA_SIMULACAOClick(Sender: TObject);
begin
     PA_PREENCHIMENTO.Enabled := TRUE;
     PA_PREENCHIMENTO.Top := 35;
     PA_PREENCHIMENTO.Repaint;
     PA_GABARITO.Visible := TRUE;
     PA_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Enabled := TRUE;
  //   RB_RESULTADOS.SetFocus;
  //   RB_RES_GABARITOS.SetFocus;
     SCBX_GABARITO.Enabled := TRUE;
     STGR_COMB10.Visible := TRUE;
     STGR_COMB10.Enabled := TRUE;
     STGR_COMB15.Visible := TRUE;
     STGR_COMB15.Enabled := TRUE;
     BBT_PREPARAR_MENU.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := false;
     BBT_GERAR_MENU_Q1.Enabled := false;
     BBT_GERAR_MENU_Q2.Enabled := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     SCBX_GABARITO.Top:=247;
     SCBX_GABARITO.Repaint;
end;



procedure T_F_FILTRO_08_NS1_16_v2.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0008EXC2_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;



PROCEDURE T_F_FILTRO_08_NS1_16_v2.PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3, VI_CONTAR4 : INTEGER;
BEGIN
   FOR VI_CONTAR := 1 TO 6 DO
    BEGIN
        IF (STRtoINT (STGR_BASE_L1.Cells [VI_CONTAR,0]) = 0) THEN
        BEGIN
            STGR_BASE_L1.Cells [VI_CONTAR,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
            EXIT;
        END ELSE
        IF (VI_CONTAR = 6) THEN
        BEGIN
            FOR VI_CONTAR2 :=1 TO 6 DO
            BEGIN
                IF (STRtoINT (STGR_BASE_L2.Cells [VI_CONTAR2,0]) = 0) THEN
                BEGIN
                    STGR_BASE_L2.Cells [VI_CONTAR2,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                    EXIT;
                END ELSE
                IF (VI_CONTAR2 = 6) THEN
                BEGIN
                    FOR VI_CONTAR3 :=1 TO 6 DO
                    BEGIN
                        IF (STRtoINT (STGR_BASE_L3.Cells [VI_CONTAR3,0]) = 0) THEN
                        BEGIN
                            STGR_BASE_L3.Cells [VI_CONTAR3,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                            EXIT  ;
                        END ELSE
                        IF (VI_CONTAR3 = 6) THEN
                        BEGIN
                            FOR VI_CONTAR4 :=1 TO 6 DO
                            BEGIN
                                IF (STRtoINT (STGR_BASE_L4.Cells [VI_CONTAR4,0]) = 0) THEN
                                BEGIN
                                    STGR_BASE_L4.Cells [VI_CONTAR4,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                    EXIT ;
                                END ELSE
                                IF (VI_CONTAR4 = 6) THEN
                                begin
                                   ED_fixoS_1.Text := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);; // IF VI_CONTAR4
                                END; // IF
                              // ----------------------=----
                              //  ACERTANDO O PREENCHIMENTO
                              // ----------------------=----
                               STGR_BASE_L3V.Cells[1,2] := STGR_BASE_L4.Cells [1,0];
                               STGR_BASE_L3V.Cells[2,2] := STGR_BASE_L4.Cells [2,0];
                               STGR_BASE_L2V.Cells[1,3] := STGR_BASE_L4.Cells [3,0];
                               STGR_BASE_L2V.Cells[2,3] := STGR_BASE_L4.Cells [4,0];
                               STGR_BASE_L3V.Cells[1,3] := STGR_BASE_L4.Cells [5,0];
                               STGR_BASE_L3V.Cells[2,3] := STGR_BASE_L4.Cells [6,0];
                            END; // FOR VI_CONTAR4
                        END; // IF (VI_CONTAR3
                         // ----------------------=----
                         //  ACERTANDO O PREENCHIMENTO
                         // ----------------------=----
                          STGR_BASE_L2V.Cells[1,1] := STGR_BASE_L3.Cells [1,0];
                          STGR_BASE_L2V.Cells[2,1] := STGR_BASE_L3.Cells [2,0];
                          STGR_BASE_L3V.Cells[1,1] := STGR_BASE_L3.Cells [3,0];
                          STGR_BASE_L3V.Cells[2,1] := STGR_BASE_L3.Cells [4,0];
                          STGR_BASE_L2V.Cells[1,2] := STGR_BASE_L3.Cells [5,0];
                          STGR_BASE_L2V.Cells[2,2] := STGR_BASE_L3.Cells [6,0];
                    END;// FOR VI_CONTAR3
                END; // IF (STRtoINT
                // ----------------------=----
                //  ACERTANDO O PREENCHIMENTO
                 // ----------------------=----
                STGR_BASE_L4V.Cells[1,2] := STGR_BASE_L2.Cells [1,0];
                STGR_BASE_L4V.Cells[2,2] := STGR_BASE_L2.Cells [2,0];
                STGR_BASE_L1V.Cells[1,3] := STGR_BASE_L2.Cells [3,0];
                STGR_BASE_L1V.Cells[2,3] := STGR_BASE_L2.Cells [4,0];
                STGR_BASE_L4V.Cells[1,3] := STGR_BASE_L2.Cells [5,0];
                STGR_BASE_L4V.Cells[2,3] := STGR_BASE_L2.Cells [6,0];
            END; // FOR VI_CONTAR 2
        END;// IF (STRtoINT
          // ----------------------=----
          //  ACERTANDO O PREENCHIMENTO
          // ----------------------=----
          STGR_BASE_L1V.Cells[1,1] := STGR_BASE_L1.Cells [1,0];
          STGR_BASE_L1V.Cells[2,1] := STGR_BASE_L1.Cells [2,0];
          STGR_BASE_L4V.Cells[1,1] := STGR_BASE_L1.Cells [3,0];
          STGR_BASE_L4V.Cells[2,1] := STGR_BASE_L1.Cells [4,0];
          STGR_BASE_L1V.Cells[1,2] := STGR_BASE_L1.Cells [5,0];
          STGR_BASE_L1V.Cells[2,2] := STGR_BASE_L1.Cells [6,0];
    END; // VI_CONTAR1

END;



PROCEDURE T_F_FILTRO_08_NS1_16_v2.PR_BOTOES_MODELO_1234 (VI_NUMERO: INTEGER);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3, VI_CONTAR4, VI_CONTAR5, VI_CONTAR6 : INTEGER;
BEGIN
     FOR VI_CONTAR := 1 TO 4 DO
     BEGIN
        IF (STRtoINT (STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,1]) = 0) THEN
        BEGIN
            STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR,1] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
            EXIT;
        END ELSE
        IF (VI_CONTAR = 4) THEN
        BEGIN
                 STGR_BASE_SUBFILTRO_1.Repaint;
                 FOR VI_CONTAR2 :=1 TO 4 DO
                 BEGIN
                     IF (STRtoINT (STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR2,2]) = 0) THEN
                     BEGIN
                         STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR2,2]:= RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                         EXIT;
                     END ELSE
                     IF (VI_CONTAR2 = 4) THEN
                     BEGIN
                              STGR_BASE_SUBFILTRO_1.Repaint;
                              FOR VI_CONTAR3 :=1 TO 4 DO
                              BEGIN
                                  IF (STRtoINT (STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR3,3]) = 0) THEN
                                  BEGIN
                                      STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR3,3] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                      EXIT  ;
                                  END ELSE
                                  IF (VI_CONTAR3 = 4) THEN
                                  BEGIN
                                     STGR_BASE_SUBFILTRO_1.Repaint;
                                           FOR VI_CONTAR4 :=1 TO 4 DO
                                           BEGIN
                                               IF (STRtoINT (STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR4,4]) = 0) THEN
                                               BEGIN
                                                   STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR4,4] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                                   EXIT ;
                                               END ELSE
                                               IF (VI_CONTAR4 = 4) THEN
                                               BEGIN
                                                               FOR VI_CONTAR5 :=1 TO 4 DO
                                                               BEGIN
                                                                   IF (STRtoINT (STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR5,5]) = 0) THEN
                                                                   BEGIN
                                                                       STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR5,5] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                                                       EXIT ;
                                                                   END ELSE
                                                                   IF (VI_CONTAR5 = 4) THEN
                                                                   BEGIN
                                                                         FOR VI_CONTAR6 :=1 TO 4 DO
                                                                         BEGIN
                                                                             IF (STRtoINT (STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR6,6]) = 0) THEN
                                                                             BEGIN
                                                                                 STGR_BASE_SUBFILTRO_1.Cells [VI_CONTAR6,6] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                                                                 EXIT ;
                                                                             END ELSE
                                                                             IF (VI_CONTAR6 = 4) THEN
                                                                             begin
                                                                                STGR_BASE_SUBFILTRO_1.Repaint;
                                                                                ED_Fora_SUBFILTRO_1.Text := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);; // IF VI_CONTAR4
                                                                             END; // IF (VI_CONTAR6
                                                                         END; // FOR VI_CONTAR6

                                                                   END; // IF (VI_CONTAR5
                                                               END; // FOR VI_CONTAR5

                                            END; // IF (VI_CONTAR4
                                       END; // FOR VI_CONTAR4

                               END; // IF  (VI_CONTAR3
                           END;// FOR VI_CONTAR3

                  END;// IF  (VI_CONTAR2
              END; // FOR VI_CONTAR 2

          END;// IF  (VI_CONTAR
     END; // VI_CONTAR
END;




procedure T_F_FILTRO_08_NS1_16_v2.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(1);
    BBT_701.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(2);
    BBT_702.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(3);
    BBT_703.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(4);
    BBT_704.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(5);
    BBT_705.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(6);
    BBT_706.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(7);
    BBT_707.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(8);
    BBT_708.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(10);
    BBT_710.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(9);
    BBT_709.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(11);
    BBT_711.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(12);
    BBT_712.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(13);
    BBT_713.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(14);
    BBT_714.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(15);
    BBT_715.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(16);
    BBT_716.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(17);
    BBT_717.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(18);
    BBT_718.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(19);
    BBT_719.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(20);
    BBT_720.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(21);
    BBT_721.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(22);
    BBT_722.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(23);
    BBT_723.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(24);
    BBT_724.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(25);
    BBT_725.Enabled := FALSE;
end;







procedure T_F_FILTRO_08_NS1_16_v2.BBT_GERAR_MENUClick(Sender: TObject);
begin
    {IF (STRtoINT(STGR_BASE_L4.Cells [5,0] ) =0) THEN
    BEGIN
       SHOWMESSAGE ('TERMINE O PREENCHIMENTO.');
       ED_FIXOS_01.SetFocus;
       EXIT;
   END; // IF  }
     //LA_QTD_Q1Q2.Visible := TRUE ;
     //CB_QTD_Q1Q2.Visible := TRUE ;
     CB_QTD_Q1Q2.ItemIndex := 1;
     CB_QTD_Q1Q2.Enabled := TRUE ;
     //LA_DUPLAS_LINHAS_Q2.Visible := TRUE ;
     //CB_DUPLAS_LINHAS_Q2.Visible := TRUE ;
     CB_DUPLAS_LINHAS_Q2.ItemIndex := 0;
     CB_DUPLAS_LINHAS_Q2.Enabled := TRUE ;
     BBT_GERAR.Visible := TRUE ;
     BBT_GERAR2.Visible := false ;
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Top  := 300;
     PA_GERAR.Left := 460;
end;



procedure T_F_FILTRO_08_NS1_16_v2.BBT_GERAR_MENU_Q1Click(Sender: TObject);
begin
     //LA_QTD_Q1Q2.Visible := false ;
     //CB_QTD_Q1Q2.Visible := false ;
     CB_QTD_Q1Q2.ItemIndex := 1;
     CB_QTD_Q1Q2.Enabled := false ;
     //LA_DUPLAS_LINHAS_Q2.Visible := false ;
     //CB_DUPLAS_LINHAS_Q2.Visible := false ;
     CB_DUPLAS_LINHAS_Q2.ItemIndex := 0;
     CB_DUPLAS_LINHAS_Q2.Enabled := false ;
     BBT_GERAR.Visible := TRUE ;
     BBT_GERAR2.Visible := false ;
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Top  := 300;
     PA_GERAR.Left := 460;
end;


procedure T_F_FILTRO_08_NS1_16_v2.BBT_GERAR_MENU_Q2Click(Sender: TObject);
begin
     //LA_QTD_Q1Q2.Visible := false ;
     //CB_QTD_Q1Q2.Visible := false ;
     CB_QTD_Q1Q2.ItemIndex := 1;
     CB_QTD_Q1Q2.Enabled := false ;
     //LA_DUPLAS_LINHAS_Q2.Visible := false ;
     //CB_DUPLAS_LINHAS_Q2.Visible := false ;
     CB_DUPLAS_LINHAS_Q2.ItemIndex := 0;
     CB_DUPLAS_LINHAS_Q2.Enabled := false ;
     BBT_GERAR.Visible := false ;
     BBT_GERAR2.Visible := TRUE ;
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Top  := 300;
     PA_GERAR.Left := 460;
end ;






procedure T_F_FILTRO_08_NS1_16_v2.BBT_GERARClick(Sender: TObject);
var
     VI_LINHAS1, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR_CELULAS, VI_CONTASEL1, VI_CONTASEL2, VI_CONTAR_COMB1: integer;
     VsI_COMBINACOES3, VsI_COMBINACOES4, VsI_COMBINACOES5: SMALLINT;
     VI_TOTAL_COMB1, VI_FLAG_SOMATORIA1, VI_FLAG_SOMATORIA2, VI_FLAG_SOMATORIA3, VI_FLAG_SOMATORIA4: SMALLINT;
     Vsi_COMb7_1, Vsi_COMB7_2, Vsi_COMb7_3, Vsi_COMB7_4, Vsi_COMB7_5, Vsi_COMB7_6, Vsi_COMB7_7, Vsi_COMB7_8, VI_LINHAS7 : SMALLINT;
     Vsi_COMB12_1, Vsi_COMB12_2, Vsi_COMB12_3, Vsi_COMB12_4, Vsi_COMB12_5, Vsi_COMB12_6, Vsi_COMB12_7, Vsi_COMB12_8, Vsi_COMB12_9, Vsi_COMB12_0, Vsi_COMB12_A, Vsi_COMB12_B, Vsi_COMB12_C, Vsi_COMB12_D, Vsi_COMB12_E, VI_LINHAS12: SMALLINT;
       VSI_QTD_PAR, VSI_QTD_IMPAR : SMALLINT;


    PROCEDURE PR_ORDENAR_SIMULACAO_15 (VI_LINHAS9: INTEGER);
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
        // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
        FOR VI_CONTAR :=2 TO 17 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 2;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB15.Cells[VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15


    PROCEDURE PR_ORDENAR_SIMULACAO_10 (VI_LINHAS9: INTEGER);
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
        // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
        FOR VI_CONTAR :=2 TO 10 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB10.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 2;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB10.Cells [VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15


    PROCEDURE PR_GRAVAR_DADOS (VC_BEGIN_END: STRING; OUT VI_LINHAS2:INTEGER; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DADOS1, VC_DADOS2, VC_DADOS3, VC_DADOS4, VC_DADOSQ1, VC_DADOSQ2, VC_DADOSQ3, VC_DADOSQ4, VC_DADOSQ5, VC_DADOSQ6, VC_COMBINACOES, VC_COMBINACOES15 : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
            VC_DADOS1 := RIGHTSTR ('0'+STGR_BASE_L1.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L1.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[6,0],2);
            VC_DADOS2 := RIGHTSTR ('0'+STGR_BASE_L2.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L2.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[6,0],2);
            VC_DADOS3 := RIGHTSTR ('0'+STGR_BASE_L3.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L3.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[6,0],2);
            VC_DADOS4 := RIGHTSTR ('0'+STGR_BASE_L4.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L4.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[6,0],2);
            VC_DADOSQ1:= RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[1,1],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[2,1],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[3,1],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[4,1],2) ;
            VC_DADOSQ2:= RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[1,2],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[2,2],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[3,2],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[4,2],2) ;
            VC_DADOSQ3:= RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[1,3],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[2,3],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[3,3],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[4,3],2) ;
            VC_DADOSQ4:= RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[1,4],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[2,4],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[3,4],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[4,4],2) ;
            VC_DADOSQ5:= RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[1,5],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[2,5],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[3,5],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[4,5],2) ;
            VC_DADOSQ6:= RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[1,6],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[2,6],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[3,6],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[4,6],2) ;
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO FILTRO_0008EXC2_DEFINICAO (NUMERO_INICIAL, LINHA_1, LINHA_2, LINHA_3, LINHA_4, Q2_LINHA_1, Q2_LINHA_2, Q2_LINHA_3, Q2_LINHA_4, Q2_LINHA_5, Q2_LINHA_6, SOMA_COL_1_INI, SOMA_COL_1_FINAL,';
            VC_QUERY  := VC_QUERY +' EXC_1, EXC_2, EXC_3, CONTADOR_C1, TOTAL_CONTADOR_C1, ';
            VC_QUERY  := VC_QUERY +' EXC_OBR_1, EXC_OBR_2, EXC_OBR_3, EXC_OBR_4, EXC_OBR_5, DATA_DEFINICAO, HORA_DEFINICAO, SOMA_12N_INI, SOMA_12N_FINAL, QTD_DADOS) VALUES('#39+ED_fixoS_1.Text+ #39+ ',' +#39+ VC_DADOS1 + #39 +','  +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 + #39 +','  +#39+ VC_DADOS4;
              VC_QUERY  := VC_QUERY + #39+ ',' +#39+ VC_DADOSQ1 + #39 +','  +#39+ VC_DADOSQ2 + #39 +','  +#39+ VC_DADOSQ3 + #39 +','  +#39+ VC_DADOSQ4 + #39 +','  +#39+ VC_DADOSQ5 + #39 +','  +#39+ VC_DADOSQ6;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMA7_INI.Text    + #39 +','+#39+ ED_SOMA7_Final.Text  ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_FIXOS_01.Text          + #39 +','+#39+ ED_FIXOS_02.Text          + #39 +','+#39+ ED_FIXOS_03.Text      + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01.Text       + #39 +','+#39+ ED_EXC_02.Text       + #39 +','+#39+ ED_EXC_03.Text      + #39 +','+#39+ ED_EXC_04.Text       + #39 +','+#39+ ED_EXC_05.Text +     #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[]) + #39 +',' +#39+ FORMATDATETIME('h:n:s',time()) ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMA12_INI.Text    + #39 +','+#39+ ED_SOMA12_Final.Text  +#39+ ' ,''0'' );';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;                
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB10.RowCount-1;
        IF ((VI_LINHAS2/5995) = (VI_LINHAS2 DIV 5995))
            or ((VI_LINHAS2/5997) = (VI_LINHAS2 DIV 5997))
            or ((VI_LINHAS2/5999) = (VI_LINHAS2 DIV 5999))
            OR (VC_BEGIN_END = 'ENCERRANDO')
            OR (VC_BEGIN_END = 'FIM')
            THEN
        BEGIN
       {IF (VC_BEGIN_END = 'FIM') THEN
        BEGIN  }
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMB10.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COMB10.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES :='';
                VC_COMBINACOES15 :='';
                FOR VI_CNTCELULAS := 2 TO 10 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + TRIM(STGR_COMB10.Cells[VI_CNTCELULAS,VI_AN_COMB1]) +' ';
                END; // FOR VI_CNTCELULAS
                FOR VI_CNTCELULAS := 2 TO 17 DO
                BEGIN
                    VC_COMBINACOES15 := VC_COMBINACOES15 + TRIM(STGR_COMB15.Cells[VI_CNTCELULAS,VI_AN_COMB1]) +' ';
                END; // FOR VI_CNTCELULAS
                {
                VC_QUERY  := 'INSERT INTO FILTRO_0009EXC2_DADOS_temp (EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, EXC7, EXC8, EXC9, EXC10, DADOS, DADOS15,'
                +',N01, N02, N03, N04, N05, N06, N07, N08, N09, N10, N11, N12, N13, N14, N15 ) VALUES(' +#39+ STGR_COMB10.Cells[2,VI_AN_COMB1] + #39 +','+#39+ STGR_COMB10.Cells[3,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[4,VI_AN_COMB1] + #39 +','+#39+STGR_COMB10.Cells[5,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[6,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[8,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[9,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[10,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[11,VI_AN_COMB1]
                     + #39 +','+#39+TRIM(VC_COMBINACOES)         + #39 +','+#39+TRIM(VC_COMBINACOES15)   + #39 +');';
                }
                VC_QUERY  := 'INSERT INTO FILTRO_0008EXC2_DADOS_temp (EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, EXC7, EXC8, EXC9, DADOS, DADOS16,'
                +' N01, N02, N03, N04, N05, N06, N07, N08, N09, N10, N11, N12, N13, N14, N15, N16 ) VALUES(' +#39+ STGR_COMB10.Cells[2,VI_AN_COMB1] + #39 +','+#39+ STGR_COMB10.Cells[3,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[4,VI_AN_COMB1] + #39 +','+#39+STGR_COMB10.Cells[5,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[6,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[8,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[9,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[10,VI_AN_COMB1]
                     + #39 +','+#39+TRIM(VC_COMBINACOES) + #39 +','+#39+TRIM(VC_COMBINACOES15)
                     + #39 +','+#39+STGR_COMB15.Cells[2,VI_AN_COMB1] + #39 +','+#39+STGR_COMB15.Cells[3,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[4,VI_AN_COMB1] + #39 +','+#39+STGR_COMB15.Cells[5,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[6,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[8,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[9,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[10,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[11,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[12,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[13,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[14,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[15,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[16,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[17,VI_AN_COMB1]
                      + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Clear;
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_0008EXC2_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
            VI_LINHAS2:=1;
            STGR_COMB10.RowCount := VI_LINHAS2;
             SELF.IBQ_COMBINACOES.SQL.Clear;

               IF VC_BEGIN_END = 'FIM' THEN
               BEGIN
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0008EXC2_DADOS')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_0_08EXC2_DADOS_100REPET' )  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0008EXC2_DADOS_temp')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                       SELF.IBQ_COMBINACOES.SQL.Clear;
                       SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                       SELF.IBQ_COMBINACOES.ExecSQL;
               END;// IF
             IF ((VI_LINHAS2/5995) = (VI_LINHAS2 DIV 5995))
                 or ((VI_LINHAS2/5997) = (VI_LINHAS2 DIV 5997))
                 or ((VI_LINHAS2/5998) = (VI_LINHAS2 DIV 5998))
                 OR (VC_BEGIN_END = 'ENCERRANDO') THEN
             BEGIN
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_0_08EXC2_DADOS_100REPET' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                {  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0009EXC2_DADOS_temp')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;      }
             end;
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS

    
BEGIN
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR VI_CONTASEL1 := 1 TO 9 DO
     BEGIN
        STGR_COMB10.Cells [VI_CONTASEL1+1,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB10.Cells [VI_CONTASEL1+1,1] := '00';
     END;
     FOR VI_CONTASEL1 := 1 TO 16 DO
     BEGIN
        STGR_COMB15.Cells [VI_CONTASEL1+1,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB15.Cells [VI_CONTASEL1+1,1] := '00';
     END;     
          FOR VI_CONTASEL1 :=0 TO 25 DO
          BEGIN
              STGR_FILTRO_VCOLUNAS.Cells[VI_CONTASEL1,0] :=INTtoSTR (VI_CONTASEL1) ;
              STGR_FILTRO_VCOLUNAS.Cells[VI_CONTASEL1,1] :='F';
              STGR_FILTRO_VCOLUNAS.Cells[VI_CONTASEL1,2] :='F';
              STGR_FILTRO_HLINHAS.Cells[VI_CONTASEL1,0] :=INTtoSTR (VI_CONTASEL1) ;
              STGR_FILTRO_HLINHAS.Cells[VI_CONTASEL1,1] :='F';
              STGR_FILTRO_HLINHAS.Cells[VI_CONTASEL1,2] :='F';
          end;
     STGR_COMB10.RowCount := 2;
     STGR_COMB10.Repaint;
     STGR_COMB15.RowCount := 2;
     STGR_COMB15.Repaint;
     PGBR_GERARCOMB3.Position :=0 ;
     PGBR_GERARCOMB3.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     PGBR_REMREPET.Position := 0;
     PGBR_REMREPET.Repaint;
     LA_SOMA_8e9_DESC.Caption := CB_SOMA_8e9.Text;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_QTD_COMB.Repaint;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     VI_CONTAR_COMB1 := 1;
     VI_LINHAS2 := 1;
     VI_LINHAS1 := VI_LINHAS2;
     VI_TOTAL_COMB1  := STRtoINT(LA_LINHA_1_100REP.Caption);

     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_TODOS_OS_8.RowCount-1));
//aqui
//vai
//mudar
//tudo

     FOR VI_COMBINACOES1 := 1{2} TO {6} TRUNC((STGR_TODOS_OS_8.RowCount-1)/1) DO
     BEGIN

                         // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6 E SOMA
                         STGR_BASE_SOMA1.Cells[1,1] := STGR_TODOS_OS_8.Cells[1,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[2,1] := STGR_TODOS_OS_8.Cells[2,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[3,1] := STGR_TODOS_OS_8.Cells[3,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[4,1] := STGR_TODOS_OS_8.Cells[4,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[5,1] := STGR_TODOS_OS_8.Cells[5,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[6,1] := STGR_TODOS_OS_8.Cells[6,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[7,1] := STGR_TODOS_OS_8.Cells[7,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[8,1] := STGR_TODOS_OS_8.Cells[8,VI_COMBINACOES1];
                         // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] := STGR_TODOS_OS_16.Cells[1,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[2,1] := STGR_TODOS_OS_16.Cells[2,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[3,1] := STGR_TODOS_OS_16.Cells[3,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[4,1] := STGR_TODOS_OS_16.Cells[4,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[5,1] := STGR_TODOS_OS_16.Cells[5,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[6,1] := STGR_TODOS_OS_16.Cells[6,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[7,1] := STGR_TODOS_OS_16.Cells[7,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[8,1] := STGR_TODOS_OS_16.Cells[8,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[9,1] := STGR_TODOS_OS_16.Cells[9,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[10,1] := STGR_TODOS_OS_16.Cells[10,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[11,1] := STGR_TODOS_OS_16.Cells[11,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[12,1] := STGR_TODOS_OS_16.Cells[12,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[13,1] := STGR_TODOS_OS_16.Cells[13,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[14,1] := STGR_TODOS_OS_16.Cells[14,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[15,1] := STGR_TODOS_OS_16.Cells[15,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[16,1] := STGR_TODOS_OS_16.Cells[16,VI_COMBINACOES1];
                         // ----------------------------------------------------------------------
                         // --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 6, 7 ou 8 --
                         // ----------------------------------------------------------------------
                         VI_LINHAS7 := 1;
                         STGR_BASE_SOMA2.Cells[1,0]  := 'F';
                         CASE CB_SOMATORIA_8_NumerosBase.ItemIndex OF
                         0:
                         BEGIN
                              FOR Vsi_COMb7_1 := 1 TO  7 DO
                              BEGIN
                                   FOR Vsi_COMb7_2 := Vsi_COMb7_1+1 TO  8 DO
                                   BEGIN
                                        FOR Vsi_COMb7_3 := Vsi_COMb7_2+1 TO  8 DO
                                        BEGIN
                                             FOR Vsi_COMb7_4 := Vsi_COMb7_3+1 TO  8 DO
                                             BEGIN
                                                  FOR Vsi_COMb7_5 := Vsi_COMb7_4+1 TO  8 DO
                                                  BEGIN
                                                       FOR Vsi_COMb7_6 := Vsi_COMb7_5+1 TO  8 DO
                                                       BEGIN
                                                                 STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  := '0';
                                                                 STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                                 STGR_BASE_SOMA2.Cells[2,VI_LINHAS7]  := INTtoSTR(VI_LINHAS7);
                                                                 STGR_BASE_SOMA2.Cells[3,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_1,1] ;
                                                                 STGR_BASE_SOMA2.Cells[4,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_2,1] ;
                                                                 STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_3,1] ;
                                                                 STGR_BASE_SOMA2.Cells[6,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_4,1] ;
                                                                 STGR_BASE_SOMA2.Cells[7,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_5,1] ;
                                                                 STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_6,1] ;
                                                                 STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[3,VI_LINHAS7])
                                                                    + STRtoINT(STGR_BASE_SOMA2.Cells[4,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,VI_LINHAS7])
                                                                    + STRtoINT(STGR_BASE_SOMA2.Cells[7,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]) );
                                                                 if (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                                                      STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'V'
                                                                 ELSE
                                                                      STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                                 VI_LINHAS7 := VI_LINHAS7 +1 ;
                                                       END; // FOR Vsi_COMb7_6 :=
                                                  END; // FOR Vsi_COMb7_5 :=
                                             END; // FOR Vsi_COMb7_4 :=
                                        END; // FOR Vsi_COMb7_3 :=
                                   END; // FOR Vsi_COMb7_2 :=
                              END; // FOR Vsi_COMb7_1 :=
                         END; //0:

                         1:
                         BEGIN
                         FOR Vsi_COMb7_1 := 1 TO  7 DO
                         BEGIN
                              FOR Vsi_COMb7_2 := Vsi_COMb7_1+1 TO  8 DO
                              BEGIN
                                   FOR Vsi_COMb7_3 := Vsi_COMb7_2+1 TO  8 DO
                                   BEGIN
                                        FOR Vsi_COMb7_4 := Vsi_COMb7_3+1 TO  8 DO
                                        BEGIN
                                             FOR Vsi_COMb7_5 := Vsi_COMb7_4+1 TO  8 DO
                                             BEGIN
                                                  FOR Vsi_COMb7_6 := Vsi_COMb7_5+1 TO  8 DO
                                                  BEGIN
                                                       FOR Vsi_COMb7_7 := Vsi_COMb7_6+1 TO  8 DO
                                                       BEGIN
                                                            STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  := '0';
                                                            STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                            STGR_BASE_SOMA2.Cells[2,VI_LINHAS7]  := INTtoSTR(VI_LINHAS7);
                                                            STGR_BASE_SOMA2.Cells[3,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_1,1] ;
                                                            STGR_BASE_SOMA2.Cells[4,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_2,1] ;
                                                            STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_3,1] ;
                                                            STGR_BASE_SOMA2.Cells[6,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_4,1] ;
                                                            STGR_BASE_SOMA2.Cells[7,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_5,1] ;
                                                            STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_6,1] ;
                                                            STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_7,1] ;
                                                            STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[3,VI_LINHAS7])
                                                               + STRtoINT(STGR_BASE_SOMA2.Cells[4,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,VI_LINHAS7])
                                                               + STRtoINT(STGR_BASE_SOMA2.Cells[7,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]) );
                                                            if (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                                                 STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'V'
                                                            ELSE
                                                                 STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                            VI_LINHAS7 := VI_LINHAS7 +1 ;
                                                       END; // FOR Vsi_COMb7_7 :=
                                                  END; // FOR Vsi_COMb7_6 :=
                                             END; // FOR Vsi_COMb7_5 :=
                                        END; // FOR Vsi_COMb7_4 :=
                                   END; // FOR Vsi_COMb7_3 :=
                              END; // FOR Vsi_COMb7_2 :=
                         END; // FOR Vsi_COMb7_1 :=
                         END ; // 1:

                         2:
                         BEGIN
                         FOR Vsi_COMb7_1 := 1 TO  7 DO
                         BEGIN
                              FOR Vsi_COMb7_2 := Vsi_COMb7_1+1 TO  8 DO
                              BEGIN
                                   FOR Vsi_COMb7_3 := Vsi_COMb7_2+1 TO  8 DO
                                   BEGIN
                                        FOR Vsi_COMb7_4 := Vsi_COMb7_3+1 TO  8 DO
                                        BEGIN
                                             FOR Vsi_COMb7_5 := Vsi_COMb7_4+1 TO  8 DO
                                             BEGIN
                                                  FOR Vsi_COMb7_6 := Vsi_COMb7_5+1 TO  8 DO
                                                  BEGIN
                                                       FOR Vsi_COMb7_7 := Vsi_COMb7_6+1 TO  8 DO
                                                       BEGIN
                                                            FOR Vsi_COMB7_8 := Vsi_COMB7_7+1 TO 8 DO
                                                            BEGIN
                                                                 STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  := '0';
                                                                 STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                                 STGR_BASE_SOMA2.Cells[2,VI_LINHAS7]  := INTtoSTR(VI_LINHAS7);
                                                                 STGR_BASE_SOMA2.Cells[3,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_1,1] ;
                                                                 STGR_BASE_SOMA2.Cells[4,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_2,1] ;
                                                                 STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_3,1] ;
                                                                 STGR_BASE_SOMA2.Cells[6,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_4,1] ;
                                                                 STGR_BASE_SOMA2.Cells[7,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_5,1] ;
                                                                 STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_6,1] ;
                                                                 STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_7,1] ;
                                                                 STGR_BASE_SOMA2.Cells[10,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_8,1] ;
                                                                 STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[3,VI_LINHAS7])
                                                                    + STRtoINT(STGR_BASE_SOMA2.Cells[4,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,VI_LINHAS7])
                                                                    + STRtoINT(STGR_BASE_SOMA2.Cells[7,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[10,VI_LINHAS7]) );
                                                                 if (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                                                      STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'V'
                                                                 ELSE
                                                                      STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                                 VI_LINHAS7 := VI_LINHAS7 +1 ;
                                                            END; // FOR Vsi_COMB7_8:=
                                                       END; // FOR Vsi_COMb7_7 :=
                                                  END; // FOR Vsi_COMb7_6 :=
                                             END; // FOR Vsi_COMb7_5 :=
                                        END; // FOR Vsi_COMb7_4 :=
                                   END; // FOR Vsi_COMb7_3 :=
                              END; // FOR Vsi_COMb7_2 :=
                         END; // FOR Vsi_COMb7_1 :=
                         {
                                                                 STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  := '0';
                                                                 STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                                 STGR_BASE_SOMA2.Cells[2,VI_LINHAS7]  := INTtoSTR(VI_LINHAS7);
                                                                 STGR_BASE_SOMA2.Cells[3,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[1,1] ;
                                                                 STGR_BASE_SOMA2.Cells[4,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[2,1] ;
                                                                 STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[3,1] ;
                                                                 STGR_BASE_SOMA2.Cells[6,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[4,1] ;
                                                                 STGR_BASE_SOMA2.Cells[7,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[5,1] ;
                                                                 STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[6,1] ;
                                                                 STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[7,1] ;
                                                                 STGR_BASE_SOMA2.Cells[10,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[8,1] ;
                                                                 STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[3,VI_LINHAS7])
                                                                    + STRtoINT(STGR_BASE_SOMA2.Cells[4,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,VI_LINHAS7])
                                                                    + STRtoINT(STGR_BASE_SOMA2.Cells[7,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[10,VI_LINHAS7]) );
                                                                 if (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                                                      STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'V'
                                                                 ELSE
                                                                      STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                                 VI_LINHAS7 := VI_LINHAS7 +1;
                                                                 }
                         END ; // 2:

                         END; // CASE

                         STGR_BASE_SOMA2.RowCount := VI_LINHAS7;
                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         // ---------------------------------------------------------------------
                         // --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 13 ou 14 --
                         // ---------------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';
                         CASE CB_SOMATORIA_16_NumerosBase.ItemIndex OF
                         0:
                         BEGIN
                              FOR Vsi_COMb12_1 := 1 TO  12 DO
                              BEGIN
                                   FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                                   BEGIN
                                        FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                        BEGIN
                                             FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  16 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  16 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  16 DO
                                                            BEGIN
                                                                 FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  16 DO
                                                                 BEGIN
                                                                 FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  16 DO
                                                                 BEGIN
                                                                 FOR Vsi_COMb12_c := Vsi_COMb12_B+1 TO  16 DO
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
                                                                           STGR_BASE_SOMA12_2.Cells[15,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_c,1] ;
                                                                           STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[15,VI_LINHAS12]
                                                                              ));
                                                                           if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) >= STRtoINT(ED_SOMA12_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) <= STRtoINT(ED_SOMA12_Final.Text)) THEN
                                                                                STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                           ELSE
                                                                                STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';

                                                                      VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                                 END; // FOR Vsi_COMb12_c :=
                                                                 END; // FOR Vsi_COMb12_b :=
                                                                 END; // FOR Vsi_COMb12_a :=
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
                         END; //0

                         1:
                         BEGIN
                              FOR Vsi_COMb12_1 := 1 TO  12 DO
                              BEGIN
                                   FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                                   BEGIN
                                        FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                        BEGIN
                                             FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  16 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  16 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  16 DO
                                                            BEGIN
                                                                 FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  16 DO
                                                                 BEGIN
                                                                 FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  16 DO
                                                                 BEGIN
                                                                 FOR Vsi_COMb12_c := Vsi_COMb12_B+1 TO  16 DO
                                                                 BEGIN
                                                                      FOR Vsi_COMb12_D := Vsi_COMb12_C+1 TO  16 DO
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
                                                                           STGR_BASE_SOMA12_2.Cells[15,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_c,1] ;
                                                                           STGR_BASE_SOMA12_2.Cells[16,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_D,1] ;
                                                                           STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[15,VI_LINHAS12])  + STRtoINT(STGR_BASE_SOMA12_2.Cells[16,VI_LINHAS12]
                                                                              ));
                                                                           if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) >= STRtoINT(ED_SOMA12_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) <= STRtoINT(ED_SOMA12_Final.Text)) THEN
                                                                                STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                           ELSE
                                                                                STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';

                                                                      VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                                      END; // FOR FOR Vsi_COMb12_D :=
                                                                 END; // FOR Vsi_COMb12_c :=
                                                                 END; // FOR Vsi_COMb12_b :=
                                                                 END; // FOR Vsi_COMb12_a :=
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
                         END; // 1:

                         2:
                         BEGIN
                              FOR Vsi_COMb12_1 := 1 TO  11 DO
                              BEGIN
                                   FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  12 DO
                                   BEGIN
                                        FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  13 DO
                                        BEGIN
                                             FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  14 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  16 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  16 DO
                                                            BEGIN
                                                                 FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  16 DO
                                                                 BEGIN
                                                                 FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  16 DO
                                                                 BEGIN
                                                                 FOR Vsi_COMb12_c := Vsi_COMb12_B+1 TO  16 DO
                                                                 BEGIN
                                                                      FOR Vsi_COMb12_D := Vsi_COMb12_C+1 TO  16 DO
                                                                      BEGIN
                                                                      FOR Vsi_COMb12_E := Vsi_COMb12_D+1 TO  16 DO
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
                                                                           STGR_BASE_SOMA12_2.Cells[15,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_c,1] ;
                                                                           STGR_BASE_SOMA12_2.Cells[16,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_D,1] ;
                                                                           STGR_BASE_SOMA12_2.Cells[17,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_E,1] ;
                                                                           STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[15,VI_LINHAS12])  + STRtoINT(STGR_BASE_SOMA12_2.Cells[16,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[17,VI_LINHAS12]
                                                                              ));
                                                                           if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) >= STRtoINT(ED_SOMA12_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) <= STRtoINT(ED_SOMA12_Final.Text)) THEN
                                                                                STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                           ELSE
                                                                                STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';

                                                                      VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                                      END; // FOR FOR Vsi_COMb12_E :=                                                                      
                                                                      END; // FOR FOR Vsi_COMb12_D :=
                                                                 END; // FOR Vsi_COMb12_c :=
                                                                 END; // FOR Vsi_COMb12_b :=
                                                                 END; // FOR Vsi_COMb12_a :=
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
                         END; // 2:
                         END; // CASE;
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;


                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;


                         // ---------------------------------------
                         // --  MONTANDO O RESULTADO POR COLUNA  --
                         // ---------------------------------------
                         STGR_COMB10.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_COMB10.Cells[1,VI_LINHAS2] := 'V';
                         STGR_COMB10.Cells[2,VI_LINHAS2] := STGR_TODOS_OS_8.Cells[1,VI_COMBINACOES1];
                         STGR_COMB10.Cells[3,VI_LINHAS2] := STGR_TODOS_OS_8.Cells[2,VI_COMBINACOES1];
                         STGR_COMB10.Cells[4,VI_LINHAS2] := STGR_TODOS_OS_8.Cells[3,VI_COMBINACOES1];
                         STGR_COMB10.Cells[5,VI_LINHAS2] := STGR_TODOS_OS_8.Cells[4,VI_COMBINACOES1];
                         STGR_COMB10.Cells[6,VI_LINHAS2] := STGR_TODOS_OS_8.Cells[5,VI_COMBINACOES1];
                         STGR_COMB10.Cells[7,VI_LINHAS2] := STGR_TODOS_OS_8.Cells[6,VI_COMBINACOES1];
                         STGR_COMB10.Cells[8,VI_LINHAS2] := STGR_TODOS_OS_8.Cells[7,VI_COMBINACOES1];
                         STGR_COMB10.Cells[9,VI_LINHAS2] := STGR_TODOS_OS_8.Cells[8,VI_COMBINACOES1];
                         STGR_COMB10.Cells[10,VI_LINHAS2] := ED_fixoS_1.Text;
                              // ******************
                              // ***  NÚMEROS FIXOS
                              IF  STRtoINT(ED_FIXOS_01.Text) > 0 THEN
                              BEGIN
                                   IF  NOT(
                                       (STRtoINT(STGR_COMB10.Cells[2,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[3,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[4,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[5,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[6,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[7,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[8,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[9,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[10,VI_LINHAS2]) = STRtoINT(ED_FIXOS_01.Text))
                                       )
                                   THEN
                                        CONTINUE
                                   ELSE
                                        IF  STRtoINT(ED_FIXOS_02.Text) > 0 THEN
                                        BEGIN
                                             IF  NOT(
                                                 (STRtoINT(STGR_COMB10.Cells[2,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[3,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[4,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[5,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[6,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[7,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[8,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[9,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[10,VI_LINHAS2]) = STRtoINT(ED_FIXOS_02.Text))
                                                 )
                                             THEN
                                                  CONTINUE
                                             ELSE
                                                  IF  STRtoINT(ED_FIXOS_03.Text) > 0 THEN
                                                  BEGIN
                                                       IF  NOT(
                                                           (STRtoINT(STGR_COMB10.Cells[2,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[3,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[4,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[5,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[6,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[7,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[8,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[9,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[10,VI_LINHAS2]) = STRtoINT(ED_FIXOS_03.Text))
                                                           )
                                                       THEN
                                                            CONTINUE  {
                                                       ELSE
                                                            IF  STRtoINT(ED_FIXOS_04.Text) > 0 THEN
                                                            BEGIN
                                                                 IF  NOT(
                                                                     (STRtoINT(STGR_COMB10.Cells[2,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[3,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[4,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[5,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[6,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[7,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[8,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[9,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[10,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[11,VI_LINHAS2]) = STRtoINT(ED_FIXOS_04.Text))
                                                                     )
                                                                 THEN
                                                                      CONTINUE
                                                                 ELSE
                                                                      IF  STRtoINT(ED_FIXOS_05.Text) > 0 THEN
                                                                      BEGIN
                                                                           IF  NOT(
                                                                               (STRtoINT(STGR_COMB10.Cells[2,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[3,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[4,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[5,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[6,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[7,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[8,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[9,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[10,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[11,VI_LINHAS2]) = STRtoINT(ED_FIXOS_05.Text))
                                                                               )
                                                                           THEN
                                                                                CONTINUE;
                                                                      END;  // IF IF  STRtoINT(ED_FIXOS_05.Text)
                                                            END; // IF IF  STRtoINT(ED_FIXOS_04.Text)  }
                                                  END; // IF IF  STRtoINT(ED_FIXOS_03.Text)
                                        END; // IF  IF  STRtoINT(ED_FIXOS_02.Text)
                              END; // IF IF  STRtoINT(ED_FIXOS_01.Text)
                              STGR_COMB15.Cells[0,VI_LINHAS2] := 'F';

                             STGR_COMB15.Cells[2,VI_LINHAS2]  := STGR_TODOS_OS_16.Cells[1,VI_COMBINACOES1];
                             STGR_COMB15.Cells[3,VI_LINHAS2]  := STGR_TODOS_OS_16.Cells[2,VI_COMBINACOES1];
                             STGR_COMB15.Cells[4,VI_LINHAS2]  := STGR_TODOS_OS_16.Cells[3,VI_COMBINACOES1];
                             STGR_COMB15.Cells[5,VI_LINHAS2]  := STGR_TODOS_OS_16.Cells[4,VI_COMBINACOES1];
                             STGR_COMB15.Cells[6,VI_LINHAS2]  := STGR_TODOS_OS_16.Cells[5,VI_COMBINACOES1];
                             STGR_COMB15.Cells[7,VI_LINHAS2]  := STGR_TODOS_OS_16.Cells[6,VI_COMBINACOES1];
                             STGR_COMB15.Cells[8,VI_LINHAS2]  := STGR_TODOS_OS_16.Cells[7,VI_COMBINACOES1];
                             STGR_COMB15.Cells[9,VI_LINHAS2]  := STGR_TODOS_OS_16.Cells[8,VI_COMBINACOES1];
                             STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TODOS_OS_16.Cells[9,VI_COMBINACOES1];
                             STGR_COMB15.Cells[11,VI_LINHAS2] :=  STGR_TODOS_OS_16.Cells[10,VI_COMBINACOES1];
                             STGR_COMB15.Cells[12,VI_LINHAS2] :=  STGR_TODOS_OS_16.Cells[11,VI_COMBINACOES1];
                             STGR_COMB15.Cells[13,VI_LINHAS2] :=  STGR_TODOS_OS_16.Cells[12,VI_COMBINACOES1];
                             STGR_COMB15.Cells[14,VI_LINHAS2] :=  STGR_TODOS_OS_16.Cells[13,VI_COMBINACOES1];
                             STGR_COMB15.Cells[15,VI_LINHAS2] :=  STGR_TODOS_OS_16.Cells[14,VI_COMBINACOES1];
                             STGR_COMB15.Cells[16,VI_LINHAS2] :=  STGR_TODOS_OS_16.Cells[15,VI_COMBINACOES1];
                             STGR_COMB15.Cells[17,VI_LINHAS2] :=  STGR_TODOS_OS_16.Cells[16,VI_COMBINACOES1];


                             PR_ORDENAR_SIMULACAO_10 (VI_LINHAS2);
                             PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                             // *********************************************
                             // CONFERE SOMA/OBRIGATORIOS 8º E 9º NÚMERO
                             // *********************************************
                             IF (RB_SOMA8e9.Checked = TRUE) THEN
                             BEGIN
                                  IF (CB_SOMA_8e9.ItemIndex =0) THEN
                                  BEGIN
                                        IF ( (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])+STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]))>25 ) AND
                                           ( (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])+STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]))<28 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END ELSE
                                  BEGIN
                                        IF ( (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])+STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]))>24 ) AND
                                           ( (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])+STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]))<29 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END;
                             END; // IF (RB_SOMA8e9.Checked = TRUE)
                             IF (RB_NUMERO8e9.Checked = TRUE) THEN
                             BEGIN
                                  IF (CB_NUMERO_8e9.ItemIndex =0) THEN
                                  BEGIN
                                        IF (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])=11 ) OR
                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2])=11 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END ELSE
                                  IF (CB_NUMERO_8e9.ItemIndex =1) THEN
                                  BEGIN
                                        IF (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])=12 ) OR
                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2])=12 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END ELSE
                                  IF (CB_NUMERO_8e9.ItemIndex =2) THEN
                                  BEGIN
                                        IF (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])=13 ) OR
                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2])=13 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END ELSE
                                  IF (CB_NUMERO_8e9.ItemIndex =3) THEN
                                  BEGIN
                                        IF (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])=14 ) OR
                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2])=14 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END ELSE
                                  IF (CB_NUMERO_8e9.ItemIndex =4) THEN
                                  BEGIN
                                        IF (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])=15 ) OR
                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2])=15 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END;
                             END; // IF (RB_NUMERO8e9.Checked = TRUE)
                             // *********************************************
                             // CONTAGEM DE PARES E ÍMPARES
                             // *********************************************
                              VSI_QTD_PAR   := 0;
                              VSI_QTD_IMPAR := 0;
                              FOR VI_CONTASEL1 := 1 TO 16 DO
                              BEGIN
                                   IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL1+1,VI_LINHAS2])) MOD 2) =0 THEN    // -- > CONTANDO PAR OU ÍMPAR
                                        VSI_QTD_PAR:= VSI_QTD_PAR + 1
                                   ELSE
                                        VSI_QTD_IMPAR:= VSI_QTD_IMPAR + 1;
                              END;
                              IF  (VSI_QTD_PAR <7) OR (VSI_QTD_PAR>8) THEN
                                   CONTINUE;
                              IF  (VSI_QTD_IMPAR <8) OR (VSI_QTD_PAR>9) THEN
                                   CONTINUE;

                              STGR_COMB15.Cells[0,VI_LINHAS2] := 'V';
                              STGR_COMB15.Cells[1,VI_LINHAS2] := 'V';
                              //*********************************************
                              //*** Realizar a conferência dos 16 números ***
                              //*********************************************
                              IF (LA_QTD_Q1Q2.Visible = TRUE) THEN
                              BEGIN
                                   STGR_COMB15.Cells[0,VI_LINHAS2] := 'F';
                                   STGR_COMB15.Cells[1,VI_LINHAS2] := 'F';
                                        FOR VI_CONTASEL1 :=1 TO (STGR_HLINHAS_TODAS.RowCount-1) DO
                                        BEGIN
                                                  IF (CB_DUPLAS_LINHAS_Q2.ItemIndex =1) THEN
                                                  BEGIN

                                                            // -------------------------------------------------------------------
                                                            //  MARCANDO OS FLAGS DOS NUMEROS SORTEADOS DE ACORDO COM A SUA LINHA
                                                            // -------------------------------------------------------------------
                                                            FOR Vsi_COMb12_1 :=0 TO 25 DO
                                                            BEGIN
                                                                STGR_FILTRO_HLINHAS.Cells[Vsi_COMb12_1,0] :=INTtoSTR (Vsi_COMb12_1) ;
                                                                STGR_FILTRO_HLINHAS.Cells[Vsi_COMb12_1,1] :='F';
                                                                STGR_FILTRO_HLINHAS.Cells[Vsi_COMb12_1,2] :='F';
                                                            end;  //  FOR Vsi_COMb12_1
                                                            FOR VI_CONTASEL2 :=1 TO 4 DO
                                                            BEGIN
                                                                STGR_FILTRO_HLINHAS.Cells[(STRtoINT(STGR_HLINHAS_TODAS.Cells[VI_CONTASEL2,VI_CONTASEL1])) ,1]:='V';
                                                            END; // FOR VI_CONTASEL2
                                                            FOR VI_CONTASEL2 :=2 TO 17 DO
                                                            BEGIN
                                                                STGR_FILTRO_HLINHAS.Cells[(STRtoINT(STGR_COMB15.Cells[VI_CONTASEL2,VI_LINHAS2])) ,2]:='V';
                                                            END; // FOR VI_CONTASEL2
                                                            // --------------------------
                                                            //  CONFERINDO A QUANTIDADE
                                                            // -------------------------
                                                            VI_CONTAR_COMB1 := 0;
                                                            FOR VI_CONTASEL2 :=1 TO 25 DO
                                                            BEGIN
                                                                 IF (STGR_FILTRO_HLINHAS.Cells[VI_CONTASEL2,1]='V') AND (STGR_FILTRO_HLINHAS.Cells[VI_CONTASEL2,2]='V') THEN
                                                                    VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1;
                                                            END; // FOR VI_CONTASEL2
                                                            IF (VI_CONTAR_COMB1=4) THEN
                                                                 STGR_COMB15.Cells[0,VI_LINHAS2] := 'V';
                                                            IF (VI_CONTAR_COMB1=4) THEN
                                                                 STGR_COMB15.Cells[18,VI_LINHAS2] := INTtoSTR(VI_CONTASEL1);
                                                  END ELSE
                                                  BEGIN
                                                        STGR_COMB15.Cells[0,VI_LINHAS2] := 'V';
                                                  END; //IF (CB_DUPLAS_LINHAS_Q2.ItemIndex =1)
                                             // -------------------------------------------------------------------
                                             //  MARCANDO OS FLAGS DOS NUMEROS SORTEADOS DE ACORDO COM A SUA COLUNA
                                             // -------------------------------------------------------------------

                                             FOR Vsi_COMb12_1 :=0 TO 25 DO
                                             BEGIN
                                                 STGR_FILTRO_VCOLUNAS.Cells[Vsi_COMb12_1,0] :=INTtoSTR (Vsi_COMb12_1) ;
                                                 STGR_FILTRO_VCOLUNAS.Cells[Vsi_COMb12_1,1] :='F';
                                                 STGR_FILTRO_VCOLUNAS.Cells[Vsi_COMb12_1,2] :='F';
                                             end;  //  FOR Vsi_COMb12_1
                                             FOR VI_CONTASEL2 :=1 TO 16 DO
                                             BEGIN
                                                 STGR_FILTRO_VCOLUNAS.Cells[(STRtoINT(STGR_TODOS_OS_16_Q2.Cells[VI_CONTASEL2,VI_CONTASEL1])) ,1]:='V';
                                             END; // FOR VI_CONTASEL2
                                             FOR VI_CONTASEL2 :=2 TO 17 DO
                                             BEGIN
                                                 STGR_FILTRO_VCOLUNAS.Cells[(STRtoINT(STGR_COMB15.Cells[VI_CONTASEL2,VI_LINHAS2])) ,2]:='V';
                                             END; // FOR VI_CONTASEL2
                                             // --------------------------
                                             //  CONFERINDO A QUANTIDADE
                                             // -------------------------
                                             VI_CONTAR_COMB1 := 0;
                                             FOR VI_CONTASEL2 :=1 TO 25 DO
                                             BEGIN
                                                  IF (STGR_FILTRO_VCOLUNAS.Cells[VI_CONTASEL2,1]='V') AND (STGR_FILTRO_VCOLUNAS.Cells[VI_CONTASEL2,2]='V') THEN
                                                     VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1;
                                             END; // FOR VI_CONTASEL2
                                             IF (VI_CONTAR_COMB1=STRtoINT(CB_QTD_Q1Q2.Text)) THEN
                                                  STGR_COMB15.Cells[1,VI_LINHAS2] := 'V';
                                             IF (VI_CONTAR_COMB1=STRtoINT(CB_QTD_Q1Q2.Text)) THEN
                                                  STGR_COMB15.Cells[19,VI_LINHAS2] := INTtoSTR(VI_CONTASEL1);
                                        END; //FOR VI_CONTASEL1
                              END; //  IF (LA_QTD_Q1Q2.Visible = TRUE)
                              PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_TODOS_OS_8.RowCount-1));
                              IF (STGR_COMB15.Cells[0,VI_LINHAS2] = 'V') AND (STGR_COMB15.Cells[1,VI_LINHAS2] = 'V') THEN VI_LINHAS1 := VI_LINHAS1+1;
                              IF (STGR_COMB15.Cells[0,VI_LINHAS2] = 'V') AND (STGR_COMB15.Cells[1,VI_LINHAS2] = 'V') THEN VI_LINHAS2 := VI_LINHAS2+1;

               PGBR_GERARCOMB3.Position :=  TRUNC(VI_COMBINACOES1/(STGR_TODOS_OS_8.RowCount-1)*100);
               IF   (VI_COMBINACOES1 MOD 550) = 0 THEN
               BEGIN
                    STGR_BASE_SOMA2.REPAINT  ;
                    STGR_BASE_SOMA12_2.REPAINT  ;
                    Self.WindowState := wsMinimized;
                    Self.WindowState :=  wsNormal;
                    SELF.Repaint;
                    SLEEP(18);
                         LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1)+'   ';
                         LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
                         LA_QTD_COMB.Repaint;
                    LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_TODOS_OS_8.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_TODOS_OS_8.RowCount-1)*100))+ ' %  ';
                    PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_TODOS_OS_8.RowCount-1)*100);
                    LA_TOTAL_COMB.Repaint;
                    LA_GERAR_COMB.Repaint;
                    PGBR_GERARCOMB.Repaint;
                    STGR_COMB10.RowCount := VI_LINHAS2;
                    STGR_COMB10.Repaint;
                    STGR_COMB15.RowCount := VI_LINHAS2;
                    STGR_COMB15.Repaint;
               END;

     END; // FOR VI_COMBINACOES1
     PGBR_GERARCOMB3.Position := 100;
          STGR_COMB10.RowCount := VI_LINHAS2;
          STGR_COMB10.Repaint;
          STGR_COMB15.RowCount := VI_LINHAS2;
          STGR_COMB15.Repaint;     
               LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1)+'   ';
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(STGR_COMB10.RowCount-1);
               LA_QTD_COMB.Repaint;
          LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1-1)+ ' DE '+  INTtoSTR(STGR_TODOS_OS_8.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_TODOS_OS_8.RowCount-1)*100))+ ' %  ';
          PGBR_GERARCOMB.Position := 100  ;
          LA_GERAR_COMB.Repaint;
          PGBR_GERARCOMB.Repaint;
          PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_TODOS_OS_8.RowCount-1));
     PGBR_GERARCOMB.Repaint;

     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR_MENU.Enabled := false;
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';

     SELF.PR_SIMULAR_RECUPERANDODADOS('');
                   SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_0008EXC2_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTAR_COMB1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0008EXC2_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTAR_COMB1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0008EXC2_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     PA_REMOVEUREPET.Left := 570;
end;



PROCEDURE T_F_FILTRO_08_NS1_16_v2.PR_LIMPAR_GRID10 ();
BEGIN
    STGR_COMB10.CleanupInstance;
    STGR_COMB10.Free;
    STGR_COMB10:= TStringGrid.Create(SELF);
    STGR_COMB10.Parent:= PA_RESULTADO;
       STGR_COMB10.Left := 667        ;
       STGR_COMB10.Height := STGR_BASE_SOMA12_2.Height;
       STGR_COMB10.Top := 43          ;
       STGR_COMB10.Width := 375       ;
       STGR_COMB10.TabStop := False   ;
       STGR_COMB10.Color := 14413823  ;
       STGR_COMB10.ColCount := 12     ;
       STGR_COMB10.DefaultColWidth := 38;
       STGR_COMB10.FixedColor := clTeal ;
       STGR_COMB10.FixedCols := 2       ;
       STGR_COMB10.RowCount := 2        ;
    STGR_COMB10.Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;

    STGR_COMB15.CleanupInstance;
    STGR_COMB15.Free;
    STGR_COMB15:= TStringGrid.Create(SELF);
    STGR_COMB15.Parent:= PA_RESULTADO;
       STGR_COMB15.Left := 1040    ;
       STGR_COMB15.Height := STGR_BASE_SOMA12_2.Height;      
       STGR_COMB15.Top := 43       ;
       STGR_COMB15.Width := 520    ;
       STGR_COMB15.TabStop:= False;
       STGR_COMB15.Color := 11528427;
       STGR_COMB15.ColCount := 20   ;
       STGR_COMB15.Ctl3D := False   ;
       STGR_COMB15.DefaultColWidth := 31;
       STGR_COMB15.DefaultRowHeight := 21;
       STGR_COMB15.FixedColor := 2109440;
       STGR_COMB15.FixedCols := 2;
       STGR_COMB15.RowCount := 2 ; 
END;



PROCEDURE T_F_FILTRO_08_NS1_16_v2.PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       SELF.PR_LIMPAR_GRID10();
       IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-2 - Retirando os repetidos');
       SELF.IBQ_COMBINACOES.Close;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_0008EXC2_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DISTINCT(DADOS), EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, EXC7, EXC8, EXC9, N01, N02, N03, N04, N05, N06, N07, N08, N09, N10, N11, N12, N13, N14, N15, N16  FROM FILTRO_0008EXC2_DADOS  ORDER BY DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
           IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('Recuperando os dados');
       // ********************
       // **   ENCERRANDO   **
       // ********************
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
       STGR_COMB10.RowCount := 0;
       SELF.IBQ_COMBINACOES.First;
       FOR VI_AN_COMB1:= 1 TO  VI_CONTAR DO
       BEGIN
           STGR_COMB10.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB10.Cells [2, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC1').AsString;
           STGR_COMB10.Cells [3, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC2').AsString;
           STGR_COMB10.Cells [4, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC3').AsString;
           STGR_COMB10.Cells [5, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC4').AsString;
           STGR_COMB10.Cells [6, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC5').AsString;
           STGR_COMB10.Cells [7, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC6').AsString;
           STGR_COMB10.Cells [8, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC7').AsString;
           STGR_COMB10.Cells [9, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC8').AsString;
           STGR_COMB10.Cells [10, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC9').AsString;
                STGR_COMB15.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
                STGR_COMB15.Cells [2, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N01').AsString;
                STGR_COMB15.Cells [3, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N02').AsString;
                STGR_COMB15.Cells [4, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N03').AsString;
                STGR_COMB15.Cells [5, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N04').AsString;
                STGR_COMB15.Cells [6, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N05').AsString;
                STGR_COMB15.Cells [7, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N06').AsString;
                STGR_COMB15.Cells [8, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N07').AsString;
                STGR_COMB15.Cells [9, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N08').AsString;
                STGR_COMB15.Cells [10, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N09').AsString;
                STGR_COMB15.Cells [11, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N10').AsString;
                STGR_COMB15.Cells [12, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N11').AsString;
                STGR_COMB15.Cells [13, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N12').AsString;
                STGR_COMB15.Cells [14, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N13').AsString;
                STGR_COMB15.Cells [15, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N14').AsString;
                STGR_COMB15.Cells [16, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N15').AsString;
                STGR_COMB15.Cells [17, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('N16').AsString;
           STGR_COMB10.RowCount := VI_AN_COMB1;
           STGR_COMB15.RowCount := VI_AN_COMB1;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       STGR_COMB10.RowCount := VI_AN_COMB1;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_0008EXC2_DEFINICAO;')  ;
       SELF.IBQ_COMBINACOES.Open;
       STGR_COMB10.REPAINT;
           PGBR_REMREPET.Position := 100;
       LA_TOTAL_100REPET.Caption := INTtoSTR(STGR_COMB10.RowCount-1);
       STGR_COMB10.REPAINT;
       LA_TOTAL_100REPET.Repaint;
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
     SHOWMESSAGE('DADOS CARREGADOS');           
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();



procedure T_F_FILTRO_08_NS1_16_v2.BBT_GERAR_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_FILTRO_08_NS1_16_v2.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR_MENU.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     BBT_GERAR_MENU_Q1.Enabled := false;
     BBT_GERAR_MENU_Q2.Enabled := false;
     PA_INICIAL.Enabled := TRUE;
     BT_NOVA_SIMULACAO.Enabled := false;
     BT_REAJUSTAR.Enabled := TRUE;
     BT_CARREGAR_SIMULACAO.Enabled := false;
     PA_INICIAL.Left := 520;
end;



procedure T_F_FILTRO_08_NS1_16_v2.BT_CARREGAR_SIMULACAOClick(Sender: TObject);
begin
     SELF.PR_LIMPAR_GRID10();
     BBT_RECOMECAR.Click;
     PA_PREENCHIMENTO.Visible := false;
     PA_PREENCHIMENTO.Enabled := false;
     PA_GABARITO.Visible := TRUE;
     PA_GABARITO.Visible := false;
     BBT_PREPARAR_MENU.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     BBT_GERAR_MENU_Q1.Enabled := false;
     BBT_GERAR_MENU_Q2.Enabled := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     PGBR_GERARCOMB.Position := 100;
     LA_TOTAL_COMB.Visible := false;
     LA_GERAR_COMB.Visible := false;
     LA_QTD_COMB.Visible := false;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0008EXC2_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
end;


procedure T_F_FILTRO_08_NS1_16_v2.RB_RESULTADOSClick(Sender: TObject);
begin
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible  := TRUE;
end;




procedure T_F_FILTRO_08_NS1_16_v2.BBT_101Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234 (1);
    BBT_101.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_102Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(2);
    BBT_102.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_103Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(3);
    BBT_103.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_104Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(4);
    BBT_104.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_105Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(5);
    BBT_105.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_106Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(6);
    BBT_106.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_107Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(7);
    BBT_107.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_108Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(8);
    BBT_108.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_110Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(10);
    BBT_110.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_109Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(9);
    BBT_109.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_111Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(11);
    BBT_111.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_112Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(12);
    BBT_112.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_113Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(13);
    BBT_113.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_114Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(14);
    BBT_114.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_115Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(15);
    BBT_115.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_116Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(16);
    BBT_116.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_117Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(17);
    BBT_117.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_118Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(18);
    BBT_118.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_119Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(19);
    BBT_119.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_120Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(20);
    BBT_120.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_121Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(21);
    BBT_121.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_122Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(22);
    BBT_122.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_123Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(23);
    BBT_123.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_124Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(24);
    BBT_124.Enabled := FALSE;
end;

procedure T_F_FILTRO_08_NS1_16_v2.BBT_125Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_1234(25);
    BBT_125.Enabled := FALSE;
end;





procedure T_F_FILTRO_08_NS1_16_v2.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, VI_CONTAR : INTEGER;
    VC_COMBINACOES, VC_COMBINACOES2 : string;
begin
    MEM_COMBINACOES_TODAS.Clear;
   	MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + INTtoSTR(STGR_COMB10.RowCount-1)) ;
   	MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
     FOR VI_CONTAR := 1 TO STGR_COMB10.RowCount-1 DO
     BEGIN
  //		VC_COMBINACOES :=INTtoSTR(VI_CONTAR)+'=> ';
  //        VC_COMBINACOES2 :=INTtoSTR(VI_CONTAR)+'=> ';
  //  	FOR VI_AN_COMB1 := 2 TO 10 DO
  //   BEGIN
 //         VC_COMBINACOES := VC_COMBINACOES + STGR_COMB10.Cells[VI_AN_COMB1,VI_CONTAR] +' ';
//     END; // FOR VI_AN_COMB1
          VC_COMBINACOES2 := '';
          FOR VI_AN_COMB1 := 2 TO 17 DO
          BEGIN
               VC_COMBINACOES2 := VC_COMBINACOES2 + STGR_COMB15.Cells[VI_AN_COMB1,VI_CONTAR] +' ';
          end;
               MEM_COMBINACOES_TODAS.Lines.Add((*VC_COMBINACOES+'  '+*)VC_COMBINACOES2) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\EXCLUIDOS_8_1_MOD1.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\EXCLUIDOS_8_1_MOD1.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
   showmessage('BLOCO DE NOTAS GERADO');
end;




procedure T_F_FILTRO_08_NS1_16_v2.BBT_PREPARAR_MENUClick(Sender: TObject);
begin
     PA_PREPARAR.Visible := TRUE;
     PA_PREPARAR.Enabled := TRUE;
     PA_PREPARAR.Top  := 245;
     PA_PREPARAR.Left := 460;
     PA_PREPARAR.Repaint;
end;




procedure T_F_FILTRO_08_NS1_16_v2.BitBtn2Click(Sender: TObject);
begin
     PA_PREPARAR.Visible := false;
     PA_PREPARAR.Enabled := false;
     PA_PREPARAR.Top  := 245;         
     PA_PREPARAR.Left := 5500;
     PA_PREPARAR.Repaint;
end;




procedure T_F_FILTRO_08_NS1_16_v2.BBT_GERAR_VOLTARClick(Sender: TObject);
begin
     PA_GERAR.Visible := false;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     PA_GERAR.Repaint;
end;




procedure T_F_FILTRO_08_NS1_16_v2.CB_SOMATORIA_8_NumerosBaseChange(
  Sender: TObject);
begin
     CASE CB_SOMATORIA_8_NumerosBase.ItemIndex OF
          0:
          BEGIN
               LA_SOMA_7.Caption := 'Somatória para 6 Números';
          END ; // 1
          1:
          BEGIN
               LA_SOMA_7.Caption := 'Somatória para 7 Números';
          END ; // 1
          2:
          BEGIN
               LA_SOMA_7.Caption := 'Somatória para 8 Números';
          END ; // 1
     END; // CASE
     TRB_SOMA7_INI.Position := 4;
     TRB_SOMA7_INI.Position := 5;
     TRB_SOMA7_INI.Repaint;     
     TRB_SOMA7_Final.Position := 8;
     TRB_SOMA7_Final.Position := 9;
     TRB_SOMA7_Final.Repaint;
end;




procedure T_F_FILTRO_08_NS1_16_v2.CB_SOMATORIA_16_NumerosBaseChange(
  Sender: TObject);
begin
     CASE CB_SOMATORIA_16_NumerosBase.ItemIndex OF
          0:
          BEGIN
               LA_SOMA_16.Caption := 'Somatória para 13 Números';
          END ; // 1
          1:
          BEGIN
               LA_SOMA_16.Caption := 'Somatória para 14 Números';
          END ; // 1
          2:
          BEGIN
               LA_SOMA_16.Caption := 'Somatória para 15 Números';          
          END; // 2
     END; // CASE
     TRB_SOMA12_INI.Position := 4;
     TRB_SOMA12_INI.Position := 5;
     TRB_SOMA12_INI.Repaint;
     TRB_SOMA12_Final.Position := 8;
     TRB_SOMA12_Final.Position := 9;
     TRB_SOMA12_Final.Repaint;
end;







procedure T_F_FILTRO_08_NS1_16_v2.BBT_GERAR2Click(Sender: TObject);
var
     VI_LINHAS1, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR_CELULAS, VI_CONTASEL1, VI_CONTASEL2, VI_CONTAR_COMB1: integer;
     VsI_COMBINACOES3, VsI_COMBINACOES4, VsI_COMBINACOES5: SMALLINT;
     VI_TOTAL_COMB1, VI_FLAG_SOMATORIA1, VI_FLAG_SOMATORIA2, VI_FLAG_SOMATORIA3, VI_FLAG_SOMATORIA4: SMALLINT;
     Vsi_COMb7_1, Vsi_COMB7_2, Vsi_COMb7_3, Vsi_COMB7_4, Vsi_COMB7_5, Vsi_COMB7_6, Vsi_COMB7_7, Vsi_COMB7_8, VI_LINHAS7 : SMALLINT;
     Vsi_COMB12_1, Vsi_COMB12_2, Vsi_COMB12_3, Vsi_COMB12_4, Vsi_COMB12_5, Vsi_COMB12_6, Vsi_COMB12_7, Vsi_COMB12_8, Vsi_COMB12_9, Vsi_COMB12_0, Vsi_COMB12_A, Vsi_COMB12_B, Vsi_COMB12_C, Vsi_COMB12_D, Vsi_COMB12_E, VI_LINHAS12: SMALLINT;
       VSI_QTD_PAR, VSI_QTD_IMPAR : SMALLINT;


    PROCEDURE PR_ORDENAR_SIMULACAO_15 (VI_LINHAS9: INTEGER);
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
        // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
        FOR VI_CONTAR :=2 TO 17 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 2;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB15.Cells[VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15



    PROCEDURE PR_ORDENAR_SIMULACAO_10 (VI_LINHAS9: INTEGER);
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
        // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
        FOR VI_CONTAR :=2 TO 10 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB10.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 2;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB10.Cells [VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15



    PROCEDURE PR_GRAVAR_DADOS (VC_BEGIN_END: STRING; OUT VI_LINHAS2:INTEGER; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DADOS1, VC_DADOSQ1, VC_DADOSQ2, VC_DADOSQ3, VC_DADOSQ4, VC_DADOSQ5, VC_DADOSQ6, VC_COMBINACOES, VC_COMBINACOES15 : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
            VC_DADOS1 := '00 00 00 00 00' ;
            VC_DADOSQ1:= RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[1,1],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[2,1],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[3,1],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[4,1],2) ;
            VC_DADOSQ2:= RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[1,2],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[2,2],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[3,2],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[4,2],2) ;
            VC_DADOSQ3:= RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[1,3],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[2,3],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[3,3],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[4,3],2) ;
            VC_DADOSQ4:= RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[1,4],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[2,4],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[3,4],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[4,4],2) ;
            VC_DADOSQ5:= RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[1,5],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[2,5],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[3,5],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[4,5],2) ;
            VC_DADOSQ6:= RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[1,6],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[2,6],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[3,6],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_SUBFILTRO_1.Cells[4,6],2) ;
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO FILTRO_0008EXC2_DEFINICAO (NUMERO_INICIAL, LINHA_1, LINHA_2, LINHA_3, LINHA_4, Q2_LINHA_1, Q2_LINHA_2, Q2_LINHA_3, Q2_LINHA_4, Q2_LINHA_5, Q2_LINHA_6, SOMA_COL_1_INI, SOMA_COL_1_FINAL,';
            VC_QUERY  := VC_QUERY +' EXC_1, EXC_2, EXC_3, CONTADOR_C1, TOTAL_CONTADOR_C1, ';
            VC_QUERY  := VC_QUERY +' EXC_OBR_1, EXC_OBR_2, EXC_OBR_3, EXC_OBR_4, EXC_OBR_5, DATA_DEFINICAO, HORA_DEFINICAO, SOMA_12N_INI, SOMA_12N_FINAL, QTD_DADOS) VALUES('#39+ED_fixoS_1.Text+ #39+ ',' +#39+ VC_DADOS1 + #39 +','  +#39+ VC_DADOS1 + #39 +','  +#39+ VC_DADOS1 + #39 +','  +#39+ VC_DADOS1;
              VC_QUERY  := VC_QUERY + #39+ ',' +#39+ VC_DADOSQ1 + #39 +','  +#39+ VC_DADOSQ2 + #39 +','  +#39+ VC_DADOSQ3 + #39 +','  +#39+ VC_DADOSQ4 + #39 +','  +#39+ VC_DADOSQ5 + #39 +','  +#39+ VC_DADOSQ6;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMA7_INI.Text    + #39 +','+#39+ ED_SOMA7_Final.Text  ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_FIXOS_01.Text          + #39 +','+#39+ ED_FIXOS_02.Text          + #39 +','+#39+ ED_FIXOS_03.Text      + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01.Text       + #39 +','+#39+ ED_EXC_02.Text       + #39 +','+#39+ ED_EXC_03.Text      + #39 +','+#39+ ED_EXC_04.Text       + #39 +','+#39+ ED_EXC_05.Text +     #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[]) + #39 +',' +#39+ FORMATDATETIME('h:n:s',time()) ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMA12_INI.Text    + #39 +','+#39+ ED_SOMA12_Final.Text  +#39+ ' ,''0'' );';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;                
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB10.RowCount-1;
        IF ((VI_LINHAS2/5995) = (VI_LINHAS2 DIV 5995))
            or ((VI_LINHAS2/5997) = (VI_LINHAS2 DIV 5997))
            or ((VI_LINHAS2/5999) = (VI_LINHAS2 DIV 5999))
            OR (VC_BEGIN_END = 'ENCERRANDO')
            OR (VC_BEGIN_END = 'FIM')
            THEN
        BEGIN
       {IF (VC_BEGIN_END = 'FIM') THEN
        BEGIN  }
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMB10.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COMB10.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES :='';
                VC_COMBINACOES15 :='';
                FOR VI_CNTCELULAS := 2 TO 10 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + TRIM(STGR_COMB10.Cells[VI_CNTCELULAS,VI_AN_COMB1]) +' ';
                END; // FOR VI_CNTCELULAS
                FOR VI_CNTCELULAS := 2 TO 17 DO
                BEGIN
                    VC_COMBINACOES15 := VC_COMBINACOES15 + TRIM(STGR_COMB15.Cells[VI_CNTCELULAS,VI_AN_COMB1]) +' ';
                END; // FOR VI_CNTCELULAS
                {
                VC_QUERY  := 'INSERT INTO FILTRO_0009EXC2_DADOS_temp (EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, EXC7, EXC8, EXC9, EXC10, DADOS, DADOS15,'
                +',N01, N02, N03, N04, N05, N06, N07, N08, N09, N10, N11, N12, N13, N14, N15 ) VALUES(' +#39+ STGR_COMB10.Cells[2,VI_AN_COMB1] + #39 +','+#39+ STGR_COMB10.Cells[3,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[4,VI_AN_COMB1] + #39 +','+#39+STGR_COMB10.Cells[5,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[6,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[8,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[9,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[10,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[11,VI_AN_COMB1]
                     + #39 +','+#39+TRIM(VC_COMBINACOES)         + #39 +','+#39+TRIM(VC_COMBINACOES15)   + #39 +');';
                }
                VC_QUERY  := 'INSERT INTO FILTRO_0008EXC2_DADOS_temp (EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, EXC7, EXC8, EXC9, DADOS, DADOS16,'
                +' N01, N02, N03, N04, N05, N06, N07, N08, N09, N10, N11, N12, N13, N14, N15, N16 ) VALUES(' +#39+ STGR_COMB10.Cells[2,VI_AN_COMB1] + #39 +','+#39+ STGR_COMB10.Cells[3,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[4,VI_AN_COMB1] + #39 +','+#39+STGR_COMB10.Cells[5,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[6,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[8,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[9,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[10,VI_AN_COMB1]
                     + #39 +','+#39+TRIM(VC_COMBINACOES) + #39 +','+#39+TRIM(VC_COMBINACOES15)
                     + #39 +','+#39+STGR_COMB15.Cells[2,VI_AN_COMB1] + #39 +','+#39+STGR_COMB15.Cells[3,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[4,VI_AN_COMB1] + #39 +','+#39+STGR_COMB15.Cells[5,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[6,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[8,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[9,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[10,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[11,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[12,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[13,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[14,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[15,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB15.Cells[16,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB15.Cells[17,VI_AN_COMB1]
                      + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Clear;
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_0008EXC2_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
            VI_LINHAS2:=1;
            STGR_COMB10.RowCount := VI_LINHAS2;
             SELF.IBQ_COMBINACOES.SQL.Clear;

               IF VC_BEGIN_END = 'FIM' THEN
               BEGIN
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0008EXC2_DADOS')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_0_08EXC2_DADOS_100REPET' )  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0008EXC2_DADOS_temp')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                       SELF.IBQ_COMBINACOES.SQL.Clear;
                       SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                       SELF.IBQ_COMBINACOES.ExecSQL;
               END;// IF
             IF ((VI_LINHAS2/5995) = (VI_LINHAS2 DIV 5995))
                 or ((VI_LINHAS2/5997) = (VI_LINHAS2 DIV 5997))
                 or ((VI_LINHAS2/5998) = (VI_LINHAS2 DIV 5998))
                 OR (VC_BEGIN_END = 'ENCERRANDO') THEN
             BEGIN
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_0_08EXC2_DADOS_100REPET' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                {  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_0009EXC2_DADOS_temp')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;      }
             end;
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS


begin
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR VI_CONTASEL1 := 1 TO 9 DO
     BEGIN
        STGR_COMB10.Cells [VI_CONTASEL1+1,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB10.Cells [VI_CONTASEL1+1,1] := '00';
     END;
     FOR VI_CONTASEL1 := 1 TO 16 DO
     BEGIN
        STGR_COMB15.Cells [VI_CONTASEL1+1,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB15.Cells [VI_CONTASEL1+1,1] := '00';
     END;     
          FOR VI_CONTASEL1 :=0 TO 25 DO
          BEGIN
              STGR_FILTRO_VCOLUNAS.Cells[VI_CONTASEL1,0] :=INTtoSTR (VI_CONTASEL1) ;
              STGR_FILTRO_VCOLUNAS.Cells[VI_CONTASEL1,1] :='F';
              STGR_FILTRO_VCOLUNAS.Cells[VI_CONTASEL1,2] :='F';
              STGR_FILTRO_HLINHAS.Cells[VI_CONTASEL1,0] :=INTtoSTR (VI_CONTASEL1) ;
              STGR_FILTRO_HLINHAS.Cells[VI_CONTASEL1,1] :='F';
              STGR_FILTRO_HLINHAS.Cells[VI_CONTASEL1,2] :='F';
          end;
     STGR_COMB10.RowCount := 2;
     STGR_COMB10.Repaint;
     STGR_COMB15.RowCount := 2;
     STGR_COMB15.Repaint;
     PGBR_GERARCOMB3.Position :=0 ;
     PGBR_GERARCOMB3.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     PGBR_REMREPET.Position := 0;
     PGBR_REMREPET.Repaint;
     LA_SOMA_8e9_DESC.Caption := CB_SOMA_8e9.Text;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_QTD_COMB.Repaint;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     VI_CONTAR_COMB1 := 1;
     VI_LINHAS2 := 1;
     VI_LINHAS1 := VI_LINHAS2;
     VI_TOTAL_COMB1  := STRtoINT(LA_LINHA_1_100REP.Caption);

     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_LINHA_1_C1.RowCount-1));

     FOR VI_COMBINACOES1 := 1{2} TO {6} TRUNC((STGR_TODOS_OS_08_Q2.RowCount-1)/1) DO
     BEGIN
                         // BASE 8 NUMEROS PARA ANALISE COMBINATORIA COM 6 E SOMA
                         STGR_BASE_SOMA1.Cells[1,1] := STGR_TODOS_OS_08_Q2.Cells[1,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[2,1] := STGR_TODOS_OS_08_Q2.Cells[2,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[3,1] := STGR_TODOS_OS_08_Q2.Cells[3,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[4,1] := STGR_TODOS_OS_08_Q2.Cells[4,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[5,1] := STGR_TODOS_OS_08_Q2.Cells[5,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[6,1] := STGR_TODOS_OS_08_Q2.Cells[6,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[7,1] := STGR_TODOS_OS_08_Q2.Cells[7,VI_COMBINACOES1];
                         STGR_BASE_SOMA1.Cells[8,1] := STGR_TODOS_OS_08_Q2.Cells[8,VI_COMBINACOES1];
                         // BASE 16 NUMEROS PARA ANALISE COMBINATORIA COM 13 E SOMA
                         STGR_BASE_SOMA12_1.Cells[1,1] := STGR_TODOS_OS_16_Q2.Cells[1,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[2,1] := STGR_TODOS_OS_16_Q2.Cells[2,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[3,1] := STGR_TODOS_OS_16_Q2.Cells[3,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[4,1] := STGR_TODOS_OS_16_Q2.Cells[4,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[5,1] := STGR_TODOS_OS_16_Q2.Cells[5,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[6,1] := STGR_TODOS_OS_16_Q2.Cells[6,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[7,1] := STGR_TODOS_OS_16_Q2.Cells[7,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[8,1] := STGR_TODOS_OS_16_Q2.Cells[8,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[9,1] := STGR_TODOS_OS_16_Q2.Cells[9,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[10,1] := STGR_TODOS_OS_16_Q2.Cells[10,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[11,1] := STGR_TODOS_OS_16_Q2.Cells[11,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[12,1] := STGR_TODOS_OS_16_Q2.Cells[12,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[13,1] := STGR_TODOS_OS_16_Q2.Cells[13,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[14,1] := STGR_TODOS_OS_16_Q2.Cells[14,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[15,1] := STGR_TODOS_OS_16_Q2.Cells[15,VI_COMBINACOES1];
                         STGR_BASE_SOMA12_1.Cells[16,1] := STGR_TODOS_OS_16_Q2.Cells[16,VI_COMBINACOES1];
                         // ----------------------------------------------------------------------
                         // --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 6, 7 ou 8 --
                         // ----------------------------------------------------------------------
                         VI_LINHAS7 := 1;
                         STGR_BASE_SOMA2.Cells[1,0]  := 'F';
                         CASE CB_SOMATORIA_8_NumerosBase.ItemIndex OF
                         0:
                         BEGIN
                              FOR Vsi_COMb7_1 := 1 TO  7 DO
                              BEGIN
                                   FOR Vsi_COMb7_2 := Vsi_COMb7_1+1 TO  8 DO
                                   BEGIN
                                        FOR Vsi_COMb7_3 := Vsi_COMb7_2+1 TO  8 DO
                                        BEGIN
                                             FOR Vsi_COMb7_4 := Vsi_COMb7_3+1 TO  8 DO
                                             BEGIN
                                                  FOR Vsi_COMb7_5 := Vsi_COMb7_4+1 TO  8 DO
                                                  BEGIN
                                                       FOR Vsi_COMb7_6 := Vsi_COMb7_5+1 TO  8 DO
                                                       BEGIN
                                                                 STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  := '0';
                                                                 STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                                 STGR_BASE_SOMA2.Cells[2,VI_LINHAS7]  := INTtoSTR(VI_LINHAS7);
                                                                 STGR_BASE_SOMA2.Cells[3,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_1,1] ;
                                                                 STGR_BASE_SOMA2.Cells[4,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_2,1] ;
                                                                 STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_3,1] ;
                                                                 STGR_BASE_SOMA2.Cells[6,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_4,1] ;
                                                                 STGR_BASE_SOMA2.Cells[7,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_5,1] ;
                                                                 STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_6,1] ;
                                                                 STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[3,VI_LINHAS7])
                                                                    + STRtoINT(STGR_BASE_SOMA2.Cells[4,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,VI_LINHAS7])
                                                                    + STRtoINT(STGR_BASE_SOMA2.Cells[7,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]) );
                                                                 if (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                                                      STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'V'
                                                                 ELSE
                                                                      STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                                 VI_LINHAS7 := VI_LINHAS7 +1 ;
                                                       END; // FOR Vsi_COMb7_6 :=
                                                  END; // FOR Vsi_COMb7_5 :=
                                             END; // FOR Vsi_COMb7_4 :=
                                        END; // FOR Vsi_COMb7_3 :=
                                   END; // FOR Vsi_COMb7_2 :=
                              END; // FOR Vsi_COMb7_1 :=
                         END; //0:

                         1:
                         BEGIN
                         FOR Vsi_COMb7_1 := 1 TO  7 DO
                         BEGIN
                              FOR Vsi_COMb7_2 := Vsi_COMb7_1+1 TO  8 DO
                              BEGIN
                                   FOR Vsi_COMb7_3 := Vsi_COMb7_2+1 TO  8 DO
                                   BEGIN
                                        FOR Vsi_COMb7_4 := Vsi_COMb7_3+1 TO  8 DO
                                        BEGIN
                                             FOR Vsi_COMb7_5 := Vsi_COMb7_4+1 TO  8 DO
                                             BEGIN
                                                  FOR Vsi_COMb7_6 := Vsi_COMb7_5+1 TO  8 DO
                                                  BEGIN
                                                       FOR Vsi_COMb7_7 := Vsi_COMb7_6+1 TO  8 DO
                                                       BEGIN
                                                            STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  := '0';
                                                            STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                            STGR_BASE_SOMA2.Cells[2,VI_LINHAS7]  := INTtoSTR(VI_LINHAS7);
                                                            STGR_BASE_SOMA2.Cells[3,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_1,1] ;
                                                            STGR_BASE_SOMA2.Cells[4,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_2,1] ;
                                                            STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_3,1] ;
                                                            STGR_BASE_SOMA2.Cells[6,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_4,1] ;
                                                            STGR_BASE_SOMA2.Cells[7,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_5,1] ;
                                                            STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_6,1] ;
                                                            STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_7,1] ;
                                                            STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[3,VI_LINHAS7])
                                                               + STRtoINT(STGR_BASE_SOMA2.Cells[4,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,VI_LINHAS7])
                                                               + STRtoINT(STGR_BASE_SOMA2.Cells[7,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]) );
                                                            if (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                                                 STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'V'
                                                            ELSE
                                                                 STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                            VI_LINHAS7 := VI_LINHAS7 +1 ;
                                                       END; // FOR Vsi_COMb7_7 :=
                                                  END; // FOR Vsi_COMb7_6 :=
                                             END; // FOR Vsi_COMb7_5 :=
                                        END; // FOR Vsi_COMb7_4 :=
                                   END; // FOR Vsi_COMb7_3 :=
                              END; // FOR Vsi_COMb7_2 :=
                         END; // FOR Vsi_COMb7_1 :=
                         END ; // 1:

                         {
                                                                 STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  := '0';
                                                                 STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                                 STGR_BASE_SOMA2.Cells[2,VI_LINHAS7]  := INTtoSTR(VI_LINHAS7);
                                                                 STGR_BASE_SOMA2.Cells[3,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[1,1] ;
                                                                 STGR_BASE_SOMA2.Cells[4,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[2,1] ;
                                                                 STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[3,1] ;
                                                                 STGR_BASE_SOMA2.Cells[6,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[4,1] ;
                                                                 STGR_BASE_SOMA2.Cells[7,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[5,1] ;
                                                                 STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[6,1] ;
                                                                 STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[7,1] ;
                                                                 STGR_BASE_SOMA2.Cells[10,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[8,1] ;
                                                                 STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[3,VI_LINHAS7])
                                                                    + STRtoINT(STGR_BASE_SOMA2.Cells[4,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,VI_LINHAS7])
                                                                    + STRtoINT(STGR_BASE_SOMA2.Cells[7,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[10,VI_LINHAS7]) );
                                                                 if (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                                                      STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'V'
                                                                 ELSE
                                                                      STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                                 VI_LINHAS7 := VI_LINHAS7 +1;
                                                                 }

                         2:
                         BEGIN
                         FOR Vsi_COMb7_1 := 1 TO  7 DO
                         BEGIN
                              FOR Vsi_COMb7_2 := Vsi_COMb7_1+1 TO  8 DO
                              BEGIN
                                   FOR Vsi_COMb7_3 := Vsi_COMb7_2+1 TO  8 DO
                                   BEGIN
                                        FOR Vsi_COMb7_4 := Vsi_COMb7_3+1 TO  8 DO
                                        BEGIN
                                             FOR Vsi_COMb7_5 := Vsi_COMb7_4+1 TO  8 DO
                                             BEGIN
                                                  FOR Vsi_COMb7_6 := Vsi_COMb7_5+1 TO  8 DO
                                                  BEGIN
                                                       FOR Vsi_COMb7_7 := Vsi_COMb7_6+1 TO  8 DO
                                                       BEGIN
                                                            FOR Vsi_COMB7_8 := Vsi_COMB7_7+1 TO 8 DO
                                                            BEGIN
                                                                 STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  := '0';
                                                                 STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                                 STGR_BASE_SOMA2.Cells[2,VI_LINHAS7]  := INTtoSTR(VI_LINHAS7);
                                                                 STGR_BASE_SOMA2.Cells[3,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_1,1] ;
                                                                 STGR_BASE_SOMA2.Cells[4,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_2,1] ;
                                                                 STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_3,1] ;
                                                                 STGR_BASE_SOMA2.Cells[6,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_4,1] ;
                                                                 STGR_BASE_SOMA2.Cells[7,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_5,1] ;
                                                                 STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_6,1] ;
                                                                 STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_7,1] ;
                                                                 STGR_BASE_SOMA2.Cells[10,VI_LINHAS7]  :=  STGR_BASE_SOMA1.Cells[Vsi_COMb7_8,1] ;
                                                                 STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA2.Cells[3,VI_LINHAS7])
                                                                    + STRtoINT(STGR_BASE_SOMA2.Cells[4,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[5,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[6,VI_LINHAS7])
                                                                    + STRtoINT(STGR_BASE_SOMA2.Cells[7,VI_LINHAS7])+ STRtoINT(STGR_BASE_SOMA2.Cells[8,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[9,VI_LINHAS7]) + STRtoINT(STGR_BASE_SOMA2.Cells[10,VI_LINHAS7]) );
                                                                 if (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) >= STRtoINT(ED_SOMA7_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA2.Cells[0,VI_LINHAS7]) <= STRtoINT(ED_SOMA7_Final.Text)) THEN
                                                                      STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'V'
                                                                 ELSE
                                                                      STGR_BASE_SOMA2.Cells[1,VI_LINHAS7]  := 'F';
                                                                 VI_LINHAS7 := VI_LINHAS7 +1 ;
                                                            END; // FOR Vsi_COMB7_8:=
                                                       END; // FOR Vsi_COMb7_7 :=
                                                  END; // FOR Vsi_COMb7_6 :=
                                             END; // FOR Vsi_COMb7_5 :=
                                        END; // FOR Vsi_COMb7_4 :=
                                   END; // FOR Vsi_COMb7_3 :=
                              END; // FOR Vsi_COMb7_2 :=
                         END; // FOR Vsi_COMb7_1 :=
                         END ; // 2:

                         END; // CASE

                         STGR_BASE_SOMA2.RowCount := VI_LINHAS7;
                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA2.Cells[1,0] = 'F') THEN
                              CONTINUE;
                         // ---------------------------------------------------------------------
                         // --  MONTANDO AS COMBINAÇÕES POSSÍVEL PARA REALIZAR A SOMA 13 ou 14 --
                         // ---------------------------------------------------------------------
                         VI_LINHAS12 := 1;
                         STGR_BASE_SOMA12_2.Cells[1,0]  := 'F';
                         CASE CB_SOMATORIA_16_NumerosBase.ItemIndex OF
                         0:
                         BEGIN
                              FOR Vsi_COMb12_1 := 1 TO  12 DO
                              BEGIN
                                   FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                                   BEGIN
                                        FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                        BEGIN
                                             FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  16 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  16 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  16 DO
                                                            BEGIN
                                                                 FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  16 DO
                                                                 BEGIN
                                                                 FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  16 DO
                                                                 BEGIN
                                                                 FOR Vsi_COMb12_c := Vsi_COMb12_B+1 TO  16 DO
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
                                                                           STGR_BASE_SOMA12_2.Cells[15,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_c,1] ;
                                                                           STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[15,VI_LINHAS12]
                                                                              ));
                                                                           if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) >= STRtoINT(ED_SOMA12_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) <= STRtoINT(ED_SOMA12_Final.Text)) THEN
                                                                                STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                           ELSE
                                                                                STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';

                                                                      VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                                 END; // FOR Vsi_COMb12_c :=
                                                                 END; // FOR Vsi_COMb12_b :=
                                                                 END; // FOR Vsi_COMb12_a :=
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
                         END; //0

                         1:
                         BEGIN
                              FOR Vsi_COMb12_1 := 1 TO  12 DO
                              BEGIN
                                   FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  13 DO
                                   BEGIN
                                        FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  14 DO
                                        BEGIN
                                             FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  15 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  16 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  16 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  16 DO
                                                            BEGIN
                                                                 FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  16 DO
                                                                 BEGIN
                                                                 FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  16 DO
                                                                 BEGIN
                                                                 FOR Vsi_COMb12_c := Vsi_COMb12_B+1 TO  16 DO
                                                                 BEGIN
                                                                      FOR Vsi_COMb12_D := Vsi_COMb12_C+1 TO  16 DO
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
                                                                           STGR_BASE_SOMA12_2.Cells[15,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_c,1] ;
                                                                           STGR_BASE_SOMA12_2.Cells[16,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_D,1] ;
                                                                           STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[15,VI_LINHAS12])  + STRtoINT(STGR_BASE_SOMA12_2.Cells[16,VI_LINHAS12]
                                                                              ));
                                                                           if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) >= STRtoINT(ED_SOMA12_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) <= STRtoINT(ED_SOMA12_Final.Text)) THEN
                                                                                STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                           ELSE
                                                                                STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';

                                                                      VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                                      END; // FOR FOR Vsi_COMb12_D :=
                                                                 END; // FOR Vsi_COMb12_c :=
                                                                 END; // FOR Vsi_COMb12_b :=
                                                                 END; // FOR Vsi_COMb12_a :=
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
                         END; // 1:

                         2:
                         BEGIN
                              FOR Vsi_COMb12_1 := 1 TO  11 DO
                              BEGIN
                                   FOR Vsi_COMb12_2 := Vsi_COMb12_1+1 TO  12 DO
                                   BEGIN
                                        FOR Vsi_COMb12_3 := Vsi_COMb12_2+1 TO  13 DO
                                        BEGIN
                                             FOR Vsi_COMb12_4 := Vsi_COMb12_3+1 TO  14 DO
                                             BEGIN
                                                  FOR Vsi_COMb12_5 := Vsi_COMb12_4+1 TO  15 DO
                                                  BEGIN
                                                       FOR Vsi_COMb12_6 := Vsi_COMb12_5+1 TO  16 DO
                                                       BEGIN
                                                            FOR Vsi_COMb12_7 := Vsi_COMb12_6+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_8 := Vsi_COMb12_7+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_9 := Vsi_COMb12_8+1 TO  16 DO
                                                            BEGIN
                                                            FOR Vsi_COMb12_0 := Vsi_COMb12_9+1 TO  16 DO
                                                            BEGIN
                                                                 FOR Vsi_COMb12_A := Vsi_COMb12_0+1 TO  16 DO
                                                                 BEGIN
                                                                 FOR Vsi_COMb12_B := Vsi_COMb12_A+1 TO  16 DO
                                                                 BEGIN
                                                                 FOR Vsi_COMb12_c := Vsi_COMb12_B+1 TO  16 DO
                                                                 BEGIN
                                                                      FOR Vsi_COMb12_D := Vsi_COMb12_C+1 TO  16 DO
                                                                      BEGIN
                                                                      FOR Vsi_COMb12_E := Vsi_COMb12_D+1 TO  16 DO
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
                                                                           STGR_BASE_SOMA12_2.Cells[15,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_c,1] ;
                                                                           STGR_BASE_SOMA12_2.Cells[16,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_D,1] ;
                                                                           STGR_BASE_SOMA12_2.Cells[17,VI_LINHAS12]  :=  STGR_BASE_SOMA12_1.Cells[Vsi_COMb12_E,1] ;
                                                                           STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]  :=  INTtoSTR ( STRtoINT(STGR_BASE_SOMA12_2.Cells[3,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[4,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[5,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[6,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[7,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[8,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[9,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[10,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[11,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[12,VI_LINHAS12])
                                                                              + STRtoINT(STGR_BASE_SOMA12_2.Cells[13,VI_LINHAS12])+ STRtoINT(STGR_BASE_SOMA12_2.Cells[14,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[15,VI_LINHAS12])  + STRtoINT(STGR_BASE_SOMA12_2.Cells[16,VI_LINHAS12]) + STRtoINT(STGR_BASE_SOMA12_2.Cells[17,VI_LINHAS12]
                                                                              ));
                                                                           if (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) >= STRtoINT(ED_SOMA12_INI.Text) ) and (STRtoINT(STGR_BASE_SOMA12_2.Cells[0,VI_LINHAS12]) <= STRtoINT(ED_SOMA12_Final.Text)) THEN
                                                                                STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'V'
                                                                           ELSE
                                                                                STGR_BASE_SOMA12_2.Cells[1,VI_LINHAS12]  := 'F';

                                                                      VI_LINHAS12 := VI_LINHAS12 +1 ;
                                                                      END; // FOR FOR Vsi_COMb12_E :=                                                                      
                                                                      END; // FOR FOR Vsi_COMb12_D :=
                                                                 END; // FOR Vsi_COMb12_c :=
                                                                 END; // FOR Vsi_COMb12_b :=
                                                                 END; // FOR Vsi_COMb12_a :=
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
                         END; // 2:                         
                         END; // CASE;
                         STGR_BASE_SOMA12_2.RowCount := VI_LINHAS12;


                         for VsI_COMBINACOES5 := 1 to STGR_BASE_SOMA12_2.RowCount-1 do
                         begin
                              IF (STGR_BASE_SOMA12_2.Cells[1,VsI_COMBINACOES5] = 'V') THEN STGR_BASE_SOMA12_2.Cells[1,0]  := 'V';
                         end; // for VsI_COMBINACOES5
                         IF (STGR_BASE_SOMA12_2.Cells[1,0] = 'F') THEN
                              CONTINUE;


                         // ---------------------------------------
                         // --  MONTANDO O RESULTADO POR COLUNA  --
                         // ---------------------------------------
                         STGR_COMB10.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_COMB10.Cells[1,VI_LINHAS2] := 'V';
                         STGR_COMB10.Cells[2,VI_LINHAS2] := STGR_TODOS_OS_08_Q2.Cells[1,VI_COMBINACOES1];
                         STGR_COMB10.Cells[3,VI_LINHAS2] := STGR_TODOS_OS_08_Q2.Cells[2,VI_COMBINACOES1];
                         STGR_COMB10.Cells[4,VI_LINHAS2] := STGR_TODOS_OS_08_Q2.Cells[3,VI_COMBINACOES1];
                         STGR_COMB10.Cells[5,VI_LINHAS2] := STGR_TODOS_OS_08_Q2.Cells[4,VI_COMBINACOES1];
                         STGR_COMB10.Cells[6,VI_LINHAS2] := STGR_TODOS_OS_08_Q2.Cells[5,VI_COMBINACOES1];
                         STGR_COMB10.Cells[7,VI_LINHAS2] := STGR_TODOS_OS_08_Q2.Cells[6,VI_COMBINACOES1];
                         STGR_COMB10.Cells[8,VI_LINHAS2] := STGR_TODOS_OS_08_Q2.Cells[7,VI_COMBINACOES1];
                         STGR_COMB10.Cells[9,VI_LINHAS2] := STGR_TODOS_OS_08_Q2.Cells[8,VI_COMBINACOES1];
                         STGR_COMB10.Cells[10,VI_LINHAS2] := ED_fixoS_1.Text;
 // ******************
                              // ***  NÚMEROS FIXOS
                              IF  STRtoINT(ED_EXC_01.Text) > 0 THEN
                              BEGIN
                                   IF  (
                                       (STRtoINT(STGR_COMB10.Cells[2,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[3,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[4,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[5,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[6,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[7,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[8,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[9,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                       (STRtoINT(STGR_COMB10.Cells[10,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text))
                                       )
                                   THEN
                                        CONTINUE
                                   ELSE
                                        IF  STRtoINT(ED_EXC_02.Text) > 0 THEN
                                        BEGIN
                                             IF  (
                                                 (STRtoINT(STGR_COMB10.Cells[2,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[3,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[4,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[5,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[6,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[7,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[8,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[9,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                 (STRtoINT(STGR_COMB10.Cells[10,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text))
                                                 )
                                             THEN
                                                  CONTINUE
                                             ELSE
                                                  IF  STRtoINT(ED_EXC_03.Text) > 0 THEN
                                                  BEGIN
                                                       IF  (
                                                           (STRtoINT(STGR_COMB10.Cells[2,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[3,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[4,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[5,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[6,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[7,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[8,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[9,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB10.Cells[10,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text))
                                                           )
                                                       THEN
                                                            CONTINUE
                                                            //{
                                                       ELSE
                                                            IF  STRtoINT(ED_EXC_04.Text) > 0 THEN
                                                            BEGIN
                                                                 IF  (
                                                                     (STRtoINT(STGR_COMB10.Cells[2,VI_LINHAS2]) = STRtoINT(ED_EXC_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[3,VI_LINHAS2]) = STRtoINT(ED_EXC_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[4,VI_LINHAS2]) = STRtoINT(ED_EXC_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[5,VI_LINHAS2]) = STRtoINT(ED_EXC_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[6,VI_LINHAS2]) = STRtoINT(ED_EXC_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[7,VI_LINHAS2]) = STRtoINT(ED_EXC_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[8,VI_LINHAS2]) = STRtoINT(ED_EXC_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[9,VI_LINHAS2]) = STRtoINT(ED_EXC_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[10,VI_LINHAS2]) = STRtoINT(ED_EXC_04.Text)) OR
                                                                     (STRtoINT(STGR_COMB10.Cells[11,VI_LINHAS2]) = STRtoINT(ED_EXC_04.Text))
                                                                     )
                                                                 THEN
                                                                      CONTINUE
                                                                 ELSE
                                                                      IF  STRtoINT(ED_EXC_05.Text) > 0 THEN
                                                                      BEGIN
                                                                           IF  (
                                                                               (STRtoINT(STGR_COMB10.Cells[2,VI_LINHAS2]) = STRtoINT(ED_EXC_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[3,VI_LINHAS2]) = STRtoINT(ED_EXC_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[4,VI_LINHAS2]) = STRtoINT(ED_EXC_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[5,VI_LINHAS2]) = STRtoINT(ED_EXC_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[6,VI_LINHAS2]) = STRtoINT(ED_EXC_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[7,VI_LINHAS2]) = STRtoINT(ED_EXC_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[8,VI_LINHAS2]) = STRtoINT(ED_EXC_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[9,VI_LINHAS2]) = STRtoINT(ED_EXC_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[10,VI_LINHAS2]) = STRtoINT(ED_EXC_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB10.Cells[11,VI_LINHAS2]) = STRtoINT(ED_EXC_05.Text))
                                                                               )
                                                                           THEN
                                                                                CONTINUE;
                                                                      END;  // IF IF  STRtoINT(ED_FIXOS_05.Text)
                                                            END; // IF IF  STRtoINT(ED_FIXOS_04.Text)
                                                            //}

                                                  END; // IF IF  STRtoINT(ED_FIXOS_03.Text)
                                        END; // IF  IF  STRtoINT(ED_FIXOS_02.Text)
                              END; // IF IF  STRtoINT(ED_FIXOS_01.Text)
                              STGR_COMB15.Cells[0,VI_LINHAS2] := 'F';

                             STGR_COMB15.Cells[2,VI_LINHAS2]  := STGR_TODOS_OS_16_Q2.Cells[1,VI_COMBINACOES1];
                             STGR_COMB15.Cells[3,VI_LINHAS2]  := STGR_TODOS_OS_16_Q2.Cells[2,VI_COMBINACOES1];
                             STGR_COMB15.Cells[4,VI_LINHAS2]  := STGR_TODOS_OS_16_Q2.Cells[3,VI_COMBINACOES1];
                             STGR_COMB15.Cells[5,VI_LINHAS2]  := STGR_TODOS_OS_16_Q2.Cells[4,VI_COMBINACOES1];
                             STGR_COMB15.Cells[6,VI_LINHAS2]  := STGR_TODOS_OS_16_Q2.Cells[5,VI_COMBINACOES1];
                             STGR_COMB15.Cells[7,VI_LINHAS2]  := STGR_TODOS_OS_16_Q2.Cells[6,VI_COMBINACOES1];
                             STGR_COMB15.Cells[8,VI_LINHAS2]  := STGR_TODOS_OS_16_Q2.Cells[7,VI_COMBINACOES1];
                             STGR_COMB15.Cells[9,VI_LINHAS2]  := STGR_TODOS_OS_16_Q2.Cells[8,VI_COMBINACOES1];
                             STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TODOS_OS_16_Q2.Cells[9,VI_COMBINACOES1];
                             STGR_COMB15.Cells[11,VI_LINHAS2] :=  STGR_TODOS_OS_16_Q2.Cells[10,VI_COMBINACOES1];
                             STGR_COMB15.Cells[12,VI_LINHAS2] :=  STGR_TODOS_OS_16_Q2.Cells[11,VI_COMBINACOES1];
                             STGR_COMB15.Cells[13,VI_LINHAS2] :=  STGR_TODOS_OS_16_Q2.Cells[12,VI_COMBINACOES1];
                             STGR_COMB15.Cells[14,VI_LINHAS2] :=  STGR_TODOS_OS_16_Q2.Cells[13,VI_COMBINACOES1];
                             STGR_COMB15.Cells[15,VI_LINHAS2] :=  STGR_TODOS_OS_16_Q2.Cells[14,VI_COMBINACOES1];
                             STGR_COMB15.Cells[16,VI_LINHAS2] :=  STGR_TODOS_OS_16_Q2.Cells[15,VI_COMBINACOES1];
                             STGR_COMB15.Cells[17,VI_LINHAS2] :=  STGR_TODOS_OS_16_Q2.Cells[16,VI_COMBINACOES1];

                             PR_ORDENAR_SIMULACAO_10 (VI_LINHAS2);
                             PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                             // *********************************************
                             // CONFERE SOMA/OBRIGATORIOS 8º E 9º NÚMERO
                             // *********************************************
                             IF (RB_SOMA8e9.Checked = TRUE) THEN
                             BEGIN
                                  IF (CB_SOMA_8e9.ItemIndex =0) THEN
                                  BEGIN
                                        IF ( (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])+STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]))>25 ) AND
                                           ( (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])+STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]))<28 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END ELSE
                                  BEGIN
                                        IF ( (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])+STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]))>24 ) AND
                                           ( (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])+STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]))<29 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END;
                             END; // IF (RB_SOMA8e9.Checked = TRUE)
                             IF (RB_NUMERO8e9.Checked = TRUE) THEN
                             BEGIN
                                  IF (CB_NUMERO_8e9.ItemIndex =0) THEN
                                  BEGIN
                                        IF (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])<>11 ) OR
                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2])<>11 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END ELSE
                                  IF (CB_NUMERO_8e9.ItemIndex =1) THEN
                                  BEGIN
                                        IF (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])<>12 ) OR
                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2])<>12 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END ELSE
                                  IF (CB_NUMERO_8e9.ItemIndex =2) THEN
                                  BEGIN
                                        IF (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])<>13 ) OR
                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2])<>13 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END ELSE
                                  IF (CB_NUMERO_8e9.ItemIndex =3) THEN
                                  BEGIN
                                        IF (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])<>14 ) OR
                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2])<>14 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END ELSE
                                  IF (CB_NUMERO_8e9.ItemIndex =4) THEN
                                  BEGIN
                                        IF (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2])<>15 ) OR
                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2])<>15 )
                                        THEN
                                             SLEEP(1)
                                        ELSE
                                             CONTINUE;
                                  END;
                             END; // IF (RB_NUMERO8e9.Checked = TRUE)
                             // *********************************************
                             // CONTAGEM DE PARES E ÍMPARES
                             // *********************************************
                              VSI_QTD_PAR   := 0;
                              VSI_QTD_IMPAR := 0;
                              FOR VI_CONTASEL1 := 1 TO 16 DO
                              BEGIN
                                   IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL1+1,VI_LINHAS2])) MOD 2) =0 THEN    // -- > CONTANDO PAR OU ÍMPAR
                                        VSI_QTD_PAR:= VSI_QTD_PAR + 1
                                   ELSE
                                        VSI_QTD_IMPAR:= VSI_QTD_IMPAR + 1;
                              END;
                              IF  (VSI_QTD_PAR <7) OR (VSI_QTD_PAR>8) THEN
                                   CONTINUE;
                              IF  (VSI_QTD_IMPAR <8) OR (VSI_QTD_PAR>9) THEN
                                   CONTINUE;

                              STGR_COMB15.Cells[0,VI_LINHAS2] := 'V';
                              STGR_COMB15.Cells[1,VI_LINHAS2] := 'V';
                              PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_TODOS_OS_16_Q2.RowCount-1));
                              IF (STGR_COMB15.Cells[0,VI_LINHAS2] = 'V') AND (STGR_COMB15.Cells[1,VI_LINHAS2] = 'V') THEN VI_LINHAS1 := VI_LINHAS1+1;
                              IF (STGR_COMB15.Cells[0,VI_LINHAS2] = 'V') AND (STGR_COMB15.Cells[1,VI_LINHAS2] = 'V') THEN VI_LINHAS2 := VI_LINHAS2+1;

               PGBR_GERARCOMB3.Position :=  TRUNC(VI_COMBINACOES1/(STGR_TODOS_OS_08_Q2.RowCount-1)*100);
               IF   (VI_COMBINACOES1 MOD 60) = 0 THEN
               BEGIN
                    STGR_BASE_SOMA2.REPAINT  ;
                    STGR_BASE_SOMA12_2.REPAINT  ;
                    Self.WindowState := wsMinimized;
                    Self.WindowState :=  wsNormal;
                    SELF.Repaint;
                    SLEEP(18);
                         LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1)+'   ';
                         LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
                         LA_QTD_COMB.Repaint;
                    LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_TODOS_OS_8.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_TODOS_OS_8.RowCount-1)*100))+ ' %  ';
                    PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_TODOS_OS_8.RowCount-1)*100);
                    LA_TOTAL_COMB.Repaint;
                    LA_GERAR_COMB.Repaint;
                    PGBR_GERARCOMB.Repaint;
                    STGR_COMB10.RowCount := VI_LINHAS2;
                    STGR_COMB10.Repaint;
                    STGR_COMB15.RowCount := VI_LINHAS2;
                    STGR_COMB15.Repaint;
               END;

     END; // FOR VI_COMBINACOES1
     PGBR_GERARCOMB3.Position := 100;
          STGR_COMB10.RowCount := VI_LINHAS2;
          STGR_COMB10.Repaint;
          STGR_COMB15.RowCount := VI_LINHAS2;
          STGR_COMB15.Repaint;     
               LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1)+'   ';
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(STGR_COMB10.RowCount-1);
               LA_QTD_COMB.Repaint;
          LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1-1)+ ' DE '+  INTtoSTR(STGR_TODOS_OS_8.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_TODOS_OS_8.RowCount-1)*100))+ ' %  ';
          PGBR_GERARCOMB.Position := 100  ;
          LA_GERAR_COMB.Repaint;
          PGBR_GERARCOMB.Repaint;
          PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_TODOS_OS_16_Q2.RowCount-1));
     PGBR_GERARCOMB.Repaint;

     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR_MENU.Enabled := false;
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';

     SELF.PR_SIMULAR_RECUPERANDODADOS('');
                   SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_0008EXC2_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTAR_COMB1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0008EXC2_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTAR_COMB1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_0008EXC2_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     PA_REMOVEUREPET.Left := 570;
end;


end.
