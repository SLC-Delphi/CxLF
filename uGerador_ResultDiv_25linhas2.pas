unit uGerador_ResultDiv_25linhas2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, IdBaseComponent, IdComponent, IdIPWatch ;

type
  T_F_Gerador_ResDiv_25Linhas2 = class(TForm)
    Pa_RemoveuRepetidos: TPanel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    La_rTOTAL_COMB: TLabel;
    La_rQTD_COMB: TLabel;
    Label58: TLabel;
    La_gINICIO_100REPET: TLabel;
    Label60: TLabel;
    Label49: TLabel;
    La_gFIM_100REPET: TLabel;
    La_gFIM_GERAR: TLabel;
    Bbt_RemoveuRepetidos: TBitBtn;
    Pa_Inicial: TPanel;
    Label55: TLabel;
    Btn_NovaSimulacao: TButton;
    Btn_Reajustar: TButton;
    Btn_Sair: TButton;
    Bbt_Cancelar: TBitBtn;
    Mem_Combinacoes_Todas: TMemo;
    Pa_Topo: TPanel;
    La_Titulo: TLabel;
    Bbt_Close: TImage;
    Pa_Resultado: TPanel;
    Stgr_Comb10: TStringGrid;
    Stgr_Todos_Numeros: TStringGrid;
    Pa_ExecutarFiltro: TPanel;
    Bbt_PrepararMenu: TBitBtn;
    Bbt_GerarMenu: TBitBtn;
    Pa_Titulo_Simulacao: TPanel;
    La_Gerar_Comb: TLabel;
    Pgbr_EtaPa_01: TProgressBar;
    Pa_Gerar: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    Bbt_Etapa01: TBitBtn;
    Bbt_Voltar: TBitBtn;
    Pa_Preparar: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Bbt_Preparar_OK: TBitBtn;
    Bbt_Preparar_Voltar: TBitBtn;
    Bbt_CancelarSair: TBitBtn;
    Scbx_Gabarito: TScrollBox;
    Label7: TLabel;
    Stgr_Base: TStringGrid;
    Pa_Fixos: TPanel;
    Label1: TLabel;
    Ed_FIXOS_01_7i8p: TEdit;
    Ed_FIXOS_02_7i8p: TEdit;
    Panel6: TPanel;
    Label6: TLabel;
    Ed_FIXOS_01_8i7p: TEdit;
    Ed_FIXOS_02_8i7p: TEdit;
    Bbt_BlocoNotas: TBitBtn;
    Scbx_dados: TScrollBox;
    Btn_BlocoDeNotas1: TButton;
    Stgr_Etapa01_09: TStringGrid;
    Ed_FIXOS_03_8i7p: TEdit;
    Btn_Carregar: TButton;
    Stgr_Etapa1_10: TStringGrid;
    Bevel1: TBevel;
    Label3: TLabel;
    Bbt_OK: TBitBtn;
    Label13: TLabel;
    Stgr_Base10: TStringGrid;
    Stgr_Etapa03_15: TStringGrid;
    Stgr_Etapa01_19: TStringGrid;
    Stgr_Etapa01_08: TStringGrid;
    Stgr_Etapa1_11: TStringGrid;
    Stgr_Etapa1_12: TStringGrid;
    Stgr_Etapa01_07: TStringGrid;
    Stgr_Etapa1_13: TStringGrid;
    Stgr_Etapa01_06: TStringGrid;
    Label4: TLabel;
    Pa_b15: TPanel;
    Rb_b15_11: TRadioButton;
    Rb_b15_10: TRadioButton;
    Rb_b15_09: TRadioButton;
    Rb_b15_08: TRadioButton;
    Rb_b15_07: TRadioButton;
    Label5: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Rb_b15_nda: TRadioButton;
    Label15: TLabel;
    Pa_b10: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Rb_b10_08: TRadioButton;
    Rb_b10_07: TRadioButton;
    Rb_b10_06: TRadioButton;
    Rb_b10_05: TRadioButton;
    Rb_b10_04: TRadioButton;
    Rb_b10_nda: TRadioButton;
    Pa_b15nda: TPanel;
    Trb_b15_L01: TTrackBar;
    Trb_b15_L02: TTrackBar;
    Trb_b15_L03: TTrackBar;
    Trb_b15_L04: TTrackBar;
    Trb_b15_L05: TTrackBar;
    Trb_b15_L06: TTrackBar;
    Trb_b15_L07: TTrackBar;
    Trb_b15_L08: TTrackBar;
    Trb_b15_L09: TTrackBar;
    Trb_b15_L10: TTrackBar;
    La_b15_L01: TLabel;
    La_b15_L02: TLabel;
    La_b15_L03: TLabel;
    La_b15_L04: TLabel;
    La_b15_L05: TLabel;
    La_b15_L06: TLabel;
    La_b15_L07: TLabel;
    La_b15_L08: TLabel;
    La_b15_L09: TLabel;
    La_b15_L10: TLabel;
    Pa_b10nda: TPanel;
    La_b10_L01: TLabel;
    La_b10_L02: TLabel;
    La_b10_L03: TLabel;
    La_b10_L04: TLabel;
    La_b10_L05: TLabel;
    La_b10_L06: TLabel;
    La_b10_L07: TLabel;
    La_b10_L08: TLabel;
    La_b10_L09: TLabel;
    La_b10_L10: TLabel;
    Stgr_Etapa01_10: TStringGrid;
    Stgr_Etapa1_09: TStringGrid;
    Stgr_Etapa1_14: TStringGrid;
    Stgr_Etapa01_05: TStringGrid;
    Stgr_Etapa1_15: TStringGrid;
    Stgr_Etapa01_04: TStringGrid;
    La_Tipo19: TLabel;
    Cb_tipo19: TComboBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Pgbr_EtaPa_01_01: TProgressBar;
    Label29: TLabel;
    Stgr_Etapa02_12: TStringGrid;
    Label30: TLabel;
    Stgr_Etapa02_06: TStringGrid;
    Label31: TLabel;
    Pgbr_EtaPa_02: TProgressBar;
    Pgbr_EtaPa_03: TProgressBar;
    Stgr_Etapa02_03: TStringGrid;
    Label32: TLabel;
    Pgbr_EtaPa_04: TProgressBar;
    Label33: TLabel;
    Bbt_Etapa03: TBitBtn;
    Label34: TLabel;
    Pgbr_EtaPa_05: TProgressBar;
    Stgr_Etapa06_05: TStringGrid;
    Stgr_Provas5_Blocos: TStringGrid;
    Label35: TLabel;
    Pgbr_EtaPa_06: TProgressBar;
    Stgr_Base25: TStringGrid;
    Pa_base25definicao: TPanel;
    La_b25_L01: TLabel;
    La_b25_L02: TLabel;
    La_b25_L03: TLabel;
    La_b25_L04: TLabel;
    La_b25_L05: TLabel;
    Trb_b25_L01: TTrackBar;
    Trb_b25_L02: TTrackBar;
    Trb_b25_L03: TTrackBar;
    Trb_b25_L04: TTrackBar;
    Trb_b25_L05: TTrackBar;
    Stgr_Triplas1: TStringGrid;
    Label36: TLabel;
    Stgr_Duplas1: TStringGrid;
    Cb_TriplasDuplas: TComboBox;
    Label37: TLabel;
    Label38: TLabel;
    Stgr_TriplasDuplas1: TStringGrid;
    Pgbr_EtaPa_07: TProgressBar;
    Label41: TLabel;
    Stgr_TriplasDuplas2: TStringGrid;
    Panel5: TPanel;
    Label40: TLabel;
    Panel4: TPanel;
    Label39: TLabel;
    Rb_ParImpMod1: TRadioButton;
    Rb_ParImpMod2: TRadioButton;
    Rb_ParImpMod3: TRadioButton;
    Rb_ParImpMod4: TRadioButton;
    Rb_ParImpMod5: TRadioButton;
    Rb_ParImpMod7: TRadioButton;
    Rb_ParImpMod6: TRadioButton;
    Pa_ProvaParImpar: TPanel;
    La_ppim1_01: TLabel;
    La_ppim1_02: TLabel;
    La_ppim1_03: TLabel;
    La_ppim1_04: TLabel;
    Trb_ppim1_01: TTrackBar;
    Trb_ppim1_02: TTrackBar;
    Trb_ppim1_03: TTrackBar;
    Trb_ppim1_04: TTrackBar;
    Panel3: TPanel;
    La_ppim2_01: TLabel;
    La_ppim2_02: TLabel;
    La_ppim2_03: TLabel;
    La_ppim2_04: TLabel;
    Trb_ppim2_01: TTrackBar;
    Trb_ppim2_02: TTrackBar;
    Trb_ppim2_03: TTrackBar;
    Trb_ppim2_04: TTrackBar;
    Stgr_ppi_A: TStringGrid;
    Stgr_ppi_B: TStringGrid;
    Stgr_ppi_C: TStringGrid;
    Stgr_ppi_D: TStringGrid;
    Label8: TLabel;
    Cb_ppim_LinhaAB: TComboBox;
    Label9: TLabel;
    Cb_ppim_LinhaCD: TComboBox;
    Pa_Preencher5: TPanel;
    Bbt_Recomecar: TBitBtn;
    Bbt_701: TBitBtn;
    Bbt_703: TBitBtn;
    Bbt_705: TBitBtn;
    Bbt_707: TBitBtn;
    Bbt_709: TBitBtn;
    Bbt_717: TBitBtn;
    Bbt_715: TBitBtn;
    Bbt_713: TBitBtn;
    Bbt_711: TBitBtn;
    Bbt_719: TBitBtn;
    Bbt_721: TBitBtn;
    Bbt_723: TBitBtn;
    Bbt_725: TBitBtn;
    Bbt_702: TBitBtn;
    Bbt_712: TBitBtn;
    Bbt_720: TBitBtn;
    Bbt_722: TBitBtn;
    Bbt_724: TBitBtn;
    Bbt_718: TBitBtn;
    Bbt_710: TBitBtn;
    Bbt_708: TBitBtn;
    Bbt_716: TBitBtn;
    Bbt_714: TBitBtn;
    Bbt_706: TBitBtn;
    Bbt_704: TBitBtn;
    Bbt_MontarBloco25: TBitBtn;
    Bbt_OkBase25: TBitBtn;
    Bbt_PreencherPadrao: TBitBtn;
    Bbt_EditarBlase25: TBitBtn;
    Stgr_Bloco01: TStringGrid;
    Stgr_Bloco02: TStringGrid;
    Bevel2: TBevel;
    Label42: TLabel;
    Label43: TLabel;
    Cb_ImparesPares: TComboBox;
    Label44: TLabel;
    Label48: TLabel;
    Cb_Blocos5: TComboBox;
    Label50: TLabel;
    Pa_Limitador23: TPanel;
    Label51: TLabel;
    Stgr_Limitador23_Grupo1A: TStringGrid;
    Stgr_Limitador23_Grupo1B: TStringGrid;
    Stgr_Limitador23_Grupo1C: TStringGrid;
    Stgr_Limitador23_Grupo1D: TStringGrid;
    Stgr_Limitador23_Grupo2D: TStringGrid;
    Stgr_Limitador23_Grupo2C: TStringGrid;
    Stgr_Limitador23_Grupo2B: TStringGrid;
    Stgr_Limitador23_Grupo2A: TStringGrid;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    cbLimitador23: TComboBox;
    btLimitador23: TButton;
    Stgr_Limitador23_comb02: TStringGrid;
    Stgr_Limit23_comb23: TStringGrid;
    Panel7: TPanel;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Stgr_Limitador19_Grupo1A: TStringGrid;
    Stgr_Limitador19_Grupo1B: TStringGrid;
    Stgr_Limitador19_Grupo1C: TStringGrid;
    Stgr_Limitador19_Grupo1D: TStringGrid;
    Stgr_Limitador19_Grupo2D: TStringGrid;
    Stgr_Limitador19_Grupo2C: TStringGrid;
    Stgr_Limitador19_Grupo2B: TStringGrid;
    Stgr_Limitador19_Grupo2A: TStringGrid;
    btLimitador19: TButton;
    Stgr_Limit19_comb19: TStringGrid;
    Stgr_Limitador19_comb06: TStringGrid;
    Stgr_Limit23_pre13A5: TStringGrid;
    Stgr_Limit23_pre13B2: TStringGrid;
    Stgr_Limit23_pre13A4: TStringGrid;
    Stgr_Limit23_pre13B3: TStringGrid;
    Stgr_Limit23_pre13A3: TStringGrid;
    Stgr_Limit23_pre13B4: TStringGrid;
    Stgr_Limit23_pre13C3: TStringGrid;
    Stgr_Limit23_pre13D3: TStringGrid;
    Stgr_Limit23_comb13: TStringGrid;
    Stgr_Limit23_comb10: TStringGrid;
    Stgr_Limit23_comb15: TStringGrid;
    Label61: TLabel;
    Pgbr_EtaPa_08: TProgressBar;
    Stgr_Limit19_pre09a4: TStringGrid;
    Stgr_Limit19_pre09b1: TStringGrid;
    Stgr_Limit19_pre09a3: TStringGrid;
    Stgr_Limit19_pre09b2: TStringGrid;
    Stgr_Limit19_pre09a2: TStringGrid;
    Stgr_Limit19_pre09b3: TStringGrid;
    Stgr_Limit19_pre09c2: TStringGrid;
    Stgr_Limit19_pre09d2: TStringGrid;
    Stgr_Limit19_comb09: TStringGrid;
    Pgbr_EtaPa_09: TProgressBar;
    Stgr_Limit19_comb10: TStringGrid;
    Stgr_Limit19_comb15: TStringGrid;
    Label62: TLabel;
    cbLimitador19: TComboBox;
    Bbt_PreparaRank: TBitBtn;
    Label65: TLabel;
    Label66: TLabel;
    La_NUltimoTRank1: TLabel;
    La_DtRank1: TLabel;
    Panel8: TPanel;
    Stgr_CapturarLinha: TStringGrid;
    La_DtRank2: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    La_NUltimoTRank2: TLabel;
    Cb_Rank1: TComboBox;
    Label64: TLabel;
    Label67: TLabel;
    La_NLinhaRank2: TLabel;
    Label68: TLabel;
    La_NLinhaRank1: TLabel;
    Stgr_E11n11: TStringGrid;
    Stgr_E11n14: TStringGrid;
    Label71: TLabel;
    cbLimitador11p14: TComboBox;
    Pgbr_EtaPa_10: TProgressBar;
    Pgbr_EtaPa_11: TProgressBar;
    Label72: TLabel;
    Stgr_E11_AC10de11: TStringGrid;
    btLimit11p14t: TButton;
    Label73: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    Label74: TLabel;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    StringGrid6: TStringGrid;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    StringGrid7: TStringGrid;
    StringGrid8: TStringGrid;
    Label79: TLabel;
    StringGrid9: TStringGrid;
    StringGrid05: TStringGrid;
    Stgr_E11Bloco1d4Numero4Qtd2: TStringGrid;
    Stgr_E11Bloco1d4Numero3Qtd1: TStringGrid;
    Stgr_E11Bloco1d4Numero2Qtd1: TStringGrid;
    Stgr_E11Bloco1d4Numero1Qtd1: TStringGrid;
    Label80: TLabel;
    Stgr_E11Bloco1d4Result5: TStringGrid;
    Label81: TLabel;
    Stgr_E11Bloco2d4Result5: TStringGrid;
    Label82: TLabel;
    Stgr_E11Bloco2d4Numero3Qtd2: TStringGrid;
    Stgr_E11Bloco2d4Numero4Qtd1: TStringGrid;
    Stgr_E11Bloco2d4Numero2Qtd1: TStringGrid;
    Stgr_E11Bloco2d4Numero1Qtd1: TStringGrid;
    Label83: TLabel;
    Stgr_E11Bloco3d4Result5: TStringGrid;
    Label84: TLabel;
    Stgr_E11Bloco3d4Numero4Qtd1: TStringGrid;
    Stgr_E11Bloco3d4Numero2Qtd2: TStringGrid;
    Stgr_E11Bloco3d4Numero3Qtd1: TStringGrid;
    Stgr_E11Bloco3d4Numero1Qtd1: TStringGrid;
    Label85: TLabel;
    Label86: TLabel;
    Stgr_E11Bloco4d4Numero2Qtd1: TStringGrid;
    Stgr_E11Bloco4d4Numero1Qtd2: TStringGrid;
    Stgr_E11Bloco4d4Numero3Qtd1: TStringGrid;
    Stgr_E11Bloco4d4Numero4Qtd1: TStringGrid;
    Stgr_E11Bloco4d4Result5: TStringGrid;
    Label87: TLabel;
    Label88: TLabel;
    Stgr_E11Bloco1d2Numero1Qtd2: TStringGrid;
    Stgr_E11Bloco1d2Numero2Qtd3: TStringGrid;
    Stgr_E11Bloco1d5Result5: TStringGrid;
    Label89: TLabel;
    Stgr_E11Bloco2d2Numero2Qtd2: TStringGrid;
    Stgr_E11Bloco2d2Numero1Qtd3: TStringGrid;
    Stgr_E11Bloco2d2Result5: TStringGrid;
    Stgr_Etp11Bloc4: TStringGrid;
    Stgr_E11Parte3Fase1_Qtd02: TStringGrid;
    Stgr_E11Parte3Fase1_Qtd10: TStringGrid;
    Stgr_E11Parte3Fase2_Qtd12: TStringGrid;
    Stgr_E11Parte3Fase3_Qtd05: TStringGrid;
    procedure Bbt_Preparar_OKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Bbt_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bbt_PrepararMenuClick(Sender: TObject);
    procedure Btn_NovaSimulacaoClick(Sender: TObject);
    procedure Bbt_Preparar_VoltarClick(Sender: TObject);
    procedure Btn_SairClick(Sender: TObject);
    procedure Bbt_CancelarClick(Sender: TObject);
    procedure Bbt_Etapa01Click(Sender: TObject);
    procedure Bbt_GerarMenuClick(Sender: TObject);
    procedure Btn_ReajustarClick(Sender: TObject);
    procedure Bbt_CARREGARClick(Sender: TObject);
    procedure Bbt_VoltarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Bbt_BlocoNotasClick(Sender: TObject);
    procedure Btn_CarregarClick(Sender: TObject);
    procedure Bbt_OKClick(Sender: TObject);
    procedure Bbt_RemoveuRepetidosClick(Sender: TObject);
    procedure Rb_b15_09Click(Sender: TObject);
    procedure Trb_b15_L01Change(Sender: TObject);
    procedure Trb_b15_L02Change(Sender: TObject);
    procedure Trb_b15_L03Change(Sender: TObject);
    procedure Trb_b15_L04Change(Sender: TObject);
    procedure Trb_b15_L05Change(Sender: TObject);
    procedure Trb_b15_L06Change(Sender: TObject);
    procedure Trb_b15_L07Change(Sender: TObject);
    procedure Trb_b15_L08Change(Sender: TObject);
    procedure Trb_b15_L09Change(Sender: TObject);
    procedure Trb_b15_L10Change(Sender: TObject);
    procedure Rb_b15_07Click(Sender: TObject);
    procedure Rb_b15_08Click(Sender: TObject);
    procedure Rb_b15_10Click(Sender: TObject);
    procedure Rb_b15_11Click(Sender: TObject);
    procedure Rb_b15_ndaClick(Sender: TObject);
    procedure Trb_b25_L01Change(Sender: TObject);
    procedure Trb_b25_L02Change(Sender: TObject);
    procedure Trb_b25_L03Change(Sender: TObject);
    procedure Trb_b25_L04Change(Sender: TObject);
    procedure Trb_b25_L05Change(Sender: TObject);
    procedure Bbt_Etapa03Click(Sender: TObject);
    procedure Trb_ppim1_01Change(Sender: TObject);
    procedure Trb_ppim1_04Change(Sender: TObject);
    procedure Trb_ppim1_03Change(Sender: TObject);
    procedure Trb_ppim1_02Change(Sender: TObject);
    procedure Rb_ParImpMod1Click(Sender: TObject);
    procedure Rb_ParImpMod2Click(Sender: TObject);
    procedure Rb_ParImpMod3Click(Sender: TObject);
    procedure Rb_ParImpMod4Click(Sender: TObject);
    procedure Trb_ppim2_01Change(Sender: TObject);
    procedure Trb_ppim2_02Change(Sender: TObject);
    procedure Trb_ppim2_03Change(Sender: TObject);
    procedure Trb_ppim2_04Change(Sender: TObject);
    procedure Rb_ParImpMod5Click(Sender: TObject);
    procedure Rb_ParImpMod6Click(Sender: TObject);
    procedure Rb_ParImpMod7Click(Sender: TObject);
    procedure Bbt_RecomecarClick(Sender: TObject);
    procedure Bbt_701Click(Sender: TObject);
    procedure Bbt_702Click(Sender: TObject);
    procedure Bbt_703Click(Sender: TObject);
    procedure Bbt_704Click(Sender: TObject);
    procedure Bbt_705Click(Sender: TObject);
    procedure Bbt_EditarBlase25Click(Sender: TObject);
    procedure Bbt_706Click(Sender: TObject);
    procedure Bbt_707Click(Sender: TObject);
    procedure Bbt_708Click(Sender: TObject);
    procedure Bbt_709Click(Sender: TObject);
    procedure Bbt_710Click(Sender: TObject);
    procedure Bbt_711Click(Sender: TObject);
    procedure Bbt_712Click(Sender: TObject);
    procedure Bbt_713Click(Sender: TObject);
    procedure Bbt_714Click(Sender: TObject);
    procedure Bbt_715Click(Sender: TObject);
    procedure Bbt_716Click(Sender: TObject);
    procedure Bbt_717Click(Sender: TObject);
    procedure Bbt_718Click(Sender: TObject);
    procedure Bbt_719Click(Sender: TObject);
    procedure Bbt_720Click(Sender: TObject);
    procedure Bbt_721Click(Sender: TObject);
    procedure Bbt_722Click(Sender: TObject);
    procedure Bbt_723Click(Sender: TObject);
    procedure Bbt_724Click(Sender: TObject);
    procedure Bbt_725Click(Sender: TObject);
    procedure Bbt_MontarBloco25Click(Sender: TObject);
    procedure Bbt_OkBase25Click(Sender: TObject);
    procedure Bbt_PreencherPadraoClick(Sender: TObject);
    procedure btLimitador23Click(Sender: TObject);
    procedure btLimitador19Click(Sender: TObject);
    procedure Bbt_PreparaRankClick(Sender: TObject);
    procedure btLimit11p14tClick(Sender: TObject);
  private
    F_MODALIDADE: String;
    Fvi_inicial1: Integer;
    Fvi_final1: Integer;
    { Private declarations }
    procedure Set_MODALIDADE(const Value: String);
    procedure LimparGrid_Comb15();
    Procedure LimparGrid19 ();    
    procedure Setvi_final1E(const Value: Integer);
    procedure Setvi_inicial1(const Value: Integer);
    Procedure Ordenar_Comb19 (viLinhas9: Integer);
    Procedure AnaliseComb_09e10();
    Procedure AnaliseComb_10e09();
    Procedure AnaliseComb_11e08();
    Procedure AnaliseComb_12e07();
    Procedure AnaliseComb_13e06();
    Procedure AnaliseComb_14e05();
    Procedure AnaliseComb_15e04();
    Function QtdPares19 (viLinhas:Integer) : boolean;
    Procedure Gerar19_09e10();       
    Procedure Gerar19_10e09();
    Procedure Gerar19_11e08();
    Procedure Gerar19_12e07();
    Procedure Gerar19_13e06();
    Procedure Gerar19_14e05();
    Procedure Gerar19_15e04();
    Function FN_VALIDAR_ETAPa_2_parte1(viLinhas, viSoma: Integer) : Boolean;
    Function FN_VALIDAR_ETAPa_2_parte2(viLinhas, viSoma: Integer) : Boolean;
    Procedure AnaliseComb_06e03();
    Function Validar_Blocos1e2 (viLinhas01: Integer):boolean;
    Function Validar_LinhasFinais (viLinhas01: Integer):boolean;
    Function Validar_LinhasIniciais (viLinhas01: Integer):boolean;
    Function Validar_ppi_A (viLinhas01: Integer):boolean;
    Function Validar_ppi_C (viLinhas01: Integer):boolean;
    Function Validar_Etapa6BlocosA(viLinhas01: Integer):boolean;
    Function Validar_Etapa6BlocosB(viLinhas01: Integer):boolean;
    Function Validar_Etapa6BlocosC(viLinhas01: Integer):boolean;
     Function Validar_Etapa7TDm1(viLinhas01, vi_Finalfor: Integer):boolean;
     Function Validar_Etapa7TDm2(viLinhas01, vi_Finalfor: Integer):boolean;
     Function Validar_Etapa7TD(viLinhas01: Integer):boolean;
    Procedure BotoesBase25False ();
    Procedure BotoesBase25Add (vi_Numero: Integer);
    Procedure MontaBase10();
    Procedure OrdernarBase();
    Procedure GerarBlocoNotas1(vc_Nome_Tabela, vcTitulo, vcSubTitulo: String) ;
    Function Contar19em21_22_23_24_25(viLinhas : Integer) : boolean;
    Function Contar12em21_22_23_24_25(viLinhas : Integer) : boolean;
    Procedure Todos_Numeros_2emF();
    Procedure PR_Gravar_Dados23_1Tm15 ();
    Procedure MontarGrid15(viLinhas01: Integer);
    Procedure Gerar23Etapa8();
    Procedure PR_Gravar_Dados23Comb15 (vcNomeTabela: String);
    Function QtdPares19_e9 (viLinhas:Integer) : boolean;
    Procedure Gerar19Etapa9();
    Procedure VerAtualizarRank;
    Procedure GerarE11_AC10de11();
    Procedure GerarE11_Bloco4AC1de4 ();
    Procedure GerarE11_Bloco4AC2de4 ();
    Procedure GerarE11_Bloco4AC1de3 ();
    Procedure GerarE11_Bloco4AC2de3 ();
    Procedure GerarE11_Bloco1d4_5Colunas ();
    Procedure GerarE11_Bloco2d4_5Colunas ();
    Procedure GerarE11_Bloco3d4_5Colunas ();
    Procedure GerarE11_Bloco4d4_5Colunas ();
    procedure GerarE11_Bloco4_15Colunas ();
    procedure GerarE11_Bloco2AC3de7 ();
    procedure GerarE11_Bloco2AC2de7 ();
    procedure GerarE11_Bloco1d2_5Colunas ();
    procedure GerarE11_Bloco2d2_5Colunas ();
    procedure GerarE11_Bloco2_15Colunas();
    Procedure GerarE11_AC01de10comSobra ();
    Procedure GerarE11_AC10de14 ();
    Procedure JuntarE11Parte3 ();
    procedure GerarE11_AC05de10p3();
    Procedure GerarE11_p3todos15n ();
  public
    { Public declarations }
     PROPERTY _MODALIDADE : String   read F_MODALIDADE write Set_MODALIDADE;
     PROPERTY vi_inicial1 : Integer  read Fvi_inicial1 write Setvi_inicial1;
     PROPERTY vi_final1   : Integer  read Fvi_final1   write Setvi_final1E;
  end;

var
  _F_Gerador_ResDiv_25Linhas2: T_F_Gerador_ResDiv_25Linhas2;
  vs_Base25 : String;
//  vas_Base : array [1..16,1..10] of shortint;
//  vas_Base10 : array [1..11,1..10] of shortint;

implementation

{$R *.dfm}

uses uDataModule01, uGeradorRanking01;


Procedure T_F_Gerador_ResDiv_25Linhas2.Set_MODALIDADE(const Value: String);
begin
  F_MODALIDADE := Value;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Setvi_final1E(const Value: Integer);
begin
  Fvi_final1 := Value;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Setvi_inicial1(const Value: Integer);
begin
  Fvi_inicial1 := Value;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.FormCreate(Sender: TObject);
begin
     SELF.ClientWidth  := 1475;
     SELF.ClientHeight := 695;
     SELF.Top  := 59;
     SELF.Left := 9;
   //  SELF.Visible := TRUE;
     Bbt_close.Left := SELF.ClientWidth-35;
          Pa_RemoveuRepetidos.Left := 5000;
     Pa_Preparar.Left := 5000;
     Pa_Gerar.Left := 5000;
     Scbx_Gabarito.Visible := false;
     Pa_Resultado.Visible := false;
     Pa_Inicial.Enabled := TRUE;
     Pa_Inicial.Left := 520;
     Pa_Inicial.Top := 160;
    Pa_ExecutarFiltro.Enabled := false;
    Bbt_CancelarSair.Visible := false;
    Bbt_PreencherPadrao.Click;
    VerAtualizarRank();
        try
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
        except
            //
        end; // try
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.FormActivate(Sender: TObject);
begin
      IF (SELF._MODALIDADE ='GERADOR') THEN
      begin
          La_Titulo.Caption             := 'GERADOR Resultados a partit de 25 Linhas2';
       //   Cb_Classificacao17.ItemIndex := 0;
       //   Cb_Classificacao17.Enabled := True;
      END ELSE
      BEGIN
          La_Titulo.Caption             := 'SIMULAR a Partir de 25 Linhas2';
       //   Cb_Classificacao17.Enabled := True;
          Btn_NovaSimulacao.Click;
      end;
      La_Titulo.Repaint;
    Rb_ParImpMod2.Checked := True;
    Rb_ParImpMod1.Checked := True;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     TRY
          BEGIN
          DM1.IBQ_Combinacoes.Close;
          DM1.IBDatabase1.Close;
          END
     EXCEPT
     //
     END; // TRY
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_CloseClick(Sender: TObject);
begin
     SELF.Close;
end;







Procedure T_F_Gerador_ResDiv_25Linhas2.Btn_NovaSimulacaoClick(Sender: TObject);
begin
     Pa_Resultado.Enabled := TRUE;
  //   Rb_RESULTADOS.SetFocus;
  //   Rb_RES_GABARITOS.SetFocus;
     Scbx_Gabarito.Visible := TRUE;
     Scbx_Gabarito.Enabled := TRUE;
     Pa_Resultado.Visible := TRUE;
     Pa_Resultado.Enabled := TRUE;
     Pa_ExecutarFiltro.Enabled := TRUE;
     Bbt_PrepararMenu.Enabled := TRUE;
     Bbt_GerarMenu.Enabled := false;
     Bbt_GerarMenu.Enabled := false;
     Bbt_CancelarSair.Visible := false;
     Pa_Inicial.Enabled := false;
     Pa_Inicial.Left := 2198;
     Scbx_Gabarito.Top:=247;
     Scbx_Gabarito.Repaint;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Btn_SairClick(Sender: TObject);
begin
     SELF.Close;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_CancelarClick(Sender: TObject);
begin
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('COMMIT;')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
          SELF.Close;
end;




Procedure T_F_Gerador_ResDiv_25Linhas2.LimparGrid_Comb15();
var
    viContaSel1: Integer;
begin
    Stgr_Etapa03_15.CleanupInstance;
    //Stgr_Comb15_p5.Free;
    freeANDnil(Stgr_Etapa03_15);
    sleep (250);
    Scbx_dados.HorzScrollBar.Position := 9227;
    Scbx_dados.Repaint;
    Stgr_Etapa03_15 := TStringGrid.Create(Self);
    Stgr_Etapa03_15.Visible := False;
    Stgr_Etapa03_15.Parent := Scbx_dados;
    with Stgr_Etapa03_15 do
    begin
      Left := 218     ;
      Top := 18       ;
      Width := 645      ;
      Height := 275     ;
      TabStop := False     ;
      Align := alCustom    ;
      Color := 14017159    ;
      ColCount := 19          ;
      DefaultColWidth := 27   ;
      DefaultRowHeight := 25  ;
      FixedColor := clMedGray ;
      FixedCols := 2      ;
      RowCount := 2       ;
      Font.Charset := DEFAULT_CHARSET ;
      Font.Color := clWindowText     ;
      Font.Height := -16           ;
      Font.Name := 'Times New Roman'      ;
      Font.Style := []         ;
      GridLineWidth := 2 ;
      Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
      ParentFont := False ;
      TabOrder := 0       ;
    end; // with
    Stgr_Etapa03_15.ColWidths [0]:= 55 ;
    Stgr_Etapa03_15.ColWidths [1]:= 40 ;
    Stgr_Etapa03_15.RowCount := 1;
    Stgr_Etapa03_15.Repaint;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.LimparGrid19 ();
begin
    Stgr_Etapa01_19.CleanupInstance;
    Stgr_Etapa01_19.Free;
    Scbx_dados.HorzScrollBar.Position := 7316;
    Scbx_dados.Repaint;
    Stgr_Etapa01_19 := TStringGrid.Create(Self);
    Stgr_Etapa01_19.Parent := Scbx_dados;
    with  Stgr_Etapa01_19 do
    begin
        Left := 75       ;
        Top := 19        ;
        Width := 772     ;
        Height := 272    ;
        TabStop := False ;
        Anchors := [akLeft, akTop, akBottom] ;
        Color := 14017159;
        ColCount := 24   ;
        Ctl3D := False   ;
        DefaultColWidth := 27 ;
        DefaultRowHeight := 25  ;
        FixedColor := clMedGray  ;
        FixedCols := 2    ;
        RowCount := 8     ;
        Font.Charset := DEFAULT_CHARSET ;
        Font.Color := clWindowText   ;
        Font.Height := -15 ;
        Font.Name := 'Times New Roman' ;
        Font.Style := []   ;
        GridLineWidth := 2 ;
        Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
        ParentCtl3D := False;
        ParentFont := False ;
        TabOrder := 3    ;
    end;
    Stgr_Etapa01_19.ColWidths [0]:= 60 ;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_PrepararMenuClick(Sender: TObject);
begin
     Pa_Preparar.Visible := TRUE;
     Pa_Preparar.Enabled := TRUE;
     Pa_Preparar.Top  := 245;
     Pa_Preparar.Left := 460;
     Pa_Preparar.Repaint;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_Preparar_VoltarClick(Sender: TObject);
begin
    Self.BotoesBase25False();
    Pa_Preparar.Visible := false;
    Pa_Preparar.Enabled := false;
    Pa_Preparar.Left := 4500;
    Pa_Preparar.Repaint;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_Preparar_OKClick(Sender: TObject);
Begin


     DM1.IBQ_Combinacoes.Close;
     IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_Linhas2_DEF')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_FINAL')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     SELF.Repaint;

     Pa_Preparar.Visible := false;
     Pa_Preparar.Enabled := false;
     Pa_Preparar.Left := 4500;
     Pa_Preparar.Repaint;

     Bbt_PrepararMenu.Enabled := TRUE;
     Bbt_GerarMenu.Enabled := TRUE;
     Bbt_GerarMenu.Enabled := TRUE;
     SHOWMESSAGE('OK');
end;




Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_PreparaRankClick(Sender: TObject);
begin
   Application.CreateForm(T_F_GeradorRanking01, _F_GeradorRanking01);
   _F_GeradorRanking01.ShowModal;
   _F_GeradorRanking01.Release;
    VerAtualizarRank();
   MessageDlg('Rank criado / atualizado',mtInformation,[mbOk],0);
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_GerarMenuClick(Sender: TObject);
begin
    if not((Trb_b25_L01.Position + Trb_b25_L02.Position + Trb_b25_L03.Position + Trb_b25_L04.Position + Trb_b25_L05.Position) = 15) then
    begin
        SHOWMESSAGE('O total de quantidades das Linhas 21, 22, 23, 24 e 25' + #13+#13+'tem de ser igual a 15. Favor acertar');
        Trb_b25_L01.SetFocus;
        Exit;
    end; /// if
     Pa_Gerar.Visible := TRUE;
     Pa_Gerar.Enabled := TRUE;
     Pa_Gerar.Top  := 125;
     Pa_Gerar.Left := 150;;//660;
     Pa_Gerar.Repaint;
    La_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
end;



Function T_F_Gerador_ResDiv_25Linhas2.QtdPares19 (viLinhas:Integer) : boolean;
var
     viComb19_01, viContaSel1 : Integer;
begin
    viContaSel1 := 0;
    for viComb19_01:=2 to 20 do
    begin
        IF (STRtoINT(Stgr_Etapa01_19.Cells[viComb19_01,viLinhas]) MOD 2)=0 THEN
        BEGIN
             viContaSel1:= viContaSel1 +1;
        END;// IF
    END; // FOR
    if viContaSel1 = 10 then
    begin
        result := True;
        exit;
    end;
    result := False;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Ordenar_Comb19 (viLinhas9: Integer);
var
    viContar, viCntCelulas: Integer;
begin
      // ************************
    // **  Ordena os dados   **
     // ************************
    FOR viContar :=1 TO 25 DO
    BEGIN
        Stgr_Todos_Numeros.Cells[viContar,1] :='F';
    END; // FOR viContar
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
    FOR viContar :=2 TO 21 DO
    BEGIN
        Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa01_19.Cells[viContar,viLinhas9])) ,1]:='V';
    END; // FOR viContar1
    viCntCelulas := 2;
    FOR viContar :=1 TO 25 DO
    BEGIN
        IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') THEN
        BEGIN
            Stgr_Etapa01_19.Cells[viCntCelulas, viLinhas9] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
            viCntCelulas := viCntCelulas + 1;
        END; // IF (Stgr_Todos_Numeros
    END; // FOR viContar
end; // Procedure PR_Ordenar_Simulacao_15_8i7p


Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_09e10();
var
     viCombinacoes1, viLinhas01, vi_Base10Comb : Integer;
     viComb15_01, viComb15_02, viComb15_03, viComb15_04, viComb15_05, viComb15_06, viComb15_07, viComb15_08, viComb15_09 : Integer;
     viComb10_01, viComb10_02, viComb10_03, viComb10_04, viComb10_05, viComb10_06, viComb10_07, viComb10_08, viComb10_09, viComb10_10 : Integer;
begin
    Pgbr_EtaPa_01.Position :=0 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Pgbr_EtaPa_01.Position := 0;
    Pgbr_EtaPa_01.Repaint;

    Stgr_Etapa01_10.RowCount := viLinhas01;
    Stgr_Etapa1_09.RowCount := viLinhas01;
    Stgr_Etapa01_10.Repaint;
    Stgr_Etapa1_09.Repaint;
    Scbx_dados.HorzScrollBar.Position := 0;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viCombinacoes1 := 1;
    viLinhas01 := 1  ;
    try
        for vi_Base10Comb := 1 TO (Stgr_Base.RowCount-1) DO
        BEGIN
            for viComb15_01 := 2 TO 08 DO
            BEGIN
                for viComb15_02 := viComb15_01 + 1 TO 09 DO
                BEGIN
                    for viComb15_03 := viComb15_02 + 1 TO 10-0 DO  //-6
                    BEGIN
                        for viComb15_04 := viComb15_03 + 1 TO 11-0 DO
                        BEGIN
                            for viComb15_05 := viComb15_04 + 1 TO 12-0 DO
                            BEGIN
                                for viComb15_06 := viComb15_05 + 1 TO 13-0 DO
                                BEGIN
                                    for viComb15_07 := viComb15_06 + 1 TO 14-0 do
                                    BEGIN
                                        for viComb15_08 := viComb15_07 + 1 TO 15-0 DO
                                            BEGIN
                                            for viComb15_09 := viComb15_08 + 1 TO 16-0 DO
                                            BEGIN
                                                Stgr_Etapa1_09.Cells[00,viLinhas01] := viLinhas01.ToString ;
                                                Stgr_Etapa1_09.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                Stgr_Etapa1_09.Cells[02,viLinhas01] := Stgr_Base.Cells[viComb15_01,vi_Base10Comb] ;
                                                Stgr_Etapa1_09.Cells[03,viLinhas01] := Stgr_Base.Cells[viComb15_02,vi_Base10Comb] ;
                                                Stgr_Etapa1_09.Cells[04,viLinhas01] := Stgr_Base.Cells[viComb15_03,vi_Base10Comb] ;
                                                Stgr_Etapa1_09.Cells[05,viLinhas01] := Stgr_Base.Cells[viComb15_04,vi_Base10Comb] ;
                                                Stgr_Etapa1_09.Cells[06,viLinhas01] := Stgr_Base.Cells[viComb15_05,vi_Base10Comb] ;
                                                Stgr_Etapa1_09.Cells[07,viLinhas01] := Stgr_Base.Cells[viComb15_06,vi_Base10Comb] ;
                                                Stgr_Etapa1_09.Cells[08,viLinhas01] := Stgr_Base.Cells[viComb15_07,vi_Base10Comb] ;
                                                Stgr_Etapa1_09.Cells[09,viLinhas01] := Stgr_Base.Cells[viComb15_08,vi_Base10Comb] ;
                                                Stgr_Etapa1_09.Cells[10,viLinhas01] := Stgr_Base.Cells[viComb15_09,vi_Base10Comb] ;
                                                viLinhas01 := viLinhas01 + 1;
                                            END; //  for viComb15_09
                                        END; //  for viComb15_08
                                    END; //  for viComb15_07
                                END; //  for viComb15_06
                            END; //  for viComb15_05
                        Stgr_Etapa1_09.RowCount := viLinhas01;
                        Stgr_Etapa1_09.Repaint;
                sleep(1);
                        END; //  for viComb15_04
                    END; //  for viComb15_03
                END; //  for viComb15_02
            END; //  for viComb15_01
        END; //  for vi_Base10Comb
    viLinhas01 := 1  ;
    sleep(55);
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb10_01 := 2 TO 02 DO
            BEGIN
                for viComb10_02 := viComb10_01 + 1 TO 03 DO
                BEGIN
                    for viComb10_03 := viComb10_02 + 1 TO 04 DO
                    BEGIN
                        for viComb10_04 := viComb10_03 + 1 TO 05 DO
                        BEGIN
                            for viComb10_05 := viComb10_04 + 1 TO 06 DO
                            BEGIN
                                for viComb10_06 := viComb10_05 + 1 TO 07 DO
                                BEGIN
                                    for viComb10_07 := viComb10_06 + 1 TO 08 DO
                                    BEGIN
                                        for viComb10_08 := viComb10_07 + 1 TO 09 DO
                                            BEGIN
                                            for viComb10_09 := viComb10_08 + 1 TO 10 DO
                                            BEGIN
                                                for viComb10_10 := viComb10_09 + 1 TO 11 DO
                                                BEGIN
                                                    Stgr_Etapa01_10.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                    Stgr_Etapa01_10.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                    Stgr_Etapa01_10.Cells[02,viLinhas01] := Stgr_Base10.Cells[viComb10_01,vi_Base10Comb] ;
                                                    Stgr_Etapa01_10.Cells[03,viLinhas01] := Stgr_Base10.Cells[viComb10_02,vi_Base10Comb] ;
                                                    Stgr_Etapa01_10.Cells[04,viLinhas01] := Stgr_Base10.Cells[viComb10_03,vi_Base10Comb] ;
                                                    Stgr_Etapa01_10.Cells[05,viLinhas01] := Stgr_Base10.Cells[viComb10_04,vi_Base10Comb] ;
                                                    Stgr_Etapa01_10.Cells[06,viLinhas01] := Stgr_Base10.Cells[viComb10_05,vi_Base10Comb] ;
                                                    Stgr_Etapa01_10.Cells[07,viLinhas01] := Stgr_Base10.Cells[viComb10_06,vi_Base10Comb] ;
                                                    Stgr_Etapa01_10.Cells[08,viLinhas01] := Stgr_Base10.Cells[viComb10_07,vi_Base10Comb] ;
                                                    Stgr_Etapa01_10.Cells[09,viLinhas01] := Stgr_Base10.Cells[viComb10_08,vi_Base10Comb] ;
                                                    Stgr_Etapa01_10.Cells[10,viLinhas01] := Stgr_Base10.Cells[viComb10_09,vi_Base10Comb] ;
                                                    Stgr_Etapa01_10.Cells[11,viLinhas01] := Stgr_Base10.Cells[viComb10_10,vi_Base10Comb] ;
                                                    viLinhas01 := viLinhas01 + 1;
                                                END; //  for viComb10_10
                                            END; //  for viComb10_09
                                        END; //  for viComb10_08
                                    END; //  for viComb10_07
                                END; //  for viComb10_06
                            END; //  for viComb10_05
                            Stgr_Etapa01_10.RowCount := viLinhas01;
                            Stgr_Etapa01_10.Repaint;
                sleep(1);
                        END; //  for viComb10_04
                    END; //  for viComb10_03
                END; //  for viComb10_02
            END; //  for viComb10_01
        END; //  for vi_Base10Comb
    sleep(55);        

    finally
        Stgr_Etapa01_10.RowCount := viLinhas01;
        Stgr_Etapa01_10.Repaint;
        Stgr_Etapa03_15.RowCount := viLinhas01;
        Stgr_Etapa03_15.Repaint;
    end;
    Stgr_Etapa03_15.RowCount := viLinhas01;
    Stgr_Etapa03_15.Repaint;
            Stgr_Etapa03_15.Repaint;
    Pgbr_EtaPa_01.Position := 15;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure




Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_10e09();
var
     viCombinacoes1, viLinhas01, vi_Base10Comb : Integer;
     viComb15_01, viComb15_02, viComb15_03, viComb15_04, viComb15_05, viComb15_06, viComb15_07, viComb15_08, viComb15_09, viComb15_10 : Integer;
     viComb10_01, viComb10_02, viComb10_03, viComb10_04, viComb10_05, viComb10_06, viComb10_07, viComb10_08, viComb10_09 : Integer;
begin
    Pgbr_EtaPa_01.Position :=15 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================

    Stgr_Etapa01_09.RowCount := viLinhas01;
    Stgr_Etapa1_10.RowCount := viLinhas01;
    Stgr_Etapa01_09.Repaint;
    Stgr_Etapa1_10.Repaint;
    Scbx_dados.HorzScrollBar.Position := 1075;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viCombinacoes1 := 1;  ;
    viLinhas01 := 1  ;
    try
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb15_01 := 2 TO 07 DO
            BEGIN
                for viComb15_02 := viComb15_01 + 1 TO 08 DO
                BEGIN
                    for viComb15_03 := viComb15_02 + 1 TO 09 DO
                    BEGIN
                        for viComb15_04 := viComb15_03 + 1 TO 10-0 DO  //-5
                        BEGIN
                            for viComb15_05 := viComb15_04 + 1 TO 11-0 DO
                            BEGIN
                                for viComb15_06 := viComb15_05 + 1 TO 12-0 DO
                                BEGIN
                                    for viComb15_07 := viComb15_06 + 1 TO 13-0 DO
                                    BEGIN
                                        for viComb15_08 := viComb15_07 + 1 TO 14-0 DO
                                            BEGIN
                                            for viComb15_09 := viComb15_08 + 1 TO 15-0 DO
                                            BEGIN
                                                for viComb15_10 := viComb15_09 + 1 TO 16-0 DO
                                                BEGIN
                                                    Stgr_Etapa1_10.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                    Stgr_Etapa1_10.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                    Stgr_Etapa1_10.Cells[02,viLinhas01] := Stgr_Base.Cells[viComb15_01,vi_Base10Comb] ;
                                                    Stgr_Etapa1_10.Cells[03,viLinhas01] := Stgr_Base.Cells[viComb15_02,vi_Base10Comb] ;
                                                    Stgr_Etapa1_10.Cells[04,viLinhas01] := Stgr_Base.Cells[viComb15_03,vi_Base10Comb] ;
                                                    Stgr_Etapa1_10.Cells[05,viLinhas01] := Stgr_Base.Cells[viComb15_04,vi_Base10Comb] ;
                                                    Stgr_Etapa1_10.Cells[06,viLinhas01] := Stgr_Base.Cells[viComb15_05,vi_Base10Comb] ;
                                                    Stgr_Etapa1_10.Cells[07,viLinhas01] := Stgr_Base.Cells[viComb15_06,vi_Base10Comb] ;
                                                    Stgr_Etapa1_10.Cells[08,viLinhas01] := Stgr_Base.Cells[viComb15_07,vi_Base10Comb] ;
                                                    Stgr_Etapa1_10.Cells[09,viLinhas01] := Stgr_Base.Cells[viComb15_08,vi_Base10Comb] ;
                                                    Stgr_Etapa1_10.Cells[10,viLinhas01] := Stgr_Base.Cells[viComb15_09,vi_Base10Comb] ;
                                                    Stgr_Etapa1_10.Cells[11,viLinhas01] := Stgr_Base.Cells[viComb15_10,vi_Base10Comb] ;
                                                    viLinhas01 := viLinhas01 + 1;
                                                END; //  for viComb15_10
                                            END; //  for viComb15_09
                                        END; //  for viComb15_08
                                    END; //  for viComb15_07
                                END; //  for viComb15_06
                        Stgr_Etapa1_10.RowCount := viLinhas01;
                        Stgr_Etapa1_10.Repaint;
                sleep(1);
                            END; //  for viComb15_05
                        END; //  for viComb15_04
                    END; //  for viComb15_03
                END; //  for viComb15_02
            END; //  for viComb15_01
        END; //  for vi_Base10Comb
    viLinhas01 := 1  ;
    sleep(55);
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb10_01 := 2 TO 03 DO
            BEGIN
                for viComb10_02 := viComb10_01 + 1 TO 04 DO
                BEGIN
                    for viComb10_03 := viComb10_02 + 1 TO 05 DO
                    BEGIN
                        for viComb10_04 := viComb10_03 + 1 TO 06 DO
                        BEGIN
                            for viComb10_05 := viComb10_04 + 1 TO 07 DO
                            BEGIN
                                for viComb10_06 := viComb10_05 + 1 TO 08 DO
                                BEGIN
                                    for viComb10_07 := viComb10_06 + 1 TO 09 DO
                                    BEGIN
                                        for viComb10_08 := viComb10_07 + 1 TO 10 DO
                                            BEGIN
                                            for viComb10_09 := viComb10_08 + 1 TO 11 DO
                                            BEGIN
                                                Stgr_Etapa01_09.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                Stgr_Etapa01_09.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                Stgr_Etapa01_09.Cells[02,viLinhas01] := Stgr_Base10.Cells[viComb10_01,vi_Base10Comb] ;
                                                Stgr_Etapa01_09.Cells[03,viLinhas01] := Stgr_Base10.Cells[viComb10_02,vi_Base10Comb] ;
                                                Stgr_Etapa01_09.Cells[04,viLinhas01] := Stgr_Base10.Cells[viComb10_03,vi_Base10Comb] ;
                                                Stgr_Etapa01_09.Cells[05,viLinhas01] := Stgr_Base10.Cells[viComb10_04,vi_Base10Comb] ;
                                                Stgr_Etapa01_09.Cells[06,viLinhas01] := Stgr_Base10.Cells[viComb10_05,vi_Base10Comb] ;
                                                Stgr_Etapa01_09.Cells[07,viLinhas01] := Stgr_Base10.Cells[viComb10_06,vi_Base10Comb] ;
                                                Stgr_Etapa01_09.Cells[08,viLinhas01] := Stgr_Base10.Cells[viComb10_07,vi_Base10Comb] ;
                                                Stgr_Etapa01_09.Cells[09,viLinhas01] := Stgr_Base10.Cells[viComb10_08,vi_Base10Comb] ;
                                                Stgr_Etapa01_09.Cells[10,viLinhas01] := Stgr_Base10.Cells[viComb10_09,vi_Base10Comb] ;
                                                viLinhas01 := viLinhas01 + 1;
                                            END; //  for viComb10_09
                                        END; //  for viComb10_08
                                    END; //  for viComb10_07
                                END; //  for viComb10_06
                            END; //  for viComb10_05
                            Stgr_Etapa01_09.RowCount := viLinhas01;
                            Stgr_Etapa01_09.Repaint;
                sleep(1);
                        END; //  for viComb10_04
                    END; //  for viComb10_03
                END; //  for viComb10_02
            END; //  for viComb10_01
        END; //  for vi_Base10Comb
     sleep(55);
    finally
        Stgr_Etapa01_09.RowCount := viLinhas01;
        Stgr_Etapa01_09.Repaint;
        Stgr_Etapa03_15.RowCount := viLinhas01;
        Stgr_Etapa03_15.Repaint;
    end;
    Stgr_Etapa03_15.RowCount := viLinhas01;
    Stgr_Etapa03_15.Repaint;
            Stgr_Etapa03_15.Repaint;
    Pgbr_EtaPa_01.Position := 25;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure




Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_11e08();
var
     viCombinacoes1, viLinhas01, vi_Base10Comb : Integer;
     viComb15_01, viComb15_02, viComb15_03, viComb15_04, viComb15_05, viComb15_06, viComb15_07, viComb15_08, viComb15_09, viComb15_10, viComb15_11 : Integer;
     viComb10_01, viComb10_02, viComb10_03, viComb10_04, viComb10_05, viComb10_06, viComb10_07, viComb10_08 : Integer;
begin
    Pgbr_EtaPa_01.Position :=25 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa01_08.RowCount := viLinhas01;
    Stgr_Etapa1_11.RowCount := viLinhas01;
    Stgr_Etapa01_08.Repaint;
    Stgr_Etapa1_11.Repaint;
    Scbx_dados.HorzScrollBar.Position := 1930;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    viCombinacoes1 := 1;
    try
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb15_01 := 2 TO 06 DO
            BEGIN
                for viComb15_02 := viComb15_01 + 1 TO 07 DO
                BEGIN
                    for viComb15_03 := viComb15_02 + 1 TO 08 DO
                    BEGIN
                        for viComb15_04 := viComb15_03 + 1 TO 09 DO
                        BEGIN
                            for viComb15_05 := viComb15_04 + 1 TO 10 DO
                            BEGIN
                                for viComb15_06 := viComb15_05 + 1 TO 11-0 DO  //-4
                                BEGIN
                                    for viComb15_07 := viComb15_06 + 1 TO 12-0 DO
                                    BEGIN
                                        for viComb15_08 := viComb15_07 + 1 TO 13-0 DO
                                            BEGIN
                                            for viComb15_09 := viComb15_08 + 1 TO 14-0 DO
                                            BEGIN
                                                for viComb15_10 := viComb15_09 + 1 TO 15-0 DO
                                                BEGIN
                                                    for viComb15_11 := viComb15_10 + 1 TO 16-0 DO
                                                    BEGIN
                                                    Stgr_Etapa1_11.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                    Stgr_Etapa1_11.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                    Stgr_Etapa1_11.Cells[02,viLinhas01] := Stgr_Base.Cells[viComb15_01,vi_Base10Comb] ;
                                                    Stgr_Etapa1_11.Cells[03,viLinhas01] := Stgr_Base.Cells[viComb15_02,vi_Base10Comb] ;
                                                    Stgr_Etapa1_11.Cells[04,viLinhas01] := Stgr_Base.Cells[viComb15_03,vi_Base10Comb] ;
                                                    Stgr_Etapa1_11.Cells[05,viLinhas01] := Stgr_Base.Cells[viComb15_04,vi_Base10Comb] ;
                                                    Stgr_Etapa1_11.Cells[06,viLinhas01] := Stgr_Base.Cells[viComb15_05,vi_Base10Comb] ;
                                                    Stgr_Etapa1_11.Cells[07,viLinhas01] := Stgr_Base.Cells[viComb15_06,vi_Base10Comb] ;
                                                    Stgr_Etapa1_11.Cells[08,viLinhas01] := Stgr_Base.Cells[viComb15_07,vi_Base10Comb] ;
                                                    Stgr_Etapa1_11.Cells[09,viLinhas01] := Stgr_Base.Cells[viComb15_08,vi_Base10Comb] ;
                                                    Stgr_Etapa1_11.Cells[10,viLinhas01] := Stgr_Base.Cells[viComb15_09,vi_Base10Comb] ;
                                                    Stgr_Etapa1_11.Cells[11,viLinhas01] := Stgr_Base.Cells[viComb15_10,vi_Base10Comb] ;
                                                    Stgr_Etapa1_11.Cells[12,viLinhas01] := Stgr_Base.Cells[viComb15_11,vi_Base10Comb] ;
                                                    viLinhas01 := viLinhas01 + 1;
                                                    END; //  for viComb15_11
                                                END; //  for viComb15_10
                                            END; //  for viComb15_09
                                        END; //  for viComb15_08
                                    END; //  for viComb15_07
                                END; //  for viComb15_06
                            Stgr_Etapa1_11.RowCount := viLinhas01;
                            Stgr_Etapa1_11.Repaint;
                sleep(1);
                            END; //  for viComb15_05
                        END; //  for viComb15_04
                    END; //  for viComb15_03
                END; //  for viComb15_02
            END; //  for viComb15_01
        END; //  for vi_Base10Comb
    viLinhas01 := 1;
    sleep(55);
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb10_01 := 2 TO 04 do
            BEGIN
                for viComb10_02 := viComb10_01 + 1 TO 05 DO
                BEGIN
                    for viComb10_03 := viComb10_02 + 1 TO 06 DO
                    BEGIN
                        for viComb10_04 := viComb10_03 + 1 TO 07 DO
                        BEGIN
                            for viComb10_05 := viComb10_04 + 1 TO 08 DO
                            BEGIN
                                for viComb10_06 := viComb10_05 + 1 TO 09 DO
                                BEGIN
                                    for viComb10_07 := viComb10_06 + 1 TO 10 DO
                                    BEGIN
                                        for viComb10_08 := viComb10_07 + 1 TO 11 DO
                                            BEGIN
                                                Stgr_Etapa01_08.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                Stgr_Etapa01_08.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                Stgr_Etapa01_08.Cells[02,viLinhas01] := Stgr_Base10.Cells[viComb10_01,vi_Base10Comb] ;
                                                Stgr_Etapa01_08.Cells[03,viLinhas01] := Stgr_Base10.Cells[viComb10_02,vi_Base10Comb] ;
                                                Stgr_Etapa01_08.Cells[04,viLinhas01] := Stgr_Base10.Cells[viComb10_03,vi_Base10Comb] ;
                                                Stgr_Etapa01_08.Cells[05,viLinhas01] := Stgr_Base10.Cells[viComb10_04,vi_Base10Comb] ;
                                                Stgr_Etapa01_08.Cells[06,viLinhas01] := Stgr_Base10.Cells[viComb10_05,vi_Base10Comb] ;
                                                Stgr_Etapa01_08.Cells[07,viLinhas01] := Stgr_Base10.Cells[viComb10_06,vi_Base10Comb] ;
                                                Stgr_Etapa01_08.Cells[08,viLinhas01] := Stgr_Base10.Cells[viComb10_07,vi_Base10Comb] ;
                                                Stgr_Etapa01_08.Cells[09,viLinhas01] := Stgr_Base10.Cells[viComb10_08,vi_Base10Comb] ;
                                                viLinhas01 := viLinhas01 + 1;
                                            END; //  for viComb10_08
                                        END; //  for viComb10_07
                                    END; //  for viComb10_06
                                    Stgr_Etapa01_08.RowCount := viLinhas01;
                                    Stgr_Etapa01_08.Repaint;
                sleep(1);
                                END; //  for viComb10_05
                            END; //  for viComb10_04
                        END; //  for viComb10_03
                    END; //  for viComb10_02
                END; //  for viComb10_01
            END; //  for vi_Base10Comb
        sleep(75);

    finally
        Stgr_Etapa01_08.RowCount := viLinhas01;
        Stgr_Etapa01_08.Repaint;
        Stgr_Etapa03_15.RowCount := viLinhas01;
        Stgr_Etapa03_15.Repaint;
    end;
    Stgr_Etapa03_15.RowCount := viLinhas01;
    Stgr_Etapa03_15.Repaint;
            Stgr_Etapa03_15.Repaint;
    Pgbr_EtaPa_01.Position := 50;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure



Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_12e07();
var
     viCombinacoes1, viLinhas01, vi_Base10Comb : Integer;
     viComb15_01, viComb15_02, viComb15_03, viComb15_04, viComb15_05, viComb15_06, viComb15_07, viComb15_08, viComb15_09, viComb15_10, viComb15_11, viComb15_12 : Integer;
     viComb10_01, viComb10_02, viComb10_03, viComb10_04, viComb10_05, viComb10_06, viComb10_07  : Integer;
begin
    Pgbr_EtaPa_01.Position :=50 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa01_07.RowCount := viLinhas01;
    Stgr_Etapa1_12.RowCount := viLinhas01;
    Stgr_Etapa01_07.Repaint;
    Stgr_Etapa1_12.Repaint;
    Scbx_dados.HorzScrollBar.Position := 2920;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    viCombinacoes1 := 1;
    try
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb15_01 := 2 TO 05 DO
            BEGIN
                for viComb15_02 := viComb15_01 + 1 TO 06 DO
                BEGIN
                    for viComb15_03 := viComb15_02 + 1 TO 07 DO
                    BEGIN
                        for viComb15_04 := viComb15_03 + 1 TO 08 DO
                        BEGIN
                            for viComb15_05 := viComb15_04 + 1 TO 09 DO
                            BEGIN
                                for viComb15_06 := viComb15_05 + 1 TO 10 DO
                                BEGIN
                                    for viComb15_07 := viComb15_06 + 1 TO 11-0 DO  //-3
                                    BEGIN
                                        for viComb15_08 := viComb15_07 + 1 TO 12-0 DO
                                            BEGIN
                                            for viComb15_09 := viComb15_08 + 1 TO 13-0 DO
                                            BEGIN
                                                for viComb15_10 := viComb15_09 + 1 TO 14-0 DO
                                                BEGIN
                                                    for viComb15_11 := viComb15_10 + 1 TO 15-0 DO
                                                    BEGIN
                                                        for viComb15_12 := viComb15_11 + 1 TO 16-0 DO
                                                        BEGIN
                                                            Stgr_Etapa1_12.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                            Stgr_Etapa1_12.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                            Stgr_Etapa1_12.Cells[02,viLinhas01] := Stgr_Base.Cells[viComb15_01,vi_Base10Comb] ;
                                                            Stgr_Etapa1_12.Cells[03,viLinhas01] := Stgr_Base.Cells[viComb15_02,vi_Base10Comb] ;
                                                            Stgr_Etapa1_12.Cells[04,viLinhas01] := Stgr_Base.Cells[viComb15_03,vi_Base10Comb] ;
                                                            Stgr_Etapa1_12.Cells[05,viLinhas01] := Stgr_Base.Cells[viComb15_04,vi_Base10Comb] ;
                                                            Stgr_Etapa1_12.Cells[06,viLinhas01] := Stgr_Base.Cells[viComb15_05,vi_Base10Comb] ;
                                                            Stgr_Etapa1_12.Cells[07,viLinhas01] := Stgr_Base.Cells[viComb15_06,vi_Base10Comb] ;
                                                            Stgr_Etapa1_12.Cells[08,viLinhas01] := Stgr_Base.Cells[viComb15_07,vi_Base10Comb] ;
                                                            Stgr_Etapa1_12.Cells[09,viLinhas01] := Stgr_Base.Cells[viComb15_08,vi_Base10Comb] ;
                                                            Stgr_Etapa1_12.Cells[10,viLinhas01] := Stgr_Base.Cells[viComb15_09,vi_Base10Comb] ;
                                                            Stgr_Etapa1_12.Cells[11,viLinhas01] := Stgr_Base.Cells[viComb15_10,vi_Base10Comb] ;
                                                            Stgr_Etapa1_12.Cells[12,viLinhas01] := Stgr_Base.Cells[viComb15_11,vi_Base10Comb] ;
                                                            Stgr_Etapa1_12.Cells[13,viLinhas01] := Stgr_Base.Cells[viComb15_12,vi_Base10Comb] ;
                                                            viLinhas01 := viLinhas01 + 1;
                                                        END; //  for viComb15_12
                                                    END; //  for viComb15_11
                                                END; //  for viComb15_10
                                            END; //  for viComb15_09
                                        END; //  for viComb15_08
                                    END; //  for viComb15_07
                            Stgr_Etapa1_12.RowCount := viLinhas01;
                            Stgr_Etapa1_12.Repaint;
                sleep(1);
                                END; //  for viComb15_06
                            END; //  for viComb15_05
                        END; //  for viComb15_04
                    END; //  for viComb15_03
                END; //  for viComb15_02
            END; //  for viComb15_01
        END; //  for vi_Base10Comb
    viLinhas01 := 1;
    sleep(75);
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb10_01 := 2 TO 05 DO
            BEGIN
                for viComb10_02 := viComb10_01 + 1 TO 06 DO
                BEGIN
                    for viComb10_03 := viComb10_02 + 1 TO 07 DO
                    BEGIN
                        for viComb10_04 := viComb10_03 + 1 TO 08 DO
                        BEGIN
                            for viComb10_05 := viComb10_04 + 1 TO 09 DO
                            BEGIN
                                for viComb10_06 := viComb10_05 + 1 TO 10 DO
                                BEGIN
                                    for viComb10_07 := viComb10_06 + 1 TO 11 DO
                                    BEGIN
                                        Stgr_Etapa01_07.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                        Stgr_Etapa01_07.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                        Stgr_Etapa01_07.Cells[02,viLinhas01] := Stgr_Base10.Cells[viComb10_01,vi_Base10Comb] ;
                                        Stgr_Etapa01_07.Cells[03,viLinhas01] := Stgr_Base10.Cells[viComb10_02,vi_Base10Comb] ;
                                        Stgr_Etapa01_07.Cells[04,viLinhas01] := Stgr_Base10.Cells[viComb10_03,vi_Base10Comb] ;
                                        Stgr_Etapa01_07.Cells[05,viLinhas01] := Stgr_Base10.Cells[viComb10_04,vi_Base10Comb] ;
                                        Stgr_Etapa01_07.Cells[06,viLinhas01] := Stgr_Base10.Cells[viComb10_05,vi_Base10Comb] ;
                                        Stgr_Etapa01_07.Cells[07,viLinhas01] := Stgr_Base10.Cells[viComb10_06,vi_Base10Comb] ;
                                        Stgr_Etapa01_07.Cells[08,viLinhas01] := Stgr_Base10.Cells[viComb10_07,vi_Base10Comb] ;
                                        viLinhas01 := viLinhas01 + 1;
                                    END; //  for viComb10_07
                                END; //  for viComb10_06
                            END; //  for viComb10_05
                            Stgr_Etapa01_07.RowCount := viLinhas01;
                            Stgr_Etapa01_07.Repaint;
                sleep(1);
                        END; //  for viComb10_04
                    END; //  for viComb10_03
                END; //  for viComb10_02
            END; //  for viComb10_01
        END; //  for vi_Base10Comb
      sleep(75);
    finally
        Stgr_Etapa01_07.RowCount := viLinhas01;
        Stgr_Etapa01_07.Repaint;
        Stgr_Etapa03_15.RowCount := viLinhas01;
        Stgr_Etapa03_15.Repaint;
    end;
    Stgr_Etapa03_15.RowCount := viLinhas01;
    Stgr_Etapa03_15.Repaint;
            Stgr_Etapa03_15.Repaint;
    Pgbr_EtaPa_01.Position := 66;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure



Procedure T_F_Gerador_ResDiv_25Linhas2.Todos_Numeros_2emF();
var
  viContarCelulas: Smallint;
begin
  for viContarCelulas := 1 to 25 do
  begin
    Stgr_Todos_Numeros.Cells[viContarCelulas, 2] := 'F';
  end;  // // FOR viContarCelulas
end;



Function T_F_Gerador_ResDiv_25Linhas2.Contar19em21_22_23_24_25(viLinhas : Integer) : boolean;
var
     viContarCelulas: smallint;
     vasiQtdLinhas : array [1..5] of smallint;
begin
   vasiQtdLinhas[1] := 0;
   vasiQtdLinhas[2] := 0;
   vasiQtdLinhas[3] := 0;
   vasiQtdLinhas[4] := 0;
   vasiQtdLinhas[5] := 0;
   FOR viContarCelulas := 1 TO 25 DO
   BEGIN
      Stgr_Todos_Numeros.Cells[viContarCelulas, 1] := 'F';
   END; // FOR viContarCelulas
   FOR viContarCelulas := 2 TO 20 DO
   BEGIN
      Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa01_19.Cells[viContarCelulas,viLinhas])) ,1]:='V';
   END;
   //1
   Todos_Numeros_2emF();
   FOR viContarCelulas := 1 TO 5 DO
   BEGIN
      Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base25.Cells[viContarCelulas,1])) ,2]:='V';
   END; // FOR viContarCelulas
   FOR viContarCelulas := 1 TO 25 DO
   BEGIN
     if (Stgr_Todos_Numeros.Cells[viContarCelulas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarCelulas,2]='V') then
      vasiQtdLinhas[1] := vasiQtdLinhas[1] +1;
   END; // FOR viContarCelulas
   if (vasiQtdLinhas[1] =5) xor (vasiQtdLinhas[1] <=2) then begin  Result := False; exit; end;
   //2
  Todos_Numeros_2emF();
   FOR viContarCelulas := 1 TO 5 DO
   BEGIN
      Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base25.Cells[viContarCelulas,2])) ,2]:='V';
   END; // FOR viContarCelulas
   FOR viContarCelulas := 1 TO 25 DO
   BEGIN
     if (Stgr_Todos_Numeros.Cells[viContarCelulas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarCelulas,2]='V') then
      vasiQtdLinhas[2] := vasiQtdLinhas[2] +1;
   END; // FOR viContarCelulas
   if (vasiQtdLinhas[2] =5) xor (vasiQtdLinhas[2] <=2) then begin  Result := False; exit; end;
   //3
   Todos_Numeros_2emF();
   FOR viContarCelulas := 1 TO 5 DO
   BEGIN
      Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base25.Cells[viContarCelulas,3])) ,2]:='V';
   END; // FOR viContarCelulas
   FOR viContarCelulas := 1 TO 25 DO
   BEGIN
     if (Stgr_Todos_Numeros.Cells[viContarCelulas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarCelulas,2]='V') then
      vasiQtdLinhas[3] := vasiQtdLinhas[3] +1;
   END; // FOR viContarCelulas
   if (vasiQtdLinhas[3] =5) xor (vasiQtdLinhas[3] <=2) then begin  Result := False; exit; end;
   //4
   Todos_Numeros_2emF();
   FOR viContarCelulas := 1 TO 5 DO
   BEGIN
      Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base25.Cells[viContarCelulas,4])) ,2]:='V';
   END; // FOR viContarCelulas
   FOR viContarCelulas := 1 TO 25 DO
   BEGIN
     if (Stgr_Todos_Numeros.Cells[viContarCelulas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarCelulas,2]='V') then
      vasiQtdLinhas[4] := vasiQtdLinhas[4] +1;
   END; // FOR viContarCelulas
   if (vasiQtdLinhas[4] =5) xor (vasiQtdLinhas[4] <=2) then begin  Result := False; exit; end;
   //5
   Todos_Numeros_2emF();
   FOR viContarCelulas := 1 TO 5 DO
   BEGIN
      Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base25.Cells[viContarCelulas,5])) ,2]:='V';
   END; // FOR viContarCelulas
   FOR viContarCelulas := 1 TO 25 DO
   BEGIN
     if (Stgr_Todos_Numeros.Cells[viContarCelulas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarCelulas,2]='V') then
      vasiQtdLinhas[5] := vasiQtdLinhas[5] +1;
   END; // FOR viContarCelulas
   if (vasiQtdLinhas[5] >5) xor (vasiQtdLinhas[5] <=2) then begin  Result := False; exit; end;
   Result := True;
end;


Function T_F_Gerador_ResDiv_25Linhas2.Contar12em21_22_23_24_25(viLinhas : Integer) : boolean;
var
     viContarCelulas: smallint;
     vasiQtdLinhas : array [1..5] of smallint;
begin
   vasiQtdLinhas[1] := 0;
   vasiQtdLinhas[2] := 0;
   vasiQtdLinhas[3] := 0;
   vasiQtdLinhas[4] := 0;
   vasiQtdLinhas[5] := 0;
   FOR viContarCelulas := 1 TO 25 DO
   BEGIN
      Stgr_Todos_Numeros.Cells[viContarCelulas, 1] := 'F';
   END; // FOR viContarCelulas
   FOR viContarCelulas := 2 TO 13 DO
   BEGIN
      Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa02_12.Cells[viContarCelulas,viLinhas])) ,1]:='V';
   END; // FOR viContarCelulas
   //1
   Todos_Numeros_2emF();
   FOR viContarCelulas := 1 TO 5 DO
   BEGIN
      Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base25.Cells[viContarCelulas,1])) ,2]:='V';
   END; // FOR viContarCelulas
   FOR viContarCelulas := 1 TO 25 DO
   BEGIN
     if (Stgr_Todos_Numeros.Cells[viContarCelulas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarCelulas,2]='V') then
      vasiQtdLinhas[1] := vasiQtdLinhas[1] +1;
   END; // FOR viContarCelulas
   if (vasiQtdLinhas[1] >=4) or (vasiQtdLinhas[1] =1) then begin  Result := False; exit; end;
   //2
   Todos_Numeros_2emF();
   FOR viContarCelulas := 1 TO 5 DO
   BEGIN
      Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base25.Cells[viContarCelulas,2])) ,2]:='V';
   END; // FOR viContarCelulas
   FOR viContarCelulas := 1 TO 25 DO
   BEGIN
     if (Stgr_Todos_Numeros.Cells[viContarCelulas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarCelulas,2]='V') then
      vasiQtdLinhas[2] := vasiQtdLinhas[2] +1;
   END; // FOR viContarCelulas
   if (vasiQtdLinhas[2] >=4) or (vasiQtdLinhas[2] =2) then begin  Result := False; exit; end;
   //3
   Todos_Numeros_2emF();
   FOR viContarCelulas := 1 TO 5 DO
   BEGIN
      Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base25.Cells[viContarCelulas,3])) ,2]:='V';
   END; // FOR viContarCelulas
   FOR viContarCelulas := 1 TO 25 DO
   BEGIN
     if (Stgr_Todos_Numeros.Cells[viContarCelulas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarCelulas,2]='V') then
      vasiQtdLinhas[3] := vasiQtdLinhas[3] +1;
   END; // FOR viContarCelulas
   if (vasiQtdLinhas[3] >=4) or (vasiQtdLinhas[3] <=1) then begin  Result := False; exit; end;
   //4
   Todos_Numeros_2emF();
   FOR viContarCelulas := 1 TO 5 DO
   BEGIN
      Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base25.Cells[viContarCelulas,4])) ,2]:='V';
   END; // FOR viContarCelulas
   FOR viContarCelulas := 1 TO 25 DO
   BEGIN
     if (Stgr_Todos_Numeros.Cells[viContarCelulas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarCelulas,2]='V') then
      vasiQtdLinhas[4] := vasiQtdLinhas[4] +1;
   END; // FOR viContarCelulas
   if (vasiQtdLinhas[4] >=4) or (vasiQtdLinhas[4] <=1) then begin  Result := False; exit; end;
   //5
   Todos_Numeros_2emF();
   FOR viContarCelulas := 1 TO 5 DO
   BEGIN
      Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base25.Cells[viContarCelulas,5])) ,2]:='V';
   END; // FOR viContarCelulas
   FOR viContarCelulas := 1 TO 25 DO
   BEGIN
     if (Stgr_Todos_Numeros.Cells[viContarCelulas,1]='V') and (Stgr_Todos_Numeros.Cells[viContarCelulas,2]='V') then
      vasiQtdLinhas[5] := vasiQtdLinhas[5] +1;
   END; // FOR viContarCelulas
   if (vasiQtdLinhas[5] >=5) or (vasiQtdLinhas[5] <=1) then begin  Result := False; exit; end;
   Result := True;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_09e10();
var
     viLinhas01, viSomaTotal : Integer;
     viComb19_01, viComb19_02 : Integer;
     viNLinha15, viNLinha10: smallint;
begin
    Pgbr_EtaPa_01_01.Position :=0;
    Pgbr_EtaPa_01_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa01_19.Repaint;
    Scbx_dados.HorzScrollBar.Position := 6350;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    try
        for viComb19_01 := 1 TO (Stgr_Etapa1_09.RowCount-1) DO
        BEGIN
            for viComb19_02 := 1 TO (Stgr_Etapa01_10.RowCount-1)  DO
            BEGIN
                viSomaTotal :=
                 strTOint(Stgr_Etapa1_09.Cells[2,viComb19_01]) +                 strTOint(Stgr_Etapa1_09.Cells[3,viComb19_01]) +
                 strTOint(Stgr_Etapa1_09.Cells[4,viComb19_01]) +                 strTOint(Stgr_Etapa1_09.Cells[5,viComb19_01]) +
                 strTOint(Stgr_Etapa1_09.Cells[6,viComb19_01]) +                 strTOint(Stgr_Etapa1_09.Cells[7,viComb19_01]) +
                 strTOint(Stgr_Etapa1_09.Cells[8,viComb19_01]) +                 strTOint(Stgr_Etapa1_09.Cells[9,viComb19_01]) +
                 strTOint(Stgr_Etapa1_09.Cells[10,viComb19_01]) +
                 strTOint(Stgr_Etapa01_10.Cells[02,viComb19_02]) +                 strTOint(Stgr_Etapa01_10.Cells[03,viComb19_02]) +
                 strTOint(Stgr_Etapa01_10.Cells[04,viComb19_02]) +                 strTOint(Stgr_Etapa01_10.Cells[05,viComb19_02]) +
                 strTOint(Stgr_Etapa01_10.Cells[06,viComb19_02]) +                 strTOint(Stgr_Etapa01_10.Cells[07,viComb19_02]) +
                 strTOint(Stgr_Etapa01_10.Cells[08,viComb19_02]) +                 strTOint(Stgr_Etapa01_10.Cells[09,viComb19_02]) +
				 strTOint(Stgr_Etapa01_10.Cells[10,viComb19_02]) +                 strTOint(Stgr_Etapa01_10.Cells[11,viComb19_02])
                ;
                viNLinha15 := strTOint(Stgr_Etapa1_09.Cells[01,viComb19_01]);
                viNLinha10 := strTOint(Stgr_Etapa01_10.Cells[01,viComb19_02]);
                if not(viNLinha15 = viNLinha10) then
                    continue;
                if viSomaTotal = 247 then
                begin
                    Stgr_Etapa01_19.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                    Stgr_Etapa01_19.Cells[01,viLinhas01] := Stgr_Etapa1_09.Cells[01,viComb19_01] + '/' + Stgr_Etapa01_10.Cells[01,viComb19_02];
                    Stgr_Etapa01_19.Cells[02,viLinhas01] := Stgr_Etapa1_09.Cells[02,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[03,viLinhas01] := Stgr_Etapa1_09.Cells[03,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[04,viLinhas01] := Stgr_Etapa1_09.Cells[04,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[05,viLinhas01] := Stgr_Etapa1_09.Cells[05,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[06,viLinhas01] := Stgr_Etapa1_09.Cells[06,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[07,viLinhas01] := Stgr_Etapa1_09.Cells[07,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[08,viLinhas01] := Stgr_Etapa1_09.Cells[08,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[09,viLinhas01] := Stgr_Etapa1_09.Cells[09,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[10,viLinhas01] := Stgr_Etapa1_09.Cells[10,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[11,viLinhas01] := Stgr_Etapa01_10.Cells[02,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[12,viLinhas01] := Stgr_Etapa01_10.Cells[03,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[13,viLinhas01] := Stgr_Etapa01_10.Cells[04,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[14,viLinhas01] := Stgr_Etapa01_10.Cells[05,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[15,viLinhas01] := Stgr_Etapa01_10.Cells[06,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[16,viLinhas01] := Stgr_Etapa01_10.Cells[07,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[17,viLinhas01] := Stgr_Etapa01_10.Cells[08,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[18,viLinhas01] := Stgr_Etapa01_10.Cells[09,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[19,viLinhas01] := Stgr_Etapa01_10.Cells[10,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[20,viLinhas01] := Stgr_Etapa01_10.Cells[11,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[21,viLinhas01] := INTtoSTR( viSomaTotal ) + '' ;
                    if QtdPares19 (viLinhas01) then
                    begin
                        Self.Ordenar_Comb19(viLinhas01);
                        if Contar19em21_22_23_24_25(viLinhas01) then
                           viLinhas01 := viLinhas01 + 1;
                    end;
                end; // if
            END; //  for viComb15_06
            if (viComb19_01 mod 180)=0 then
            begin
                Stgr_Etapa01_19.RowCount := viLinhas01;
                Stgr_Etapa01_19.Repaint;
                sleep(1);
            end;
        END; //  for viComb15_05

    finally
        Stgr_Etapa01_19.RowCount := viLinhas01;
        Stgr_Etapa01_19.Repaint;
    end;
    Pgbr_EtaPa_01_01.Position :=15 ;
    Pgbr_EtaPa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure





Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_10e09();
var
     viLinhas01, viSomaTotal : Integer;
     viComb19_01, viComb19_02 : Integer;
     viNLinha15, viNLinha10: smallint;
begin
    Pgbr_EtaPa_01_01.Position :=15 ;
    Pgbr_EtaPa_01_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa01_19.Repaint;
    Scbx_dados.HorzScrollBar.Position := 6350;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := Stgr_Etapa01_19.RowCount;
    try
        for viComb19_01 := 1 TO (Stgr_Etapa1_10.RowCount-1) DO
        BEGIN
            for viComb19_02 := 1 TO (Stgr_Etapa01_09.RowCount-1)  DO
            BEGIN
                viSomaTotal :=
                 strTOint(Stgr_Etapa1_10.Cells[2,viComb19_01]) +                 strTOint(Stgr_Etapa1_10.Cells[3,viComb19_01]) +
                 strTOint(Stgr_Etapa1_10.Cells[4,viComb19_01]) +                 strTOint(Stgr_Etapa1_10.Cells[5,viComb19_01]) +
                 strTOint(Stgr_Etapa1_10.Cells[6,viComb19_01]) +                 strTOint(Stgr_Etapa1_10.Cells[7,viComb19_01]) +
                 strTOint(Stgr_Etapa1_10.Cells[8,viComb19_01]) +                 strTOint(Stgr_Etapa1_10.Cells[9,viComb19_01]) +
                 strTOint(Stgr_Etapa1_10.Cells[10,viComb19_01]) +                strTOint(Stgr_Etapa1_10.Cells[11,viComb19_01]) +
                 strTOint(Stgr_Etapa01_09.Cells[02,viComb19_02]) +                 strTOint(Stgr_Etapa01_09.Cells[03,viComb19_02]) +
                 strTOint(Stgr_Etapa01_09.Cells[04,viComb19_02]) +                 strTOint(Stgr_Etapa01_09.Cells[05,viComb19_02]) +
                 strTOint(Stgr_Etapa01_09.Cells[06,viComb19_02]) +                 strTOint(Stgr_Etapa01_09.Cells[07,viComb19_02]) +
                 strTOint(Stgr_Etapa01_09.Cells[08,viComb19_02]) +                 strTOint(Stgr_Etapa01_09.Cells[09,viComb19_02]) +
				 strTOint(Stgr_Etapa01_09.Cells[10,viComb19_02])
                ;
                viNLinha15 := strTOint(Stgr_Etapa1_10.Cells[01,viComb19_01]);
                viNLinha10 := strTOint(Stgr_Etapa01_09.Cells[01,viComb19_02]);
                if not(viNLinha15 = viNLinha10) then
                    continue;
                if viSomaTotal = 247 then
                begin
                    Stgr_Etapa01_19.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                    Stgr_Etapa01_19.Cells[01,viLinhas01] := Stgr_Etapa1_10.Cells[01,viComb19_01] + '/' + Stgr_Etapa01_09.Cells[01,viComb19_02];
                    Stgr_Etapa01_19.Cells[02,viLinhas01] := Stgr_Etapa1_10.Cells[02,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[03,viLinhas01] := Stgr_Etapa1_10.Cells[03,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[04,viLinhas01] := Stgr_Etapa1_10.Cells[04,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[05,viLinhas01] := Stgr_Etapa1_10.Cells[05,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[06,viLinhas01] := Stgr_Etapa1_10.Cells[06,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[07,viLinhas01] := Stgr_Etapa1_10.Cells[07,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[08,viLinhas01] := Stgr_Etapa1_10.Cells[08,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[09,viLinhas01] := Stgr_Etapa1_10.Cells[09,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[10,viLinhas01] := Stgr_Etapa1_10.Cells[10,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[11,viLinhas01] := Stgr_Etapa1_10.Cells[11,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[12,viLinhas01] := Stgr_Etapa01_09.Cells[02,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[13,viLinhas01] := Stgr_Etapa01_09.Cells[03,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[14,viLinhas01] := Stgr_Etapa01_09.Cells[04,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[15,viLinhas01] := Stgr_Etapa01_09.Cells[05,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[16,viLinhas01] := Stgr_Etapa01_09.Cells[06,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[17,viLinhas01] := Stgr_Etapa01_09.Cells[07,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[18,viLinhas01] := Stgr_Etapa01_09.Cells[08,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[19,viLinhas01] := Stgr_Etapa01_09.Cells[09,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[20,viLinhas01] := Stgr_Etapa01_09.Cells[10,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[21,viLinhas01] := INTtoSTR( viSomaTotal ) + '' ;
                    if QtdPares19 (viLinhas01) then
                    begin
                        Self.Ordenar_Comb19(viLinhas01);
                        if Contar19em21_22_23_24_25(viLinhas01) then
                           viLinhas01 := viLinhas01 + 1;
                    end;
                end; // if
            END; //  for viComb15_06
            if (viComb19_01 mod 38)=0 then
            begin
                Stgr_Etapa01_19.RowCount := viLinhas01;
                Stgr_Etapa01_19.Repaint;
                sleep(1);
            end;
        END; //  for viComb15_05

    finally
        Stgr_Etapa01_19.RowCount := viLinhas01;
        Stgr_Etapa01_19.Repaint;
    end;
    Pgbr_EtaPa_01_01.Position :=25 ;
    Pgbr_EtaPa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure



Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_11e08();
var
     viLinhas01, viSomaTotal : Integer;
     viComb19_01, viComb19_02 : Integer;
     viNLinha15, viNLinha10: smallint;
begin
    Pgbr_EtaPa_01_01.Position :=25 ;
    Pgbr_EtaPa_01_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa01_19.Repaint;
    Scbx_dados.HorzScrollBar.Position := 6350;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := Stgr_Etapa01_19.RowCount;
    try
        for viComb19_01 := 1 TO (Stgr_Etapa1_11.RowCount-1) DO
        BEGIN
            for viComb19_02 := 1 TO (Stgr_Etapa01_08.RowCount-1)  DO
            BEGIN
                viSomaTotal :=
                 strTOint(Stgr_Etapa1_11.Cells[2,viComb19_01]) +                 strTOint(Stgr_Etapa1_11.Cells[3,viComb19_01]) +
                 strTOint(Stgr_Etapa1_11.Cells[4,viComb19_01]) +                 strTOint(Stgr_Etapa1_11.Cells[5,viComb19_01]) +
                 strTOint(Stgr_Etapa1_11.Cells[6,viComb19_01]) +                 strTOint(Stgr_Etapa1_11.Cells[7,viComb19_01]) +
                 strTOint(Stgr_Etapa1_11.Cells[8,viComb19_01]) +                 strTOint(Stgr_Etapa1_11.Cells[9,viComb19_01]) +
                 strTOint(Stgr_Etapa1_11.Cells[10,viComb19_01]) +                strTOint(Stgr_Etapa1_11.Cells[11,viComb19_01]) +
                 strTOint(Stgr_Etapa1_11.Cells[12,viComb19_01]) +
                 strTOint(Stgr_Etapa01_08.Cells[02,viComb19_02]) +                 strTOint(Stgr_Etapa01_08.Cells[03,viComb19_02]) +
                 strTOint(Stgr_Etapa01_08.Cells[04,viComb19_02]) +                 strTOint(Stgr_Etapa01_08.Cells[05,viComb19_02]) +
                 strTOint(Stgr_Etapa01_08.Cells[06,viComb19_02]) +                 strTOint(Stgr_Etapa01_08.Cells[07,viComb19_02]) +
                 strTOint(Stgr_Etapa01_08.Cells[08,viComb19_02]) +                 strTOint(Stgr_Etapa01_08.Cells[09,viComb19_02])
                ;
                viNLinha15 := strTOint(Stgr_Etapa1_11.Cells[01,viComb19_01]);
                viNLinha10 := strTOint(Stgr_Etapa01_08.Cells[01,viComb19_02]);
                if not(viNLinha15 = viNLinha10) then
                    continue;
                if viSomaTotal = 247 then
                begin
                    Stgr_Etapa01_19.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                    Stgr_Etapa01_19.Cells[01,viLinhas01] := Stgr_Etapa1_11.Cells[01,viComb19_01] + '/' + Stgr_Etapa01_08.Cells[01,viComb19_02];
                    Stgr_Etapa01_19.Cells[02,viLinhas01] := Stgr_Etapa1_11.Cells[02,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[03,viLinhas01] := Stgr_Etapa1_11.Cells[03,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[04,viLinhas01] := Stgr_Etapa1_11.Cells[04,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[05,viLinhas01] := Stgr_Etapa1_11.Cells[05,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[06,viLinhas01] := Stgr_Etapa1_11.Cells[06,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[07,viLinhas01] := Stgr_Etapa1_11.Cells[07,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[08,viLinhas01] := Stgr_Etapa1_11.Cells[08,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[09,viLinhas01] := Stgr_Etapa1_11.Cells[09,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[10,viLinhas01] := Stgr_Etapa1_11.Cells[10,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[11,viLinhas01] := Stgr_Etapa1_11.Cells[11,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[12,viLinhas01] := Stgr_Etapa1_11.Cells[12,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[13,viLinhas01] := Stgr_Etapa01_08.Cells[02,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[14,viLinhas01] := Stgr_Etapa01_08.Cells[03,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[15,viLinhas01] := Stgr_Etapa01_08.Cells[04,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[16,viLinhas01] := Stgr_Etapa01_08.Cells[05,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[17,viLinhas01] := Stgr_Etapa01_08.Cells[06,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[18,viLinhas01] := Stgr_Etapa01_08.Cells[07,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[19,viLinhas01] := Stgr_Etapa01_08.Cells[08,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[20,viLinhas01] := Stgr_Etapa01_08.Cells[09,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[21,viLinhas01] := INTtoSTR( viSomaTotal ) + '' ;
                    if QtdPares19 (viLinhas01) and Contar19em21_22_23_24_25(viLinhas01) then
                    begin
                        Self.Ordenar_Comb19(viLinhas01);
                        viLinhas01 := viLinhas01 + 1;
                    end;
                end; // if
            END; //  for viComb15_06
            if (viComb19_01 mod 180)=0 then
            begin
                Stgr_Etapa01_19.RowCount := viLinhas01;
                Stgr_Etapa01_19.Repaint;
                sleep(4); //6
            end;
        END; //  for viComb15_05

    finally
        Stgr_Etapa01_19.RowCount := viLinhas01;
        Stgr_Etapa01_19.Repaint;
    end;
    Pgbr_EtaPa_01_01.Position :=50 ;
    Pgbr_EtaPa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure




Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_12e07();
var
     viLinhas01, viSomaTotal : Integer;
     viComb19_01, viComb19_02 : Integer;
     viNLinha15, viNLinha10: smallint;
begin
    Pgbr_EtaPa_01_01.Position :=50 ;
    Pgbr_EtaPa_01_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa01_19.Repaint;
    Scbx_dados.HorzScrollBar.Position := 6350;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := Stgr_Etapa01_19.RowCount;
    try
        for viComb19_01 := 1 TO (Stgr_Etapa1_12.RowCount-1) DO
        BEGIN
            for viComb19_02 := 1 TO (Stgr_Etapa01_07.RowCount-1)  DO
            BEGIN
                viSomaTotal :=
                 strTOint(Stgr_Etapa1_12.Cells[2,viComb19_01]) +                 strTOint(Stgr_Etapa1_12.Cells[3,viComb19_01]) +
                 strTOint(Stgr_Etapa1_12.Cells[4,viComb19_01]) +                 strTOint(Stgr_Etapa1_12.Cells[5,viComb19_01]) +
                 strTOint(Stgr_Etapa1_12.Cells[6,viComb19_01]) +                 strTOint(Stgr_Etapa1_12.Cells[7,viComb19_01]) +
                 strTOint(Stgr_Etapa1_12.Cells[8,viComb19_01]) +                 strTOint(Stgr_Etapa1_12.Cells[9,viComb19_01]) +
                 strTOint(Stgr_Etapa1_12.Cells[10,viComb19_01]) +                strTOint(Stgr_Etapa1_12.Cells[11,viComb19_01]) +
                 strTOint(Stgr_Etapa1_12.Cells[12,viComb19_01]) +				   strTOint(Stgr_Etapa1_12.Cells[13,viComb19_01]) +
                 strTOint(Stgr_Etapa01_07.Cells[02,viComb19_02]) +                 strTOint(Stgr_Etapa01_07.Cells[03,viComb19_02]) +
                 strTOint(Stgr_Etapa01_07.Cells[04,viComb19_02]) +                 strTOint(Stgr_Etapa01_07.Cells[05,viComb19_02]) +
                 strTOint(Stgr_Etapa01_07.Cells[06,viComb19_02]) +                 strTOint(Stgr_Etapa01_07.Cells[07,viComb19_02]) +
                 strTOint(Stgr_Etapa01_07.Cells[08,viComb19_02])
                ;
                viNLinha15 := strTOint(Stgr_Etapa1_12.Cells[01,viComb19_01]);
                viNLinha10 := strTOint(Stgr_Etapa01_07.Cells[01,viComb19_02]);
                if not(viNLinha15 = viNLinha10) then
                    continue;
                if viSomaTotal = 247 then
                begin
                    Stgr_Etapa01_19.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                    Stgr_Etapa01_19.Cells[01,viLinhas01] := Stgr_Etapa1_12.Cells[01,viComb19_01] + '/' + Stgr_Etapa01_07.Cells[01,viComb19_02];
                    Stgr_Etapa01_19.Cells[02,viLinhas01] := Stgr_Etapa1_12.Cells[02,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[03,viLinhas01] := Stgr_Etapa1_12.Cells[03,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[04,viLinhas01] := Stgr_Etapa1_12.Cells[04,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[05,viLinhas01] := Stgr_Etapa1_12.Cells[05,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[06,viLinhas01] := Stgr_Etapa1_12.Cells[06,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[07,viLinhas01] := Stgr_Etapa1_12.Cells[07,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[08,viLinhas01] := Stgr_Etapa1_12.Cells[08,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[09,viLinhas01] := Stgr_Etapa1_12.Cells[09,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[10,viLinhas01] := Stgr_Etapa1_12.Cells[10,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[11,viLinhas01] := Stgr_Etapa1_12.Cells[11,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[12,viLinhas01] := Stgr_Etapa1_12.Cells[12,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[13,viLinhas01] :=  Stgr_Etapa1_12.Cells[13,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[14,viLinhas01] :=  Stgr_Etapa01_07.Cells[02,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[15,viLinhas01] :=  Stgr_Etapa01_07.Cells[03,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[16,viLinhas01] :=  Stgr_Etapa01_07.Cells[04,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[17,viLinhas01] :=  Stgr_Etapa01_07.Cells[05,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[18,viLinhas01] :=  Stgr_Etapa01_07.Cells[06,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[19,viLinhas01] :=  Stgr_Etapa01_07.Cells[07,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[20,viLinhas01] :=  Stgr_Etapa01_07.Cells[08,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[21,viLinhas01] := INTtoSTR( viSomaTotal ) + '' ;
                    if QtdPares19 (viLinhas01) and Contar19em21_22_23_24_25(viLinhas01) then
                    begin
                        Self.Ordenar_Comb19(viLinhas01);
                        viLinhas01 := viLinhas01 + 1;
                    end;
                end; // if
            END; //  for viComb15_06
            if (viComb19_01 mod 180)=0 then
            begin
                Stgr_Etapa01_19.RowCount := viLinhas01;
                Stgr_Etapa01_19.Repaint;
                sleep(6); //6
            end;
        END; //  for viComb15_05

    finally
        Stgr_Etapa01_19.RowCount := viLinhas01;
        Stgr_Etapa01_19.Repaint;
    end;
    Pgbr_EtaPa_01_01.Position :=70 ;
    Pgbr_EtaPa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure




Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_13e06();
var
     viLinhas01, viSomaTotal : Integer;
     viComb19_01, viComb19_02 : Integer;
     viNLinha15, viNLinha10: smallint;
begin
    Pgbr_EtaPa_01_01.Position :=70 ;
    Pgbr_EtaPa_01_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa01_19.Repaint;
    Scbx_dados.HorzScrollBar.Position := 6350;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := Stgr_Etapa01_19.RowCount;
    try
        for viComb19_01 := 1 TO (Stgr_Etapa1_13.RowCount-1) DO
        BEGIN
            for viComb19_02 := 1 TO (Stgr_Etapa01_06.RowCount-1)  DO
            BEGIN
                viSomaTotal :=
                 strTOint(Stgr_Etapa1_13.Cells[2,viComb19_01]) +                 strTOint(Stgr_Etapa1_13.Cells[3,viComb19_01]) +
                 strTOint(Stgr_Etapa1_13.Cells[4,viComb19_01]) +                 strTOint(Stgr_Etapa1_13.Cells[5,viComb19_01]) +
                 strTOint(Stgr_Etapa1_13.Cells[6,viComb19_01]) +                 strTOint(Stgr_Etapa1_13.Cells[7,viComb19_01]) +
                 strTOint(Stgr_Etapa1_13.Cells[8,viComb19_01]) +                 strTOint(Stgr_Etapa1_13.Cells[9,viComb19_01]) +
                 strTOint(Stgr_Etapa1_13.Cells[10,viComb19_01]) +                strTOint(Stgr_Etapa1_13.Cells[11,viComb19_01]) +
                 strTOint(Stgr_Etapa1_13.Cells[12,viComb19_01]) +				   strTOint(Stgr_Etapa1_13.Cells[13,viComb19_01]) +
				 strTOint(Stgr_Etapa1_13.Cells[14,viComb19_01]) +
                 strTOint(Stgr_Etapa01_06.Cells[02,viComb19_02]) +                 strTOint(Stgr_Etapa01_06.Cells[03,viComb19_02]) +
                 strTOint(Stgr_Etapa01_06.Cells[04,viComb19_02]) +                 strTOint(Stgr_Etapa01_06.Cells[05,viComb19_02]) +
                 strTOint(Stgr_Etapa01_06.Cells[06,viComb19_02]) +                 strTOint(Stgr_Etapa01_06.Cells[07,viComb19_02])
                ;
                viNLinha15 := strTOint(Stgr_Etapa1_13.Cells[01,viComb19_01]);
                viNLinha10 := strTOint(Stgr_Etapa01_06.Cells[01,viComb19_02]);
                if not(viNLinha15 = viNLinha10) then
                    continue;
                if viSomaTotal = 247 then
                begin
                    Stgr_Etapa01_19.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                    Stgr_Etapa01_19.Cells[01,viLinhas01] := Stgr_Etapa1_13.Cells[01,viComb19_01] + '/' + Stgr_Etapa01_06.Cells[01,viComb19_02];
                    Stgr_Etapa01_19.Cells[02,viLinhas01] := Stgr_Etapa1_13.Cells[02,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[03,viLinhas01] := Stgr_Etapa1_13.Cells[03,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[04,viLinhas01] := Stgr_Etapa1_13.Cells[04,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[05,viLinhas01] := Stgr_Etapa1_13.Cells[05,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[06,viLinhas01] := Stgr_Etapa1_13.Cells[06,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[07,viLinhas01] := Stgr_Etapa1_13.Cells[07,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[08,viLinhas01] := Stgr_Etapa1_13.Cells[08,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[09,viLinhas01] := Stgr_Etapa1_13.Cells[09,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[10,viLinhas01] := Stgr_Etapa1_13.Cells[10,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[11,viLinhas01] := Stgr_Etapa1_13.Cells[11,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[12,viLinhas01] := Stgr_Etapa1_13.Cells[12,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[13,viLinhas01] :=  Stgr_Etapa1_13.Cells[13,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[14,viLinhas01] :=  Stgr_Etapa1_13.Cells[14,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[15,viLinhas01] :=  Stgr_Etapa01_06.Cells[02,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[16,viLinhas01] :=  Stgr_Etapa01_06.Cells[03,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[17,viLinhas01] :=  Stgr_Etapa01_06.Cells[04,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[18,viLinhas01] :=  Stgr_Etapa01_06.Cells[05,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[19,viLinhas01] :=  Stgr_Etapa01_06.Cells[06,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[20,viLinhas01] :=  Stgr_Etapa01_06.Cells[07,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[21,viLinhas01] := INTtoSTR( viSomaTotal ) + '' ;
                    if QtdPares19 (viLinhas01) then
                    begin
                        Self.Ordenar_Comb19(viLinhas01);
                        if Contar19em21_22_23_24_25(viLinhas01) then
                           viLinhas01 := viLinhas01 + 1;
                    end;
                end; // if
            END; //  for viComb15_06
            Stgr_Etapa01_19.RowCount := viLinhas01;
            Stgr_Etapa01_19.Repaint;
                sleep(23);
        END; //  for viComb15_05

    finally
        Stgr_Etapa01_19.RowCount := viLinhas01;
        Stgr_Etapa01_19.Repaint;
    end;
    Pgbr_EtaPa_01_01.Position :=80 ;
    Pgbr_EtaPa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure



Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_13e06();
var
     viCombinacoes1, viLinhas01, vi_Base10Comb : Integer;
     viComb15_01, viComb15_02, viComb15_03, viComb15_04, viComb15_05, viComb15_06, viComb15_07, viComb15_08, viComb15_09, viComb15_10, viComb15_11, viComb15_12, viComb15_13 : Integer;
     viComb10_01, viComb10_02, viComb10_03, viComb10_04, viComb10_05, viComb10_06 : Integer;
begin
    Pgbr_EtaPa_01.Position :=70 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa01_06.RowCount := viLinhas01;
    Stgr_Etapa1_13.RowCount := viLinhas01;
    Stgr_Etapa01_06.Repaint;
    Stgr_Etapa1_13.Repaint;
    Scbx_dados.HorzScrollBar.Position := 3960;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    viCombinacoes1 := 1;
    try
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb15_01 := 2 TO 05 DO
            BEGIN
                for viComb15_02 := viComb15_01 + 1 TO 06 DO
                BEGIN
                    for viComb15_03 := viComb15_02 + 1 TO 07 DO
                    BEGIN
                        for viComb15_04 := viComb15_03 + 1 TO 08 DO
                        BEGIN
                            for viComb15_05 := viComb15_04 + 1 TO 09 DO
                            BEGIN
                                for viComb15_06 := viComb15_05 + 1 TO 10 DO
                                BEGIN
                                    for viComb15_07 := viComb15_06 + 1 TO 11-0 DO  //-2
                                    BEGIN
                                        for viComb15_08 := viComb15_07 + 1 TO 12-0 DO
                                            BEGIN
                                            for viComb15_09 := viComb15_08 + 1 TO 13-0 DO
                                            BEGIN
                                                for viComb15_10 := viComb15_09 + 1 TO 14-0 DO
                                                BEGIN
                                                    for viComb15_11 := viComb15_10 + 1 TO 14-0 DO
                                                        BEGIN
                                                        for viComb15_12 := viComb15_11 + 1 TO 15-0 DO
                                                        BEGIN
                                                            for viComb15_13 := viComb15_12 + 1 TO 16-0 DO
                                                            BEGIN
                                                                Stgr_Etapa1_13.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                                Stgr_Etapa1_13.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                                Stgr_Etapa1_13.Cells[02,viLinhas01] := Stgr_Base.Cells[viComb15_01,vi_Base10Comb] ;
                                                                Stgr_Etapa1_13.Cells[03,viLinhas01] := Stgr_Base.Cells[viComb15_02,vi_Base10Comb] ;
                                                                Stgr_Etapa1_13.Cells[04,viLinhas01] := Stgr_Base.Cells[viComb15_03,vi_Base10Comb] ;
                                                                Stgr_Etapa1_13.Cells[05,viLinhas01] := Stgr_Base.Cells[viComb15_04,vi_Base10Comb] ;
                                                                Stgr_Etapa1_13.Cells[06,viLinhas01] := Stgr_Base.Cells[viComb15_05,vi_Base10Comb] ;
                                                                Stgr_Etapa1_13.Cells[07,viLinhas01] := Stgr_Base.Cells[viComb15_06,vi_Base10Comb] ;
                                                                Stgr_Etapa1_13.Cells[08,viLinhas01] := Stgr_Base.Cells[viComb15_07,vi_Base10Comb] ;
                                                                Stgr_Etapa1_13.Cells[09,viLinhas01] := Stgr_Base.Cells[viComb15_08,vi_Base10Comb] ;
                                                                Stgr_Etapa1_13.Cells[10,viLinhas01] := Stgr_Base.Cells[viComb15_09,vi_Base10Comb] ;
                                                                Stgr_Etapa1_13.Cells[11,viLinhas01] := Stgr_Base.Cells[viComb15_10,vi_Base10Comb] ;
                                                                Stgr_Etapa1_13.Cells[12,viLinhas01] := Stgr_Base.Cells[viComb15_11,vi_Base10Comb] ;
                                                                Stgr_Etapa1_13.Cells[13,viLinhas01] := Stgr_Base.Cells[viComb15_12,vi_Base10Comb] ;
                                                                Stgr_Etapa1_13.Cells[14,viLinhas01] := Stgr_Base.Cells[viComb15_13,vi_Base10Comb] ;
                                                                viLinhas01 := viLinhas01 + 1;
                                                            END; //  for viComb15_13
                                                        END; //  for viComb15_12
                                                    END; //  for viComb15_11
                                                END; //  for viComb15_10
                                            END; //  for viComb15_09
                            Stgr_Etapa1_13.RowCount := viLinhas01;
                            Stgr_Etapa1_13.Repaint;
                sleep(1);
                                        END; //  for viComb15_08
                                    END; //  for viComb15_07
                                END; //  for viComb15_06
                            END; //  for viComb15_05
                        END; //  for viComb15_04
                    END; //  for viComb15_03
                END; //  for viComb15_02
            END; //  for viComb15_01
        END; //  for vi_Base10Comb
    viLinhas01 := 1;
    sleep(75);
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb10_01 := 2 TO 06 DO
            BEGIN
                for viComb10_02 := viComb10_01 + 1 TO 07 DO
                BEGIN
                    for viComb10_03 := viComb10_02 + 1 TO 08 DO
                    BEGIN
                        for viComb10_04 := viComb10_03 + 1 TO 09 DO
                        BEGIN
                            for viComb10_05 := viComb10_04 + 1 TO 10 DO
                            BEGIN
                                for viComb10_06 := viComb10_05 + 1 TO 11 DO
                                BEGIN
                                    Stgr_Etapa01_06.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                    Stgr_Etapa01_06.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                    Stgr_Etapa01_06.Cells[02,viLinhas01] := Stgr_Base10.Cells[viComb10_01,vi_Base10Comb] ;
                                    Stgr_Etapa01_06.Cells[03,viLinhas01] := Stgr_Base10.Cells[viComb10_02,vi_Base10Comb] ;
                                    Stgr_Etapa01_06.Cells[04,viLinhas01] := Stgr_Base10.Cells[viComb10_03,vi_Base10Comb] ;
                                    Stgr_Etapa01_06.Cells[05,viLinhas01] := Stgr_Base10.Cells[viComb10_04,vi_Base10Comb] ;
                                    Stgr_Etapa01_06.Cells[06,viLinhas01] := Stgr_Base10.Cells[viComb10_05,vi_Base10Comb] ;
                                    Stgr_Etapa01_06.Cells[07,viLinhas01] := Stgr_Base10.Cells[viComb10_06,vi_Base10Comb] ;
                                    viLinhas01 := viLinhas01 + 1;
                                END; //  for viComb10_06
                            END; //  for viComb10_05
                        END; //  for viComb10_04
                        Stgr_Etapa01_06.RowCount := viLinhas01;
                        Stgr_Etapa01_06.Repaint;
                sleep(1);
                    END; //  for viComb10_03
                END; //  for viComb10_02
            END; //  for viComb10_01
        END; //  for vi_Base10Comb
      sleep(75);  

    finally
        Stgr_Etapa01_06.RowCount := viLinhas01;
        Stgr_Etapa01_06.Repaint;
        Stgr_Etapa03_15.RowCount := viLinhas01;
        Stgr_Etapa03_15.Repaint;
    end;
    Stgr_Etapa03_15.RowCount := viLinhas01;
    Stgr_Etapa03_15.Repaint;
            Stgr_Etapa03_15.Repaint;
    Pgbr_EtaPa_01.Position := 80;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure



Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_14e05();
var
     viLinhas01, viSomaTotal : Integer;
     viComb19_01, viComb19_02 : Integer;
     viNLinha15, viNLinha10: smallint;
begin
    Pgbr_EtaPa_01_01.Position :=80   ;
    Pgbr_EtaPa_01_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa01_19.Repaint;
    Scbx_dados.HorzScrollBar.Position := 6350;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := Stgr_Etapa01_19.RowCount;
    try
        for viComb19_01 := 1 TO (Stgr_Etapa1_14.RowCount-1) DO
        BEGIN
            for viComb19_02 := 1 TO (Stgr_Etapa01_05.RowCount-1)  DO
            BEGIN
                viSomaTotal :=
                 strTOint(Stgr_Etapa1_14.Cells[2,viComb19_01]) +                 strTOint(Stgr_Etapa1_14.Cells[3,viComb19_01]) +
                 strTOint(Stgr_Etapa1_14.Cells[4,viComb19_01]) +                 strTOint(Stgr_Etapa1_14.Cells[5,viComb19_01]) +
                 strTOint(Stgr_Etapa1_14.Cells[6,viComb19_01]) +                 strTOint(Stgr_Etapa1_14.Cells[7,viComb19_01]) +
                 strTOint(Stgr_Etapa1_14.Cells[8,viComb19_01]) +                 strTOint(Stgr_Etapa1_14.Cells[9,viComb19_01]) +
                 strTOint(Stgr_Etapa1_14.Cells[10,viComb19_01]) +                strTOint(Stgr_Etapa1_14.Cells[11,viComb19_01]) +
                 strTOint(Stgr_Etapa1_14.Cells[12,viComb19_01]) +				   strTOint(Stgr_Etapa1_14.Cells[13,viComb19_01]) +
				 strTOint(Stgr_Etapa1_14.Cells[14,viComb19_01]) +				   strTOint(Stgr_Etapa1_14.Cells[15,viComb19_01]) +
                 strTOint(Stgr_Etapa01_05.Cells[02,viComb19_02]) +                 strTOint(Stgr_Etapa01_05.Cells[03,viComb19_02]) +
                 strTOint(Stgr_Etapa01_05.Cells[04,viComb19_02]) +                 strTOint(Stgr_Etapa01_05.Cells[05,viComb19_02]) +
                 strTOint(Stgr_Etapa01_05.Cells[06,viComb19_02])
                ;
                viNLinha15 := strTOint(Stgr_Etapa1_14.Cells[01,viComb19_01]);
                viNLinha10 := strTOint(Stgr_Etapa01_05.Cells[01,viComb19_02]);
                if not(viNLinha15 = viNLinha10) then
                    continue;
                if viSomaTotal = 247 then
                begin
                    Stgr_Etapa01_19.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                    Stgr_Etapa01_19.Cells[01,viLinhas01] := Stgr_Etapa1_14.Cells[01,viComb19_01] + '/' + Stgr_Etapa01_05.Cells[01,viComb19_02];
                    Stgr_Etapa01_19.Cells[02,viLinhas01] := Stgr_Etapa1_14.Cells[02,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[03,viLinhas01] := Stgr_Etapa1_14.Cells[03,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[04,viLinhas01] := Stgr_Etapa1_14.Cells[04,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[05,viLinhas01] := Stgr_Etapa1_14.Cells[05,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[06,viLinhas01] := Stgr_Etapa1_14.Cells[06,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[07,viLinhas01] := Stgr_Etapa1_14.Cells[07,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[08,viLinhas01] := Stgr_Etapa1_14.Cells[08,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[09,viLinhas01] := Stgr_Etapa1_14.Cells[09,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[10,viLinhas01] := Stgr_Etapa1_14.Cells[10,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[11,viLinhas01] := Stgr_Etapa1_14.Cells[11,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[12,viLinhas01] := Stgr_Etapa1_14.Cells[12,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[13,viLinhas01] :=  Stgr_Etapa1_14.Cells[13,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[14,viLinhas01] :=  Stgr_Etapa1_14.Cells[14,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[15,viLinhas01] :=  Stgr_Etapa1_14.Cells[15,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[16,viLinhas01] :=  Stgr_Etapa01_05.Cells[02,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[17,viLinhas01] :=  Stgr_Etapa01_05.Cells[03,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[18,viLinhas01] :=  Stgr_Etapa01_05.Cells[04,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[19,viLinhas01] :=  Stgr_Etapa01_05.Cells[05,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[20,viLinhas01] :=  Stgr_Etapa01_05.Cells[06,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[21,viLinhas01] := INTtoSTR( viSomaTotal ) + '' ;
                    if QtdPares19 (viLinhas01) and Contar19em21_22_23_24_25(viLinhas01) then
                    begin
                        Self.Ordenar_Comb19(viLinhas01);
                        viLinhas01 := viLinhas01 + 1;
                    end;
                end; // if
            END; //  for viComb15_06
            Stgr_Etapa01_19.RowCount := viLinhas01;
            Stgr_Etapa01_19.Repaint;
                sleep(02);
        END; //  for viComb15_05

    finally
        Stgr_Etapa01_19.RowCount := viLinhas01;
        Stgr_Etapa01_19.Repaint;
    end;
    Pgbr_EtaPa_01_01.Position :=92   ;
    Pgbr_EtaPa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure



Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19_15e04();
var
     viLinhas01, viSomaTotal : Integer;
     viComb19_01, viComb19_02 : Integer;
     viNLinha15, viNLinha10: smallint;
begin
    Pgbr_EtaPa_01_01.Position :=93  ;
    Pgbr_EtaPa_01_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa01_19.Repaint;
    Scbx_dados.HorzScrollBar.Position := 6350;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := Stgr_Etapa01_19.RowCount;
    try
        for viComb19_01 := 1 TO (Stgr_Etapa1_15.RowCount-1) DO
        BEGIN
            for viComb19_02 := 1 TO (Stgr_Etapa01_04.RowCount-1)  DO
            BEGIN
                viSomaTotal :=
                 strTOint(Stgr_Etapa1_15.Cells[2,viComb19_01]) +                 strTOint(Stgr_Etapa1_15.Cells[3,viComb19_01]) +
                 strTOint(Stgr_Etapa1_15.Cells[4,viComb19_01]) +                 strTOint(Stgr_Etapa1_15.Cells[5,viComb19_01]) +
                 strTOint(Stgr_Etapa1_15.Cells[6,viComb19_01]) +                 strTOint(Stgr_Etapa1_15.Cells[7,viComb19_01]) +
                 strTOint(Stgr_Etapa1_15.Cells[8,viComb19_01]) +                 strTOint(Stgr_Etapa1_15.Cells[9,viComb19_01]) +
                 strTOint(Stgr_Etapa1_15.Cells[10,viComb19_01]) +                strTOint(Stgr_Etapa1_15.Cells[11,viComb19_01]) +
                 strTOint(Stgr_Etapa1_15.Cells[12,viComb19_01]) +				   strTOint(Stgr_Etapa1_15.Cells[13,viComb19_01]) +
				 strTOint(Stgr_Etapa1_15.Cells[14,viComb19_01]) +				   strTOint(Stgr_Etapa1_15.Cells[15,viComb19_01]) +
				 strTOint(Stgr_Etapa1_15.Cells[16,viComb19_01]) +
                 strTOint(Stgr_Etapa01_04.Cells[02,viComb19_02]) +                 strTOint(Stgr_Etapa01_04.Cells[03,viComb19_02]) +
                 strTOint(Stgr_Etapa01_04.Cells[04,viComb19_02]) +                 strTOint(Stgr_Etapa01_04.Cells[05,viComb19_02])
                ;
                viNLinha15 := strTOint(Stgr_Etapa1_15.Cells[01,viComb19_01]);
                viNLinha10 := strTOint(Stgr_Etapa01_04.Cells[01,viComb19_02]);
                if not(viNLinha15 = viNLinha10) then
                    continue;
                if viSomaTotal = 247 then
                begin
                    Stgr_Etapa01_19.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                    Stgr_Etapa01_19.Cells[01,viLinhas01] := Stgr_Etapa1_15.Cells[01,viComb19_01] + '/' + Stgr_Etapa01_04.Cells[01,viComb19_02];
                    Stgr_Etapa01_19.Cells[02,viLinhas01] := Stgr_Etapa1_15.Cells[02,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[03,viLinhas01] := Stgr_Etapa1_15.Cells[03,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[04,viLinhas01] := Stgr_Etapa1_15.Cells[04,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[05,viLinhas01] := Stgr_Etapa1_15.Cells[05,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[06,viLinhas01] := Stgr_Etapa1_15.Cells[06,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[07,viLinhas01] := Stgr_Etapa1_15.Cells[07,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[08,viLinhas01] := Stgr_Etapa1_15.Cells[08,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[09,viLinhas01] := Stgr_Etapa1_15.Cells[09,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[10,viLinhas01] := Stgr_Etapa1_15.Cells[10,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[11,viLinhas01] := Stgr_Etapa1_15.Cells[11,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[12,viLinhas01] := Stgr_Etapa1_15.Cells[12,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[13,viLinhas01] := Stgr_Etapa1_15.Cells[13,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[14,viLinhas01] := Stgr_Etapa1_15.Cells[14,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[15,viLinhas01] := Stgr_Etapa1_15.Cells[15,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[16,viLinhas01] := Stgr_Etapa1_15.Cells[16,viComb19_01] ;
                    Stgr_Etapa01_19.Cells[17,viLinhas01] :=  Stgr_Etapa01_04.Cells[02,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[18,viLinhas01] :=  Stgr_Etapa01_04.Cells[03,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[19,viLinhas01] :=  Stgr_Etapa01_04.Cells[04,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[20,viLinhas01] :=  Stgr_Etapa01_04.Cells[05,viComb19_02] ;
                    Stgr_Etapa01_19.Cells[21,viLinhas01] := INTtoSTR( viSomaTotal ) + '' ;
                    if QtdPares19 (viLinhas01) and Contar19em21_22_23_24_25(viLinhas01) then
                    begin
                        Self.Ordenar_Comb19(viLinhas01);
                        viLinhas01 := viLinhas01 + 1;
                    end;
                end; // if
            END; //  for viComb19_02
            Stgr_Etapa01_19.RowCount := viLinhas01;
            Stgr_Etapa01_19.Repaint;
                sleep(02);
        END; //  for viComb19_01

    finally
        Stgr_Etapa01_19.RowCount := viLinhas01;
        Stgr_Etapa01_19.Repaint;
    end;
    Pgbr_EtaPa_01_01.Position :=100  ;
    Pgbr_EtaPa_01_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure





Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_14e05();
var
     viCombinacoes1, viLinhas01, vi_Base10Comb : Integer;
     viComb15_01, viComb15_02, viComb15_03, viComb15_04, viComb15_05, viComb15_06, viComb15_07, viComb15_08, viComb15_09, viComb15_10, viComb15_11, viComb15_12, viComb15_13, viComb15_14 : Integer;
     viComb10_01, viComb10_02, viComb10_03, viComb10_04, viComb10_05 : Integer;
begin
    Pgbr_EtaPa_01.Position :=80 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa01_05.RowCount := viLinhas01;
    Stgr_Etapa1_14.RowCount := viLinhas01;
    Stgr_Etapa01_05.Repaint;
    Stgr_Etapa1_14.Repaint;
    Scbx_dados.HorzScrollBar.Position := 4910;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    viCombinacoes1 := 1;
    try
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb15_01 := 2 TO 03 DO
            BEGIN
                for viComb15_02 := viComb15_01 + 1 TO 04 DO
                BEGIN
                    for viComb15_03 := viComb15_02 + 1 TO 05 DO
                    BEGIN
                        for viComb15_04 := viComb15_03 + 1 TO 06 DO
                        BEGIN
                            for viComb15_05 := viComb15_04 + 1 TO 07 DO
                            BEGIN
                                for viComb15_06 := viComb15_05 + 1 TO 08 DO
                                BEGIN
                                    for viComb15_07 := viComb15_06 + 1 TO 09 DO
                                    BEGIN
                                        for viComb15_08 := viComb15_07 + 1 TO 10-0 DO  //-1
                                            BEGIN
                                            for viComb15_09 := viComb15_08 + 1 TO 11-0 DO
                                            BEGIN
                                                for viComb15_10 := viComb15_09 + 1 TO 12-0 DO
                                                BEGIN
                                                    for viComb15_11 := viComb15_10 + 1 TO 13-0 DO
                                                        BEGIN
                                                        for viComb15_12 := viComb15_11 + 1 TO 14-0 DO
                                                        BEGIN
                                                            for viComb15_13 := viComb15_12 + 1 TO 15-0 DO
                                                            BEGIN
                                                                for viComb15_14 := viComb15_13 + 1 TO 16-0 DO
                                                                BEGIN
                                                                    Stgr_Etapa1_14.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                                    Stgr_Etapa1_14.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                                    Stgr_Etapa1_14.Cells[02,viLinhas01] := Stgr_Base.Cells[viComb15_01,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[03,viLinhas01] := Stgr_Base.Cells[viComb15_02,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[04,viLinhas01] := Stgr_Base.Cells[viComb15_03,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[05,viLinhas01] := Stgr_Base.Cells[viComb15_04,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[06,viLinhas01] := Stgr_Base.Cells[viComb15_05,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[07,viLinhas01] := Stgr_Base.Cells[viComb15_06,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[08,viLinhas01] := Stgr_Base.Cells[viComb15_07,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[09,viLinhas01] := Stgr_Base.Cells[viComb15_08,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[10,viLinhas01] := Stgr_Base.Cells[viComb15_09,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[11,viLinhas01] := Stgr_Base.Cells[viComb15_10,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[12,viLinhas01] := Stgr_Base.Cells[viComb15_11,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[13,viLinhas01] := Stgr_Base.Cells[viComb15_12,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[14,viLinhas01] := Stgr_Base.Cells[viComb15_13,vi_Base10Comb] ;
                                                                    Stgr_Etapa1_14.Cells[15,viLinhas01] := Stgr_Base.Cells[viComb15_14,vi_Base10Comb] ;
                                                                    viLinhas01 := viLinhas01 + 1;
                                                                END; //  for viComb15_14
                                                            END; //  for viComb15_13
                                                        END; //  for viComb15_12
                                                    END; //  for viComb15_11
                                Stgr_Etapa1_14.RowCount := viLinhas01;
                                Stgr_Etapa1_14.Repaint;
                                                END; //  for viComb15_10
                                            END; //  for viComb15_09
                                        END; //  for viComb15_08
                                    END; //  for viComb15_07
                                END; //  for viComb15_06
                            END; //  for viComb15_05
                        END; //  for viComb15_04
                    END; //  for viComb15_03
                END; //  for viComb15_02
            END; //  for viComb15_01
        END; //  for vi_Base10Comb
    viLinhas01 := 1;
    sleep(75);
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb10_01 := 2 TO 07 DO
            BEGIN
                for viComb10_02 := viComb10_01 + 1 TO 08 DO
                BEGIN
                    for viComb10_03 := viComb10_02 + 1 TO 09 DO
                    BEGIN
                        for viComb10_04 := viComb10_03 + 1 TO 10 DO
                        BEGIN
                            for viComb10_05 := viComb10_04 + 1 TO 11 DO
                            BEGIN
                                Stgr_Etapa01_05.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                Stgr_Etapa01_05.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                Stgr_Etapa01_05.Cells[02,viLinhas01] := Stgr_Base10.Cells[viComb10_01,vi_Base10Comb] ;
                                Stgr_Etapa01_05.Cells[03,viLinhas01] := Stgr_Base10.Cells[viComb10_02,vi_Base10Comb] ;
                                Stgr_Etapa01_05.Cells[04,viLinhas01] := Stgr_Base10.Cells[viComb10_03,vi_Base10Comb] ;
                                Stgr_Etapa01_05.Cells[05,viLinhas01] := Stgr_Base10.Cells[viComb10_04,vi_Base10Comb] ;
                                Stgr_Etapa01_05.Cells[06,viLinhas01] := Stgr_Base10.Cells[viComb10_05,vi_Base10Comb] ;
                                viLinhas01 := viLinhas01 + 1;
                            END; //  for viComb10_05
                            Stgr_Etapa01_05.RowCount := viLinhas01;
                            Stgr_Etapa01_05.Repaint;
                        END; //  for viComb10_04
                    END; //  for viComb10_03
                END; //  for viComb10_02
            END; //  for viComb10_01
        END; //  for vi_Base10Comb
     sleep(75);
    finally
        Stgr_Etapa01_05.RowCount := viLinhas01;
        Stgr_Etapa01_05.Repaint;
        Stgr_Etapa03_15.RowCount := viLinhas01;
        Stgr_Etapa03_15.Repaint;
    end;
    Stgr_Etapa03_15.RowCount := viLinhas01;
    Stgr_Etapa03_15.Repaint;
            Stgr_Etapa03_15.Repaint;
    Pgbr_EtaPa_01.Position := 92;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure




Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_15e04();
var
     viCombinacoes1, viLinhas01, vi_Base10Comb : Integer;
     viComb15_01, viComb15_02, viComb15_03, viComb15_04, viComb15_05, viComb15_06, viComb15_07, viComb15_08, viComb15_09, viComb15_10, viComb15_11, viComb15_12, viComb15_13, viComb15_14, viComb15_15 : Integer;
     viComb10_01, viComb10_02, viComb10_03, viComb10_04 : Integer;
begin
    Pgbr_EtaPa_01.Position :=92 ;
    Pgbr_EtaPa_01.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa01_04.RowCount := viLinhas01;
    Stgr_Etapa1_15.RowCount := viLinhas01;
    Stgr_Etapa01_04.Repaint;
    Stgr_Etapa1_15.Repaint;
    Scbx_dados.HorzScrollBar.Position := 5799;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    viCombinacoes1 := 1;
    try
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb15_01 := 2 TO 02 DO
            BEGIN
                for viComb15_02 := viComb15_01 + 1 TO 03 DO
                BEGIN
                    for viComb15_03 := viComb15_02 + 1 TO 04 DO
                    BEGIN
                        for viComb15_04 := viComb15_03 + 1 TO 05 DO
                        BEGIN
                            for viComb15_05 := viComb15_04 + 1 TO 06 DO
                            BEGIN
                                for viComb15_06 := viComb15_05 + 1 TO 07 DO
                                BEGIN
                                    for viComb15_07 := viComb15_06 + 1 TO 08 DO
                                    BEGIN
                                        for viComb15_08 := viComb15_07 + 1 TO 09 DO
                                            BEGIN
                                            for viComb15_09 := viComb15_08 + 1 TO 10 DO
                                            BEGIN
                                                for viComb15_10 := viComb15_09 + 1 TO 11 DO
                                                BEGIN
                                                    for viComb15_11 := viComb15_10 + 1 TO 12 DO
                                                        BEGIN
                                                        for viComb15_12 := viComb15_11 + 1 TO 13 DO
                                                        BEGIN
                                                            for viComb15_13 := viComb15_12 + 1 TO 14 DO
                                                            BEGIN
                                                                for viComb15_14 := viComb15_13 + 1 TO 15 DO
                                                                BEGIN
                                                                    for viComb15_15 := viComb15_14 + 1 TO 16 DO
                                                                    BEGIN
                                                                        Stgr_Etapa1_15.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                                        Stgr_Etapa1_15.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                                                                        Stgr_Etapa1_15.Cells[02,viLinhas01] := Stgr_Base.Cells[viComb15_01,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[03,viLinhas01] := Stgr_Base.Cells[viComb15_02,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[04,viLinhas01] := Stgr_Base.Cells[viComb15_03,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[05,viLinhas01] := Stgr_Base.Cells[viComb15_04,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[06,viLinhas01] := Stgr_Base.Cells[viComb15_05,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[07,viLinhas01] := Stgr_Base.Cells[viComb15_06,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[08,viLinhas01] := Stgr_Base.Cells[viComb15_07,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[09,viLinhas01] := Stgr_Base.Cells[viComb15_08,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[10,viLinhas01] := Stgr_Base.Cells[viComb15_09,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[11,viLinhas01] := Stgr_Base.Cells[viComb15_10,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[12,viLinhas01] := Stgr_Base.Cells[viComb15_11,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[13,viLinhas01] := Stgr_Base.Cells[viComb15_12,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[14,viLinhas01] := Stgr_Base.Cells[viComb15_13,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[15,viLinhas01] := Stgr_Base.Cells[viComb15_14,vi_Base10Comb] ;
                                                                        Stgr_Etapa1_15.Cells[16,viLinhas01] := Stgr_Base.Cells[viComb15_15,vi_Base10Comb] ;
                                                                        viLinhas01 := viLinhas01 + 1;
                                                                    END; //  for viComb15_15
                                                                END; //  for viComb15_14
                                                            END; //  for viComb15_13
                                                        END; //  for viComb15_12
                                                    END; //  for viComb15_11
                                                END; //  for viComb15_10
                                            END; //  for viComb15_09
                                        END; //  for viComb15_08
                                       Stgr_Etapa1_15.RowCount := viLinhas01;
                                       Stgr_Etapa1_15.Repaint;
                                    END; //  for viComb15_07
                                END; //  for viComb15_06
                            END; //  for viComb15_05
                        END; //  for viComb15_04
                    END; //  for viComb15_03
                END; //  for viComb15_02
            END; //  for viComb15_01
        END; //  for vi_Base10Comb

    viLinhas01 := 1;
    sleep(75);
        for vi_Base10Comb := 1 TO (Stgr_Base10.RowCount-1) DO
        BEGIN
            for viComb10_01 := 2 TO 08 DO
            BEGIN
                for viComb10_02 := viComb10_01 + 1 TO 09 DO
                BEGIN
                    for viComb10_03 := viComb10_02 + 1 TO 10 DO
                    BEGIN
                        for viComb10_04 := viComb10_03 + 1 TO 11 DO
                        BEGIN
                            Stgr_Etapa01_04.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                            Stgr_Etapa01_04.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                            Stgr_Etapa01_04.Cells[02,viLinhas01] := Stgr_Base10.Cells[viComb10_01,vi_Base10Comb] ;
                            Stgr_Etapa01_04.Cells[03,viLinhas01] := Stgr_Base10.Cells[viComb10_02,vi_Base10Comb] ;
                            Stgr_Etapa01_04.Cells[04,viLinhas01] := Stgr_Base10.Cells[viComb10_03,vi_Base10Comb] ;
                            Stgr_Etapa01_04.Cells[05,viLinhas01] := Stgr_Base10.Cells[viComb10_04,vi_Base10Comb] ;
                            viLinhas01 := viLinhas01 + 1;
                        END; //  for viComb10_04
                    END; //  for viComb10_03
                END; //  for viComb10_02
                Stgr_Etapa01_04.RowCount := viLinhas01;
                Stgr_Etapa01_04.Repaint;
            END; //  for viComb10_01
        END; //  for vi_Base10Comb
     sleep(75);
    finally
        Stgr_Etapa01_04.RowCount := viLinhas01;
        Stgr_Etapa01_04.Repaint;
        Stgr_Etapa03_15.RowCount := viLinhas01;
        Stgr_Etapa03_15.Repaint;
    end;
    Stgr_Etapa03_15.RowCount := viLinhas01;
    Stgr_Etapa03_15.Repaint;
            Stgr_Etapa03_15.Repaint;
    Pgbr_EtaPa_01.Position := 100;
    Pgbr_EtaPa_01.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure



Function T_F_Gerador_ResDiv_25Linhas2.FN_VALIDAR_ETAPa_2_parte1(viLinhas, viSoma: Integer) : Boolean;
VAR
     viComb12i_1, viComb12i_2, viComb12i_3, viComb12i_4, viComb12i_5, viComb12i_6, viComb12i_7, viComb12i_8, viComb12i_9, viComb12i_A, viComb12i_B, viComb12i_C : Integer;
     viLinhas12, viContaSel1, viSomaTotal, viContarQtdPares, viContar_repeticoes : Integer;
     vasi_12Numeros : array [1..12] of Shortint;
BEGIN
	Stgr_Etapa01_19.Cells[22,viLinhas] := 'F';
    viLinhas12 := Stgr_Etapa02_12.RowCount;
    viContar_repeticoes := 0;
	for  viComb12i_1 := 2 to 10 do
	begin
		for  viComb12i_2 := viComb12i_1 +1  to 11 do
		begin
			for  viComb12i_3 := viComb12i_2+ 1  to 12 do
			begin
				for  viComb12i_4 := viComb12i_3 +1  to 13 do
				begin
					for  viComb12i_5 := viComb12i_4 +1  to 14 do
					begin
						for  viComb12i_6 := viComb12i_5 +1  to 15 do
						begin
    						for  viComb12i_7 := viComb12i_6 +1  to 16 do
	    					begin
								for  viComb12i_8 := viComb12i_7+ 1  to 16 do
								begin
									for  viComb12i_9 := viComb12i_8 +1  to 17 do
									begin
										for  viComb12i_A := viComb12i_9 +1  to 18 do
										begin
											for  viComb12i_B := viComb12i_A +1  to 19 do
											begin
												for  viComb12i_C := viComb12i_B +1  to 20 do
												begin
													vasi_12Numeros [01] := Stgr_Etapa01_19.Cells[viComb12i_1,viLinhas].ToInteger ;
													vasi_12Numeros [02] := Stgr_Etapa01_19.Cells[viComb12i_2,viLinhas].ToInteger ;
													vasi_12Numeros [03] := Stgr_Etapa01_19.Cells[viComb12i_3,viLinhas].ToInteger ;
													vasi_12Numeros [04] := Stgr_Etapa01_19.Cells[viComb12i_4,viLinhas].ToInteger ;
													vasi_12Numeros [05] := Stgr_Etapa01_19.Cells[viComb12i_5,viLinhas].ToInteger ;
													vasi_12Numeros [06] := Stgr_Etapa01_19.Cells[viComb12i_6,viLinhas].ToInteger ;
													vasi_12Numeros [07] := Stgr_Etapa01_19.Cells[viComb12i_7,viLinhas].ToInteger ;
													vasi_12Numeros [08] := Stgr_Etapa01_19.Cells[viComb12i_8,viLinhas].ToInteger ;
													vasi_12Numeros [09] := Stgr_Etapa01_19.Cells[viComb12i_9,viLinhas].ToInteger ;
													vasi_12Numeros [10] := Stgr_Etapa01_19.Cells[viComb12i_A,viLinhas].ToInteger ;
													vasi_12Numeros [11] := Stgr_Etapa01_19.Cells[viComb12i_B,viLinhas].ToInteger ;
													vasi_12Numeros [12] := Stgr_Etapa01_19.Cells[viComb12i_C,viLinhas].ToInteger ;
													viSomaTotal := (vasi_12Numeros [01] + vasi_12Numeros [02] + vasi_12Numeros [03] + vasi_12Numeros [04] + vasi_12Numeros [05]+ vasi_12Numeros [06]+ vasi_12Numeros [07] + vasi_12Numeros [08] + vasi_12Numeros [09] + vasi_12Numeros [10]+ vasi_12Numeros [11]+ vasi_12Numeros [12]);
													if (viSomaTotal = viSoma ) then
													begin
														viContarQtdPares := 0;
														for  viContaSel1 := 1  to 12  do
														begin
															if (vasi_12Numeros[viContaSel1] MOD 2) = 0  THEN
																viContarQtdPares := viContarQtdPares +1 ;
														end; // for
														if  (viContarQtdPares = 6) then
														begin
															Stgr_Etapa01_19.Cells[22,viLinhas] := 'V';
                                                            // montar o grid com os 12 números
                                                            Stgr_Etapa02_12.Cells[00,viLinhas12] := viLinhas12.ToString;
                                                            Stgr_Etapa02_12.Cells[01,viLinhas12] := Stgr_Etapa01_19.Cells[0,viLinhas];
                                                            Stgr_Etapa02_12.Cells[02,viLinhas12] := vasi_12Numeros [01].ToString;
                                                            Stgr_Etapa02_12.Cells[03,viLinhas12] := vasi_12Numeros [02].ToString;
                                                            Stgr_Etapa02_12.Cells[04,viLinhas12] := vasi_12Numeros [03].ToString;
                                                            Stgr_Etapa02_12.Cells[05,viLinhas12] := vasi_12Numeros [04].ToString;
                                                            Stgr_Etapa02_12.Cells[06,viLinhas12] := vasi_12Numeros [05].ToString;
                                                            Stgr_Etapa02_12.Cells[07,viLinhas12] := vasi_12Numeros [06].ToString;
                                                            Stgr_Etapa02_12.Cells[08,viLinhas12] := vasi_12Numeros [07].ToString;
                                                            Stgr_Etapa02_12.Cells[09,viLinhas12] := vasi_12Numeros [08].ToString;
                                                            Stgr_Etapa02_12.Cells[10,viLinhas12] := vasi_12Numeros [09].ToString;
                                                            Stgr_Etapa02_12.Cells[11,viLinhas12] := vasi_12Numeros [10].ToString;
                                                            Stgr_Etapa02_12.Cells[12,viLinhas12] := vasi_12Numeros [11].ToString;
                                                            Stgr_Etapa02_12.Cells[13,viLinhas12] := vasi_12Numeros [12].ToString;
                                                           if Contar12em21_22_23_24_25(viLinhas12) then
                                                           begin
                                                               viLinhas12 := viLinhas12+1;
                                                               viContar_repeticoes := viContar_repeticoes + 1;
                                                           end;
                                                           { if viContar_repeticoes = 152 then
                                                            begin
                                                                Stgr_Etapa02_12.RowCount:= viLinhas12+1;
                                                                exit;
                                                            end;///if
                                                            }
															//Result := True;
															//exit;
														end; /// IF
													end; /// IF
												end; // for
											end; // for
										end; // for
                           end; // for
                       end; // for
		    				end; // for
						end; // for
					end; // for
				end; // for
			end; // for
		end; // for
	end; // for
	//result := false;
    Stgr_Etapa02_12.RowCount:= viLinhas12;
END;




Function T_F_Gerador_ResDiv_25Linhas2.FN_VALIDAR_ETAPa_2_parte2(viLinhas, viSoma: Integer) : Boolean;
VAR
     viComb07i_1, viComb07i_2, viComb07i_3, viComb07i_4, viComb07i_5, viComb07i_6, viComb07i_7 : Integer;
     viContar, viContaSel1, viSomaTotal, viContarQtdPares : Integer;
     vasi_7Numeros : array [1..7] of Shortint;
BEGIN
	Stgr_Etapa01_19.Cells[23,viLinhas] := 'F';
	for  viComb07i_1 := 2 to 14 do
	begin
		for  viComb07i_2 := viComb07i_1 +1  to 15 do
		begin
			for  viComb07i_3 := viComb07i_2+ 1  to 16 do
			begin
				for  viComb07i_4 := viComb07i_3 +1  to 17 do
				begin
					for  viComb07i_5 := viComb07i_4 +1  to 18 do
					begin
						for  viComb07i_6 := viComb07i_5 +1  to 19 do
						begin
    						for  viComb07i_7 := viComb07i_6 +1  to 20 do
	    					begin
                        vasi_7Numeros [01] := Stgr_Etapa01_19.Cells[viComb07i_1,viLinhas].ToInteger ;
                        vasi_7Numeros [02] := Stgr_Etapa01_19.Cells[viComb07i_2,viLinhas].ToInteger ;
                        vasi_7Numeros [03] := Stgr_Etapa01_19.Cells[viComb07i_3,viLinhas].ToInteger ;
                        vasi_7Numeros [04] := Stgr_Etapa01_19.Cells[viComb07i_4,viLinhas].ToInteger ;
                        vasi_7Numeros [05] := Stgr_Etapa01_19.Cells[viComb07i_5,viLinhas].ToInteger ;
                        vasi_7Numeros [06] := Stgr_Etapa01_19.Cells[viComb07i_6,viLinhas].ToInteger ;
                        vasi_7Numeros [07] := Stgr_Etapa01_19.Cells[viComb07i_7,viLinhas].ToInteger ;
                        viSomaTotal := (vasi_7Numeros [01] + vasi_7Numeros [02] + vasi_7Numeros [03] + vasi_7Numeros [04] + vasi_7Numeros [05]+ vasi_7Numeros [06]+ vasi_7Numeros [07]);
                        if (viSomaTotal = viSoma ) then
                        begin
                           viContarQtdPares := 0;
                           for  viContaSel1 := 1  to 7  do
                           begin
                               if (vasi_7Numeros[viContaSel1] MOD 2) = 0  THEN
                                   viContarQtdPares := viContarQtdPares +1 ;
                           end; // for
                           if  (viContarQtdPares = 4) then
                           begin
                               Stgr_Etapa01_19.Cells[23,viLinhas] := 'V';
                               Result := True;
                               exit;
                           end; /// IF
                        end; /// IF
		    				end; // for
						end; // for
					end; // for
				end; // for
			end; // for
		end; // for
	end; // for
	result := false;
END;


Procedure T_F_Gerador_ResDiv_25Linhas2.AnaliseComb_06e03();
var
     viSomaTotal, viCombinacoes1, viLinhas01, vi_Base10Comb : Integer;
     viComb06_01, viComb06_02, viComb06_03 : Integer;
begin
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_Etapa02_03.RowCount := viLinhas01;
    Stgr_Etapa02_03.Repaint;
    Stgr_Etapa02_06.Repaint;
    Scbx_dados.HorzScrollBar.Position := 7280;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    sleep(90);
    viLinhas01 := 1;
    viCombinacoes1 := 1;
    try
    viLinhas01 := 1;
    sleep(5);
        for vi_Base10Comb := 1 TO (Stgr_Etapa02_06.RowCount-1) DO
        BEGIN
            for viComb06_01 := 2 TO 05 DO
            BEGIN
                for viComb06_02 := viComb06_01 + 1 TO 06 DO
                BEGIN
                    for viComb06_03 := viComb06_02 + 1 TO 07 DO
                    BEGIN
                        viSomaTotal := strTOint (Stgr_Etapa02_06.Cells[viComb06_01,vi_Base10Comb]) + STRtoINT (Stgr_Etapa02_06.Cells[viComb06_02,vi_Base10Comb]) + STRtoINT (Stgr_Etapa02_06.Cells[viComb06_03,vi_Base10Comb] );
                        IF (viSomaTotal>=6) and  (viSomaTotal<=72) THEN  // 28 a 31
                        BEGIN
                            Stgr_Etapa02_03.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                            Stgr_Etapa02_03.Cells[01,viLinhas01] := '+' + INTtoSTR( vi_Base10Comb ) + '' ;
                            Stgr_Etapa02_03.Cells[02,viLinhas01] := Stgr_Etapa02_06.Cells[viComb06_01,vi_Base10Comb] ;
                            Stgr_Etapa02_03.Cells[03,viLinhas01] := Stgr_Etapa02_06.Cells[viComb06_02,vi_Base10Comb] ;
                            Stgr_Etapa02_03.Cells[04,viLinhas01] := Stgr_Etapa02_06.Cells[viComb06_03,vi_Base10Comb] ;
                            viLinhas01 := viLinhas01 + 1;
                        END; /// IF
                    END; //  for viComb10_03
                END; //  for viComb10_02
            END; //  for viComb06_01
        END; //  for vi_Base10Comb
		Stgr_Etapa02_03.RowCount := viLinhas01;
		Stgr_Etapa02_03.Repaint;
    finally
        Stgr_Etapa02_03.RowCount := viLinhas01;
        Stgr_Etapa02_03.Repaint;
    end;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end; // Procedure



Function T_F_Gerador_ResDiv_25Linhas2.Validar_Blocos1e2 (viLinhas01: Integer):boolean;
var
    viContar, viQtdNaLinha1, viQtdNaLinha2, viQtdNaLinha3, viQtdNaLinha4 ,viQtdNaLinha5 : shortint;
    viQtdLinhasC1, viQtdLinhasC2, viQtdLinhasC3, viQtdLinhasC4 ,viQtdLinhasC5 : shortint;
begin
    viQtdNaLinha1 := 0;
    viQtdNaLinha2 := 0;
    viQtdNaLinha3 := 0;
    viQtdNaLinha4 := 0;
    viQtdNaLinha5 := 0;
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
    FOR viContar :=2 TO 16 DO
    BEGIN
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[1,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[2,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[3,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[4,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[5,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;

        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[1,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[2,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[3,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[4,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[5,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;

        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[1,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[2,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[3,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[4,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[5,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;

        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[1,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[2,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[3,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[4,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[5,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;

        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[1,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[2,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[3,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[4,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco01.Cells[5,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
    END; // FOR viContar1
    viQtdLinhasC1 := 0;
    viQtdLinhasC2 := 0;
    viQtdLinhasC3 := 0;
    viQtdLinhasC4 := 0;
    viQtdLinhasC5 := 0;
    //
    // verificando a quantia por linhas
    //
    if (viQtdNaLinha1 =1) then viQtdLinhasC1 := viQtdLinhasC1 +1;
    if (viQtdNaLinha2 =1) then viQtdLinhasC1 := viQtdLinhasC1 +1;
    if (viQtdNaLinha3 =1) then viQtdLinhasC1 := viQtdLinhasC1 +1;
    if (viQtdNaLinha4 =1) then viQtdLinhasC1 := viQtdLinhasC1 +1;
    if (viQtdNaLinha5 =1) then viQtdLinhasC1 := viQtdLinhasC1 +1;
    if (viQtdNaLinha1 =2) then viQtdLinhasC2 := viQtdLinhasC2 +1;
    if (viQtdNaLinha2 =2) then viQtdLinhasC2 := viQtdLinhasC2 +1;
    if (viQtdNaLinha3 =2) then viQtdLinhasC2 := viQtdLinhasC2 +1;
    if (viQtdNaLinha4 =2) then viQtdLinhasC2 := viQtdLinhasC2 +1;
    if (viQtdNaLinha5 =2) then viQtdLinhasC2 := viQtdLinhasC2 +1;

    if (viQtdNaLinha1 =3) then viQtdLinhasC3 := viQtdLinhasC3 +1;
    if (viQtdNaLinha2 =3) then viQtdLinhasC3 := viQtdLinhasC3 +1;
    if (viQtdNaLinha3 =3) then viQtdLinhasC3 := viQtdLinhasC3 +1;
    if (viQtdNaLinha4 =3) then viQtdLinhasC3 := viQtdLinhasC3 +1;
    if (viQtdNaLinha5 =3) then viQtdLinhasC3 := viQtdLinhasC3 +1;
    if (viQtdNaLinha1 =4) then viQtdLinhasC4 := viQtdLinhasC4 +1;
    if (viQtdNaLinha2 =4) then viQtdLinhasC4 := viQtdLinhasC4 +1;
    if (viQtdNaLinha3 =4) then viQtdLinhasC4 := viQtdLinhasC4 +1;
    if (viQtdNaLinha4 =4) then viQtdLinhasC4 := viQtdLinhasC4 +1;
    if (viQtdNaLinha5 =4) then viQtdLinhasC4 := viQtdLinhasC4 +1;

    if (viQtdNaLinha1 =5) then viQtdLinhasC5 := viQtdLinhasC4 +1;
    if (viQtdNaLinha2 =5) then viQtdLinhasC5 := viQtdLinhasC4 +1;
    if (viQtdNaLinha3 =5) then viQtdLinhasC5 := viQtdLinhasC4 +1;
    if (viQtdNaLinha4 =5) then viQtdLinhasC5 := viQtdLinhasC4 +1;
    if (viQtdNaLinha5 =5) then viQtdLinhasC5 := viQtdLinhasC4 +1;
    IF ( (viQtdLinhasC1 =1) AND (viQtdLinhasC2 =1) AND (viQtdLinhasC3 =1) AND (viQtdLinhasC4 =1) AND (viQtdLinhasC5 =1)
       ) OR (
    (viQtdLinhasC2 =2) AND (viQtdLinhasC3 =1) AND (viQtdLinhasC4 =2)
    )
    THEN
        Result := True
    else
    begin
        FOR viContar :=2 TO 16 DO
        BEGIN
            if (Stgr_Etapa03_15.Cells[viContar,viLinhas01].ToInteger) = (strTOint(Stgr_Bloco02.Cells[1,1]))  then
                viQtdNaLinha1 := viQtdNaLinha1 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[2,1]))  then
                viQtdNaLinha1 := viQtdNaLinha1 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[3,1]))  then
                viQtdNaLinha1 := viQtdNaLinha1 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[4,1]))  then
                viQtdNaLinha1 := viQtdNaLinha1 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[5,1]))  then
                viQtdNaLinha1 := viQtdNaLinha1 +1;

            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[1,2]))  then
                viQtdNaLinha2 := viQtdNaLinha2 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[2,2]))  then
                viQtdNaLinha2 := viQtdNaLinha2 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[3,2]))  then
                viQtdNaLinha2 := viQtdNaLinha2 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[4,2]))  then
                viQtdNaLinha2 := viQtdNaLinha2 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[5,2]))  then
                viQtdNaLinha2 := viQtdNaLinha2 +1;

            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[1,3]))  then
                viQtdNaLinha3 := viQtdNaLinha3 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[2,3]))  then
                viQtdNaLinha3 := viQtdNaLinha3 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[3,3]))  then
                viQtdNaLinha3 := viQtdNaLinha3 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[4,3]))  then
                viQtdNaLinha3 := viQtdNaLinha3 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[5,3]))  then
                viQtdNaLinha3 := viQtdNaLinha3 +1;

            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[1,4]))  then
                viQtdNaLinha4 := viQtdNaLinha4 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[2,4]))  then
                viQtdNaLinha4 := viQtdNaLinha4 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[3,4]))  then
                viQtdNaLinha4 := viQtdNaLinha4 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[4,4]))  then
                viQtdNaLinha4 := viQtdNaLinha4 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[5,4]))  then
                viQtdNaLinha4 := viQtdNaLinha4 +1;

            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[1,5]))  then
                viQtdNaLinha5 := viQtdNaLinha5 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[2,5]))  then
                viQtdNaLinha5 := viQtdNaLinha5 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[3,5]))  then
                viQtdNaLinha5 := viQtdNaLinha5 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[4,5]))  then
                viQtdNaLinha5 := viQtdNaLinha5 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Bloco02.Cells[5,5]))  then
                viQtdNaLinha5 := viQtdNaLinha5 +1;
        END; // FOR viContar1
        viQtdLinhasC1 := 0;
        viQtdLinhasC2 := 0;
        viQtdLinhasC3 := 0;
        viQtdLinhasC4 := 0;
        viQtdLinhasC5 := 0;
        //
        // verificando a quantia por linhas
        //
        if (viQtdNaLinha1 =1) then viQtdLinhasC1 := viQtdLinhasC1 +1;
        if (viQtdNaLinha2 =1) then viQtdLinhasC1 := viQtdLinhasC1 +1;
        if (viQtdNaLinha3 =1) then viQtdLinhasC1 := viQtdLinhasC1 +1;
        if (viQtdNaLinha4 =1) then viQtdLinhasC1 := viQtdLinhasC1 +1;
        if (viQtdNaLinha5 =1) then viQtdLinhasC1 := viQtdLinhasC1 +1;
        if (viQtdNaLinha1 =2) then viQtdLinhasC2 := viQtdLinhasC2 +1;
        if (viQtdNaLinha2 =2) then viQtdLinhasC2 := viQtdLinhasC2 +1;
        if (viQtdNaLinha3 =2) then viQtdLinhasC2 := viQtdLinhasC2 +1;
        if (viQtdNaLinha4 =2) then viQtdLinhasC2 := viQtdLinhasC2 +1;
        if (viQtdNaLinha5 =2) then viQtdLinhasC2 := viQtdLinhasC2 +1;

        if (viQtdNaLinha1 =3) then viQtdLinhasC3 := viQtdLinhasC3 +1;
        if (viQtdNaLinha2 =3) then viQtdLinhasC3 := viQtdLinhasC3 +1;
        if (viQtdNaLinha3 =3) then viQtdLinhasC3 := viQtdLinhasC3 +1;
        if (viQtdNaLinha4 =3) then viQtdLinhasC3 := viQtdLinhasC3 +1;
        if (viQtdNaLinha5 =3) then viQtdLinhasC3 := viQtdLinhasC3 +1;
        if (viQtdNaLinha1 =4) then viQtdLinhasC4 := viQtdLinhasC4 +1;
        if (viQtdNaLinha2 =4) then viQtdLinhasC4 := viQtdLinhasC4 +1;
        if (viQtdNaLinha3 =4) then viQtdLinhasC4 := viQtdLinhasC4 +1;
        if (viQtdNaLinha4 =4) then viQtdLinhasC4 := viQtdLinhasC4 +1;
        if (viQtdNaLinha5 =4) then viQtdLinhasC4 := viQtdLinhasC4 +1;

        if (viQtdNaLinha1 =5) then viQtdLinhasC5 := viQtdLinhasC4 +1;
        if (viQtdNaLinha2 =5) then viQtdLinhasC5 := viQtdLinhasC4 +1;
        if (viQtdNaLinha3 =5) then viQtdLinhasC5 := viQtdLinhasC4 +1;
        if (viQtdNaLinha4 =5) then viQtdLinhasC5 := viQtdLinhasC4 +1;
        if (viQtdNaLinha5 =5) then viQtdLinhasC5 := viQtdLinhasC4 +1;
        IF (
        (viQtdLinhasC1 =1) AND (viQtdLinhasC2 =1) AND (viQtdLinhasC3 =1) AND (viQtdLinhasC4 =1) AND (viQtdLinhasC5 =1)
        ) OR (
        (viQtdLinhasC2 =2) AND (viQtdLinhasC3 =1) AND (viQtdLinhasC4 =2)
        )
        THEN
            RESULT := True
        else
            Result := False;
    end; /// if ( (viQtdLinhasC1 =1) AND (viQtdLinhasC2 =1) AND (viQtdLinhasC3 =1) AND (viQtdLinhasC4 =1) AND (viQtdLinhasC5 =1)
end; // Procedure



Function T_F_Gerador_ResDiv_25Linhas2.Validar_LinhasFinais (viLinhas01: Integer):boolean;
var
    viContar, viQtdNaLinha1, viQtdNaLinha2, viQtdNaLinha3, viQtdNaLinha4 ,viQtdNaLinha5 : shortint;
begin
    viQtdNaLinha1 := 0;
    viQtdNaLinha2 := 0;
    viQtdNaLinha3 := 0;
    viQtdNaLinha4 := 0;
    viQtdNaLinha5 := 0;
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
    FOR viContar :=2 TO 16 DO
    BEGIN
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[1,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[2,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[3,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[4,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[5,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;

        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[1,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[2,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[3,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[4,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[5,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;

        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[1,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[2,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[3,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[4,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[5,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;

        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[1,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[2,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[3,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[4,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[5,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;

        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[1,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[2,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[3,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[4,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[5,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
    END; // FOR viContar1
    IF ( (viQtdNaLinha1 =Trb_b25_L01.Position ) AND (viQtdNaLinha2 = Trb_b25_L02.Position) AND (viQtdNaLinha3 = Trb_b25_L03.Position) AND (viQtdNaLinha4 =Trb_b25_L04.Position) AND (viQtdNaLinha5 = Trb_b25_L05.Position) )
    THEN
        Result := True
    else
        Result := False;
end;



Function T_F_Gerador_ResDiv_25Linhas2.Validar_LinhasIniciais (viLinhas01: Integer):boolean;
var
    viContadorDeColunas, viContar, viQtdNaLinha01, viQtdNaLinha02, viQtdNaLinha03, viQtdNaLinha04 ,viQtdNaLinha05, viQtdNaLinha06, viQtdNaLinha07, viQtdNaLinha08, viQtdNaLinha09 ,viQtdNaLinha10 : shortint;
begin
    viQtdNaLinha01 := 0;
    viQtdNaLinha02 := 0;
    viQtdNaLinha03 := 0;
    viQtdNaLinha04 := 0;
    viQtdNaLinha05 := 0;
    viQtdNaLinha06 := 0;
    viQtdNaLinha07 := 0;
    viQtdNaLinha08 := 0;
    viQtdNaLinha09 := 0;
    viQtdNaLinha10 := 0;
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
    FOR viContar :=2 TO 16 DO
    BEGIN
        fOR viContadorDeColunas :=2 TO 16 DO
        BEGIN
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base.Cells[viContadorDeColunas,01]))  then
                viQtdNaLinha01 := viQtdNaLinha01 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base.Cells[viContadorDeColunas,02]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base.Cells[viContadorDeColunas,03]))  then
                viQtdNaLinha03 := viQtdNaLinha03 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base.Cells[viContadorDeColunas,04]))  then
                viQtdNaLinha04 := viQtdNaLinha04 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base.Cells[viContadorDeColunas,05]))  then
                viQtdNaLinha05 := viQtdNaLinha05 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base.Cells[viContadorDeColunas,06]))  then
                viQtdNaLinha06 := viQtdNaLinha06 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base.Cells[viContadorDeColunas,07]))  then
                viQtdNaLinha07 := viQtdNaLinha07 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base.Cells[viContadorDeColunas,08]))  then
                viQtdNaLinha08 := viQtdNaLinha08 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base.Cells[viContadorDeColunas,09]))  then
                viQtdNaLinha09 := viQtdNaLinha09 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base.Cells[viContadorDeColunas,10]))  then
                viQtdNaLinha10 := viQtdNaLinha10 +1;
        END; // FOR viContar1
    END; // fOR
    IF ( (viQtdNaLinha01 =Trb_b15_L01.Position ) AND (viQtdNaLinha02 = Trb_b15_L02.Position) AND (viQtdNaLinha03 = Trb_b15_L03.Position)
        AND (viQtdNaLinha04 =Trb_b15_L04.Position) AND (viQtdNaLinha05 = Trb_b15_L05.Position) AND (viQtdNaLinha06 =Trb_b15_L06.Position)
        AND (viQtdNaLinha07 = Trb_b15_L07.Position) AND (viQtdNaLinha08 = Trb_b15_L08.Position) AND (viQtdNaLinha09 =Trb_b15_L09.Position)
        AND (viQtdNaLinha10 = Trb_b15_L10.Position) )
    THEN
        Result := True
    else
        Result := False;
end;





Function T_F_Gerador_ResDiv_25Linhas2.Validar_ppi_A (viLinhas01: Integer):boolean;
var
    viContadorDeColunas, viQtdNaLinha01, viQtdNaLinha02: shortint;
begin
    viQtdNaLinha01 := 0;
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
        fOR viContadorDeColunas :=2 TO 16 DO
        BEGIN
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_A.Cells[1,0]))  then
                viQtdNaLinha01 := viQtdNaLinha01 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_A.Cells[2,0]))  then
                viQtdNaLinha01 := viQtdNaLinha01 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_A.Cells[3,0]))  then
                viQtdNaLinha01 := viQtdNaLinha01 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_A.Cells[4,0]))  then
                viQtdNaLinha01 := viQtdNaLinha01 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_A.Cells[5,0]))  then
                viQtdNaLinha01 := viQtdNaLinha01 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_A.Cells[6,0]))  then
                viQtdNaLinha01 := viQtdNaLinha01 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_A.Cells[7,0]))  then
                viQtdNaLinha01 := viQtdNaLinha01 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_A.Cells[8,0]))  then
                viQtdNaLinha01 := viQtdNaLinha01 +1;
        END; // FOR viContar1
    IF (viQtdNaLinha01 >=Trb_ppim1_01.Position ) and (viQtdNaLinha01 <=Trb_ppim2_01.Position )
    THEN
    begin
        viQtdNaLinha02 := 0;
        // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
        fOR viContadorDeColunas :=2 TO 16 DO
        BEGIN
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_B.Cells[1,0]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_B.Cells[2,0]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_B.Cells[3,0]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_B.Cells[4,0]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_B.Cells[5,0]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_B.Cells[6,0]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_B.Cells[7,0]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
        END; // FOR viContar1
        IF (viQtdNaLinha02 >=Trb_ppim1_02.Position ) and (viQtdNaLinha02 <=Trb_ppim2_02.Position )
        THEN
        begin
            if Cb_ppim_LinhaAB.ItemIndex = 0 then
            begin
                if (viQtdNaLinha01 + viQtdNaLinha02) = 9 then
                    Result := True
                else
                    Result := False;
            end else
            begin
                if ((viQtdNaLinha01 + viQtdNaLinha02) >= 8) and ((viQtdNaLinha01 + viQtdNaLinha02) <= 10) then
                    Result := True
                else
                    Result := False;
            end;

        end
        else
            Result := False;
    end
    else
        Result := False;
End;




Function T_F_Gerador_ResDiv_25Linhas2.Validar_ppi_C (viLinhas01: Integer):boolean;
var
    viContadorDeColunas, viQtdNaLinha01, viQtdNaLinha02: shortint;
begin
    viQtdNaLinha01 := 0;
    // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
    fOR viContadorDeColunas :=2 TO 16 DO
    BEGIN
        if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_C.Cells[1,0]))  then
            viQtdNaLinha01 := viQtdNaLinha01 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_C.Cells[2,0]))  then
            viQtdNaLinha01 := viQtdNaLinha01 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_C.Cells[3,0]))  then
            viQtdNaLinha01 := viQtdNaLinha01 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_C.Cells[4,0]))  then
            viQtdNaLinha01 := viQtdNaLinha01 +1;
        if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_C.Cells[5,0]))  then
            viQtdNaLinha01 := viQtdNaLinha01 +1;
    END; // FOR viContar1
    IF (viQtdNaLinha01 >=Trb_ppim1_03.Position)  and (viQtdNaLinha01 <=Trb_ppim2_03.Position)
    THEN
    begin
        viQtdNaLinha02 := 0;
        // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
        fOR viContadorDeColunas :=2 TO 16 DO
        BEGIN
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_D.Cells[1,0]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_D.Cells[2,0]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_D.Cells[3,0]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_D.Cells[4,0]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
            if (strTOint(Stgr_Etapa03_15.Cells[viContadorDeColunas,viLinhas01])) = (strTOint(Stgr_ppi_D.Cells[5,0]))  then
                viQtdNaLinha02 := viQtdNaLinha02 +1;
        END; // FOR viContar1
        IF (viQtdNaLinha02 >=Trb_ppim1_04.Position)  and (viQtdNaLinha02 <=Trb_ppim2_04.Position)
        THEN
        begin
            if Cb_ppim_LinhaCD.ItemIndex = 0 then
            begin
                if (viQtdNaLinha01 + viQtdNaLinha02) = 6 then
                    Result := True
                else
                    Result := False;
            end else
            begin
                if ((viQtdNaLinha01 + viQtdNaLinha02) >= 5) and ((viQtdNaLinha01 + viQtdNaLinha02) <= 7) then
                    Result := True
                else
                    Result := False;
            end;

        end
        else
            Result := False;
    end
    else
        Result := False;
End;



Function T_F_Gerador_ResDiv_25Linhas2.Validar_Etapa6BlocosA(viLinhas01: Integer):boolean;
var
    viContar, viQtdNaLinha1, viQtdNaLinha2, viQtdNaLinha3, viQtdNaLinha4, viQtdNaLinha5 : shortint;
begin
    viQtdNaLinha1 := 0;
    viQtdNaLinha2 := 0;
    viQtdNaLinha3 := 0;
    viQtdNaLinha4 := 0;
    viQtdNaLinha5 := 0;
    FOR viContar :=1 TO 5 DO
    BEGIN
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[1,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[2,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[3,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[4,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[5,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;

        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[1,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[2,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[3,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[4,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[5,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;

        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[1,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[2,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[3,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[4,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[5,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;

        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[1,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[2,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[3,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[4,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[5,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;

        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[1,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[2,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[3,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[4,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Provas5_Blocos.Cells[5,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        IF ( (viQtdNaLinha1 = 1 ) AND (viQtdNaLinha2 = 1) AND (viQtdNaLinha3 = 1) AND (viQtdNaLinha4 = 1) AND (viQtdNaLinha5 = 1) )
        THEN
        begin
            Result := True;
            Exit;
        end;
    end; // for
    Result := False;
end;

Function T_F_Gerador_ResDiv_25Linhas2.Validar_Etapa6BlocosB(viLinhas01: Integer):boolean;
var
    viContar, viQtdNaLinha1, viQtdNaLinha2, viQtdNaLinha3, viQtdNaLinha4, viQtdNaLinha5 : shortint;
begin
    viQtdNaLinha1 := 0;
    viQtdNaLinha2 := 0;
    viQtdNaLinha3 := 0;
    viQtdNaLinha4 := 0;
    viQtdNaLinha5 := 0;
    FOR viContar :=1 TO 5 DO
    BEGIN
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[1,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[2,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[3,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[4,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[5,1]))  then
            viQtdNaLinha1 := viQtdNaLinha1 +1;

        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[1,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[2,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[3,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[4,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[5,2]))  then
            viQtdNaLinha2 := viQtdNaLinha2 +1;

        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[1,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[2,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[3,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[4,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[5,3]))  then
            viQtdNaLinha3 := viQtdNaLinha3 +1;

        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[1,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[2,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[3,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[4,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[5,4]))  then
            viQtdNaLinha4 := viQtdNaLinha4 +1;

        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[1,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[2,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[3,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[4,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        if (strTOint(Stgr_Etapa06_05.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Base25.Cells[5,5]))  then
            viQtdNaLinha5 := viQtdNaLinha5 +1;
        IF ( (viQtdNaLinha1 = 1 ) AND (viQtdNaLinha2 = 1) AND (viQtdNaLinha3 = 1) AND (viQtdNaLinha4 = 1) AND (viQtdNaLinha5 = 1) )
        THEN
        begin
            Result := True;
            Exit;
        end;
    end; // for
    Result := False;
end;


Function T_F_Gerador_ResDiv_25Linhas2.Validar_Etapa6BlocosC(viLinhas01: Integer):boolean;
var
    viComb05_01, viComb05_02, viComb05_03, viComb05_04, viComb05_05 : smallint;
begin
    sleep(5);
    for viComb05_01 := 2 TO 12 DO
    BEGIN
        for viComb05_02 := viComb05_01 + 1 TO 13 DO
        BEGIN
            for viComb05_03 := viComb05_02 + 1 TO 14 DO
            BEGIN
                for viComb05_04 := viComb05_03 + 1 TO 15 DO
                BEGIN
                    for viComb05_05 := viComb05_04 + 1 TO 16 DO
                    BEGIN
                        Stgr_Etapa06_05.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                        Stgr_Etapa06_05.Cells[01,viLinhas01] := Stgr_Etapa03_15.Cells[viComb05_01,viLinhas01] ;
                        Stgr_Etapa06_05.Cells[02,viLinhas01] := Stgr_Etapa03_15.Cells[viComb05_02,viLinhas01] ;
                        Stgr_Etapa06_05.Cells[03,viLinhas01] := Stgr_Etapa03_15.Cells[viComb05_03,viLinhas01] ;
                        Stgr_Etapa06_05.Cells[04,viLinhas01] := Stgr_Etapa03_15.Cells[viComb05_04,viLinhas01] ;
                        Stgr_Etapa06_05.Cells[05,viLinhas01] := Stgr_Etapa03_15.Cells[viComb05_05,viLinhas01] ;
                        if Validar_Etapa6BlocosA(viLinhas01)  then
                            if Validar_Etapa6BlocosB(viLinhas01)  then
                            begin
                                Stgr_Etapa06_05.RowCount := viLinhas01+1;
                                Result := True;
                                Exit;
                            end;
                      // viLinhas02 := viLinhas02 + 1;
                    end; // for viComb05_05
                END; //  for viComb05_04
            END; //  for viComb05_03
        END; //  for viComb05_02
    END; //  for viComb05_01
    Stgr_Etapa06_05.RowCount := viLinhas01;
    Stgr_Etapa06_05.Repaint;
    Result := False;
end;

//
//--> Valitar Bloco Etapa 7
//

Function T_F_Gerador_ResDiv_25Linhas2.Validar_Etapa7TDm1(viLinhas01, vi_Finalfor: Integer):boolean;
var
    viContar, viQtdNaLinhaT1, viQtdNaLinhaT2, viQtdNaLinhaT3, viQtdNaLinhaT4, viQtdNaLinhaT5, viQtdNaLinhaT6, viQtdNaLinhaT7, viQtdNaLinhaD1, viQtdNaLinhaD2,  viQtdLinhas_c3, viQtdLinhas_C2, viQtdLinhas_C1: shortint;
begin
    viQtdNaLinhaT1 := 0;
    viQtdNaLinhaT2 := 0;
    viQtdNaLinhaT3 := 0;
    viQtdNaLinhaT4 := 0;
    viQtdNaLinhaT5 := 0;
    viQtdNaLinhaT6 := 0;
    viQtdNaLinhaT7 := 0;
    viQtdNaLinhaD1 := 0;
    viQtdNaLinhaD2 := 0;
    FOR viContar :=1 TO vi_Finalfor DO
    BEGIN
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,1]))  then
            viQtdNaLinhaT1 := viQtdNaLinhaT1 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,1]))  then
            viQtdNaLinhaT1 := viQtdNaLinhaT1 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,1]))  then
            viQtdNaLinhaT1 := viQtdNaLinhaT1 +1;

        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,2]))  then
            viQtdNaLinhaT2 := viQtdNaLinhaT2 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,2]))  then
            viQtdNaLinhaT2 := viQtdNaLinhaT2 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,2]))  then
            viQtdNaLinhaT2 := viQtdNaLinhaT2 +1;

        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,3]))  then
            viQtdNaLinhaT3 := viQtdNaLinhaT3 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,3]))  then
            viQtdNaLinhaT3 := viQtdNaLinhaT3 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,3]))  then
            viQtdNaLinhaT3 := viQtdNaLinhaT3 +1;

        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,4]))  then
            viQtdNaLinhaT4 := viQtdNaLinhaT4 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,4]))  then
            viQtdNaLinhaT4 := viQtdNaLinhaT4 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,4]))  then
            viQtdNaLinhaT4 := viQtdNaLinhaT4 +1;

        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,5]))  then
            viQtdNaLinhaT5 := viQtdNaLinhaT5 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,5]))  then
            viQtdNaLinhaT5 := viQtdNaLinhaT5 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,5]))  then
            viQtdNaLinhaT5 := viQtdNaLinhaT5 +1;

        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,6]))  then
            viQtdNaLinhaT4 := viQtdNaLinhaT6 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,6]))  then
            viQtdNaLinhaT4 := viQtdNaLinhaT6 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,6]))  then
            viQtdNaLinhaT4 := viQtdNaLinhaT6 +1;

        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,7]))  then
            viQtdNaLinhaT5 := viQtdNaLinhaT7 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,7]))  then
            viQtdNaLinhaT5 := viQtdNaLinhaT7 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,7]))  then
            viQtdNaLinhaT5 := viQtdNaLinhaT7 +1;

        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Duplas1.Cells[1,1]))  then
            viQtdNaLinhaD1 := viQtdNaLinhaD1 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Duplas1.Cells[2,1]))  then
            viQtdNaLinhaD1 := viQtdNaLinhaD1 +1;

        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Duplas1.Cells[1,2]))  then
            viQtdNaLinhaD2 := viQtdNaLinhaD2 +1;
        if (strTOint(Stgr_TriplasDuplas1.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Duplas1.Cells[2,2]))  then
            viQtdNaLinhaD2 := viQtdNaLinhaD2 +1 ;
    end; // for
    viQtdLinhas_C1 := 0;
    viQtdLinhas_C2 := 0;
    viQtdLinhas_C3 := 0;
    //
    // verificando a quantia de linhas 2 e 3
    //
    if (viQtdNaLinhaT1 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;
    if (viQtdNaLinhaT2 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;
    if (viQtdNaLinhaT3 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;
    if (viQtdNaLinhaT4 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;
    if (viQtdNaLinhaT5 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;
    if (viQtdNaLinhaT6 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;
    if (viQtdNaLinhaT7 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;

    if (viQtdNaLinhaT1 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaT2 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaT3 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaT4 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaT5 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaT6 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaT7 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaD1 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaD2 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;

    if (viQtdNaLinhaT1 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;
    if (viQtdNaLinhaT2 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;
    if (viQtdNaLinhaT3 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;
    if (viQtdNaLinhaT4 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;
    if (viQtdNaLinhaT5 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;
    if (viQtdNaLinhaT6 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;
    if (viQtdNaLinhaT7 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;

    if (Cb_TriplasDuplas.ItemIndex = 0) then
    begin
        IF (
        (viQtdLinhas_C3 =2) AND (viQtdLinhas_C2 =2)
        )
        THEN
            RESULT := True
        else
            Result := False;
    end else
    if (Cb_TriplasDuplas.ItemIndex = 1) then
    begin
        IF (
        (viQtdLinhas_C3 =2) AND (viQtdLinhas_C2 =2) AND (viQtdLinhas_C1 =1)
        )
        THEN
            RESULT := True
        else
            Result := False;
    end else
    if (Cb_TriplasDuplas.ItemIndex = 2) then
    begin
        IF (
        (viQtdLinhas_C3 =1) AND (viQtdLinhas_C2 =4)
        )
        THEN
            RESULT := True
        else
            Result := False;
    end else
    if (Cb_TriplasDuplas.ItemIndex = 3) or (Cb_TriplasDuplas.ItemIndex = 4) then
    begin
        IF (
        (viQtdLinhas_C3 =1) AND (viQtdLinhas_C2 =4) AND (viQtdLinhas_C1 =1)
        )
        THEN
            RESULT := True
        else
            Result := False;
    end;
end;


Function T_F_Gerador_ResDiv_25Linhas2.Validar_Etapa7TDm2(viLinhas01, vi_Finalfor: Integer):boolean;
var
    viContar, viQtdNaLinhaT1, viQtdNaLinhaT2, viQtdNaLinhaT3, viQtdNaLinhaT4, viQtdNaLinhaT5, viQtdNaLinhaT6, viQtdNaLinhaT7, viQtdNaLinhaD1, viQtdNaLinhaD2,  viQtdLinhas_c3, viQtdLinhas_C2, viQtdLinhas_C1: shortint;
begin
    viQtdNaLinhaT1 := 0;
    viQtdNaLinhaT2 := 0;
    viQtdNaLinhaT3 := 0;
    viQtdNaLinhaT4 := 0;
    viQtdNaLinhaT5 := 0;
    viQtdNaLinhaT6 := 0;
    viQtdNaLinhaT7 := 0;
    viQtdNaLinhaD1 := 0;
    viQtdNaLinhaD2 := 0;
    FOR viContar :=1 TO vi_Finalfor DO
    BEGIN
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,1]))  then
            viQtdNaLinhaT1 := viQtdNaLinhaT1 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,1]))  then
            viQtdNaLinhaT1 := viQtdNaLinhaT1 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,1]))  then
            viQtdNaLinhaT1 := viQtdNaLinhaT1 +1;

        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,2]))  then
            viQtdNaLinhaT2 := viQtdNaLinhaT2 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,2]))  then
            viQtdNaLinhaT2 := viQtdNaLinhaT2 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,2]))  then
            viQtdNaLinhaT2 := viQtdNaLinhaT2 +1;

        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,3]))  then
            viQtdNaLinhaT3 := viQtdNaLinhaT3 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,3]))  then
            viQtdNaLinhaT3 := viQtdNaLinhaT3 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,3]))  then
            viQtdNaLinhaT3 := viQtdNaLinhaT3 +1;

        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,4]))  then
            viQtdNaLinhaT4 := viQtdNaLinhaT4 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,4]))  then
            viQtdNaLinhaT4 := viQtdNaLinhaT4 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,4]))  then
            viQtdNaLinhaT4 := viQtdNaLinhaT4 +1;

        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,5]))  then
            viQtdNaLinhaT5 := viQtdNaLinhaT5 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,5]))  then
            viQtdNaLinhaT5 := viQtdNaLinhaT5 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,5]))  then
            viQtdNaLinhaT5 := viQtdNaLinhaT5 +1;

        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,6]))  then
            viQtdNaLinhaT4 := viQtdNaLinhaT6 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,6]))  then
            viQtdNaLinhaT4 := viQtdNaLinhaT6 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,6]))  then
            viQtdNaLinhaT4 := viQtdNaLinhaT6 +1;

        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[1,7]))  then
            viQtdNaLinhaT5 := viQtdNaLinhaT7 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[2,7]))  then
            viQtdNaLinhaT5 := viQtdNaLinhaT7 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Triplas1.Cells[3,7]))  then
            viQtdNaLinhaT5 := viQtdNaLinhaT7 +1;

        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Duplas1.Cells[1,1]))  then
            viQtdNaLinhaD1 := viQtdNaLinhaD1 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Duplas1.Cells[2,1]))  then
            viQtdNaLinhaD1 := viQtdNaLinhaD1 +1;

        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Duplas1.Cells[1,2]))  then
            viQtdNaLinhaD2 := viQtdNaLinhaD2 +1;
        if (strTOint(Stgr_TriplasDuplas2.Cells[viContar,viLinhas01])) = (strTOint(Stgr_Duplas1.Cells[2,2]))  then
            viQtdNaLinhaD2 := viQtdNaLinhaD2 +1 ;
    end; // for
    viQtdLinhas_C1 := 0;
    viQtdLinhas_C2 := 0;
    viQtdLinhas_C3 := 0;
    //
    // verificando a quantia de linhas 2 e 3
    //
    if (viQtdNaLinhaT1 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;
    if (viQtdNaLinhaT2 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;
    if (viQtdNaLinhaT3 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;
    if (viQtdNaLinhaT4 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;
    if (viQtdNaLinhaT5 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;
    if (viQtdNaLinhaT6 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;
    if (viQtdNaLinhaT7 =3) then viQtdLinhas_C3 := viQtdLinhas_C3 +1;

    if (viQtdNaLinhaT1 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaT2 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaT3 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaT4 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaT5 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaT6 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaT7 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaD1 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;
    if (viQtdNaLinhaD2 =2) then viQtdLinhas_C2 := viQtdLinhas_C2 +1;

    if (viQtdNaLinhaT1 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;
    if (viQtdNaLinhaT2 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;
    if (viQtdNaLinhaT3 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;
    if (viQtdNaLinhaT4 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;
    if (viQtdNaLinhaT5 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;
    if (viQtdNaLinhaT6 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;
    if (viQtdNaLinhaT7 =1) then viQtdLinhas_C1 := viQtdLinhas_C1 +1;

        IF (
        (viQtdLinhas_C3 =2) AND (viQtdLinhas_C2 =3) AND (viQtdLinhas_C1 =1)
        )
        THEN
            RESULT := True
        else
            Result := False;
end;


Function T_F_Gerador_ResDiv_25Linhas2.Validar_Etapa7TD(viLinhas01: Integer):boolean;
var
    viCombTD_01, viCombTD_02, viCombTD_03, viCombTD_04, viCombTD_05,  viCombTD_06, viCombTD_07, viCombTD_08, viCombTD_09, viCombTD_10, viCombTD_11, viCombTD_12 : smallint;
    viCombDT_01, viCombDT_02, viCombDT_03, viCombDT_04, viCombDT_05,  viCombDT_06, viCombDT_07, viCombDT_08, viCombDT_09, viCombDT_10, viCombDT_11, viCombDT_12, viCombDT_13 : smallint;
begin
    if (Cb_TriplasDuplas.ItemIndex = 0) then
    begin
        for viCombTD_01 := 2 TO 07 DO
        BEGIN
            for viCombTD_02 := viCombTD_01 + 1 TO 08 DO
            BEGIN
                for viCombTD_03 := viCombTD_02 + 1 TO 09 DO
                BEGIN
                    for viCombTD_04 := viCombTD_03 + 1 TO 10 DO
                    BEGIN
                        for viCombTD_05 := viCombTD_04 + 1 TO 11 DO
                        BEGIN
                            for viCombTD_06 := viCombTD_05+1 TO 12 DO
                            BEGIN
                                for viCombTD_07 := viCombTD_06 + 1 TO 13 DO
                                BEGIN
                                    for viCombTD_08 := viCombTD_07 + 1 TO 14 DO
                                    BEGIN
                                        for viCombTD_09 := viCombTD_08 + 1 TO 15 DO
                                        BEGIN
                                            for viCombTD_10 := viCombTD_09 + 1 TO 16 DO
                                            BEGIN
                                                Stgr_TriplasDuplas1.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                Stgr_TriplasDuplas1.Cells[01,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_01,viLinhas01] ;
                                                Stgr_TriplasDuplas1.Cells[02,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_02,viLinhas01] ;
                                                Stgr_TriplasDuplas1.Cells[03,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_03,viLinhas01] ;
                                                Stgr_TriplasDuplas1.Cells[04,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_04,viLinhas01] ;
                                                Stgr_TriplasDuplas1.Cells[05,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_05,viLinhas01] ;
                                                Stgr_TriplasDuplas1.Cells[06,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_06,viLinhas01] ;
                                                Stgr_TriplasDuplas1.Cells[07,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_07,viLinhas01] ;
                                                Stgr_TriplasDuplas1.Cells[08,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_08,viLinhas01] ;
                                                Stgr_TriplasDuplas1.Cells[09,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_09,viLinhas01] ;
                                                Stgr_TriplasDuplas1.Cells[10,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_10,viLinhas01] ;
                                                if Validar_Etapa7TDm1(viLinhas01,10)  then
                                                begin
                                                    Stgr_TriplasDuplas1.RowCount := viLinhas01+1;
                                                    Result := True;
                                                    Exit;
                                                end; /// if
                                              // viLinhas02 := viLinhas02 + 1;
                                            end; // for viCombTD_10
                                        END; //  for viCombTD_09
                                    END; //  for viCombTD_08
                                END; //  for viCombTD_07
                            END; //  for viCombTD_06
                        end; // for viCombTD_05
                    END; //  for viCombTD_04
                END; //  for viCombTD_03
            END; //  for viCombTD_02
        END; //  for viCombTD_01
    end else
    if (Cb_TriplasDuplas.ItemIndex = 1) or (Cb_TriplasDuplas.ItemIndex = 2) then
    begin
        for viCombTD_01 := 2 TO 06 DO
        BEGIN
            for viCombTD_02 := viCombTD_01 + 1 TO 07 DO
            BEGIN
                for viCombTD_03 := viCombTD_02 + 1 TO 08 DO
                BEGIN
                    for viCombTD_04 := viCombTD_03 + 1 TO 09 DO
                    BEGIN
                        for viCombTD_05 := viCombTD_04 + 1 TO 10 DO
                        BEGIN
                            for viCombTD_06 := viCombTD_05+1 TO 11 DO
                            BEGIN
                                for viCombTD_07 := viCombTD_06 + 1 TO 12 DO
                                BEGIN
                                    for viCombTD_08 := viCombTD_07 + 1 TO 13 DO
                                    BEGIN
                                        for viCombTD_09 := viCombTD_08 + 1 TO 14 DO
                                        BEGIN
                                            for viCombTD_10 := viCombTD_09 + 1 TO 15 DO
                                            BEGIN
                                                for viCombTD_11 := viCombTD_10 + 1 TO 16 DO
                                                BEGIN
                                                    Stgr_TriplasDuplas1.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                    Stgr_TriplasDuplas1.Cells[01,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_01,viLinhas01] ;
                                                    Stgr_TriplasDuplas1.Cells[02,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_02,viLinhas01] ;
                                                    Stgr_TriplasDuplas1.Cells[03,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_03,viLinhas01] ;
                                                    Stgr_TriplasDuplas1.Cells[04,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_04,viLinhas01] ;
                                                    Stgr_TriplasDuplas1.Cells[05,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_05,viLinhas01] ;
                                                    Stgr_TriplasDuplas1.Cells[06,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_06,viLinhas01] ;
                                                    Stgr_TriplasDuplas1.Cells[07,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_07,viLinhas01] ;
                                                    Stgr_TriplasDuplas1.Cells[08,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_08,viLinhas01] ;
                                                    Stgr_TriplasDuplas1.Cells[09,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_09,viLinhas01] ;
                                                    Stgr_TriplasDuplas1.Cells[10,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_10,viLinhas01] ;
                                                    Stgr_TriplasDuplas1.Cells[11,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_11,viLinhas01] ;
                                                    if Validar_Etapa7TDm1(viLinhas01,11)  then
                                                    begin
                                                        Stgr_TriplasDuplas1.RowCount := viLinhas01+1;
                                                        Result := True;
                                                        Exit;
                                                    end; /// if
                                                  // viLinhas02 := viLinhas02 + 1;
                                                end; // for viCombTD_11
                                            end; // for viCombTD_10
                                        END; //  for viCombTD_09
                                    END; //  for viCombTD_08
                                END; //  for viCombTD_07
                            END; //  for viCombTD_06
                        end; // for viCombTD_05
                    END; //  for viCombTD_04
                END; //  for viCombTD_03
            END; //  for viCombTD_02
        END; //  for viCombTD_01
    end else
    if (Cb_TriplasDuplas.ItemIndex = 3) then
    begin
        for viCombTD_01 := 2 TO 05 DO
        BEGIN
            for viCombTD_02 := viCombTD_01 + 1 TO 06 DO
            BEGIN
                for viCombTD_03 := viCombTD_02 + 1 TO 07 DO
                BEGIN
                    for viCombTD_04 := viCombTD_03 + 1 TO 08 DO
                    BEGIN
                        for viCombTD_05 := viCombTD_04 + 1 TO 09 DO
                        BEGIN
                            for viCombTD_06 := viCombTD_05+1 TO 10 DO
                            BEGIN
                                for viCombTD_07 := viCombTD_06 + 1 TO 11 DO
                                BEGIN
                                    for viCombTD_08 := viCombTD_07 + 1 TO 12 DO
                                    BEGIN
                                        for viCombTD_09 := viCombTD_08 + 1 TO 13 DO
                                        BEGIN
                                            for viCombTD_10 := viCombTD_09 + 1 TO 14 DO
                                            BEGIN
                                                for viCombTD_11 := viCombTD_10 + 1 TO 15 DO
                                                BEGIN
                                                    for viCombTD_12 := viCombTD_11 + 1 TO 16 DO
                                                    BEGIN
                                                        Stgr_TriplasDuplas1.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                        Stgr_TriplasDuplas1.Cells[01,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_01,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[02,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_02,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[03,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_03,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[04,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_04,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[05,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_05,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[06,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_06,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[07,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_07,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[08,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_08,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[09,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_09,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[10,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_10,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[11,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_11,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[12,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_12,viLinhas01] ;
                                                        if Validar_Etapa7TDm1(viLinhas01,12)  then
                                                        begin
                                                            Stgr_TriplasDuplas1.RowCount := viLinhas01+1;
                                                            Result := True;
                                                            Exit;
                                                        end; /// if
                                                      // viLinhas02 := viLinhas02 + 1;
                                                    end; // for viCombTD_12
                                                end; // for viCombTD_11
                                            end; // for viCombTD_10
                                        END; //  for viCombTD_09
                                    END; //  for viCombTD_08
                                END; //  for viCombTD_07
                            END; //  for viCombTD_06
                        end; // for viCombTD_05
                    END; //  for viCombTD_04
                END; //  for viCombTD_03
            END; //  for viCombTD_02
        END; //  for viCombTD_01
    end else
    if (Cb_TriplasDuplas.ItemIndex = 4) then
    begin
        for viCombTD_01 := 2 TO 05 DO
        BEGIN
            for viCombTD_02 := viCombTD_01 + 1 TO 06 DO
            BEGIN
                for viCombTD_03 := viCombTD_02 + 1 TO 07 DO
                BEGIN
                    for viCombTD_04 := viCombTD_03 + 1 TO 08 DO
                    BEGIN
                        for viCombTD_05 := viCombTD_04 + 1 TO 09 DO
                        BEGIN
                            for viCombTD_06 := viCombTD_05+1 TO 10 DO
                            BEGIN
                                for viCombTD_07 := viCombTD_06 + 1 TO 11 DO
                                BEGIN
                                    for viCombTD_08 := viCombTD_07 + 1 TO 12 DO
                                    BEGIN
                                        for viCombTD_09 := viCombTD_08 + 1 TO 13 DO
                                        BEGIN
                                            for viCombTD_10 := viCombTD_09 + 1 TO 14 DO
                                            BEGIN
                                                for viCombTD_11 := viCombTD_10 + 1 TO 15 DO
                                                BEGIN
                                                    for viCombTD_12 := viCombTD_11 + 1 TO 16 DO
                                                    BEGIN
                                                        Stgr_TriplasDuplas1.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                        Stgr_TriplasDuplas1.Cells[01,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_01,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[02,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_02,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[03,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_03,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[04,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_04,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[05,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_05,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[06,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_06,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[07,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_07,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[08,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_08,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[09,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_09,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[10,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_10,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[11,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_11,viLinhas01] ;
                                                        Stgr_TriplasDuplas1.Cells[12,viLinhas01] := Stgr_Etapa03_15.Cells[viCombTD_12,viLinhas01] ;
                                                        if Validar_Etapa7TDm1(viLinhas01,12)  then
                                                        BEGIN
                                                            Result := True ;
                                                            EXIT;
                                                        end else
                                                        begin
        for viCombDT_01 := 2 TO 05 DO
        BEGIN
            for viCombDT_02 := viCombDT_01 + 1 TO 06 DO
            BEGIN
                for viCombDT_03 := viCombDT_02 + 1 TO 07 DO
                BEGIN
                    for viCombDT_04 := viCombDT_03 + 1 TO 08 DO
                    BEGIN
                        for viCombDT_05 := viCombDT_04 + 1 TO 09 DO
                        BEGIN
                            for viCombDT_06 := viCombDT_05+1 TO 10 DO
                            BEGIN
                                for viCombDT_07 := viCombDT_06 + 1 TO 11 DO
                                BEGIN
                                    for viCombDT_08 := viCombDT_07 + 1 TO 12 DO
                                    BEGIN
                                        for viCombDT_09 := viCombDT_08 + 1 TO 13 DO
                                        BEGIN
                                            for viCombDT_10 := viCombDT_09 + 1 TO 14 DO
                                            BEGIN
                                                for viCombDT_11 := viCombDT_10 + 1 TO 15 DO
                                                BEGIN
                                                    for viCombDT_12 := viCombDT_11 + 1 TO 16 DO
                                                    BEGIN
                                                        for viCombDT_13 := viCombDT_11 + 1 TO 16 DO
                                                        BEGIN
                                                            Stgr_TriplasDuplas2.Cells[00,viLinhas01] := viLinhas01.ToString  ;
                                                            Stgr_TriplasDuplas2.Cells[01,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_01,viLinhas01] ;
                                                            Stgr_TriplasDuplas2.Cells[02,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_02,viLinhas01] ;
                                                            Stgr_TriplasDuplas2.Cells[03,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_03,viLinhas01] ;
                                                            Stgr_TriplasDuplas2.Cells[04,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_04,viLinhas01] ;
                                                            Stgr_TriplasDuplas2.Cells[05,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_05,viLinhas01] ;
                                                            Stgr_TriplasDuplas2.Cells[06,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_06,viLinhas01] ;
                                                            Stgr_TriplasDuplas2.Cells[07,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_07,viLinhas01] ;
                                                            Stgr_TriplasDuplas2.Cells[08,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_08,viLinhas01] ;
                                                            Stgr_TriplasDuplas2.Cells[09,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_09,viLinhas01] ;
                                                            Stgr_TriplasDuplas2.Cells[10,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_10,viLinhas01] ;
                                                            Stgr_TriplasDuplas2.Cells[11,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_11,viLinhas01] ;
                                                            Stgr_TriplasDuplas2.Cells[12,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_12,viLinhas01] ;
                                                            Stgr_TriplasDuplas2.Cells[13,viLinhas01] := Stgr_Etapa03_15.Cells[viCombDT_13,viLinhas01] ;
                                                            if Validar_Etapa7TDm2(viLinhas01,13)  then
                                                            begin
                                                                Stgr_TriplasDuplas1.RowCount := viLinhas01+1;
                                                                Result := True;
                                                                Exit;
                                                            end; /// if
                                                              // viLinhas02 := viLinhas02 + 1;
                                                        end;// for viCombDT_13
                                                    end; // for viCombDT_12
                                                end; // for viCombDT_11
                                            end; // for viCombDT_10
                                        END; //  for viCombDT_09
                                    END; //  for viCombDT_08
                                END; //  for viCombDT_07
                            END; //  for viCombDT_06
                        end; // for viCombDT_05
                    END; //  for viCombDT_04
                END; //  for viCombDT_03
            END; //  for viCombDT_02
        END; //  for viCombDT_01

                                                        end; /// if
                                                      // viLinhas02 := viLinhas02 + 1;
                                                    end; // for viCombTD_12
                                                end; // for viCombTD_11
                                            end; // for viCombTD_10
                                        END; //  for viCombTD_09
                                    END; //  for viCombTD_08
                                END; //  for viCombTD_07
                            END; //  for viCombTD_06
                        end; // for viCombTD_05
                    END; //  for viCombTD_04
                END; //  for viCombTD_03
            END; //  for viCombTD_02
        END; //  for viCombTD_01
    end;/// IF (Cb_TriplasDuplas
    Stgr_TriplasDuplas1.RowCount := viLinhas01;
    Stgr_TriplasDuplas1.Repaint;
    Result := False;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_Etapa01Click(Sender: TObject);

    Procedure PR_ORDENAR_15 (viLinhas9: Integer);
    var
        viContar, viCntCELULAS: Integer;
    begin
          // ************************
      	// **  Ordena os dados   **
	     // ************************
        FOR viContar :=1 TO 25 DO
        BEGIN
            Stgr_Todos_Numeros.Cells[viContar,1] :='F';
        END; // FOR viContar
        // ----> MONTADO E VERIFICANDO TODOS OS 15 DÍGITOS
        FOR viContar :=2 TO 16 DO
        BEGIN
            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa03_15.Cells[viContar,viLinhas9])) ,1]:='V';
        END; // FOR viContar1
        viCntCELULAS := 2;
        FOR viContar :=1 TO 25 DO
        BEGIN
            IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') THEN
            BEGIN
                Stgr_Etapa03_15.Cells [viCntCELULAS, viLinhas9] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
                viCntCELULAS := viCntCELULAS + 1;
            END; // IF (Stgr_Todos_Numeros
        END; // FOR viContar
    end; // Procedure ORDENAR_SIMULACAO_15


   Procedure LimparGrid03 ();
    begin
        Stgr_Etapa02_03.CleanupInstance;
        Stgr_Etapa02_03.Free;
        Stgr_Etapa02_03 := TStringGrid.Create(Self);
        Stgr_Etapa02_03.Parent := Scbx_dados;
        with  Stgr_Etapa02_03 do
        begin
          Left := 1062  ;
          Top := 19    ;
          Width := 239  ;
          Height := 302   ;
          TabStop := False ;
          Anchors := [akLeft, akTop, akBottom] ;
          Color := 14017159 ;
          Ctl3D := False      ;
          DefaultColWidth := 27  ;
          DefaultRowHeight := 25  ;
          FixedColor := clMedGray  ;
          FixedCols := 2 ;
          RowCount := 25 ;
          Font.Charset := DEFAULT_CHARSET ;
          Font.Color := clWindowText ;
          Font.Height := -15        ;
          Font.Name := 'Times New Roman' ;
          Font.Style := []   ;
          GridLineWidth := 2 ;
          Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
          ParentCtl3D := False ;
          ParentFont := False ;
          TabOrder := 21      ;
        end ;
        Stgr_Etapa02_03.ColWidths[0] := 60 ;
        Stgr_Etapa02_03.ColWidths[1] := 50 ;
        Stgr_Etapa02_03.RowCount :=1;
    end;

     Function NumerosFixos1 (viLinhas1 : Integer) : BOOLEAN;
     VAR
          viContaSel1, vi_Primeiro, vi_NumeroCelula  : Integer;
          vb_Retorno : boolean  ;
     begin
          vi_Primeiro := strTOint(Ed_FIXOS_01_8i7p.Text);
          IF (vi_Primeiro >0) and (vi_Primeiro<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR viContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(Stgr_Etapa03_15.Cells[viContaSel1,viLinhas1]);
                    IF (vi_NumeroCelula=vi_Primeiro) THEN
                    begin
                         vb_Retorno := True;
                    end;
               END; // FOR viContaSel1
               Result :=  vb_Retorno;
          END ELSE
          BEGIN
               Result := True;
          END;// IF
     end; // Function

     Function NumerosFixos2 (viLinhas1 : Integer) : boolean;
     VAR
          viContaSel1, vi_Segundo, vi_NumeroCelula  : Integer;
          vb_Retorno : boolean  ;
     begin
          vi_Segundo := strTOint(Ed_FIXOS_02_8i7p.Text);
          IF (vi_Segundo >0) and (vi_Segundo<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR viContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(Stgr_Etapa03_15.Cells[viContaSel1,viLinhas1]);
                    IF (vi_NumeroCelula=vi_Segundo) THEN
                    begin
                         vb_Retorno := True;
                    end;
               END; // FOR viContaSel1
               Result :=  vb_Retorno;
          END ELSE
          BEGIN
               Result := True;
          END;// IF
     end; // Function

     Function NumerosFixos3 (viLinhas1 : Integer) : boolean;
     VAR
          viContaSel1, vi_Segundo, vi_NumeroCelula  : Integer;
          vb_Retorno : boolean  ;
     begin
          vi_Segundo := strTOint(Ed_FIXOS_03_8i7p.Text);
          IF (vi_Segundo >0) and (vi_Segundo<=25)  THEN
          BEGIN
               vb_Retorno := False;
               FOR viContaSel1 := 2 TO 16 DO
               BEGIN
                    vi_NumeroCelula:=  STRtoINT(Stgr_Etapa03_15.Cells[viContaSel1,viLinhas1]);
                    IF (vi_NumeroCelula=vi_Segundo) THEN
                    begin
                         vb_Retorno := True;
                    end;
               END; // FOR viContaSel1
               Result :=  vb_Retorno;
          END ELSE
          BEGIN
               Result := True;
          END;// IF
     end; // Function

 Procedure PR_Gravar_Dados_etapa1 ();
    VAR
        VI_AN_Comb1, viContarCelulas, viContar, viContarStgGrid : Integer;
        vcQUERY, vc_Nome_Tabela : String;
        vcCombinacoes19 : String;
    BEGIN
        //VI_TOTALGERADO := Stgr_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          viContarStgGrid := TRUNC((Stgr_Etapa01_19.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
       BEGIN
           vcCombinacoes19 :='';
           FOR viContarCelulas := 2 TO 20 DO
           BEGIN
               vcCombinacoes19 := vcCombinacoes19 + TRIM(Stgr_Etapa01_19.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
               Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa01_19.Cells[viContarCelulas,VI_AN_Comb1])) ,1]:='V';
           END; // FOR viContarCelulas
          vc_Nome_Tabela := ' GERADOR_RESULT_25_Linhas2_d19E1';
           vcQUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, SOMA_19, N) VALUES('
                 +#39+  TRIM(vcCombinacoes19)  + #39 +','
                 +#39+  TRIM(Stgr_Etapa01_19.Cells[21,VI_AN_Comb1])  + #39 +','
                 +#39+  TRIM(Stgr_Etapa01_19.Cells[0,VI_AN_Comb1])
                 +#39+ ');';
           DM1.IBQ_Combin_02.SQL.Clear;
           DM1.IBQ_Combin_02.SQL.Add(vcQUERY)  ;
           DM1.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
    DM1.IBQ_Combin_02.SQL.Clear;
    DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combin_02.ExecSQL;
    SLEEP(14);
    DM1.IBQ_Combin_02.SQL.Clear;
    END; // Procedure GRAVAR_DADOS

    

 Procedure PR_Gravar_Dados_etapa2 ();
    VAR
        VI_AN_Comb1, viContarCelulas, viContar, viContarStgGrid : Integer;
        vcQUERY, vc_Nome_Tabela : String;
        vcCombinacoes19, vcCombinacoes06 : String;
    BEGIN
        //VI_TOTALGERADO := Stgr_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          viContarStgGrid := TRUNC((Stgr_Etapa01_19.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
       BEGIN
            FOR viContarCelulas := 1 TO 25 DO
            BEGIN
               Stgr_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
            end;
           vcCombinacoes19 :='';
           FOR viContarCelulas := 2 TO 20 DO
           BEGIN
               vcCombinacoes19 := vcCombinacoes19 + TRIM(Stgr_Etapa01_19.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
               Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa01_19.Cells[viContarCelulas,VI_AN_Comb1])) ,1]:='V';
           END; // FOR viContarCelulas
               // -------------------------------
               // --  MONTANDO AS 06 SOBRAS   ---
               // -------------------------------
                  viContarCelulas := 1;
                  vcCombinacoes06 := '';
                  FOR viContar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF (Stgr_Todos_Numeros.Cells[viContar,1]='F') THEN
                      BEGIN
                          vcCombinacoes06 := vcCombinacoes06 + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                          viContarCelulas := viContarCelulas + 1;
                      END; // IF (Stgr_Todos_Numeros
                  END; // FOR viContar
          vc_Nome_Tabela := ' GERADOR_RESULT_25_Linhas2_d19e2';
           vcQUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, DADOS_SOBRA, SOMA_19, PROVA_12, PROVA_07, N) VALUES('
                 +#39+  TRIM(vcCombinacoes19)  + #39 +','
                 +#39+  TRIM(vcCombinacoes06)  + #39 +','
                 +#39+  TRIM(Stgr_Etapa01_19.Cells[21,VI_AN_Comb1])  + #39 +','
                 +#39+  TRIM(Stgr_Etapa01_19.Cells[22,VI_AN_Comb1])  + #39 +','
                 +#39+  TRIM(Stgr_Etapa01_19.Cells[23,VI_AN_Comb1])  + #39 +','
                 +#39+  TRIM(Stgr_Etapa01_19.Cells[0,VI_AN_Comb1])
                 +#39+ ');';
           DM1.IBQ_Combinacoes.SQL.Clear;
           DM1.IBQ_Combinacoes.SQL.Add(vcQUERY)  ;
           DM1.IBQ_Combinacoes.ExecSQL;
       END; // FOR VI_AN_Comb1
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combinacoes.ExecSQL;
    SLEEP(14);
    DM1.IBQ_Combinacoes.SQL.Clear;
    END; // Procedure GRAVAR_DADOS



 Procedure PR_Gravar_Dados_Dados12 ();
    VAR
        VI_AN_Comb1, viContarCelulas, viContar, viContarStgGrid : Integer;
        vcQUERY, vc_Nome_Tabela : String;
        vcCombinacoes19, vcCombinacoes12, vcCombinacoes07 : String;
    BEGIN
        //VI_TOTALGERADO := Stgr_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          viContarStgGrid := TRUNC((Stgr_Etapa02_12.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
       BEGIN
            FOR viContarCelulas := 1 TO 25 DO
            BEGIN
               Stgr_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
               Stgr_Todos_Numeros.Cells [viContarCelulas ,2]:='F';
            end;
           vcCombinacoes12 := '';
           vcCombinacoes19 := '';
           FOR viContarCelulas := 2 TO 20 DO
           BEGIN
               vcCombinacoes19 := vcCombinacoes19 + TRIM(Stgr_Etapa01_19.Cells[viContarCelulas,STRtoINT(Stgr_Etapa02_12.Cells[01,VI_AN_Comb1])]) +' ';
               Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa01_19.Cells[viContarCelulas,STRtoINT(Stgr_Etapa02_12.Cells[01,VI_AN_Comb1]) ])) ,1]:='V';
           END; // FOR viContarCelulas
           FOR viContarCelulas := 2 TO 13 DO
           BEGIN
               vcCombinacoes12 := vcCombinacoes12 + RIGHTSTR ('0'+TRIM(Stgr_Etapa02_12.Cells[viContarCelulas,VI_AN_Comb1]),2) +' ';
               Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa02_12.Cells[viContarCelulas,VI_AN_Comb1])) ,2]:='V';
           END; // FOR viContarCelulas
               // -------------------------------
               // --  MONTANDO AS 07 SOBRAS   ---
               // -------------------------------
                  viContarCelulas := 1;
                  vcCombinacoes07 := '';
                  FOR viContar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF ( (Stgr_Todos_Numeros.Cells[viContar,1]='V') and (Stgr_Todos_Numeros.Cells[viContar,2]='F') ) THEN
                      BEGIN
                          vcCombinacoes07 := vcCombinacoes07 + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                          viContarCelulas := viContarCelulas + 1;
                      END; // IF (Stgr_Todos_Numeros
                  END; // FOR viContar
          vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_D12';
           vcQUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS_12, DADOS_07, QTD, N) VALUES('
                 +#39+  TRIM(vcCombinacoes12)  + #39 +','
                 +#39+  TRIM(vcCombinacoes07)  + #39 +','
                 +#39+  TRIM(Stgr_Etapa02_12.Cells[0,VI_AN_Comb1])   + #39 +','
                 +#39+  TRIM(Stgr_Etapa02_12.Cells[1,VI_AN_Comb1])
                 +#39+ ');';
           DM1.IBQ_Combin_02.SQL.Clear;
           DM1.IBQ_Combin_02.SQL.Add(vcQUERY)  ;
           DM1.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
    DM1.IBQ_Combin_02.SQL.Clear;
    DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combin_02.ExecSQL;
    SLEEP(4);
    DM1.IBQ_Combin_02.SQL.Clear;
    END; // Procedure GRAVAR_DADOS


 Procedure PR_Gravar_Dados3 ();
    VAR
        VI_AN_Comb1, viContarCelulas, viContar, viContarStgGrid : Integer;
        vcQUERY, vc_Nome_Tabela : String;
        vcCombinacoes03so, vcCombinacoes03ns : String;
    BEGIN
        //VI_TOTALGERADO := Stgr_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          viContarStgGrid := TRUNC((Stgr_Etapa02_03.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
       BEGIN
            FOR viContarCelulas := 1 TO 25 DO
            BEGIN
               Stgr_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
               Stgr_Todos_Numeros.Cells [viContarCelulas ,2]:='F';
            end;
           vcCombinacoes03so :='';
           FOR viContarCelulas := 2 TO 4 DO
           BEGIN
               vcCombinacoes03so := vcCombinacoes03so + TRIM(Stgr_Etapa02_03.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
               Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa02_03.Cells[viContarCelulas,VI_AN_Comb1])) ,1]:='V';
           END; // FOR viContarCelulas
           FOR viContarCelulas := 2 TO 7 DO
           BEGIN
               Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa02_06.Cells[viContarCelulas,STRtoINT(Stgr_Etapa02_03.Cells[01,VI_AN_Comb1])])) ,2]:='V';
           END; // FOR viContarCelulas
               // -------------------------------
               // --  MONTANDO AS 06 SOBRAS   ---
               // -------------------------------
                  viContarCelulas := 1;
                  vcCombinacoes03ns := '';
                  FOR viContar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF ( (Stgr_Todos_Numeros.Cells[viContar,1]='F') and (Stgr_Todos_Numeros.Cells[viContar,2]='V') ) THEN
                      BEGIN
                          vcCombinacoes03ns := vcCombinacoes03ns + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                          viContarCelulas := viContarCelulas + 1;
                      END; // IF (Stgr_Todos_Numeros
                  END; // FOR viContar
          vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_D3A';
           vcQUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS_03s, DADOS_03ns, N) VALUES('
                 +#39+  TRIM(vcCombinacoes03so)  + #39 +','
                 +#39+  TRIM(vcCombinacoes03ns)  + #39 +','
                 +#39+  TRIM(Stgr_Etapa02_03.Cells[1,VI_AN_Comb1])
                 +#39+ ');';
           DM1.IBQ_Combin_02.SQL.Clear;
           DM1.IBQ_Combin_02.SQL.Add(vcQUERY)  ;
           DM1.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
    DM1.IBQ_Combin_02.SQL.Clear;
    DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combin_02.ExecSQL;
    SLEEP(14);
    DM1.IBQ_Combin_02.SQL.Clear;
    END; // Procedure GRAVAR_DADOS


    Function Ordenar_Comb15 (viLinhas9: Integer):Integer;
    var
        viContar, viCntCelulas: Integer;
    begin
          // ************************
      	// **  Ordena os dados   **
	     // ************************
        FOR viContar :=1 TO 25 DO
        BEGIN
            Stgr_Todos_Numeros.Cells[viContar,1] :='F';
        END; // FOR viContar
        // ----> MONTADO E VERIFICANDO TODOS OS DÍGITOS
        FOR viContar :=2 TO 21 DO
        BEGIN
            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa03_15.Cells[viContar,viLinhas9])) ,1]:='V';
        END; // FOR viContar1
        viCntCelulas := 2;
        FOR viContar :=1 TO 25 DO
        BEGIN
            IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') THEN
            BEGIN
                Stgr_Etapa03_15.Cells[viCntCelulas, viLinhas9] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
                viCntCelulas := viCntCelulas + 1;
            END; // IF (Stgr_Todos_Numeros
        END; // FOR viContar
        Ordenar_Comb15 := (viCntCelulas-2);
    end; // Procedure PR_Ordenar_Simulacao_15_8i7p



 Procedure PR_Gravar_Dados_etapa3a ();
    VAR
        VI_AN_Comb1, viContarCelulas, viContar, viContarStgGrid : Integer;
        vcQUERY, vc_Nome_Tabela : String;
        vcCombinacoes15, vcCombinacoes10 : String;
    BEGIN
        //VI_TOTALGERADO := Stgr_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          viContarStgGrid := TRUNC((Stgr_Etapa03_15.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
       BEGIN
            FOR viContarCelulas := 1 TO 25 DO
            BEGIN
               Stgr_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
            end;       
           vcCombinacoes15 :='';
           FOR viContarCelulas := 2 TO 16 DO
           BEGIN
               vcCombinacoes15 := vcCombinacoes15 + TRIM(Stgr_Etapa03_15.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
               Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa03_15.Cells[viContarCelulas,VI_AN_Comb1])) ,1]:='V';
           END; // FOR viContarCelulas
               // -------------------------------
               // --  MONTANDO AS 06 SOBRAS   ---
               // -------------------------------
                  viContarCelulas := 1;
                  vcCombinacoes10 := '';
                  FOR viContar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF (Stgr_Todos_Numeros.Cells[viContar,1]='F') THEN
                      BEGIN
                          vcCombinacoes10 := vcCombinacoes10 + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                          viContarCelulas := viContarCelulas + 1;
                      END; // IF (Stgr_Todos_Numeros
                  END; // FOR viContar
          vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_D15A';
           vcQUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, DADOS_ns, N) VALUES('
                 +#39+  TRIM(vcCombinacoes15)  + #39 +','
                 +#39+  TRIM(vcCombinacoes10)  + #39 +','
                 +#39+  TRIM(Stgr_Etapa03_15.Cells[1,VI_AN_Comb1])
                 +#39+ ');';
           DM1.IBQ_Combin_02.SQL.Clear;
           DM1.IBQ_Combin_02.SQL.Add(vcQUERY)  ;
           DM1.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
   // IF DM1.IBQ_Combin_02.Transaction.Active=False then
   //     DM1.IBQ_Combin_02.Transaction.StartTransaction ;
    DM1.IBQ_Combin_02.SQL.Clear;
    DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combin_02.ExecSQL;
    sleep(100);
    DM1.IBQ_Combin_02.SQL.Clear;
    END; // Procedure GRAVAR_DADOS


var
     viCombinacoes1, viCombinacoes2, viContar_Comb1, viQtdDados :Integer;
     viLinhas01 : Integer;
     viSomaTotal : Integer;
begin
    sleep(1000);
    Pa_Gerar.Left := 6000;
    Pa_Gerar.Enabled := False ;
    Pa_Gerar.Repaint;
   {
    DM1.IBDatabase1.ForceClose;
    DM1.IBDatabase1.Open;
    DM1.IBDatabase1.Connected := False;
    DM1.IBDatabase1.Connected := True;
    IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
}

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('SELECT * FROM GERADOR_RESULT_25_Linhas2_DEF; ')  ;
     DM1.IBQ_Combinacoes.Prepare;
     DM1.IBQ_Combinacoes.Open;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_Linhas2_d19E1')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_Linhas2_d19E2')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D12')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D3A')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D15A')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D15B')  ;
     DM1.IBQ_Combinacoes.ExecSQL;

     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('insert INTO GERADOR_RESULT_25_Linhas2_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     DM1.IBQ_Combinacoes.ExecSQL;


    Stgr_Etapa01_08.ColWidths [0]:= 60 ;
    Stgr_Etapa1_09.ColWidths [0]:= 60 ;
    Stgr_Etapa01_09.ColWidths [0]:= 60 ;
    Stgr_Etapa1_10.ColWidths [0]:= 60 ;
    Stgr_Etapa01_08.ColWidths [0]:= 60 ;
    Stgr_Etapa1_11.ColWidths [0]:= 60 ;
    Stgr_Etapa01_07.ColWidths [0]:= 60 ;
    Stgr_Etapa1_12.ColWidths [0]:= 60 ;
    Stgr_Etapa01_06.ColWidths [0]:= 60 ;
    Stgr_Etapa1_13.ColWidths [0]:= 60 ;
    Stgr_Etapa01_05.ColWidths [0]:= 60 ;
    Stgr_Etapa1_14.ColWidths [0]:= 60 ;
    Stgr_Etapa01_04.ColWidths [0]:= 60 ;
    Stgr_Etapa1_15.ColWidths [0]:= 60 ;
    Stgr_Etapa01_19.ColWidths [0]:= 60 ;
    Stgr_Etapa02_12.ColWidths [0]:= 60 ;
    Stgr_Etapa03_15.ColWidths [0]:= 60 ;
    Stgr_Etapa02_06.ColWidths [0]:= 60 ;
    Stgr_Etapa02_03.ColWidths [0]:= 60 ;
    Stgr_Etapa06_05.ColWidths [0]:= 40 ;

    Stgr_Etapa01_08.ColWidths [1]:= 36 ;
    Stgr_Etapa1_09.ColWidths [1]:= 36 ;
    Stgr_Etapa01_09.ColWidths [1]:= 36 ;
    Stgr_Etapa1_10.ColWidths [1]:= 36 ;
    Stgr_Etapa01_08.ColWidths [1]:= 36 ;
    Stgr_Etapa1_11.ColWidths [1]:= 36 ;
    Stgr_Etapa01_07.ColWidths [1]:= 36 ;
    Stgr_Etapa1_12.ColWidths [1]:= 36 ;
    Stgr_Etapa01_06.ColWidths [1]:= 36 ;
    Stgr_Etapa1_13.ColWidths [1]:= 36 ;
    Stgr_Etapa01_19.ColWidths [1]:= 45 ;
    Stgr_Etapa02_12.ColWidths [1]:= 45 ;
    Stgr_Etapa03_15.ColWidths [1]:= 36 ;
//    Stgr_Etapa03_15.ColWidths [18]:= 36 ;
    Stgr_Etapa02_06.ColWidths [1]:= 50 ;
    Stgr_Etapa02_03.ColWidths [1]:= 50 ;

    Pgbr_EtaPa_01.Position := 0 ;
    Pgbr_EtaPa_01.Repaint;
    Pgbr_EtaPa_01_01.Position := 0 ;
    Pgbr_EtaPa_01_01.Repaint ;
    Pgbr_EtaPa_02.Position :=0 ;
    Pgbr_EtaPa_02.Repaint;
    Pgbr_EtaPa_03.Position := 0 ;
    Pgbr_EtaPa_03.Repaint;
    Pgbr_EtaPa_04.Position := 0 ;
    Pgbr_EtaPa_04.Repaint;
    Pgbr_EtaPa_05.Position := 0 ;
    Pgbr_EtaPa_05.Repaint;
    La_Gerar_Comb.Caption := '#:                   ';
    La_Gerar_Comb.Repaint;
    Pa_Gerar.Enabled := false;
    Pa_Gerar.Left := 4500;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
      //  Scbx_dados.HorzScrollBar.Position := 1;
      //  Scbx_dados.Repaint;

    //PR_GRAVAR_DADOS ('INICIO',viLinhas_01_01, 1, TRUNC(Stgr_Base.RowCount-1));
   

        if (Cb_tipo19.ItemIndex = 2) then AnaliseComb_09e10 ();
       //corigir subtração
    Sleep(140);
    if (Cb_tipo19.ItemIndex = 1) then AnaliseComb_10e09 ();
    Sleep(140);
    if (Cb_tipo19.ItemIndex = 0) then AnaliseComb_11e08 ();
    Sleep(140);
    if (Cb_tipo19.ItemIndex = 0) then AnaliseComb_12e07 ();
    Sleep(140);
    if (Cb_tipo19.ItemIndex = 1) then AnaliseComb_13e06 ();
    Sleep(140);
        if (Cb_tipo19.ItemIndex = 2) then AnaliseComb_14e05 ();
    Sleep(140);
        if (Cb_tipo19.ItemIndex = 2) then AnaliseComb_15e04 ();
    Sleep(140);
    Pgbr_EtaPa_01.Position := 100;
    Pgbr_EtaPa_01.Repaint;
    Pgbr_EtaPa_01_01.Position :=0 ;
    Pgbr_EtaPa_01_01.Repaint;
    Stgr_Etapa01_19.RowCount := 1;
      if (Cb_tipo19.ItemIndex = 2) then Gerar19_09e10 ();
    Sleep(140);
    if (Cb_tipo19.ItemIndex = 1) then Gerar19_10e09 ();
    Sleep(140);
    if (Cb_tipo19.ItemIndex = 0) then Gerar19_11e08 ();
    Sleep(140);
    if (Cb_tipo19.ItemIndex = 0) then Gerar19_12e07 ();
    Sleep(140);
    if (Cb_tipo19.ItemIndex = 1) then Gerar19_13e06 ();
    Sleep(140);
    if (Cb_tipo19.ItemIndex = 2) then Gerar19_14e05 ();
    Sleep(140);
    if (Cb_tipo19.ItemIndex = 2) then Gerar19_15e04 ();
    Sleep(140);
    Pgbr_EtaPa_01_01.Position :=100 ;
    Pgbr_EtaPa_01_01.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    sleep(900);
    Self.Repaint;
    Pa_Titulo_Simulacao.Repaint;
            PR_Gravar_Dados_etapa1();
    Stgr_Etapa02_12.RowCount := 1;
    Scbx_dados.HorzScrollBar.Position := 6700;
    Scbx_dados.Repaint;
    //
    //  -- > Montando o Bloco de 19 sem os repetidos
    //
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as qtd FROM GERADOR_RESULT_25_Linhas2_d19E1;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('qtd').AsInteger;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS), soma_19 FROM GERADOR_RESULT_25_Linhas2_d19E1 ORDER BY DADOS;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
    LimparGrid19() ;
    viLinhas01 := 1;
    for viCombinacoes1 := 1 TO Trunc(viQtdDados/1) DO
    BEGIN
        Stgr_Etapa01_19.Cells[00,viLinhas01] := viLinhas01.ToString  ;
        //Stgr_Etapa01_19.Cells[01,viLinhas01] := '';
        Stgr_Etapa01_19.Cells[02,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,01,2);
        Stgr_Etapa01_19.Cells[03,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,04,2);
        Stgr_Etapa01_19.Cells[04,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,07,2);
        Stgr_Etapa01_19.Cells[05,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,10,2);
        Stgr_Etapa01_19.Cells[06,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,13,2);
        Stgr_Etapa01_19.Cells[07,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,16,2);
        Stgr_Etapa01_19.Cells[08,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,19,2);
        Stgr_Etapa01_19.Cells[09,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,22,2);
        Stgr_Etapa01_19.Cells[10,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,25,2);
        Stgr_Etapa01_19.Cells[11,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,28,2);
        Stgr_Etapa01_19.Cells[12,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,31,2);
        Stgr_Etapa01_19.Cells[13,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,34,2);
        Stgr_Etapa01_19.Cells[14,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,37,2);
        Stgr_Etapa01_19.Cells[15,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,40,2);
        Stgr_Etapa01_19.Cells[16,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,43,2);
        Stgr_Etapa01_19.Cells[17,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,46,2);
        Stgr_Etapa01_19.Cells[18,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,49,2);
        Stgr_Etapa01_19.Cells[19,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,52,2);
        Stgr_Etapa01_19.Cells[20,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,55,2);
        Stgr_Etapa01_19.Cells[21,viLinhas01] := DM1.IBQ_Combinacoes.fieldBYname('Soma_19').AsString ;
        DM1.IBQ_Combinacoes.Next;
        viLinhas01 := viLinhas01 + 1;
    end; // viCombinacoes1
    Stgr_Etapa01_19.RowCount := viLinhas01;
    Stgr_Etapa01_19.Repaint;
    //
    //  -- > Montando o Bloco de 12 e gravando os dados
    //
    viQtdDados := Trunc((Stgr_Etapa01_19.RowCount-1)/15);
    for viCombinacoes1 := 1 TO Trunc((Stgr_Etapa01_19.RowCount-1)/1) DO
    BEGIN
        FN_VALIDAR_ETAPa_2_parte1 (viCombinacoes1, 156) ;
        if (viCombinacoes1 mod viQtdDados ) = 0 then
        begin
            PR_Gravar_Dados_Dados12();
            Pgbr_EtaPa_02.Position := Trunc(viCombinacoes1/(Stgr_Etapa01_19.RowCount-1)*100) ;
            Pgbr_EtaPa_02.Repaint;
            Stgr_Etapa02_12.RowCount := 1;
            Stgr_Etapa02_12.Repaint;
        end; /// if
    end; // viCombinacoes1
               PR_Gravar_Dados_Dados12();
    Stgr_Etapa01_19.Repaint;
    Stgr_Etapa02_12.Repaint;
    //
    // Validação dos 7
    //
    for viCombinacoes1 := 1 TO (Stgr_Etapa01_19.RowCount-1) DO
    BEGIN
        if (FN_VALIDAR_ETAPa_2_parte2 (viCombinacoes1, 91)) then
            continue;
    end;
    Pgbr_EtaPa_02.Position := 100;
    Pgbr_EtaPa_02.Repaint;
    Stgr_Etapa01_19.Repaint;
    Pa_Titulo_Simulacao.Repaint;
            PR_Gravar_Dados_etapa2();
    //
    // --> Gerando 3 em 3 a partir dos 6 que sobram dos 19
    //

    DM1.IBQ_Combinacoes.Close;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DADOS_SOBRA) as TOTALQTD FROM GERADOR_RESULT_25_LINHAS2_D19E2;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('TOTALQTD').AsInteger;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT DADOS_SOBRA, N FROM GERADOR_RESULT_25_LINHAS2_D19E2 ORDER BY N;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
    viLinhas01 := 1;
    for viCombinacoes2 := 1 TO viQtdDados DO
    BEGIN
        Stgr_Etapa02_06.Cells[00,viLinhas01] := viLinhas01.ToString  ;
        Stgr_Etapa02_06.Cells[01,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('N').AsString,01,2);
        Stgr_Etapa02_06.Cells[02,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_SOBRA').AsString,01,2);
        Stgr_Etapa02_06.Cells[03,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_SOBRA').AsString,04,2);
        Stgr_Etapa02_06.Cells[04,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_SOBRA').AsString,07,2);
        Stgr_Etapa02_06.Cells[05,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_SOBRA').AsString,10,2);
        Stgr_Etapa02_06.Cells[06,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_SOBRA').AsString,13,2);
        Stgr_Etapa02_06.Cells[07,viLinhas01] := copy(DM1.IBQ_Combinacoes.fieldBYname('DADOS_SOBRA').AsString,16,2);
        DM1.IBQ_Combinacoes.Next;
        viLinhas01 := viLinhas01 + 1;
    end; // viCombinacoes2
    Stgr_Etapa02_06.RowCount := viLinhas01 ;
    AnaliseComb_06e03 ();
    Stgr_Etapa02_06. Repaint ;
    PR_Gravar_Dados3 ();
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combinacoes.ExecSQL;
  LimparGrid19() ;
  sleep(519);

    //
    //  -- > Montando o Bloco de 15 através da junção do Bloco de 12 (já aprovados) e do bloco de 3 (aprovados)
    //
    Scbx_dados.HorzScrollBar.Position := 7890;
    Scbx_dados.Repaint;
    viLinhas01 := 1;
    DM1.IBQ_Combinacoes.Close;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT count(A.DADOS_12 || '' '' || B.DADOS_03S) as TOTALQTD FROM GERADOR_RESULT_25_LINHAS2_D12 AS A, GERADOR_RESULT_25_LINHAS2_D3A AS B  WHERE A.N = B.N;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('TOTALQTD').AsInteger;
    DM1.IBQ_Combinacoes.Close;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT (A.DADOS_12 || '' '' || B.DADOS_03S) as dados, A.DADOS_07 || '' ''|| B.DADOS_03NS, A.N FROM GERADOR_RESULT_25_LINHAS2_D12 AS A, GERADOR_RESULT_25_LINHAS2_D3A AS B  WHERE A.N = B.N;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
    viContar_Comb1 := 1;
    WHILE NOT(DM1.IBQ_COMBINACOES.Eof) DO
    //for viCombinacoes1 := 1 TO viQtdDados DO
    BEGIN
        Stgr_Etapa03_15.Cells[01,viLinhas01] := DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
        Stgr_Etapa03_15.Cells[02,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
        Stgr_Etapa03_15.Cells[03,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
        Stgr_Etapa03_15.Cells[04,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
        Stgr_Etapa03_15.Cells[05,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
        Stgr_Etapa03_15.Cells[06,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
        Stgr_Etapa03_15.Cells[07,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
        Stgr_Etapa03_15.Cells[08,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
        Stgr_Etapa03_15.Cells[09,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
        Stgr_Etapa03_15.Cells[10,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
        Stgr_Etapa03_15.Cells[11,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
        Stgr_Etapa03_15.Cells[12,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
        Stgr_Etapa03_15.Cells[13,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
        Stgr_Etapa03_15.Cells[14,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
        Stgr_Etapa03_15.Cells[15,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
        Stgr_Etapa03_15.Cells[16,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
        PR_ORDENAR_15 (viLinhas01);
        DM1.IBQ_Combinacoes.Next;
        viLinhas01 := viLinhas01 + 1;
        if (viLinhas01/9000)=(viLinhas01 DIV 9000) then  //850  115500
        BEGIN
//           Stgr_Etapa03_15.RowCount := viLinhas01;
//           sleep(020); //290/420
//           Pgbr_EtaPa_03.Position := (TRUNC((viContar_Comb1*viLinhas01)  / viQtdDados *100) );
//           Pgbr_EtaPa_03.Repaint;
//           PR_Gravar_Dados_etapa3a ();
//           viLinhas01 := 1;
//           viContar_Comb1 := viContar_Comb1 +1;
//           LimparGrid_Comb15 ();
//           Stgr_Etapa03_15.REPAINT;
           Stgr_Etapa03_15.RowCount := viLinhas01;
           PR_Gravar_Dados_etapa3a ();
           Pgbr_EtaPa_03.Position := (TRUNC((viContar_Comb1*viLinhas01)  / viQtdDados *100) );
           Pgbr_EtaPa_03.Repaint;
           viLinhas01 := 1;
           LimparGrid_Comb15 ();
           viContar_Comb1 := viContar_Comb1 +1;
           if (viContar_Comb1 mod 7)=0 then
           begin
               Stgr_Etapa03_15.Visible := True;
               sleep(1420); //290/420
               Stgr_Etapa03_15.REPAINT;
           end;
        END;
    end; // while
   Stgr_Etapa03_15.RowCount := viLinhas01;
   Stgr_Etapa03_15.Repaint ;
   PR_Gravar_Dados_etapa3a ();
   Pgbr_EtaPa_03.Position := 100;
   Pgbr_EtaPa_03.Repaint;
   Stgr_Etapa03_15.REPAINT;

   Bbt_Etapa03.Click;
end;




Procedure T_F_Gerador_ResDiv_25Linhas2.PR_Gravar_Dados23_1Tm15 ();
VAR
   VI_AN_Comb1, viContarCelulas, viContar, viContarStgGrid : Integer;
   vcQUERY, vcNomeTabela : String;
   vcCombinacoes10, vcCombinacoes15, vc_Contador_da_Tabela : String;
BEGIN
   SELF.Repaint;
   // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
   viContarStgGrid := TRUNC((Stgr_Etapa03_15.RowCount-1)/1);
   FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
   BEGIN
     vcCombinacoes15 :='';
     FOR viContarCelulas := 2 TO 16 DO
     BEGIN
         vcCombinacoes15 := vcCombinacoes15 + TRIM(Stgr_Etapa03_15.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
     END; // FOR viContarCelulas
     vcNomeTabela := 'GERADOR_RESULT_25_LINHAS2_1tm15';
     vcQUERY  := 'INSERT INTO ' +vcNomeTabela+ ' (DADOS) VALUES('
           +#39+  TRIM(vcCombinacoes15)
           +#39+ ');';
     DM1.IBQ_Combin_02.SQL.Clear;
     DM1.IBQ_Combin_02.SQL.Add(vcQUERY)  ;
     DM1.IBQ_Combin_02.ExecSQL;
   END; // FOR VI_AN_Comb1
   DM1.IBQ_Combin_02.SQL.Clear;
   DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
   DM1.IBQ_Combin_02.ExecSQL;
   SLEEP(14);
   DM1.IBQ_Combin_02.SQL.Clear;
END;


Procedure T_F_Gerador_ResDiv_25Linhas2.MontarGrid15(viLinhas01: Integer);
begin
  //DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
  Stgr_Etapa03_15.Cells[2, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 1, 2);
  Stgr_Etapa03_15.Cells[3, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 4, 2);
  Stgr_Etapa03_15.Cells[4, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 7, 2);
  Stgr_Etapa03_15.Cells[5, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 10, 2);
  Stgr_Etapa03_15.Cells[6, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 13, 2);
  Stgr_Etapa03_15.Cells[7, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 16, 2);
  Stgr_Etapa03_15.Cells[8, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 19, 2);
  Stgr_Etapa03_15.Cells[9, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 22, 2);
  Stgr_Etapa03_15.Cells[10, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 25, 2);
  Stgr_Etapa03_15.Cells[11, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 28, 2);
  Stgr_Etapa03_15.Cells[12, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 31, 2);
  Stgr_Etapa03_15.Cells[13, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 34, 2);
  Stgr_Etapa03_15.Cells[14, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 37, 2);
  Stgr_Etapa03_15.Cells[15, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 40, 2);
  Stgr_Etapa03_15.Cells[16, viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString, 43, 2);
end;



procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_AC01de10comSobra;
var
   vsSobra : String;
   viComb01, viLinhas: Integer;
   viContar, viCntCelulas, viCaiFora, viNumeroLinha11, viSobra: smallint;
begin
    Pgbr_EtaPa_11.Position :=0 ;
    Pgbr_EtaPa_11.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_E11Parte3Fase1_Qtd02.Repaint;
    Scbx_dados.HorzScrollBar.Position := 19690;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    viLinhas := 1;
    try
      for viNumeroLinha11 := 1 to Stgr_E11_AC10de11.RowCount-1 do
      begin
         viCaiFora := Stgr_E11_AC10de11.Cells[01,viNumeroLinha11].ToInteger;
         FOR viContar :=1 TO 25 DO
         BEGIN
           Stgr_Todos_Numeros.Cells[viContar,1] :='F';
           Stgr_Todos_Numeros.Cells[viContar,2] :='F';
         END; // FOR viContar
         FOR viContar :=1 TO 11 DO
         BEGIN
           Stgr_Todos_Numeros.Cells [Stgr_E11n11.Cells[viContar,viCaiFora].ToInteger ,1]:='V';
         END; // FOR viContar1
         for viComb01 := 2 TO 11 DO
         BEGIN
            Stgr_Todos_Numeros.Cells [Stgr_E11_AC10de11.Cells[viComb01,viNumeroLinha11].ToInteger ,2]:='V';
            FOR viContar :=1 TO 25 DO
            BEGIN
              IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') and (Stgr_Todos_Numeros.Cells[viContar,2]='F') THEN
              BEGIN
                  vsSobra := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
              END; // IF (Stgr_Todos_Numeros
            END; // FOR viContar
         End;
         for viComb01 := 2 TO 11 DO
         BEGIN
            Stgr_E11Parte3Fase1_Qtd02.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Parte3Fase1_Qtd02.Cells[01,viLinhas] := viNumeroLinha11.ToString  ;
            Stgr_E11Parte3Fase1_Qtd02.Cells[02,viLinhas] := Stgr_E11_AC10de11.Cells[1,viNumeroLinha11];
            Stgr_E11Parte3Fase1_Qtd02.Cells[03,viLinhas] := Stgr_E11_AC10de11.Cells[viComb01,viNumeroLinha11];
            Stgr_E11Parte3Fase1_Qtd02.Cells[04, viLinhas] := vsSobra;
            viLinhas := viLinhas + 1;
         END;
      end; // for viNumeroLinha11
    finally
        Stgr_E11Parte3Fase1_Qtd02.RowCount := viLinhas;
        Stgr_E11Parte3Fase1_Qtd02.Repaint;
    end;
    Pgbr_EtaPa_11.Position :=5 ;
    Pgbr_EtaPa_11.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_AC10de14();
var
   viComb01, viComb02, viComb03, viComb04, viLinhas: Integer;
   viContar, viCntCelulas, viNumeroLinha11: smallint;
   viCaiFora : array [1..4] of smallint;
begin
    Pgbr_EtaPa_11.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_E11Parte3Fase1_Qtd10.Repaint;
    Scbx_dados.HorzScrollBar.Position := 19690;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    viLinhas := 1;
    try
      for viNumeroLinha11 := 1 to Stgr_E11n14.RowCount-1 do
      begin
         // Análise combinatória de 14 em 10 gera o mesmo resultado de Análise combinatória de 14 em 4
         // Então captura-se o que sobrou => da na mesma.
         // Ou seja ==> Redução de código Haduken.
         for viComb01 := 1 TO 11 DO
         BEGIN
            for viComb02 := viComb01 + 1  TO 12 DO
            BEGIN
               for viComb03 := viComb02 + 1 TO 13 DO
               BEGIN
                  for viComb04 := viComb03 + 1 TO 14 DO
                  BEGIN
                     Stgr_E11Parte3Fase1_Qtd10.Cells[00,viLinhas] := viLinhas.ToString  ;
                      viCaiFora[1] := Stgr_E11n14.Cells[viComb01,viNumeroLinha11].ToInteger;
                      viCaiFora[2] := Stgr_E11n14.Cells[viComb02,viNumeroLinha11].ToInteger;
                      viCaiFora[3] := Stgr_E11n14.Cells[viComb03,viNumeroLinha11].ToInteger;
                      viCaiFora[4] := Stgr_E11n14.Cells[viComb04,viNumeroLinha11].ToInteger;
                     FOR viContar :=1 TO 25 DO
                     BEGIN
                       Stgr_Todos_Numeros.Cells[viContar,1] :='F';
                       Stgr_Todos_Numeros.Cells[viContar,2] :='F';
                     END; // FOR viContar
                     // ----> MONTADO TODOS OS DÍGITOS
                     FOR viContar :=1 TO 4 DO
                     BEGIN
                        Stgr_Todos_Numeros.Cells [viCaiFora[viContar] ,1]:='V';
                     end;
                     FOR viContar :=1 TO 14 DO
                     BEGIN
                       Stgr_Todos_Numeros.Cells [Stgr_E11n14.Cells[viContar,viNumeroLinha11].ToInteger ,2]:='V';
                     END; // FOR viContar1
                     viCntCelulas := 2;
                     Stgr_E11Parte3Fase1_Qtd10.Cells[01, viLinhas] :=viNumeroLinha11.ToString;
                     FOR viContar :=1 TO 25 DO
                     BEGIN
                       IF (Stgr_Todos_Numeros.Cells[viContar,1]='F') and (Stgr_Todos_Numeros.Cells[viContar,2]='V') THEN
                       BEGIN
                           Stgr_E11Parte3Fase1_Qtd10.Cells[viCntCelulas, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
                           viCntCelulas := viCntCelulas + 1;
                       END; // IF (Stgr_Todos_Numeros
                     END; // FOR viContar
                     viLinhas := viLinhas + 1;
                  END;
               END;
            END;
         END; // for viComb01
      end; // for viNumeroLinha11
    finally
        Stgr_E11Parte3Fase1_Qtd10.RowCount := viLinhas;
        Stgr_E11Parte3Fase1_Qtd10.Repaint;
    end;
    Pgbr_EtaPa_11.Position :=10 ;
    Pgbr_EtaPa_11.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState := wsNormal;
    Self.Repaint;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.JuntarE11Parte3();
var
   viComb01, viComb02, viLinhas: Integer;
   viContar, viSoma : Smallint;
begin
   viLinhas := 1;
   for viComb01 := 1 to Trunc((Stgr_E11Parte3Fase1_Qtd02.RowCount-1)/1) do
   begin
      for viComb02 := 1 to Stgr_E11Parte3Fase1_Qtd10.RowCount-1 do
      begin
         if Stgr_E11Parte3Fase1_Qtd02.Cells[02,viComb01] <> Stgr_E11Parte3Fase1_Qtd10.Cells[01,viComb02] then
            continue;
         Stgr_E11Parte3Fase2_Qtd12.Cells[00,viLinhas] := viLinhas.ToString;
         Stgr_E11Parte3Fase2_Qtd12.Cells[01,viLinhas] := Stgr_E11Parte3Fase1_Qtd02.Cells[01,viComb01];
         Stgr_E11Parte3Fase2_Qtd12.Cells[02,viLinhas] := Stgr_E11Parte3Fase1_Qtd02.Cells[02,viComb01];
         Stgr_E11Parte3Fase2_Qtd12.Cells[03,viLinhas] := Stgr_E11Parte3Fase1_Qtd02.Cells[03,viComb01];
         Stgr_E11Parte3Fase2_Qtd12.Cells[04,viLinhas] := Stgr_E11Parte3Fase1_Qtd02.Cells[04,viComb01];
         for viContar := 2 to 11 do
         begin
            Stgr_E11Parte3Fase2_Qtd12.Cells[04+viContar-1,viLinhas] := Stgr_E11Parte3Fase1_Qtd10.Cells[viContar,viComb02];
         end;
         viSoma := 0;
         for viContar := 3 to 14 do
         begin
            viSoma := viSoma + Stgr_E11Parte3Fase2_Qtd12.Cells[viContar, viLinhas].ToInteger;
         end;
         if viSoma <> 156 then
            continue;
         viSoma := 0;
         for viContar := 3 to 14 do
         begin
            if (Stgr_E11Parte3Fase2_Qtd12.Cells[viContar, viLinhas].ToInteger mod 2) = 0 then
               viSoma := viSoma + 1;
         end;
         if viSoma <> 6 then
            continue;                   
         viLinhas := viLinhas + 1;
      end;
   end;
   Stgr_E11Parte3Fase2_Qtd12.RowCount := viLinhas;
   Stgr_E11Parte3Fase2_Qtd12.Repaint;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_AC05de10p3();

   Procedure LimparGridE11Parte3Fase3_Qtd05 ();
   begin
   Stgr_E11Parte3Fase3_Qtd05.CleanupInstance;
   freeANDnil(Stgr_E11Parte3Fase3_Qtd05);
   Scbx_dados.HorzScrollBar.Position := 27631;
   Scbx_dados.Repaint;
   Stgr_E11Parte3Fase3_Qtd05 := TStringGrid.Create(Self);
   Stgr_E11Parte3Fase3_Qtd05.Visible := False;
   Stgr_E11Parte3Fase3_Qtd05.Parent := Scbx_dados;
   with Stgr_E11Parte3Fase3_Qtd05 do
      begin
        Left := 929     ;
        Top := 14       ;
        Width := 290    ;
        Height := 224   ;
        TabStop := False;
        Anchors := [akLeft, akTop, akBottom] ;
        Color := 11855303  ;
        ColCount := 8    ;
        Ctl3D := False   ;
        DefaultColWidth := 27 ;
        DefaultRowHeight := 25 ;
        //DrawingStyle := gdsClassic ;
        FixedColor := 9870476 ;
        FixedCols := 3    ;
        RowCount := 8     ;
        Font.Color := clWindowText ;
        Font.Height := -14 ;
        Font.Name := 'Times New Roman' ;
        GridLineWidth  := 2 ;
        Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]  ;
        ParentCtl3D := False ;
        ParentFont := False ;
        TabOrder := 89     ;
        visible := True ;
      end;
      Stgr_E11Parte3Fase3_Qtd05.ColWidths[0] := 60;
      Stgr_E11Parte3Fase3_Qtd05.ColWidths[1] := 37;
      Stgr_E11Parte3Fase3_Qtd05.ColWidths[1] := 25;
   end;


   Procedure PR_Gravar_Dados_4Tm15 ();
   VAR
      VI_AN_Comb1, viContarCelulas, viContarStgGrid, viLinhaBuscar, viContar : Integer;
      vcQUERY, vcNomeTabela : String;
      vcCombinacoes10, vcCombinacoes15 : String;
   BEGIN
      SELF.Repaint;
      // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
      viContarStgGrid := TRUNC((Stgr_E11Parte3Fase3_Qtd05.RowCount-1)/1);
      FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
      BEGIN
        FOR viContar :=1 TO 25 DO
        BEGIN
            Stgr_Todos_Numeros.Cells[viContar,1] :='F';
        END; // FOR viContar
        // vcCombinacoes15 :='';
        FOR viContarCelulas := 3 TO 07 DO
        BEGIN
            //vcCombinacoes15 := vcCombinacoes15 + TRIM(Stgr_E11Parte3Fase3_Qtd05.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_E11Parte3Fase3_Qtd05.Cells[viContarCelulas,VI_AN_Comb1])) ,1]:='V';
        END; // FOR viContarCelulas
        vcNomeTabela := 'GERADOR_RESULT_25_LINHAS2_4tm15';
         viLinhaBuscar := Stgr_E11Parte3Fase3_Qtd05.Cells[01,VI_AN_Comb1].ToInteger;
        FOR viContarCelulas := 2 TO 11 DO
        BEGIN
            //vcCombinacoes15 := vcCombinacoes15 + TRIM(Stgr_E11_AC10de11.Cells[viContarCelulas,viLinhaBuscar]) +' ';
            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_E11_AC10de11.Cells[viContarCelulas,viLinhaBuscar] )) ,1]:='V';
        END; // FOR viContarCelulas

          // ************************
      	// **  Ordena os dados   **
	     // ************************

        vcCombinacoes15 :='';
        FOR viContar :=1 TO 25 DO
        BEGIN
            IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') THEN
            BEGIN
                vcCombinacoes15 := vcCombinacoes15 + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2)+ ' ' ;
            END; // IF (Stgr_Todos_Numeros
        END; // FOR viContar

        vcQUERY  := 'INSERT INTO ' +vcNomeTabela+ ' (DADOS) VALUES('
              +#39+  TRIM(vcCombinacoes15)
              +#39+ ');';
        DM1.IBQ_Combin_02.SQL.Clear;
        DM1.IBQ_Combin_02.SQL.Add(vcQUERY)  ;
        DM1.IBQ_Combin_02.ExecSQL;
      END; // FOR VI_AN_Comb1
      DM1.IBQ_Combin_02.SQL.Clear;
      DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
      DM1.IBQ_Combin_02.ExecSQL;
      SLEEP(14);
      DM1.IBQ_Combin_02.SQL.Clear;
   END;


var
   viCombi01, viCombi02, viCombi03, viCombi04, viCombi05, viLinhas: Integer;
   viNumeroTotalLinhas, viLinhasSalvar: integer;
begin
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Scbx_dados.HorzScrollBar.Position := 27631;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    Stgr_E11Parte3Fase3_Qtd05.Repaint;
    viCombi01 := 1;
    viCombi02 := 1;
    viCombi03 := 1;
    viCombi04 := 1;
    viCombi05 := 1;
    viNumeroTotalLinhas := 1;
    viLinhas := 1;
    viLinhasSalvar := Trunc((Stgr_E11Parte3Fase2_Qtd12.RowCount-1)/30);
    try
      for viNumeroTotalLinhas := 1 to Trunc((Stgr_E11Parte3Fase2_Qtd12.RowCount-1)/1)+1 do
      begin
         for viCombi01 := 5 TO 10 DO
         BEGIN
            for viCombi02 := viCombi01 + 1  TO 11 DO
            BEGIN
               for viCombi03 := viCombi02 + 1 TO 12 DO
               BEGIN
                  for viCombi04 := viCombi03 + 1 TO 13 DO
                  BEGIN
                     for viCombi05 := viCombi04 + 1 TO 14 DO
                     BEGIN
                        Stgr_E11Parte3Fase3_Qtd05.Cells[00,viLinhas] := viLinhas.ToString  ;
                        Stgr_E11Parte3Fase3_Qtd05.Cells[01,viLinhas] := Stgr_E11Parte3Fase2_Qtd12.Cells[01,viNumeroTotalLinhas];
                        Stgr_E11Parte3Fase3_Qtd05.Cells[02,viLinhas] := Stgr_E11Parte3Fase2_Qtd12.Cells[02,viNumeroTotalLinhas];
                        Stgr_E11Parte3Fase3_Qtd05.Cells[03,viLinhas] := Stgr_E11Parte3Fase2_Qtd12.Cells[viCombi01,viNumeroTotalLinhas];
                        Stgr_E11Parte3Fase3_Qtd05.Cells[04,viLinhas] := Stgr_E11Parte3Fase2_Qtd12.Cells[viCombi02,viNumeroTotalLinhas];
                        Stgr_E11Parte3Fase3_Qtd05.Cells[05,viLinhas] := Stgr_E11Parte3Fase2_Qtd12.Cells[viCombi03,viNumeroTotalLinhas];
                        Stgr_E11Parte3Fase3_Qtd05.Cells[06,viLinhas] := Stgr_E11Parte3Fase2_Qtd12.Cells[viCombi04,viNumeroTotalLinhas];
                        Stgr_E11Parte3Fase3_Qtd05.Cells[07,viLinhas] := Stgr_E11Parte3Fase2_Qtd12.Cells[viCombi05,viNumeroTotalLinhas];
                        viLinhas := viLinhas + 1;
                     END;
                  END;
               END;
            END;
         END; // for viCombi01
         if (viNumeroTotalLinhas mod viLinhasSalvar) = 0 then
         begin
            Stgr_E11Parte3Fase3_Qtd05.RowCount := viLinhas;
            Stgr_E11Parte3Fase3_Qtd05.Repaint;
            PR_Gravar_Dados_4Tm15 ();
            LimparGridE11Parte3Fase3_Qtd05 ();
            viLinhas := 1;
            Stgr_E11Parte3Fase3_Qtd05.RowCount := viLinhas;
            Stgr_E11Parte3Fase3_Qtd05.Repaint;
         end;
      end; // for viNumeroTotalLinhas
    finally
        Stgr_E11Parte3Fase3_Qtd05.RowCount := viLinhas;
        Stgr_E11Parte3Fase3_Qtd05.Repaint;
    end;
    Pgbr_EtaPa_11.Position :=60 ;
    Pgbr_EtaPa_11.Repaint;
    Self.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    Self.Repaint;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_p3todos15n();
var
   viQtdDados, viLinhas: Integer;
begin
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Scbx_dados.HorzScrollBar.Position := 27631;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    DM1.IBDatabase1.ForceClose;
    DM1.IBDatabase1.Open;
    DM1.IBDatabase1.Connected := False;
    DM1.IBDatabase1.Connected := True;
    IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
    DM1.IBQ_Combinacoes.Close;
    viQtdDados := 1;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('Select count(distinct(DADOS)) as QTD from GERADOR_RESULT_25_LINHAS2_4TM15;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS) from GERADOR_RESULT_25_LINHAS2_4TM15 ORDER BY DADOS;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
    viLinhas := 1 ;
    Stgr_Etp11Bloc4.RowCount := 1;
   try

    WHILE NOT(DM1.IBQ_COMBINACOES.Eof) DO
    BEGIN
        Stgr_Etp11Bloc4.Cells[00,viLinhas] := intTOstr(viLinhas);
        Stgr_Etp11Bloc4.Cells[01,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,01,2);
        Stgr_Etp11Bloc4.Cells[02,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,04,2);
        Stgr_Etp11Bloc4.Cells[03,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,07,2);
        Stgr_Etp11Bloc4.Cells[04,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,10,2);
        Stgr_Etp11Bloc4.Cells[05,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,13,2);
        Stgr_Etp11Bloc4.Cells[06,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,16,2);
        Stgr_Etp11Bloc4.Cells[07,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,19,2);
        Stgr_Etp11Bloc4.Cells[08,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,22,2);
        Stgr_Etp11Bloc4.Cells[09,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,25,2);
        Stgr_Etp11Bloc4.Cells[10,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,28,2);
        Stgr_Etp11Bloc4.Cells[11,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,31,2);
        Stgr_Etp11Bloc4.Cells[12,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,34,2);
        Stgr_Etp11Bloc4.Cells[13,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,37,2);
        Stgr_Etp11Bloc4.Cells[14,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,40,2);
        Stgr_Etp11Bloc4.Cells[15,viLinhas] := copy(DM1.IBQ_Combinacoes.fieldBYname('dados').AsString,43,2);
        viLinhas := viLinhas + 1;
        DM1.IBQ_COMBINACOES.Next;
    end; // while
    finally
       Stgr_Etp11Bloc4.RowCount := viLinhas;
       Stgr_Etp11Bloc4.Repaint;
       PR_Gravar_Dados23Comb15 ('GERADOR_RESULT_25_Etp11Bloc4');
    end;
    Pgbr_EtaPa_11.Position :=80 ;
    Pgbr_EtaPa_11.Repaint;
    Self.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    Self.Repaint;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_AC10de11();
var
   viComb01, viLinhas: Integer;
   viContar, viCntCelulas, viCaiFora, viNumeroLinha11: smallint;
begin
    Pgbr_EtaPa_11.Position :=0 ;
    Pgbr_EtaPa_11.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_E11_AC10de11.Repaint;
    Scbx_dados.HorzScrollBar.Position := 19690;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    viLinhas := 1;
    try
      for viNumeroLinha11 := 1 to Stgr_E11n11.RowCount-1 do
      begin
         // Análise combinatória de 11 em 10 gera o mesmo resultado de Análise combinatória de 11 em 1
         // Então captura-se apenas 1 e pega o que sobrou => da na mesma.
         // Ou seja ==> Redução de código Haduken.
         for viComb01 := 1 TO 11 DO
         BEGIN
            Stgr_E11_AC10de11.Cells[00,viLinhas] := viLinhas.ToString  ;
            viCaiFora := Stgr_E11n11.Cells[viComb01,viNumeroLinha11].ToInteger;
            FOR viContar :=1 TO 25 DO
            BEGIN
              Stgr_Todos_Numeros.Cells[viContar,1] :='F';
              Stgr_Todos_Numeros.Cells[viContar,2] :='F';
            END; // FOR viContar
            // ----> MONTADO TODOS OS DÍGITOS
            FOR viContar :=1 TO 11 DO
            BEGIN
              Stgr_Todos_Numeros.Cells [viCaiFora ,1]:='V';
              Stgr_Todos_Numeros.Cells [Stgr_E11n11.Cells[viContar,viNumeroLinha11].ToInteger ,2]:='V';
            END; // FOR viContar1
            viCntCelulas := 2;
            Stgr_E11_AC10de11.Cells[1, viLinhas] :=viNumeroLinha11.ToString;
            FOR viContar :=1 TO 25 DO
            BEGIN
              IF (Stgr_Todos_Numeros.Cells[viContar,1]='F') and (Stgr_Todos_Numeros.Cells[viContar,2]='V') THEN
              BEGIN
                  Stgr_E11_AC10de11.Cells[viCntCelulas, viLinhas] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
                  viCntCelulas := viCntCelulas + 1;
              END; // IF (Stgr_Todos_Numeros
            END; // FOR viContar
            viLinhas := viLinhas + 1;
         END; // for viComb01
      end; // for viNumeroLinha11
    finally
        Stgr_E11_AC10de11.RowCount := viLinhas;
        Stgr_E11_AC10de11.Repaint;
    end;
    Pgbr_EtaPa_11.Position :=15 ;
    Pgbr_EtaPa_11.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end;


procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco4_15Colunas;

    Procedure PR_ORDENAR_15e11 (viLinhas9: Integer);
    var
        viContar, viCntCELULAS: Integer;
    begin
          // ************************
      	// **  Ordena os dados   **
	     // ************************
        FOR viContar :=1 TO 25 DO
        BEGIN
            Stgr_Todos_Numeros.Cells[viContar,1] :='F';
        END; // FOR viContar
        // ----> MONTADO E VERIFICANDO TODOS OS 15 DÍGITOS
        FOR viContar :=1 TO 15 DO
        BEGIN
            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etp11Bloc4.Cells[viContar,viLinhas9])) ,1]:='V';
        END; // FOR viContar1
        viCntCELULAS := 1;
        FOR viContar :=1 TO 25 DO
        BEGIN
            IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') THEN
            BEGIN
                Stgr_Etp11Bloc4.Cells [viCntCELULAS, viLinhas9] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
                viCntCELULAS := viCntCELULAS + 1;
            END; // IF (Stgr_Todos_Numeros
        END; // FOR viContar
    end; // Procedure ORDENAR_SIMULACAO_15

var
   viComb01, viComb02 : Integer;
   viLinhas, viLinhas14 : Integer;
begin
   // ---> bloco 01
   viLinhas := 01;
   Try
      for viComb01 := 1 to Stgr_E11_AC10de11.RowCount-1 do
      begin
         for viComb02 := 1 to Stgr_E11Bloco1d4Result5.RowCount-1 do
         begin
            viLinhas14 := Stgr_E11_AC10de11.Cells[1,viComb01].ToInteger;
            if Not((Stgr_E11Bloco1d4Result5.Cells[1,viComb02].ToInteger)=viLinhas14) then
               Continue;
            Stgr_Etp11Bloc4.Cells[00,viLinhas] := viLinhas.ToString;
            Stgr_Etp11Bloc4.Cells[16,viLinhas] := '| '+viLinhas14.ToString;
            Stgr_Etp11Bloc4.Cells[01,viLinhas] := Stgr_E11_AC10de11.Cells[02,viComb01] ;
            Stgr_Etp11Bloc4.Cells[02,viLinhas] := Stgr_E11_AC10de11.Cells[03,viComb01] ;
            Stgr_Etp11Bloc4.Cells[03,viLinhas] := Stgr_E11_AC10de11.Cells[04,viComb01] ;
            Stgr_Etp11Bloc4.Cells[04,viLinhas] := Stgr_E11_AC10de11.Cells[05,viComb01] ;
            Stgr_Etp11Bloc4.Cells[05,viLinhas] := Stgr_E11_AC10de11.Cells[06,viComb01] ;
            Stgr_Etp11Bloc4.Cells[06,viLinhas] := Stgr_E11_AC10de11.Cells[07,viComb01] ;
            Stgr_Etp11Bloc4.Cells[07,viLinhas] := Stgr_E11_AC10de11.Cells[08,viComb01] ;
            Stgr_Etp11Bloc4.Cells[08,viLinhas] := Stgr_E11_AC10de11.Cells[09,viComb01] ;
            Stgr_Etp11Bloc4.Cells[09,viLinhas] := Stgr_E11_AC10de11.Cells[10,viComb01] ;
            Stgr_Etp11Bloc4.Cells[10,viLinhas] := Stgr_E11_AC10de11.Cells[11,viComb01] ;
            Stgr_Etp11Bloc4.Cells[11,viLinhas] := Stgr_E11Bloco1d4Result5.Cells[02,viComb02] ;
            Stgr_Etp11Bloc4.Cells[12,viLinhas] := Stgr_E11Bloco1d4Result5.Cells[03,viComb02] ;
            Stgr_Etp11Bloc4.Cells[13,viLinhas] := Stgr_E11Bloco1d4Result5.Cells[04,viComb02] ;
            Stgr_Etp11Bloc4.Cells[14,viLinhas] := Stgr_E11Bloco1d4Result5.Cells[05,viComb02] ;
            Stgr_Etp11Bloc4.Cells[15,viLinhas] := Stgr_E11Bloco1d4Result5.Cells[06,viComb02] ;
            PR_ORDENAR_15e11 (viLinhas);
            viLinhas := viLinhas + 1;
         end;
      end;
   Finally
      Stgr_Etp11Bloc4.RowCount := viLinhas;
   End;
   // ---> bloco 02
   Try
      for viComb01 := 1 to Stgr_E11_AC10de11.RowCount-1 do
      begin
         for viComb02 := 1 to Stgr_E11Bloco2d4Result5.RowCount-1 do
         begin
            viLinhas14 := Stgr_E11_AC10de11.Cells[1,viComb01].ToInteger;
            if Not((Stgr_E11Bloco2d4Result5.Cells[1,viComb02].ToInteger)=viLinhas14) then
               Continue;
            Stgr_Etp11Bloc4.Cells[00,viLinhas] := viLinhas.ToString;
            Stgr_Etp11Bloc4.Cells[16,viLinhas] := '| '+viLinhas14.ToString;
            Stgr_Etp11Bloc4.Cells[01,viLinhas] := Stgr_E11_AC10de11.Cells[02,viComb01] ;
            Stgr_Etp11Bloc4.Cells[02,viLinhas] := Stgr_E11_AC10de11.Cells[03,viComb01] ;
            Stgr_Etp11Bloc4.Cells[03,viLinhas] := Stgr_E11_AC10de11.Cells[04,viComb01] ;
            Stgr_Etp11Bloc4.Cells[04,viLinhas] := Stgr_E11_AC10de11.Cells[05,viComb01] ;
            Stgr_Etp11Bloc4.Cells[05,viLinhas] := Stgr_E11_AC10de11.Cells[06,viComb01] ;
            Stgr_Etp11Bloc4.Cells[06,viLinhas] := Stgr_E11_AC10de11.Cells[07,viComb01] ;
            Stgr_Etp11Bloc4.Cells[07,viLinhas] := Stgr_E11_AC10de11.Cells[08,viComb01] ;
            Stgr_Etp11Bloc4.Cells[08,viLinhas] := Stgr_E11_AC10de11.Cells[09,viComb01] ;
            Stgr_Etp11Bloc4.Cells[09,viLinhas] := Stgr_E11_AC10de11.Cells[10,viComb01] ;
            Stgr_Etp11Bloc4.Cells[10,viLinhas] := Stgr_E11_AC10de11.Cells[11,viComb01] ;
            Stgr_Etp11Bloc4.Cells[11,viLinhas] := Stgr_E11Bloco2d4Result5.Cells[02,viComb02] ;
            Stgr_Etp11Bloc4.Cells[12,viLinhas] := Stgr_E11Bloco2d4Result5.Cells[03,viComb02] ;
            Stgr_Etp11Bloc4.Cells[13,viLinhas] := Stgr_E11Bloco2d4Result5.Cells[04,viComb02] ;
            Stgr_Etp11Bloc4.Cells[14,viLinhas] := Stgr_E11Bloco2d4Result5.Cells[05,viComb02] ;
            Stgr_Etp11Bloc4.Cells[15,viLinhas] := Stgr_E11Bloco2d4Result5.Cells[06,viComb02] ;
            PR_ORDENAR_15e11 (viLinhas) ;
            viLinhas := viLinhas + 1;
         end;
      end;
   Finally
      Stgr_Etp11Bloc4.RowCount := viLinhas;
   End;
   // ---> bloco 03
   Try
      for viComb01 := 1 to Stgr_E11_AC10de11.RowCount-1 do
      begin
         for viComb02 := 1 to Stgr_E11Bloco3d4Result5.RowCount-1 do
         begin
            viLinhas14 := Stgr_E11_AC10de11.Cells[1,viComb01].ToInteger;
            if Not((Stgr_E11Bloco3d4Result5.Cells[1,viComb02].ToInteger)=viLinhas14) then
               Continue;
            Stgr_Etp11Bloc4.Cells[00,viLinhas] := viLinhas.ToString;
            Stgr_Etp11Bloc4.Cells[16,viLinhas] := '| '+viLinhas14.ToString;
            Stgr_Etp11Bloc4.Cells[01,viLinhas] := Stgr_E11_AC10de11.Cells[02,viComb01] ;
            Stgr_Etp11Bloc4.Cells[02,viLinhas] := Stgr_E11_AC10de11.Cells[03,viComb01] ;
            Stgr_Etp11Bloc4.Cells[03,viLinhas] := Stgr_E11_AC10de11.Cells[04,viComb01] ;
            Stgr_Etp11Bloc4.Cells[04,viLinhas] := Stgr_E11_AC10de11.Cells[05,viComb01] ;
            Stgr_Etp11Bloc4.Cells[05,viLinhas] := Stgr_E11_AC10de11.Cells[06,viComb01] ;
            Stgr_Etp11Bloc4.Cells[06,viLinhas] := Stgr_E11_AC10de11.Cells[07,viComb01] ;
            Stgr_Etp11Bloc4.Cells[07,viLinhas] := Stgr_E11_AC10de11.Cells[08,viComb01] ;
            Stgr_Etp11Bloc4.Cells[08,viLinhas] := Stgr_E11_AC10de11.Cells[09,viComb01] ;
            Stgr_Etp11Bloc4.Cells[09,viLinhas] := Stgr_E11_AC10de11.Cells[10,viComb01] ;
            Stgr_Etp11Bloc4.Cells[10,viLinhas] := Stgr_E11_AC10de11.Cells[11,viComb01] ;
            Stgr_Etp11Bloc4.Cells[11,viLinhas] := Stgr_E11Bloco3d4Result5.Cells[02,viComb02] ;
            Stgr_Etp11Bloc4.Cells[12,viLinhas] := Stgr_E11Bloco3d4Result5.Cells[03,viComb02] ;
            Stgr_Etp11Bloc4.Cells[13,viLinhas] := Stgr_E11Bloco3d4Result5.Cells[04,viComb02] ;
            Stgr_Etp11Bloc4.Cells[14,viLinhas] := Stgr_E11Bloco3d4Result5.Cells[05,viComb02] ;
            Stgr_Etp11Bloc4.Cells[15,viLinhas] := Stgr_E11Bloco3d4Result5.Cells[06,viComb02] ;
            PR_ORDENAR_15e11 (viLinhas) ;
            viLinhas := viLinhas + 1;
         end;
      end;
   Finally
      Stgr_Etp11Bloc4.RowCount := viLinhas;
   End;
   // ---> bloco 04
   Try
      for viComb01 := 1 to Stgr_E11_AC10de11.RowCount-1 do
      begin
         for viComb02 := 1 to Stgr_E11Bloco4d4Result5.RowCount-1 do
         begin
            viLinhas14 := Stgr_E11_AC10de11.Cells[1,viComb01].ToInteger;
            if Not((Stgr_E11Bloco4d4Result5.Cells[1,viComb02].ToInteger)=viLinhas14) then
               Continue;
            Stgr_Etp11Bloc4.Cells[00,viLinhas] := viLinhas.ToString;
            Stgr_Etp11Bloc4.Cells[16,viLinhas] := '| '+viLinhas14.ToString;
            Stgr_Etp11Bloc4.Cells[01,viLinhas] := Stgr_E11_AC10de11.Cells[02,viComb01] ;
            Stgr_Etp11Bloc4.Cells[02,viLinhas] := Stgr_E11_AC10de11.Cells[03,viComb01] ;
            Stgr_Etp11Bloc4.Cells[03,viLinhas] := Stgr_E11_AC10de11.Cells[04,viComb01] ;
            Stgr_Etp11Bloc4.Cells[04,viLinhas] := Stgr_E11_AC10de11.Cells[05,viComb01] ;
            Stgr_Etp11Bloc4.Cells[05,viLinhas] := Stgr_E11_AC10de11.Cells[06,viComb01] ;
            Stgr_Etp11Bloc4.Cells[06,viLinhas] := Stgr_E11_AC10de11.Cells[07,viComb01] ;
            Stgr_Etp11Bloc4.Cells[07,viLinhas] := Stgr_E11_AC10de11.Cells[08,viComb01] ;
            Stgr_Etp11Bloc4.Cells[08,viLinhas] := Stgr_E11_AC10de11.Cells[09,viComb01] ;
            Stgr_Etp11Bloc4.Cells[09,viLinhas] := Stgr_E11_AC10de11.Cells[10,viComb01] ;
            Stgr_Etp11Bloc4.Cells[10,viLinhas] := Stgr_E11_AC10de11.Cells[11,viComb01] ;
            Stgr_Etp11Bloc4.Cells[11,viLinhas] := Stgr_E11Bloco4d4Result5.Cells[02,viComb02] ;
            Stgr_Etp11Bloc4.Cells[12,viLinhas] := Stgr_E11Bloco4d4Result5.Cells[03,viComb02] ;
            Stgr_Etp11Bloc4.Cells[13,viLinhas] := Stgr_E11Bloco4d4Result5.Cells[04,viComb02] ;
            Stgr_Etp11Bloc4.Cells[14,viLinhas] := Stgr_E11Bloco4d4Result5.Cells[05,viComb02] ;
            Stgr_Etp11Bloc4.Cells[15,viLinhas] := Stgr_E11Bloco4d4Result5.Cells[06,viComb02] ;
            PR_ORDENAR_15e11 (viLinhas);
            viLinhas := viLinhas + 1;
         end;
      end;
   Finally
      Stgr_Etp11Bloc4.RowCount := viLinhas;
   End;
   PR_Gravar_Dados23Comb15 (' GERADOR_RESULT_25_Etp11Bloc4');
end;




procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco1d4_5Colunas;
var
   viComb01, viComb02, viComb03, viComb04 : Integer;
   viLinhas, viLinhas14 : Integer;
begin
   viLinhas := 01;
   Try
      for viComb01 := 1 to Stgr_E11Bloco1d4Numero1Qtd1.RowCount-1 do
      begin
         for viComb02 := 1 to Stgr_E11Bloco1d4Numero2Qtd1.RowCount-1 do
         begin
            for viComb03 := 1 to Stgr_E11Bloco1d4Numero3Qtd1.RowCount-1 do
            begin
               for viComb04 := 1 to Stgr_E11Bloco1d4Numero4Qtd2.RowCount-1 do
               begin
                  viLinhas14 := Stgr_E11Bloco1d4Numero1Qtd1.Cells[1,viComb01].ToInteger;
                  if Not((Stgr_E11Bloco1d4Numero4Qtd2.Cells[1,viComb04].ToInteger)=viLinhas14) then
                     Continue;
                  if Not((Stgr_E11Bloco1d4Numero3Qtd1.Cells[1,viComb03].ToInteger)=viLinhas14) then
                     Continue;
                  if Not((Stgr_E11Bloco1d4Numero2Qtd1.Cells[1,viComb02].ToInteger)=viLinhas14) then
                     Continue;
                  Stgr_E11Bloco1d4Result5.Cells[0,viLinhas] := viLinhas.ToString;
                  Stgr_E11Bloco1d4Result5.Cells[1,viLinhas] := viLinhas14.ToString;
                  Stgr_E11Bloco1d4Result5.Cells[2,viLinhas] := Stgr_E11Bloco1d4Numero1Qtd1.Cells[2,viComb01] ;
                  Stgr_E11Bloco1d4Result5.Cells[3,viLinhas] := Stgr_E11Bloco1d4Numero2Qtd1.Cells[2,viComb02] ;
                  Stgr_E11Bloco1d4Result5.Cells[4,viLinhas] := Stgr_E11Bloco1d4Numero3Qtd1.Cells[2,viComb03] ;
                  Stgr_E11Bloco1d4Result5.Cells[5,viLinhas] := Stgr_E11Bloco1d4Numero4Qtd2.Cells[2,viComb04] ;
                  Stgr_E11Bloco1d4Result5.Cells[6,viLinhas] := Stgr_E11Bloco1d4Numero4Qtd2.Cells[3,viComb04] ;
                  viLinhas := viLinhas + 1;
               end;
            end;
         end;
      end;
   Finally
      Stgr_E11Bloco1d4Result5.RowCount := viLinhas;
   End;
end;


procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco2d4_5Colunas;
var
   viComb01, viComb02, viComb03, viComb04 : Integer;
   viLinhas, viLinhas14 : Integer;
begin
   viLinhas := 01;
   Try
      for viComb01 := 1 to Stgr_E11Bloco2d4Numero1Qtd1.RowCount-1 do
      begin
         for viComb02 := 1 to Stgr_E11Bloco2d4Numero2Qtd1.RowCount-1 do
         begin
            for viComb03 := 1 to Stgr_E11Bloco2d4Numero3Qtd2.RowCount-1 do
            begin
               for viComb04 := 1 to Stgr_E11Bloco2d4Numero4Qtd1.RowCount-1 do
               begin
                  viLinhas14 := Stgr_E11Bloco2d4Numero1Qtd1.Cells[1,viComb01].ToInteger;
                  if Not((Stgr_E11Bloco2d4Numero4Qtd1.Cells[1,viComb04].ToInteger)=viLinhas14) then
                     Continue;
                  if Not((Stgr_E11Bloco2d4Numero3Qtd2.Cells[1,viComb03].ToInteger)=viLinhas14) then
                     Continue;
                  if Not((Stgr_E11Bloco2d4Numero2Qtd1.Cells[1,viComb02].ToInteger)=viLinhas14) then
                     Continue;
                  Stgr_E11Bloco2d4Result5.Cells[0,viLinhas] := viLinhas.ToString;
                  Stgr_E11Bloco2d4Result5.Cells[1,viLinhas] := viLinhas14.ToString;
                  Stgr_E11Bloco2d4Result5.Cells[2,viLinhas] := Stgr_E11Bloco2d4Numero1Qtd1.Cells[2,viComb01] ;
                  Stgr_E11Bloco2d4Result5.Cells[3,viLinhas] := Stgr_E11Bloco2d4Numero2Qtd1.Cells[2,viComb02] ;
                  Stgr_E11Bloco2d4Result5.Cells[4,viLinhas] := Stgr_E11Bloco2d4Numero3Qtd2.Cells[2,viComb03] ;
                  Stgr_E11Bloco2d4Result5.Cells[5,viLinhas] := Stgr_E11Bloco2d4Numero3Qtd2.Cells[3,viComb03] ;
                  Stgr_E11Bloco2d4Result5.Cells[6,viLinhas] := Stgr_E11Bloco2d4Numero4Qtd1.Cells[2,viComb04] ;
                  viLinhas := viLinhas + 1;
               end;
            end;
         end;
      end;
   Finally
      Stgr_E11Bloco2d4Result5.RowCount := viLinhas;
   End;
end;

procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco3d4_5Colunas;
var
   viComb01, viComb02, viComb03, viComb04 : Integer;
   viLinhas, viLinhas14 : Integer;
begin
   viLinhas := 01;
   Try
      for viComb01 := 1 to Stgr_E11Bloco3d4Numero1Qtd1.RowCount-1 do
      begin
         for viComb02 := 1 to Stgr_E11Bloco3d4Numero2Qtd2.RowCount-1 do
         begin
            for viComb03 := 1 to Stgr_E11Bloco3d4Numero3Qtd1.RowCount-1 do
            begin
               for viComb04 := 1 to Stgr_E11Bloco3d4Numero4Qtd1.RowCount-1 do
               begin
                  viLinhas14 := Stgr_E11Bloco3d4Numero1Qtd1.Cells[1,viComb01].ToInteger;
                  if Not((Stgr_E11Bloco3d4Numero4Qtd1.Cells[1,viComb04].ToInteger)=viLinhas14) then
                     Continue;
                  if Not((Stgr_E11Bloco3d4Numero3Qtd1.Cells[1,viComb03].ToInteger)=viLinhas14) then
                     Continue;
                  if Not((Stgr_E11Bloco3d4Numero2Qtd2.Cells[1,viComb02].ToInteger)=viLinhas14) then
                     Continue;
                  Stgr_E11Bloco3d4Result5.Cells[0,viLinhas] := viLinhas.ToString;
                  Stgr_E11Bloco3d4Result5.Cells[1,viLinhas] := viLinhas14.ToString;
                  Stgr_E11Bloco3d4Result5.Cells[2,viLinhas] := Stgr_E11Bloco3d4Numero1Qtd1.Cells[2,viComb01] ;
                  Stgr_E11Bloco3d4Result5.Cells[3,viLinhas] := Stgr_E11Bloco3d4Numero2Qtd2.Cells[2,viComb02] ;
                  Stgr_E11Bloco3d4Result5.Cells[4,viLinhas] := Stgr_E11Bloco3d4Numero2Qtd2.Cells[3,viComb02] ;
                  Stgr_E11Bloco3d4Result5.Cells[5,viLinhas] := Stgr_E11Bloco3d4Numero3Qtd1.Cells[2,viComb03] ;
                  Stgr_E11Bloco3d4Result5.Cells[6,viLinhas] := Stgr_E11Bloco3d4Numero4Qtd1.Cells[2,viComb04] ;
                  viLinhas := viLinhas + 1;
               end;
            end;
         end;
      end;
   Finally
      Stgr_E11Bloco3d4Result5.RowCount := viLinhas;
   End;
end;


procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco4d4_5Colunas;
var
   viComb01, viComb02, viComb03, viComb04 : Integer;
   viLinhas, viLinhas14 : Integer;
begin
   viLinhas := 01;
   Try
      for viComb01 := 1 to Stgr_E11Bloco4d4Numero1Qtd2.RowCount-1 do
      begin
         for viComb02 := 1 to Stgr_E11Bloco4d4Numero2Qtd1.RowCount-1 do
         begin
            for viComb03 := 1 to Stgr_E11Bloco4d4Numero3Qtd1.RowCount-1 do
            begin
               for viComb04 := 1 to Stgr_E11Bloco4d4Numero4Qtd1.RowCount-1 do
               begin
                  viLinhas14 := Stgr_E11Bloco4d4Numero1Qtd2.Cells[1,viComb01].ToInteger;
                  if Not((Stgr_E11Bloco4d4Numero4Qtd1.Cells[1,viComb04].ToInteger)=viLinhas14) then
                     Continue;
                  if Not((Stgr_E11Bloco4d4Numero3Qtd1.Cells[1,viComb03].ToInteger)=viLinhas14) then
                     Continue;
                  if Not((Stgr_E11Bloco4d4Numero2Qtd1.Cells[1,viComb02].ToInteger)=viLinhas14) then
                     Continue;
                  Stgr_E11Bloco4d4Result5.Cells[0,viLinhas] := viLinhas.ToString;
                  Stgr_E11Bloco4d4Result5.Cells[1,viLinhas] := viLinhas14.ToString;
                  Stgr_E11Bloco4d4Result5.Cells[2,viLinhas] := Stgr_E11Bloco4d4Numero1Qtd2.Cells[2,viComb01] ;
                  Stgr_E11Bloco4d4Result5.Cells[3,viLinhas] := Stgr_E11Bloco4d4Numero1Qtd2.Cells[3,viComb01] ;
                  Stgr_E11Bloco4d4Result5.Cells[4,viLinhas] := Stgr_E11Bloco4d4Numero2Qtd1.Cells[2,viComb02] ;
                  Stgr_E11Bloco4d4Result5.Cells[5,viLinhas] := Stgr_E11Bloco4d4Numero3Qtd1.Cells[2,viComb03] ;
                  Stgr_E11Bloco4d4Result5.Cells[6,viLinhas] := Stgr_E11Bloco4d4Numero4Qtd1.Cells[2,viComb04] ;
                  viLinhas := viLinhas + 1;
               end;
            end;
         end;
      end;
   Finally
      Stgr_E11Bloco4d4Result5.RowCount := viLinhas;
   End;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco4AC1de4();
var
   viComb01, viLinhas: Integer;
   viNumeroLinha14: smallint;
begin
    Pgbr_EtaPa_11.Position :=0 ;
    Pgbr_EtaPa_11.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_E11Bloco1d4Numero1Qtd1.Repaint;
    Scbx_dados.HorzScrollBar.Position := 21230;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    viLinhas := 1;
    try
      for viNumeroLinha14 := 1 to Stgr_E11n14.RowCount-1 do
      begin
         for viComb01 := 1 TO 4 DO
         BEGIN
            // ---> 1º bloco da 1ª ao 4ª posição dos 14 números
            Stgr_E11Bloco1d4Numero1Qtd1.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Bloco1d4Numero1Qtd1.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
            Stgr_E11Bloco1d4Numero1Qtd1.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01,viNumeroLinha14] ;
            Stgr_E11Bloco2d4Numero1Qtd1.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Bloco2d4Numero1Qtd1.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
            Stgr_E11Bloco2d4Numero1Qtd1.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01,viNumeroLinha14] ;
            Stgr_E11Bloco3d4Numero1Qtd1.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Bloco3d4Numero1Qtd1.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
            Stgr_E11Bloco3d4Numero1Qtd1.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01,viNumeroLinha14] ;
            // ---> 4º bloco da 10ª ao 14ª posição dos 14 números            // --->
            Stgr_E11Bloco2d4Numero4Qtd1.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Bloco2d4Numero4Qtd1.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
            Stgr_E11Bloco2d4Numero4Qtd1.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01+10,viNumeroLinha14] ;
            Stgr_E11Bloco3d4Numero4Qtd1.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Bloco3d4Numero4Qtd1.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
            Stgr_E11Bloco3d4Numero4Qtd1.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01+10,viNumeroLinha14] ;
            Stgr_E11Bloco4d4Numero4Qtd1.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Bloco4d4Numero4Qtd1.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
            Stgr_E11Bloco4d4Numero4Qtd1.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01+10,viNumeroLinha14] ;
            viLinhas := viLinhas + 1;
         END; // for viComb01
      end; // for viNumeroLinha14
    finally
        Stgr_E11Bloco1d4Numero1Qtd1.RowCount := viLinhas;
        Stgr_E11Bloco1d4Numero1Qtd1.Repaint;
        Stgr_E11Bloco2d4Numero1Qtd1.RowCount := viLinhas;
        Stgr_E11Bloco2d4Numero1Qtd1.Repaint;
        Stgr_E11Bloco3d4Numero1Qtd1.RowCount := viLinhas;
        Stgr_E11Bloco3d4Numero1Qtd1.Repaint;
        Stgr_E11Bloco2d4Numero4Qtd1.RowCount := viLinhas;
        Stgr_E11Bloco2d4Numero4Qtd1.Repaint;
        Stgr_E11Bloco3d4Numero4Qtd1.RowCount := viLinhas;
        Stgr_E11Bloco3d4Numero4Qtd1.Repaint;
        Stgr_E11Bloco4d4Numero4Qtd1.RowCount := viLinhas;
        Stgr_E11Bloco4d4Numero4Qtd1.Repaint;
    end;
    Pgbr_EtaPa_11.Position :=20 ;
    Pgbr_EtaPa_11.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco4AC2de4();
var
   viComb01, viComb02, viLinhas: Integer;
   viNumeroLinha14: smallint;
begin
    Pgbr_EtaPa_11.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_E11Bloco1d4Numero1Qtd1.Repaint;
    Scbx_dados.HorzScrollBar.Position := 21230;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    viLinhas := 1;
    try
      for viNumeroLinha14 := 1 to Stgr_E11n14.RowCount-1 do
      begin
         for viComb01 := 1 TO 3 DO
         BEGIN
            for viComb02 := viComb01+1 TO 4 DO
            BEGIN
               Stgr_E11Bloco1d4Numero4Qtd2.Cells[00,viLinhas] := viLinhas.ToString  ;
               Stgr_E11Bloco1d4Numero4Qtd2.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
               Stgr_E11Bloco1d4Numero4Qtd2.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01+10,viNumeroLinha14] ;
               Stgr_E11Bloco1d4Numero4Qtd2.Cells[03, viLinhas] := Stgr_E11n14.Cells[viComb02+10,viNumeroLinha14] ;
               Stgr_E11Bloco4d4Numero1Qtd2.Cells[00,viLinhas] := viLinhas.ToString  ;
               Stgr_E11Bloco4d4Numero1Qtd2.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
               Stgr_E11Bloco4d4Numero1Qtd2.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01,viNumeroLinha14] ;
               Stgr_E11Bloco4d4Numero1Qtd2.Cells[03, viLinhas] := Stgr_E11n14.Cells[viComb02,viNumeroLinha14] ;
               viLinhas := viLinhas + 1;
            END;
         END; // for viComb01
      end; // for viNumeroLinha14
    finally
        Stgr_E11Bloco1d4Numero4Qtd2.RowCount := viLinhas;
        Stgr_E11Bloco1d4Numero4Qtd2.Repaint;
        Stgr_E11Bloco4d4Numero1Qtd2.RowCount := viLinhas;
        Stgr_E11Bloco4d4Numero1Qtd2.Repaint;
    end;
    Pgbr_EtaPa_11.Position :=20 ;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    Pgbr_EtaPa_11.Repaint;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco4AC2de3();
var
   viComb01, viComb02, viLinhas: Integer;
   viNumeroLinha14: smallint;
begin
   Pgbr_EtaPa_11.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_E11Bloco1d4Numero1Qtd1.Repaint;
    Scbx_dados.HorzScrollBar.Position := 21230;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    viLinhas := 1;
    try
      for viNumeroLinha14 := 1 to Stgr_E11n14.RowCount-1 do
      begin
         for viComb01 := 1 TO 2 DO
         BEGIN
            for viComb02 := viComb01+1 TO 3 DO
            BEGIN
               Stgr_E11Bloco2d4Numero3Qtd2.Cells[00,viLinhas] := viLinhas.ToString  ;
               Stgr_E11Bloco2d4Numero3Qtd2.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
               Stgr_E11Bloco2d4Numero3Qtd2.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01+7,viNumeroLinha14] ;
               Stgr_E11Bloco2d4Numero3Qtd2.Cells[03, viLinhas] := Stgr_E11n14.Cells[viComb02+7,viNumeroLinha14] ;
               Stgr_E11Bloco3d4Numero2Qtd2.Cells[00,viLinhas] := viLinhas.ToString  ;
               Stgr_E11Bloco3d4Numero2Qtd2.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
               Stgr_E11Bloco3d4Numero2Qtd2.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01+4,viNumeroLinha14] ;
               Stgr_E11Bloco3d4Numero2Qtd2.Cells[03, viLinhas] := Stgr_E11n14.Cells[viComb02+4,viNumeroLinha14] ;
               viLinhas := viLinhas + 1;
            END;
         END; // for viComb01
      end; // for viNumeroLinha14
    finally
        Stgr_E11Bloco2d4Numero3Qtd2.RowCount := viLinhas;
        Stgr_E11Bloco2d4Numero3Qtd2.Repaint;
        Stgr_E11Bloco3d4Numero2Qtd2.RowCount := viLinhas;
        Stgr_E11Bloco3d4Numero2Qtd2.Repaint;
    end;
    Pgbr_EtaPa_11.Position :=30 ;
    Pgbr_EtaPa_11.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco4AC1de3();
var
   viComb01, viLinhas: Integer;
   viNumeroLinha14: smallint;
begin
    Pgbr_EtaPa_11.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_E11Bloco1d4Numero1Qtd1.Repaint;
    Scbx_dados.HorzScrollBar.Position := 23200;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    viLinhas := 1;
    try
      for viNumeroLinha14 := 1 to Stgr_E11n14.RowCount-1 do
      begin
         for viComb01 := 5 TO 7 DO
         BEGIN
            // ---> 1º bloco da 1ª ao 4ª posição dos 14 números
            Stgr_E11Bloco1d4Numero2Qtd1.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Bloco1d4Numero2Qtd1.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
            Stgr_E11Bloco1d4Numero2Qtd1.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01,viNumeroLinha14] ;
            Stgr_E11Bloco2d4Numero2Qtd1.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Bloco2d4Numero2Qtd1.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
            Stgr_E11Bloco2d4Numero2Qtd1.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01,viNumeroLinha14] ;
            Stgr_E11Bloco4d4Numero2Qtd1.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Bloco4d4Numero2Qtd1.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
            Stgr_E11Bloco4d4Numero2Qtd1.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01,viNumeroLinha14] ;
            // ---> 4º bloco da 10ª ao 14ª posição dos 14 números            // --->
            Stgr_E11Bloco1d4Numero3Qtd1.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Bloco1d4Numero3Qtd1.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
            Stgr_E11Bloco1d4Numero3Qtd1.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01+3,viNumeroLinha14] ;
            Stgr_E11Bloco3d4Numero3Qtd1.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Bloco3d4Numero3Qtd1.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
            Stgr_E11Bloco3d4Numero3Qtd1.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01+3,viNumeroLinha14] ;
            Stgr_E11Bloco4d4Numero3Qtd1.Cells[00,viLinhas] := viLinhas.ToString  ;
            Stgr_E11Bloco4d4Numero3Qtd1.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
            Stgr_E11Bloco4d4Numero3Qtd1.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01+3,viNumeroLinha14] ;
            viLinhas := viLinhas + 1;
         END; // for viComb01
      end; // for viNumeroLinha14
    finally
        Stgr_E11Bloco1d4Numero2Qtd1.RowCount := viLinhas;
        Stgr_E11Bloco1d4Numero2Qtd1.Repaint;
        Stgr_E11Bloco2d4Numero2Qtd1.RowCount := viLinhas;
        Stgr_E11Bloco2d4Numero2Qtd1.Repaint;
        Stgr_E11Bloco4d4Numero2Qtd1.RowCount := viLinhas;
        Stgr_E11Bloco4d4Numero2Qtd1.Repaint;
        Stgr_E11Bloco1d4Numero3Qtd1.RowCount := viLinhas;
        Stgr_E11Bloco1d4Numero3Qtd1.Repaint;
        Stgr_E11Bloco3d4Numero3Qtd1.RowCount := viLinhas;
        Stgr_E11Bloco3d4Numero3Qtd1.Repaint;
        Stgr_E11Bloco4d4Numero3Qtd1.RowCount := viLinhas;
        Stgr_E11Bloco4d4Numero3Qtd1.Repaint;
    end;
    Pgbr_EtaPa_11.Position :=25 ;
    Pgbr_EtaPa_11.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end;




procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco2_15Colunas ();

    Procedure PR_ORDENAR_15e11 (viLinhas9: Integer);
    var
        viContar, viCntCELULAS: Integer;
    begin
          // ************************
      	// **  Ordena os dados   **
	     // ************************
        FOR viContar :=1 TO 25 DO
        BEGIN
            Stgr_Todos_Numeros.Cells[viContar,1] :='F';
        END; // FOR viContar
        // ----> MONTADO E VERIFICANDO TODOS OS 15 DÍGITOS
        FOR viContar :=1 TO 15 DO
        BEGIN
            Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etp11Bloc4.Cells[viContar,viLinhas9])) ,1]:='V';
        END; // FOR viContar1
        viCntCELULAS := 1;
        FOR viContar :=1 TO 25 DO
        BEGIN
            IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') THEN
            BEGIN
                Stgr_Etp11Bloc4.Cells [viCntCELULAS, viLinhas9] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
                viCntCELULAS := viCntCELULAS + 1;
            END; // IF (Stgr_Todos_Numeros
        END; // FOR viContar
    end; // Procedure ORDENAR_SIMULACAO_15
var
   viComb01, viComb02 : Integer;
   viLinhas, viLinhas14 : Integer;
begin
   // ---> bloco 01
   viLinhas := 01;
   Try
      for viComb01 := 1 to Stgr_E11_AC10de11.RowCount-1 do
      begin
         for viComb02 := 1 to Stgr_E11Bloco1d5Result5.RowCount-1 do
         begin
            viLinhas14 := Stgr_E11_AC10de11.Cells[1,viComb01].ToInteger;
            if Not((Stgr_E11Bloco1d5Result5.Cells[1,viComb02].ToInteger)=viLinhas14) then
               Continue;
            Stgr_Etp11Bloc4.Cells[00,viLinhas] := viLinhas.ToString;
            Stgr_Etp11Bloc4.Cells[16,viLinhas] := '| '+viLinhas14.ToString;
            Stgr_Etp11Bloc4.Cells[01,viLinhas] := Stgr_E11_AC10de11.Cells[02,viComb01] ;
            Stgr_Etp11Bloc4.Cells[02,viLinhas] := Stgr_E11_AC10de11.Cells[03,viComb01] ;
            Stgr_Etp11Bloc4.Cells[03,viLinhas] := Stgr_E11_AC10de11.Cells[04,viComb01] ;
            Stgr_Etp11Bloc4.Cells[04,viLinhas] := Stgr_E11_AC10de11.Cells[05,viComb01] ;
            Stgr_Etp11Bloc4.Cells[05,viLinhas] := Stgr_E11_AC10de11.Cells[06,viComb01] ;
            Stgr_Etp11Bloc4.Cells[06,viLinhas] := Stgr_E11_AC10de11.Cells[07,viComb01] ;
            Stgr_Etp11Bloc4.Cells[07,viLinhas] := Stgr_E11_AC10de11.Cells[08,viComb01] ;
            Stgr_Etp11Bloc4.Cells[08,viLinhas] := Stgr_E11_AC10de11.Cells[09,viComb01] ;
            Stgr_Etp11Bloc4.Cells[09,viLinhas] := Stgr_E11_AC10de11.Cells[10,viComb01] ;
            Stgr_Etp11Bloc4.Cells[10,viLinhas] := Stgr_E11_AC10de11.Cells[11,viComb01] ;
            Stgr_Etp11Bloc4.Cells[11,viLinhas] := Stgr_E11Bloco1d5Result5.Cells[02,viComb02] ;
            Stgr_Etp11Bloc4.Cells[12,viLinhas] := Stgr_E11Bloco1d5Result5.Cells[03,viComb02] ;
            Stgr_Etp11Bloc4.Cells[13,viLinhas] := Stgr_E11Bloco1d5Result5.Cells[04,viComb02] ;
            Stgr_Etp11Bloc4.Cells[14,viLinhas] := Stgr_E11Bloco1d5Result5.Cells[05,viComb02] ;
            Stgr_Etp11Bloc4.Cells[15,viLinhas] := Stgr_E11Bloco1d5Result5.Cells[06,viComb02] ;
            PR_ORDENAR_15e11 (viLinhas);
            viLinhas := viLinhas + 1;
         end;
      end;
   Finally
      Stgr_Etp11Bloc4.RowCount := viLinhas;
   End;
   // ---> bloco 02
   Try
      for viComb01 := 1 to Stgr_E11_AC10de11.RowCount-1 do
      begin
         for viComb02 := 1 to Stgr_E11Bloco2d2Result5.RowCount-1 do
         begin
            viLinhas14 := Stgr_E11_AC10de11.Cells[1,viComb01].ToInteger;
            if Not((Stgr_E11Bloco2d2Result5.Cells[1,viComb02].ToInteger)=viLinhas14) then
               Continue;
            Stgr_Etp11Bloc4.Cells[00,viLinhas] := viLinhas.ToString;
            Stgr_Etp11Bloc4.Cells[16,viLinhas] := '| '+viLinhas14.ToString;
            Stgr_Etp11Bloc4.Cells[01,viLinhas] := Stgr_E11_AC10de11.Cells[02,viComb01] ;
            Stgr_Etp11Bloc4.Cells[02,viLinhas] := Stgr_E11_AC10de11.Cells[03,viComb01] ;
            Stgr_Etp11Bloc4.Cells[03,viLinhas] := Stgr_E11_AC10de11.Cells[04,viComb01] ;
            Stgr_Etp11Bloc4.Cells[04,viLinhas] := Stgr_E11_AC10de11.Cells[05,viComb01] ;
            Stgr_Etp11Bloc4.Cells[05,viLinhas] := Stgr_E11_AC10de11.Cells[06,viComb01] ;
            Stgr_Etp11Bloc4.Cells[06,viLinhas] := Stgr_E11_AC10de11.Cells[07,viComb01] ;
            Stgr_Etp11Bloc4.Cells[07,viLinhas] := Stgr_E11_AC10de11.Cells[08,viComb01] ;
            Stgr_Etp11Bloc4.Cells[08,viLinhas] := Stgr_E11_AC10de11.Cells[09,viComb01] ;
            Stgr_Etp11Bloc4.Cells[09,viLinhas] := Stgr_E11_AC10de11.Cells[10,viComb01] ;
            Stgr_Etp11Bloc4.Cells[10,viLinhas] := Stgr_E11_AC10de11.Cells[11,viComb01] ;
            Stgr_Etp11Bloc4.Cells[11,viLinhas] := Stgr_E11Bloco2d2Result5.Cells[02,viComb02] ;
            Stgr_Etp11Bloc4.Cells[12,viLinhas] := Stgr_E11Bloco2d2Result5.Cells[03,viComb02] ;
            Stgr_Etp11Bloc4.Cells[13,viLinhas] := Stgr_E11Bloco2d2Result5.Cells[04,viComb02] ;
            Stgr_Etp11Bloc4.Cells[14,viLinhas] := Stgr_E11Bloco2d2Result5.Cells[05,viComb02] ;
            Stgr_Etp11Bloc4.Cells[15,viLinhas] := Stgr_E11Bloco2d2Result5.Cells[06,viComb02] ;
            PR_ORDENAR_15e11 (viLinhas) ;
            viLinhas := viLinhas + 1;
         end;
      end;
   Finally
      Stgr_Etp11Bloc4.RowCount := viLinhas;
   End;
   PR_Gravar_Dados23Comb15 (' GERADOR_RESULT_25_Etp11Bloc4');
end;



procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco1d2_5Colunas;
var
   viComb01, viComb02 : Integer;
   viLinhas, viLinhas14 : Integer;
begin
   viLinhas := 01;
   Try
      for viComb01 := 1 to Stgr_E11Bloco1d2Numero1Qtd2.RowCount-1 do
      begin
         for viComb02 := 1 to Stgr_E11Bloco1d2Numero2Qtd3.RowCount-1 do
         begin
            viLinhas14 := Stgr_E11Bloco1d2Numero1Qtd2.Cells[1,viComb01].ToInteger;
            if Not((Stgr_E11Bloco1d2Numero2Qtd3.Cells[1,viComb02].ToInteger)=viLinhas14) then
               Continue;
            Stgr_E11Bloco1d5Result5.Cells[0,viLinhas] := viLinhas.ToString;
            Stgr_E11Bloco1d5Result5.Cells[1,viLinhas] := viLinhas14.ToString;
            Stgr_E11Bloco1d5Result5.Cells[2,viLinhas] := Stgr_E11Bloco1d2Numero1Qtd2.Cells[2,viComb01] ;
            Stgr_E11Bloco1d5Result5.Cells[3,viLinhas] := Stgr_E11Bloco1d2Numero1Qtd2.Cells[3,viComb01] ;
            Stgr_E11Bloco1d5Result5.Cells[4,viLinhas] := Stgr_E11Bloco1d2Numero2Qtd3.Cells[2,viComb02] ;
            Stgr_E11Bloco1d5Result5.Cells[5,viLinhas] := Stgr_E11Bloco1d2Numero2Qtd3.Cells[3,viComb02] ;
            Stgr_E11Bloco1d5Result5.Cells[6,viLinhas] := Stgr_E11Bloco1d2Numero2Qtd3.Cells[4,viComb02] ;
            viLinhas := viLinhas + 1;
         end;
      end;
   Finally
      Stgr_E11Bloco1d5Result5.RowCount := viLinhas;
   End;
end;



procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco2d2_5Colunas;
var
   viComb01, viComb02 : Integer;
   viLinhas, viLinhas14 : Integer;
begin
   viLinhas := 01;
   Try
      for viComb01 := 1 to Stgr_E11Bloco2d2Numero1Qtd3.RowCount-1 do
      begin
         for viComb02 := 1 to Stgr_E11Bloco2d2Numero2Qtd2.RowCount-1 do
         begin
            viLinhas14 := Stgr_E11Bloco2d2Numero1Qtd3.Cells[1,viComb01].ToInteger;
            if Not((Stgr_E11Bloco2d2Numero2Qtd2.Cells[1,viComb02].ToInteger)=viLinhas14) then
               Continue;
            Stgr_E11Bloco2d2Result5.Cells[0,viLinhas] := viLinhas.ToString;
            Stgr_E11Bloco2d2Result5.Cells[1,viLinhas] := viLinhas14.ToString;
            Stgr_E11Bloco2d2Result5.Cells[2,viLinhas] := Stgr_E11Bloco2d2Numero1Qtd3.Cells[2,viComb01] ;
            Stgr_E11Bloco2d2Result5.Cells[3,viLinhas] := Stgr_E11Bloco2d2Numero1Qtd3.Cells[3,viComb01] ;
            Stgr_E11Bloco2d2Result5.Cells[4,viLinhas] := Stgr_E11Bloco2d2Numero1Qtd3.Cells[4,viComb01] ;
            Stgr_E11Bloco2d2Result5.Cells[5,viLinhas] := Stgr_E11Bloco2d2Numero2Qtd2.Cells[2,viComb02] ;
            Stgr_E11Bloco2d2Result5.Cells[6,viLinhas] := Stgr_E11Bloco2d2Numero2Qtd2.Cells[3,viComb02] ;
            viLinhas := viLinhas + 1;
         end;
      end;
   Finally
      Stgr_E11Bloco2d2Result5.RowCount := viLinhas;
   End;
end;




Procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco2AC3de7();
var
   viComb01, viComb02, viComb03, viLinhas: Integer;
   viNumeroLinha14: smallint;
begin
    Pgbr_EtaPa_11.Position :=0 ;
    Pgbr_EtaPa_11.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_E11Bloco1d2Numero2Qtd3.Repaint;
    Scbx_dados.HorzScrollBar.Position := 25600;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    viLinhas := 1;
    try
      for viNumeroLinha14 := 1 to Stgr_E11n14.RowCount-1 do
      begin
         for viComb01 := 1 TO 5 DO
         BEGIN
            for viComb02 := viComb01 + 1 TO 6 DO
            BEGIN
               for viComb03 := viComb02 + 1 TO 7 DO
               BEGIN
                  // ---> 2º bloco da 8ª ao 14ª posição dos 14 números
                  Stgr_E11Bloco1d2Numero2Qtd3.Cells[00,viLinhas] := viLinhas.ToString  ;
                  Stgr_E11Bloco1d2Numero2Qtd3.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
                  Stgr_E11Bloco1d2Numero2Qtd3.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01+7,viNumeroLinha14] ;
                  Stgr_E11Bloco1d2Numero2Qtd3.Cells[03, viLinhas] := Stgr_E11n14.Cells[viComb02+7,viNumeroLinha14] ;
                  Stgr_E11Bloco1d2Numero2Qtd3.Cells[04, viLinhas] := Stgr_E11n14.Cells[viComb03+7,viNumeroLinha14] ;
                  // ---> 1º bloco da 1ª ao 7ª posição dos 14 números            // --->
                  Stgr_E11Bloco2d2Numero1Qtd3.Cells[00,viLinhas] := viLinhas.ToString  ;
                  Stgr_E11Bloco2d2Numero1Qtd3.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
                  Stgr_E11Bloco2d2Numero1Qtd3.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01,viNumeroLinha14] ;
                  Stgr_E11Bloco2d2Numero1Qtd3.Cells[03, viLinhas] := Stgr_E11n14.Cells[viComb02,viNumeroLinha14] ;
                  Stgr_E11Bloco2d2Numero1Qtd3.Cells[04, viLinhas] := Stgr_E11n14.Cells[viComb03,viNumeroLinha14] ;
                  viLinhas := viLinhas + 1;
               END;
            END;
         END; // for viComb01
      end; // for viNumeroLinha14
    finally
        Stgr_E11Bloco1d2Numero2Qtd3.RowCount := viLinhas;
        Stgr_E11Bloco1d2Numero2Qtd3.Repaint;
        Stgr_E11Bloco2d2Numero1Qtd3.RowCount := viLinhas;
        Stgr_E11Bloco2d2Numero1Qtd3.Repaint;
    end;
    Pgbr_EtaPa_11.Position :=20 ;
    Pgbr_EtaPa_11.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.GerarE11_Bloco2AC2de7();
var
   viComb01, viComb02, viComb03, viLinhas: Integer;
   viNumeroLinha14: smallint;
begin
    Pgbr_EtaPa_11.Repaint;
    // =====================================
    // ||||=============================||||
    // |||| 	GERANDO AS COMBINAÇÕES   ||||
    // ||||=============================||||
    // =====================================
    Stgr_E11Bloco2d2Numero2Qtd2.Repaint;
    Scbx_dados.HorzScrollBar.Position := 25600;
    Scbx_dados.Repaint;
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    viLinhas := 1;
    try
      for viNumeroLinha14 := 1 to Stgr_E11n14.RowCount-1 do
      begin
         for viComb01 := 1 TO 6 DO
         BEGIN
            for viComb02 := viComb01 + 1 TO 7 DO
            BEGIN
               // ---> 2º bloco da 8ª ao 14ª posição dos 14 números
               Stgr_E11Bloco2d2Numero2Qtd2.Cells[00,viLinhas] := viLinhas.ToString  ;
               Stgr_E11Bloco2d2Numero2Qtd2.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
               Stgr_E11Bloco2d2Numero2Qtd2.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01+7,viNumeroLinha14] ;
               Stgr_E11Bloco2d2Numero2Qtd2.Cells[03, viLinhas] := Stgr_E11n14.Cells[viComb02+7,viNumeroLinha14] ;
               // ---> 1º bloco da 1ª ao 7ª posição dos 14 números            // --->
               Stgr_E11Bloco1d2Numero1Qtd2.Cells[00,viLinhas] := viLinhas.ToString  ;
               Stgr_E11Bloco1d2Numero1Qtd2.Cells[01,viLinhas] := viNumeroLinha14.ToString  ;
               Stgr_E11Bloco1d2Numero1Qtd2.Cells[02, viLinhas] := Stgr_E11n14.Cells[viComb01,viNumeroLinha14] ;
               Stgr_E11Bloco1d2Numero1Qtd2.Cells[03, viLinhas] := Stgr_E11n14.Cells[viComb02,viNumeroLinha14] ;
               viLinhas := viLinhas + 1;
            END;
         END; // for viComb01
      end; // for viNumeroLinha14
    finally
        Stgr_E11Bloco2d2Numero2Qtd2.RowCount := viLinhas;
        Stgr_E11Bloco2d2Numero2Qtd2.Repaint;
        Stgr_E11Bloco1d2Numero1Qtd2.RowCount := viLinhas;
        Stgr_E11Bloco1d2Numero1Qtd2.Repaint;
    end;
    Pgbr_EtaPa_11.Position :=40 ;
    Pgbr_EtaPa_11.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.btLimit11p14tClick(Sender: TObject);
begin
             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_ETP11BLOC4')  ;
             DM1.IBQ_Combinacoes.ExecSQL;
             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_4TM15')  ;
             DM1.IBQ_Combinacoes.ExecSQL;


             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
             DM1.IBQ_Combinacoes.ExecSQL;

   Stgr_E11Bloco1d4Numero1Qtd1.ColWidths[0] := 39;
   Stgr_E11Bloco2d4Numero1Qtd1.ColWidths[0] := 39;
   Stgr_E11Bloco3d4Numero1Qtd1.ColWidths[0] := 39;
   Stgr_E11Bloco1d4Numero4Qtd2.ColWidths[0] := 39;
   Stgr_E11Bloco4d4Numero1Qtd2.ColWidths[0] := 39;
   Stgr_E11Bloco1d2Numero1Qtd2.ColWidths[0] := 39;
   Stgr_E11Bloco1d2Numero2Qtd3.ColWidths[0] := 39;
   Stgr_E11Bloco2d2Numero1Qtd3.ColWidths[0] := 39;
   Stgr_E11Bloco2d2Numero2Qtd2.ColWidths[0] := 39;
   Stgr_E11Parte3Fase1_Qtd02.ColWidths[0] := 39;
   Stgr_E11Parte3Fase1_Qtd02.ColWidths[1] := 39;
   Stgr_E11Parte3Fase1_Qtd10.ColWidths[0] := 44;
   Stgr_E11Parte3Fase1_Qtd10.ColWidths[1] := 34;
   Stgr_E11Parte3Fase2_Qtd12.ColWidths[0] := 52;
   Stgr_E11Parte3Fase2_Qtd12.ColWidths[1] := 30;
   Stgr_E11Parte3Fase3_Qtd05.ColWidths[0] := 60;
   Stgr_E11Parte3Fase3_Qtd05.ColWidths[1] := 37;
   Stgr_E11Parte3Fase3_Qtd05.ColWidths[1] := 25;
   Stgr_E11Bloco1d4Result5.ColWidths[0] := 44;
   Stgr_E11Bloco2d4Result5.ColWidths[0] := 44;
   Stgr_E11Bloco3d4Result5.ColWidths[0] := 44;
   Stgr_E11Bloco4d4Result5.ColWidths[0] := 44;
   Stgr_E11Bloco1d5Result5.ColWidths[0] := 44;
   Stgr_E11Bloco2d2Result5.ColWidths[0] := 44;
   Stgr_Etp11Bloc4.ColWidths[0] := 60;
   Pa_Gerar.Left := 1500;
   Pa_Gerar.Repaint;
   GerarE11_AC10de11 ();
   if cbLimitador11p14.ItemIndex = 1 then
   begin
      GerarE11_Bloco4AC1de4 ();
      GerarE11_Bloco4AC2de4 ();
      sleep (5000);
      GerarE11_Bloco4AC1de3 ();
      sleep (1000);
      GerarE11_Bloco4AC2de3 ();
      GerarE11_Bloco1d4_5Colunas ();
      GerarE11_Bloco2d4_5Colunas ();
      GerarE11_Bloco3d4_5Colunas ();
      GerarE11_Bloco4d4_5Colunas ();
      Pgbr_EtaPa_11.Position :=50 ;
      GerarE11_Bloco4_15Colunas ();
      sleep(1000);
      Pgbr_EtaPa_11.Position :=70 ;
   end else
   if cbLimitador11p14.ItemIndex = 2 then
   begin
      GerarE11_Bloco2AC3de7 ();
      sleep(3000);
      GerarE11_Bloco2AC2de7 ();
      GerarE11_Bloco1d2_5Colunas ();
      GerarE11_Bloco2d2_5Colunas ();
      Pgbr_EtaPa_11.Position :=60 ;
      GerarE11_Bloco2_15Colunas () ;
   end else
   if cbLimitador11p14.ItemIndex = 3 then
   begin
      GerarE11_AC01de10comSobra ();
      GerarE11_AC10de14 ();
      JuntarE11Parte3 ();
      Pgbr_EtaPa_11.Position :=30 ;
      Pgbr_EtaPa_11.Repaint;
      GerarE11_AC05de10p3 ();
      GerarE11_p3todos15n ();
      Pgbr_EtaPa_11.Position :=60 ;
      Pgbr_EtaPa_11.Repaint;
   end;
   Pgbr_EtaPa_11.Repaint;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_Etapa03Click(Sender: TObject);

 Procedure PR_Gravar_Dados_etapa4a (vi_EtapaGravacao: Integer);
    VAR
        VI_AN_Comb1, viContarCelulas, viContar, viContarStgGrid : Integer;
        vcQUERY, vc_Nome_Tabela : String;
        vcCombinacoes15, vcCombinacoes10 : String;
    BEGIN
        //VI_TOTALGERADO := Stgr_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
           if vi_EtapaGravacao = 4 then
              vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_D15B';
           if vi_EtapaGravacao = 5 then
              vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_D15C';
           if vi_EtapaGravacao = 6 then
              vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_D15D';
           if vi_EtapaGravacao = 7 then
              vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_D15E';
//           if vi_EtapaGravacao = 8 then
//              vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_1TM15';
//           if vi_EtapaGravacao = 9 then
//              vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_2TM15';
//           if vi_EtapaGravacao = 10 then
//              vc_Nome_Tabela := ' GERADOR_RESULT_25_LINHAS2_3TM15';
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          viContarStgGrid := TRUNC((Stgr_Etapa03_15.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
       BEGIN
            FOR viContarCelulas := 1 TO 25 DO
            BEGIN
               Stgr_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
            end;
           vcCombinacoes15 :='';
           FOR viContarCelulas := 2 TO 16 DO
           BEGIN
               vcCombinacoes15 := vcCombinacoes15 + TRIM(Stgr_Etapa03_15.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
               Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa03_15.Cells[viContarCelulas,VI_AN_Comb1])) ,1]:='V';
           END; // FOR viContarCelulas
               // -------------------------------
               // --  MONTANDO AS 06 SOBRAS   ---
               // -------------------------------
                  viContarCelulas := 1;
                  vcCombinacoes10 := '';
                  FOR viContar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF (Stgr_Todos_Numeros.Cells[viContar,1]='F') THEN
                      BEGIN
                          vcCombinacoes10 := vcCombinacoes10 + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                          viContarCelulas := viContarCelulas + 1;
                      END; // IF (Stgr_Todos_Numeros
                  END; // FOR viContar
           vcQUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, DADOS_ns, N) VALUES('
                 +#39+  TRIM(vcCombinacoes15)  + #39 +','
                 +#39+  TRIM(vcCombinacoes10)  + #39 +','
                 +#39+  TRIM(Stgr_Etapa03_15.Cells[0,VI_AN_Comb1])
                 +#39+ ');';
           DM1.IBQ_Combin_02.SQL.Clear;
           DM1.IBQ_Combin_02.SQL.Add(vcQUERY)  ;
           DM1.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
   // IF DM1.IBQ_Combin_02.Transaction.Active=False then
   //     DM1.IBQ_Combin_02.Transaction.StartTransaction ;
    DM1.IBQ_Combin_02.SQL.Clear;
    DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combin_02.ExecSQL;
    SLEEP(14);
    DM1.IBQ_Combin_02.SQL.Clear;
    END; // Procedure GRAVAR_DADOS


   Procedure PR_Gravar_Dados_Final ();
    VAR
        VI_AN_Comb1, viContarCelulas, viContar, viContarStgGrid : Integer;
        vcQUERY, vc_Nome_Tabela : String;
        vcCombinacoes10, vcCombinacoes15, vc_Contador_da_Tabela : String;
    BEGIN
        //VI_TOTALGERADO := Stgr_Comb10.RowCount-1;
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          SELF.Repaint;
          // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
          viContarStgGrid := TRUNC((Stgr_Etapa03_15.RowCount-1)/1);
       FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
       BEGIN
           vcCombinacoes15 :='';
           FOR viContarCelulas := 1 TO 25 DO
           BEGIN
                Stgr_Todos_Numeros.Cells [viContarCelulas ,1]:='F';
           end;
           FOR viContarCelulas := 2 TO 16 DO
           BEGIN
               vcCombinacoes15 := vcCombinacoes15 + TRIM(Stgr_Etapa03_15.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
               Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Etapa03_15.Cells[viContarCelulas,VI_AN_Comb1])) ,1]:='V';
               vc_Contador_da_Tabela :=  Stgr_Etapa03_15.Cells[1,VI_AN_Comb1] ;
           END; // FOR viContarCelulas
               // -------------------------------
               // --  MONTANDO AS 10 SOBRAS   ---
               // -------------------------------
                  viContarCelulas := 1;
                  vcCombinacoes10 := '';
                  FOR viContar :=1 TO 25 DO
                  BEGIN
                      // SOBRAS
                      IF (Stgr_Todos_Numeros.Cells[viContar,1]='F') THEN
                      BEGIN
                          vcCombinacoes10 := vcCombinacoes10 + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                          viContarCelulas := viContarCelulas + 1;
                      END; // IF (Stgr_Todos_Numeros
                  END; // FOR viContar
          vc_Nome_Tabela := ' GERADOR_RESULT_25_FINAL';
           vcQUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (DADOS, DADOS_NS, TIPO) VALUES('
                 +#39+  TRIM(vcCombinacoes15)  + #39 +','
                 +#39+  TRIM(vcCombinacoes10)  + #39 +','
                 +#39+  TRIM(Stgr_Etapa03_15.Cells[18,VI_AN_Comb1])
                 +#39+ ');';
           DM1.IBQ_Combin_02.SQL.Clear;
           DM1.IBQ_Combin_02.SQL.Add(vcQUERY)  ;
           DM1.IBQ_Combin_02.ExecSQL;
       END; // FOR VI_AN_Comb1
    DM1.IBQ_Combin_02.SQL.Clear;
    DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combin_02.ExecSQL;
    SLEEP(14);
    DM1.IBQ_Combin_02.SQL.Clear;
    END; // Procedure GRAVAR_DADOS

var
     viContar_Comb1, viQtdDados : Integer;
     viCombinacoes1, viCombinacoes2 :Integer;
     vi_Total_Comb1 : Integer;
     viLinhas01 : Integer;
     viSomaTotal, viContaSel1, viContarQtdPares : Integer;
     vsQuery, vsNomeTabelaDestino, vsNomeTabela : String;
begin
    Pa_Gerar.Left := 6000;
    Pa_Gerar.Enabled := False;
    Pa_Gerar.Repaint;
             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('insert INTO GERADOR_RESULT_25_Linhas2_DEF (FLAG_FILTRAR,FLAG_GRAVAR) values (''N'',''N'');')  ;
             DM1.IBQ_Combinacoes.ExecSQL;

             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D15B')  ;
             DM1.IBQ_Combinacoes.ExecSQL;

         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D15C')  ;
         DM1.IBQ_Combinacoes.ExecSQL;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D15d')  ;
         DM1.IBQ_Combinacoes.ExecSQL;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_D15e')  ;
         DM1.IBQ_Combinacoes.ExecSQL;
             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_TMP15')  ;
             DM1.IBQ_Combinacoes.ExecSQL;
             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_1TM15')  ;
             DM1.IBQ_Combinacoes.ExecSQL;
             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_2TM15')  ;
             DM1.IBQ_Combinacoes.ExecSQL;
             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_3TM15')  ;
             DM1.IBQ_Combinacoes.ExecSQL;
             DM1.IBQ_Combinacoes.ExecSQL;
             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_ETP11BLOC4')  ;
             DM1.IBQ_Combinacoes.ExecSQL;
             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_4TM15')  ;
             DM1.IBQ_Combinacoes.ExecSQL;
             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_5TM15')  ;
             DM1.IBQ_Combinacoes.ExecSQL;


             DM1.IBQ_Combinacoes.SQL.Clear;
             DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
             DM1.IBQ_Combinacoes.ExecSQL;
             Pgbr_EtaPa_04.Position := 0 ;
             Pgbr_EtaPa_04.Repaint;
             Pgbr_EtaPa_05.Position := 0 ;
             Pgbr_EtaPa_05.Repaint;
             Pgbr_EtaPa_06.Position := 0 ;
             Pgbr_EtaPa_06.Repaint;
             Pgbr_EtaPa_07.Position := 0 ;
             Pgbr_EtaPa_07.Repaint;
             Stgr_Etapa06_05.ColWidths [0]:= 40 ;
             Stgr_TriplasDuplas1.ColWidths [0]:= 40 ;
             {
            if not((Trb_ppim1_01.Position + Trb_ppim1_02.Position + Trb_ppim1_03.Position + Trb_ppim1_04.Position) <= 15) then
            begin
                SHOWMESSAGE('O total de quantidades da prova dos Pares e Ímpares' + #13+#13+'tem de ser igual a 15. Favor acertar');
                Trb_ppim1_01.SetFocus;
                Exit;
            end; /// if
            }

    // ----------------------------------------------------------------------------------------------------------------
    //
    // -- Etapa 04
    //
    //
    //  -- > Montando 15 sem repetidos e com os filtos de blocos 1 e 2 e das linhas 21,22,23,24,25
    //
    LimparGrid_Comb15() ;
    Stgr_Etapa03_15.Visible := True;
    DM1.IBDatabase1.ForceClose;
    DM1.IBDatabase1.Open;
    DM1.IBDatabase1.Connected := False;
    DM1.IBDatabase1.Connected := True;
    IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
    DM1.IBQ_Combinacoes.Close;
    viQtdDados := 1;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_LINHAS2_D15A;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    //SHOWMESSAGE(DM1.IBQ_Combinacoes.fieldBYname('QTD').AsString);
    viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS) FROM GERADOR_RESULT_25_LINHAS2_D15A ORDER BY DADOS;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
    Pgbr_EtaPa_04.Position := 0 ;
    Pgbr_EtaPa_04.Repaint;
    viLinhas01 := 1 ;
    viContar_Comb1 := 1;
    WHILE NOT(DM1.IBQ_COMBINACOES.Eof) DO
    BEGIN
        Stgr_Etapa03_15.Cells[00,viLinhas01] := intTOstr(viLinhas01);
    MontarGrid15(viLinhas01);
        DM1.IBQ_Combinacoes.Next;
        viContar_Comb1 := viContar_Comb1 +1;
       if  self.Validar_Blocos1e2(viLinhas01) then
            if self.Validar_LinhasFinais(viLinhas01) then
                if self.Validar_LinhasIniciais(viLinhas01) then
                    viLinhas01 := viLinhas01 + 1;
        if (viLinhas01/491)=(viLinhas01 DIV 491) then    //91
        BEGIN
           Stgr_Etapa03_15.RowCount := viLinhas01;
           Stgr_Etapa03_15.Repaint ;
           sleep(500);
           Pgbr_EtaPa_04.Position := (TRUNC((viContar_Comb1)  / viQtdDados *100) );
           Pgbr_EtaPa_04.Repaint;
           Stgr_Etapa03_15.REPAINT;
           viContar_Comb1 := viContar_Comb1 +1;
        END;
    end; // while
    Stgr_Etapa03_15.RowCount := viLinhas01;
    Stgr_Etapa03_15.Repaint ;
    Pgbr_EtaPa_04.Position := 100;
    Pgbr_EtaPa_04.Repaint;
    Stgr_Etapa03_15.REPAINT;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
    PR_Gravar_Dados_etapa4a (4);



    IF (Cb_ImparesPares.ItemIndex = 1) THEN
    BEGIN
            // ----------------------------------------------------------------------------------------------------------------
            //
            // -- Etapa 05 - Prova dos Impares e Pares
            //
            Pgbr_EtaPa_05.Position := 0 ;
            Pgbr_EtaPa_05.Repaint;
            LimparGrid_Comb15() ;
            Stgr_Etapa03_15.Visible := True;
            DM1.IBDatabase1.ForceClose;
            DM1.IBDatabase1.Open;
            DM1.IBDatabase1.Connected := False;
            DM1.IBDatabase1.Connected := True;
            IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
            DM1.IBQ_Combinacoes.Close;
            viQtdDados := 1;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_LINHAS2_D15B;')  ;
            DM1.IBQ_Combinacoes.Prepare;
            DM1.IBQ_Combinacoes.Open;
            //SHOWMESSAGE(DM1.IBQ_Combinacoes.fieldBYname('QTD').AsString);
            viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS) FROM GERADOR_RESULT_25_LINHAS2_D15B ORDER BY DADOS;')  ;
            DM1.IBQ_Combinacoes.Prepare;
            DM1.IBQ_Combinacoes.Open;
            DM1.IBQ_Combinacoes.First;
            Pgbr_EtaPa_05.Position := 0 ;
            Pgbr_EtaPa_05.Repaint;
            viLinhas01 := 1 ;
            viContar_Comb1 := 1;
            WHILE NOT(DM1.IBQ_COMBINACOES.Eof) DO
            BEGIN
                Stgr_Etapa03_15.Cells[00,viLinhas01] := intTOstr(viLinhas01); //DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
             MontarGrid15(viLinhas01);
                DM1.IBQ_Combinacoes.Next;
                viContar_Comb1 := viContar_Comb1 +1;
               if  self.Validar_ppi_A(viLinhas01) then
                     if self.Validar_ppi_C(viLinhas01) then
                          viLinhas01 := viLinhas01 + 1;
                if (viLinhas01/33)=(viLinhas01 DIV 33) then
                BEGIN
                   Stgr_Etapa03_15.RowCount := viLinhas01;
                   Stgr_Etapa03_15.Repaint ;
                   sleep(150);
                   Pgbr_EtaPa_05.Position := (TRUNC((viContar_Comb1)  / viQtdDados *100) );
                   Pgbr_EtaPa_05.Repaint;
                   Stgr_Etapa03_15.REPAINT;
                   //PR_Gravar_Dados_etapa3a ();
                   viContar_Comb1 := viContar_Comb1 +1;
                END;
            end; // while
            Stgr_Etapa03_15.RowCount := viLinhas01;
            Stgr_Etapa03_15.Repaint ;
            Pgbr_EtaPa_05.Position := 100;
            Pgbr_EtaPa_05.Repaint;
            Stgr_Etapa03_15.REPAINT;
             Self.WindowState := wsMinimized;
             Self.WindowState :=  wsNormal;
             SELF.Repaint;
    END;
     PR_Gravar_Dados_etapa4a (5);

    IF (Cb_Blocos5.ItemIndex =1) THEN
    begin
        // ----------------------------------------------------------------------------------------------------------------
        //
        // -- Etapa 06 - Prova dos blocos
        //
        LimparGrid_Comb15() ;
        Stgr_Etapa03_15.Visible := True;
        Scbx_dados.HorzScrollBar.Position := 9080;
        Scbx_dados.Repaint;
        Pgbr_EtaPa_06.Position := 0 ;
        Pgbr_EtaPa_06.Repaint;
        DM1.IBDatabase1.ForceClose;
        DM1.IBDatabase1.Open;
        DM1.IBDatabase1.Connected := False;
        DM1.IBDatabase1.Connected := True;
        IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
        DM1.IBQ_Combinacoes.Close;
        viQtdDados := 1;
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_LINHAS2_D15C;')  ;
        DM1.IBQ_Combinacoes.Prepare;
        DM1.IBQ_Combinacoes.Open;
        viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
        DM1.IBQ_Combinacoes.SQL.Clear;
        DM1.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS) FROM GERADOR_RESULT_25_LINHAS2_D15C ORDER BY DADOS;')  ;
        DM1.IBQ_Combinacoes.Prepare;
        DM1.IBQ_Combinacoes.Open;
        DM1.IBQ_Combinacoes.First;
        viLinhas01 := 1 ;
        viContar_Comb1 := 1;
        WHILE NOT(DM1.IBQ_COMBINACOES.Eof) DO
        BEGIN
            Stgr_Etapa03_15.Cells[00,viLinhas01] := intTOstr(viLinhas01); //DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
        MontarGrid15(viLinhas01);
            DM1.IBQ_Combinacoes.Next;
            viContar_Comb1 := viContar_Comb1 +1;
           if  self.Validar_Etapa6BlocosC(viLinhas01) then
                      viLinhas01 := viLinhas01 + 1;
            if (viLinhas01/10)=(viLinhas01 DIV 10) then
            BEGIN
               Stgr_Etapa03_15.RowCount := viLinhas01;
               Stgr_Etapa03_15.Repaint ;
               sleep(150);
               Pgbr_EtaPa_06.Position := (TRUNC((viContar_Comb1)  / viQtdDados *100) );
               Pgbr_EtaPa_06.Repaint;
               Stgr_Etapa03_15.REPAINT;
                          //PR_Gravar_Dados_etapa4a ();
               viContar_Comb1 := viContar_Comb1 +1;
            END;
        end; // while
        Stgr_Etapa03_15.RowCount := viLinhas01;
        Stgr_Etapa03_15.Repaint ;
        Pgbr_EtaPa_06.Position := 100;
        Pgbr_EtaPa_06.Repaint;
        Stgr_Etapa03_15.REPAINT;
         Self.WindowState := wsMinimized;
         Self.WindowState :=  wsNormal;
         SELF.Repaint;
    end;
    PR_Gravar_Dados_etapa4a (6);


    if (Cb_TriplasDuplas.ItemIndex < 5) then
    begin
            // ----------------------------------------------------------------------------------------------------------------
            //
            // -- Etapa 07 - Prova das Triplas e Duplas
            //
           LimparGrid_Comb15() ;
           Stgr_Etapa03_15.Visible := True;
            Scbx_dados.HorzScrollBar.Position := 9150;
            Scbx_dados.Repaint;
            Pgbr_EtaPa_07.Position := 0 ;
            Pgbr_EtaPa_07.Repaint;
            DM1.IBDatabase1.ForceClose;
            DM1.IBDatabase1.Open;
            DM1.IBDatabase1.Connected := False;
            DM1.IBDatabase1.Connected := True;
            IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
            DM1.IBQ_Combinacoes.Close;
            viQtdDados := 1;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_LINHAS2_D15d;')  ;
            DM1.IBQ_Combinacoes.Prepare;
            DM1.IBQ_Combinacoes.Open;
            viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS) FROM GERADOR_RESULT_25_LINHAS2_D15d ORDER BY DADOS;')  ;
            DM1.IBQ_Combinacoes.Prepare;
            DM1.IBQ_Combinacoes.Open;
            DM1.IBQ_Combinacoes.First;
            viLinhas01 := 1 ;
            viContar_Comb1 := 1;
            WHILE NOT(DM1.IBQ_COMBINACOES.Eof) DO
            BEGIN
                Stgr_Etapa03_15.Cells[00,viLinhas01] := intTOstr(viLinhas01); //DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
             MontarGrid15(viLinhas01);
                DM1.IBQ_Combinacoes.Next;
                viContar_Comb1 := viContar_Comb1 +1;
               if  self.Validar_Etapa7TD(viLinhas01) then
                          viLinhas01 := viLinhas01 + 1;
                if (viLinhas01/10)=(viLinhas01 DIV 10) then
                BEGIN
                   Stgr_Etapa03_15.RowCount := viLinhas01;
                   Stgr_Etapa03_15.Repaint ;
                   sleep(150);
                   Pgbr_EtaPa_07.Position := (TRUNC((viContar_Comb1)  / viQtdDados *100) );
                   Pgbr_EtaPa_07.Repaint;
                   Stgr_Etapa03_15.REPAINT;
                   //PR_Gravar_Dados_etapa3a ();
                   viContar_Comb1 := viContar_Comb1 +1;
                END;
            end; // while
            Stgr_Etapa03_15.RowCount := viLinhas01;
            Stgr_Etapa03_15.Repaint ;
            Pgbr_EtaPa_07.Position := 100;
            Pgbr_EtaPa_07.Repaint;
            Stgr_Etapa03_15.REPAINT;
             Self.WindowState := wsMinimized;
             Self.WindowState :=  wsNormal;
             SELF.Repaint;
            PR_Gravar_Dados_etapa4a (7);
    end; ///     if (Cb_TriplasDuplas.ItemIndex < 5)

    // ----------------------------------------------------------------------------------------------------------------
    //
    // --> Etapa 8
    if cbLimitador23.ItemIndex = 1 then
    begin
         Scbx_dados.HorzScrollBar.Position := 19384;
         Scbx_dados.Repaint;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_LINHAS2_23_15;')  ;
         DM1.IBQ_Combinacoes.Prepare;
         DM1.IBQ_Combinacoes.Open;
         //SHOWMESSAGE(DM1.IBQ_Combinacoes.fieldBYname('QTD').AsString);
         viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
         if viQtdDados<=1 then
             btLimitador23.Click;
         Pgbr_EtaPa_08.Position := 60;
         vsNomeTabelaDestino:= 'GERADOR_RESULT_25_LINHAS2_1TM15';
         //PR_Gravar_Dados23_1Tm15(); a tabela vai ser gerada mais adiante
         if (Cb_TriplasDuplas.ItemIndex < 5) then //etapa 7
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15E'
         else
         IF (Cb_Blocos5.ItemIndex =1) THEN       //etapa 6
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15D'
         else
         IF (Cb_ImparesPares.ItemIndex = 1) THEN //etapa 5
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15C'
         else                                    //etapa 4
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15B';
         vsQuery := 'INSERT INTO '  + vsNomeTabelaDestino
         + ' SELECT '+vsNomeTabela+'.dados AS DADOS  '
          + ' FROM '+vsNomeTabela+', GERADOR_RESULT_25_LINHAS2_23_15 '
          + ' WHERE ('+vsNomeTabela+'.dados=GERADOR_RESULT_25_LINHAS2_23_15.dados) '
          + ' ORDER BY '+vsNomeTabela+'.dados';
            DM1.IBDatabase1.ForceClose;
            DM1.IBDatabase1.Open;
            DM1.IBDatabase1.Connected := False;
            DM1.IBDatabase1.Connected := True;
            IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
            DM1.IBQ_Combinacoes.Close;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add(vsQuery)  ;
         DM1.IBQ_Combinacoes.ExecSQL;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
         DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBDatabase1.ForceClose;
            DM1.IBDatabase1.Open;
            DM1.IBDatabase1.Connected := False;
            DM1.IBDatabase1.Connected := True;
            IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
            DM1.IBQ_Combinacoes.Close;

         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS) FROM GERADOR_RESULT_25_LINHAS2_1TM15 ORDER BY DADOS;')  ;
         DM1.IBQ_Combinacoes.Prepare;
         DM1.IBQ_Combinacoes.Open;
         DM1.IBQ_Combinacoes.First;
            viLinhas01 := 1 ;
            viContar_Comb1 := 1;
            WHILE NOT(DM1.IBQ_COMBINACOES.Eof) DO
            BEGIN
                Stgr_Etapa03_15.Cells[00,viLinhas01] := intTOstr(viLinhas01); //DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
             MontarGrid15(viLinhas01);
                DM1.IBQ_Combinacoes.Next;
                viContar_Comb1 := viContar_Comb1 +1;
                viLinhas01 := viLinhas01 + 1;
            end; // while
            Stgr_Etapa03_15.RowCount := viLinhas01;
            Stgr_Etapa03_15.Repaint ;
            Stgr_Etapa03_15.REPAINT;
             Self.WindowState := wsMinimized;
             Self.WindowState :=  wsNormal;
             SELF.Repaint;
            //PR_Gravar_Dados_etapa4a (8);
    end;

    // ----------------------------------------------------------------------------------------------------------------
    //
    // --> Etapa 09
    if cbLimitador19.ItemIndex = 1 then
    begin
         Scbx_dados.HorzScrollBar.Position := 19384;
         Scbx_dados.Repaint;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_LINHAS2_19_15;')  ;
         DM1.IBQ_Combinacoes.Prepare;
         DM1.IBQ_Combinacoes.Open;
         //SHOWMESSAGE(DM1.IBQ_Combinacoes.fieldBYname('QTD').AsString);
         viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
         if viQtdDados<=1 then
             btLimitador19.Click;
         Pgbr_EtaPa_09.Position := 100;
         vsNomeTabelaDestino:= 'GERADOR_RESULT_25_LINHAS2_2TM15';
         //PR_Gravar_Dados23_1Tm15(); a tabela vai ser gerada mais adiante
         if (cbLimitador23.ItemIndex =0{1}) then // etapa 8
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_1TM15'
         else
         if (Cb_TriplasDuplas.ItemIndex < 5) then //etapa 7
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15E'
         else
         IF (Cb_Blocos5.ItemIndex =1) THEN       //etapa 6
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15D'
         else
         IF (Cb_ImparesPares.ItemIndex = 1) THEN //etapa 5
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15C'
         else                                    //etapa 4
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15B';
         vsQuery := 'insert into '  + vsNomeTabelaDestino
         + ' SELECT '+vsNomeTabela+'.dados AS DADOS  '
          + ' FROM '+vsNomeTabela+', GERADOR_RESULT_25_LINHAS2_19_15 '
          + ' WHERE ('+vsNomeTabela+'.dados=GERADOR_RESULT_25_LINHAS2_19_15.dados) '
          + ' ORDER BY '+vsNomeTabela+'.dados';
            DM1.IBDatabase1.ForceClose;
            DM1.IBDatabase1.Open;
            DM1.IBDatabase1.Connected := False;
            DM1.IBDatabase1.Connected := True;
            IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
            DM1.IBQ_Combinacoes.Close;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add(vsQuery)  ;
         DM1.IBQ_Combinacoes.ExecSQL;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
         DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBDatabase1.ForceClose;
            DM1.IBDatabase1.Open;
            DM1.IBDatabase1.Connected := False;
            DM1.IBDatabase1.Connected := True;
            IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
            DM1.IBQ_Combinacoes.Close;

         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS) FROM GERADOR_RESULT_25_LINHAS2_2TM15 ORDER BY DADOS;')  ;
         DM1.IBQ_Combinacoes.Prepare;
         DM1.IBQ_Combinacoes.Open;
         DM1.IBQ_Combinacoes.First;
            viLinhas01 := 1 ;
            viContar_Comb1 := 1;
            WHILE NOT(DM1.IBQ_COMBINACOES.Eof) DO
            BEGIN
                Stgr_Etapa03_15.Cells[00,viLinhas01] := intTOstr(viLinhas01); //DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
             MontarGrid15(viLinhas01);
                DM1.IBQ_Combinacoes.Next;
                viContar_Comb1 := viContar_Comb1 +1;
                viLinhas01 := viLinhas01 + 1;
            end; // while
            Stgr_Etapa03_15.RowCount := viLinhas01;
            Stgr_Etapa03_15.Repaint ;
            Stgr_Etapa03_15.REPAINT;
             Self.WindowState := wsMinimized;
             Self.WindowState :=  wsNormal;
             SELF.Repaint;
           // PR_Gravar_Dados_etapa4a (9);
    end;


    // ----------------------------------------------------------------------------------------------------------------
    //
    // --> Etapa 10
    if Cb_Rank1.ItemIndex = 1 then
    begin
         Scbx_dados.HorzScrollBar.Position := 19480;
         Scbx_dados.Repaint;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_RANK1D;')  ;
         DM1.IBQ_Combinacoes.Prepare;
         DM1.IBQ_Combinacoes.Open;
         //SHOWMESSAGE(DM1.IBQ_Combinacoes.fieldBYname('QTD').AsString);
         viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
         if viQtdDados<=1 then
             Bbt_PreparaRank.Click;
         Pgbr_EtaPa_10.Position := 60;
         vsNomeTabelaDestino:= 'GERADOR_RESULT_25_LINHAS2_3tm15';
         //PR_Gravar_Dados23_1Tm15(); a tabela vai ser gerada mais adiante
         if (cbLimitador19.ItemIndex =1) then // etapa 9
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_2TM15'
         else
         if (cbLimitador23.ItemIndex =1) then // etapa 8
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_1TM15'
         else
         if (Cb_TriplasDuplas.ItemIndex < 5) then //etapa 7
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15E'
         else
         IF (Cb_Blocos5.ItemIndex =1) THEN       //etapa 6
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15D'
         else
         IF (Cb_ImparesPares.ItemIndex = 1) THEN //etapa 5
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15C'
         else                                    //etapa 4
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15B';
         vsQuery := 'insert into '  + vsNomeTabelaDestino
         + ' SELECT '+vsNomeTabela+'.dados AS DADOS  '
          + ' FROM '+vsNomeTabela+', GERADOR_RESULT_25_RANK1D '
          + ' WHERE ('+vsNomeTabela+'.dados=GERADOR_RESULT_25_RANK1D.dados) '
          + ' ORDER BY '+vsNomeTabela+'.dados';
            DM1.IBDatabase1.ForceClose;
            DM1.IBDatabase1.Open;
            DM1.IBDatabase1.Connected := False;
            DM1.IBDatabase1.Connected := True;
            IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
            DM1.IBQ_Combinacoes.Close;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add(vsQuery)  ;
         DM1.IBQ_Combinacoes.ExecSQL;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
         DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBDatabase1.ForceClose;
            DM1.IBDatabase1.Open;
            DM1.IBDatabase1.Connected := False;
            DM1.IBDatabase1.Connected := True;
            IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
            DM1.IBQ_Combinacoes.Close;

         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS) FROM GERADOR_RESULT_25_LINHAS2_3TM15 ORDER BY DADOS;')  ;
         DM1.IBQ_Combinacoes.Prepare;
         DM1.IBQ_Combinacoes.Open;
         DM1.IBQ_Combinacoes.First;
            viLinhas01 := 1 ;
            viContar_Comb1 := 1;
            WHILE NOT(DM1.IBQ_COMBINACOES.Eof) DO
            BEGIN
                Stgr_Etapa03_15.Cells[00,viLinhas01] := intTOstr(viLinhas01); //DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
             MontarGrid15(viLinhas01);
                DM1.IBQ_Combinacoes.Next;
                viContar_Comb1 := viContar_Comb1 +1;
                viLinhas01 := viLinhas01 + 1;
            end; // while
            Stgr_Etapa03_15.RowCount := viLinhas01;
            Stgr_Etapa03_15.Repaint ;
            Stgr_Etapa03_15.REPAINT;
             Pgbr_EtaPa_10.Position := 100;
             Pgbr_EtaPa_10.Repaint;
             Self.WindowState := wsMinimized;
             Self.WindowState :=  wsNormal;
             SELF.Repaint;
          //  PR_Gravar_Dados_etapa4a (10);
    end;


    // ----------------------------------------------------------------------------------------------------------------
    //
    // --> Etapa 11
    if cbLimitador11p14.ItemIndex >= 1 then
    begin
         Scbx_dados.HorzScrollBar.Position := 19480;
         Scbx_dados.Repaint;
         Pgbr_EtaPa_11.Position := 0;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_Etp11Bloc4;')  ;
         DM1.IBQ_Combinacoes.Prepare;
         DM1.IBQ_Combinacoes.Open;
         viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
        // if viQtdDados<=1 then
             btLimit11p14t.Click;
         Pgbr_EtaPa_11.Position := 80;
         vsNomeTabelaDestino:= 'GERADOR_RESULT_25_LINHAS2_5tm15';
         //PR_Gravar_Dados23_1Tm15(); a tabela vai ser gerada mais adiante
         if (Cb_Rank1.ItemIndex =1) then // etapa 10
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_3TM15'
         else
         if (cbLimitador19.ItemIndex =1) then // etapa 9
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_2TM15'
         else
         if (cbLimitador23.ItemIndex =1) then // etapa 8
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_1TM15'
         else
         if (Cb_TriplasDuplas.ItemIndex < 5) then //etapa 7
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15E'
         else
         IF (Cb_Blocos5.ItemIndex =1) THEN       //etapa 6
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15D'
         else
         IF (Cb_ImparesPares.ItemIndex = 1) THEN //etapa 5
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15C'
         else                                    //etapa 4
            vsNomeTabela := ' GERADOR_RESULT_25_LINHAS2_D15B';
         vsQuery := 'insert into '  + vsNomeTabelaDestino
         + ' SELECT '+vsNomeTabela+'.dados AS DADOS  '
          + ' FROM '+vsNomeTabela+', GERADOR_RESULT_25_Etp11Bloc4 '
          + ' WHERE ('+vsNomeTabela+'.dados=GERADOR_RESULT_25_Etp11Bloc4.dados) '
          + ' ORDER BY '+vsNomeTabela+'.dados';
            DM1.IBDatabase1.ForceClose;
            DM1.IBDatabase1.Open;
            DM1.IBDatabase1.Connected := False;
            DM1.IBDatabase1.Connected := True;
            IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
            DM1.IBQ_Combinacoes.Close;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add(vsQuery)  ;
         DM1.IBQ_Combinacoes.ExecSQL;
         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
         DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBDatabase1.ForceClose;
            DM1.IBDatabase1.Open;
            DM1.IBDatabase1.Connected := False;
            DM1.IBDatabase1.Connected := True;
            IF NOT(DM1.IBTransaction1.Active) THEN DM1.IBTransaction1.StartTransaction;
            DM1.IBQ_Combinacoes.Close;

         DM1.IBQ_Combinacoes.SQL.Clear;
         DM1.IBQ_Combinacoes.SQL.Add('SELECT DISTINCT(DADOS) FROM GERADOR_RESULT_25_LINHAS2_5tm15 ORDER BY DADOS;')  ;
         DM1.IBQ_Combinacoes.Prepare;
         DM1.IBQ_Combinacoes.Open;
         DM1.IBQ_Combinacoes.First;
            viLinhas01 := 1 ;
            viContar_Comb1 := 1;
            WHILE NOT(DM1.IBQ_COMBINACOES.Eof) DO
            BEGIN
                Stgr_Etapa03_15.Cells[00,viLinhas01] := intTOstr(viLinhas01); //DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
             MontarGrid15(viLinhas01);
                DM1.IBQ_Combinacoes.Next;
                viContar_Comb1 := viContar_Comb1 +1;
                viLinhas01 := viLinhas01 + 1;
            end; // while
            Stgr_Etapa03_15.RowCount := viLinhas01;
            Stgr_Etapa03_15.Repaint ;
            Stgr_Etapa03_15.REPAINT;
             Pgbr_EtaPa_11.Position := 100;
             Pgbr_EtaPa_11.Repaint;
             Self.WindowState := wsMinimized;
             Self.WindowState :=  wsNormal;
             SELF.Repaint;
          //  PR_Gravar_Dados_etapa4a (10);

    end;





    // ----------------------------------------------------------------------------------------------------------------
    //
    // --> Finalizando
    viCombinacoes1 := 1 ;
    WHILE viCombinacoes1 <= (TRUNC((Stgr_Etapa03_15.RowCount-1)/1)) do
    BEGIN
                viContarQtdPares := 0 ;
                for  viContaSel1 := 2  to 16  do
                begin
                    if (strTOint(Stgr_Etapa03_15.Cells[viContaSel1, viCombinacoes1]) MOD 2) = 0  THEN
                        viContarQtdPares := viContarQtdPares +1 ;
                end; // for
                case viContarQtdPares of
                  4:  Stgr_Etapa03_15.Cells[18, viCombinacoes1] := '.11i/4p' ;
                  5:  Stgr_Etapa03_15.Cells[18, viCombinacoes1] := '.10i/5p' ;
                  6:  Stgr_Etapa03_15.Cells[18, viCombinacoes1] := '.9i/6p' ;
                  7:  Stgr_Etapa03_15.Cells[18, viCombinacoes1] := '.8i/7p' ;
                  8:  Stgr_Etapa03_15.Cells[18, viCombinacoes1] := '.7i/8p' ;
                  9:  Stgr_Etapa03_15.Cells[18, viCombinacoes1] := '.6i/9p' ;
                  10:  Stgr_Etapa03_15.Cells[18, viCombinacoes1] := '.5i/10p' ;
                  else
                      Stgr_Etapa03_15.Cells[18, viCombinacoes1] := intTOstr(viContarQtdPares)+ ' pares' ;
                end; //// case
        viCombinacoes1 := viCombinacoes1 + 1;
    end; // WHILE viCombinacoes1
    SELF.WindowState := wsMinimized;
    SELF.WindowState :=  wsNormal;
    SELF.Repaint;
    PR_Gravar_Dados_Final ();





    DM1.IBQ_Combin_02.SQL.Clear;
    DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combin_02.ExecSQL;

    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(viContar_Comb1)+ ''';')  ;
    DM1.IBQ_Combinacoes.ExecSQL;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
    DM1.IBQ_Combinacoes.ExecSQL;

            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('SELECT count(DISTINCT(DADOS)) as QTD FROM GERADOR_RESULT_25_LINHAS2_D15b;')  ;
            DM1.IBQ_Combinacoes.Prepare;
            DM1.IBQ_Combinacoes.Open;
    La_rTOTAL_Comb.Caption  := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsString;
    La_rQTD_COMB.Caption  := INTtoSTR(Stgr_Etapa03_15.RowCount-1);
    La_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT count(distinct(dados)) as quantidade FROM GERADOR_RESULT_25_FINAL') ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;

    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT count(distinct(dados)) as quantidade FROM GERADOR_RESULT_25_FINAL  where tipo =''.8i/7p''') ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;

        DM1.IBQ_CombINACOES.SQL.Clear;
        DM1.IBQ_CombINACOES.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
        DM1.IBQ_CombINACOES.ExecSQL;
        DM1.IBQ_CombINACOES.SQL.Clear;
           vsQuery := 'UPDATE GERADOR_RESULT_25_Linhas2_DEF SET TIPO_19= ''Forma dos 19 números: ' +Cb_tipo19.Text+
           ''', Bloco_25= '' Números de 21º ao 25º:  ' +vs_Base25 + '''';
           if (Cb_ImparesPares.ItemIndex =0) Then
           begin
               vsQuery := vsQuery + ', PROVA_IM_PAR= '' Foi feito a prova dos Impares e Pares :' +Cb_ImparesPares.Text+ ''', PROVA_IM_PAR_01 = ''   Linhas A/B=Nao'', PROVA_IM_PAR_02= ''   Linhas C/D=Nao''';
           end else
           begin
               vsQuery := vsQuery + ', PROVA_IM_PAR= '' Foi feito a prova dos Impares e Pares :' +Cb_ImparesPares.Text+ ''', PROVA_IM_PAR_01= '' Linhas A/B= '+Cb_ppim_LinhaAB.Text + ''', PROVA_IM_PAR_02 = ''   Linhas C/D= ' +Cb_ppim_LinhaCD.Text+ '''';
           end;
           vsQuery := vsQuery + ', PROVA_Blocos5= '' Foi feito a prova dos blocos de 5:' +Cb_Blocos5.Text+
           ''', PROVA_Triplas_Duplas= '' Triplas e Duplas:' +Cb_TriplasDuplas.Text+ ''' ;' ;
           DM1.IBQ_Combinacoes.SQL.Add(vsQuery);
           DM1.IBQ_Combinacoes.ExecSQL;
        DM1.IBQ_CombINACOES.ExecSQL;
       DM1.IBQ_CombINACOES.SQL.Clear;
       DM1.IBQ_CombINACOES.SQL.Add('COMMIT')  ;
       DM1.IBQ_CombINACOES.ExecSQL;
       
    La_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    Pa_RemoveuRepetidos.Left := 1055;
end;




Procedure T_F_Gerador_ResDiv_25Linhas2.Btn_ReajustarClick(Sender: TObject);
begin
     Scbx_Gabarito.Visible := TRUE;
     Scbx_Gabarito.Enabled := TRUE;
     Pa_Resultado.Visible := TRUE;
     Pa_Resultado.Enabled := TRUE;
     Bbt_PrepararMenu.Enabled := TRUE;
     Bbt_GerarMenu.Enabled := false;
     Bbt_CancelarSair.Visible := false;
     Pa_Inicial.Enabled := false;
     Pa_Inicial.Left := 2198;
     Scbx_Gabarito.Top:=247;
     Scbx_Gabarito.Repaint;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_CARREGARClick(Sender: TObject);
begin
    Bbt_CancelarSair.Visible := TRUE;
//       SELF.PR_LIMPAR_GRID10();
     Scbx_Gabarito.Visible := TRUE;
     Scbx_Gabarito.Enabled := TRUE;
     Pa_Resultado.Visible := TRUE;
     Pa_Resultado.Enabled := TRUE;
     Pa_ExecutarFiltro.Enabled := TRUE;

     Bbt_PrepararMenu.Enabled := false;
     Bbt_GerarMenu.Enabled := false;
     Pa_Inicial.Enabled := false;
     Pa_Inicial.Left := 2198;
     La_Gerar_Comb.Visible := false;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
            DM1.IBQ_Combinacoes.SQL.Clear;
            DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
            DM1.IBQ_Combinacoes.ExecSQL;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_VoltarClick(Sender: TObject);
begin
     Pa_Gerar.Enabled := false;
     Pa_Gerar.Left := 4500;    ;
     Pa_Gerar.Repaint;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_BlocoNotasClick(Sender: TObject);
var
    viContar, vc_qtd_pares : Integer;
    vcCombinacoes2 : String;
begin
    GerarBlocoNotas1('GERADOR_RESULT_25_LINHAS2_D15B','GERADOR Resultados 25 Linhas', '.Todos os números possíveis (etapa 4).');
    IF (Cb_ImparesPares.ItemIndex = 1) THEN
        GerarBlocoNotas1('GERADOR_RESULT_25_LINHAS2_D15C','GERADOR Resultados 25 Linhas', '.Etapa 5 - com o filtro de Pares e ìmpares.');
    IF (Cb_Blocos5.ItemIndex =1) THEN
        GerarBlocoNotas1('GERADOR_RESULT_25_LINHAS2_D15d','GERADOR Resultados 25 Linhas',' - Final na Etapa 6: Blocos de 5.') ;
    if (Cb_TriplasDuplas.ItemIndex < 5) then
        GerarBlocoNotas1('GERADOR_RESULT_25_LINHAS2_D15e','GERADOR Resultados 25 Linhas' ,'.Final na Etapa 7: Triplas e Duplas: '+Cb_TriplasDuplas.Text);
    SHOWMESSAGE('BLOCO DE NOTAS GERADO');
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.GerarBlocoNotas1(vc_Nome_Tabela, vcTitulo, vcSubTitulo: String);
var
    viContar, vc_qtd_pares : Integer;
    vcCombinacoes2 : String;
begin
    Mem_Combinacoes_Todas.Clear;
    DM1.IBQ_Combinacoes.Close;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM ' +vc_Nome_Tabela+ ';')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    viContar := DM1.IBQ_Combinacoes.FIELDBYNAME('SOMADADOS').AsInteger;
     Mem_Combinacoes_Todas.Lines.Add(vcTitulo) ;
     Mem_Combinacoes_Todas.Lines.Add(vcSubTitulo) ;
    Mem_Combinacoes_Todas.Lines.Add('TOTAL: ' + viContar.ToString) ;
    Mem_Combinacoes_Todas.Lines.Add('----------------------------') ;
    DM1.IBQ_Combinacoes.SQL.Clear;
    DM1.IBQ_Combinacoes.SQL.Add('select DISTINCT (dados), dados_ns FROM ' +vc_Nome_Tabela+ ' ORDER BY DADOS;')  ;
    DM1.IBQ_Combinacoes.Prepare;
    DM1.IBQ_Combinacoes.Open;
    DM1.IBQ_Combinacoes.First;
    WHILE (NOT(DM1.IBQ_Combinacoes.Eof)) DO
    BEGIN
       vcCombinacoes2 := '';
        vcCombinacoes2 := trim(DM1.IBQ_Combinacoes.FIELDBYNAME('DADOS').AsString);
            Mem_Combinacoes_Todas.Lines.Add(vcCombinacoes2) ;
       DM1.IBQ_Combinacoes.Next;
    END; // FOR viContar
    Mem_Combinacoes_Todas.Repaint;
    //Mem_Combinacoes_Todas.SelectAll;
    //Mem_Combinacoes_Todas.CopyToClipboard;
    //Mem_Combinacoes_Todas.Repaint;
    Mem_Combinacoes_Todas.Lines.SaveToFile('C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT');
    winExec(PAnsiChar('Notepad.exe C:\CXLOTOFACIL\'+vc_Nome_Tabela+'.TXT'), sw_shownormal);
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar23Etapa8();
VAR
     VI_AN_Comb1, viContarCelulas, viContar, viContarStgGrid : Integer;
     vcQUERY, vc_Nome_Tabela : String;
     vcCombinacoes10, vcCombinacoes13, vc_Contador_da_Tabela, vcNumeroNo23,vcNumerosNo02 : String;
BEGIN
  //VI_TOTALGERADO := Stgr_Comb10.RowCount-1;
    // ************************
    // **   BANCO DE DADOS   **
    // ************************
    SELF.Repaint;
    // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
    viContarStgGrid := TRUNC((Stgr_Limit23_comb13.RowCount-1)/1);
 FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
 BEGIN
     FOR viContarCelulas := 1 TO 25 DO
     BEGIN
          Stgr_Todos_Numeros.Cells [viContarCelulas ,1]:='Z';
     end;
     vcNumeroNo23 := Stgr_Limit23_comb13.Cells[15,VI_AN_Comb1];
     vcNumerosNo02 := Trim(Stgr_Limitador23_comb02.Cells[01,vcNumeroNo23.ToInteger]) +' '+ Trim(Stgr_Limitador23_comb02.Cells[02,vcNumeroNo23.ToInteger]);
     FOR viContarCelulas := 2 TO 24 DO
     BEGIN
         Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Limit23_comb23.Cells[viContarCelulas, vcNumeroNo23.ToInteger])) ,1]:='F';
     END; // FOR viContarCelulas
     vcCombinacoes13 :='';
     FOR viContarCelulas := 1 TO 13 DO
     BEGIN
         vcCombinacoes13 := vcCombinacoes13 + TRIM(Stgr_Limit23_comb13.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
         Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Limit23_comb13.Cells[viContarCelulas,VI_AN_Comb1])) ,1]:='V';
         vc_Contador_da_Tabela :=  Stgr_Limit23_comb13.Cells[1,VI_AN_Comb1] ;
     END; // FOR viContarCelulas
         // -------------------------------
         // --  MONTANDO AS 10 SOBRAS   ---
         // -------------------------------
            viContarCelulas := 1;
            vcCombinacoes10 := '';
            FOR viContar :=1 TO 25 DO
            BEGIN
                // SOBRAS
                IF (Stgr_Todos_Numeros.Cells[viContar,1]='F') THEN
                BEGIN
                    vcCombinacoes10 := vcCombinacoes10 + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                    viContarCelulas := viContarCelulas + 1;
                END; // IF (Stgr_Todos_Numeros
            END; // FOR viContar
    vc_Nome_Tabela := ' GERADOR_RESULT_25LINHAS2_13E8';
     vcQUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (N, DADOS, DADOS_NS, NumerosNo02) VALUES('
           +#39+  TRIM(vcNumeroNo23)  + #39 +','
           +#39+  TRIM(vcCombinacoes13)  + #39 +','
           +#39+  TRIM(vcCombinacoes10)  + #39 +','
           +#39+  TRIM(vcNumerosNo02)
           +#39+ ');';
     DM1.IBQ_Combin_02.SQL.Clear;
     DM1.IBQ_Combin_02.SQL.Add(vcQUERY)  ;
     DM1.IBQ_Combin_02.ExecSQL;
 END; // FOR VI_AN_Comb1
 DM1.IBQ_Combin_02.SQL.Clear;
 DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
 DM1.IBQ_Combin_02.ExecSQL;
 SLEEP(14);
 DM1.IBQ_Combin_02.SQL.Clear;
END;


Procedure T_F_Gerador_ResDiv_25Linhas2.PR_Gravar_Dados23Comb15 (vcNomeTabela: String);
VAR
   VI_AN_Comb1, viContarCelulas, viContar, viContarStgGrid : Integer;
   vcQUERY, vc_Nome_Tabela : String;
   vcCombinacoes10, vcCombinacoes15, vc_Contador_da_Tabela : String;
BEGIN
   SELF.Repaint;
   // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
   IF Trim(vcNomeTabela) = 'GERADOR_RESULT_25_LINHAS2_23_15' THEN viContarStgGrid := TRUNC((Stgr_Limit23_comb15.RowCount-1)/1);
   IF Trim(vcNomeTabela) = 'GERADOR_RESULT_25_LINHAS2_19_15' THEN viContarStgGrid := TRUNC((Stgr_Limit19_comb15.RowCount-1)/1);
   IF Trim(vcNomeTabela) = 'GERADOR_RESULT_25_Etp11Bloc4' THEN viContarStgGrid := TRUNC((Stgr_Etp11Bloc4.RowCount-1)/1);
   FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
   BEGIN
     vcCombinacoes15 :='';
     FOR viContarCelulas := 1 TO 15 DO
     BEGIN
         IF Trim(vcNomeTabela) = 'GERADOR_RESULT_25_LINHAS2_23_15' THEN vcCombinacoes15 := vcCombinacoes15 + TRIM(Stgr_Limit23_comb15.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
         IF Trim(vcNomeTabela) = 'GERADOR_RESULT_25_LINHAS2_19_15' THEN vcCombinacoes15 := vcCombinacoes15 + TRIM(Stgr_Limit19_comb15.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
         IF Trim(vcNomeTabela) = 'GERADOR_RESULT_25_Etp11Bloc4' THEN vcCombinacoes15 := vcCombinacoes15 + TRIM(Stgr_Etp11Bloc4.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
     END; // FOR viContarCelulas
     vcQUERY  := 'INSERT INTO ' +vcNomeTabela+ ' (DADOS) VALUES('
           +#39+  TRIM(vcCombinacoes15)
           +#39+ ');';
     DM1.IBQ_Combin_02.SQL.Clear;
     DM1.IBQ_Combin_02.SQL.Add(vcQUERY)  ;
     DM1.IBQ_Combin_02.ExecSQL;
   END; // FOR VI_AN_Comb1
   DM1.IBQ_Combin_02.SQL.Clear;
   DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
   DM1.IBQ_Combin_02.ExecSQL;
   SLEEP(14);
   DM1.IBQ_Combin_02.SQL.Clear;
END;


Procedure T_F_Gerador_ResDiv_25Linhas2.btLimitador23Click(Sender: TObject);
var
   viQtdDados, viLinhas, viNumeroDeLinhas, viComb01, viComb02, viComb03, viComb04, viComb05, viComb06, viComb07 : Integer;
   vsiSoma : SMALLInt;
   vasLimitador23_Grupo1A : array [1..7,1..8] of String;
   vasLimitador23_Grupo1B : array [1..6,1..7] of String;
   vasLimitador23_SobraGrupo1A : array [1..8] of String;
   vasLimitador23_SobraGrupo1B : array [1..7] of String;
   vasLimitador23_Grupo2A : array [1..7,1..8] of String;
   vasLimitador23_Grupo2B : array [1..6,1..7] of String;
   vasLimitador23_SobraGrupo2A : array [1..8] of String;
   vasLimitador23_SobraGrupo2B : array [1..7] of String;
   vcCombinacoes15 : String;
begin
      DM1.IBQ_Combinacoes.SQL.Clear;
      DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25LINHAS2_13E8')  ;
      DM1.IBQ_Combinacoes.ExecSQL;
      DM1.IBQ_Combinacoes.SQL.Clear;
      DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_1tm15');
      DM1.IBQ_Combinacoes.ExecSQL;
      DM1.IBQ_Combinacoes.SQL.Clear;
      DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_23_15');
      DM1.IBQ_Combinacoes.ExecSQL;
      DM1.IBQ_Combinacoes.SQL.Clear;
      DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      DM1.IBQ_Combinacoes.ExecSQL;
   Pgbr_EtaPa_08.Position :=0;
   Stgr_Limit23_comb23.ColWidths [0]:= 60  ;
   Stgr_Limitador23_comb02.ColWidths [0]:= 60  ;
   Stgr_Limit23_pre13A5.ColWidths [0]:= 60  ;
   Stgr_Limit23_pre13B2.ColWidths [0]:= 40  ;
   Stgr_Limit23_pre13B2.ColWidths [1]:= 40  ;
   Stgr_Limit23_pre13B2.ColWidths [2]:= 40  ;
   Stgr_Limit23_pre13A4.ColWidths [0]:= 60  ;
   Stgr_Limit23_pre13B3.ColWidths [0]:= 60  ;
   Stgr_Limit23_pre13A3.ColWidths [0]:= 60  ;
   Stgr_Limit23_pre13B4.ColWidths [0]:= 60  ;
   Stgr_Limit23_pre13C3.ColWidths [0]:= 60  ;
   Stgr_Limit23_pre13D3.ColWidths [0]:= 60  ;
   Stgr_Limit23_comb13.ColWidths [0]:= 60  ;
   Stgr_Limit23_comb13.ColWidths [14]:= 118 ;
   Stgr_Limit23_comb10.ColWidths [0]:= 60  ;
   Stgr_Limit23_comb15.ColWidths [0]:= 60  ;
   // ----> Grupo 1A
   // Linha 01
   vasLimitador23_Grupo1A[1,1] := Stgr_Limitador23_Grupo1A.Cells[1,0];
   vasLimitador23_Grupo1A[2,1] := Stgr_Limitador23_Grupo1A.Cells[2,0];
   vasLimitador23_Grupo1A[3,1] := Stgr_Limitador23_Grupo1A.Cells[3,0];
   vasLimitador23_Grupo1A[4,1] := Stgr_Limitador23_Grupo1A.Cells[4,0];
   vasLimitador23_Grupo1A[5,1] := Stgr_Limitador23_Grupo1A.Cells[5,0];
   vasLimitador23_Grupo1A[6,1] := Stgr_Limitador23_Grupo1A.Cells[6,0];
   vasLimitador23_Grupo1A[7,1] := Stgr_Limitador23_Grupo1A.Cells[7,0];
     vasLimitador23_SobraGrupo1A[1] := Stgr_Limitador23_Grupo1A.Cells[8,0];
   // Linha 02
   vasLimitador23_Grupo1A[1,2] := Stgr_Limitador23_Grupo1A.Cells[1,0];
   vasLimitador23_Grupo1A[2,2] := Stgr_Limitador23_Grupo1A.Cells[2,0];
   vasLimitador23_Grupo1A[3,2] := Stgr_Limitador23_Grupo1A.Cells[3,0];
   vasLimitador23_Grupo1A[4,2] := Stgr_Limitador23_Grupo1A.Cells[4,0];
   vasLimitador23_Grupo1A[5,2] := Stgr_Limitador23_Grupo1A.Cells[5,0];
   vasLimitador23_Grupo1A[6,2] := Stgr_Limitador23_Grupo1A.Cells[6,0];
   vasLimitador23_Grupo1A[7,2] := Stgr_Limitador23_Grupo1A.Cells[8,0];
     vasLimitador23_SobraGrupo1A[2] := Stgr_Limitador23_Grupo1A.Cells[7,0];
   // Linha 03
   vasLimitador23_Grupo1A[1,3] := Stgr_Limitador23_Grupo1A.Cells[1,0];
   vasLimitador23_Grupo1A[2,3] := Stgr_Limitador23_Grupo1A.Cells[2,0];
   vasLimitador23_Grupo1A[3,3] := Stgr_Limitador23_Grupo1A.Cells[3,0];
   vasLimitador23_Grupo1A[4,3] := Stgr_Limitador23_Grupo1A.Cells[4,0];
   vasLimitador23_Grupo1A[5,3] := Stgr_Limitador23_Grupo1A.Cells[5,0];
   vasLimitador23_Grupo1A[6,3] := Stgr_Limitador23_Grupo1A.Cells[7,0];
   vasLimitador23_Grupo1A[7,3] := Stgr_Limitador23_Grupo1A.Cells[8,0];
     vasLimitador23_SobraGrupo1A[3] := Stgr_Limitador23_Grupo1A.Cells[6,0];
   // Linha 04
   vasLimitador23_Grupo1A[1,4] := Stgr_Limitador23_Grupo1A.Cells[1,0];
   vasLimitador23_Grupo1A[2,4] := Stgr_Limitador23_Grupo1A.Cells[2,0];
   vasLimitador23_Grupo1A[3,4] := Stgr_Limitador23_Grupo1A.Cells[3,0];
   vasLimitador23_Grupo1A[4,4] := Stgr_Limitador23_Grupo1A.Cells[4,0];
   vasLimitador23_Grupo1A[5,4] := Stgr_Limitador23_Grupo1A.Cells[6,0];
   vasLimitador23_Grupo1A[6,4] := Stgr_Limitador23_Grupo1A.Cells[7,0];
   vasLimitador23_Grupo1A[7,4] := Stgr_Limitador23_Grupo1A.Cells[8,0];
     vasLimitador23_SobraGrupo1A[4] := Stgr_Limitador23_Grupo1A.Cells[5,0];
   // Linha 05
   vasLimitador23_Grupo1A[1,5] := Stgr_Limitador23_Grupo1A.Cells[1,0];
   vasLimitador23_Grupo1A[2,5] := Stgr_Limitador23_Grupo1A.Cells[2,0];
   vasLimitador23_Grupo1A[3,5] := Stgr_Limitador23_Grupo1A.Cells[3,0];
   vasLimitador23_Grupo1A[4,5] := Stgr_Limitador23_Grupo1A.Cells[5,0];
   vasLimitador23_Grupo1A[5,5] := Stgr_Limitador23_Grupo1A.Cells[6,0];
   vasLimitador23_Grupo1A[6,5] := Stgr_Limitador23_Grupo1A.Cells[7,0];
   vasLimitador23_Grupo1A[7,5] := Stgr_Limitador23_Grupo1A.Cells[8,0];
     vasLimitador23_SobraGrupo1A[5] := Stgr_Limitador23_Grupo1A.Cells[4,0];
   // Linha 06
   vasLimitador23_Grupo1A[1,6] := Stgr_Limitador23_Grupo1A.Cells[1,0];
   vasLimitador23_Grupo1A[2,6] := Stgr_Limitador23_Grupo1A.Cells[2,0];
   vasLimitador23_Grupo1A[3,6] := Stgr_Limitador23_Grupo1A.Cells[4,0];
   vasLimitador23_Grupo1A[4,6] := Stgr_Limitador23_Grupo1A.Cells[5,0];
   vasLimitador23_Grupo1A[5,6] := Stgr_Limitador23_Grupo1A.Cells[6,0];
   vasLimitador23_Grupo1A[6,6] := Stgr_Limitador23_Grupo1A.Cells[7,0];
   vasLimitador23_Grupo1A[7,6] := Stgr_Limitador23_Grupo1A.Cells[8,0];
     vasLimitador23_SobraGrupo1A[6] := Stgr_Limitador23_Grupo1A.Cells[3,0];
   // Linha 07
   vasLimitador23_Grupo1A[1,7] := Stgr_Limitador23_Grupo1A.Cells[1,0];
   vasLimitador23_Grupo1A[2,7] := Stgr_Limitador23_Grupo1A.Cells[3,0];
   vasLimitador23_Grupo1A[3,7] := Stgr_Limitador23_Grupo1A.Cells[4,0];
   vasLimitador23_Grupo1A[4,7] := Stgr_Limitador23_Grupo1A.Cells[5,0];
   vasLimitador23_Grupo1A[5,7] := Stgr_Limitador23_Grupo1A.Cells[6,0];
   vasLimitador23_Grupo1A[6,7] := Stgr_Limitador23_Grupo1A.Cells[7,0];
   vasLimitador23_Grupo1A[7,7] := Stgr_Limitador23_Grupo1A.Cells[8,0];
     vasLimitador23_SobraGrupo1A[7] := Stgr_Limitador23_Grupo1A.Cells[2,0];
   // Linha 08
   vasLimitador23_Grupo1A[1,8] := Stgr_Limitador23_Grupo1A.Cells[2,0];
   vasLimitador23_Grupo1A[2,8] := Stgr_Limitador23_Grupo1A.Cells[3,0];
   vasLimitador23_Grupo1A[3,8] := Stgr_Limitador23_Grupo1A.Cells[4,0];
   vasLimitador23_Grupo1A[4,8] := Stgr_Limitador23_Grupo1A.Cells[5,0];
   vasLimitador23_Grupo1A[5,8] := Stgr_Limitador23_Grupo1A.Cells[6,0];
   vasLimitador23_Grupo1A[6,8] := Stgr_Limitador23_Grupo1A.Cells[7,0];
   vasLimitador23_Grupo1A[7,8] := Stgr_Limitador23_Grupo1A.Cells[8,0];
     vasLimitador23_SobraGrupo1A[8] := Stgr_Limitador23_Grupo1A.Cells[1,0];
   // ----> Grupo 1B
   // Linha 01
   vasLimitador23_Grupo1B[1,1] := Stgr_Limitador23_Grupo1B.Cells[1,0];
   vasLimitador23_Grupo1B[2,1] := Stgr_Limitador23_Grupo1B.Cells[2,0];
   vasLimitador23_Grupo1B[3,1] := Stgr_Limitador23_Grupo1B.Cells[3,0];
   vasLimitador23_Grupo1B[4,1] := Stgr_Limitador23_Grupo1B.Cells[4,0];
   vasLimitador23_Grupo1B[5,1] := Stgr_Limitador23_Grupo1B.Cells[5,0];
   vasLimitador23_Grupo1B[6,1] := Stgr_Limitador23_Grupo1B.Cells[6,0];
     vasLimitador23_SobraGrupo1B[1] := Stgr_Limitador23_Grupo1B.Cells[7,0];
   // Linha 02
   vasLimitador23_Grupo1B[1,2] := Stgr_Limitador23_Grupo1B.Cells[1,0];
   vasLimitador23_Grupo1B[2,2] := Stgr_Limitador23_Grupo1B.Cells[2,0];
   vasLimitador23_Grupo1B[3,2] := Stgr_Limitador23_Grupo1B.Cells[3,0];
   vasLimitador23_Grupo1B[4,2] := Stgr_Limitador23_Grupo1B.Cells[4,0];
   vasLimitador23_Grupo1B[5,2] := Stgr_Limitador23_Grupo1B.Cells[5,0];
   vasLimitador23_Grupo1B[6,2] := Stgr_Limitador23_Grupo1B.Cells[7,0];
     vasLimitador23_SobraGrupo1B[2] := Stgr_Limitador23_Grupo1B.Cells[6,0];
   // Linha 03
   vasLimitador23_Grupo1B[1,3] := Stgr_Limitador23_Grupo1B.Cells[1,0];
   vasLimitador23_Grupo1B[2,3] := Stgr_Limitador23_Grupo1B.Cells[2,0];
   vasLimitador23_Grupo1B[3,3] := Stgr_Limitador23_Grupo1B.Cells[3,0];
   vasLimitador23_Grupo1B[4,3] := Stgr_Limitador23_Grupo1B.Cells[4,0];
   vasLimitador23_Grupo1B[5,3] := Stgr_Limitador23_Grupo1B.Cells[6,0];
   vasLimitador23_Grupo1B[6,3] := Stgr_Limitador23_Grupo1B.Cells[7,0];
     vasLimitador23_SobraGrupo1B[3] := Stgr_Limitador23_Grupo1B.Cells[5,0];
   // Linha 04
   vasLimitador23_Grupo1B[1,4] := Stgr_Limitador23_Grupo1B.Cells[1,0];
   vasLimitador23_Grupo1B[2,4] := Stgr_Limitador23_Grupo1B.Cells[2,0];
   vasLimitador23_Grupo1B[3,4] := Stgr_Limitador23_Grupo1B.Cells[3,0];
   vasLimitador23_Grupo1B[4,4] := Stgr_Limitador23_Grupo1B.Cells[5,0];
   vasLimitador23_Grupo1B[5,4] := Stgr_Limitador23_Grupo1B.Cells[6,0];
   vasLimitador23_Grupo1B[6,4] := Stgr_Limitador23_Grupo1B.Cells[7,0];
     vasLimitador23_SobraGrupo1B[4] := Stgr_Limitador23_Grupo1B.Cells[4,0];
   // Linha 05
   vasLimitador23_Grupo1B[1,5] := Stgr_Limitador23_Grupo1B.Cells[1,0];
   vasLimitador23_Grupo1B[2,5] := Stgr_Limitador23_Grupo1B.Cells[2,0];
   vasLimitador23_Grupo1B[3,5] := Stgr_Limitador23_Grupo1B.Cells[4,0];
   vasLimitador23_Grupo1B[4,5] := Stgr_Limitador23_Grupo1B.Cells[5,0];
   vasLimitador23_Grupo1B[5,5] := Stgr_Limitador23_Grupo1B.Cells[6,0];
   vasLimitador23_Grupo1B[6,5] := Stgr_Limitador23_Grupo1B.Cells[7,0];
     vasLimitador23_SobraGrupo1B[5] := Stgr_Limitador23_Grupo1B.Cells[3,0];
   // Linha 06
   vasLimitador23_Grupo1B[1,6] := Stgr_Limitador23_Grupo1B.Cells[1,0];
   vasLimitador23_Grupo1B[2,6] := Stgr_Limitador23_Grupo1B.Cells[3,0];
   vasLimitador23_Grupo1B[3,6] := Stgr_Limitador23_Grupo1B.Cells[4,0];
   vasLimitador23_Grupo1B[4,6] := Stgr_Limitador23_Grupo1B.Cells[5,0];
   vasLimitador23_Grupo1B[5,6] := Stgr_Limitador23_Grupo1B.Cells[6,0];
   vasLimitador23_Grupo1B[6,6] := Stgr_Limitador23_Grupo1B.Cells[7,0];
     vasLimitador23_SobraGrupo1B[6] := Stgr_Limitador23_Grupo1B.Cells[2,0];
   // Linha 07
   vasLimitador23_Grupo1B[1,7] := Stgr_Limitador23_Grupo1B.Cells[2,0];
   vasLimitador23_Grupo1B[2,7] := Stgr_Limitador23_Grupo1B.Cells[3,0];
   vasLimitador23_Grupo1B[3,7] := Stgr_Limitador23_Grupo1B.Cells[4,0];
   vasLimitador23_Grupo1B[4,7] := Stgr_Limitador23_Grupo1B.Cells[5,0];
   vasLimitador23_Grupo1B[5,7] := Stgr_Limitador23_Grupo1B.Cells[6,0];
   vasLimitador23_Grupo1B[6,7] := Stgr_Limitador23_Grupo1B.Cells[7,0];
     vasLimitador23_SobraGrupo1B[7] := Stgr_Limitador23_Grupo1B.Cells[1,0];
   viLinhas := 1;
   for viComb01 := 1 to 8 do
   begin
      for viComb02 := 1 to 7 do
      begin
         Stgr_Limit23_comb23.Cells[00,viLinhas] := viLinhas.ToString ;
         Stgr_Limit23_comb23.Cells[01,viLinhas] := '1';
         Stgr_Limit23_comb23.Cells[02,viLinhas] := Trim (vasLimitador23_Grupo1A[1,viComb01]);
         Stgr_Limit23_comb23.Cells[03,viLinhas] := Trim (vasLimitador23_Grupo1A[2,viComb01]);
         Stgr_Limit23_comb23.Cells[04,viLinhas] := Trim (vasLimitador23_Grupo1A[3,viComb01]);
         Stgr_Limit23_comb23.Cells[05,viLinhas] := Trim (vasLimitador23_Grupo1A[4,viComb01]);
         Stgr_Limit23_comb23.Cells[06,viLinhas] := Trim (vasLimitador23_Grupo1A[5,viComb01]);
         Stgr_Limit23_comb23.Cells[07,viLinhas] := Trim (vasLimitador23_Grupo1A[6,viComb01]);
         Stgr_Limit23_comb23.Cells[08,viLinhas] := Trim (vasLimitador23_Grupo1A[7,viComb01]);
         Stgr_Limit23_comb23.Cells[09,viLinhas] := Trim (vasLimitador23_Grupo1B[1,viComb02]);
         Stgr_Limit23_comb23.Cells[10,viLinhas] := Trim (vasLimitador23_Grupo1B[2,viComb02]);
         Stgr_Limit23_comb23.Cells[11,viLinhas] := Trim (vasLimitador23_Grupo1B[3,viComb02]);
         Stgr_Limit23_comb23.Cells[12,viLinhas] := Trim (vasLimitador23_Grupo1B[4,viComb02]);
         Stgr_Limit23_comb23.Cells[13,viLinhas] := Trim (vasLimitador23_Grupo1B[5,viComb02]);
         Stgr_Limit23_comb23.Cells[14,viLinhas] := Trim (vasLimitador23_Grupo1B[6,viComb02]);
         Stgr_Limit23_comb23.Cells[15,viLinhas] := Trim (Stgr_Limitador23_Grupo1C.Cells[1,0]);
         Stgr_Limit23_comb23.Cells[16,viLinhas] := Trim (Stgr_Limitador23_Grupo1C.Cells[2,0]);
         Stgr_Limit23_comb23.Cells[17,viLinhas] := Trim (Stgr_Limitador23_Grupo1C.Cells[3,0]);
         Stgr_Limit23_comb23.Cells[18,viLinhas] := Trim (Stgr_Limitador23_Grupo1C.Cells[4,0]);
         Stgr_Limit23_comb23.Cells[19,viLinhas] := Trim (Stgr_Limitador23_Grupo1C.Cells[5,0]);
         Stgr_Limit23_comb23.Cells[20,viLinhas] := Trim (Stgr_Limitador23_Grupo1D.Cells[1,0]);
         Stgr_Limit23_comb23.Cells[21,viLinhas] := Trim (Stgr_Limitador23_Grupo1D.Cells[2,0]);
         Stgr_Limit23_comb23.Cells[22,viLinhas] := Trim (Stgr_Limitador23_Grupo1D.Cells[3,0]);
         Stgr_Limit23_comb23.Cells[23,viLinhas] := Trim (Stgr_Limitador23_Grupo1D.Cells[4,0]);
         Stgr_Limit23_comb23.Cells[24,viLinhas] := Trim (Stgr_Limitador23_Grupo1D.Cells[5,0]);
         vsiSoma := STRtoINT(vasLimitador23_Grupo1A[1,viComb01])
                    + STRtoINT(vasLimitador23_Grupo1A[2,viComb01])
                    + STRtoINT(vasLimitador23_Grupo1A[3,viComb01])
                    + STRtoINT(vasLimitador23_Grupo1A[4,viComb01])
                    + STRtoINT(vasLimitador23_Grupo1A[5,viComb01])
                    + STRtoINT(vasLimitador23_Grupo1A[6,viComb01])
                    + STRtoINT(vasLimitador23_Grupo1A[7,viComb01])
                    + STRtoINT(vasLimitador23_Grupo1B[1,viComb02])
                    + STRtoINT(vasLimitador23_Grupo1B[2,viComb02])
                    + STRtoINT(vasLimitador23_Grupo1B[3,viComb02])
                    + STRtoINT(vasLimitador23_Grupo1B[4,viComb02])
                    + STRtoINT(vasLimitador23_Grupo1B[5,viComb02])
                    + STRtoINT(vasLimitador23_Grupo1B[6,viComb02])
                    + STRtoINT(Stgr_Limitador23_Grupo1C.Cells[1,0])
                    + STRtoINT(Stgr_Limitador23_Grupo1C.Cells[2,0])
                    + STRtoINT(Stgr_Limitador23_Grupo1C.Cells[3,0])
                    + STRtoINT(Stgr_Limitador23_Grupo1C.Cells[4,0])
                    + STRtoINT(Stgr_Limitador23_Grupo1C.Cells[5,0])
                    + STRtoINT(Stgr_Limitador23_Grupo1D.Cells[1,0])
                    + STRtoINT(Stgr_Limitador23_Grupo1D.Cells[2,0])
                    + STRtoINT(Stgr_Limitador23_Grupo1D.Cells[3,0])
                    + STRtoINT(Stgr_Limitador23_Grupo1D.Cells[4,0])
                    + STRtoINT(Stgr_Limitador23_Grupo1D.Cells[5,0]);
         if vsiSoma=299 then
         begin
            Stgr_Limitador23_comb02.Cells[00,viLinhas] := viLinhas.ToString ;
            Stgr_Limitador23_comb02.Cells[01,viLinhas] := Trim (vasLimitador23_SobraGrupo1A[viComb01]);
            Stgr_Limitador23_comb02.Cells[02,viLinhas] := Trim (vasLimitador23_SobraGrupo1B[viComb02]);
            viLinhas := viLinhas + 1
         end;
      end;
   end;
   // ----> Grupo 2A
   // Linha 01
   vasLimitador23_Grupo2A[1,1] := Stgr_Limitador23_Grupo2A.Cells[1,0];
   vasLimitador23_Grupo2A[2,1] := Stgr_Limitador23_Grupo2A.Cells[2,0];
   vasLimitador23_Grupo2A[3,1] := Stgr_Limitador23_Grupo2A.Cells[3,0];
   vasLimitador23_Grupo2A[4,1] := Stgr_Limitador23_Grupo2A.Cells[4,0];
   vasLimitador23_Grupo2A[5,1] := Stgr_Limitador23_Grupo2A.Cells[5,0];
   vasLimitador23_Grupo2A[6,1] := Stgr_Limitador23_Grupo2A.Cells[6,0];
   vasLimitador23_Grupo2A[7,1] := Stgr_Limitador23_Grupo2A.Cells[7,0];
     vasLimitador23_SobraGrupo2A[1] := Stgr_Limitador23_Grupo2A.Cells[8,0];
   // Linha 02
   vasLimitador23_Grupo2A[1,2] := Stgr_Limitador23_Grupo2A.Cells[1,0];
   vasLimitador23_Grupo2A[2,2] := Stgr_Limitador23_Grupo2A.Cells[2,0];
   vasLimitador23_Grupo2A[3,2] := Stgr_Limitador23_Grupo2A.Cells[3,0];
   vasLimitador23_Grupo2A[4,2] := Stgr_Limitador23_Grupo2A.Cells[4,0];
   vasLimitador23_Grupo2A[5,2] := Stgr_Limitador23_Grupo2A.Cells[5,0];
   vasLimitador23_Grupo2A[6,2] := Stgr_Limitador23_Grupo2A.Cells[6,0];
   vasLimitador23_Grupo2A[7,2] := Stgr_Limitador23_Grupo2A.Cells[8,0];
     vasLimitador23_SobraGrupo2A[2] := Stgr_Limitador23_Grupo2A.Cells[7,0];
   // Linha 03
   vasLimitador23_Grupo2A[1,3] := Stgr_Limitador23_Grupo2A.Cells[1,0];
   vasLimitador23_Grupo2A[2,3] := Stgr_Limitador23_Grupo2A.Cells[2,0];
   vasLimitador23_Grupo2A[3,3] := Stgr_Limitador23_Grupo2A.Cells[3,0];
   vasLimitador23_Grupo2A[4,3] := Stgr_Limitador23_Grupo2A.Cells[4,0];
   vasLimitador23_Grupo2A[5,3] := Stgr_Limitador23_Grupo2A.Cells[5,0];
   vasLimitador23_Grupo2A[6,3] := Stgr_Limitador23_Grupo2A.Cells[7,0];
   vasLimitador23_Grupo2A[7,3] := Stgr_Limitador23_Grupo2A.Cells[8,0];
     vasLimitador23_SobraGrupo2A[3] := Stgr_Limitador23_Grupo2A.Cells[6,0];
   // Linha 04
   vasLimitador23_Grupo2A[1,4] := Stgr_Limitador23_Grupo2A.Cells[1,0];
   vasLimitador23_Grupo2A[2,4] := Stgr_Limitador23_Grupo2A.Cells[2,0];
   vasLimitador23_Grupo2A[3,4] := Stgr_Limitador23_Grupo2A.Cells[3,0];
   vasLimitador23_Grupo2A[4,4] := Stgr_Limitador23_Grupo2A.Cells[4,0];
   vasLimitador23_Grupo2A[5,4] := Stgr_Limitador23_Grupo2A.Cells[6,0];
   vasLimitador23_Grupo2A[6,4] := Stgr_Limitador23_Grupo2A.Cells[7,0];
   vasLimitador23_Grupo2A[7,4] := Stgr_Limitador23_Grupo2A.Cells[8,0];
     vasLimitador23_SobraGrupo2A[4] := Stgr_Limitador23_Grupo2A.Cells[5,0];
   // Linha 05
   vasLimitador23_Grupo2A[1,5] := Stgr_Limitador23_Grupo2A.Cells[1,0];
   vasLimitador23_Grupo2A[2,5] := Stgr_Limitador23_Grupo2A.Cells[2,0];
   vasLimitador23_Grupo2A[3,5] := Stgr_Limitador23_Grupo2A.Cells[3,0];
   vasLimitador23_Grupo2A[4,5] := Stgr_Limitador23_Grupo2A.Cells[5,0];
   vasLimitador23_Grupo2A[5,5] := Stgr_Limitador23_Grupo2A.Cells[6,0];
   vasLimitador23_Grupo2A[6,5] := Stgr_Limitador23_Grupo2A.Cells[7,0];
   vasLimitador23_Grupo2A[7,5] := Stgr_Limitador23_Grupo2A.Cells[8,0];
     vasLimitador23_SobraGrupo2A[5] := Stgr_Limitador23_Grupo2A.Cells[4,0];
   // Linha 06
   vasLimitador23_Grupo2A[1,6] := Stgr_Limitador23_Grupo2A.Cells[1,0];
   vasLimitador23_Grupo2A[2,6] := Stgr_Limitador23_Grupo2A.Cells[2,0];
   vasLimitador23_Grupo2A[3,6] := Stgr_Limitador23_Grupo2A.Cells[4,0];
   vasLimitador23_Grupo2A[4,6] := Stgr_Limitador23_Grupo2A.Cells[5,0];
   vasLimitador23_Grupo2A[5,6] := Stgr_Limitador23_Grupo2A.Cells[6,0];
   vasLimitador23_Grupo2A[6,6] := Stgr_Limitador23_Grupo2A.Cells[7,0];
   vasLimitador23_Grupo2A[7,6] := Stgr_Limitador23_Grupo2A.Cells[8,0];
     vasLimitador23_SobraGrupo2A[6] := Stgr_Limitador23_Grupo2A.Cells[3,0];
   // Linha 07
   vasLimitador23_Grupo2A[1,7] := Stgr_Limitador23_Grupo2A.Cells[1,0];
   vasLimitador23_Grupo2A[2,7] := Stgr_Limitador23_Grupo2A.Cells[3,0];
   vasLimitador23_Grupo2A[3,7] := Stgr_Limitador23_Grupo2A.Cells[4,0];
   vasLimitador23_Grupo2A[4,7] := Stgr_Limitador23_Grupo2A.Cells[5,0];
   vasLimitador23_Grupo2A[5,7] := Stgr_Limitador23_Grupo2A.Cells[6,0];
   vasLimitador23_Grupo2A[6,7] := Stgr_Limitador23_Grupo2A.Cells[7,0];
   vasLimitador23_Grupo2A[7,7] := Stgr_Limitador23_Grupo2A.Cells[8,0];
     vasLimitador23_SobraGrupo2A[7] := Stgr_Limitador23_Grupo2A.Cells[2,0];
   // Linha 08
   vasLimitador23_Grupo2A[1,8] := Stgr_Limitador23_Grupo2A.Cells[2,0];
   vasLimitador23_Grupo2A[2,8] := Stgr_Limitador23_Grupo2A.Cells[3,0];
   vasLimitador23_Grupo2A[3,8] := Stgr_Limitador23_Grupo2A.Cells[4,0];
   vasLimitador23_Grupo2A[4,8] := Stgr_Limitador23_Grupo2A.Cells[5,0];
   vasLimitador23_Grupo2A[5,8] := Stgr_Limitador23_Grupo2A.Cells[6,0];
   vasLimitador23_Grupo2A[6,8] := Stgr_Limitador23_Grupo2A.Cells[7,0];
   vasLimitador23_Grupo2A[7,8] := Stgr_Limitador23_Grupo2A.Cells[8,0];
     vasLimitador23_SobraGrupo2A[8] := Stgr_Limitador23_Grupo2A.Cells[1,0];
   // ----> Grupo 2B
   // Linha 01
   vasLimitador23_Grupo2B[1,1] := Stgr_Limitador23_Grupo2B.Cells[1,0];
   vasLimitador23_Grupo2B[2,1] := Stgr_Limitador23_Grupo2B.Cells[2,0];
   vasLimitador23_Grupo2B[3,1] := Stgr_Limitador23_Grupo2B.Cells[3,0];
   vasLimitador23_Grupo2B[4,1] := Stgr_Limitador23_Grupo2B.Cells[4,0];
   vasLimitador23_Grupo2B[5,1] := Stgr_Limitador23_Grupo2B.Cells[5,0];
   vasLimitador23_Grupo2B[6,1] := Stgr_Limitador23_Grupo2B.Cells[6,0];
     vasLimitador23_SobraGrupo2B[1] := Stgr_Limitador23_Grupo2B.Cells[7,0];
   // Linha 02
   vasLimitador23_Grupo2B[1,2] := Stgr_Limitador23_Grupo2B.Cells[1,0];
   vasLimitador23_Grupo2B[2,2] := Stgr_Limitador23_Grupo2B.Cells[2,0];
   vasLimitador23_Grupo2B[3,2] := Stgr_Limitador23_Grupo2B.Cells[3,0];
   vasLimitador23_Grupo2B[4,2] := Stgr_Limitador23_Grupo2B.Cells[4,0];
   vasLimitador23_Grupo2B[5,2] := Stgr_Limitador23_Grupo2B.Cells[5,0];
   vasLimitador23_Grupo2B[6,2] := Stgr_Limitador23_Grupo2B.Cells[7,0];
     vasLimitador23_SobraGrupo2B[2] := Stgr_Limitador23_Grupo2B.Cells[6,0];
   // Linha 03
   vasLimitador23_Grupo2B[1,3] := Stgr_Limitador23_Grupo2B.Cells[1,0];
   vasLimitador23_Grupo2B[2,3] := Stgr_Limitador23_Grupo2B.Cells[2,0];
   vasLimitador23_Grupo2B[3,3] := Stgr_Limitador23_Grupo2B.Cells[3,0];
   vasLimitador23_Grupo2B[4,3] := Stgr_Limitador23_Grupo2B.Cells[4,0];
   vasLimitador23_Grupo2B[5,3] := Stgr_Limitador23_Grupo2B.Cells[6,0];
   vasLimitador23_Grupo2B[6,3] := Stgr_Limitador23_Grupo2B.Cells[7,0];
     vasLimitador23_SobraGrupo2B[3] := Stgr_Limitador23_Grupo2B.Cells[5,0];
   // Linha 04
   vasLimitador23_Grupo2B[1,4] := Stgr_Limitador23_Grupo2B.Cells[1,0];
   vasLimitador23_Grupo2B[2,4] := Stgr_Limitador23_Grupo2B.Cells[2,0];
   vasLimitador23_Grupo2B[3,4] := Stgr_Limitador23_Grupo2B.Cells[3,0];
   vasLimitador23_Grupo2B[4,4] := Stgr_Limitador23_Grupo2B.Cells[5,0];
   vasLimitador23_Grupo2B[5,4] := Stgr_Limitador23_Grupo2B.Cells[6,0];
   vasLimitador23_Grupo2B[6,4] := Stgr_Limitador23_Grupo2B.Cells[7,0];
     vasLimitador23_SobraGrupo2B[4] := Stgr_Limitador23_Grupo2B.Cells[4,0];
   // Linha 05
   vasLimitador23_Grupo2B[1,5] := Stgr_Limitador23_Grupo2B.Cells[1,0];
   vasLimitador23_Grupo2B[2,5] := Stgr_Limitador23_Grupo2B.Cells[2,0];
   vasLimitador23_Grupo2B[3,5] := Stgr_Limitador23_Grupo2B.Cells[4,0];
   vasLimitador23_Grupo2B[4,5] := Stgr_Limitador23_Grupo2B.Cells[5,0];
   vasLimitador23_Grupo2B[5,5] := Stgr_Limitador23_Grupo2B.Cells[6,0];
   vasLimitador23_Grupo2B[6,5] := Stgr_Limitador23_Grupo2B.Cells[7,0];
     vasLimitador23_SobraGrupo2B[5] := Stgr_Limitador23_Grupo2B.Cells[3,0];
   // Linha 06
   vasLimitador23_Grupo2B[1,6] := Stgr_Limitador23_Grupo2B.Cells[1,0];
   vasLimitador23_Grupo2B[2,6] := Stgr_Limitador23_Grupo2B.Cells[3,0];
   vasLimitador23_Grupo2B[3,6] := Stgr_Limitador23_Grupo2B.Cells[4,0];
   vasLimitador23_Grupo2B[4,6] := Stgr_Limitador23_Grupo2B.Cells[5,0];
   vasLimitador23_Grupo2B[5,6] := Stgr_Limitador23_Grupo2B.Cells[6,0];
   vasLimitador23_Grupo2B[6,6] := Stgr_Limitador23_Grupo2B.Cells[7,0];
     vasLimitador23_SobraGrupo2B[6] := Stgr_Limitador23_Grupo2B.Cells[2,0];
   // Linha 07
   vasLimitador23_Grupo2B[1,7] := Stgr_Limitador23_Grupo2B.Cells[2,0];
   vasLimitador23_Grupo2B[2,7] := Stgr_Limitador23_Grupo2B.Cells[3,0];
   vasLimitador23_Grupo2B[3,7] := Stgr_Limitador23_Grupo2B.Cells[4,0];
   vasLimitador23_Grupo2B[4,7] := Stgr_Limitador23_Grupo2B.Cells[5,0];
   vasLimitador23_Grupo2B[5,7] := Stgr_Limitador23_Grupo2B.Cells[6,0];
   vasLimitador23_Grupo2B[6,7] := Stgr_Limitador23_Grupo2B.Cells[7,0];
     vasLimitador23_SobraGrupo2B[7] := Stgr_Limitador23_Grupo2B.Cells[1,0];
   for viComb01 := 1 to 8 do
   begin
      for viComb02 := 1 to 7 do
      begin
         Stgr_Limit23_comb23.Cells[00,viLinhas] := viLinhas.ToString ;
         Stgr_Limit23_comb23.Cells[01,viLinhas] := '2';
         Stgr_Limit23_comb23.Cells[02,viLinhas] := Trim (vasLimitador23_Grupo2A[1,viComb01]);
         Stgr_Limit23_comb23.Cells[03,viLinhas] := Trim (vasLimitador23_Grupo2A[2,viComb01]);
         Stgr_Limit23_comb23.Cells[04,viLinhas] := Trim (vasLimitador23_Grupo2A[3,viComb01]);
         Stgr_Limit23_comb23.Cells[05,viLinhas] := Trim (vasLimitador23_Grupo2A[4,viComb01]);
         Stgr_Limit23_comb23.Cells[06,viLinhas] := Trim (vasLimitador23_Grupo2A[5,viComb01]);
         Stgr_Limit23_comb23.Cells[07,viLinhas] := Trim (vasLimitador23_Grupo2A[6,viComb01]);
         Stgr_Limit23_comb23.Cells[08,viLinhas] := Trim (vasLimitador23_Grupo2A[7,viComb01]);
         Stgr_Limit23_comb23.Cells[09,viLinhas] := Trim (vasLimitador23_Grupo2B[1,viComb02]);
         Stgr_Limit23_comb23.Cells[10,viLinhas] := Trim (vasLimitador23_Grupo2B[2,viComb02]);
         Stgr_Limit23_comb23.Cells[11,viLinhas] := Trim (vasLimitador23_Grupo2B[3,viComb02]);
         Stgr_Limit23_comb23.Cells[12,viLinhas] := Trim (vasLimitador23_Grupo2B[4,viComb02]);
         Stgr_Limit23_comb23.Cells[13,viLinhas] := Trim (vasLimitador23_Grupo2B[5,viComb02]);
         Stgr_Limit23_comb23.Cells[14,viLinhas] := Trim (vasLimitador23_Grupo2B[6,viComb02]);
         Stgr_Limit23_comb23.Cells[15,viLinhas] := Trim (Stgr_Limitador23_Grupo2C.Cells[1,0]);
         Stgr_Limit23_comb23.Cells[16,viLinhas] := Trim (Stgr_Limitador23_Grupo2C.Cells[2,0]);
         Stgr_Limit23_comb23.Cells[17,viLinhas] := Trim (Stgr_Limitador23_Grupo2C.Cells[3,0]);
         Stgr_Limit23_comb23.Cells[18,viLinhas] := Trim (Stgr_Limitador23_Grupo2C.Cells[4,0]);
         Stgr_Limit23_comb23.Cells[19,viLinhas] := Trim (Stgr_Limitador23_Grupo2C.Cells[5,0]);
         Stgr_Limit23_comb23.Cells[20,viLinhas] := Trim (Stgr_Limitador23_Grupo2D.Cells[1,0]);
         Stgr_Limit23_comb23.Cells[21,viLinhas] := Trim (Stgr_Limitador23_Grupo2D.Cells[2,0]);
         Stgr_Limit23_comb23.Cells[22,viLinhas] := Trim (Stgr_Limitador23_Grupo2D.Cells[3,0]);
         Stgr_Limit23_comb23.Cells[23,viLinhas] := Trim (Stgr_Limitador23_Grupo2D.Cells[4,0]);
         Stgr_Limit23_comb23.Cells[24,viLinhas] := Trim (Stgr_Limitador23_Grupo2D.Cells[5,0]);
         vsiSoma := STRtoINT(vasLimitador23_Grupo2A[1,viComb01])
                    + STRtoINT(vasLimitador23_Grupo2A[2,viComb01])
                    + STRtoINT(vasLimitador23_Grupo2A[3,viComb01])
                    + STRtoINT(vasLimitador23_Grupo2A[4,viComb01])
                    + STRtoINT(vasLimitador23_Grupo2A[5,viComb01])
                    + STRtoINT(vasLimitador23_Grupo2A[6,viComb01])
                    + STRtoINT(vasLimitador23_Grupo2A[7,viComb01])
                    + STRtoINT(vasLimitador23_Grupo2B[1,viComb02])
                    + STRtoINT(vasLimitador23_Grupo2B[2,viComb02])
                    + STRtoINT(vasLimitador23_Grupo2B[3,viComb02])
                    + STRtoINT(vasLimitador23_Grupo2B[4,viComb02])
                    + STRtoINT(vasLimitador23_Grupo2B[5,viComb02])
                    + STRtoINT(vasLimitador23_Grupo2B[6,viComb02])
                    + STRtoINT(Stgr_Limitador23_Grupo2C.Cells[1,0])
                    + STRtoINT(Stgr_Limitador23_Grupo2C.Cells[2,0])
                    + STRtoINT(Stgr_Limitador23_Grupo2C.Cells[3,0])
                    + STRtoINT(Stgr_Limitador23_Grupo2C.Cells[4,0])
                    + STRtoINT(Stgr_Limitador23_Grupo2C.Cells[5,0])
                    + STRtoINT(Stgr_Limitador23_Grupo2D.Cells[1,0])
                    + STRtoINT(Stgr_Limitador23_Grupo2D.Cells[2,0])
                    + STRtoINT(Stgr_Limitador23_Grupo2D.Cells[3,0])
                    + STRtoINT(Stgr_Limitador23_Grupo2D.Cells[4,0])
                    + STRtoINT(Stgr_Limitador23_Grupo2D.Cells[5,0]);
         if vsiSoma=299 then
         begin
            Stgr_Limitador23_comb02.Cells[00,viLinhas] := viLinhas.ToString ;
            Stgr_Limitador23_comb02.Cells[01,viLinhas] := Trim (vasLimitador23_SobraGrupo2A[viComb01]);
            Stgr_Limitador23_comb02.Cells[02,viLinhas] := Trim (vasLimitador23_SobraGrupo2B[viComb02]);
            viLinhas := viLinhas + 1
         end;
      end;
   end;
   Pgbr_EtaPa_08.Position :=10;
   Stgr_Limit23_comb23.RowCount := viLinhas;
   Stgr_Limitador23_comb02.RowCount := viLinhas;
   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit23_Comb23.RowCount-1 do
   begin
      for viComb01 := 2 to 4 do
      begin
         for viComb02 := viComb01+1 to 5 do
         begin
            for viComb03 := viComb02+1 to 6 do
            begin
               for viComb04 := viComb03+1 to 7 do
               begin
                  for viComb05 := viComb04+1 to 8 do
                  begin
                     Stgr_Limit23_pre13a5.Cells[00,viLinhas] := viLinhas.ToString ;
                     Stgr_Limit23_pre13a5.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
                     Stgr_Limit23_pre13a5.Cells[02,viLinhas] := Stgr_Limit23_comb23.Cells[1,viNumeroDeLinhas];
                     Stgr_Limit23_pre13A5.Cells[03,viLinhas] := Stgr_Limit23_comb23.Cells[viComb01,viNumeroDeLinhas];
                     Stgr_Limit23_pre13A5.Cells[04,viLinhas] := Stgr_Limit23_comb23.Cells[viComb02,viNumeroDeLinhas];
                     Stgr_Limit23_pre13A5.Cells[05,viLinhas] := Stgr_Limit23_comb23.Cells[viComb03,viNumeroDeLinhas];
                     Stgr_Limit23_pre13A5.Cells[06,viLinhas] := Stgr_Limit23_comb23.Cells[viComb04,viNumeroDeLinhas];
                     Stgr_Limit23_pre13A5.Cells[07,viLinhas] := Stgr_Limit23_comb23.Cells[viComb05,viNumeroDeLinhas];
                     viLinhas := viLinhas + 1;
                  end;
               end;
            end;
         end;
      end;
   end;
   Stgr_Limit23_pre13A5.RowCount := viLinhas;
   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit23_Comb23.RowCount-1 do
   begin
      for viComb01 := 2 to 6 do
      begin
         for viComb02 := viComb01+1 to 7 do
         begin
            Stgr_Limit23_pre13B2.Cells[00,viLinhas] := viLinhas.ToString ;
            Stgr_Limit23_pre13B2.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
            Stgr_Limit23_pre13b2.Cells[02,viLinhas] := Stgr_Limit23_comb23.Cells[1,viNumeroDeLinhas];
            Stgr_Limit23_pre13B2.Cells[03,viLinhas] := Stgr_Limit23_comb23.Cells[7+viComb01,viNumeroDeLinhas];
            Stgr_Limit23_pre13B2.Cells[04,viLinhas] := Stgr_Limit23_comb23.Cells[7+viComb02,viNumeroDeLinhas];
            viLinhas := viLinhas + 1;
         end;
      end;
   end;
   Stgr_Limit23_pre13B2.RowCount := viLinhas;
   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit23_Comb23.RowCount-1 do
   begin
      for viComb01 := 2 to 5 do
      begin
         for viComb02 := viComb01+1 to 6 do
         begin
            for viComb03 := viComb02+1 to 7 do
            begin
               for viComb04 := viComb03+1 to 8 do
               begin
                  Stgr_Limit23_pre13a4.Cells[00,viLinhas] := viLinhas.ToString ;
                  Stgr_Limit23_pre13a4.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
                  Stgr_Limit23_pre13a4.Cells[02,viLinhas] := Stgr_Limit23_comb23.Cells[1,viNumeroDeLinhas];
                  Stgr_Limit23_pre13A4.Cells[03,viLinhas] := Stgr_Limit23_comb23.Cells[viComb01,viNumeroDeLinhas];
                  Stgr_Limit23_pre13A4.Cells[04,viLinhas] := Stgr_Limit23_comb23.Cells[viComb02,viNumeroDeLinhas];
                  Stgr_Limit23_pre13A4.Cells[05,viLinhas] := Stgr_Limit23_comb23.Cells[viComb03,viNumeroDeLinhas];
                  Stgr_Limit23_pre13A4.Cells[06,viLinhas] := Stgr_Limit23_comb23.Cells[viComb04,viNumeroDeLinhas];
                  viLinhas := viLinhas + 1;
               end;
            end;
         end;
      end;
   end;
   Stgr_Limit23_pre13A4.RowCount := viLinhas;
   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit23_Comb23.RowCount-1 do
   begin
      for viComb01 := 2 to 5 do
      begin
         for viComb02 := viComb01+1 to 6 do
         begin
            for viComb03 := viComb02+1 to 7 do
            begin
               Stgr_Limit23_pre13b3.Cells[00,viLinhas] := viLinhas.ToString ;
               Stgr_Limit23_pre13b3.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
               Stgr_Limit23_pre13b3.Cells[02,viLinhas] := Stgr_Limit23_comb23.Cells[1,viNumeroDeLinhas];
               Stgr_Limit23_pre13B3.Cells[03,viLinhas] := Stgr_Limit23_comb23.Cells[7+viComb01,viNumeroDeLinhas];
               Stgr_Limit23_pre13B3.Cells[04,viLinhas] := Stgr_Limit23_comb23.Cells[7+viComb02,viNumeroDeLinhas];
               Stgr_Limit23_pre13B3.Cells[05,viLinhas] := Stgr_Limit23_comb23.Cells[7+viComb03,viNumeroDeLinhas];
               viLinhas := viLinhas + 1;
            end;
         end;
      end;
   end;
   Stgr_Limit23_pre13B3.RowCount := viLinhas;
   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit23_Comb23.RowCount-1 do
   begin
      for viComb01 := 2 to 6 do
      begin
         for viComb02 := viComb01+1 to 7 do
         begin
            for viComb03 := viComb02+1 to 8 do
            begin
               Stgr_Limit23_pre13a3.Cells[00,viLinhas] := viLinhas.ToString ;
               Stgr_Limit23_pre13a3.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
               Stgr_Limit23_pre13a3.Cells[02,viLinhas] := Stgr_Limit23_comb23.Cells[1,viNumeroDeLinhas];
               Stgr_Limit23_pre13A3.Cells[03,viLinhas] := Stgr_Limit23_comb23.Cells[viComb01,viNumeroDeLinhas];
               Stgr_Limit23_pre13A3.Cells[04,viLinhas] := Stgr_Limit23_comb23.Cells[viComb02,viNumeroDeLinhas];
               Stgr_Limit23_pre13A3.Cells[05,viLinhas] := Stgr_Limit23_comb23.Cells[viComb03,viNumeroDeLinhas];
               viLinhas := viLinhas + 1;
            end;
         end;
      end;
   end;
   Stgr_Limit23_pre13A3.RowCount := viLinhas;
   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit23_Comb23.RowCount-1 do
   begin
      for viComb01 := 2 to 4 do
      begin
         for viComb02 := viComb01+1 to 5 do
         begin
            for viComb03 := viComb02+1 to 6 do
            begin
               for viComb04 := viComb03+1 to 7 do
               begin
                  Stgr_Limit23_pre13b4.Cells[00,viLinhas] := viLinhas.ToString ;
                  Stgr_Limit23_pre13b4.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
                  Stgr_Limit23_pre13b4.Cells[02,viLinhas] := Stgr_Limit23_comb23.Cells[1,viNumeroDeLinhas];
                  Stgr_Limit23_pre13B4.Cells[03,viLinhas] := Stgr_Limit23_comb23.Cells[7+viComb01,viNumeroDeLinhas];
                  Stgr_Limit23_pre13B4.Cells[04,viLinhas] := Stgr_Limit23_comb23.Cells[7+viComb02,viNumeroDeLinhas];
                  Stgr_Limit23_pre13B4.Cells[05,viLinhas] := Stgr_Limit23_comb23.Cells[7+viComb03,viNumeroDeLinhas];
                  Stgr_Limit23_pre13B4.Cells[06,viLinhas] := Stgr_Limit23_comb23.Cells[7+viComb04,viNumeroDeLinhas];
                  viLinhas := viLinhas + 1;
               end;
            end;
         end;
      end;
   end;
   Stgr_Limit23_pre13B4.RowCount := viLinhas;
   viLinhas := 1;
//   for viNumeroDeLinhas := 1 to 1 {Stgr_Limit23_Comb23.RowCount-1} do
   begin
      for viComb01 := 2 to 4 do
      begin
         for viComb02 := viComb01+1 to 5 do
         begin
            for viComb03 := viComb02+1 to 6 do
            begin
               Stgr_Limit23_pre13C3.Cells[00,viLinhas] := viLinhas.ToString;
               Stgr_Limit23_pre13C3.Cells[01,viLinhas] := Stgr_Limit23_comb23.Cells[13+viComb01,viNumeroDeLinhas];
               Stgr_Limit23_pre13C3.Cells[02,viLinhas] := Stgr_Limit23_comb23.Cells[13+viComb02,viNumeroDeLinhas];
               Stgr_Limit23_pre13C3.Cells[03,viLinhas] := Stgr_Limit23_comb23.Cells[13+viComb03,viNumeroDeLinhas];
               Stgr_Limit23_pre13C3.Cells[04,viLinhas] := Stgr_Limit23_comb23.Cells[13+viComb04,viNumeroDeLinhas];
               viLinhas := viLinhas + 1;
            end;
         end;
      end;
   end;
  Stgr_Limit23_pre13C3.RowCount := viLinhas;
   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit23_Comb23.RowCount-1 do
   begin
      if (viNumeroDeLinhas =1) or (viNumeroDeLinhas=Stgr_Limit23_Comb23.RowCount-1) then
         for viComb01 := 2 to 4 do
         begin
            for viComb02 := viComb01+1 to 5 do
            begin
               for viComb03 := viComb02+1 to 6 do
               begin
                  Stgr_Limit23_pre13D3.Cells[00,viLinhas] := viLinhas.ToString;
                  Stgr_Limit23_pre13D3.Cells[01,viLinhas] := viNumeroDeLinhas.ToString;
                  Stgr_Limit23_pre13D3.Cells[02,viLinhas] := Stgr_Limit23_comb23.Cells[1,viNumeroDeLinhas];
                  Stgr_Limit23_pre13D3.Cells[03,viLinhas] := Stgr_Limit23_comb23.Cells[18+viComb01,viNumeroDeLinhas];
                  Stgr_Limit23_pre13D3.Cells[04,viLinhas] := Stgr_Limit23_comb23.Cells[18+viComb02,viNumeroDeLinhas];
                  Stgr_Limit23_pre13D3.Cells[05,viLinhas] := Stgr_Limit23_comb23.Cells[18+viComb03,viNumeroDeLinhas];
                  viLinhas := viLinhas + 1;
               end;
            end;
         end;
   end;
   Stgr_Limit23_pre13d3.RowCount := viLinhas;
   Pa_Gerar.Left := 1400;
//   Stgr_Limit23_pre13A5
//   Stgr_Limit23_pre13B2
//   Stgr_Limit23_pre13C3
//   Stgr_Limit23_pre13D3
   Pgbr_EtaPa_08.Position :=20;
   viLinhas := 1;
   for viComb01 := 1 to Stgr_Limit23_pre13A5.RowCount-1 do
   begin
      for viComb02 := 1 to Stgr_Limit23_pre13B2.RowCount-1 do
      begin
         if Stgr_Limit23_pre13A5.Cells[01,viComb01].ToInteger <> Stgr_Limit23_pre13B2.Cells[01,viComb02].ToInteger then
            Continue;
         for viComb03 := 1 to Stgr_Limit23_pre13C3.RowCount-1 do
         begin
            for viComb04 := 1 to Stgr_Limit23_pre13D3.RowCount-1 do
            begin
               if Stgr_Limit23_pre13b2.Cells[02,viComb02].ToInteger =Stgr_Limit23_pre13D3.Cells[02,viComb04].ToInteger then
                 begin
                  Stgr_Limit23_comb13.Cells[00,viLinhas] := viLinhas.ToString;
                  Stgr_Limit23_comb13.Cells[01,viLinhas] := Stgr_Limit23_pre13A5.Cells[3,viComb01];
                  Stgr_Limit23_comb13.Cells[02,viLinhas] := Stgr_Limit23_pre13A5.Cells[4,viComb01];
                  Stgr_Limit23_comb13.Cells[03,viLinhas] := Stgr_Limit23_pre13A5.Cells[5,viComb01];
                  Stgr_Limit23_comb13.Cells[04,viLinhas] := Stgr_Limit23_pre13A5.Cells[6,viComb01];
                  Stgr_Limit23_comb13.Cells[05,viLinhas] := Stgr_Limit23_pre13A5.Cells[7,viComb01];
                  Stgr_Limit23_comb13.Cells[06,viLinhas] := Stgr_Limit23_pre13B2.Cells[3,viComb02];
                  Stgr_Limit23_comb13.Cells[07,viLinhas] := Stgr_Limit23_pre13B2.Cells[4,viComb02];
                  Stgr_Limit23_comb13.Cells[08,viLinhas] := Stgr_Limit23_pre13c3.Cells[1,viComb03];
                  Stgr_Limit23_comb13.Cells[09,viLinhas] := Stgr_Limit23_pre13c3.Cells[2,viComb03];
                  Stgr_Limit23_comb13.Cells[10,viLinhas] := Stgr_Limit23_pre13c3.Cells[3,viComb03];
                  Stgr_Limit23_comb13.Cells[11,viLinhas] := Stgr_Limit23_pre13d3.Cells[3,viComb04];
                  Stgr_Limit23_comb13.Cells[12,viLinhas] := Stgr_Limit23_pre13d3.Cells[4,viComb04];
                  Stgr_Limit23_comb13.Cells[13,viLinhas] := Stgr_Limit23_pre13d3.Cells[5,viComb04];
                  Stgr_Limit23_comb13.Cells[14,viLinhas] := viComb01.ToString + '- ' + viComb02.ToString+ '- ' + viComb03.ToString+ '- ' + viComb04.ToString;
                  Stgr_Limit23_comb13.Cells[15,viLinhas] := trim(Stgr_Limit23_pre13A5.Cells[01,viComb01]);
                  viLinhas := viLinhas + 1;
                 end;
            end;
         end;
      end;
   end;
   Stgr_Limit23_comb13.RowCount := viLinhas;
   Pgbr_EtaPa_08.Position :=30;
   //viLinhas := 1;
   for viComb01 := 1 to Stgr_Limit23_pre13A4.RowCount-1 do
   begin
      for viComb02 := 1 to Stgr_Limit23_pre13B3.RowCount-1 do
      begin
         if Stgr_Limit23_pre13A4.Cells[01,viComb01].ToInteger <> Stgr_Limit23_pre13B3.Cells[01,viComb02].ToInteger then
            Continue;
         for viComb03 := 1 to Stgr_Limit23_pre13C3.RowCount-1 do
         begin
            for viComb04 := 1 to Stgr_Limit23_pre13D3.RowCount-1 do
            begin
               if Stgr_Limit23_pre13B3.Cells[02,viComb02].ToInteger =Stgr_Limit23_pre13D3.Cells[02,viComb04].ToInteger then
                 begin
                  Stgr_Limit23_comb13.Cells[00,viLinhas] := viLinhas.ToString;
                  Stgr_Limit23_comb13.Cells[01,viLinhas] := Stgr_Limit23_pre13A4.Cells[3,viComb01];
                  Stgr_Limit23_comb13.Cells[02,viLinhas] := Stgr_Limit23_pre13A4.Cells[4,viComb01];
                  Stgr_Limit23_comb13.Cells[03,viLinhas] := Stgr_Limit23_pre13A4.Cells[5,viComb01];
                  Stgr_Limit23_comb13.Cells[04,viLinhas] := Stgr_Limit23_pre13A4.Cells[6,viComb01];
                  Stgr_Limit23_comb13.Cells[05,viLinhas] := Stgr_Limit23_pre13B3.Cells[3,viComb02];
                  Stgr_Limit23_comb13.Cells[06,viLinhas] := Stgr_Limit23_pre13B3.Cells[4,viComb02];
                  Stgr_Limit23_comb13.Cells[07,viLinhas] := Stgr_Limit23_pre13B3.Cells[5,viComb02];
                  Stgr_Limit23_comb13.Cells[08,viLinhas] := Stgr_Limit23_pre13c3.Cells[1,viComb03];
                  Stgr_Limit23_comb13.Cells[09,viLinhas] := Stgr_Limit23_pre13c3.Cells[2,viComb03];
                  Stgr_Limit23_comb13.Cells[10,viLinhas] := Stgr_Limit23_pre13c3.Cells[3,viComb03];
                  Stgr_Limit23_comb13.Cells[11,viLinhas] := Stgr_Limit23_pre13d3.Cells[3,viComb04];
                  Stgr_Limit23_comb13.Cells[12,viLinhas] := Stgr_Limit23_pre13d3.Cells[4,viComb04];
                  Stgr_Limit23_comb13.Cells[13,viLinhas] := Stgr_Limit23_pre13d3.Cells[5,viComb04];
                  Stgr_Limit23_comb13.Cells[14,viLinhas] := viComb01.ToString + '- ' + viComb02.ToString+ '- ' + viComb03.ToString+ '- ' + viComb04.ToString;
                  Stgr_Limit23_comb13.Cells[15,viLinhas] := trim(Stgr_Limit23_pre13A4.Cells[01,viComb01]);
                  viLinhas := viLinhas + 1;
                 end;
            end;
         end;
      end;
   end;
   Stgr_Limit23_comb13.RowCount := viLinhas;
   //viLinhas := 1;
   for viComb01 := 1 to Stgr_Limit23_pre13A3.RowCount-1 do
   begin
      for viComb02 := 1 to Stgr_Limit23_pre13B4.RowCount-1 do
      begin
         if Stgr_Limit23_pre13A3.Cells[01,viComb01].ToInteger <> Stgr_Limit23_pre13B4.Cells[01,viComb02].ToInteger then
            Continue;
         for viComb03 := 1 to Stgr_Limit23_pre13C3.RowCount-1 do
         begin
            for viComb04 := 1 to Stgr_Limit23_pre13D3.RowCount-1 do
            begin
               if Stgr_Limit23_pre13B4.Cells[02,viComb02].ToInteger =Stgr_Limit23_pre13D3.Cells[02,viComb04].ToInteger then
                 begin
                  Stgr_Limit23_comb13.Cells[00,viLinhas] := viLinhas.ToString;
                  Stgr_Limit23_comb13.Cells[01,viLinhas] := Stgr_Limit23_pre13A3.Cells[3,viComb01];
                  Stgr_Limit23_comb13.Cells[02,viLinhas] := Stgr_Limit23_pre13A3.Cells[4,viComb01];
                  Stgr_Limit23_comb13.Cells[03,viLinhas] := Stgr_Limit23_pre13A3.Cells[5,viComb01];
                  Stgr_Limit23_comb13.Cells[04,viLinhas] := Stgr_Limit23_pre13B4.Cells[3,viComb02];
                  Stgr_Limit23_comb13.Cells[05,viLinhas] := Stgr_Limit23_pre13B4.Cells[4,viComb02];
                  Stgr_Limit23_comb13.Cells[06,viLinhas] := Stgr_Limit23_pre13B4.Cells[5,viComb02];
                  Stgr_Limit23_comb13.Cells[07,viLinhas] := Stgr_Limit23_pre13B4.Cells[6,viComb02];
                  Stgr_Limit23_comb13.Cells[08,viLinhas] := Stgr_Limit23_pre13c3.Cells[1,viComb03];
                  Stgr_Limit23_comb13.Cells[09,viLinhas] := Stgr_Limit23_pre13c3.Cells[2,viComb03];
                  Stgr_Limit23_comb13.Cells[10,viLinhas] := Stgr_Limit23_pre13c3.Cells[3,viComb03];
                  Stgr_Limit23_comb13.Cells[11,viLinhas] := Stgr_Limit23_pre13d3.Cells[3,viComb04];
                  Stgr_Limit23_comb13.Cells[12,viLinhas] := Stgr_Limit23_pre13d3.Cells[4,viComb04];
                  Stgr_Limit23_comb13.Cells[13,viLinhas] := Stgr_Limit23_pre13d3.Cells[5,viComb04];
                  Stgr_Limit23_comb13.Cells[14,viLinhas] := viComb01.ToString + '- ' + viComb02.ToString+ '- ' + viComb03.ToString+ '- ' + viComb04.ToString;
                  Stgr_Limit23_comb13.Cells[15,viLinhas] := trim(Stgr_Limit23_pre13A3.Cells[01,viComb01]);
                  viLinhas := viLinhas + 1;
                 end;
            end;
         end;
      end;
   end;
   Stgr_Limit23_comb13.RowCount := viLinhas;
   Gerar23Etapa8();
   Pgbr_EtaPa_08.Position :=50;
   Pgbr_EtaPa_08.Repaint;
   DM1.IBQ_Combinacoes.Close;

   viQtdDados := 1;
   DM1.IBQ_Combinacoes.SQL.Clear;
   DM1.IBQ_Combinacoes.SQL.Add('select count (distinct(dados_ns)) as QTD from GERADOR_RESULT_25LINHAS2_13E8;')  ;
   DM1.IBQ_Combinacoes.Prepare;
   DM1.IBQ_Combinacoes.Open;
   //SHOWMESSAGE(DM1.IBQ_Combinacoes.fieldBYname('QTD').AsString);
   viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
   DM1.IBQ_Combinacoes.SQL.Clear;
   DM1.IBQ_Combinacoes.SQL.Add('select distinct(dados_ns) from GERADOR_RESULT_25LINHAS2_13E8 order by dados_ns;')  ;
   DM1.IBQ_Combinacoes.Prepare;
   DM1.IBQ_Combinacoes.Open;
   DM1.IBQ_Combinacoes.First;
   viLinhas := 1 ;
   //viContar_Comb1 := 1;
   WHILE NOT(DM1.IBQ_COMBINACOES.Eof) DO
   BEGIN
      Stgr_Limit23_comb10.Cells[00,viLinhas] := viLinhas.ToString ; //DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
      Stgr_Limit23_comb10.Cells[01,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,1,2);
      Stgr_Limit23_comb10.Cells[02,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,4,2);
      Stgr_Limit23_comb10.Cells[03,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,7,2);
      Stgr_Limit23_comb10.Cells[04,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,10,2);
      Stgr_Limit23_comb10.Cells[05,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,13,2);
      Stgr_Limit23_comb10.Cells[06,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,16,2);
      Stgr_Limit23_comb10.Cells[07,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,19,2);
      Stgr_Limit23_comb10.Cells[08,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,22,2);
      Stgr_Limit23_comb10.Cells[09,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,25,2);
      Stgr_Limit23_comb10.Cells[10,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,28,2);
      FOR viComb01 := 1 TO 25 DO
      BEGIN
          Stgr_Todos_Numeros.Cells [viComb01 ,1]:='F';
      end;
      FOR viComb01 := 1 TO 10 DO
      BEGIN
         Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Limit23_comb10.Cells[viComb01,viLinhas])) ,1]:='V';
      END; // FOR viComb01
         // -------------------------
         // --  MONTANDO OS 15    ---
         // -------------------------
         vcCombinacoes15 := '';
         FOR viComb02 :=1 TO 25 DO
         BEGIN
             // SOBRAS
             IF (Stgr_Todos_Numeros.Cells[viComb02,1]='F') THEN
             BEGIN
                 vcCombinacoes15 := vcCombinacoes15 + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viComb02,0]),2) +' ' ;
             END; // IF (Stgr_Todos_Numeros
         END; // FOR viComb02
      Stgr_Limit23_comb15.Cells[00,viLinhas] := viLinhas.ToString ; //DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
      Stgr_Limit23_comb15.Cells[01,viLinhas] := COPY(vcCombinacoes15, 1,2);
      Stgr_Limit23_comb15.Cells[02,viLinhas] := COPY(vcCombinacoes15, 4,2);
      Stgr_Limit23_comb15.Cells[03,viLinhas] := COPY(vcCombinacoes15, 7,2);
      Stgr_Limit23_comb15.Cells[04,viLinhas] := COPY(vcCombinacoes15, 10,2);
      Stgr_Limit23_comb15.Cells[05,viLinhas] := COPY(vcCombinacoes15, 13,2);
      Stgr_Limit23_comb15.Cells[06,viLinhas] := COPY(vcCombinacoes15, 16,2);
      Stgr_Limit23_comb15.Cells[07,viLinhas] := COPY(vcCombinacoes15, 19,2);
      Stgr_Limit23_comb15.Cells[08,viLinhas] := COPY(vcCombinacoes15, 22,2);
      Stgr_Limit23_comb15.Cells[09,viLinhas] := COPY(vcCombinacoes15, 25,2);
      Stgr_Limit23_comb15.Cells[10,viLinhas] := COPY(vcCombinacoes15, 28,2);
      Stgr_Limit23_comb15.Cells[11,viLinhas] := COPY(vcCombinacoes15, 31,2);
      Stgr_Limit23_comb15.Cells[12,viLinhas] := COPY(vcCombinacoes15, 34,2);
      Stgr_Limit23_comb15.Cells[13,viLinhas] := COPY(vcCombinacoes15, 37,2);
      Stgr_Limit23_comb15.Cells[14,viLinhas] := COPY(vcCombinacoes15, 40,2);
      Stgr_Limit23_comb15.Cells[15,viLinhas] := COPY(vcCombinacoes15, 43,2);
      if (viLinhas MOD trunc(viQtdDados/20))=0 then
      begin
         Pgbr_EtaPa_08.Position := Pgbr_EtaPa_08.Position+10;
         Pgbr_EtaPa_08.Repaint;
      end;
      viLinhas := viLinhas + 1;
      DM1.IBQ_Combinacoes.Next;
   end; // while
   Stgr_Limit23_comb15.RowCount := viLinhas;
   Stgr_Limit23_comb10.RowCount := viLinhas;
   PR_Gravar_Dados23Comb15 ('GERADOR_RESULT_25_LINHAS2_23_15');
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Gerar19Etapa9();
VAR
     VI_AN_Comb1, viContarCelulas, viContar, viContarStgGrid : Integer;
     vcQUERY, vc_Nome_Tabela : String;
     vcCombinacoes10, vcCombinacoes09, vc_Contador_da_Tabela, vcNumeroNo09, vcNumerosNo06 : String;
BEGIN
  //VI_TOTALGERADO := Stgr_Comb10.RowCount-1;
    // ************************
    // **   BANCO DE DADOS   **
    // ************************
    SELF.Repaint;
    // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
    viContarStgGrid := TRUNC((Stgr_Limit19_comb09.RowCount-1)/1);
 FOR VI_AN_Comb1:= 1 TO viContarStgGrid DO
 BEGIN
     FOR viContarCelulas := 1 TO 25 DO
     BEGIN
          Stgr_Todos_Numeros.Cells [viContarCelulas ,1]:='Z';
     end;
     vcNumeroNo09 := Stgr_Limit19_comb09.Cells[11,VI_AN_Comb1];
     vcNumerosNo06 := Trim(Stgr_Limitador19_comb06.Cells[01,vcNumeroNo09.ToInteger]) +' '+ Trim(Stgr_Limitador19_comb06.Cells[02,vcNumeroNo09.ToInteger])
                  +' '+Trim(Stgr_Limitador19_comb06.Cells[03,vcNumeroNo09.ToInteger]) +' '+ Trim(Stgr_Limitador19_comb06.Cells[04,vcNumeroNo09.ToInteger])
                  +' '+Trim(Stgr_Limitador19_comb06.Cells[05,vcNumeroNo09.ToInteger]) +' '+ Trim(Stgr_Limitador19_comb06.Cells[06,vcNumeroNo09.ToInteger]);
     FOR viContarCelulas := 2 TO 20 DO
     BEGIN
         Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Limit19_comb19.Cells[viContarCelulas, vcNumeroNo09.ToInteger])) ,1]:='F';
     END; // FOR viContarCelulas
     vcCombinacoes09 :='';
     FOR viContarCelulas := 1 TO 09 DO
     BEGIN
         vcCombinacoes09 := vcCombinacoes09 + TRIM(Stgr_Limit19_comb09.Cells[viContarCelulas,VI_AN_Comb1]) +' ';
         Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Limit19_comb09.Cells[viContarCelulas,VI_AN_Comb1])) ,1]:='V';
         vc_Contador_da_Tabela :=  Stgr_Limit19_comb09.Cells[1,VI_AN_Comb1] ;
     END; // FOR viContarCelulas
         // -------------------------------
         // --  MONTANDO AS 10 SOBRAS   ---
         // -------------------------------
            viContarCelulas := 1;
            vcCombinacoes10 := '';
            FOR viContar :=1 TO 25 DO
            BEGIN
                // SOBRAS
                IF (Stgr_Todos_Numeros.Cells[viContar,1]='F') THEN
                BEGIN
                    vcCombinacoes10 := vcCombinacoes10 + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) +' ' ;
                    viContarCelulas := viContarCelulas + 1;
                END; // IF (Stgr_Todos_Numeros
            END; // FOR viContar
    vc_Nome_Tabela := ' GERADOR_RESULT_25LINHAS2_09E10';
     vcQUERY  := 'INSERT INTO ' +vc_Nome_Tabela+ ' (N, DADOS, DADOS_NS, NumerosNo06) VALUES('
           +#39+  TRIM(vcNumeroNo09)  + #39 +','
           +#39+  TRIM(vcCombinacoes09)  + #39 +','
           +#39+  TRIM(vcCombinacoes10)  + #39 +','
           +#39+  TRIM(vcNumerosNo06)
           +#39+ ');';
     DM1.IBQ_Combin_02.SQL.Clear;
     DM1.IBQ_Combin_02.SQL.Add(vcQUERY)  ;
     DM1.IBQ_Combin_02.ExecSQL;
 END; // FOR VI_AN_Comb1
 DM1.IBQ_Combin_02.SQL.Clear;
 DM1.IBQ_Combin_02.SQL.Add('COMMIT')  ;
 DM1.IBQ_Combin_02.ExecSQL;
 SLEEP(14);
 DM1.IBQ_Combin_02.SQL.Clear;
END;

Procedure T_F_Gerador_ResDiv_25Linhas2.VerAtualizarRank;
begin
  Stgr_CapturarLinha.ColWidths[1] := 133;
  DM1.IBQ_Combinacoes.Close;
  DM1.IBQ_Combinacoes.SQL.Clear;
  DM1.IBQ_Combinacoes.SQL.Add('Select * From GERADOR_RESULT_25_RANK1H');
  DM1.IBQ_Combinacoes.Prepare;
  DM1.IBQ_Combinacoes.Open;
  La_NUltimoTRank1.Caption := DM1.IBQ_Combinacoes.FieldByName('ULTIMO_SORTEIO').AsString;
  La_NLinhaRank1.Caption := DM1.IBQ_Combinacoes.FieldByName('N_LINHA').AsString;
  La_DtRank1.Caption := DM1.IBQ_Combinacoes.FieldByName('DATA_DEFINICAO').AsString;
  La_NUltimoTRank2.Caption := DM1.IBQ_Combinacoes.FieldByName('ULTIMO_SORTEIO').AsString;
  La_NLinhaRank2.Caption := DM1.IBQ_Combinacoes.FieldByName('N_LINHA').AsString;
  La_DtRank2.Caption := DM1.IBQ_Combinacoes.FieldByName('DATA_DEFINICAO').AsString;
  Stgr_CapturarLinha.Cells[1, 0] := DM1.IBQ_Combinacoes.FieldByName('LINHA_01').AsString;
  Stgr_CapturarLinha.Cells[1, 1] := DM1.IBQ_Combinacoes.FieldByName('LINHA_02').AsString;
  Stgr_CapturarLinha.Cells[1, 2] := DM1.IBQ_Combinacoes.FieldByName('LINHA_03').AsString;
  Stgr_CapturarLinha.Cells[1, 3] := DM1.IBQ_Combinacoes.FieldByName('LINHA_04').AsString;
  Stgr_CapturarLinha.Cells[1, 4] := DM1.IBQ_Combinacoes.FieldByName('LINHA_05').AsString;
end;





Procedure T_F_Gerador_ResDiv_25Linhas2.btLimitador19Click(Sender: TObject);
var
   viQtdDados, viLinhas, viNumeroDeLinhas, viComb01, viComb02, viComb03, viComb04, viComb05, viComb06 : Integer;
   vsiSoma : SMALLInt;
   vasLimitador19_Grupo1A : array [1..6,1..28] of String;
   vasLimitador19_Grupo1B : array [1..5,1..21] of String;
   vasLimitador19_SobraGrupo1A : array [1..2,1..28] of String;
   vasLimitador19_SobraGrupo1B : array [1..2,1..21] of String;
   vasLimitador19_Grupo1C : array [1..4,1..5] of String;
   vasLimitador19_Grupo1D : array [1..4,1..5] of String;
   vasLimitador19_SobraGrupo1C : array [1..5] of String;
   vasLimitador19_SobraGrupo1D : array [1..5] of String;
   vasLimitador19_Grupo2A : array [1..6,1..28] of String;
   vasLimitador19_Grupo2B : array [1..5,1..21] of String;
   vasLimitador19_SobraGrupo2A : array [1..2,1..28] of String;
   vasLimitador19_SobraGrupo2B : array [1..2,1..21] of String;
   vasLimitador19_Grupo2C : array [1..4,1..5] of String;
   vasLimitador19_Grupo2D : array [1..4,1..5] of String;
   vasLimitador19_SobraGrupo2C : array [1..5] of String;
   vasLimitador19_SobraGrupo2D : array [1..5] of String;
   vcCombinacoes15 : String;
begin
      DM1.IBQ_Combinacoes.SQL.Clear;
      DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25LINHAS2_09E10')  ;
      DM1.IBQ_Combinacoes.ExecSQL;
//      DM1.IBQ_Combinacoes.SQL.Clear;
//      DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_1tm15');
//      DM1.IBQ_Combinacoes.ExecSQL;
//      DM1.IBQ_Combinacoes.SQL.Clear;
//      DM1.IBQ_Combinacoes.SQL.Add('DELETE FROM GERADOR_RESULT_25_LINHAS2_23_15');
//      DM1.IBQ_Combinacoes.ExecSQL;
      DM1.IBQ_Combinacoes.SQL.Clear;
      DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
      DM1.IBQ_Combinacoes.ExecSQL;
   Stgr_Limit19_comb19.ColWidths [0]:= 40  ;
   Stgr_Limitador19_comb06.ColWidths [0]:= 40  ;
   Stgr_Limit19_pre09a4.ColWidths [0]:= 50  ;
   Stgr_Limit19_pre09b1.ColWidths [0]:= 40  ;
   Stgr_Limit19_pre09a3.ColWidths [0]:= 50  ;
   Stgr_Limit19_pre09b2.ColWidths [0]:= 40  ;
   Stgr_Limit19_pre09a2.ColWidths [0]:= 50  ;
   Stgr_Limit19_pre09b3.ColWidths [0]:= 40  ;
   Stgr_Limit19_pre09b2.ColWidths [0]:= 40  ;
   Stgr_Limit19_pre09d2.ColWidths [0]:= 40  ;
   Stgr_Limit19_comb09.ColWidths [0]:= 60  ;
   Stgr_Limit19_comb09.ColWidths [10]:= 118 ;
   Stgr_Limit19_comb10.ColWidths [0]:= 60  ;
   Stgr_Limit19_comb15.ColWidths [0]:= 60  ;
   // ----> Grupo 1A
   // Linha 01
   vasLimitador19_Grupo1A[1,01] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,01] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,01] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[4,01] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[5,01] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[6,01] := Stgr_Limitador19_Grupo1A.Cells[6,0];
     vasLimitador19_SobraGrupo1A[1,01] := Stgr_Limitador19_Grupo1A.Cells[7,0];
     vasLimitador19_SobraGrupo1A[2,01] := Stgr_Limitador19_Grupo1A.Cells[8,0];
   // Linha 02
   vasLimitador19_Grupo1A[1,02] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,02] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,02] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[4,02] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[5,02] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[6,02] := Stgr_Limitador19_Grupo1A.Cells[7,0];
     vasLimitador19_SobraGrupo1A[1,02] := Stgr_Limitador19_Grupo1A.Cells[6,0];
     vasLimitador19_SobraGrupo1A[2,02] := Stgr_Limitador19_Grupo1A.Cells[8,0];
   // Linha 03
   vasLimitador19_Grupo1A[1,03] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,03] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,03] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[4,03] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[5,03] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[6,03] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,03] := Stgr_Limitador19_Grupo1A.Cells[6,0];
     vasLimitador19_SobraGrupo1A[2,03] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   // Linha 04
   vasLimitador19_Grupo1A[1,04] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,04] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,04] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[4,04] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[5,04] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[6,04] := Stgr_Limitador19_Grupo1A.Cells[7,0];
     vasLimitador19_SobraGrupo1A[1,04] := Stgr_Limitador19_Grupo1A.Cells[5,0];
     vasLimitador19_SobraGrupo1A[2,04] := Stgr_Limitador19_Grupo1A.Cells[8,0];
   // Linha 05
   vasLimitador19_Grupo1A[1,05] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,05] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,05] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[4,05] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[5,05] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[6,05] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,05] := Stgr_Limitador19_Grupo1A.Cells[5,0];
     vasLimitador19_SobraGrupo1A[2,05] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   // Linha 06
   vasLimitador19_Grupo1A[1,06] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,06] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,06] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[4,06] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[5,06] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,06] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,06] := Stgr_Limitador19_Grupo1A.Cells[5,0];
     vasLimitador19_SobraGrupo1A[2,06] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   // Linha 07
   vasLimitador19_Grupo1A[1,07] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,07] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,07] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[4,07] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[5,07] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[6,07] := Stgr_Limitador19_Grupo1A.Cells[7,0];
     vasLimitador19_SobraGrupo1A[1,07] := Stgr_Limitador19_Grupo1A.Cells[4,0];
     vasLimitador19_SobraGrupo1A[2,07] := Stgr_Limitador19_Grupo1A.Cells[8,0];
   // Linha 08
   vasLimitador19_Grupo1A[1,08] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,08] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,08] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[4,08] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[5,08] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[6,08] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,08] := Stgr_Limitador19_Grupo1A.Cells[4,0];
     vasLimitador19_SobraGrupo1A[2,08] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   // Linha 09
   vasLimitador19_Grupo1A[1,09] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,09] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,09] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[4,09] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[5,09] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,09] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,09] := Stgr_Limitador19_Grupo1A.Cells[4,0];
     vasLimitador19_SobraGrupo1A[2,09] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   // Linha 10
   vasLimitador19_Grupo1A[1,10] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,10] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,10] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[4,10] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[5,10] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,10] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,10] := Stgr_Limitador19_Grupo1A.Cells[4,0];
     vasLimitador19_SobraGrupo1A[2,10] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   // Linha 11
   vasLimitador19_Grupo1A[1,11] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,11] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,11] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[4,11] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[5,11] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[6,11] := Stgr_Limitador19_Grupo1A.Cells[7,0];
     vasLimitador19_SobraGrupo1A[1,11] := Stgr_Limitador19_Grupo1A.Cells[3,0];
     vasLimitador19_SobraGrupo1A[2,11] := Stgr_Limitador19_Grupo1A.Cells[8,0];
   // Linha 12
   vasLimitador19_Grupo1A[1,12] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,12] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,12] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[4,12] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[5,12] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[6,12] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,12] := Stgr_Limitador19_Grupo1A.Cells[3,0];
     vasLimitador19_SobraGrupo1A[2,12] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   // Linha 13
   vasLimitador19_Grupo1A[1,13] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,13] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,13] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[4,13] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[5,13] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,13] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,13] := Stgr_Limitador19_Grupo1A.Cells[3,0];
     vasLimitador19_SobraGrupo1A[2,13] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   // Linha 14
   vasLimitador19_Grupo1A[1,14] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,14] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,14] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[4,14] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[5,14] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,14] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,14] := Stgr_Limitador19_Grupo1A.Cells[3,0];
     vasLimitador19_SobraGrupo1A[2,14] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   // Linha 15
   vasLimitador19_Grupo1A[1,15] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,15] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[3,15] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[4,15] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[5,15] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,15] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,15] := Stgr_Limitador19_Grupo1A.Cells[3,0];
     vasLimitador19_SobraGrupo1A[2,15] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   // Linha 16
   vasLimitador19_Grupo1A[1,16] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,16] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[3,16] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[4,16] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[5,16] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[6,16] := Stgr_Limitador19_Grupo1A.Cells[7,0];
     vasLimitador19_SobraGrupo1A[1,16] := Stgr_Limitador19_Grupo1A.Cells[2,0];
     vasLimitador19_SobraGrupo1A[2,16] := Stgr_Limitador19_Grupo1A.Cells[8,0];
   // Linha 17
   vasLimitador19_Grupo1A[1,17] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,17] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[3,17] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[4,17] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[5,17] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[6,17] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,17] := Stgr_Limitador19_Grupo1A.Cells[2,0];
     vasLimitador19_SobraGrupo1A[2,17] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   // Linha 18
   vasLimitador19_Grupo1A[1,18] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,18] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[3,18] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[4,18] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[5,18] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,18] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,18] := Stgr_Limitador19_Grupo1A.Cells[2,0];
     vasLimitador19_SobraGrupo1A[2,18] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   // Linha 19
   vasLimitador19_Grupo1A[1,19] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,19] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[3,19] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[4,19] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[5,19] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,19] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,19] := Stgr_Limitador19_Grupo1A.Cells[2,0];
     vasLimitador19_SobraGrupo1A[2,19] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   // Linha 20
   vasLimitador19_Grupo1A[1,20] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,20] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[3,20] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[4,20] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[5,20] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,20] := Stgr_Limitador19_Grupo1A.Cells[9,0];
     vasLimitador19_SobraGrupo1A[1,20] := Stgr_Limitador19_Grupo1A.Cells[2,0];
     vasLimitador19_SobraGrupo1A[2,20] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   // Linha 21
   vasLimitador19_Grupo1A[1,21] := Stgr_Limitador19_Grupo1A.Cells[1,0];
   vasLimitador19_Grupo1A[2,21] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[3,21] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[4,21] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[5,21] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,21] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,21] := Stgr_Limitador19_Grupo1A.Cells[2,0];
     vasLimitador19_SobraGrupo1A[2,21] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   // Linha 22
   vasLimitador19_Grupo1A[1,22] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[2,22] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[3,22] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[4,22] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[5,22] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[6,22] := Stgr_Limitador19_Grupo1A.Cells[7,0];
     vasLimitador19_SobraGrupo1A[1,22] := Stgr_Limitador19_Grupo1A.Cells[1,0];
     vasLimitador19_SobraGrupo1A[2,22] := Stgr_Limitador19_Grupo1A.Cells[8,0];
   // Linha 23
   vasLimitador19_Grupo1A[1,23] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[2,23] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[3,23] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[4,23] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[5,23] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[6,23] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,23] := Stgr_Limitador19_Grupo1A.Cells[1,0];
     vasLimitador19_SobraGrupo1A[2,23] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   // Linha 24
   vasLimitador19_Grupo1A[1,24] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[2,24] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[3,24] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[4,24] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[5,24] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,24] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,24] := Stgr_Limitador19_Grupo1A.Cells[1,0];
     vasLimitador19_SobraGrupo1A[2,24] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   // Linha 25
   vasLimitador19_Grupo1A[1,25] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[2,25] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[3,25] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[4,25] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[5,25] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,25] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,25] := Stgr_Limitador19_Grupo1A.Cells[1,0];
     vasLimitador19_SobraGrupo1A[2,25] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   // Linha 26
   vasLimitador19_Grupo1A[1,26] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[2,26] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[3,26] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[4,26] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[5,26] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,26] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,26] := Stgr_Limitador19_Grupo1A.Cells[1,0];
     vasLimitador19_SobraGrupo1A[2,26] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   // Linha 27
   vasLimitador19_Grupo1A[1,27] := Stgr_Limitador19_Grupo1A.Cells[2,0];
   vasLimitador19_Grupo1A[2,27] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[3,27] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[4,27] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[5,27] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,27] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,27] := Stgr_Limitador19_Grupo1A.Cells[1,0];
     vasLimitador19_SobraGrupo1A[2,27] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   // Linha 28
   vasLimitador19_Grupo1A[1,28] := Stgr_Limitador19_Grupo1A.Cells[3,0];
   vasLimitador19_Grupo1A[2,28] := Stgr_Limitador19_Grupo1A.Cells[4,0];
   vasLimitador19_Grupo1A[3,28] := Stgr_Limitador19_Grupo1A.Cells[5,0];
   vasLimitador19_Grupo1A[4,28] := Stgr_Limitador19_Grupo1A.Cells[6,0];
   vasLimitador19_Grupo1A[5,28] := Stgr_Limitador19_Grupo1A.Cells[7,0];
   vasLimitador19_Grupo1A[6,28] := Stgr_Limitador19_Grupo1A.Cells[8,0];
     vasLimitador19_SobraGrupo1A[1,28] := Stgr_Limitador19_Grupo1A.Cells[1,0];
     vasLimitador19_SobraGrupo1A[2,28] := Stgr_Limitador19_Grupo1A.Cells[2,0];

   // ----> Grupo 1B
   // Linha 01
   vasLimitador19_Grupo1B[1,1] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,1] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[3,1] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[4,1] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[5,1] := Stgr_Limitador19_Grupo1B.Cells[5,0];
     vasLimitador19_SobraGrupo1B[1,1] := Stgr_Limitador19_Grupo1B.Cells[6,0];
     vasLimitador19_SobraGrupo1B[2,1] := Stgr_Limitador19_Grupo1B.Cells[7,0];
   // Linha 02
   vasLimitador19_Grupo1B[1,2] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,2] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[3,2] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[4,2] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[5,2] := Stgr_Limitador19_Grupo1B.Cells[6,0];
     vasLimitador19_SobraGrupo1B[1,2] := Stgr_Limitador19_Grupo1B.Cells[5,0];
     vasLimitador19_SobraGrupo1B[2,2] := Stgr_Limitador19_Grupo1B.Cells[7,0];
   // Linha 03
   vasLimitador19_Grupo1B[1,3] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,3] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[3,3] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[4,3] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[5,3] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,3] := Stgr_Limitador19_Grupo1B.Cells[5,0];
     vasLimitador19_SobraGrupo1B[2,3] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   // Linha 04
   vasLimitador19_Grupo1B[1,4] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,4] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[3,4] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[4,4] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[5,4] := Stgr_Limitador19_Grupo1B.Cells[6,0];
     vasLimitador19_SobraGrupo1B[1,4] := Stgr_Limitador19_Grupo1B.Cells[4,0];
     vasLimitador19_SobraGrupo1B[2,4] := Stgr_Limitador19_Grupo1B.Cells[7,0];
   // Linha 05
   vasLimitador19_Grupo1B[1,5] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,5] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[3,5] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[4,5] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[5,5] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,5] := Stgr_Limitador19_Grupo1B.Cells[4,0];
     vasLimitador19_SobraGrupo1B[2,5] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   // Linha 06
   vasLimitador19_Grupo1B[1,6] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,6] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[3,6] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[4,6] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   vasLimitador19_Grupo1B[5,6] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,6] := Stgr_Limitador19_Grupo1B.Cells[4,0];
     vasLimitador19_SobraGrupo1B[2,6] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   // Linha 07
   vasLimitador19_Grupo1B[1,7] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,7] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[3,7] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[4,7] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[5,7] := Stgr_Limitador19_Grupo1B.Cells[6,0];
     vasLimitador19_SobraGrupo1B[1,7] := Stgr_Limitador19_Grupo1B.Cells[3,0];
     vasLimitador19_SobraGrupo1B[2,7] := Stgr_Limitador19_Grupo1B.Cells[7,0];

   // Linha 08
   vasLimitador19_Grupo1B[1,08] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,08] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[3,08] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[4,08] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[5,08] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,08] := Stgr_Limitador19_Grupo1B.Cells[3,0];
     vasLimitador19_SobraGrupo1B[2,08] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   // Linha 09
   vasLimitador19_Grupo1B[1,09] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,09] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[3,09] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[4,09] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   vasLimitador19_Grupo1B[5,09] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,09] := Stgr_Limitador19_Grupo1B.Cells[3,0];
     vasLimitador19_SobraGrupo1B[2,09] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   // Linha 10
   vasLimitador19_Grupo1B[1,10] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,10] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[3,10] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[4,10] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   vasLimitador19_Grupo1B[5,10] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,10] := Stgr_Limitador19_Grupo1B.Cells[3,0];
     vasLimitador19_SobraGrupo1B[2,10] := Stgr_Limitador19_Grupo1B.Cells[4,0];

   // Linha 11
   vasLimitador19_Grupo1B[1,11] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,11] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[3,11] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[4,11] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[5,11] := Stgr_Limitador19_Grupo1B.Cells[6,0];
     vasLimitador19_SobraGrupo1B[1,11] := Stgr_Limitador19_Grupo1B.Cells[2,0];
     vasLimitador19_SobraGrupo1B[2,11] := Stgr_Limitador19_Grupo1B.Cells[7,0];
   // Linha 12
   vasLimitador19_Grupo1B[1,12] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,12] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[3,12] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[4,12] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[5,12] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,12] := Stgr_Limitador19_Grupo1B.Cells[2,0];
     vasLimitador19_SobraGrupo1B[2,12] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   // Linha 13
   vasLimitador19_Grupo1B[1,13] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,13] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[3,13] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[4,13] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   vasLimitador19_Grupo1B[5,13] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,13] := Stgr_Limitador19_Grupo1B.Cells[2,0];
     vasLimitador19_SobraGrupo1B[2,13] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   // Linha 14
   vasLimitador19_Grupo1B[1,14] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,14] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[3,14] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[4,14] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   vasLimitador19_Grupo1B[5,14] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,14] := Stgr_Limitador19_Grupo1B.Cells[2,0];
     vasLimitador19_SobraGrupo1B[2,14] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   // Linha 15
   vasLimitador19_Grupo1B[1,15] := Stgr_Limitador19_Grupo1B.Cells[1,0];
   vasLimitador19_Grupo1B[2,15] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[3,15] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[4,15] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   vasLimitador19_Grupo1B[5,15] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,15] := Stgr_Limitador19_Grupo1B.Cells[2,0];
     vasLimitador19_SobraGrupo1B[2,15] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   // Linha 16
   vasLimitador19_Grupo1B[1,16] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[2,16] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[3,16] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[4,16] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[5,16] := Stgr_Limitador19_Grupo1B.Cells[6,0];
     vasLimitador19_SobraGrupo1B[1,16] := Stgr_Limitador19_Grupo1B.Cells[1,0];
     vasLimitador19_SobraGrupo1B[2,16] := Stgr_Limitador19_Grupo1B.Cells[7,0];
   // Linha 17
   vasLimitador19_Grupo1B[1,17] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[2,17] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[3,17] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[4,17] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[5,17] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,17] := Stgr_Limitador19_Grupo1B.Cells[1,0];
     vasLimitador19_SobraGrupo1B[2,17] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   // Linha 18
   vasLimitador19_Grupo1B[1,18] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[2,18] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[3,18] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[4,18] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   vasLimitador19_Grupo1B[5,18] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,18] := Stgr_Limitador19_Grupo1B.Cells[1,0];
     vasLimitador19_SobraGrupo1B[2,18] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   // Linha 19
   vasLimitador19_Grupo1B[1,19] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[2,19] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[3,19] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[4,19] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   vasLimitador19_Grupo1B[5,19] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,19] := Stgr_Limitador19_Grupo1B.Cells[1,0];
     vasLimitador19_SobraGrupo1B[2,19] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   // Linha 20
   vasLimitador19_Grupo1B[1,20] := Stgr_Limitador19_Grupo1B.Cells[2,0];
   vasLimitador19_Grupo1B[2,20] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[3,20] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[4,20] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   vasLimitador19_Grupo1B[5,20] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,20] := Stgr_Limitador19_Grupo1B.Cells[1,0];
     vasLimitador19_SobraGrupo1B[2,20] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   // Linha 21
   vasLimitador19_Grupo1B[1,21] := Stgr_Limitador19_Grupo1B.Cells[3,0];
   vasLimitador19_Grupo1B[2,21] := Stgr_Limitador19_Grupo1B.Cells[4,0];
   vasLimitador19_Grupo1B[3,21] := Stgr_Limitador19_Grupo1B.Cells[5,0];
   vasLimitador19_Grupo1B[4,21] := Stgr_Limitador19_Grupo1B.Cells[6,0];
   vasLimitador19_Grupo1B[5,21] := Stgr_Limitador19_Grupo1B.Cells[7,0];
     vasLimitador19_SobraGrupo1B[1,21] := Stgr_Limitador19_Grupo1B.Cells[1,0];
     vasLimitador19_SobraGrupo1B[2,21] := Stgr_Limitador19_Grupo1B.Cells[2,0];

   // ----> Grupo 1C
   // Linha 01
   vasLimitador19_Grupo1C[1,1] := Stgr_Limitador23_Grupo1C.Cells[1,0];
   vasLimitador19_Grupo1C[2,1] := Stgr_Limitador23_Grupo1C.Cells[2,0];
   vasLimitador19_Grupo1C[3,1] := Stgr_Limitador23_Grupo1C.Cells[3,0];
   vasLimitador19_Grupo1C[4,1] := Stgr_Limitador23_Grupo1C.Cells[4,0];
     vasLimitador19_SobraGrupo1C[1] := Stgr_Limitador23_Grupo1C.Cells[5,0];
   // Linha 02
   vasLimitador19_Grupo1C[1,2] := Stgr_Limitador23_Grupo1C.Cells[1,0];
   vasLimitador19_Grupo1C[2,2] := Stgr_Limitador23_Grupo1C.Cells[2,0];
   vasLimitador19_Grupo1C[3,2] := Stgr_Limitador23_Grupo1C.Cells[3,0];
   vasLimitador19_Grupo1C[4,2] := Stgr_Limitador23_Grupo1C.Cells[5,0];
     vasLimitador19_SobraGrupo1C[2] := Stgr_Limitador23_Grupo1C.Cells[4,0];
   // Linha 03
   vasLimitador19_Grupo1C[1,3] := Stgr_Limitador23_Grupo1C.Cells[1,0];
   vasLimitador19_Grupo1C[2,3] := Stgr_Limitador23_Grupo1C.Cells[2,0];
   vasLimitador19_Grupo1C[3,3] := Stgr_Limitador23_Grupo1C.Cells[4,0];
   vasLimitador19_Grupo1C[4,3] := Stgr_Limitador23_Grupo1C.Cells[5,0];
     vasLimitador19_SobraGrupo1C[3] := Stgr_Limitador23_Grupo1C.Cells[3,0];
   // Linha 04
   vasLimitador19_Grupo1C[1,4] := Stgr_Limitador23_Grupo1C.Cells[1,0];
   vasLimitador19_Grupo1C[2,4] := Stgr_Limitador23_Grupo1C.Cells[3,0];
   vasLimitador19_Grupo1C[3,4] := Stgr_Limitador23_Grupo1C.Cells[4,0];
   vasLimitador19_Grupo1C[4,4] := Stgr_Limitador23_Grupo1C.Cells[5,0];
     vasLimitador19_SobraGrupo1C[4] := Stgr_Limitador23_Grupo1C.Cells[2,0];
   // Linha 05
   vasLimitador19_Grupo1C[1,5] := Stgr_Limitador23_Grupo1C.Cells[2,0];
   vasLimitador19_Grupo1C[2,5] := Stgr_Limitador23_Grupo1C.Cells[3,0];
   vasLimitador19_Grupo1C[3,5] := Stgr_Limitador23_Grupo1C.Cells[4,0];
   vasLimitador19_Grupo1C[4,5] := Stgr_Limitador23_Grupo1C.Cells[5,0];
     vasLimitador19_SobraGrupo1C[5] := Stgr_Limitador23_Grupo1C.Cells[1,0];

   // ----> Grupo 1D
   // Linha 01
   vasLimitador19_Grupo1D[1,1] := Stgr_Limitador23_Grupo1D.Cells[1,0];
   vasLimitador19_Grupo1D[2,1] := Stgr_Limitador23_Grupo1D.Cells[2,0];
   vasLimitador19_Grupo1D[3,1] := Stgr_Limitador23_Grupo1D.Cells[3,0];
   vasLimitador19_Grupo1D[4,1] := Stgr_Limitador23_Grupo1D.Cells[4,0];
     vasLimitador19_SobraGrupo1D[1] := Stgr_Limitador23_Grupo1D.Cells[5,0];
   // Linha 02
   vasLimitador19_Grupo1D[1,2] := Stgr_Limitador23_Grupo1D.Cells[1,0];
   vasLimitador19_Grupo1D[2,2] := Stgr_Limitador23_Grupo1D.Cells[2,0];
   vasLimitador19_Grupo1D[3,2] := Stgr_Limitador23_Grupo1D.Cells[3,0];
   vasLimitador19_Grupo1D[4,2] := Stgr_Limitador23_Grupo1D.Cells[5,0];
     vasLimitador19_SobraGrupo1D[2] := Stgr_Limitador23_Grupo1D.Cells[4,0];
   // Linha 03
   vasLimitador19_Grupo1D[1,3] := Stgr_Limitador23_Grupo1D.Cells[1,0];
   vasLimitador19_Grupo1D[2,3] := Stgr_Limitador23_Grupo1D.Cells[2,0];
   vasLimitador19_Grupo1D[3,3] := Stgr_Limitador23_Grupo1D.Cells[4,0];
   vasLimitador19_Grupo1D[4,3] := Stgr_Limitador23_Grupo1D.Cells[5,0];
     vasLimitador19_SobraGrupo1D[3] := Stgr_Limitador23_Grupo1D.Cells[3,0];
   // Linha 04
   vasLimitador19_Grupo1D[1,4] := Stgr_Limitador23_Grupo1D.Cells[1,0];
   vasLimitador19_Grupo1D[2,4] := Stgr_Limitador23_Grupo1D.Cells[3,0];
   vasLimitador19_Grupo1D[3,4] := Stgr_Limitador23_Grupo1D.Cells[4,0];
   vasLimitador19_Grupo1D[4,4] := Stgr_Limitador23_Grupo1D.Cells[5,0];
     vasLimitador19_SobraGrupo1D[4] := Stgr_Limitador23_Grupo1D.Cells[2,0];
   // Linha 05
   vasLimitador19_Grupo1D[1,5] := Stgr_Limitador23_Grupo1D.Cells[2,0];
   vasLimitador19_Grupo1D[2,5] := Stgr_Limitador23_Grupo1D.Cells[3,0];
   vasLimitador19_Grupo1D[3,5] := Stgr_Limitador23_Grupo1D.Cells[4,0];
   vasLimitador19_Grupo1D[4,5] := Stgr_Limitador23_Grupo1D.Cells[5,0];
     vasLimitador19_SobraGrupo1D[5] := Stgr_Limitador23_Grupo1D.Cells[1,0];
   viLinhas := 1;
   for viComb01 := 1 to 8 do
   begin
      for viComb02 := 1 to 7 do
      begin
         for viComb03 := 1 to 5 do
         begin
            for viComb04 := 1 to 5 do
            begin
               Stgr_Limit19_comb19.Cells[00,viLinhas] :=viLinhas.ToString;
               Stgr_Limit19_comb19.Cells[01,viLinhas] := '1';
               Stgr_Limit19_comb19.Cells[02,viLinhas] := Trim (vasLimitador19_Grupo1A[1,viComb01]);
               Stgr_Limit19_comb19.Cells[03,viLinhas] := Trim (vasLimitador19_Grupo1A[2,viComb01]);
               Stgr_Limit19_comb19.Cells[04,viLinhas] := Trim (vasLimitador19_Grupo1A[3,viComb01]);
               Stgr_Limit19_comb19.Cells[05,viLinhas] := Trim (vasLimitador19_Grupo1A[4,viComb01]);
               Stgr_Limit19_comb19.Cells[06,viLinhas] := Trim (vasLimitador19_Grupo1A[5,viComb01]);
               Stgr_Limit19_comb19.Cells[07,viLinhas] := Trim (vasLimitador19_Grupo1A[6,viComb01]);
               Stgr_Limit19_comb19.Cells[08,viLinhas] := Trim (vasLimitador19_Grupo1B[1,viComb02]);
               Stgr_Limit19_comb19.Cells[09,viLinhas] := Trim (vasLimitador19_Grupo1B[2,viComb02]);
               Stgr_Limit19_comb19.Cells[10,viLinhas] := Trim (vasLimitador19_Grupo1B[3,viComb02]);
               Stgr_Limit19_comb19.Cells[11,viLinhas] := Trim (vasLimitador19_Grupo1B[4,viComb02]);
               Stgr_Limit19_comb19.Cells[12,viLinhas] := Trim (vasLimitador19_Grupo1B[5,viComb02]);
               Stgr_Limit19_comb19.Cells[13,viLinhas] := Trim (vasLimitador19_Grupo1C[1,viComb03]);
               Stgr_Limit19_comb19.Cells[14,viLinhas] := Trim (vasLimitador19_Grupo1C[2,viComb03]);
               Stgr_Limit19_comb19.Cells[15,viLinhas] := Trim (vasLimitador19_Grupo1C[3,viComb03]);
               Stgr_Limit19_comb19.Cells[16,viLinhas] := Trim (vasLimitador19_Grupo1C[4,viComb03]);
               Stgr_Limit19_comb19.Cells[17,viLinhas] := Trim (vasLimitador19_Grupo1D[1,viComb04]);
               Stgr_Limit19_comb19.Cells[18,viLinhas] := Trim (vasLimitador19_Grupo1D[2,viComb04]);
               Stgr_Limit19_comb19.Cells[19,viLinhas] := Trim (vasLimitador19_Grupo1D[3,viComb04]);
               Stgr_Limit19_comb19.Cells[20,viLinhas] := Trim (vasLimitador19_Grupo1D[4,viComb04]);
               vsiSoma := STRtoINT(vasLimitador19_Grupo1A[1,viComb01])
                          + STRtoINT(vasLimitador19_Grupo1A[2,viComb01])
                          + STRtoINT(vasLimitador19_Grupo1A[3,viComb01])
                          + STRtoINT(vasLimitador19_Grupo1A[4,viComb01])
                          + STRtoINT(vasLimitador19_Grupo1A[5,viComb01])
                          + STRtoINT(vasLimitador19_Grupo1A[6,viComb01])
                          + STRtoINT(vasLimitador19_Grupo1B[1,viComb02])
                          + STRtoINT(vasLimitador19_Grupo1B[2,viComb02])
                          + STRtoINT(vasLimitador19_Grupo1B[3,viComb02])
                          + STRtoINT(vasLimitador19_Grupo1B[4,viComb02])
                          + STRtoINT(vasLimitador19_Grupo1B[5,viComb02])
                          + STRtoINT(vasLimitador19_Grupo1C[1,viComb03])
                          + STRtoINT(vasLimitador19_Grupo1C[2,viComb03])
                          + STRtoINT(vasLimitador19_Grupo1C[3,viComb03])
                          + STRtoINT(vasLimitador19_Grupo1C[4,viComb03])
                          + STRtoINT(vasLimitador19_Grupo1D[1,viComb04])
                          + STRtoINT(vasLimitador19_Grupo1D[2,viComb04])
                          + STRtoINT(vasLimitador19_Grupo1D[3,viComb04])
                          + STRtoINT(vasLimitador19_Grupo1D[4,viComb04]);
               if vsiSoma=247 then
               begin
                  Stgr_Limitador19_comb06.Cells[00,viLinhas] := viLinhas.ToString ;
                  Stgr_Limitador19_comb06.Cells[01,viLinhas] := Trim (vasLimitador19_SobraGrupo1A[1,viComb01]);
                  Stgr_Limitador19_comb06.Cells[02,viLinhas] := Trim (vasLimitador19_SobraGrupo1A[2,viComb01]);
                  Stgr_Limitador19_comb06.Cells[03,viLinhas] := Trim (vasLimitador19_SobraGrupo1B[1,viComb02]);
                  Stgr_Limitador19_comb06.Cells[04,viLinhas] := Trim (vasLimitador19_SobraGrupo1B[2,viComb02]);
                  Stgr_Limitador19_comb06.Cells[05,viLinhas] := Trim (vasLimitador19_SobraGrupo1C[viComb03]);
                  Stgr_Limitador19_comb06.Cells[06,viLinhas] := Trim (vasLimitador19_SobraGrupo1D[viComb04]);
                  viLinhas := viLinhas + 1
               end;
            end;
         end;
      end;
   end;
   Stgr_Limit19_comb19.RowCount := viLinhas;
   Stgr_Limitador19_comb06.RowCount := viLinhas;

   // ----> Grupo 2A
   // Linha 01
   vasLimitador19_Grupo2A[1,01] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,01] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,01] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[4,01] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[5,01] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[6,01] := Stgr_Limitador19_Grupo2A.Cells[6,0];
     vasLimitador19_SobraGrupo2A[1,01] := Stgr_Limitador19_Grupo2A.Cells[7,0];
     vasLimitador19_SobraGrupo2A[2,01] := Stgr_Limitador19_Grupo2A.Cells[8,0];
   // Linha 02
   vasLimitador19_Grupo2A[1,02] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,02] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,02] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[4,02] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[5,02] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[6,02] := Stgr_Limitador19_Grupo2A.Cells[7,0];
     vasLimitador19_SobraGrupo2A[1,02] := Stgr_Limitador19_Grupo2A.Cells[6,0];
     vasLimitador19_SobraGrupo2A[2,02] := Stgr_Limitador19_Grupo2A.Cells[8,0];
   // Linha 03
   vasLimitador19_Grupo2A[1,03] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,03] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,03] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[4,03] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[5,03] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[6,03] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,03] := Stgr_Limitador19_Grupo2A.Cells[6,0];
     vasLimitador19_SobraGrupo2A[2,03] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   // Linha 04
   vasLimitador19_Grupo2A[1,04] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,04] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,04] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[4,04] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[5,04] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[6,04] := Stgr_Limitador19_Grupo2A.Cells[7,0];
     vasLimitador19_SobraGrupo2A[1,04] := Stgr_Limitador19_Grupo2A.Cells[5,0];
     vasLimitador19_SobraGrupo2A[2,04] := Stgr_Limitador19_Grupo2A.Cells[8,0];
   // Linha 05
   vasLimitador19_Grupo2A[1,05] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,05] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,05] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[4,05] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[5,05] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[6,05] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,05] := Stgr_Limitador19_Grupo2A.Cells[5,0];
     vasLimitador19_SobraGrupo2A[2,05] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   // Linha 06
   vasLimitador19_Grupo2A[1,06] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,06] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,06] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[4,06] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[5,06] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,06] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,06] := Stgr_Limitador19_Grupo2A.Cells[5,0];
     vasLimitador19_SobraGrupo2A[2,06] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   // Linha 07
   vasLimitador19_Grupo2A[1,07] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,07] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,07] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[4,07] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[5,07] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[6,07] := Stgr_Limitador19_Grupo2A.Cells[7,0];
     vasLimitador19_SobraGrupo2A[1,07] := Stgr_Limitador19_Grupo2A.Cells[4,0];
     vasLimitador19_SobraGrupo2A[2,07] := Stgr_Limitador19_Grupo2A.Cells[8,0];
   // Linha 08
   vasLimitador19_Grupo2A[1,08] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,08] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,08] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[4,08] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[5,08] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[6,08] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,08] := Stgr_Limitador19_Grupo2A.Cells[4,0];
     vasLimitador19_SobraGrupo2A[2,08] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   // Linha 09
   vasLimitador19_Grupo2A[1,09] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,09] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,09] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[4,09] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[5,09] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,09] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,09] := Stgr_Limitador19_Grupo2A.Cells[4,0];
     vasLimitador19_SobraGrupo2A[2,09] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   // Linha 10
   vasLimitador19_Grupo2A[1,10] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,10] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,10] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[4,10] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[5,10] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,10] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,10] := Stgr_Limitador19_Grupo2A.Cells[4,0];
     vasLimitador19_SobraGrupo2A[2,10] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   // Linha 11
   vasLimitador19_Grupo2A[1,11] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,11] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,11] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[4,11] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[5,11] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[6,11] := Stgr_Limitador19_Grupo2A.Cells[7,0];
     vasLimitador19_SobraGrupo2A[1,11] := Stgr_Limitador19_Grupo2A.Cells[3,0];
     vasLimitador19_SobraGrupo2A[2,11] := Stgr_Limitador19_Grupo2A.Cells[8,0];
   // Linha 12
   vasLimitador19_Grupo2A[1,12] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,12] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,12] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[4,12] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[5,12] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[6,12] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,12] := Stgr_Limitador19_Grupo2A.Cells[3,0];
     vasLimitador19_SobraGrupo2A[2,12] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   // Linha 13
   vasLimitador19_Grupo2A[1,13] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,13] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,13] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[4,13] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[5,13] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,13] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,13] := Stgr_Limitador19_Grupo2A.Cells[3,0];
     vasLimitador19_SobraGrupo2A[2,13] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   // Linha 14
   vasLimitador19_Grupo2A[1,14] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,14] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,14] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[4,14] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[5,14] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,14] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,14] := Stgr_Limitador19_Grupo2A.Cells[3,0];
     vasLimitador19_SobraGrupo2A[2,14] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   // Linha 15
   vasLimitador19_Grupo2A[1,15] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,15] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[3,15] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[4,15] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[5,15] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,15] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,15] := Stgr_Limitador19_Grupo2A.Cells[3,0];
     vasLimitador19_SobraGrupo2A[2,15] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   // Linha 16
   vasLimitador19_Grupo2A[1,16] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,16] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[3,16] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[4,16] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[5,16] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[6,16] := Stgr_Limitador19_Grupo2A.Cells[7,0];
     vasLimitador19_SobraGrupo2A[1,16] := Stgr_Limitador19_Grupo2A.Cells[2,0];
     vasLimitador19_SobraGrupo2A[2,16] := Stgr_Limitador19_Grupo2A.Cells[8,0];
   // Linha 17
   vasLimitador19_Grupo2A[1,17] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,17] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[3,17] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[4,17] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[5,17] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[6,17] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,17] := Stgr_Limitador19_Grupo2A.Cells[2,0];
     vasLimitador19_SobraGrupo2A[2,17] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   // Linha 18
   vasLimitador19_Grupo2A[1,18] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,18] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[3,18] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[4,18] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[5,18] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,18] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,18] := Stgr_Limitador19_Grupo2A.Cells[2,0];
     vasLimitador19_SobraGrupo2A[2,18] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   // Linha 19
   vasLimitador19_Grupo2A[1,19] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,19] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[3,19] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[4,19] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[5,19] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,19] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,19] := Stgr_Limitador19_Grupo2A.Cells[2,0];
     vasLimitador19_SobraGrupo2A[2,19] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   // Linha 20
   vasLimitador19_Grupo2A[1,20] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,20] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[3,20] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[4,20] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[5,20] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,20] := Stgr_Limitador19_Grupo2A.Cells[9,0];
     vasLimitador19_SobraGrupo2A[1,20] := Stgr_Limitador19_Grupo2A.Cells[2,0];
     vasLimitador19_SobraGrupo2A[2,20] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   // Linha 21
   vasLimitador19_Grupo2A[1,21] := Stgr_Limitador19_Grupo2A.Cells[1,0];
   vasLimitador19_Grupo2A[2,21] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[3,21] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[4,21] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[5,21] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,21] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,21] := Stgr_Limitador19_Grupo2A.Cells[2,0];
     vasLimitador19_SobraGrupo2A[2,21] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   // Linha 22
   vasLimitador19_Grupo2A[1,22] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[2,22] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[3,22] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[4,22] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[5,22] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[6,22] := Stgr_Limitador19_Grupo2A.Cells[7,0];
     vasLimitador19_SobraGrupo2A[1,22] := Stgr_Limitador19_Grupo2A.Cells[1,0];
     vasLimitador19_SobraGrupo2A[2,22] := Stgr_Limitador19_Grupo2A.Cells[8,0];
   // Linha 23
   vasLimitador19_Grupo2A[1,23] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[2,23] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[3,23] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[4,23] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[5,23] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[6,23] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,23] := Stgr_Limitador19_Grupo2A.Cells[1,0];
     vasLimitador19_SobraGrupo2A[2,23] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   // Linha 24
   vasLimitador19_Grupo2A[1,24] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[2,24] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[3,24] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[4,24] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[5,24] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,24] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,24] := Stgr_Limitador19_Grupo2A.Cells[1,0];
     vasLimitador19_SobraGrupo2A[2,24] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   // Linha 25
   vasLimitador19_Grupo2A[1,25] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[2,25] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[3,25] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[4,25] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[5,25] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,25] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,25] := Stgr_Limitador19_Grupo2A.Cells[1,0];
     vasLimitador19_SobraGrupo2A[2,25] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   // Linha 26
   vasLimitador19_Grupo2A[1,26] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[2,26] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[3,26] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[4,26] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[5,26] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,26] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,26] := Stgr_Limitador19_Grupo2A.Cells[1,0];
     vasLimitador19_SobraGrupo2A[2,26] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   // Linha 27
   vasLimitador19_Grupo2A[1,27] := Stgr_Limitador19_Grupo2A.Cells[2,0];
   vasLimitador19_Grupo2A[2,27] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[3,27] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[4,27] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[5,27] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,27] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,27] := Stgr_Limitador19_Grupo2A.Cells[1,0];
     vasLimitador19_SobraGrupo2A[2,27] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   // Linha 28
   vasLimitador19_Grupo2A[1,28] := Stgr_Limitador19_Grupo2A.Cells[3,0];
   vasLimitador19_Grupo2A[2,28] := Stgr_Limitador19_Grupo2A.Cells[4,0];
   vasLimitador19_Grupo2A[3,28] := Stgr_Limitador19_Grupo2A.Cells[5,0];
   vasLimitador19_Grupo2A[4,28] := Stgr_Limitador19_Grupo2A.Cells[6,0];
   vasLimitador19_Grupo2A[5,28] := Stgr_Limitador19_Grupo2A.Cells[7,0];
   vasLimitador19_Grupo2A[6,28] := Stgr_Limitador19_Grupo2A.Cells[8,0];
     vasLimitador19_SobraGrupo2A[1,28] := Stgr_Limitador19_Grupo2A.Cells[1,0];
     vasLimitador19_SobraGrupo2A[2,28] := Stgr_Limitador19_Grupo2A.Cells[2,0];

   // ----> Grupo 2B
   // Linha 01
   vasLimitador19_Grupo2B[1,1] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,1] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[3,1] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[4,1] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[5,1] := Stgr_Limitador19_Grupo2B.Cells[5,0];
     vasLimitador19_SobraGrupo2B[1,1] := Stgr_Limitador19_Grupo2B.Cells[6,0];
     vasLimitador19_SobraGrupo2B[2,1] := Stgr_Limitador19_Grupo2B.Cells[7,0];
   // Linha 02
   vasLimitador19_Grupo2B[1,2] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,2] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[3,2] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[4,2] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[5,2] := Stgr_Limitador19_Grupo2B.Cells[6,0];
     vasLimitador19_SobraGrupo2B[1,2] := Stgr_Limitador19_Grupo2B.Cells[5,0];
     vasLimitador19_SobraGrupo2B[2,2] := Stgr_Limitador19_Grupo2B.Cells[7,0];
   // Linha 03
   vasLimitador19_Grupo2B[1,3] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,3] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[3,3] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[4,3] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[5,3] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,3] := Stgr_Limitador19_Grupo2B.Cells[5,0];
     vasLimitador19_SobraGrupo2B[2,3] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   // Linha 04
   vasLimitador19_Grupo2B[1,4] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,4] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[3,4] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[4,4] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[5,4] := Stgr_Limitador19_Grupo2B.Cells[6,0];
     vasLimitador19_SobraGrupo2B[1,4] := Stgr_Limitador19_Grupo2B.Cells[4,0];
     vasLimitador19_SobraGrupo2B[2,4] := Stgr_Limitador19_Grupo2B.Cells[7,0];
   // Linha 05
   vasLimitador19_Grupo2B[1,5] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,5] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[3,5] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[4,5] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[5,5] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,5] := Stgr_Limitador19_Grupo2B.Cells[4,0];
     vasLimitador19_SobraGrupo2B[2,5] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   // Linha 06
   vasLimitador19_Grupo2B[1,6] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,6] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[3,6] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[4,6] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   vasLimitador19_Grupo2B[5,6] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,6] := Stgr_Limitador19_Grupo2B.Cells[4,0];
     vasLimitador19_SobraGrupo2B[2,6] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   // Linha 07
   vasLimitador19_Grupo2B[1,7] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,7] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[3,7] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[4,7] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[5,7] := Stgr_Limitador19_Grupo2B.Cells[6,0];
     vasLimitador19_SobraGrupo2B[1,7] := Stgr_Limitador19_Grupo2B.Cells[3,0];
     vasLimitador19_SobraGrupo2B[2,7] := Stgr_Limitador19_Grupo2B.Cells[7,0];

   // Linha 08
   vasLimitador19_Grupo2B[1,08] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,08] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[3,08] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[4,08] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[5,08] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,08] := Stgr_Limitador19_Grupo2B.Cells[3,0];
     vasLimitador19_SobraGrupo2B[2,08] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   // Linha 09
   vasLimitador19_Grupo2B[1,09] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,09] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[3,09] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[4,09] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   vasLimitador19_Grupo2B[5,09] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,09] := Stgr_Limitador19_Grupo2B.Cells[3,0];
     vasLimitador19_SobraGrupo2B[2,09] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   // Linha 10
   vasLimitador19_Grupo2B[1,10] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,10] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[3,10] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[4,10] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   vasLimitador19_Grupo2B[5,10] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,10] := Stgr_Limitador19_Grupo2B.Cells[3,0];
     vasLimitador19_SobraGrupo2B[2,10] := Stgr_Limitador19_Grupo2B.Cells[4,0];

   // Linha 11
   vasLimitador19_Grupo2B[1,11] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,11] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[3,11] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[4,11] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[5,11] := Stgr_Limitador19_Grupo2B.Cells[6,0];
     vasLimitador19_SobraGrupo2B[1,11] := Stgr_Limitador19_Grupo2B.Cells[2,0];
     vasLimitador19_SobraGrupo2B[2,11] := Stgr_Limitador19_Grupo2B.Cells[7,0];
   // Linha 12
   vasLimitador19_Grupo2B[1,12] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,12] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[3,12] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[4,12] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[5,12] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,12] := Stgr_Limitador19_Grupo2B.Cells[2,0];
     vasLimitador19_SobraGrupo2B[2,12] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   // Linha 13
   vasLimitador19_Grupo2B[1,13] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,13] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[3,13] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[4,13] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   vasLimitador19_Grupo2B[5,13] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,13] := Stgr_Limitador19_Grupo2B.Cells[2,0];
     vasLimitador19_SobraGrupo2B[2,13] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   // Linha 14
   vasLimitador19_Grupo2B[1,14] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,14] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[3,14] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[4,14] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   vasLimitador19_Grupo2B[5,14] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,14] := Stgr_Limitador19_Grupo2B.Cells[2,0];
     vasLimitador19_SobraGrupo2B[2,14] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   // Linha 15
   vasLimitador19_Grupo2B[1,15] := Stgr_Limitador19_Grupo2B.Cells[1,0];
   vasLimitador19_Grupo2B[2,15] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[3,15] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[4,15] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   vasLimitador19_Grupo2B[5,15] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,15] := Stgr_Limitador19_Grupo2B.Cells[2,0];
     vasLimitador19_SobraGrupo2B[2,15] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   // Linha 16
   vasLimitador19_Grupo2B[1,16] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[2,16] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[3,16] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[4,16] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[5,16] := Stgr_Limitador19_Grupo2B.Cells[6,0];
     vasLimitador19_SobraGrupo2B[1,16] := Stgr_Limitador19_Grupo2B.Cells[1,0];
     vasLimitador19_SobraGrupo2B[2,16] := Stgr_Limitador19_Grupo2B.Cells[7,0];
   // Linha 17
   vasLimitador19_Grupo2B[1,17] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[2,17] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[3,17] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[4,17] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[5,17] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,17] := Stgr_Limitador19_Grupo2B.Cells[1,0];
     vasLimitador19_SobraGrupo2B[2,17] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   // Linha 18
   vasLimitador19_Grupo2B[1,18] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[2,18] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[3,18] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[4,18] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   vasLimitador19_Grupo2B[5,18] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,18] := Stgr_Limitador19_Grupo2B.Cells[1,0];
     vasLimitador19_SobraGrupo2B[2,18] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   // Linha 19
   vasLimitador19_Grupo2B[1,19] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[2,19] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[3,19] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[4,19] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   vasLimitador19_Grupo2B[5,19] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,19] := Stgr_Limitador19_Grupo2B.Cells[1,0];
     vasLimitador19_SobraGrupo2B[2,19] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   // Linha 20
   vasLimitador19_Grupo2B[1,20] := Stgr_Limitador19_Grupo2B.Cells[2,0];
   vasLimitador19_Grupo2B[2,20] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[3,20] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[4,20] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   vasLimitador19_Grupo2B[5,20] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,20] := Stgr_Limitador19_Grupo2B.Cells[1,0];
     vasLimitador19_SobraGrupo2B[2,20] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   // Linha 21
   vasLimitador19_Grupo2B[1,21] := Stgr_Limitador19_Grupo2B.Cells[3,0];
   vasLimitador19_Grupo2B[2,21] := Stgr_Limitador19_Grupo2B.Cells[4,0];
   vasLimitador19_Grupo2B[3,21] := Stgr_Limitador19_Grupo2B.Cells[5,0];
   vasLimitador19_Grupo2B[4,21] := Stgr_Limitador19_Grupo2B.Cells[6,0];
   vasLimitador19_Grupo2B[5,21] := Stgr_Limitador19_Grupo2B.Cells[7,0];
     vasLimitador19_SobraGrupo2B[1,21] := Stgr_Limitador19_Grupo2B.Cells[1,0];
     vasLimitador19_SobraGrupo2B[2,21] := Stgr_Limitador19_Grupo2B.Cells[2,0];

   // ----> Grupo 2C
   // Linha 01
   vasLimitador19_Grupo2C[1,1] := Stgr_Limitador23_Grupo2C.Cells[1,0];
   vasLimitador19_Grupo2C[2,1] := Stgr_Limitador23_Grupo2C.Cells[2,0];
   vasLimitador19_Grupo2C[3,1] := Stgr_Limitador23_Grupo2C.Cells[3,0];
   vasLimitador19_Grupo2C[4,1] := Stgr_Limitador23_Grupo2C.Cells[4,0];
     vasLimitador19_SobraGrupo2C[1] := Stgr_Limitador23_Grupo2C.Cells[5,0];
   // Linha 02
   vasLimitador19_Grupo2C[1,2] := Stgr_Limitador23_Grupo2C.Cells[1,0];
   vasLimitador19_Grupo2C[2,2] := Stgr_Limitador23_Grupo2C.Cells[2,0];
   vasLimitador19_Grupo2C[3,2] := Stgr_Limitador23_Grupo2C.Cells[3,0];
   vasLimitador19_Grupo2C[4,2] := Stgr_Limitador23_Grupo2C.Cells[5,0];
     vasLimitador19_SobraGrupo2C[2] := Stgr_Limitador23_Grupo2C.Cells[4,0];
   // Linha 03
   vasLimitador19_Grupo2C[1,3] := Stgr_Limitador23_Grupo2C.Cells[1,0];
   vasLimitador19_Grupo2C[2,3] := Stgr_Limitador23_Grupo2C.Cells[2,0];
   vasLimitador19_Grupo2C[3,3] := Stgr_Limitador23_Grupo2C.Cells[4,0];
   vasLimitador19_Grupo2C[4,3] := Stgr_Limitador23_Grupo2C.Cells[5,0];
     vasLimitador19_SobraGrupo2C[3] := Stgr_Limitador23_Grupo2C.Cells[3,0];
   // Linha 04
   vasLimitador19_Grupo2C[1,4] := Stgr_Limitador23_Grupo2C.Cells[1,0];
   vasLimitador19_Grupo2C[2,4] := Stgr_Limitador23_Grupo2C.Cells[3,0];
   vasLimitador19_Grupo2C[3,4] := Stgr_Limitador23_Grupo2C.Cells[4,0];
   vasLimitador19_Grupo2C[4,4] := Stgr_Limitador23_Grupo2C.Cells[5,0];
     vasLimitador19_SobraGrupo2C[4] := Stgr_Limitador23_Grupo2C.Cells[2,0];
   // Linha 05
   vasLimitador19_Grupo2C[1,5] := Stgr_Limitador23_Grupo2C.Cells[2,0];
   vasLimitador19_Grupo2C[2,5] := Stgr_Limitador23_Grupo2C.Cells[3,0];
   vasLimitador19_Grupo2C[3,5] := Stgr_Limitador23_Grupo2C.Cells[4,0];
   vasLimitador19_Grupo2C[4,5] := Stgr_Limitador23_Grupo2C.Cells[5,0];
     vasLimitador19_SobraGrupo2C[5] := Stgr_Limitador23_Grupo2C.Cells[1,0];

   // ----> Grupo 2D
   // Linha 01
   vasLimitador19_Grupo2D[1,1] := Stgr_Limitador23_Grupo2D.Cells[1,0];
   vasLimitador19_Grupo2D[2,1] := Stgr_Limitador23_Grupo2D.Cells[2,0];
   vasLimitador19_Grupo2D[3,1] := Stgr_Limitador23_Grupo2D.Cells[3,0];
   vasLimitador19_Grupo2D[4,1] := Stgr_Limitador23_Grupo2D.Cells[4,0];
     vasLimitador19_SobraGrupo2D[1] := Stgr_Limitador23_Grupo2D.Cells[5,0];
   // Linha 02
   vasLimitador19_Grupo2D[1,2] := Stgr_Limitador23_Grupo2D.Cells[1,0];
   vasLimitador19_Grupo2D[2,2] := Stgr_Limitador23_Grupo2D.Cells[2,0];
   vasLimitador19_Grupo2D[3,2] := Stgr_Limitador23_Grupo2D.Cells[3,0];
   vasLimitador19_Grupo2D[4,2] := Stgr_Limitador23_Grupo2D.Cells[5,0];
     vasLimitador19_SobraGrupo2D[2] := Stgr_Limitador23_Grupo2D.Cells[4,0];
   // Linha 03
   vasLimitador19_Grupo2D[1,3] := Stgr_Limitador23_Grupo2D.Cells[1,0];
   vasLimitador19_Grupo2D[2,3] := Stgr_Limitador23_Grupo2D.Cells[2,0];
   vasLimitador19_Grupo2D[3,3] := Stgr_Limitador23_Grupo2D.Cells[4,0];
   vasLimitador19_Grupo2D[4,3] := Stgr_Limitador23_Grupo2D.Cells[5,0];
     vasLimitador19_SobraGrupo2D[3] := Stgr_Limitador23_Grupo2D.Cells[3,0];
   // Linha 04
   vasLimitador19_Grupo2D[1,4] := Stgr_Limitador23_Grupo2D.Cells[1,0];
   vasLimitador19_Grupo2D[2,4] := Stgr_Limitador23_Grupo2D.Cells[3,0];
   vasLimitador19_Grupo2D[3,4] := Stgr_Limitador23_Grupo2D.Cells[4,0];
   vasLimitador19_Grupo2D[4,4] := Stgr_Limitador23_Grupo2D.Cells[5,0];
     vasLimitador19_SobraGrupo2D[4] := Stgr_Limitador23_Grupo2D.Cells[2,0];
   // Linha 05
   vasLimitador19_Grupo2D[1,5] := Stgr_Limitador23_Grupo2D.Cells[2,0];
   vasLimitador19_Grupo2D[2,5] := Stgr_Limitador23_Grupo2D.Cells[3,0];
   vasLimitador19_Grupo2D[3,5] := Stgr_Limitador23_Grupo2D.Cells[4,0];
   vasLimitador19_Grupo2D[4,5] := Stgr_Limitador23_Grupo2D.Cells[5,0];
     vasLimitador19_SobraGrupo2D[5] := Stgr_Limitador23_Grupo2D.Cells[1,0];
  // viLinhas := 1;
   for viComb01 := 1 to 8 do
   begin
      for viComb02 := 1 to 7 do
      begin
         for viComb03 := 1 to 5 do
         begin
            for viComb04 := 1 to 5 do
            begin
               Stgr_Limit19_comb19.Cells[00,viLinhas] :=viLinhas.ToString;
               Stgr_Limit19_comb19.Cells[01,viLinhas] := '2';
               Stgr_Limit19_comb19.Cells[02,viLinhas] := Trim (vasLimitador19_Grupo2A[1,viComb01]);
               Stgr_Limit19_comb19.Cells[03,viLinhas] := Trim (vasLimitador19_Grupo2A[2,viComb01]);
               Stgr_Limit19_comb19.Cells[04,viLinhas] := Trim (vasLimitador19_Grupo2A[3,viComb01]);
               Stgr_Limit19_comb19.Cells[05,viLinhas] := Trim (vasLimitador19_Grupo2A[4,viComb01]);
               Stgr_Limit19_comb19.Cells[06,viLinhas] := Trim (vasLimitador19_Grupo2A[5,viComb01]);
               Stgr_Limit19_comb19.Cells[07,viLinhas] := Trim (vasLimitador19_Grupo2A[6,viComb01]);
               Stgr_Limit19_comb19.Cells[08,viLinhas] := Trim (vasLimitador19_Grupo2B[1,viComb02]);
               Stgr_Limit19_comb19.Cells[09,viLinhas] := Trim (vasLimitador19_Grupo2B[2,viComb02]);
               Stgr_Limit19_comb19.Cells[10,viLinhas] := Trim (vasLimitador19_Grupo2B[3,viComb02]);
               Stgr_Limit19_comb19.Cells[11,viLinhas] := Trim (vasLimitador19_Grupo2B[4,viComb02]);
               Stgr_Limit19_comb19.Cells[12,viLinhas] := Trim (vasLimitador19_Grupo2B[5,viComb02]);
               Stgr_Limit19_comb19.Cells[13,viLinhas] := Trim (vasLimitador19_Grupo2C[1,viComb03]);
               Stgr_Limit19_comb19.Cells[14,viLinhas] := Trim (vasLimitador19_Grupo2C[2,viComb03]);
               Stgr_Limit19_comb19.Cells[15,viLinhas] := Trim (vasLimitador19_Grupo2C[3,viComb03]);
               Stgr_Limit19_comb19.Cells[16,viLinhas] := Trim (vasLimitador19_Grupo2C[4,viComb03]);
               Stgr_Limit19_comb19.Cells[17,viLinhas] := Trim (vasLimitador19_Grupo2D[1,viComb04]);
               Stgr_Limit19_comb19.Cells[18,viLinhas] := Trim (vasLimitador19_Grupo2D[2,viComb04]);
               Stgr_Limit19_comb19.Cells[19,viLinhas] := Trim (vasLimitador19_Grupo2D[3,viComb04]);
               Stgr_Limit19_comb19.Cells[20,viLinhas] := Trim (vasLimitador19_Grupo2D[4,viComb04]);
               vsiSoma := STRtoINT(vasLimitador19_Grupo2A[1,viComb01])
                          + STRtoINT(vasLimitador19_Grupo2A[2,viComb01])
                          + STRtoINT(vasLimitador19_Grupo2A[3,viComb01])
                          + STRtoINT(vasLimitador19_Grupo2A[4,viComb01])
                          + STRtoINT(vasLimitador19_Grupo2A[5,viComb01])
                          + STRtoINT(vasLimitador19_Grupo2A[6,viComb01])
                          + STRtoINT(vasLimitador19_Grupo2B[1,viComb02])
                          + STRtoINT(vasLimitador19_Grupo2B[2,viComb02])
                          + STRtoINT(vasLimitador19_Grupo2B[3,viComb02])
                          + STRtoINT(vasLimitador19_Grupo2B[4,viComb02])
                          + STRtoINT(vasLimitador19_Grupo2B[5,viComb02])
                          + STRtoINT(vasLimitador19_Grupo2C[1,viComb03])
                          + STRtoINT(vasLimitador19_Grupo2C[2,viComb03])
                          + STRtoINT(vasLimitador19_Grupo2C[3,viComb03])
                          + STRtoINT(vasLimitador19_Grupo2C[4,viComb03])
                          + STRtoINT(vasLimitador19_Grupo2D[1,viComb04])
                          + STRtoINT(vasLimitador19_Grupo2D[2,viComb04])
                          + STRtoINT(vasLimitador19_Grupo2D[3,viComb04])
                          + STRtoINT(vasLimitador19_Grupo2D[4,viComb04]);
               if (vsiSoma=247) and QtdPares19_e9(viLinhas) then
               begin
                  Stgr_Limitador19_comb06.Cells[00,viLinhas] := viLinhas.ToString ;
                  Stgr_Limitador19_comb06.Cells[01,viLinhas] := Trim (vasLimitador19_SobraGrupo2A[1,viComb01]);
                  Stgr_Limitador19_comb06.Cells[02,viLinhas] := Trim (vasLimitador19_SobraGrupo2A[2,viComb01]);
                  Stgr_Limitador19_comb06.Cells[03,viLinhas] := Trim (vasLimitador19_SobraGrupo2B[1,viComb02]);
                  Stgr_Limitador19_comb06.Cells[04,viLinhas] := Trim (vasLimitador19_SobraGrupo2B[2,viComb02]);
                  Stgr_Limitador19_comb06.Cells[05,viLinhas] := Trim (vasLimitador19_SobraGrupo2C[viComb03]);
                  Stgr_Limitador19_comb06.Cells[06,viLinhas] := Trim (vasLimitador19_SobraGrupo2D[viComb04]);
                  viLinhas := viLinhas + 1
               end;
            end;
         end;
      end;
   end;
   Stgr_Limit19_comb19.RowCount := viLinhas;
   Stgr_Limitador19_comb06.RowCount := viLinhas;
   Pa_Gerar.Left := 1400;

   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit19_Comb19.RowCount-1 do
   begin
      for viComb01 := 2 to 4 do
      begin
         for viComb02 := viComb01+1 to 5 do
         begin
            for viComb03 := viComb02+1 to 6 do
            begin
               for viComb04 := viComb03+1 to 7 do
               begin
                  Stgr_Limit19_pre09a4.Cells[00,viLinhas] := viLinhas.ToString ;
                  Stgr_Limit19_pre09a4.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
                  Stgr_Limit19_pre09a4.Cells[02,viLinhas] := Stgr_Limit19_Comb19.Cells[1,viNumeroDeLinhas];
                  Stgr_Limit19_pre09a4.Cells[03,viLinhas] := Stgr_Limit19_Comb19.Cells[viComb01,viNumeroDeLinhas];
                  Stgr_Limit19_pre09a4.Cells[04,viLinhas] := Stgr_Limit19_Comb19.Cells[viComb02,viNumeroDeLinhas];
                  Stgr_Limit19_pre09a4.Cells[05,viLinhas] := Stgr_Limit19_Comb19.Cells[viComb03,viNumeroDeLinhas];
                  Stgr_Limit19_pre09a4.Cells[06,viLinhas] := Stgr_Limit19_Comb19.Cells[viComb04,viNumeroDeLinhas];
                  viLinhas := viLinhas + 1;
               end;
            end;
         end;
      end;
   end;
   Stgr_Limit19_pre09a4.RowCount := viLinhas;
   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit19_Comb19.RowCount-1 do
   begin
      for viComb01 := 2 to 6 do
      begin
         Stgr_Limit19_pre09B1.Cells[00,viLinhas] := viLinhas.ToString ;
         Stgr_Limit19_pre09B1.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
         Stgr_Limit19_pre09B1.Cells[02,viLinhas] := Stgr_Limit19_Comb19.Cells[1,viNumeroDeLinhas];
         Stgr_Limit19_pre09B1.Cells[03,viLinhas] := Stgr_Limit19_Comb19.Cells[6+viComb01,viNumeroDeLinhas];
         viLinhas := viLinhas + 1;
      end;
   end;
   Stgr_Limit19_pre09B1.RowCount := viLinhas;

   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit19_Comb19.RowCount-1 do
   begin
      for viComb01 := 2 to 5 do
      begin
         for viComb02 := viComb01+1 to 6 do
         begin
            for viComb03 := viComb02+1 to 7 do
            begin
               Stgr_Limit19_pre09a3.Cells[00,viLinhas] := viLinhas.ToString ;
               Stgr_Limit19_pre09a3.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
               Stgr_Limit19_pre09a3.Cells[02,viLinhas] := Stgr_Limit19_Comb19.Cells[1,viNumeroDeLinhas];
               Stgr_Limit19_pre09a3.Cells[03,viLinhas] := Stgr_Limit19_Comb19.Cells[viComb01,viNumeroDeLinhas];
               Stgr_Limit19_pre09a3.Cells[04,viLinhas] := Stgr_Limit19_Comb19.Cells[viComb02,viNumeroDeLinhas];
               Stgr_Limit19_pre09a3.Cells[05,viLinhas] := Stgr_Limit19_Comb19.Cells[viComb03,viNumeroDeLinhas];
               viLinhas := viLinhas + 1;
            end;
         end;
      end;
   end;
   Stgr_Limit19_pre09a3.RowCount := viLinhas;
   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit19_Comb19.RowCount-1 do
   begin
      for viComb01 := 2 to 5 do
      begin
         for viComb02 := viComb01+1 to 6 do
         begin
            Stgr_Limit19_pre09B2.Cells[00,viLinhas] := viLinhas.ToString ;
            Stgr_Limit19_pre09B2.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
            Stgr_Limit19_pre09B2.Cells[02,viLinhas] := Stgr_Limit19_Comb19.Cells[1,viNumeroDeLinhas];
            Stgr_Limit19_pre09B2.Cells[03,viLinhas] := Stgr_Limit19_Comb19.Cells[6+viComb01,viNumeroDeLinhas];
            Stgr_Limit19_pre09B2.Cells[04,viLinhas] := Stgr_Limit19_Comb19.Cells[6+viComb02,viNumeroDeLinhas];
            viLinhas := viLinhas + 1;
         end;
      end;
   end;
   Stgr_Limit19_pre09B2.RowCount := viLinhas;

   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit19_Comb19.RowCount-1 do
   begin
      for viComb01 := 2 to 6 do
      begin
         for viComb02 := viComb01+1 to 7 do
         begin
            Stgr_Limit19_pre09a2.Cells[00,viLinhas] := viLinhas.ToString ;
            Stgr_Limit19_pre09a2.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
            Stgr_Limit19_pre09a2.Cells[02,viLinhas] := Stgr_Limit19_Comb19.Cells[1,viNumeroDeLinhas];
            Stgr_Limit19_pre09a2.Cells[03,viLinhas] := Stgr_Limit19_Comb19.Cells[viComb01,viNumeroDeLinhas];
            Stgr_Limit19_pre09a2.Cells[04,viLinhas] := Stgr_Limit19_Comb19.Cells[viComb02,viNumeroDeLinhas];
            viLinhas := viLinhas + 1;
         end;
      end;
   end;
   Stgr_Limit19_pre09a2.RowCount := viLinhas;
   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit19_Comb19.RowCount-1 do
   begin
      for viComb01 := 2 to 4 do
      begin
         for viComb02 := viComb01+1 to 5 do
         begin
            for viComb03 := viComb02+1 to 6 do
            begin
               Stgr_Limit19_pre09B3.Cells[00,viLinhas] := viLinhas.ToString ;
               Stgr_Limit19_pre09B3.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
               Stgr_Limit19_pre09B3.Cells[02,viLinhas] := Stgr_Limit19_Comb19.Cells[1,viNumeroDeLinhas];
               Stgr_Limit19_pre09B3.Cells[03,viLinhas] := Stgr_Limit19_Comb19.Cells[6+viComb01,viNumeroDeLinhas];
               Stgr_Limit19_pre09B3.Cells[04,viLinhas] := Stgr_Limit19_Comb19.Cells[6+viComb02,viNumeroDeLinhas];
               Stgr_Limit19_pre09B3.Cells[05,viLinhas] := Stgr_Limit19_Comb19.Cells[6+viComb03,viNumeroDeLinhas];
               viLinhas := viLinhas + 1;
            end;
         end;
      end;
   end;
   Stgr_Limit19_pre09B3.RowCount := viLinhas;

   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit19_Comb19.RowCount-1 do
   begin
      for viComb01 := 2 to 4 do
      begin
         for viComb02 := viComb01+1 to 5 do
         begin
            Stgr_Limit19_pre09c2.Cells[00,viLinhas] := viLinhas.ToString ;
            Stgr_Limit19_pre09c2.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
            Stgr_Limit19_pre09c2.Cells[02,viLinhas] := Stgr_Limit19_Comb19.Cells[1,viNumeroDeLinhas];
            Stgr_Limit19_pre09c2.Cells[03,viLinhas] := Stgr_Limit19_Comb19.Cells[11+viComb01,viNumeroDeLinhas];
            Stgr_Limit19_pre09c2.Cells[04,viLinhas] := Stgr_Limit19_Comb19.Cells[11+viComb02,viNumeroDeLinhas];
            viLinhas := viLinhas + 1;
         end;
      end;
   end;
   Stgr_Limit19_pre09c2.RowCount := viLinhas;
   viLinhas := 1;
   for viNumeroDeLinhas := 1 to Stgr_Limit19_Comb19.RowCount-1 do
   begin
      for viComb01 := 2 to 4 do
      begin
         for viComb02 := viComb01+1 to 5 do
         begin
            Stgr_Limit19_pre09d2.Cells[00,viLinhas] := viLinhas.ToString ;
            Stgr_Limit19_pre09d2.Cells[01,viLinhas] := INTtoSTR(viNumeroDeLinhas);
            Stgr_Limit19_pre09d2.Cells[02,viLinhas] := Stgr_Limit19_Comb19.Cells[1,viNumeroDeLinhas];
            Stgr_Limit19_pre09d2.Cells[03,viLinhas] := Stgr_Limit19_Comb19.Cells[15+viComb01,viNumeroDeLinhas];
            Stgr_Limit19_pre09d2.Cells[04,viLinhas] := Stgr_Limit19_Comb19.Cells[15+viComb02,viNumeroDeLinhas];
            viLinhas := viLinhas + 1;
         end;
      end;
   end;
   Stgr_Limit19_pre09d2.RowCount := viLinhas;
   Pgbr_EtaPa_09.Position :=20;
   viLinhas := 1;
   for viComb01 := 1 to Stgr_Limit19_pre09a4.RowCount-1 do
   begin
      for viComb02 := 1 to Stgr_Limit19_pre09b1.RowCount-1 do
      begin
         if Stgr_Limit19_pre09a4.Cells[01,viComb01].ToInteger <> Stgr_Limit19_pre09b1.Cells[01,viComb02].ToInteger then
            Continue;
         for viComb03 := 1 to Stgr_Limit19_pre09c2.RowCount-1 do
         begin
            if Stgr_Limit19_pre09c2.Cells[01,viComb03].ToInteger <> Stgr_Limit19_pre09b1.Cells[01,viComb02].ToInteger then
               Continue;
            for viComb04 := 1 to Stgr_Limit19_pre09d2.RowCount-1 do
            begin
               if Stgr_Limit19_pre09d2.Cells[01,viComb04].ToInteger <> Stgr_Limit19_pre09b1.Cells[01,viComb02].ToInteger then
                  Continue;
               Stgr_Limit19_comb09.Cells[00,viLinhas] := viLinhas.ToString;
               Stgr_Limit19_comb09.Cells[01,viLinhas] := Stgr_Limit19_pre09a4.Cells[3,viComb01];
               Stgr_Limit19_comb09.Cells[02,viLinhas] := Stgr_Limit19_pre09a4.Cells[4,viComb01];
               Stgr_Limit19_comb09.Cells[03,viLinhas] := Stgr_Limit19_pre09a4.Cells[5,viComb01];
               Stgr_Limit19_comb09.Cells[04,viLinhas] := Stgr_Limit19_pre09a4.Cells[6,viComb01];
               Stgr_Limit19_comb09.Cells[05,viLinhas] := Stgr_Limit19_pre09b1.Cells[3,viComb02];
               Stgr_Limit19_comb09.Cells[06,viLinhas] := Stgr_Limit19_pre09c2.Cells[3,viComb03];
               Stgr_Limit19_comb09.Cells[07,viLinhas] := Stgr_Limit19_pre09c2.Cells[4,viComb03];
               Stgr_Limit19_comb09.Cells[08,viLinhas] := Stgr_Limit19_pre09d2.Cells[3,viComb04];
               Stgr_Limit19_comb09.Cells[09,viLinhas] := Stgr_Limit19_pre09d2.Cells[4,viComb04];
               Stgr_Limit19_comb09.Cells[10,viLinhas] := viComb01.ToString + '- ' + viComb02.ToString+ '- ' + viComb03.ToString+ '- ' + viComb04.ToString;
               Stgr_Limit19_comb09.Cells[11,viLinhas] := trim(Stgr_Limit19_pre09a4.Cells[01,viComb01]);
               viLinhas := viLinhas + 1;
            end;
         end;
      end;
   end;
   Stgr_Limit19_comb09.RowCount := viLinhas;
   Pgbr_EtaPa_09.Position :=40;
//   viLinhas := 1;
   for viComb01 := 1 to Stgr_Limit19_pre09a3.RowCount-1 do
   begin
      for viComb02 := 1 to Stgr_Limit19_pre09b2.RowCount-1 do
      begin
         if Stgr_Limit19_pre09a3.Cells[01,viComb01].ToInteger <> Stgr_Limit19_pre09b2.Cells[01,viComb02].ToInteger then
            Continue;
         for viComb03 := 1 to Stgr_Limit19_pre09c2.RowCount-1 do
         begin
            if Stgr_Limit19_pre09c2.Cells[01,viComb03].ToInteger <> Stgr_Limit19_pre09b2.Cells[01,viComb02].ToInteger then
               Continue;
            for viComb04 := 1 to Stgr_Limit19_pre09d2.RowCount-1 do
            begin
               if Stgr_Limit19_pre09d2.Cells[01,viComb04].ToInteger <> Stgr_Limit19_pre09b2.Cells[01,viComb02].ToInteger then
                  Continue;
               Stgr_Limit19_comb09.Cells[00,viLinhas] := viLinhas.ToString;
               Stgr_Limit19_comb09.Cells[01,viLinhas] := Stgr_Limit19_pre09a3.Cells[3,viComb01];
               Stgr_Limit19_comb09.Cells[02,viLinhas] := Stgr_Limit19_pre09a3.Cells[4,viComb01];
               Stgr_Limit19_comb09.Cells[03,viLinhas] := Stgr_Limit19_pre09a3.Cells[5,viComb01];
               Stgr_Limit19_comb09.Cells[04,viLinhas] := Stgr_Limit19_pre09b2.Cells[3,viComb02];
               Stgr_Limit19_comb09.Cells[05,viLinhas] := Stgr_Limit19_pre09b2.Cells[4,viComb02];
               Stgr_Limit19_comb09.Cells[06,viLinhas] := Stgr_Limit19_pre09c2.Cells[3,viComb03];
               Stgr_Limit19_comb09.Cells[07,viLinhas] := Stgr_Limit19_pre09c2.Cells[4,viComb03];
               Stgr_Limit19_comb09.Cells[08,viLinhas] := Stgr_Limit19_pre09d2.Cells[3,viComb04];
               Stgr_Limit19_comb09.Cells[09,viLinhas] := Stgr_Limit19_pre09d2.Cells[4,viComb04];
               Stgr_Limit19_comb09.Cells[10,viLinhas] := viComb01.ToString + '- ' + viComb02.ToString+ '- ' + viComb03.ToString+ '- ' + viComb04.ToString;
               Stgr_Limit19_comb09.Cells[11,viLinhas] := trim(Stgr_Limit19_pre09a3.Cells[01,viComb01]);
               viLinhas := viLinhas + 1;
            end;
         end;
      end;
   end;
   Stgr_Limit19_comb09.RowCount := viLinhas;
   Pgbr_EtaPa_09.Position :=60;
//   viLinhas := 1;
   for viComb01 := 1 to Stgr_Limit19_pre09a2.RowCount-1 do
   begin
      for viComb02 := 1 to Stgr_Limit19_pre09b3.RowCount-1 do
      begin
         if Stgr_Limit19_pre09a2.Cells[01,viComb01].ToInteger <> Stgr_Limit19_pre09b3.Cells[01,viComb02].ToInteger then
            Continue;
         for viComb03 := 1 to Stgr_Limit19_pre09c2.RowCount-1 do
         begin
            if Stgr_Limit19_pre09c2.Cells[01,viComb03].ToInteger <> Stgr_Limit19_pre09b3.Cells[01,viComb02].ToInteger then
               Continue;
            for viComb04 := 1 to Stgr_Limit19_pre09d2.RowCount-1 do
            begin
               if Stgr_Limit19_pre09d2.Cells[01,viComb04].ToInteger <> Stgr_Limit19_pre09b3.Cells[01,viComb02].ToInteger then
                  Continue;
               Stgr_Limit19_comb09.Cells[00,viLinhas] := viLinhas.ToString;
               Stgr_Limit19_comb09.Cells[01,viLinhas] := Stgr_Limit19_pre09a2.Cells[3,viComb01];
               Stgr_Limit19_comb09.Cells[02,viLinhas] := Stgr_Limit19_pre09a2.Cells[4,viComb01];
               Stgr_Limit19_comb09.Cells[03,viLinhas] := Stgr_Limit19_pre09b3.Cells[3,viComb02];
               Stgr_Limit19_comb09.Cells[04,viLinhas] := Stgr_Limit19_pre09b3.Cells[4,viComb02];
               Stgr_Limit19_comb09.Cells[05,viLinhas] := Stgr_Limit19_pre09b3.Cells[5,viComb02];
               Stgr_Limit19_comb09.Cells[06,viLinhas] := Stgr_Limit19_pre09c2.Cells[3,viComb03];
               Stgr_Limit19_comb09.Cells[07,viLinhas] := Stgr_Limit19_pre09c2.Cells[4,viComb03];
               Stgr_Limit19_comb09.Cells[08,viLinhas] := Stgr_Limit19_pre09d2.Cells[3,viComb04];
               Stgr_Limit19_comb09.Cells[09,viLinhas] := Stgr_Limit19_pre09d2.Cells[4,viComb04];
               Stgr_Limit19_comb09.Cells[10,viLinhas] := viComb01.ToString + '- ' + viComb02.ToString+ '- ' + viComb03.ToString+ '- ' + viComb04.ToString;
               Stgr_Limit19_comb09.Cells[11,viLinhas] := trim(Stgr_Limit19_pre09a2.Cells[01,viComb01]);
               viLinhas := viLinhas + 1;
            end;
         end;
      end;
   end;
   Stgr_Limit19_comb09.RowCount := viLinhas;
   Gerar19Etapa9() ;
   Pgbr_EtaPa_09.Position :=80;
   Pgbr_EtaPa_09.Repaint;
   DM1.IBQ_Combinacoes.Close;

   viQtdDados := 1;
   DM1.IBQ_Combinacoes.SQL.Clear;
   DM1.IBQ_Combinacoes.SQL.Add('select count (distinct(dados_ns)) as QTD from GERADOR_RESULT_25LINHAS2_09E10;')  ;
   DM1.IBQ_Combinacoes.Prepare;
   DM1.IBQ_Combinacoes.Open;
   //SHOWMESSAGE(DM1.IBQ_Combinacoes.fieldBYname('QTD').AsString);
   viQtdDados := DM1.IBQ_Combinacoes.fieldBYname('QTD').AsInteger;
   DM1.IBQ_Combinacoes.SQL.Clear;
   DM1.IBQ_Combinacoes.SQL.Add('select distinct(dados_ns) from GERADOR_RESULT_25LINHAS2_09E10 order by dados_ns;')  ;
   DM1.IBQ_Combinacoes.Prepare;
   DM1.IBQ_Combinacoes.Open;
   DM1.IBQ_Combinacoes.First;

   viLinhas := 1 ;
   //viContar_Comb1 := 1;
   WHILE NOT(DM1.IBQ_COMBINACOES.Eof) DO
   BEGIN
      Stgr_Limit19_comb10.Cells[00,viLinhas] := viLinhas.ToString ; //DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
      Stgr_Limit19_comb10.Cells[01,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,1,2);
      Stgr_Limit19_comb10.Cells[02,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,4,2);
      Stgr_Limit19_comb10.Cells[03,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,7,2);
      Stgr_Limit19_comb10.Cells[04,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,10,2);
      Stgr_Limit19_comb10.Cells[05,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,13,2);
      Stgr_Limit19_comb10.Cells[06,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,16,2);
      Stgr_Limit19_comb10.Cells[07,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,19,2);
      Stgr_Limit19_comb10.Cells[08,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,22,2);
      Stgr_Limit19_comb10.Cells[09,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,25,2);
      Stgr_Limit19_comb10.Cells[10,viLinhas] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('dados_ns').AsString,28,2);
      FOR viComb01 := 1 TO 25 DO
      BEGIN
          Stgr_Todos_Numeros.Cells [viComb01 ,1]:='F';
      end;
      FOR viComb01 := 1 TO 10 DO
      BEGIN
         Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Limit19_comb10.Cells[viComb01,viLinhas])) ,1]:='V';
      END; // FOR viComb01
         // -------------------------
         // --  MONTANDO OS 15    ---
         // -------------------------
         vcCombinacoes15 := '';
         FOR viComb02 :=1 TO 25 DO
         BEGIN
             // SOBRAS
             IF (Stgr_Todos_Numeros.Cells[viComb02,1]='F') THEN
             BEGIN
                 vcCombinacoes15 := vcCombinacoes15 + RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viComb02,0]),2) +' ' ;
             END; // IF (Stgr_Todos_Numeros
         END; // FOR viComb02
      Stgr_Limit19_comb15.Cells[00,viLinhas] := viLinhas.ToString ; //DM1.IBQ_COMBINACOES.FIELDBYNAME('N').AsString;
      Stgr_Limit19_comb15.Cells[01,viLinhas] := COPY(vcCombinacoes15, 1,2);
      Stgr_Limit19_comb15.Cells[02,viLinhas] := COPY(vcCombinacoes15, 4,2);
      Stgr_Limit19_comb15.Cells[03,viLinhas] := COPY(vcCombinacoes15, 7,2);
      Stgr_Limit19_comb15.Cells[04,viLinhas] := COPY(vcCombinacoes15, 10,2);
      Stgr_Limit19_comb15.Cells[05,viLinhas] := COPY(vcCombinacoes15, 13,2);
      Stgr_Limit19_comb15.Cells[06,viLinhas] := COPY(vcCombinacoes15, 16,2);
      Stgr_Limit19_comb15.Cells[07,viLinhas] := COPY(vcCombinacoes15, 19,2);
      Stgr_Limit19_comb15.Cells[08,viLinhas] := COPY(vcCombinacoes15, 22,2);
      Stgr_Limit19_comb15.Cells[09,viLinhas] := COPY(vcCombinacoes15, 25,2);
      Stgr_Limit19_comb15.Cells[10,viLinhas] := COPY(vcCombinacoes15, 28,2);
      Stgr_Limit19_comb15.Cells[11,viLinhas] := COPY(vcCombinacoes15, 31,2);
      Stgr_Limit19_comb15.Cells[12,viLinhas] := COPY(vcCombinacoes15, 34,2);
      Stgr_Limit19_comb15.Cells[13,viLinhas] := COPY(vcCombinacoes15, 37,2);
      Stgr_Limit19_comb15.Cells[14,viLinhas] := COPY(vcCombinacoes15, 40,2);
      Stgr_Limit19_comb15.Cells[15,viLinhas] := COPY(vcCombinacoes15, 43,2);
      if (viLinhas MOD trunc(viQtdDados/50))=0 then
      begin
         Pgbr_EtaPa_09.Position := Pgbr_EtaPa_09.Position+10;
         Pgbr_EtaPa_09.Repaint;
      end;
      viLinhas := viLinhas + 1;
      DM1.IBQ_Combinacoes.Next;
   end; // while
   Stgr_Limit19_comb15.RowCount := viLinhas;
   Stgr_Limit19_comb10.RowCount := viLinhas;
   PR_Gravar_Dados23Comb15 ('GERADOR_RESULT_25_LINHAS2_19_15');
end;



Function T_F_Gerador_ResDiv_25Linhas2.QtdPares19_e9 (viLinhas:Integer) : boolean;
var
     viComb19_01, viContaSel1 : Integer;
begin
    viContaSel1 := 0;
    for viComb19_01:=2 to 20 do
    begin
        IF (STRtoINT(Stgr_Limit19_comb19.Cells[viComb19_01,viLinhas]) MOD 2)=0 THEN
        BEGIN
             viContaSel1:= viContaSel1 +1;
        END;// IF
    END; // FOR
    if (viContaSel1 = 10) or (viContaSel1 = 8) then
    begin
        result := True;
        exit;
    end;
    result := False;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Btn_CarregarClick(Sender: TObject);
begin
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('UPDATE GERADOR_RESULT_25_Linhas2_DEF SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     DM1.IBQ_Combinacoes.SQL.Clear;
     DM1.IBQ_Combinacoes.SQL.Add('COMMIT')  ;
     DM1.IBQ_Combinacoes.ExecSQL;
     SHOWMESSAGE('OK');
     SELF.Close;
end;







Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_OKClick(Sender: TObject);
begin
    Pgbr_EtaPa_01.Position :=0 ;
    Bbt_Etapa01.Click;
end;






Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_RemoveuRepetidosClick(
  Sender: TObject);
begin
     Pa_RemoveuRepetidos.Left := 5000;
     Bbt_PrepararMenu.Enabled := false;
     Bbt_GerarMenu.Enabled := false;
     Pa_Inicial.Enabled := TRUE;
     Btn_NovaSimulacao.Enabled := false;
     Btn_Reajustar.Enabled := TRUE;
//     Bbt_CARREGAR.Enabled := false;
     Pa_Inicial.Left := 1215;
     Pa_Inicial.Top := 29;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_b15_09Click(Sender: TObject);
begin
    Rb_b10_06.Checked := True;
    Trb_b15_L01.Position := 9 ;
    Trb_b15_L02.Position := 9 ;
    Trb_b15_L03.Position := 9 ;
    Trb_b15_L04.Position := 9 ;
    Trb_b15_L05.Position := 9 ;
    Trb_b15_L06.Position := 9 ;
    Trb_b15_L07.Position := 9 ;
    Trb_b15_L08.Position := 9 ;
    Trb_b15_L09.Position := 9 ;
    Trb_b15_L10.Position := 9 ;
    Pa_b15nda.Enabled := False;
    Pa_b15nda.Color := $008C7300;
    Pa_b10nda.Color := $008C7300;
    Trb_b25_L01.Position := 3 ;
    Trb_b25_L02.Position := 3 ;
    Trb_b25_L03.Position := 3 ;
    Trb_b25_L04.Position := 3 ;
    Trb_b25_L05.Position := 3 ;

end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b15_L01Change(Sender: TObject);
begin
     IF Trb_b15_L01.Position = 7 THEN
          La_b15_L01.Caption := '07';
     IF Trb_b15_L01.Position = 8 THEN
          La_b15_L01.Caption := '08';
     IF Trb_b15_L01.Position = 9 THEN
          La_b15_L01.Caption := '09';
     IF Trb_b15_L01.Position = 10 THEN
          La_b15_L01.Caption := '10';
     IF Trb_b15_L01.Position = 11 THEN
          La_b15_L01.Caption := '11';

     IF Trb_b15_L01.Position = 7 THEN
          La_b10_L01.Caption := '08';
     IF Trb_b15_L01.Position = 8 THEN
          La_b10_L01.Caption := '07';
     IF Trb_b15_L01.Position = 9 THEN
          La_b10_L01.Caption := '06';
     IF Trb_b15_L01.Position = 10 THEN
          La_b10_L01.Caption := '05';
     IF Trb_b15_L01.Position = 11 THEN
          La_b10_L01.Caption := '04';
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b15_L02Change(Sender: TObject);
begin
     IF Trb_b15_L02.Position = 7 THEN
          La_b15_L02.Caption := '07';
     IF Trb_b15_L02.Position = 8 THEN
          La_b15_L02.Caption := '08';
     IF Trb_b15_L02.Position = 9 THEN
          La_b15_L02.Caption := '09';
     IF Trb_b15_L02.Position = 10 THEN
          La_b15_L02.Caption := '10';
     IF Trb_b15_L02.Position = 11 THEN
          La_b15_L02.Caption := '11';

     IF Trb_b15_L02.Position = 7 THEN
          La_b10_L02.Caption := '08';
     IF Trb_b15_L02.Position = 8 THEN
          La_b10_L02.Caption := '07';
     IF Trb_b15_L02.Position = 9 THEN
          La_b10_L02.Caption := '06';
     IF Trb_b15_L02.Position = 10 THEN
          La_b10_L02.Caption := '05';
     IF Trb_b15_L02.Position = 11 THEN
          La_b10_L02.Caption := '04';
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b15_L03Change(Sender: TObject);
begin
     IF Trb_b15_L03.Position = 7 THEN
          La_b15_L03.Caption := '07';
     IF Trb_b15_L03.Position = 8 THEN
          La_b15_L03.Caption := '08';
     IF Trb_b15_L03.Position = 9 THEN
          La_b15_L03.Caption := '09';
     IF Trb_b15_L03.Position = 10 THEN
          La_b15_L03.Caption := '10';
     IF Trb_b15_L03.Position = 11 THEN
          La_b15_L03.Caption := '11';

     IF Trb_b15_L03.Position = 7 THEN
          La_b10_L03.Caption := '08';
     IF Trb_b15_L03.Position = 8 THEN
          La_b10_L03.Caption := '07';
     IF Trb_b15_L03.Position = 9 THEN
          La_b10_L03.Caption := '06';
     IF Trb_b15_L03.Position = 10 THEN
          La_b10_L03.Caption := '05';
     IF Trb_b15_L03.Position = 11 THEN
          La_b10_L03.Caption := '04';
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b15_L04Change(Sender: TObject);
begin
     IF Trb_b15_L04.Position = 7 THEN
          La_b15_L04.Caption := '07';
     IF Trb_b15_L04.Position = 8 THEN
          La_b15_L04.Caption := '08';
     IF Trb_b15_L04.Position = 9 THEN
          La_b15_L04.Caption := '09';
     IF Trb_b15_L04.Position = 10 THEN
          La_b15_L04.Caption := '10';
     IF Trb_b15_L04.Position = 11 THEN
          La_b15_L04.Caption := '11';

     IF Trb_b15_L04.Position = 7 THEN
          La_b10_L04.Caption := '08';
     IF Trb_b15_L04.Position = 8 THEN
          La_b10_L04.Caption := '07';
     IF Trb_b15_L04.Position = 9 THEN
          La_b10_L04.Caption := '06';
     IF Trb_b15_L04.Position = 10 THEN
          La_b10_L04.Caption := '05';
     IF Trb_b15_L04.Position = 11 THEN
          La_b10_L04.Caption := '04';
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b15_L05Change(Sender: TObject);
begin
     IF Trb_b15_L05.Position = 7 THEN
          La_b15_L05.Caption := '07';
     IF Trb_b15_L05.Position = 8 THEN
          La_b15_L05.Caption := '08';
     IF Trb_b15_L05.Position = 9 THEN
          La_b15_L05.Caption := '09';
     IF Trb_b15_L05.Position = 10 THEN
          La_b15_L05.Caption := '10';
     IF Trb_b15_L05.Position = 11 THEN
          La_b15_L05.Caption := '11';

     IF Trb_b15_L05.Position = 7 THEN
          La_b10_L05.Caption := '08';
     IF Trb_b15_L05.Position = 8 THEN
          La_b10_L05.Caption := '07';
     IF Trb_b15_L05.Position = 9 THEN
          La_b10_L05.Caption := '06';
     IF Trb_b15_L05.Position = 10 THEN
          La_b10_L05.Caption := '05';
     IF Trb_b15_L05.Position = 11 THEN
          La_b10_L05.Caption := '04';
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b15_L06Change(Sender: TObject);
begin
     IF Trb_b15_L06.Position = 7 THEN
          La_b15_L06.Caption := '07';
     IF Trb_b15_L06.Position = 8 THEN
          La_b15_L06.Caption := '08';
     IF Trb_b15_L06.Position = 9 THEN
          La_b15_L06.Caption := '09';
     IF Trb_b15_L06.Position = 10 THEN
          La_b15_L06.Caption := '10';
     IF Trb_b15_L06.Position = 11 THEN
          La_b15_L06.Caption := '11';

     IF Trb_b15_L06.Position = 7 THEN
          La_b10_L06.Caption := '08';
     IF Trb_b15_L06.Position = 8 THEN
          La_b10_L06.Caption := '07';
     IF Trb_b15_L06.Position = 9 THEN
          La_b10_L06.Caption := '06';
     IF Trb_b15_L06.Position = 10 THEN
          La_b10_L06.Caption := '05';
     IF Trb_b15_L06.Position = 11 THEN
          La_b10_L06.Caption := '04';
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b15_L07Change(Sender: TObject);
begin
     IF Trb_b15_L07.Position = 7 THEN
          La_b15_L07.Caption := '07';
     IF Trb_b15_L07.Position = 8 THEN
          La_b15_L07.Caption := '08';
     IF Trb_b15_L07.Position = 9 THEN
          La_b15_L07.Caption := '09';
     IF Trb_b15_L07.Position = 10 THEN
          La_b15_L07.Caption := '10';
     IF Trb_b15_L07.Position = 11 THEN
          La_b15_L07.Caption := '11';

     IF Trb_b15_L07.Position = 7 THEN
          La_b10_L07.Caption := '08';
     IF Trb_b15_L07.Position = 8 THEN
          La_b10_L07.Caption := '07';
     IF Trb_b15_L07.Position = 9 THEN
          La_b10_L07.Caption := '06';
     IF Trb_b15_L07.Position = 10 THEN
          La_b10_L07.Caption := '05';
     IF Trb_b15_L07.Position = 11 THEN
          La_b10_L07.Caption := '04';
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b15_L08Change(Sender: TObject);
begin
     IF Trb_b15_L08.Position = 7 THEN
          La_b15_L08.Caption := '07';
     IF Trb_b15_L08.Position = 8 THEN
          La_b15_L08.Caption := '08';
     IF Trb_b15_L08.Position = 9 THEN
          La_b15_L08.Caption := '09';
     IF Trb_b15_L08.Position = 10 THEN
          La_b15_L08.Caption := '10';
     IF Trb_b15_L08.Position = 11 THEN
          La_b15_L08.Caption := '11';

     IF Trb_b15_L08.Position = 7 THEN
          La_b10_L08.Caption := '08';
     IF Trb_b15_L08.Position = 8 THEN
          La_b10_L08.Caption := '07';
     IF Trb_b15_L08.Position = 9 THEN
          La_b10_L08.Caption := '06';
     IF Trb_b15_L08.Position = 10 THEN
          La_b10_L08.Caption := '05';
     IF Trb_b15_L08.Position = 11 THEN
          La_b10_L08.Caption := '04';
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b15_L09Change(Sender: TObject);
begin
     IF Trb_b15_L09.Position = 7 THEN
          La_b15_L09.Caption := '07';
     IF Trb_b15_L09.Position = 8 THEN
          La_b15_L09.Caption := '08';
     IF Trb_b15_L09.Position = 9 THEN
          La_b15_L09.Caption := '09';
     IF Trb_b15_L09.Position = 10 THEN
          La_b15_L09.Caption := '10';
     IF Trb_b15_L09.Position = 11 THEN
          La_b15_L09.Caption := '11';

     IF Trb_b15_L09.Position = 7 THEN
          La_b10_L09.Caption := '08';
     IF Trb_b15_L09.Position = 8 THEN
          La_b10_L09.Caption := '07';
     IF Trb_b15_L09.Position = 9 THEN
          La_b10_L09.Caption := '06';
     IF Trb_b15_L09.Position = 10 THEN
          La_b10_L09.Caption := '05';
     IF Trb_b15_L09.Position = 11 THEN
          La_b10_L09.Caption := '04';
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b15_L10Change(Sender: TObject);
begin
     IF Trb_b15_L10.Position = 7 THEN
          La_b15_L10.Caption := '07';
     IF Trb_b15_L10.Position = 8 THEN
          La_b15_L10.Caption := '08';
     IF Trb_b15_L10.Position = 9 THEN
          La_b15_L10.Caption := '09';
     IF Trb_b15_L10.Position = 10 THEN
          La_b15_L10.Caption := '10';
     IF Trb_b15_L10.Position = 11 THEN
          La_b15_L10.Caption := '11';

     IF Trb_b15_L10.Position = 7 THEN
          La_b10_L10.Caption := '08';
     IF Trb_b15_L10.Position = 8 THEN
          La_b10_L10.Caption := '07';
     IF Trb_b15_L10.Position = 9 THEN
          La_b10_L10.Caption := '06';
     IF Trb_b15_L10.Position = 10 THEN
          La_b10_L10.Caption := '05';
     IF Trb_b15_L10.Position = 11 THEN
          La_b10_L10.Caption := '04';
end;


 

Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_b15_07Click(Sender: TObject);
begin
    Rb_b10_08.Checked := True;
    Trb_b15_L01.Position := 7 ;
    Trb_b15_L02.Position := 7 ;
    Trb_b15_L03.Position := 7 ;
    Trb_b15_L04.Position := 7 ;
    Trb_b15_L05.Position := 7 ;
    Trb_b15_L06.Position := 7 ;
    Trb_b15_L07.Position := 7 ;
    Trb_b15_L08.Position := 7 ;
    Trb_b15_L09.Position := 7 ;
    Trb_b15_L10.Position := 7 ;
    Pa_b15nda.Enabled := False;
    Pa_b15nda.Color := $008C7300;
    Pa_b10nda.Color := $008C7300;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_b15_08Click(Sender: TObject);
begin
    Rb_b10_07.Checked := True;
    Trb_b15_L01.Position := 8 ;
    Trb_b15_L02.Position := 8 ;
    Trb_b15_L03.Position := 8 ;
    Trb_b15_L04.Position := 8 ;
    Trb_b15_L05.Position := 8 ;
    Trb_b15_L06.Position := 8 ;
    Trb_b15_L07.Position := 8 ;
    Trb_b15_L08.Position := 8 ;
    Trb_b15_L09.Position := 8 ;
    Trb_b15_L10.Position := 8 ;
    Pa_b15nda.Enabled := False;
    Pa_b15nda.Color := $008C7300;
    Pa_b10nda.Color := $008C7300;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_b15_10Click(Sender: TObject);
begin
    Rb_b10_05.Checked := True;
    Trb_b15_L01.Position := 10 ;
    Trb_b15_L02.Position := 10 ;
    Trb_b15_L03.Position := 10 ;
    Trb_b15_L04.Position := 10 ;
    Trb_b15_L05.Position := 10 ;
    Trb_b15_L06.Position := 10 ;
    Trb_b15_L07.Position := 10 ;
    Trb_b15_L08.Position := 10 ;
    Trb_b15_L09.Position := 10 ;
    Trb_b15_L10.Position := 10 ;
    Pa_b15nda.Enabled := False;
    Pa_b15nda.Color := $008C7300;
    Pa_b10nda.Color := $008C7300;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_b15_11Click(Sender: TObject);
begin
    Rb_b10_04.Checked := True;
    Trb_b15_L01.Position := 11 ;
    Trb_b15_L02.Position := 11 ;
    Trb_b15_L03.Position := 11 ;
    Trb_b15_L04.Position := 11 ;
    Trb_b15_L05.Position := 11 ;
    Trb_b15_L06.Position := 11 ;
    Trb_b15_L07.Position := 11 ;
    Trb_b15_L08.Position := 11 ;
    Trb_b15_L09.Position := 11 ;
    Trb_b15_L10.Position := 11 ;
    Pa_b15nda.Enabled := False;
    Pa_b15nda.Color := $008C7300;
    Pa_b10nda.Color := $008C7300;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_b15_ndaClick(Sender: TObject);
begin
    Pa_b15nda.Enabled := True;
    Pa_b15nda.Color := $00DDE291;
    Pa_b10nda.Color := $00DDE291;
    Trb_b15_L01.Repaint;
    Trb_b15_L02.Repaint;
    Trb_b15_L03.Repaint;
    Trb_b15_L04.Repaint;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b25_L01Change(Sender: TObject);
begin
     IF Trb_b25_L01.Position = 3 THEN
          La_b25_L01.Caption := '03';
     IF Trb_b25_L01.Position = 4 THEN
          La_b25_L01.Caption := '04';
     IF Trb_b25_L01.Position = 2 THEN
          La_b25_L01.Caption := '02';
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b25_L02Change(Sender: TObject);
begin
     IF Trb_b25_L02.Position = 3 THEN
          La_b25_L02.Caption := '03';
     IF Trb_b25_L02.Position = 4 THEN
          La_b25_L02.Caption := '04';
     IF Trb_b25_L02.Position = 2 THEN
          La_b25_L02.Caption := '02';
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b25_L03Change(Sender: TObject);
begin
     IF Trb_b25_L03.Position = 3 THEN
          La_b25_L03.Caption := '03';
     IF Trb_b25_L03.Position = 4 THEN
          La_b25_L03.Caption := '04';
     IF Trb_b25_L03.Position = 2 THEN
          La_b25_L03.Caption := '02';
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b25_L04Change(Sender: TObject);
begin
     IF Trb_b25_L04.Position = 3 THEN
          La_b25_L04.Caption := '03';
     IF Trb_b25_L04.Position = 4 THEN
          La_b25_L04.Caption := '04';
     IF Trb_b25_L04.Position = 2 THEN
          La_b25_L04.Caption := '02';
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_b25_L05Change(Sender: TObject);
begin
     IF Trb_b25_L05.Position = 3 THEN
          La_b25_L05.Caption := '03';
     IF Trb_b25_L05.Position = 4 THEN
          La_b25_L05.Caption := '04';
     IF Trb_b25_L05.Position = 2 THEN
          La_b25_L05.Caption := '02';
end;




Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_ppim1_01Change(Sender: TObject);
begin
     IF Trb_ppim1_01.Position = 4 THEN
          La_ppim1_01.Caption := '04';
     IF Trb_ppim1_01.Position = 5 THEN
          La_ppim1_01.Caption := '05';
     IF Trb_ppim1_01.Position = 6 THEN
          La_ppim1_01.Caption := '06';
     IF Trb_ppim2_01.Position < Trb_ppim1_01.Position THEN
     begin
          Trb_ppim2_01.Position := Trb_ppim1_01.Position;
          La_ppim2_01.Caption := La_ppim1_01.Caption;
     end;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_ppim1_02Change(Sender: TObject);
begin
     IF Trb_ppim1_02.Position = 3 THEN
          La_ppim1_02.Caption := '03';
     IF Trb_ppim1_02.Position = 4 THEN
          La_ppim1_02.Caption := '04';
     IF Trb_ppim1_02.Position = 5 THEN
          La_ppim1_02.Caption := '05';
     IF Trb_ppim2_02.Position < Trb_ppim1_02.Position THEN
     begin
          Trb_ppim2_02.Position := Trb_ppim1_02.Position;
          La_ppim2_02.Caption := La_ppim1_02.Caption;
     end;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_ppim1_03Change(Sender: TObject);
begin
     IF Trb_ppim1_03.Position = 2 THEN
          La_ppim1_03.Caption := '02';
     IF Trb_ppim1_03.Position = 3 THEN
          La_ppim1_03.Caption := '03';
     IF Trb_ppim1_03.Position = 4 THEN
          La_ppim1_03.Caption := '04';
     IF Trb_ppim2_03.Position < Trb_ppim1_03.Position THEN
     begin
          Trb_ppim2_03.Position := Trb_ppim1_03.Position;
          La_ppim2_03.Caption := La_ppim1_03.Caption;
     end;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_ppim1_04Change(Sender: TObject);
begin
     IF Trb_ppim1_04.Position = 2 THEN
          La_ppim1_04.Caption := '02';
     IF Trb_ppim1_04.Position = 3 THEN
          La_ppim1_04.Caption := '03';
     IF Trb_ppim1_04.Position = 4 THEN
          La_ppim1_04.Caption := '04';
     IF Trb_ppim2_04.Position < Trb_ppim1_04.Position THEN
     begin
          Trb_ppim2_04.Position := Trb_ppim1_04.Position;
          La_ppim2_04.Caption := La_ppim1_04.Caption;
     end;
end;




Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_ppim2_01Change(Sender: TObject);
begin
     IF Trb_ppim2_01.Position < Trb_ppim1_01.Position THEN
          Trb_ppim2_01.Position := Trb_ppim1_01.Position;
     IF Trb_ppim2_01.Position = 4 THEN
          La_ppim2_01.Caption := '04';
     IF Trb_ppim2_01.Position = 5 THEN
          La_ppim2_01.Caption := '05';
     IF Trb_ppim2_01.Position = 6 THEN
          La_ppim2_01.Caption := '06';
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_ppim2_02Change(Sender: TObject);
begin
     IF Trb_ppim2_02.Position < Trb_ppim1_02.Position THEN
          Trb_ppim2_02.Position := Trb_ppim1_02.Position;
     IF Trb_ppim2_02.Position = 3 THEN
          La_ppim2_02.Caption := '03';
     IF Trb_ppim2_02.Position = 4 THEN
          La_ppim2_02.Caption := '04';
     IF Trb_ppim2_02.Position = 5 THEN
          La_ppim2_02.Caption := '05';
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_ppim2_03Change(Sender: TObject);
begin
     IF Trb_ppim2_03.Position < Trb_ppim1_03.Position THEN
          Trb_ppim2_03.Position := Trb_ppim1_03.Position;
     IF Trb_ppim2_03.Position = 2 THEN
          La_ppim2_03.Caption := '02';
     IF Trb_ppim2_03.Position = 3 THEN
          La_ppim2_03.Caption := '03';
     IF Trb_ppim2_03.Position = 4 THEN
          La_ppim2_03.Caption := '04';
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Trb_ppim2_04Change(Sender: TObject);
begin
     IF Trb_ppim2_04.Position < Trb_ppim1_04.Position THEN
          Trb_ppim2_04.Position := Trb_ppim1_04.Position;
     IF Trb_ppim2_04.Position = 2 THEN
          La_ppim2_04.Caption := '02';
     IF Trb_ppim2_04.Position = 3 THEN
          La_ppim2_04.Caption := '03';
     IF Trb_ppim2_04.Position = 4 THEN
          La_ppim2_04.Caption := '04';
end;




Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_ParImpMod1Click(Sender: TObject);
begin
    Stgr_ppi_A.Cells[0,0] := 'A';
    Stgr_ppi_A.Cells[01,0] := '01';
    Stgr_ppi_A.Cells[02,0] := '07';
    Stgr_ppi_A.Cells[03,0] := '09';
    Stgr_ppi_A.Cells[04,0] := '11';
    Stgr_ppi_A.Cells[05,0] := '15';
    Stgr_ppi_A.Cells[06,0] := '17';
    Stgr_ppi_A.Cells[07,0] := '19';
    Stgr_ppi_A.Cells[08,0] := '25';
    Stgr_ppi_B.Cells[0,0] := 'B';
    Stgr_ppi_B.Cells[01,0] := '02';
    Stgr_ppi_B.Cells[02,0] := '04';
    Stgr_ppi_B.Cells[03,0] := '06';
    Stgr_ppi_B.Cells[04,0] := '14';
    Stgr_ppi_B.Cells[05,0] := '20';
    Stgr_ppi_B.Cells[06,0] := '22';
    Stgr_ppi_B.Cells[07,0] := '24';
    Stgr_ppi_C.Cells[0,0] := 'C';
    Stgr_ppi_C.Cells[01,0] := '03';
    Stgr_ppi_C.Cells[02,0] := '05';
    Stgr_ppi_C.Cells[03,0] := '13';
    Stgr_ppi_C.Cells[04,0] := '21';
    Stgr_ppi_C.Cells[05,0] := '23';
    Stgr_ppi_D.Cells[0,0] := 'D';
    Stgr_ppi_D.Cells[01,0] := '08';
    Stgr_ppi_D.Cells[02,0] := '10';
    Stgr_ppi_D.Cells[03,0] := '12';
    Stgr_ppi_D.Cells[04,0] := '16';
    Stgr_ppi_D.Cells[05,0] := '18';
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_ParImpMod2Click(Sender: TObject);
begin
    Stgr_ppi_A.Cells[0,0] := 'A';
    Stgr_ppi_A.Cells[01,0] := '01';
    Stgr_ppi_A.Cells[02,0] := '05';
    Stgr_ppi_A.Cells[03,0] := '11';
    Stgr_ppi_A.Cells[04,0] := '13';
    Stgr_ppi_A.Cells[05,0] := '15';
    Stgr_ppi_A.Cells[06,0] := '17';
    Stgr_ppi_A.Cells[07,0] := '19';
    Stgr_ppi_A.Cells[08,0] := '23';
    Stgr_ppi_B.Cells[0,0] := 'B';
    Stgr_ppi_B.Cells[01,0] := '02';
    Stgr_ppi_B.Cells[02,0] := '04';
    Stgr_ppi_B.Cells[03,0] := '06';
    Stgr_ppi_B.Cells[04,0] := '14';
    Stgr_ppi_B.Cells[05,0] := '20';
    Stgr_ppi_B.Cells[06,0] := '22';
    Stgr_ppi_B.Cells[07,0] := '24';
    Stgr_ppi_C.Cells[0,0] := 'C';
    Stgr_ppi_C.Cells[01,0] := '03';
    Stgr_ppi_C.Cells[02,0] := '07';
    Stgr_ppi_C.Cells[03,0] := '09';
    Stgr_ppi_C.Cells[04,0] := '21';
    Stgr_ppi_C.Cells[05,0] := '25';
    Stgr_ppi_D.Cells[0,0] := 'D';
    Stgr_ppi_D.Cells[01,0] := '08';
    Stgr_ppi_D.Cells[02,0] := '10';
    Stgr_ppi_D.Cells[03,0] := '12';
    Stgr_ppi_D.Cells[04,0] := '16';
    Stgr_ppi_D.Cells[05,0] := '18';
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_ParImpMod3Click(Sender: TObject);
begin
    Stgr_ppi_A.Cells[0,0] := 'A';
    Stgr_ppi_A.Cells[01,0] := '01';
    Stgr_ppi_A.Cells[02,0] := '05';
    Stgr_ppi_A.Cells[03,0] := '09';
    Stgr_ppi_A.Cells[04,0] := '11';
    Stgr_ppi_A.Cells[05,0] := '15';
    Stgr_ppi_A.Cells[06,0] := '17';
    Stgr_ppi_A.Cells[07,0] := '21';
    Stgr_ppi_A.Cells[08,0] := '25';
    Stgr_ppi_B.Cells[0,0] := 'B';
    Stgr_ppi_B.Cells[01,0] := '02';
    Stgr_ppi_B.Cells[02,0] := '06';
    Stgr_ppi_B.Cells[03,0] := '10';
    Stgr_ppi_B.Cells[04,0] := '12';
    Stgr_ppi_B.Cells[05,0] := '14';
    Stgr_ppi_B.Cells[06,0] := '22';
    Stgr_ppi_B.Cells[07,0] := '24';
    Stgr_ppi_C.Cells[0,0] := 'C';
    Stgr_ppi_C.Cells[01,0] := '03';
    Stgr_ppi_C.Cells[02,0] := '07';
    Stgr_ppi_C.Cells[03,0] := '13';
    Stgr_ppi_C.Cells[04,0] := '19';
    Stgr_ppi_C.Cells[05,0] := '23';
    Stgr_ppi_D.Cells[0,0] := 'D';
    Stgr_ppi_D.Cells[01,0] := '04';
    Stgr_ppi_D.Cells[02,0] := '08';
    Stgr_ppi_D.Cells[03,0] := '16';
    Stgr_ppi_D.Cells[04,0] := '18';
    Stgr_ppi_D.Cells[05,0] := '20';
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_ParImpMod4Click(Sender: TObject);
begin
    Stgr_ppi_A.Cells[0,0] := 'A';
    Stgr_ppi_A.Cells[01,0] := '03';
    Stgr_ppi_A.Cells[02,0] := '05';
    Stgr_ppi_A.Cells[03,0] := '07';
    Stgr_ppi_A.Cells[04,0] := '11';
    Stgr_ppi_A.Cells[05,0] := '15';
    Stgr_ppi_A.Cells[06,0] := '17';
    Stgr_ppi_A.Cells[07,0] := '23';
    Stgr_ppi_A.Cells[08,0] := '25';
    Stgr_ppi_B.Cells[0,0] := 'B';
    Stgr_ppi_B.Cells[01,0] := '02';
    Stgr_ppi_B.Cells[02,0] := '08';
    Stgr_ppi_B.Cells[03,0] := '10';
    Stgr_ppi_B.Cells[04,0] := '14';
    Stgr_ppi_B.Cells[05,0] := '16';
    Stgr_ppi_B.Cells[06,0] := '18';
    Stgr_ppi_B.Cells[07,0] := '22';
    Stgr_ppi_C.Cells[0,0] := 'C';
    Stgr_ppi_C.Cells[01,0] := '01';
    Stgr_ppi_C.Cells[02,0] := '09';
    Stgr_ppi_C.Cells[03,0] := '13';
    Stgr_ppi_C.Cells[04,0] := '19';
    Stgr_ppi_C.Cells[05,0] := '21';
    Stgr_ppi_D.Cells[0,0] := 'D';
    Stgr_ppi_D.Cells[01,0] := '04';
    Stgr_ppi_D.Cells[02,0] := '06';
    Stgr_ppi_D.Cells[03,0] := '12';
    Stgr_ppi_D.Cells[04,0] := '20';
    Stgr_ppi_D.Cells[05,0] := '24';
end;




Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_ParImpMod5Click(Sender: TObject);
begin
    Stgr_ppi_A.Cells[0,0] := 'A';
    Stgr_ppi_A.Cells[01,0] := '01';
    Stgr_ppi_A.Cells[02,0] := '05';
    Stgr_ppi_A.Cells[03,0] := '09';
    Stgr_ppi_A.Cells[04,0] := '13';
    Stgr_ppi_A.Cells[05,0] := '15';
    Stgr_ppi_A.Cells[06,0] := '17';
    Stgr_ppi_A.Cells[07,0] := '21';
    Stgr_ppi_A.Cells[08,0] := '23';
    Stgr_ppi_B.Cells[0,0] := 'B';
    Stgr_ppi_B.Cells[01,0] := '06';
    Stgr_ppi_B.Cells[02,0] := '08';
    Stgr_ppi_B.Cells[03,0] := '10';
    Stgr_ppi_B.Cells[04,0] := '12';
    Stgr_ppi_B.Cells[05,0] := '16';
    Stgr_ppi_B.Cells[06,0] := '18';
    Stgr_ppi_B.Cells[07,0] := '20';
    Stgr_ppi_C.Cells[0,0] := 'C';
    Stgr_ppi_C.Cells[01,0] := '03';
    Stgr_ppi_C.Cells[02,0] := '07';
    Stgr_ppi_C.Cells[03,0] := '11';
    Stgr_ppi_C.Cells[04,0] := '19';
    Stgr_ppi_C.Cells[05,0] := '25';
    Stgr_ppi_D.Cells[0,0] := 'D';
    Stgr_ppi_D.Cells[01,0] := '02';
    Stgr_ppi_D.Cells[02,0] := '04';
    Stgr_ppi_D.Cells[03,0] := '14';
    Stgr_ppi_D.Cells[04,0] := '22';
    Stgr_ppi_D.Cells[05,0] := '24';
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_ParImpMod6Click(Sender: TObject);
begin
    Stgr_ppi_A.Cells[0,0] := 'A';
    Stgr_ppi_A.Cells[01,0] := '03';
    Stgr_ppi_A.Cells[02,0] := '07';
    Stgr_ppi_A.Cells[03,0] := '09';
    Stgr_ppi_A.Cells[04,0] := '11';
    Stgr_ppi_A.Cells[05,0] := '13';
    Stgr_ppi_A.Cells[06,0] := '15';
    Stgr_ppi_A.Cells[07,0] := '21';
    Stgr_ppi_A.Cells[08,0] := '25';
    Stgr_ppi_B.Cells[0,0] := 'B';
    Stgr_ppi_B.Cells[01,0] := '02';
    Stgr_ppi_B.Cells[02,0] := '08';
    Stgr_ppi_B.Cells[03,0] := '12';
    Stgr_ppi_B.Cells[04,0] := '14';
    Stgr_ppi_B.Cells[05,0] := '16';
    Stgr_ppi_B.Cells[06,0] := '18';
    Stgr_ppi_B.Cells[07,0] := '20';
    Stgr_ppi_C.Cells[0,0] := 'C';
    Stgr_ppi_C.Cells[01,0] := '01';
    Stgr_ppi_C.Cells[02,0] := '05';
    Stgr_ppi_C.Cells[03,0] := '17';
    Stgr_ppi_C.Cells[04,0] := '19';
    Stgr_ppi_C.Cells[05,0] := '23';
    Stgr_ppi_D.Cells[0,0] := 'D';
    Stgr_ppi_D.Cells[01,0] := '04';
    Stgr_ppi_D.Cells[02,0] := '06';
    Stgr_ppi_D.Cells[03,0] := '10';
    Stgr_ppi_D.Cells[04,0] := '22';
    Stgr_ppi_D.Cells[05,0] := '24';
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Rb_ParImpMod7Click(Sender: TObject);
begin
    Stgr_ppi_A.Cells[0,0] := 'A';
    Stgr_ppi_A.Cells[01,0] := '01';
    Stgr_ppi_A.Cells[02,0] := '03';
    Stgr_ppi_A.Cells[03,0] := '09';
    Stgr_ppi_A.Cells[04,0] := '11';
    Stgr_ppi_A.Cells[05,0] := '13';
    Stgr_ppi_A.Cells[06,0] := '19';
    Stgr_ppi_A.Cells[07,0] := '23';
    Stgr_ppi_A.Cells[08,0] := '25';
    Stgr_ppi_B.Cells[0,0] := 'B';
    Stgr_ppi_B.Cells[01,0] := '02';
    Stgr_ppi_B.Cells[02,0] := '06';
    Stgr_ppi_B.Cells[03,0] := '12';
    Stgr_ppi_B.Cells[04,0] := '14';
    Stgr_ppi_B.Cells[05,0] := '16';
    Stgr_ppi_B.Cells[06,0] := '18';
    Stgr_ppi_B.Cells[07,0] := '22';
    Stgr_ppi_C.Cells[0,0] := 'C';
    Stgr_ppi_C.Cells[01,0] := '05';
    Stgr_ppi_C.Cells[02,0] := '07';
    Stgr_ppi_C.Cells[03,0] := '15';
    Stgr_ppi_C.Cells[04,0] := '17';
    Stgr_ppi_C.Cells[05,0] := '21';
    Stgr_ppi_D.Cells[0,0] := 'D';
    Stgr_ppi_D.Cells[01,0] := '04';
    Stgr_ppi_D.Cells[02,0] := '08';
    Stgr_ppi_D.Cells[03,0] := '10';
    Stgr_ppi_D.Cells[04,0] := '20';
    Stgr_ppi_D.Cells[05,0] := '24';
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.MontaBase10();
VAR
     viContador1, viContarCelulas, viContar : Integer;
begin
    for viContador1 :=1 to 10 do
    begin
               FOR viContar :=1 TO 25 DO
               BEGIN
                    Stgr_Todos_Numeros.Cells[viContar,1] :='F';
               END; // FOR viContar
               // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
               FOR viContar :=2 TO 16 DO
               BEGIN
                    Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base.Cells[viContar,viContador1])) ,1]:='V';
               END; // FOR viContador1
               viContarCelulas := 2;
               FOR viContar :=1 TO 25 DO
               BEGIN
                    IF (Stgr_Todos_Numeros.Cells[viContar,1]='F') THEN
                    BEGIN
                         Stgr_Base10.Cells [viContarCelulas, viContador1] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
                         viContarCelulas := viContarCelulas + 1;
                    END; // IF (Stgr_Todos_Numeros
               END; // FOR viContar
               Stgr_Base10.Cells [1, viContador1] := INTtoSTR(viContador1*2);
    end; // for viContador1
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_PreencherPadraoClick(Sender: TObject);
VAR
     viContador1, viContarCelulas, viContar, viSoma : Integer;
     vasEtapa11N11: array [1..25] of String;
     vasEtapa11N14: array [1..25] of String;
begin
    Bbt_EditarBlase25.Enabled := True;
    FOR viContador1 := 1 TO 25 DO
    BEGIN
        Stgr_Todos_Numeros.Cells[viContador1,0] := INTtoSTR(viContador1);
    END;
    FOR viContador1 := 2 TO 19 DO
    BEGIN
        Stgr_Base.Cells[viContador1,0] := INTtoSTR(viContador1-1);
    END;
    FOR viContador1 := 2 TO 11 DO
    BEGIN
        Stgr_Base10.Cells[viContador1,0] := INTtoSTR(viContador1-1);
    END;
    // 1
    viContador1 := 1 ;
    Stgr_Base.Cells[0,viContador1] := '';
    Stgr_Base.Cells[01,viContador1] := '+1';
    Stgr_Base.Cells[02,viContador1] := '01';
    Stgr_Base.Cells[03,viContador1] := '02';
    Stgr_Base.Cells[04,viContador1] := '03';
    Stgr_Base.Cells[05,viContador1] := '04';
    Stgr_Base.Cells[06,viContador1] := '05';
    Stgr_Base.Cells[07,viContador1] := '06';
    Stgr_Base.Cells[08,viContador1] := '07';
    Stgr_Base.Cells[09,viContador1] := '13';
    Stgr_Base.Cells[10,viContador1] := '19';
    Stgr_Base.Cells[11,viContador1] := '20';
    Stgr_Base.Cells[12,viContador1] := '21';
    Stgr_Base.Cells[13,viContador1] := '22';
    Stgr_Base.Cells[14,viContador1] := '23';
    Stgr_Base.Cells[15,viContador1] := '24';
    Stgr_Base.Cells[16,viContador1] := '25';
    // 2
    viContador1 := 02 ;
    Stgr_Base.Cells[0,viContador1] := '';
    Stgr_Base.Cells[01,viContador1] := '+3';
    Stgr_Base.Cells[02,viContador1] := '01';
    Stgr_Base.Cells[03,viContador1] := '02';
    Stgr_Base.Cells[04,viContador1] := '03';
    Stgr_Base.Cells[05,viContador1] := '04';
    Stgr_Base.Cells[06,viContador1] := '05';
    Stgr_Base.Cells[07,viContador1] := '08';
    Stgr_Base.Cells[08,viContador1] := '09';
    Stgr_Base.Cells[09,viContador1] := '10';
    Stgr_Base.Cells[10,viContador1] := '11';
    Stgr_Base.Cells[11,viContador1] := '12';
    Stgr_Base.Cells[12,viContador1] := '21';
    Stgr_Base.Cells[13,viContador1] := '22';
    Stgr_Base.Cells[14,viContador1] := '23';
    Stgr_Base.Cells[15,viContador1] := '24';
    Stgr_Base.Cells[16,viContador1] := '25';
    Stgr_Base.Cells[19,viContador1] := '25';
    // 3
    viContador1 := 03 ;
    Stgr_Base.Cells[0,viContador1] := '';
    Stgr_Base.Cells[01,viContador1] := '+5';
    Stgr_Base.Cells[02,viContador1] := '01';
    Stgr_Base.Cells[03,viContador1] := '02';
    Stgr_Base.Cells[04,viContador1] := '03';
    Stgr_Base.Cells[05,viContador1] := '04';
    Stgr_Base.Cells[06,viContador1] := '05';
    Stgr_Base.Cells[07,viContador1] := '14';
    Stgr_Base.Cells[08,viContador1] := '15';
    Stgr_Base.Cells[09,viContador1] := '16';
    Stgr_Base.Cells[10,viContador1] := '17';
    Stgr_Base.Cells[11,viContador1] := '18';
    Stgr_Base.Cells[12,viContador1] := '21';
    Stgr_Base.Cells[13,viContador1] := '22';
    Stgr_Base.Cells[14,viContador1] := '23';
    Stgr_Base.Cells[15,viContador1] := '24';
    Stgr_Base.Cells[16,viContador1] := '25';
    // 4
    viContador1 := 04 ;
    Stgr_Base.Cells[0,viContador1] := '';
    Stgr_Base.Cells[01,viContador1] := '+7';
    Stgr_Base.Cells[02,viContador1] := '01';
    Stgr_Base.Cells[03,viContador1] := '02';
    Stgr_Base.Cells[04,viContador1] := '03';
    Stgr_Base.Cells[05,viContador1] := '04';
    Stgr_Base.Cells[06,viContador1] := '05';
    Stgr_Base.Cells[07,viContador1] := '06';
    Stgr_Base.Cells[08,viContador1] := '07';
    Stgr_Base.Cells[09,viContador1] := '08';
    Stgr_Base.Cells[10,viContador1] := '09';
    Stgr_Base.Cells[11,viContador1] := '10';
    Stgr_Base.Cells[12,viContador1] := '11';
    Stgr_Base.Cells[13,viContador1] := '12';
    Stgr_Base.Cells[14,viContador1] := '13';
    Stgr_Base.Cells[15,viContador1] := '19';
    Stgr_Base.Cells[16,viContador1] := '20';
    // 5
    viContador1 := 05 ;
    Stgr_Base.Cells[0,viContador1] := '';
    Stgr_Base.Cells[01,viContador1] := '+9';
    Stgr_Base.Cells[02,viContador1] := '01';
    Stgr_Base.Cells[03,viContador1] := '02';
    Stgr_Base.Cells[04,viContador1] := '03';
    Stgr_Base.Cells[05,viContador1] := '04';
    Stgr_Base.Cells[06,viContador1] := '05';
    Stgr_Base.Cells[07,viContador1] := '06';
    Stgr_Base.Cells[08,viContador1] := '07';
    Stgr_Base.Cells[09,viContador1] := '13';
    Stgr_Base.Cells[10,viContador1] := '14';
    Stgr_Base.Cells[11,viContador1] := '15';
    Stgr_Base.Cells[12,viContador1] := '16';
    Stgr_Base.Cells[13,viContador1] := '17';
    Stgr_Base.Cells[14,viContador1] := '18';
    Stgr_Base.Cells[15,viContador1] := '19';
    Stgr_Base.Cells[16,viContador1] := '20';
    // 6
    viContador1 := 06;
    Stgr_Base.Cells[0,viContador1] := '';
    Stgr_Base.Cells[01,viContador1] := '+11';
    Stgr_Base.Cells[02,viContador1] := '01';
    Stgr_Base.Cells[03,viContador1] := '02';
    Stgr_Base.Cells[04,viContador1] := '03';
    Stgr_Base.Cells[05,viContador1] := '04';
    Stgr_Base.Cells[06,viContador1] := '05';
    Stgr_Base.Cells[07,viContador1] := '08';
    Stgr_Base.Cells[08,viContador1] := '09';
    Stgr_Base.Cells[09,viContador1] := '10';
    Stgr_Base.Cells[10,viContador1] := '11';
    Stgr_Base.Cells[11,viContador1] := '12';
    Stgr_Base.Cells[12,viContador1] := '14';
    Stgr_Base.Cells[13,viContador1] := '15';
    Stgr_Base.Cells[14,viContador1] := '16';
    Stgr_Base.Cells[15,viContador1] := '17';
    Stgr_Base.Cells[16,viContador1] := '18';
    // 7
    viContador1 := 07;
    Stgr_Base.Cells[0,viContador1] := '';
    Stgr_Base.Cells[01,viContador1] := '+13';
    Stgr_Base.Cells[02,viContador1] := '06';
    Stgr_Base.Cells[03,viContador1] := '07';
    Stgr_Base.Cells[04,viContador1] := '08';
    Stgr_Base.Cells[05,viContador1] := '09';
    Stgr_Base.Cells[06,viContador1] := '10';
    Stgr_Base.Cells[07,viContador1] := '11';
    Stgr_Base.Cells[08,viContador1] := '12';
    Stgr_Base.Cells[09,viContador1] := '13';
    Stgr_Base.Cells[10,viContador1] := '19';
    Stgr_Base.Cells[11,viContador1] := '20';
    Stgr_Base.Cells[12,viContador1] := '21';
    Stgr_Base.Cells[13,viContador1] := '22';
    Stgr_Base.Cells[14,viContador1] := '23';
    Stgr_Base.Cells[15,viContador1] := '24';
    Stgr_Base.Cells[16,viContador1] := '25';
    // 8
    viContador1 := 08;
    Stgr_Base.Cells[0,viContador1] := '';
    Stgr_Base.Cells[01,viContador1] := '+15';
    Stgr_Base.Cells[02,viContador1] := '06';
    Stgr_Base.Cells[03,viContador1] := '07';
    Stgr_Base.Cells[04,viContador1] := '13';
    Stgr_Base.Cells[05,viContador1] := '14';
    Stgr_Base.Cells[06,viContador1] := '15';
    Stgr_Base.Cells[07,viContador1] := '16';
    Stgr_Base.Cells[08,viContador1] := '17';
    Stgr_Base.Cells[09,viContador1] := '18';
    Stgr_Base.Cells[10,viContador1] := '19';
    Stgr_Base.Cells[11,viContador1] := '20';
    Stgr_Base.Cells[12,viContador1] := '21';
    Stgr_Base.Cells[13,viContador1] := '22';
    Stgr_Base.Cells[14,viContador1] := '23';
    Stgr_Base.Cells[15,viContador1] := '24';
    Stgr_Base.Cells[16,viContador1] := '25';
    // 9
    viContador1 := 09;
    Stgr_Base.Cells[0,viContador1] := '';
    Stgr_Base.Cells[01,viContador1] := '+17';
    Stgr_Base.Cells[02,viContador1] := '08';
    Stgr_Base.Cells[03,viContador1] := '09';
    Stgr_Base.Cells[04,viContador1] := '10';
    Stgr_Base.Cells[05,viContador1] := '11';
    Stgr_Base.Cells[06,viContador1] := '12';
    Stgr_Base.Cells[07,viContador1] := '14';
    Stgr_Base.Cells[08,viContador1] := '15';
    Stgr_Base.Cells[09,viContador1] := '16';
    Stgr_Base.Cells[10,viContador1] := '17';
    Stgr_Base.Cells[11,viContador1] := '18';
    Stgr_Base.Cells[12,viContador1] := '21';
    Stgr_Base.Cells[13,viContador1] := '22';
    Stgr_Base.Cells[14,viContador1] := '23';
    Stgr_Base.Cells[15,viContador1] := '24';
    Stgr_Base.Cells[16,viContador1] := '25';
    // 10
    viContador1 := 10;
    Stgr_Base.Cells[0,viContador1] := '';
    Stgr_Base.Cells[01,viContador1] := '+19';
    Stgr_Base.Cells[02,viContador1] := '06';
    Stgr_Base.Cells[03,viContador1] := '07';
    Stgr_Base.Cells[04,viContador1] := '08';
    Stgr_Base.Cells[05,viContador1] := '09';
    Stgr_Base.Cells[06,viContador1] := '10';
    Stgr_Base.Cells[07,viContador1] := '11';
    Stgr_Base.Cells[08,viContador1] := '12';
    Stgr_Base.Cells[09,viContador1] := '13';
    Stgr_Base.Cells[10,viContador1] := '14';
    Stgr_Base.Cells[11,viContador1] := '15';
    Stgr_Base.Cells[12,viContador1] := '16';
    Stgr_Base.Cells[13,viContador1] := '17';
    Stgr_Base.Cells[14,viContador1] := '18';
    Stgr_Base.Cells[15,viContador1] := '19';
    Stgr_Base.Cells[16,viContador1] := '20';
    Self.MontaBase10();
    //
    // ---> Montando o Array
    //
    {
    for viContador1 := 1 to 10 do begin
        for viContarCelulas := 1 to 16 do
        begin
            vas_Base [viContarCelulas, viContador1] :=  STRtoINT(Stgr_Base.Cells[viContarCelulas,viContador1]) ;
        end; // for
        for viContarCelulas := 1 to 10 do
        begin
            vas_Base [viContarCelulas, viContador1] :=  STRtoINT(Stgr_Base10.Cells[viContarCelulas,viContador1]) ;
        end; // for
    end; // for
    }
     Stgr_Base.RowCount := 11;
     Stgr_Base10.RowCount := 11;
     // --> Montando os 5 linhas que faltam
    //21
    Stgr_Base25.Cells[0,01] := '21';
    Stgr_Base25.Cells[01,01] := '01';
    Stgr_Base25.Cells[02,01] := '02';
    Stgr_Base25.Cells[03,01] := '03';
    Stgr_Base25.Cells[04,01] := '04';
    Stgr_Base25.Cells[05,01] := '05';
    //22
    Stgr_Base25.Cells[0,02] := '22';
    Stgr_Base25.Cells[01,02] := '21';
    Stgr_Base25.Cells[02,02] := '22';
    Stgr_Base25.Cells[03,02] := '23';
    Stgr_Base25.Cells[04,02] := '24';
    Stgr_Base25.Cells[05,02] := '25';
    //23
    Stgr_Base25.Cells[0,03] := '23';
    Stgr_Base25.Cells[01,03] := '06';
    Stgr_Base25.Cells[02,03] := '07';
    Stgr_Base25.Cells[03,03] := '13';
    Stgr_Base25.Cells[04,03] := '19';
    Stgr_Base25.Cells[05,03] := '20';
    //24
    Stgr_Base25.Cells[0,04] := '24';
    Stgr_Base25.Cells[01,04] := '08';
    Stgr_Base25.Cells[02,04] := '09';
    Stgr_Base25.Cells[03,04] := '10';
    Stgr_Base25.Cells[04,04] := '11';
    Stgr_Base25.Cells[05,04] := '12';
    //25
    Stgr_Base25.Cells[0,05] := '25';
    Stgr_Base25.Cells[01,05] := '14';
    Stgr_Base25.Cells[02,05] := '15';
    Stgr_Base25.Cells[03,05] := '16';
    Stgr_Base25.Cells[04,05] := '17';
    Stgr_Base25.Cells[05,05] := '18';
    //
    // --- > primeiro bloco
    //01
    Stgr_Bloco01.Cells[0,01] := '';
    Stgr_Bloco01.Cells[01,01] := '01';
    Stgr_Bloco01.Cells[02,01] := '10';
    Stgr_Bloco01.Cells[03,01] := '15';
    Stgr_Bloco01.Cells[04,01] := '19';
    Stgr_Bloco01.Cells[05,01] := '21';
    //02
    Stgr_Bloco01.Cells[0,02] := '';
    Stgr_Bloco01.Cells[01,02] := '02';
    Stgr_Bloco01.Cells[02,02] := '09';
    Stgr_Bloco01.Cells[03,02] := '14';
    Stgr_Bloco01.Cells[04,02] := '20';
    Stgr_Bloco01.Cells[05,02] := '22';
    //03
    Stgr_Bloco01.Cells[0,03] := '';
    Stgr_Bloco01.Cells[01,03] := '03';
    Stgr_Bloco01.Cells[02,03] := '08';
    Stgr_Bloco01.Cells[03,03] := '13';
    Stgr_Bloco01.Cells[04,03] := '16';
    Stgr_Bloco01.Cells[05,03] := '24';
    //04
    Stgr_Bloco01.Cells[0,04] := '';
    Stgr_Bloco01.Cells[01,04] := '04';
    Stgr_Bloco01.Cells[02,04] := '07';
    Stgr_Bloco01.Cells[03,04] := '12';
    Stgr_Bloco01.Cells[04,04] := '17';
    Stgr_Bloco01.Cells[05,04] := '23';
    //05
    Stgr_Bloco01.Cells[0,05] := '';
    Stgr_Bloco01.Cells[01,05] := '05';
    Stgr_Bloco01.Cells[02,05] := '06';
    Stgr_Bloco01.Cells[03,05] := '11';
    Stgr_Bloco01.Cells[04,05] := '18';
    Stgr_Bloco01.Cells[05,05] := '25';
    //
    // --- > segundo bloco
    //01
    Stgr_Bloco02.Cells[0,01] := '';
    Stgr_Bloco02.Cells[01,01] := '01';
    Stgr_Bloco02.Cells[02,01] := '02';
    Stgr_Bloco02.Cells[03,01] := '12';
    Stgr_Bloco02.Cells[04,01] := '24';
    Stgr_Bloco02.Cells[05,01] := '25';
    //02
    Stgr_Bloco02.Cells[0,02] := '';
    Stgr_Bloco02.Cells[01,02] := '03';
    Stgr_Bloco02.Cells[02,02] := '09';
    Stgr_Bloco02.Cells[03,02] := '10';
    Stgr_Bloco02.Cells[04,02] := '18';
    Stgr_Bloco02.Cells[05,02] := '23';
    //03
    Stgr_Bloco02.Cells[0,03] := '';
    Stgr_Bloco02.Cells[01,03] := '04';
    Stgr_Bloco02.Cells[02,03] := '11';
    Stgr_Bloco02.Cells[03,03] := '13';
    Stgr_Bloco02.Cells[04,03] := '19';
    Stgr_Bloco02.Cells[05,03] := '20';
    //04
    Stgr_Bloco02.Cells[0,04] := '';
    Stgr_Bloco02.Cells[01,04] := '05';
    Stgr_Bloco02.Cells[02,04] := '08';
    Stgr_Bloco02.Cells[03,04] := '14';
    Stgr_Bloco02.Cells[04,04] := '17';
    Stgr_Bloco02.Cells[05,04] := '21';
    //05
    Stgr_Bloco02.Cells[0,05] := '';
    Stgr_Bloco02.Cells[01,05] := '06';
    Stgr_Bloco02.Cells[02,05] := '07';
    Stgr_Bloco02.Cells[03,05] := '15';
    Stgr_Bloco02.Cells[04,05] := '16';
    Stgr_Bloco02.Cells[05,05] := '22';

  // MONTA O BLOCO DA ETAPA 5
  //  Rb_ParImpMod2.Checked := True;
  //  Rb_ParImpMod1.Checked := True;
    Stgr_Provas5_Blocos.Cells[0,01] := 'B1';
    Stgr_Provas5_Blocos.Cells[01,01] := '01';
    Stgr_Provas5_Blocos.Cells[02,01] := '02';
    Stgr_Provas5_Blocos.Cells[03,01] := '03';
    Stgr_Provas5_Blocos.Cells[04,01] := '04';
    Stgr_Provas5_Blocos.Cells[05,01] := '05';
    Stgr_Provas5_Blocos.Cells[0,02] := 'B2';
    Stgr_Provas5_Blocos.Cells[01,02] := '06';
    Stgr_Provas5_Blocos.Cells[02,02] := '07';
    Stgr_Provas5_Blocos.Cells[03,02] := '08';
    Stgr_Provas5_Blocos.Cells[04,02] := '09';
    Stgr_Provas5_Blocos.Cells[05,02] := '10';
    Stgr_Provas5_Blocos.Cells[0,03] := 'B3';
    Stgr_Provas5_Blocos.Cells[01,03] := '11';
    Stgr_Provas5_Blocos.Cells[02,03] := '12';
    Stgr_Provas5_Blocos.Cells[03,03] := '13';
    Stgr_Provas5_Blocos.Cells[04,03] := '14';
    Stgr_Provas5_Blocos.Cells[05,03] := '15';
    Stgr_Provas5_Blocos.Cells[0,04] := 'B4';
    Stgr_Provas5_Blocos.Cells[01,04] := '16';
    Stgr_Provas5_Blocos.Cells[02,04] := '17';
    Stgr_Provas5_Blocos.Cells[03,04] := '18';
    Stgr_Provas5_Blocos.Cells[04,04] := '19';
    Stgr_Provas5_Blocos.Cells[05,04] := '20';
    Stgr_Provas5_Blocos.Cells[0,05] := 'B5';
    Stgr_Provas5_Blocos.Cells[01,05] := '21';
    Stgr_Provas5_Blocos.Cells[02,05] := '22';
    Stgr_Provas5_Blocos.Cells[03,05] := '23';
    Stgr_Provas5_Blocos.Cells[04,05] := '24';
    Stgr_Provas5_Blocos.Cells[05,05] := '25';

    Stgr_Triplas1.Cells[0,01] := 'T1';
    Stgr_Triplas1.Cells[01,01] := '03';
    Stgr_Triplas1.Cells[02,01] := '13';
    Stgr_Triplas1.Cells[03,01] := '23';
    //02
    Stgr_Triplas1.Cells[0,02] := 'T2';
    Stgr_Triplas1.Cells[01,02] := '04';
    Stgr_Triplas1.Cells[02,02] := '16';
    Stgr_Triplas1.Cells[03,02] := '19';
    //03
    Stgr_Triplas1.Cells[0,03] := 'T3';
    Stgr_Triplas1.Cells[01,03] := '05';
    Stgr_Triplas1.Cells[02,03] := '14';
    Stgr_Triplas1.Cells[03,03] := '20';
    //04
    Stgr_Triplas1.Cells[0,04] := 'T4';
    Stgr_Triplas1.Cells[01,04] := '06';
    Stgr_Triplas1.Cells[02,04] := '11';
    Stgr_Triplas1.Cells[03,04] := '22';
    //05
    Stgr_Triplas1.Cells[0,05] := 'T5';
    Stgr_Triplas1.Cells[01,05] := '07';
    Stgr_Triplas1.Cells[02,05] := '15';
    Stgr_Triplas1.Cells[03,05] := '17';
    //06
    Stgr_Triplas1.Cells[0,06] := 'T6';
    Stgr_Triplas1.Cells[01,06] := '08';
    Stgr_Triplas1.Cells[02,06] := '10';
    Stgr_Triplas1.Cells[03,06] := '21';
    //07
    Stgr_Triplas1.Cells[0,07] := 'T7';
    Stgr_Triplas1.Cells[01,07] := '09';
    Stgr_Triplas1.Cells[02,07] := '12';
    Stgr_Triplas1.Cells[03,07] := '18';
    //1
    Stgr_Duplas1.Cells[0,01] := 'T1';
    Stgr_Duplas1.Cells[01,01] := '01';
    Stgr_Duplas1.Cells[02,01] := '25';
    //2
    Stgr_Duplas1.Cells[0,02] := 'T2';
    Stgr_Duplas1.Cells[01,02] := '02';
    Stgr_Duplas1.Cells[02,02] := '24';
    vs_Base25:='P A D R A O  -  Original';


  // MONTA O BLOCO DE LIMITADOR 23 NºS COM SOMA 299
  // ----------> Grupo 1
  // --> Bloco A
   Stgr_Limitador23_Grupo1A.Cells[00,00] :='';
   Stgr_Limitador23_Grupo1A.Cells[01,00] :='01';
   Stgr_Limitador23_Grupo1A.Cells[02,00] :='02';
   Stgr_Limitador23_Grupo1A.Cells[03,00] :='03';
   Stgr_Limitador23_Grupo1A.Cells[04,00] :='04';
   Stgr_Limitador23_Grupo1A.Cells[05,00] :='05';
   Stgr_Limitador23_Grupo1A.Cells[06,00] :='06';
   Stgr_Limitador23_Grupo1A.Cells[07,00] :='09';
   Stgr_Limitador23_Grupo1A.Cells[08,00] :='10';
  // --> Bloco B
   Stgr_Limitador23_Grupo1B.Cells[00,00] :='';
   Stgr_Limitador23_Grupo1B.Cells[01,00] :='19';
   Stgr_Limitador23_Grupo1B.Cells[02,00] :='20';
   Stgr_Limitador23_Grupo1B.Cells[03,00] :='21';
   Stgr_Limitador23_Grupo1B.Cells[04,00] :='22';
   Stgr_Limitador23_Grupo1B.Cells[05,00] :='23';
   Stgr_Limitador23_Grupo1B.Cells[06,00] :='24';
   Stgr_Limitador23_Grupo1B.Cells[07,00] :='25';
  // --> Bloco C
   Stgr_Limitador23_Grupo1C.Cells[00,00] :='';
   Stgr_Limitador23_Grupo1C.Cells[01,00] :='14';
   Stgr_Limitador23_Grupo1C.Cells[02,00] :='15';
   Stgr_Limitador23_Grupo1C.Cells[03,00] :='16';
   Stgr_Limitador23_Grupo1C.Cells[04,00] :='17';
   Stgr_Limitador23_Grupo1C.Cells[05,00] :='18';
  // --> Bloco D
   Stgr_Limitador23_Grupo1D.Cells[00,00] :='';
   Stgr_Limitador23_Grupo1D.Cells[01,00] :='07';
   Stgr_Limitador23_Grupo1D.Cells[02,00] :='08';
   Stgr_Limitador23_Grupo1D.Cells[03,00] :='11';
   Stgr_Limitador23_Grupo1D.Cells[04,00] :='12';
   Stgr_Limitador23_Grupo1D.Cells[05,00] :='13';
  // ----------> Grupo 2
  // --> Bloco A
   Stgr_Limitador23_Grupo2A.Cells[00,00] :='';
   Stgr_Limitador23_Grupo2A.Cells[01,00] :='01';
   Stgr_Limitador23_Grupo2A.Cells[02,00] :='02';
   Stgr_Limitador23_Grupo2A.Cells[03,00] :='03';
   Stgr_Limitador23_Grupo2A.Cells[04,00] :='04';
   Stgr_Limitador23_Grupo2A.Cells[05,00] :='05';
   Stgr_Limitador23_Grupo2A.Cells[06,00] :='06';
   Stgr_Limitador23_Grupo2A.Cells[07,00] :='08';
   Stgr_Limitador23_Grupo2A.Cells[08,00] :='13';
  // --> Bloco B
   Stgr_Limitador23_Grupo2B.Cells[00,00] :='';
   Stgr_Limitador23_Grupo2B.Cells[01,00] :='19';
   Stgr_Limitador23_Grupo2B.Cells[02,00] :='20';
   Stgr_Limitador23_Grupo2B.Cells[03,00] :='21';
   Stgr_Limitador23_Grupo2B.Cells[04,00] :='22';
   Stgr_Limitador23_Grupo2B.Cells[05,00] :='23';
   Stgr_Limitador23_Grupo2B.Cells[06,00] :='24';
   Stgr_Limitador23_Grupo2B.Cells[07,00] :='25';
  // --> Bloco C
   Stgr_Limitador23_Grupo2C.Cells[00,00] :='';
   Stgr_Limitador23_Grupo2C.Cells[01,00] :='14';
   Stgr_Limitador23_Grupo2C.Cells[02,00] :='15';
   Stgr_Limitador23_Grupo2C.Cells[03,00] :='16';
   Stgr_Limitador23_Grupo2C.Cells[04,00] :='17';
   Stgr_Limitador23_Grupo2C.Cells[05,00] :='18';
  // --> Bloco D
   Stgr_Limitador23_Grupo2D.Cells[00,00] :='';
   Stgr_Limitador23_Grupo2D.Cells[01,00] :='07';
   Stgr_Limitador23_Grupo2D.Cells[02,00] :='09';
   Stgr_Limitador23_Grupo2D.Cells[03,00] :='10';
   Stgr_Limitador23_Grupo2D.Cells[04,00] :='11';
   Stgr_Limitador23_Grupo2D.Cells[05,00] :='12';

  // MONTA O BLOCO DE LIMITADOR 19 NºS COM SOMA 247
  // ----------> Grupo 1
  // --> Bloco A
   Stgr_Limitador19_Grupo1A.Cells[00,00] :='';
   Stgr_Limitador19_Grupo1A.Cells[01,00] :='01';
   Stgr_Limitador19_Grupo1A.Cells[02,00] :='02';
   Stgr_Limitador19_Grupo1A.Cells[03,00] :='03';
   Stgr_Limitador19_Grupo1A.Cells[04,00] :='04';
   Stgr_Limitador19_Grupo1A.Cells[05,00] :='05';
   Stgr_Limitador19_Grupo1A.Cells[06,00] :='06';
   Stgr_Limitador19_Grupo1A.Cells[07,00] :='09';
   Stgr_Limitador19_Grupo1A.Cells[08,00] :='10';
  // --> Bloco B
   Stgr_Limitador19_Grupo1B.Cells[00,00] :='';
   Stgr_Limitador19_Grupo1B.Cells[01,00] :='19';
   Stgr_Limitador19_Grupo1B.Cells[02,00] :='20';
   Stgr_Limitador19_Grupo1B.Cells[03,00] :='21';
   Stgr_Limitador19_Grupo1B.Cells[04,00] :='22';
   Stgr_Limitador19_Grupo1B.Cells[05,00] :='23';
   Stgr_Limitador19_Grupo1B.Cells[06,00] :='24';
   Stgr_Limitador19_Grupo1B.Cells[07,00] :='25';
  // --> Bloco C
   Stgr_Limitador19_Grupo1C.Cells[00,00] :='';
   Stgr_Limitador19_Grupo1C.Cells[01,00] :='14';
   Stgr_Limitador19_Grupo1C.Cells[02,00] :='15';
   Stgr_Limitador19_Grupo1C.Cells[03,00] :='16';
   Stgr_Limitador19_Grupo1C.Cells[04,00] :='17';
   Stgr_Limitador19_Grupo1C.Cells[05,00] :='18';
  // --> Bloco D
   Stgr_Limitador19_Grupo1D.Cells[00,00] :='';
   Stgr_Limitador19_Grupo1D.Cells[01,00] :='07';
   Stgr_Limitador19_Grupo1D.Cells[02,00] :='08';
   Stgr_Limitador19_Grupo1D.Cells[03,00] :='11';
   Stgr_Limitador19_Grupo1D.Cells[04,00] :='12';
   Stgr_Limitador19_Grupo1D.Cells[05,00] :='13';
  // ----------> Grupo 2
  // --> Bloco A
   Stgr_Limitador19_Grupo2A.Cells[00,00] :='';
   Stgr_Limitador19_Grupo2A.Cells[01,00] :='01';
   Stgr_Limitador19_Grupo2A.Cells[02,00] :='02';
   Stgr_Limitador19_Grupo2A.Cells[03,00] :='03';
   Stgr_Limitador19_Grupo2A.Cells[04,00] :='04';
   Stgr_Limitador19_Grupo2A.Cells[05,00] :='05';
   Stgr_Limitador19_Grupo2A.Cells[06,00] :='06';
   Stgr_Limitador19_Grupo2A.Cells[07,00] :='08';
   Stgr_Limitador19_Grupo2A.Cells[08,00] :='13';
  // --> Bloco B
   Stgr_Limitador19_Grupo2B.Cells[00,00] :='';
   Stgr_Limitador19_Grupo2B.Cells[01,00] :='19';
   Stgr_Limitador19_Grupo2B.Cells[02,00] :='20';
   Stgr_Limitador19_Grupo2B.Cells[03,00] :='21';
   Stgr_Limitador19_Grupo2B.Cells[04,00] :='22';
   Stgr_Limitador19_Grupo2B.Cells[05,00] :='23';
   Stgr_Limitador19_Grupo2B.Cells[06,00] :='24';
   Stgr_Limitador19_Grupo2B.Cells[07,00] :='25';
  // --> Bloco C
   Stgr_Limitador19_Grupo2C.Cells[00,00] :='';
   Stgr_Limitador19_Grupo2C.Cells[01,00] :='14';
   Stgr_Limitador19_Grupo2C.Cells[02,00] :='15';
   Stgr_Limitador19_Grupo2C.Cells[03,00] :='16';
   Stgr_Limitador19_Grupo2C.Cells[04,00] :='17';
   Stgr_Limitador19_Grupo2C.Cells[05,00] :='18';
  // --> Bloco D
   Stgr_Limitador19_Grupo2D.Cells[00,00] :='';
   Stgr_Limitador19_Grupo2D.Cells[01,00] :='07';
   Stgr_Limitador19_Grupo2D.Cells[02,00] :='09';
   Stgr_Limitador19_Grupo2D.Cells[03,00] :='10';
   Stgr_Limitador19_Grupo2D.Cells[04,00] :='11';
   Stgr_Limitador19_Grupo2D.Cells[05,00] :='12';

   // --> Etapa 11 bloco de 11
   vasEtapa11N11[01] := '01 02 03 04 08 09 10 11 15 16 17';
   vasEtapa11N11[02] := '02 03 04 05 09 10 11 12 16 17 18';
   vasEtapa11N11[03] := '03 04 05 06 10 11 12 13 17 18 19';
   vasEtapa11N11[04] := '04 05 06 07 11 12 13 14 18 19 20';
   vasEtapa11N11[05] := '05 06 07 08 12 13 14 15 19 20 21';
   vasEtapa11N11[06] := '06 07 08 09 13 14 15 16 20 21 22';
   vasEtapa11N11[07] := '07 08 09 10 14 15 16 17 21 22 23';
   vasEtapa11N11[08] := '08 09 10 11 15 16 17 18 22 23 24';
   vasEtapa11N11[09] := '09 10 11 12 16 17 18 19 23 24 25';
   vasEtapa11N11[10] := '01 10 11 12 13 17 18 19 20 24 25';
   vasEtapa11N11[11] := '01 02 11 12 13 14 18 19 20 21 25';
   vasEtapa11N11[12] := '01 02 03 12 13 14 15 19 20 21 22';
   vasEtapa11N11[13] := '02 03 04 13 14 15 16 20 21 22 23';
   vasEtapa11N11[14] := '03 04 05 14 15 16 17 21 22 23 24';
   vasEtapa11N11[15] := '04 05 06 15 16 17 18 22 23 24 25';
   vasEtapa11N11[16] := '01 05 06 07 16 17 18 19 23 24 25';
   vasEtapa11N11[17] := '01 02 06 07 08 17 18 19 20 24 25';
   vasEtapa11N11[18] := '01 02 03 07 08 09 18 19 20 21 25';
   vasEtapa11N11[19] := '01 02 03 04 08 09 10 19 20 21 22';
   vasEtapa11N11[20] := '02 03 04 05 09 10 11 20 21 22 23';
   vasEtapa11N11[21] := '03 04 05 06 10 11 12 21 22 23 24';
   vasEtapa11N11[22] := '04 05 06 07 11 12 13 22 23 24 25';
   vasEtapa11N11[23] := '01 05 06 07 08 12 13 14 23 24 25';
   vasEtapa11N11[24] := '01 02 06 07 08 09 13 14 15 24 25';
   vasEtapa11N11[25] := '01 02 03 07 08 09 10 14 15 16 25';
   for viContador1 := 1 to 25 do
   begin
      Stgr_E11n11.Cells[0,viContador1] := viContador1.ToString;
      Stgr_E11n11.Cells[1,viContador1] := copy(vasEtapa11N11[viContador1],01,2);
      Stgr_E11n11.Cells[2,viContador1] := copy(vasEtapa11N11[viContador1],04,2);
      Stgr_E11n11.Cells[3,viContador1] := copy(vasEtapa11N11[viContador1],07,2);
      Stgr_E11n11.Cells[4,viContador1] := copy(vasEtapa11N11[viContador1],10,2);
      Stgr_E11n11.Cells[5,viContador1] := copy(vasEtapa11N11[viContador1],13,2);
      Stgr_E11n11.Cells[6,viContador1] := copy(vasEtapa11N11[viContador1],16,2);
      Stgr_E11n11.Cells[7,viContador1] := copy(vasEtapa11N11[viContador1],19,2);
      Stgr_E11n11.Cells[8,viContador1] := copy(vasEtapa11N11[viContador1],22,2);
      Stgr_E11n11.Cells[9,viContador1] := copy(vasEtapa11N11[viContador1],25,2);
      Stgr_E11n11.Cells[10,viContador1] := copy(vasEtapa11N11[viContador1],28,2);
      Stgr_E11n11.Cells[11,viContador1] := copy(vasEtapa11N11[viContador1],31,2);
   end;
      // --> Etapa 11 bloco de 14
   vasEtapa11N14[01] := '05 06 07 12 13 14 18 19 20 21 22 23 24 25';
   vasEtapa11N14[02] := '01 06 07 08 13 14 15 19 20 21 22 23 24 25';
   vasEtapa11N14[03] := '01 02 07 08 09 14 15 16 20 21 22 23 24 25';
   vasEtapa11N14[04] := '01 02 03 08 09 10 15 16 17 21 22 23 24 25';
   vasEtapa11N14[05] := '01 02 03 04 09 10 11 16 17 18 22 23 24 25';
   vasEtapa11N14[06] := '01 02 03 04 05 10 11 12 17 18 19 23 24 25';
   vasEtapa11N14[07] := '01 02 03 04 05 06 11 12 13 18 19 20 24 25';
   vasEtapa11N14[08] := '01 02 03 04 05 06 07 12 13 14 19 20 21 25';
   vasEtapa11N14[09] := '01 02 03 04 05 06 07 08 13 14 15 20 21 22';
   vasEtapa11N14[10] := '02 03 04 05 06 07 08 09 14 15 16 21 22 23';
   vasEtapa11N14[11] := '03 04 05 06 07 08 09 10 15 16 17 22 23 24';
   vasEtapa11N14[12] := '04 05 06 07 08 09 10 11 16 17 18 23 24 25';
   vasEtapa11N14[13] := '01 05 06 07 08 09 10 11 12 17 18 19 24 25';
   vasEtapa11N14[14] := '01 02 06 07 08 09 10 11 12 13 18 19 20 25';
   vasEtapa11N14[15] := '01 02 03 07 08 09 10 11 12 13 14 19 20 21';
   vasEtapa11N14[16] := '02 03 04 08 09 10 11 12 13 14 15 20 21 22';
   vasEtapa11N14[17] := '03 04 05 09 10 11 12 13 14 15 16 21 22 23';
   vasEtapa11N14[18] := '04 05 06 10 11 12 13 14 15 16 17 22 23 24';
   vasEtapa11N14[19] := '05 06 07 11 12 13 14 15 16 17 18 23 24 25';
   vasEtapa11N14[20] := '01 06 07 08 12 13 14 15 16 17 18 19 24 25';
   vasEtapa11N14[21] := '01 02 07 08 09 13 14 15 16 17 18 19 20 25';
   vasEtapa11N14[22] := '01 02 03 08 09 10 14 15 16 17 18 19 20 21';
   vasEtapa11N14[23] := '02 03 04 09 10 11 15 16 17 18 19 20 21 22';
   vasEtapa11N14[24] := '03 04 05 10 11 12 16 17 18 19 20 21 22 23';
   vasEtapa11N14[25] := '04 05 06 11 12 13 17 18 19 20 21 22 23 24';
   for viContador1 := 1 to 25 do
   begin
      Stgr_E11n14.Cells[0,viContador1] := viContador1.ToString;
      Stgr_E11n14.Cells[1,viContador1] := copy(vasEtapa11N14[viContador1],01,2);
      Stgr_E11n14.Cells[2,viContador1] := copy(vasEtapa11N14[viContador1],04,2);
      Stgr_E11n14.Cells[3,viContador1] := copy(vasEtapa11N14[viContador1],07,2);
      Stgr_E11n14.Cells[4,viContador1] := copy(vasEtapa11N14[viContador1],10,2);
      Stgr_E11n14.Cells[5,viContador1] := copy(vasEtapa11N14[viContador1],13,2);
      Stgr_E11n14.Cells[6,viContador1] := copy(vasEtapa11N14[viContador1],16,2);
      Stgr_E11n14.Cells[7,viContador1] := copy(vasEtapa11N14[viContador1],19,2);
      Stgr_E11n14.Cells[8,viContador1] := copy(vasEtapa11N14[viContador1],22,2);
      Stgr_E11n14.Cells[9,viContador1] := copy(vasEtapa11N14[viContador1],25,2);
      Stgr_E11n14.Cells[10,viContador1] := copy(vasEtapa11N14[viContador1],28,2);
      Stgr_E11n14.Cells[11,viContador1] := copy(vasEtapa11N14[viContador1],31,2);
      Stgr_E11n14.Cells[12,viContador1] := copy(vasEtapa11N14[viContador1],34,2);
      Stgr_E11n14.Cells[13,viContador1] := copy(vasEtapa11N14[viContador1],37,2);
      Stgr_E11n14.Cells[14,viContador1] := copy(vasEtapa11N14[viContador1],40,2);
   end;
   Stgr_E11n11.RowCount := 26;
   Stgr_E11n14.RowCount := 26;
end;



Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_RecomecarClick(Sender: TObject);
VAR
    viContar : Integer;
begin
    Bbt_701.Enabled := TRUE;
    Bbt_702.Enabled := TRUE;
    Bbt_703.Enabled := TRUE;
    Bbt_704.Enabled := TRUE;
    Bbt_705.Enabled := TRUE;
    Bbt_706.Enabled := TRUE;
    Bbt_707.Enabled := TRUE;
    Bbt_708.Enabled := TRUE;
    Bbt_709.Enabled := TRUE;
    Bbt_710.Enabled := TRUE;
    Bbt_711.Enabled := TRUE;
    Bbt_712.Enabled := TRUE;
    Bbt_713.Enabled := TRUE;
    Bbt_714.Enabled := TRUE;
    Bbt_715.Enabled := TRUE;
    Bbt_716.Enabled := TRUE;
    Bbt_717.Enabled := TRUE;
    Bbt_718.Enabled := TRUE;
    Bbt_719.Enabled := TRUE;
    Bbt_720.Enabled := TRUE;
    Bbt_721.Enabled := TRUE;
    Bbt_722.Enabled := TRUE;
    Bbt_723.Enabled := TRUE;
    Bbt_724.Enabled := TRUE;
    Bbt_725.Enabled := TRUE;
    FOR viContar := 1 TO 5 DO
    BEGIN
        Stgr_Base25.Cells [viContar,1] := '0';
        Stgr_Base25.Cells [viContar,2] := '0';
        Stgr_Base25.Cells [viContar,3] := '0';
        Stgr_Base25.Cells [viContar,4] := '0';
        Stgr_Base25.Cells [viContar,5] := '0';
    END;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.BotoesBase25False ();
begin
    Bbt_701.Enabled := False ;
    Bbt_702.Enabled := False ;
    Bbt_703.Enabled := False ;
    Bbt_704.Enabled := False ;
    Bbt_705.Enabled := False ;
    Bbt_706.Enabled := False ;
    Bbt_707.Enabled := False ;
    Bbt_708.Enabled := False ;
    Bbt_709.Enabled := False ;
    Bbt_710.Enabled := False ;
    Bbt_711.Enabled := False ;
    Bbt_712.Enabled := False ;
    Bbt_713.Enabled := False ;
    Bbt_714.Enabled := False ;
    Bbt_715.Enabled := False ;
    Bbt_716.Enabled := False ;
    Bbt_717.Enabled := False ;
    Bbt_718.Enabled := False ;
    Bbt_719.Enabled := False ;
    Bbt_720.Enabled := False ;
    Bbt_721.Enabled := False ;
    Bbt_722.Enabled := False ;
    Bbt_723.Enabled := False ;
    Bbt_724.Enabled := False ;
    Bbt_725.Enabled := False ;
end;
                       
Procedure T_F_Gerador_ResDiv_25Linhas2.BotoesBase25Add (vi_Numero: Integer);
VAR
    viContar, viContar2, viContar3, viContar4, viContar5 : Integer;
BEGIN
       FOR viContar := 1 TO 5 DO
        BEGIN
            IF (STRtoINT (Stgr_Base25.Cells [viContar,1]) = 0) THEN
            BEGIN
                Stgr_Base25.Cells [viContar,1] := RIGHTSTR ('0'+INTtoSTR(vi_Numero),2);
                EXIT;
            END ELSE
            IF (viContar = 5) THEN
            BEGIN
                FOR viContar3 :=1 TO 5 DO
                BEGIN
                    IF (STRtoINT (Stgr_Base25.Cells [viContar3,2]) = 0) THEN
                    BEGIN
                        Stgr_Base25.Cells [viContar3,2] := RIGHTSTR ('0'+INTtoSTR(vi_Numero),2);
                        EXIT  ;
                    END ELSE
                    IF (viContar3 = 5) THEN
                    BEGIN
                        FOR viContar2 :=1 TO 5 DO
                        BEGIN
                            IF (STRtoINT (Stgr_Base25.Cells [viContar2,3]) = 0) THEN
                            BEGIN
                                Stgr_Base25.Cells [viContar2,3] := RIGHTSTR ('0'+INTtoSTR(vi_Numero),2);
                                EXIT;
                            END ELSE
                            IF (viContar2 = 5) THEN
                            BEGIN
                                    FOR viContar4 :=1 TO 5 DO
                                    BEGIN
                                        IF (STRtoINT (Stgr_Base25.Cells [viContar4,04]) = 0) THEN
                                        BEGIN
                                            Stgr_Base25.Cells [viContar4,04] := RIGHTSTR ('0'+INTtoSTR(vi_Numero),2);
                                            EXIT ;
                                        end else
                                        IF (viContar4 = 5) THEN
                                        BEGIN
                                                FOR viContar5 :=1 TO 5 DO
                                                BEGIN
                                                    IF (STRtoINT (Stgr_Base25.Cells [viContar5,05]) = 0) THEN
                                                    BEGIN
                                                        Stgr_Base25.Cells [viContar5,05] := RIGHTSTR ('0'+INTtoSTR(vi_Numero),2);
                                                        EXIT ;
                                                    END; // IF viContar5
                                                END; // FOR viContar5
                                        END; ///IF
                                    end; // FOR
                            END; /// IF
                        END; // FOR viContar 2
                    END; /// IF
                END;// FOR viContar3
            END;// IF (STRtoINT
        END; // viContar
END;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_701Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(01);
    Bbt_701.Enabled := FALSE;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_702Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(02);
    Bbt_702.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_703Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(03);
    Bbt_703.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_704Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(04);
    Bbt_704.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_705Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(05);
    Bbt_705.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_706Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(06);
    Bbt_706.Enabled := FALSE;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_707Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(07);
    Bbt_707.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_708Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(08);
    Bbt_708.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_709Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(09);
    Bbt_709.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_710Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(10);
    Bbt_710.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_711Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(11);
    Bbt_711.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_712Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(12);
    Bbt_712.Enabled := FALSE;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_713Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(13);
    Bbt_713.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_714Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(14);
    Bbt_714.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_715Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(15);
    Bbt_715.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_716Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(16);
    Bbt_716.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_717Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(17);
    Bbt_717.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_718Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(18);
    Bbt_718.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_719Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(19);
    Bbt_719.Enabled := FALSE;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_720Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(20);
    Bbt_720.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_721Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(21);
    Bbt_721.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_722Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(22);
    Bbt_722.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_723Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(23);
    Bbt_723.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_724Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(24);
    Bbt_724.Enabled := FALSE;
end;

Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_725Click(Sender: TObject);
begin
    SELF.BotoesBase25Add(25);
    Bbt_725.Enabled := FALSE;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_EditarBlase25Click(
  Sender: TObject);
begin
    Bbt_Recomecar.Click;
    Pa_ExecutarFiltro.Visible := False;
    Pa_ExecutarFiltro.Enabled := False;
    Pa_ExecutarFiltro.Repaint;
    Scbx_Gabarito.HorzScrollBar.Position:= 676;
    Scbx_Gabarito.Repaint;
    Pa_Preencher5.Left := 156;
    Pa_Preencher5.Top := 350;
    Pa_Preencher5.Visible := True;
    Pa_Preencher5.Repaint;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.OrdernarBase();
var
    viContador1, viContar, viContarCelulas : Integer;
begin
    for viContador1 :=1 to 10 do
    begin
           FOR viContar :=1 TO 25 DO
           BEGIN
                Stgr_Todos_Numeros.Cells[viContar,1] :='F';
           END; // FOR viContar
           // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
           FOR viContar :=2 TO 16 DO
           BEGIN
                Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base.Cells[viContar,viContador1])) ,1]:='V';
           END; // FOR viContador1
           viContarCelulas := 2;
           FOR viContar :=1 TO 25 DO
           BEGIN
                IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') THEN
                BEGIN
                     Stgr_Base.Cells [viContarCelulas, viContador1] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
                     viContarCelulas := viContarCelulas + 1;
                END; // IF (Stgr_Todos_Numeros
           END; // FOR viContar
//           Stgr_Base10.Cells [1, viContador1] := INTtoSTR(viContador1*2);
    end; // for viContador1
    for viContador1 :=1 to 5 do
    begin
           FOR viContar :=1 TO 25 DO
           BEGIN
                Stgr_Todos_Numeros.Cells[viContar,1] :='F';
           END; // FOR viContar
           // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
           FOR viContar :=1 TO 5 DO
           BEGIN
                Stgr_Todos_Numeros.Cells [ (STRtoINT(Stgr_Base25.Cells[viContar,viContador1])) ,1]:='V';
           END; // FOR viContador1
           viContarCelulas := 1;
           FOR viContar :=1 TO 25 DO
           BEGIN
                IF (Stgr_Todos_Numeros.Cells[viContar,1]='V') THEN
                BEGIN
                     Stgr_Base25.Cells [viContarCelulas, viContador1] := RIGHTSTR ('0'+(Stgr_Todos_Numeros.Cells[viContar,0]),2) ;
                     viContarCelulas := viContarCelulas + 1;
                END; // IF (Stgr_Todos_Numeros
           END; // FOR viContar
//           Stgr_Base10.Cells [1, viContador1] := INTtoSTR(viContador1*2);
    end; // for viContador1
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_MontarBloco25Click(Sender: TObject);
VAR
    viContar1 : Integer;
    vsLinha1, vsLinha2, vsLinha3, vsLinha4, vsLinha5 : String;
BEGIN
    Scbx_Gabarito.HorzScrollBar.Position:= 0;
    Scbx_Gabarito.Repaint;
    For viContar1 := 2 TO 6 Do
    Begin
        Stgr_Base.Cells[viContar1,1] := '0';
        Stgr_Base.Cells[viContar1+5,1] := '0';
        Stgr_Base.Cells[viContar1+10,1] := '0';
    End;
    For viContar1 := 2 TO 6 Do
    Begin
        // 01
        Stgr_Base.Cells[01,1] := '+1';
        Stgr_Base.Cells[viContar1,1] := Stgr_Base25.Cells[viContar1-1,1];
        Stgr_Base.Cells[viContar1+5,1] := Stgr_Base25.Cells[viContar1-1,2];
        Stgr_Base.Cells[viContar1+10,1] := Stgr_Base25.Cells[viContar1-1,3];
        // 03
        Stgr_Base.Cells[01,2] := '+3';
        Stgr_Base.Cells[viContar1,2] := Stgr_Base25.Cells[viContar1-1,1];
        Stgr_Base.Cells[viContar1+5,2] := Stgr_Base25.Cells[viContar1-1,2];
        Stgr_Base.Cells[viContar1+10,2] := Stgr_Base25.Cells[viContar1-1,4];
        // 05
        Stgr_Base.Cells[01,3] := '+5';
        Stgr_Base.Cells[viContar1,3] := Stgr_Base25.Cells[viContar1-1,1];
        Stgr_Base.Cells[viContar1+5,3] := Stgr_Base25.Cells[viContar1-1,2];
        Stgr_Base.Cells[viContar1+10,3] := Stgr_Base25.Cells[viContar1-1,5];
        // 07
        Stgr_Base.Cells[01,4] := '+7';
        Stgr_Base.Cells[viContar1,4] := Stgr_Base25.Cells[viContar1-1,1];
        Stgr_Base.Cells[viContar1+5,4] := Stgr_Base25.Cells[viContar1-1,3];
        Stgr_Base.Cells[viContar1+10,4] := Stgr_Base25.Cells[viContar1-1,4];
        // 09
        Stgr_Base.Cells[01,4] := '+9';
        Stgr_Base.Cells[viContar1,5] := Stgr_Base25.Cells[viContar1-1,1];
        Stgr_Base.Cells[viContar1+5,5] := Stgr_Base25.Cells[viContar1-1,3];
        Stgr_Base.Cells[viContar1+10,5] := Stgr_Base25.Cells[viContar1-1,5];
        // 11
        Stgr_Base.Cells[01,4] := '+11';
        Stgr_Base.Cells[viContar1,6] := Stgr_Base25.Cells[viContar1-1,1];
        Stgr_Base.Cells[viContar1+5,6] := Stgr_Base25.Cells[viContar1-1,4];
        Stgr_Base.Cells[viContar1+10,6] := Stgr_Base25.Cells[viContar1-1,5];
                // 13
        Stgr_Base.Cells[01,4] := '+13';
        Stgr_Base.Cells[viContar1,7] := Stgr_Base25.Cells[viContar1-1,2];
        Stgr_Base.Cells[viContar1+5,7] := Stgr_Base25.Cells[viContar1-1,3];
        Stgr_Base.Cells[viContar1+10,7] := Stgr_Base25.Cells[viContar1-1,4];
        // 15
        Stgr_Base.Cells[01,4] := '+15';
        Stgr_Base.Cells[viContar1,8] := Stgr_Base25.Cells[viContar1-1,2];
        Stgr_Base.Cells[viContar1+5,8] := Stgr_Base25.Cells[viContar1-1,3];
        Stgr_Base.Cells[viContar1+10,8] := Stgr_Base25.Cells[viContar1-1,5];
        // 17
        Stgr_Base.Cells[01,4] := '+17';
        Stgr_Base.Cells[viContar1,9] := Stgr_Base25.Cells[viContar1-1,2];
        Stgr_Base.Cells[viContar1+5,9] := Stgr_Base25.Cells[viContar1-1,4];
        Stgr_Base.Cells[viContar1+10,9] := Stgr_Base25.Cells[viContar1-1,5];
        // 19
        Stgr_Base.Cells[01,4] := '+19';
        Stgr_Base.Cells[viContar1,10] := Stgr_Base25.Cells[viContar1-1,3];
        Stgr_Base.Cells[viContar1+5,10] := Stgr_Base25.Cells[viContar1-1,4];
        Stgr_Base.Cells[viContar1+10,10] := Stgr_Base25.Cells[viContar1-1,5];
    End;
    vs_Base25 := '' ;
    vsLinha1 := '' ;
    vsLinha2 := '' ;
    vsLinha3 := '' ;
    vsLinha4 := '' ;
    vsLinha5 := '' ;
    For viContar1 := 1 TO 5 Do
    Begin
        vsLinha1 := vsLinha1 + Stgr_Base25.Cells[viContar1,1] ;
        vsLinha2 := vsLinha2 + Stgr_Base25.Cells[viContar1,2] ;
        vsLinha3 := vsLinha3 + Stgr_Base25.Cells[viContar1,3] ;
        vsLinha4 := vsLinha4 + Stgr_Base25.Cells[viContar1,4] ;
        vsLinha5 := vsLinha5 + Stgr_Base25.Cells[viContar1,5] ;
    end;
    vs_Base25 := vsLinha1 + ' | ' +
                 vsLinha2 + ' | ' +
                 vsLinha3 + ' | ' +
                 vsLinha4 + ' | ' +
                 vsLinha5 + ' | ' ;
    Self.MontaBase10();
    Self.OrdernarBase();
    Pa_Preencher5.Visible := False ;
    Bbt_OkBase25.Click;
end;


Procedure T_F_Gerador_ResDiv_25Linhas2.Bbt_OkBase25Click(Sender: TObject);
begin
    Pa_Preencher5.Visible := False ;
    Pa_ExecutarFiltro.Visible := True;
    Pa_ExecutarFiltro.Enabled := True;
    Pa_ExecutarFiltro.Repaint;
end;


end.


//                Stgr_Etapa03_15.Cells[02,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
//                Stgr_Etapa03_15.Cells[03,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
//                Stgr_Etapa03_15.Cells[04,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
//                Stgr_Etapa03_15.Cells[05,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
//                Stgr_Etapa03_15.Cells[06,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
//                Stgr_Etapa03_15.Cells[07,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
//                Stgr_Etapa03_15.Cells[08,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
//                Stgr_Etapa03_15.Cells[09,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
//                Stgr_Etapa03_15.Cells[10,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
//                Stgr_Etapa03_15.Cells[11,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
//                Stgr_Etapa03_15.Cells[12,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
//                Stgr_Etapa03_15.Cells[13,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
//                Stgr_Etapa03_15.Cells[14,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
//                Stgr_Etapa03_15.Cells[15,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
//                Stgr_Etapa03_15.Cells[16,viLinhas01] := COPY(DM1.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
