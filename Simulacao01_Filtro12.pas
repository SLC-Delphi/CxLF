unit Simulacao01_Filtro12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,    strutils,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, Grids, DB,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

type
  T_F_SIM_01_FILTRO_12 = class(TForm)
    SCBX_GABARITO: TScrollBox;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label37: TLabel;
    LA_LINHA_1_100REP: TLabel;
    Label35: TLabel;
    LA_LINHA_2_100REP: TLabel;
    Label3: TLabel;
    LA_LINHA_4_100REP: TLabel;
    LA_LINHA_3_100REP: TLabel;
    Label38: TLabel;
    Bevel4: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LA_LINHA_5_100REP: TLabel;
    Bevel5: TBevel;
    Label4: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    LA_QTD_cmbCOL3x4: TLabel;
    STGR_LINHA_1_C1: TStringGrid;
    STGR_LINHA_1_C2: TStringGrid;
    STGR_LINHA_1_C3: TStringGrid;
    STGR_LINHA_1_C4: TStringGrid;
    STGR_LINHA_2_C4: TStringGrid;
    STGR_LINHA_2_C3: TStringGrid;
    STGR_LINHA_2_C2: TStringGrid;
    STGR_LINHA_2_C1: TStringGrid;
    STGR_LINHA_3_C1: TStringGrid;
    STGR_LINHA_3_C2: TStringGrid;
    STGR_LINHA_3_C3: TStringGrid;
    STGR_LINHA_3_C4: TStringGrid;
    STGR_LINHA_4_C1: TStringGrid;
    STGR_LINHA_4_C2: TStringGrid;
    STGR_LINHA_4_C3: TStringGrid;
    STGR_LINHA_4_C4: TStringGrid;
    STGR_LINHA_1_TODOS: TStringGrid;
    STGR_LINHA_2_TODOS: TStringGrid;
    STGR_LINHA_4_TODOS: TStringGrid;
    STGR_LINHA_3_TODOS: TStringGrid;
    STGR_LINHA_5_C1: TStringGrid;
    STGR_LINHA_5_C2: TStringGrid;
    STGR_LINHA_5_C3: TStringGrid;
    STGR_LINHA_5_C4: TStringGrid;
    STGR_LINHA_5_TODOS: TStringGrid;
    STGR_FLAG_COL2: TStringGrid;
    STGR_FLAG_COL3: TStringGrid;
    STGR_FLAG_cmbCOL3x4: TStringGrid;
    PA_RESULTADO: TPanel;
    STGR_COMB15: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR: TBitBtn;
    BBT_ORDENAR: TBitBtn;
    BBT_ENCERRAR: TBitBtn;
    BBT_GERAR_MENU: TBitBtn;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_QTD_FILTRADOS: TLabel;
    Label88: TLabel;
    LA_TOTAL_100REPET: TLabel;
    Label87: TLabel;
    LA_QTD_COMB: TLabel;
    LA_GERAR_COMB: TLabel;
    LA_TOTAL_COMB: TLabel;
    PGBR_FILTRARCOMB: TProgressBar;
    PGBR_REMREPET: TProgressBar;
    PGBR_GERARCOMB: TProgressBar;
    PGBR_GERARCOMB0: TProgressBar;
    PGBR_GERARCOMB3: TProgressBar;
    PA_PREENCHIMENTO: TPanel;
    Label80: TLabel;
    Label79: TLabel;
    Label78: TLabel;
    Label77: TLabel;
    Label76: TLabel;
    STGR_BASE_L5: TStringGrid;
    STGR_BASE_L4: TStringGrid;
    STGR_BASE_L3: TStringGrid;
    STGR_BASE_L2: TStringGrid;
    STGR_BASE_L1: TStringGrid;
    BBT_RECOMECAR: TBitBtn;
    BBT_701: TBitBtn;
    BBT_702: TBitBtn;
    BBT_711: TBitBtn;
    BBT_719: TBitBtn;
    BBT_720: TBitBtn;
    BBT_712: TBitBtn;
    BBT_703: TBitBtn;
    BBT_704: TBitBtn;
    BBT_713: TBitBtn;
    BBT_721: TBitBtn;
    BBT_722: TBitBtn;
    BBT_714: TBitBtn;
    BBT_705: TBitBtn;
    BBT_706: TBitBtn;
    BBT_715: TBitBtn;
    BBT_723: TBitBtn;
    BBT_724: TBitBtn;
    BBT_716: TBitBtn;
    BBT_707: TBitBtn;
    BBT_708: TBitBtn;
    BBT_717: TBitBtn;
    BBT_725: TBitBtn;
    BBT_718: TBitBtn;
    BBT_709: TBitBtn;
    BBT_710: TBitBtn;
    ED_fixoS_L1: TEdit;
    CB_FIXO_L2: TComboBox;
    ED_fixoS_L2: TEdit;
    CB_FIXO_L3: TComboBox;
    ED_fixoS_L3: TEdit;
    CB_FIXO_L4: TComboBox;
    ED_fixoS_L4: TEdit;
    ED_fixoS_L5: TEdit;
    CB_FIXO_L5: TComboBox;
    PA_COLUNA1: TPanel;
    Label56: TLabel;
    ED_SOMAS_C1_INI: TEdit;
    TRB_C1_INI: TTrackBar;
    ED_SOMAS_C1_FINAL: TEdit;
    TRB_C1_FINAL: TTrackBar;
    PA_COLUNA2: TPanel;
    Label61: TLabel;
    ED_SOMAS_C2_INI: TEdit;
    ED_SOMAS_C2_FINAL: TEdit;
    TRB_C2_INI: TTrackBar;
    TRB_C2_FINAL: TTrackBar;
    PA_COLUNA3: TPanel;
    Label72: TLabel;
    ED_SOMAS_C3_INI: TEdit;
    TRB_C3_INI: TTrackBar;
    ED_SOMAS_C3_FINAL: TEdit;
    TRB_C3_FINAL: TTrackBar;
    PA_COLUNA4: TPanel;
    Label25: TLabel;
    ED_SOMAS_C4_INI: TEdit;
    ED_SOMAS_C4_FINAL: TEdit;
    TRB_C4_INI: TTrackBar;
    TRB_C4_FINAL: TTrackBar;
    BBT_CLICK_TUDO: TButton;
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
    PA_FIMFILTRO: TPanel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    LA_fTOTAL_COMB: TLabel;
    LA_fQTD_COMB: TLabel;
    Label59: TLabel;
    LA_fTOTAL_100REPET: TLabel;
    Label62: TLabel;
    LA_fQTD_FILTRADOS: TLabel;
    BBT_FIMFILTRO: TBitBtn;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    PA_COLUNA3x4: TPanel;
    Label1: TLabel;
    ED_SOMAS_C3x4_INI: TEdit;
    TRB_C3x4_INI: TTrackBar;
    ED_SOMAS_C3x4_FINAL: TEdit;
    TRB_C3x4_FINAL: TTrackBar;
    PA_COLUNA1x2: TPanel;
    Label27: TLabel;
    ED_SOMAS_C1x2_INI: TEdit;
    TRB_C1x2_INI: TTrackBar;
    ED_SOMAS_C1x2_FINAL: TEdit;
    TRB_C1x2_FINAL: TTrackBar;
    CB_FIXO_L1: TComboBox;
    BBT_CAPTURAR_F11: TBitBtn;
    CB_FORMA_EXECUCAO: TComboBox;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_CARREGAR_SIMULACAO: TButton;
    BT_RECUPERAR_SIMULACAO: TButton;
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
    ED_FIXOS_05: TEdit;
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
    BBT_PA_REMOVEUREPET: TBitBtn;
    PA_GERAR: TPanel;
    Label64: TLabel;
    Label65: TLabel;
    RB_GERAR: TRadioButton;
    RB_GERAR_FILTRAR: TRadioButton;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_GERAR_SIMULACAO: TBitBtn;
    BBT_GERAR_SAIR: TBitBtn;
    LA_gFIM_GERAR: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
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
    procedure BBT_RECOMECARClick(Sender: TObject);
    procedure BBT_CLICK_TUDOClick(Sender: TObject);
    procedure TRB_C1_INIChange(Sender: TObject);
    procedure TRB_C1_FINALChange(Sender: TObject);
    procedure TRB_C3_INIChange(Sender: TObject);
    procedure TRB_C3_FINALChange(Sender: TObject);
    procedure TRB_C2_INIChange(Sender: TObject);
    procedure TRB_C4_INIChange(Sender: TObject);
    procedure TRB_C2_FINALChange(Sender: TObject);
    procedure TRB_C4_FINALChange(Sender: TObject);
    procedure TRB_C1x2_INIChange(Sender: TObject);
    procedure TRB_C3x4_INIChange(Sender: TObject);
    procedure RB_RES_GABARITOSClick(Sender: TObject);
    procedure RB_GABARITOClick(Sender: TObject);
    procedure RB_RESULTADOSClick(Sender: TObject);
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure BBT_GERAR_SIMULACAOClick(Sender: TObject);
    procedure BBT_ORDENARClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_ENCERRARClick(Sender: TObject);
    procedure BBT_FIMFILTROClick(Sender: TObject);
    procedure TRB_C1x2_FINALChange(Sender: TObject);
    procedure TRB_C3x4_FINALChange(Sender: TObject);
    procedure BBT_CAPTURAR_F11Click(Sender: TObject);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure BT_CARREGAR_SIMULACAOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBT_GERAR_SAIRClick(Sender: TObject);
    procedure BBT_GERAR_MENUClick(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);     
  public
    { Public declarations }
  end;

var
  _F_SIM_01_FILTRO_12: T_F_SIM_01_FILTRO_12;

implementation

uses Unit1;

{$R *.dfm}

procedure T_F_SIM_01_FILTRO_12.FormCreate(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
     FOR VI_CONTAR := 2 TO 18 DO
     BEGIN
          STGR_COMB15.Cells [VI_CONTAR,1] := '0';
     END;
     STGR_COMB15.RowCount := 2;
     FOR VI_CONTAR := 1 TO 5 DO
     BEGIN
          STGR_BASE_L1.Cells[VI_CONTAR,0] := '0';
          STGR_BASE_L2.Cells[VI_CONTAR,0] := '0';
          STGR_BASE_L3.Cells[VI_CONTAR,0] := '0';
          STGR_BASE_L4.Cells[VI_CONTAR,0] := '0';
          STGR_BASE_L5.Cells[VI_CONTAR,0] := '0';
          STGR_FLAG_COL2.Cells[0,VI_CONTAR] := 'L'+INTtoSTR(VI_CONTAR);
          STGR_FLAG_COL3.Cells[0,VI_CONTAR] := 'L'+INTtoSTR(VI_CONTAR);
     END;
     STGR_COMB15.Cells[0,0] := 'QTD';
     STGR_COMB15.Cells[1,0] := '100REP';
     STGR_COMB15.Cells[2,0] := 'FILTRADO';
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
          STGR_COMB15.Cells [VI_CONTAR+3,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
          STGR_FLAG_COL2.Cells[VI_CONTAR,0] := INTtoSTR(VI_CONTAR);
          STGR_FLAG_COL3.Cells[VI_CONTAR,0] := INTtoSTR(VI_CONTAR);
     END;
     FOR VI_CONTAR :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
     END; // FOR VI_CONTAR
     PA_REMOVEUREPET.Left := 5000;
     PA_FIMFILTRO.Left := 5000;
     PA_GABARITO.Visible := false;
     PA_PREENCHIMENTO.Visible := false;
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible := false;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 498;
     PA_EXECUTAR_FILTRO.Enabled := false;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
end;



procedure T_F_SIM_01_FILTRO_12.BBT_CLOSEClick(Sender: TObject);
begin
     self.Close;
end;



procedure T_F_SIM_01_FILTRO_12.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(1);
    BBT_701.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(2);
    BBT_702.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(3);
    BBT_703.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(4);
    BBT_704.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(5);
    BBT_705.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(6);
    BBT_706.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(7);
    BBT_707.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(8);
    BBT_708.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(10);
    BBT_710.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(9);
    BBT_709.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(11);
    BBT_711.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(12);
    BBT_712.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(13);
    BBT_713.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(14);
    BBT_714.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(15);
    BBT_715.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(16);
    BBT_716.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(17);
    BBT_717.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(18);
    BBT_718.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(19);
    BBT_719.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(20);
    BBT_720.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(21);
    BBT_721.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(22);
    BBT_722.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(23);
    BBT_723.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(24);
    BBT_724.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(25);
    BBT_725.Enabled := FALSE;
end;





PROCEDURE T_F_SIM_01_FILTRO_12.PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3, VI_CONTAR4, VI_CONTAR5 : INTEGER;
BEGIN
   FOR VI_CONTAR := 1 TO 5 DO
    BEGIN
        IF (STRtoINT (STGR_BASE_L1.Cells [VI_CONTAR,0]) = 0) THEN
        BEGIN
            STGR_BASE_L1.Cells [VI_CONTAR,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
            EXIT;
        END ELSE
        IF (VI_CONTAR = 5) THEN
        BEGIN
            FOR VI_CONTAR2 :=1 TO 5 DO
            BEGIN
                IF (STRtoINT (STGR_BASE_L2.Cells [VI_CONTAR2,0]) = 0) THEN
                BEGIN
                    STGR_BASE_L2.Cells [VI_CONTAR2,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                    EXIT;
                END ELSE
                IF (VI_CONTAR2 = 5) THEN
                BEGIN
                    FOR VI_CONTAR3 :=1 TO 5 DO
                    BEGIN
                        IF (STRtoINT (STGR_BASE_L3.Cells [VI_CONTAR3,0]) = 0) THEN
                        BEGIN
                            STGR_BASE_L3.Cells [VI_CONTAR3,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                            EXIT  ;
                        END ELSE
                        IF (VI_CONTAR3 = 5) THEN
                        BEGIN
                            FOR VI_CONTAR4 :=1 TO 5 DO
                            BEGIN
                                IF (STRtoINT (STGR_BASE_L4.Cells [VI_CONTAR4,0]) = 0) THEN
                                BEGIN
                                    STGR_BASE_L4.Cells [VI_CONTAR4,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                    EXIT ;
                            END ELSE
                                IF (VI_CONTAR4 = 5) THEN
                                BEGIN
                                    FOR VI_CONTAR5 :=1 TO 5 DO
                                    BEGIN
                                        IF (STRtoINT (STGR_BASE_L5.Cells [VI_CONTAR5,0]) = 0) THEN
                                        BEGIN
                                            STGR_BASE_L5.Cells [VI_CONTAR5,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                            EXIT ;
                                        END; // IF VI_CONTAR5
                                    END; // FOR VI_CONTAR5
                                END; // IF VI_CONTAR4
                            END; // FOR VI_CONTAR4
                        END; // IF (VI_CONTAR3
                    END;// FOR VI_CONTAR3
                END; // IF (STRtoINT
            END; // FOR VI_CONTAR 2
        END;// IF (STRtoINT
    END; // VI_CONTAR

END;



procedure T_F_SIM_01_FILTRO_12.BBT_RECOMECARClick(Sender: TObject);
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
        STGR_COMB15.Cells [VI_CONTAR,1] := '0';
    END;
    STGR_COMB15.RowCount := 2;
    FOR VI_CONTAR := 1 TO 5 DO
    BEGIN
        STGR_BASE_L1.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L2.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L3.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L4.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L5.Cells [VI_CONTAR,0] := '0';
    END;
end;



procedure T_F_SIM_01_FILTRO_12.BBT_CLICK_TUDOClick(Sender: TObject);
begin
     BBT_701.Click;
     BBT_702.Click;
     BBT_713.Click;
     BBT_724.Click;
     BBT_725.Click;
     BBT_703.Click;
     BBT_705.Click;
     BBT_712.Click;
     BBT_722.Click;
     BBT_723.Click;

     BBT_704.Click;
     BBT_706.Click;
     BBT_714.Click;
     BBT_720.Click;
     BBT_721.Click;
     BBT_707.Click;
     BBT_710.Click;
     BBT_711.Click;
     BBT_718.Click;
     BBT_719.Click;

     CB_FIXO_L1.ItemIndex := 1;
     CB_FIXO_L2.ItemIndex := 1;
     CB_FIXO_L3.ItemIndex := 1;
     CB_FIXO_L4.ItemIndex := 1;
     ED_fixoS_L1.Text := '02';
     ED_fixoS_L2.Text := '05';
     ED_fixoS_L3.Text := '14';
     ED_fixoS_L4.Text := '18';

     ED_EXC_01.Text := '24';
     ED_EXC_02.Text := '12';
     ED_EXC_03.Text := '04';
end;


procedure T_F_SIM_01_FILTRO_12.TRB_C1_INIChange(Sender: TObject);
begin
     IF TRB_C1_INI.Position = 1 THEN
          ED_SOMAS_C1_INI.Text := '127';
     IF TRB_C1_INI.Position = 2 THEN
          ED_SOMAS_C1_INI.Text := '128';
     IF TRB_C1_INI.Position = 3 THEN
          ED_SOMAS_C1_INI.Text := '129';
     IF TRB_C1_INI.Position = 4 THEN
          ED_SOMAS_C1_INI.Text := '130';
     IF TRB_C1_INI.Position = 5 THEN
          ED_SOMAS_C1_INI.Text := '131';
     IF TRB_C1_INI.Position = 6 THEN
          ED_SOMAS_C1_INI.Text := '132';
     IF TRB_C1_INI.Position = 7 THEN
          ED_SOMAS_C1_INI.Text := '133';
     //ED_SOMAS_C2_INI.Text := INTtoSTR(STRtoINT(ED_SOMAS_C1x2.Text)-STRtoINT(ED_SOMAS_C1_INI.Text)) ;
end;


procedure T_F_SIM_01_FILTRO_12.TRB_C1_FINALChange(Sender: TObject);
begin
     IF TRB_C1_FINAL.Position = 1 THEN
          ED_SOMAS_C1_FINAL.Text := '127';
     IF TRB_C1_FINAL.Position = 2 THEN
          ED_SOMAS_C1_FINAL.Text := '128';
     IF TRB_C1_FINAL.Position = 3 THEN
          ED_SOMAS_C1_FINAL.Text := '129';
     IF TRB_C1_FINAL.Position = 4 THEN
          ED_SOMAS_C1_FINAL.Text := '130';
     IF TRB_C1_FINAL.Position = 5 THEN
          ED_SOMAS_C1_FINAL.Text := '131';
     IF TRB_C1_FINAL.Position = 6 THEN
          ED_SOMAS_C1_FINAL.Text := '132';
     IF TRB_C1_FINAL.Position = 7 THEN
          ED_SOMAS_C1_FINAL.Text := '133';
     //ED_SOMAS_C2_FINAL.Text := INTtoSTR(STRtoINT(ED_SOMAS_C1x2.Text)-STRtoINT(ED_SOMAS_C1_FINAL.Text)) ;
end;


procedure T_F_SIM_01_FILTRO_12.TRB_C3_INIChange(Sender: TObject);
begin
     IF TRB_C3_INI.Position = 1 THEN
          ED_SOMAS_C3_INI.Text := '62';
     IF TRB_C3_INI.Position = 2 THEN
          ED_SOMAS_C3_INI.Text := '64';
     IF TRB_C3_INI.Position = 3 THEN
          ED_SOMAS_C3_INI.Text := '66';
     IF TRB_C3_INI.Position = 4 THEN
          ED_SOMAS_C3_INI.Text := '68';
     //ED_SOMAS_C4_INI.Text := INTtoSTR(STRtoINT(ED_SOMAS_C3x4.Text)-STRtoINT(ED_SOMAS_C3_INI.Text)) ;
end;


procedure T_F_SIM_01_FILTRO_12.TRB_C3_FINALChange(Sender: TObject);
begin
     IF TRB_C3_FINAL.Position = 1 THEN
          ED_SOMAS_C3_FINAL.Text := '62';
     IF TRB_C3_FINAL.Position = 2 THEN
          ED_SOMAS_C3_FINAL.Text := '64';
     IF TRB_C3_FINAL.Position = 3 THEN
          ED_SOMAS_C3_FINAL.Text := '66';
     IF TRB_C3_FINAL.Position = 4 THEN
          ED_SOMAS_C3_FINAL.Text := '68';
     //ED_SOMAS_C4_FINAL.Text := INTtoSTR(STRtoINT(ED_SOMAS_C3x4.Text)-STRtoINT(ED_SOMAS_C3_FINAL.Text)) ;
end;



procedure T_F_SIM_01_FILTRO_12.TRB_C2_INIChange(Sender: TObject);
begin
     IF TRB_C2_INI.Position = 1 THEN
          ED_SOMAS_C2_INI.Text := '62';
     IF TRB_C2_INI.Position = 2 THEN
          ED_SOMAS_C2_INI.Text := '63';
     IF TRB_C2_INI.Position = 3 THEN
          ED_SOMAS_C2_INI.Text := '64';
     IF TRB_C2_INI.Position = 4 THEN
          ED_SOMAS_C2_INI.Text := '65';
     IF TRB_C2_INI.Position = 5 THEN
          ED_SOMAS_C2_INI.Text := '66';
     IF TRB_C2_INI.Position = 6 THEN
          ED_SOMAS_C2_INI.Text := '67';
     IF TRB_C2_INI.Position = 7 THEN
          ED_SOMAS_C2_INI.Text := '68';
end;


procedure T_F_SIM_01_FILTRO_12.TRB_C2_FINALChange(Sender: TObject);
begin
     IF TRB_C2_FINAL.Position = 1 THEN
          ED_SOMAS_C2_FINAL.Text := '62';
     IF TRB_C2_FINAL.Position = 2 THEN
          ED_SOMAS_C2_FINAL.Text := '63';
     IF TRB_C2_FINAL.Position = 3 THEN
          ED_SOMAS_C2_FINAL.Text := '64';
     IF TRB_C2_FINAL.Position = 4 THEN
          ED_SOMAS_C2_FINAL.Text := '65';
     IF TRB_C2_FINAL.Position = 5 THEN
          ED_SOMAS_C2_FINAL.Text := '66';
     IF TRB_C2_FINAL.Position = 6 THEN
          ED_SOMAS_C2_FINAL.Text := '67';
     IF TRB_C2_FINAL.Position = 7 THEN
          ED_SOMAS_C2_FINAL.Text := '68';
end;



procedure T_F_SIM_01_FILTRO_12.TRB_C4_INIChange(Sender: TObject);
begin
     IF TRB_C4_INI.Position = 1 THEN
          ED_SOMAS_C4_INI.Text := '62';
     IF TRB_C4_INI.Position = 2 THEN
          ED_SOMAS_C4_INI.Text := '64';
     IF TRB_C4_INI.Position = 3 THEN
          ED_SOMAS_C4_INI.Text := '66';
     IF TRB_C4_INI.Position = 4 THEN
          ED_SOMAS_C4_INI.Text := '68';
end;



procedure T_F_SIM_01_FILTRO_12.TRB_C4_FINALChange(Sender: TObject);
begin
     IF TRB_C4_FINAL.Position = 1 THEN
          ED_SOMAS_C4_FINAL.Text := '62';
     IF TRB_C4_FINAL.Position = 2 THEN
          ED_SOMAS_C4_FINAL.Text := '64';
     IF TRB_C4_FINAL.Position = 3 THEN
          ED_SOMAS_C4_FINAL.Text := '66';
     IF TRB_C4_FINAL.Position = 4 THEN
          ED_SOMAS_C4_FINAL.Text := '68';
end;




procedure T_F_SIM_01_FILTRO_12.TRB_C1x2_INIChange(Sender: TObject);
begin
     IF TRB_C1x2_INI.Position = 1 THEN
          ED_SOMAS_C1x2_INI.Text := '191';
     IF TRB_C1x2_INI.Position = 2 THEN
          ED_SOMAS_C1x2_INI.Text := '193';
     IF TRB_C1x2_INI.Position = 3 THEN
          ED_SOMAS_C1x2_INI.Text := '195';
     IF TRB_C1x2_INI.Position = 4 THEN
          ED_SOMAS_C1x2_INI.Text := '197';
     IF TRB_C1x2_INI.Position = 5 THEN
          ED_SOMAS_C1x2_INI.Text := '199';
end;



procedure T_F_SIM_01_FILTRO_12.TRB_C3x4_INIChange(Sender: TObject);
begin
     IF TRB_C3x4_INI.Position = 1 THEN
          ED_SOMAS_C3x4_INI.Text := '126';
     IF TRB_C3x4_INI.Position = 2 THEN
          ED_SOMAS_C3x4_INI.Text := '128';
     IF TRB_C3x4_INI.Position = 3 THEN
          ED_SOMAS_C3x4_INI.Text := '130';
     IF TRB_C3x4_INI.Position = 4 THEN
          ED_SOMAS_C3x4_INI.Text := '132';
     IF TRB_C3x4_INI.Position = 5 THEN
          ED_SOMAS_C3x4_INI.Text := '134';
end;

procedure T_F_SIM_01_FILTRO_12.TRB_C1x2_FINALChange(Sender: TObject);
begin
     IF TRB_C1x2_FINAL.Position = 1 THEN
          ED_SOMAS_C1x2_FINAL.Text := '191';
     IF TRB_C1x2_FINAL.Position = 2 THEN
          ED_SOMAS_C1x2_FINAL.Text := '193';
     IF TRB_C1x2_FINAL.Position = 3 THEN
          ED_SOMAS_C1x2_FINAL.Text := '195';
     IF TRB_C1x2_FINAL.Position = 4 THEN
          ED_SOMAS_C1x2_FINAL.Text := '197';
     IF TRB_C1x2_FINAL.Position = 5 THEN
          ED_SOMAS_C1x2_FINAL.Text := '199';
end;


procedure T_F_SIM_01_FILTRO_12.TRB_C3x4_FINALChange(Sender: TObject);
begin
     IF TRB_C3x4_FINAL.Position = 1 THEN
          ED_SOMAS_C3x4_FINAL.Text := '126';
     IF TRB_C3x4_FINAL.Position = 2 THEN
          ED_SOMAS_C3x4_FINAL.Text := '128';
     IF TRB_C3x4_FINAL.Position = 3 THEN
          ED_SOMAS_C3x4_FINAL.Text := '130';
     IF TRB_C3x4_FINAL.Position = 4 THEN
          ED_SOMAS_C3x4_FINAL.Text := '132';
     IF TRB_C3x4_FINAL.Position = 5 THEN
          ED_SOMAS_C3x4_FINAL.Text := '134';
end;



procedure T_F_SIM_01_FILTRO_12.RB_RES_GABARITOSClick(Sender: TObject);
begin
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 184 ;
           Height := 195 ;
           Visible := TRUE;
       END; // WITH
     STGR_LINHA_1_C1.Height := 123;
     STGR_LINHA_1_C2.Height := 123;
     STGR_LINHA_1_C3.Height := 123;
     STGR_LINHA_1_C4.Height := 123;
     STGR_LINHA_2_C1.Height := 123;
     STGR_LINHA_2_C2.Height := 123;
     STGR_LINHA_2_C3.Height := 123;
     STGR_LINHA_2_C4.Height := 123;
     STGR_LINHA_3_C1.Height := 123;
     STGR_LINHA_3_C2.Height := 123;
     STGR_LINHA_3_C3.Height := 123;
     STGR_LINHA_3_C4.Height := 123;
     STGR_LINHA_4_C1.Height := 123;
     STGR_LINHA_4_C2.Height := 123;
     STGR_LINHA_4_C3.Height := 123;
     STGR_LINHA_4_C4.Height := 123;
     STGR_LINHA_5_C1.Height := 123;
     STGR_LINHA_5_C2.Height := 123;
     STGR_LINHA_5_C3.Height := 123;
     STGR_LINHA_5_C4.Height := 123;
     STGR_LINHA_1_TODOS.Height := 123 ;
     STGR_LINHA_2_TODOS.Height := 123 ;
     STGR_LINHA_3_TODOS.Height := 123 ;
     STGR_LINHA_4_TODOS.Height := 123 ;
     STGR_LINHA_5_TODOS.Height := 123 ;
     STGR_FLAG_cmbCOL3x4.Height := 123;
     PA_RESULTADO.Visible  := TRUE;
end;

procedure T_F_SIM_01_FILTRO_12.RB_GABARITOClick(Sender: TObject);
begin
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 184 ;
           Height := 395 ;
           Visible := TRUE;
       END; // WITH
     STGR_LINHA_1_C1.Height := 343;
     STGR_LINHA_1_C2.Height := 343;
     STGR_LINHA_1_C3.Height := 343;
     STGR_LINHA_1_C4.Height := 343;
     STGR_LINHA_2_C1.Height := 343;
     STGR_LINHA_2_C2.Height := 343;
     STGR_LINHA_2_C3.Height := 343;
     STGR_LINHA_2_C4.Height := 343;
     STGR_LINHA_3_C1.Height := 343;
     STGR_LINHA_3_C2.Height := 343;
     STGR_LINHA_3_C3.Height := 343;
     STGR_LINHA_3_C4.Height := 343;
     STGR_LINHA_4_C1.Height := 343;
     STGR_LINHA_4_C2.Height := 343;
     STGR_LINHA_4_C4.Height := 343;
     STGR_LINHA_4_C3.Height := 343;
     STGR_LINHA_5_C1.Height := 343;
     STGR_LINHA_5_C2.Height := 343;
     STGR_LINHA_5_C3.Height := 343;
     STGR_LINHA_5_C4.Height := 343;
     STGR_LINHA_1_TODOS.Height := 343  ;
     STGR_LINHA_2_TODOS.Height := 343   ;
     STGR_LINHA_3_TODOS.Height := 343   ;
     STGR_LINHA_4_TODOS.Height := 343  ;
     STGR_LINHA_5_TODOS.Height := 343  ;
     STGR_FLAG_cmbCOL3x4.Height := 325;
     PA_RESULTADO.Visible  := false;
end;

procedure T_F_SIM_01_FILTRO_12.RB_RESULTADOSClick(Sender: TObject);
begin
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible  := TRUE;
end;


procedure T_F_SIM_01_FILTRO_12.BBT_PREPARARClick(Sender: TObject);
var
     VI_CONTADOR, VI_CONTAR, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2: integer;
     VI_COMBINACOES3, VI_COMBINACOES4, VI_COMBINACOES5 : SMALLINT;
     VI_CNTCELULAS, VI_QTDde2, VI_QTDde3, VI_QTDde4: SMALLINT;
     VS_NUMEROSPRINCIPAIS: STRING;
begin
     BBT_ORDENAR.Visible := TRUE;
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
        STGR_COMB15.Cells [VI_CONTAR+3,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_COMB15.Cells [VI_CONTAR+3,1] := '00';
     END;
     STGR_COMB15.RowCount := 2;
     STGR_COMB15.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB3.Position :=0;
     PGBR_GERARCOMB.Repaint;
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB3.Repaint;
     PGBR_REMREPET.Position := 00;
     PGBR_REMREPET.Repaint;
     PGBR_FILTRARCOMB.Position := 0;
     PGBR_FILTRARCOMB.Repaint;
     STGR_LINHA_1_TODOS.RowCount := 2;
     STGR_LINHA_2_TODOS.RowCount := 2;
     STGR_LINHA_3_TODOS.RowCount := 2;
     STGR_LINHA_4_TODOS.RowCount := 2;
     STGR_LINHA_5_TODOS.RowCount := 2;
     STGR_LINHA_1_TODOS.Repaint;
     STGR_LINHA_2_TODOS.Repaint;
     STGR_LINHA_3_TODOS.Repaint;
     STGR_LINHA_4_TODOS.Repaint;
     STGR_LINHA_5_TODOS.Repaint;
     LA_LINHA_1_100REP.Caption := '00';
     LA_LINHA_2_100REP.Caption := '00';
     LA_LINHA_3_100REP.Caption := '00';
     LA_LINHA_4_100REP.Caption := '00';
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_QTD_FILTRADOS.Caption := '0000000';
     LA_QTD_FILTRADOS.Repaint;
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_QTD_COMB.Repaint;
     IF not(CB_FORMA_EXECUCAO.ItemIndex = 1) THEN BBT_ORDENAR.Visible := false ;
     BBT_ORDENAR.Repaint;
    // ==========================================
    // ||||==================================||||
    // |||| 	Conferindo numeros v�lidos   ||||
    // ||||==================================||||
    // ==========================================
        // **************
        // **  LINHA 1 **
        // **************
    IF (CB_fixo_L1.ItemIndex = 1) THEN
    BEGIN
        IF not(
         ( STRtoINT(ED_fixoS_L1.Text) = STRtoINT(STGR_BASE_L1.Cells [1,0] ) ) OR
            (STRtoINT(ED_fixoS_L1.Text) = STRtoINT(STGR_BASE_L1.Cells [2,0] ) ) or
            (STRtoINT(ED_fixoS_L1.Text) = STRtoINT(STGR_BASE_L1.Cells [3,0] ) ) or
            (STRtoINT(ED_fixoS_L1.Text) = STRtoINT(STGR_BASE_L1.Cells [4,0] ) ) or
            (STRtoINT(ED_fixoS_L1.Text) = STRtoINT(STGR_BASE_L1.Cells [5,0] ) )
            )
        THEN
        BEGIN
            SHOWMESSAGE ('O N�MERO DIGITADO N�O FAZ PARTE DA CADEIA NUM�RICA.');
            ED_fixoS_L1.SetFocus;
            EXIT;
        END; // IF
    END ELSE
    BEGIN
          ED_fixoS_L1.Text :='00';
    END; // IF
        // **************
        // **  LINHA 2 **
        // **************
    IF (CB_fixo_L2.ItemIndex = 1) THEN
    BEGIN
        IF not(
         ( STRtoINT(ED_fixoS_L2.Text) = STRtoINT(STGR_BASE_L2.Cells [1,0] ) ) OR
            (STRtoINT(ED_fixoS_L2.Text) = STRtoINT(STGR_BASE_L2.Cells [2,0] ) ) or
            (STRtoINT(ED_fixoS_L2.Text) = STRtoINT(STGR_BASE_L2.Cells [3,0] ) ) or
            (STRtoINT(ED_fixoS_L2.Text) = STRtoINT(STGR_BASE_L2.Cells [4,0] ) ) or
            (STRtoINT(ED_fixoS_L2.Text) = STRtoINT(STGR_BASE_L2.Cells [5,0] ) )
            )
        THEN
        BEGIN
            SHOWMESSAGE ('O N�MERO DIGITADO N�O FAZ PARTE DA CADEIA NUM�RICA.');
            ED_fixoS_L2.SetFocus;
            EXIT;
        END; // IF
    END; // IF
        // **************
        // **  LINHA 3 **
        // **************
    IF (CB_fixo_L3.ItemIndex = 1) THEN
    BEGIN
        IF not(
         ( STRtoINT(ED_fixoS_L3.Text) = STRtoINT(STGR_BASE_L3.Cells [1,0] ) ) OR
            (STRtoINT(ED_fixoS_L3.Text) = STRtoINT(STGR_BASE_L3.Cells [2,0] ) ) or
            (STRtoINT(ED_fixoS_L3.Text) = STRtoINT(STGR_BASE_L3.Cells [3,0] ) ) or
            (STRtoINT(ED_fixoS_L3.Text) = STRtoINT(STGR_BASE_L3.Cells [4,0] ) ) or
            (STRtoINT(ED_fixoS_L3.Text) = STRtoINT(STGR_BASE_L3.Cells [5,0] ) )
            )
        THEN
        BEGIN
            SHOWMESSAGE ('O N�MERO DIGITADO N�O FAZ PARTE DA CADEIA NUM�RICA.');
            ED_fixoS_L3.SetFocus;
            EXIT;
        END; // IF
    END; // IF
        // **************
        // **  LINHA 4 **
        // **************
    IF (CB_fixo_L4.ItemIndex = 1) THEN
    BEGIN
        IF not(
         ( STRtoINT(ED_fixoS_L4.Text) = STRtoINT(STGR_BASE_L4.Cells [1,0] ) ) OR
            (STRtoINT(ED_fixoS_L4.Text) = STRtoINT(STGR_BASE_L4.Cells [2,0] ) ) or
            (STRtoINT(ED_fixoS_L4.Text) = STRtoINT(STGR_BASE_L4.Cells [3,0] ) ) or
            (STRtoINT(ED_fixoS_L4.Text) = STRtoINT(STGR_BASE_L4.Cells [4,0] ) ) or
            (STRtoINT(ED_fixoS_L4.Text) = STRtoINT(STGR_BASE_L4.Cells [5,0] ) )
            )
        THEN
        BEGIN
            SHOWMESSAGE ('O N�MERO DIGITADO N�O FAZ PARTE DA CADEIA NUM�RICA.');
            ED_fixoS_L4.SetFocus;
            EXIT;
        END; // IF
    END; // IF
        // **************
        // **  LINHA 5 **
        // **************
    IF (CB_fixo_L5.ItemIndex = 1) THEN
    BEGIN
        IF not(
         ( STRtoINT(ED_fixoS_L5.Text) = STRtoINT(STGR_BASE_L5.Cells [1,0] ) ) OR
            (STRtoINT(ED_fixoS_L5.Text) = STRtoINT(STGR_BASE_L5.Cells [2,0] ) ) or
            (STRtoINT(ED_fixoS_L5.Text) = STRtoINT(STGR_BASE_L5.Cells [3,0] ) ) or
            (STRtoINT(ED_fixoS_L5.Text) = STRtoINT(STGR_BASE_L5.Cells [4,0] ) ) or
            (STRtoINT(ED_fixoS_L5.Text) = STRtoINT(STGR_BASE_L5.Cells [5,0] ) )
            )
        THEN
        BEGIN
            SHOWMESSAGE ('O N�MERO DIGITADO N�O FAZ PARTE DA CADEIA NUM�RICA.');
            ED_fixoS_L5.SetFocus;
            EXIT;
        END; // IF
    END ELSE
    BEGIN
          ED_fixoS_L5.Text :='00';
    END; // IF
    IF (STRtoINT(STGR_BASE_L5.Cells [5,0] ) =0) THEN
    BEGIN
       SHOWMESSAGE ('TERMINE O PREENCHIMENTO.');
       ED_fixoS_L5.SetFocus;
       EXIT;
   END; // IF
        // ***************************
        // **  CONFERINDO OS EXCLUIDOS **
        // ***************************
     IF (STRtoINT(ED_EXC_01.Text) = 0  ) OR
       (STRtoINT(ED_EXC_02.Text) = 0  ) OR
       (STRtoINT(ED_EXC_03.Text) = 0  ) THEN
     BEGIN
            SHOWMESSAGE ('N�MERO EXCLU�DO N�O PODE SER 0.');
            ED_EXC_01.SetFocus;
            EXIT;
     END; // IF
     IF (STRtoINT(ED_fixoS_L1.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_fixoS_L1.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_fixoS_L1.Text) = STRtoINT(ED_EXC_03.Text ) ) OR
     (STRtoINT(ED_fixoS_L2.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_fixoS_L2.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_fixoS_L2.Text) = STRtoINT(ED_EXC_03.Text ) ) OR
     (STRtoINT(ED_fixoS_L3.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_fixoS_L3.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_fixoS_L3.Text) = STRtoINT(ED_EXC_03.Text ) ) OR
     (STRtoINT(ED_fixoS_L4.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_fixoS_L4.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
     (STRtoINT(ED_FIXOS_L5.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
     (STRtoINT(ED_FIXOS_L5.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
     (STRtoINT(ED_FIXOS_L5.Text) = STRtoINT(ED_EXC_03.Text ) )
     THEN
     BEGIN
            SHOWMESSAGE ('O N�MERO EXCLU�DO TEM DE SER DIFERENTE DOS SELECIONADOS (COLUNA).');
            ED_EXC_01.SetFocus;
            EXIT;
     END; // IF
    IF (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O N�MERO FIXO DOS N�MEROS A GERAR TEM DE SER DIFERENTE DOS EXCLU�DOS.');
            ED_FIXOS_01.SetFocus;
            EXIT;
    END; // IF
    IF (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O N�MERO FIXO DOS N�MEROS A GERAR TEM DE SER DIFERENTE DOS EXCLU�DOS.');
            ED_FIXOS_02.SetFocus;
            EXIT;
    END; // IF
    IF (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O N�MERO FIXO DOS N�MEROS A GERAR TEM DE SER DIFERENTE DOS EXCLU�DOS.');
            ED_FIXOS_02.SetFocus;
            EXIT;
    END; // IF
    IF (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O N�MERO FIXO DOS N�MEROS A GERAR TEM DE SER DIFERENTE DOS EXCLU�DOS.');
            ED_FIXOS_02.SetFocus;
            EXIT;
    END; // IF
        // ***************************
        // **  Verificando n�meros inicias e finais **
        // ***************************
     if (STRtoINT(ED_FIXOS_01.Text)=00) then
     begin
          SHOWMESSAGE ('O PRIMEIRO NUMERO FIXO � ZERO, PORTANDO OS DEMAIS N�O TER�O EFEITO E SER�O ZERADO.');
          ED_FIXOS_02.Text := '00';
          ED_FIXOS_03.Text := '00';
          ED_FIXOS_04.Text := '00';
          ED_FIXOS_01.SetFocus;
     end
     ELSE if (STRtoINT(ED_FIXOS_02.Text)=0) or (STRtoINT(ED_FIXOS_03.Text)=0) or (STRtoINT(ED_FIXOS_04.Text)=0)then
     begin
          SHOWMESSAGE ('APENAS O PRIMEIRO NUMERO FIXO PODE SER ZERO.');
          ED_FIXOS_02.SetFocus;
     end; // IF

     IF (STRtoINT(ED_SOMAS_C1_FINAL.Text)) < (STRtoINT(ED_SOMAS_C1_INI.Text)) THEN
     BEGIN
       SHOWMESSAGE ('ORDEM NUM�RICA - POR FAVOR.');
       ED_SOMAS_C1_INI.SetFocus;
       EXIT;
     END;
     IF (STRtoINT(ED_SOMAS_C2_FINAL.Text)) < (STRtoINT(ED_SOMAS_C2_INI.Text)) THEN
     BEGIN
       SHOWMESSAGE ('ORDEM NUM�RICA - POR FAVOR.');
       ED_SOMAS_C2_INI.SetFocus;
       EXIT;
     END;
     IF (STRtoINT(ED_SOMAS_C1x2_FINAL.Text)) < (STRtoINT(ED_SOMAS_C1x2_INI.Text)) THEN
     BEGIN
       SHOWMESSAGE ('ORDEM NUM�RICA - POR FAVOR.');
       ED_SOMAS_C1x2_INI.SetFocus;
       EXIT;
     END;     
     IF (STRtoINT(ED_SOMAS_C3_FINAL.Text)) < (STRtoINT(ED_SOMAS_C3_INI.Text)) THEN
     BEGIN
       SHOWMESSAGE ('ORDEM NUM�RICA - POR FAVOR.');
       ED_SOMAS_C3_INI.SetFocus;
       EXIT;
     END;
     IF (STRtoINT(ED_SOMAS_C4_FINAL.Text)) < (STRtoINT(ED_SOMAS_C4_INI.Text)) THEN
     BEGIN
       SHOWMESSAGE ('ORDEM NUM�RICA - POR FAVOR.');
       ED_SOMAS_C4_INI.SetFocus;
       EXIT;
     END;
     IF (STRtoINT(ED_SOMAS_C3x4_FINAL.Text)) < (STRtoINT(ED_SOMAS_C3x4_INI.Text)) THEN
     BEGIN
       SHOWMESSAGE ('ORDEM NUM�RICA - POR FAVOR.');
       ED_SOMAS_C3x4_INI.SetFocus;
       EXIT;
     END;


        // ******************
        // **  LINHA_1 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 5 DO
                    BEGIN
                         STGR_LINHA_1_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_1_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_1_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_1_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_1_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                         STGR_LINHA_1_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_1_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         // ----------------------------
                         // -- FLAG NA COLUNA 2 --
                         // ----------------------------
                         STGR_LINHA_1_C2.Cells [1,VI_LINHAS2]:= 'F';
                         STGR_LINHA_1_C3.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O N�MERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                         IF (POS(STGR_BASE_L1.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_1_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O N�MERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L1.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                         IF (POS(STGR_BASE_L1.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_1_C3.Cells[1,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_COMBINACOES4,0];
                         END;

                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM N�MEROS SER�O EXIBIDAS, AS COM O FLAG DE F (FALSO) N�O  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_LINHA_1_C2.Cells [1,VI_LINHAS2]='F')
                              OR (STGR_LINHA_1_C3.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // -----------------------------------
                              // -- CAPTURAR OS N�MERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L1.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L1.Cells[VI_COMBINACOES3,0]+ '-' +
                              STGR_BASE_L1.Cells[VI_COMBINACOES4,0];

                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_1_C4.Cells[1,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_1_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_1_C2.RowCount := VI_LINHAS2;
                              STGR_LINHA_1_C3.RowCount := VI_LINHAS2;
                              STGR_LINHA_1_C4.RowCount := VI_LINHAS2;
                         END; // IF
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_1_C1.Repaint;
     STGR_LINHA_1_C2.Repaint;
     STGR_LINHA_1_C3.Repaint;
     STGR_LINHA_1_C4.Repaint;
          // ----------------------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 1 SE NECESS�RIO --
          // ----------------------------------------------------
     IF (CB_FIXO_L1.ItemIndex = 1) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1])=STRtoINT(ED_fixoS_L1.Text))
                    OR (STRtoINT(STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1])=STRtoINT(ED_fixoS_L1.Text))
               THEN
               BEGIN
                    STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1]:= 'V';
               END ELSE
               BEGIN
                    STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1]:= 'F';
               END; // IF
          END; // FOR VI_COMBINACOES1
     END; // IF
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                   (STRtoINT(STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                   (STRtoINT(STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                   (STRtoINT(STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_1_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1

          // -------------------------------
          // -- Combina��es Totais --
          // -------------------------------
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_1_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_LINHA_1_TODOS.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_LINHA_1_TODOS.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_LINHA_1_TODOS.Cells [2, VI_LINHAS2] := STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1];
               STGR_LINHA_1_TODOS.Cells [3, VI_LINHAS2] := STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1];
               //STGR_LINHA_1_TODOS.Cells [4, VI_LINHAS2] := '-'  ;
               STGR_LINHA_1_TODOS.Cells [4, VI_LINHAS2] := STGR_LINHA_1_C2.Cells[1,VI_COMBINACOES1];
               //STGR_LINHA_1_TODOS.Cells [6, VI_LINHAS2] := '-'  ;
               STGR_LINHA_1_TODOS.Cells [5, VI_LINHAS2] := STGR_LINHA_1_C3.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das pr�ximas celulas n�o s�o visiveis, pore�m n�o sa� ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_LINHA_1_TODOS.Cells [9, VI_LINHAS2] := '['+STGR_LINHA_1_C1.Cells[0,VI_COMBINACOES1]+']';
                    STGR_LINHA_1_TODOS.Cells [10, VI_LINHAS2] := STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1];
                    STGR_LINHA_1_TODOS.Cells [11, VI_LINHAS2] := STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1];
                    STGR_LINHA_1_TODOS.Cells [12, VI_LINHAS2] := STGR_LINHA_1_C2.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_1_TODOS.Cells [13, VI_LINHAS2] := STGR_LINHA_1_C3.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_1_TODOS.Cells [14, VI_LINHAS2] := STGR_LINHA_1_C4.Cells[1,VI_COMBINACOES1];
               VI_LINHAS2 := VI_LINHAS2 +1;
               STGR_LINHA_1_TODOS.RowCount := VI_LINHAS2;
          END; // IF (STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1

     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_TODOS.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_1_TODOS.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_1_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_1_100REP.Repaint;


        // ******************
        // **  LINHA_2 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 5 DO
                    BEGIN
                         STGR_LINHA_2_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_2_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_2_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_2_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_2_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                         STGR_LINHA_2_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_2_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         // ----------------------------
                         // -- FLAG NA COLUNA 2 --
                         // ----------------------------
                         STGR_LINHA_2_C2.Cells [1,VI_LINHAS2]:= 'F';
                         STGR_LINHA_2_C3.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O N�MERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                         IF (POS(STGR_BASE_L2.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_2_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O N�MERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L2.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                         IF (POS(STGR_BASE_L2.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_2_C3.Cells[1,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_COMBINACOES4,0];
                         END;

                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM N�MEROS SER�O EXIBIDAS, AS COM O FLAG DE F (FALSO) N�O  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_LINHA_2_C2.Cells [1,VI_LINHAS2]='F')
                              OR (STGR_LINHA_2_C3.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // -----------------------------------
                              // -- CAPTURAR OS N�MERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L2.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L2.Cells[VI_COMBINACOES3,0]+ '-' +
                              STGR_BASE_L2.Cells[VI_COMBINACOES4,0];

                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_2_C4.Cells[1,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_2_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_2_C2.RowCount := VI_LINHAS2;
                              STGR_LINHA_2_C3.RowCount := VI_LINHAS2;
                              STGR_LINHA_2_C4.RowCount := VI_LINHAS2;
                         END; // IF
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_2_C1.Repaint;
     STGR_LINHA_2_C2.Repaint;
     STGR_LINHA_2_C3.Repaint;
     STGR_LINHA_2_C4.Repaint;
          // ----------------------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 1 SE NECESS�RIO --
          // ----------------------------------------------------
     IF (CB_FIXO_L2.ItemIndex = 1) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1])=STRtoINT(ED_fixoS_L2.Text))
                    OR (STRtoINT(STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1])=STRtoINT(ED_fixoS_L2.Text))
               THEN
               BEGIN
                    STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1]:= 'V';
               END ELSE
               BEGIN
                    STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1]:= 'F';
               END; // IF
          END; // FOR VI_COMBINACOES1
     END; // IF
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

          // -------------------------------
          // -- Combina��es Totais --
          // -------------------------------
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_2_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_LINHA_2_TODOS.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_LINHA_2_TODOS.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_LINHA_2_TODOS.Cells [2, VI_LINHAS2] := STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1];
               STGR_LINHA_2_TODOS.Cells [3, VI_LINHAS2] := STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1];
               //STGR_LINHA_2_TODOS.Cells [4, VI_LINHAS2] := '-'  ;
               STGR_LINHA_2_TODOS.Cells [4, VI_LINHAS2] := STGR_LINHA_2_C2.Cells[1,VI_COMBINACOES1];
               //STGR_LINHA_2_TODOS.Cells [6, VI_LINHAS2] := '-'  ;
               STGR_LINHA_2_TODOS.Cells [5, VI_LINHAS2] := STGR_LINHA_2_C3.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das pr�ximas celulas n�o s�o visiveis, pore�m n�o sa� ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_LINHA_2_TODOS.Cells [9, VI_LINHAS2] := '['+STGR_LINHA_2_C1.Cells[0,VI_COMBINACOES1]+']';
                    STGR_LINHA_2_TODOS.Cells [10, VI_LINHAS2] := STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1];
                    STGR_LINHA_2_TODOS.Cells [11, VI_LINHAS2] := STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES1];
                    STGR_LINHA_2_TODOS.Cells [12, VI_LINHAS2] := STGR_LINHA_2_C2.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_2_TODOS.Cells [13, VI_LINHAS2] := STGR_LINHA_2_C3.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_2_TODOS.Cells [14, VI_LINHAS2] := STGR_LINHA_2_C4.Cells[1,VI_COMBINACOES1];
               VI_LINHAS2 := VI_LINHAS2 +1;
               STGR_LINHA_2_TODOS.RowCount := VI_LINHAS2;
          END; // IF (STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1

     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_TODOS.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_2_TODOS.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_2_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_2_100REP.Repaint;


        // ******************
        // **  LINHA_3 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 5 DO
                    BEGIN
                         STGR_LINHA_3_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_3_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_3_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_3_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_3_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                         STGR_LINHA_3_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_3_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         // ----------------------------
                         // -- FLAG NA COLUNA 2 --
                         // ----------------------------
                         STGR_LINHA_3_C2.Cells [1,VI_LINHAS2]:= 'F';
                         STGR_LINHA_3_C3.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O N�MERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                         IF (POS(STGR_BASE_L3.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_3_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O N�MERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L3.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
                         IF (POS(STGR_BASE_L3.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_3_C3.Cells[1,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_COMBINACOES4,0];
                         END;

                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM N�MEROS SER�O EXIBIDAS, AS COM O FLAG DE F (FALSO) N�O  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_LINHA_3_C2.Cells [1,VI_LINHAS2]='F')
                              OR (STGR_LINHA_3_C3.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // -----------------------------------
                              // -- CAPTURAR OS N�MERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L3.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L3.Cells[VI_COMBINACOES3,0]+ '-' +
                              STGR_BASE_L3.Cells[VI_COMBINACOES4,0];

                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_3_C4.Cells[1,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_3_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_3_C2.RowCount := VI_LINHAS2;
                              STGR_LINHA_3_C3.RowCount := VI_LINHAS2;
                              STGR_LINHA_3_C4.RowCount := VI_LINHAS2;
                         END; // IF
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_3_C1.Repaint;
     STGR_LINHA_3_C2.Repaint;
     STGR_LINHA_3_C3.Repaint;
     STGR_LINHA_3_C4.Repaint;
          // ----------------------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 1 SE NECESS�RIO --
          // ----------------------------------------------------
     IF (CB_FIXO_L3.ItemIndex = 1) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1])=STRtoINT(ED_fixoS_L3.Text))
                    OR (STRtoINT(STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1])=STRtoINT(ED_fixoS_L3.Text))
               THEN
               BEGIN
                    STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1]:= 'V';
               END ELSE
               BEGIN
                    STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1]:= 'F';
               END; // IF
          END; // FOR VI_COMBINACOES1
     END; // IF
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


          // -------------------------------
          // -- Combina��es Totais --
          // -------------------------------
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_3_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_LINHA_3_TODOS.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_LINHA_3_TODOS.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_LINHA_3_TODOS.Cells [2, VI_LINHAS2] := STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1];
               STGR_LINHA_3_TODOS.Cells [3, VI_LINHAS2] := STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1];
               //STGR_LINHA_3_TODOS.Cells [4, VI_LINHAS2] := '-'  ;
               STGR_LINHA_3_TODOS.Cells [4, VI_LINHAS2] := STGR_LINHA_3_C2.Cells[1,VI_COMBINACOES1];
               //STGR_LINHA_3_TODOS.Cells [6, VI_LINHAS2] := '-'  ;
               STGR_LINHA_3_TODOS.Cells [5, VI_LINHAS2] := STGR_LINHA_3_C3.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das pr�ximas celulas n�o s�o visiveis, pore�m n�o sa� ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_LINHA_3_TODOS.Cells [9, VI_LINHAS2] := '['+STGR_LINHA_3_C1.Cells[0,VI_COMBINACOES1]+']';
                    STGR_LINHA_3_TODOS.Cells [10, VI_LINHAS2] := STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1];
                    STGR_LINHA_3_TODOS.Cells [11, VI_LINHAS2] := STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES1];
                    STGR_LINHA_3_TODOS.Cells [12, VI_LINHAS2] := STGR_LINHA_3_C2.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_3_TODOS.Cells [13, VI_LINHAS2] := STGR_LINHA_3_C3.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_3_TODOS.Cells [14, VI_LINHAS2] := STGR_LINHA_3_C4.Cells[1,VI_COMBINACOES1];
               VI_LINHAS2 := VI_LINHAS2 +1;
               STGR_LINHA_3_TODOS.RowCount := VI_LINHAS2;
          END; // IF (STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1

     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_TODOS.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_3_TODOS.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_3_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_3_100REP.Repaint;

        // ******************
        // **  LINHA_4 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 5 DO
                    BEGIN
                         STGR_LINHA_4_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_4_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_4_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_4_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_4_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                         STGR_LINHA_4_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_4_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         // ----------------------------
                         // -- FLAG NA COLUNA 2 --
                         // ----------------------------
                         STGR_LINHA_4_C2.Cells [1,VI_LINHAS2]:= 'F';
                         STGR_LINHA_4_C3.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O N�MERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                         IF (POS(STGR_BASE_L4.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_4_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O N�MERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L4.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
                         IF (POS(STGR_BASE_L4.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_4_C3.Cells[1,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_COMBINACOES4,0];
                         END;

                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM N�MEROS SER�O EXIBIDAS, AS COM O FLAG DE F (FALSO) N�O  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_LINHA_4_C2.Cells [1,VI_LINHAS2]='F')
                              OR (STGR_LINHA_4_C3.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // -----------------------------------
                              // -- CAPTURAR OS N�MERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L4.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L4.Cells[VI_COMBINACOES3,0]+ '-' +
                              STGR_BASE_L4.Cells[VI_COMBINACOES4,0];

                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_4_C4.Cells[1,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_4_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_4_C2.RowCount := VI_LINHAS2;
                              STGR_LINHA_4_C3.RowCount := VI_LINHAS2;
                              STGR_LINHA_4_C4.RowCount := VI_LINHAS2;
                         END; // IF
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_4_C1.Repaint;
     STGR_LINHA_4_C2.Repaint;
     STGR_LINHA_4_C3.Repaint;
     STGR_LINHA_4_C4.Repaint;
          // ----------------------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 1 SE NECESS�RIO --
          // ----------------------------------------------------
     IF (CB_FIXO_L4.ItemIndex = 1) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1])=STRtoINT(ED_fixoS_L4.Text))
                    OR (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1])=STRtoINT(ED_fixoS_L4.Text))
               THEN
               BEGIN
                    STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1]:= 'V';
               END ELSE
               BEGIN
                    STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1]:= 'F';
               END; // IF
          END; // FOR VI_COMBINACOES1
     END; // IF
               // -------------------------------
               // --  Removendo os EXCLUIDOS DA COLUNA  --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
     BEGIN
          IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
              (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
              THEN
          BEGIN
              STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
          END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
     END; // FOR VI_COMBINACOES1
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
     BEGIN
          IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
              (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
              THEN
          BEGIN
              STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
          END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
     END; // FOR VI_COMBINACOES1
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
     BEGIN
          IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
              (STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
              THEN
          BEGIN
              STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
          END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
     END; // FOR VI_COMBINACOES1


          // -------------------------------
          // -- Combina��es Totais --
          // -------------------------------
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_4_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_LINHA_4_TODOS.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_LINHA_4_TODOS.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_LINHA_4_TODOS.Cells [2, VI_LINHAS2] := STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1];
               STGR_LINHA_4_TODOS.Cells [3, VI_LINHAS2] := STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1];
               //STGR_LINHA_4_TODOS.Cells [4, VI_LINHAS2] := '-'  ;
               STGR_LINHA_4_TODOS.Cells [4, VI_LINHAS2] := STGR_LINHA_4_C2.Cells[1,VI_COMBINACOES1];
               //STGR_LINHA_4_TODOS.Cells [6, VI_LINHAS2] := '-'  ;
               STGR_LINHA_4_TODOS.Cells [5, VI_LINHAS2] := STGR_LINHA_4_C3.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das pr�ximas celulas n�o s�o visiveis, pore�m n�o sa� ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_LINHA_4_TODOS.Cells [9, VI_LINHAS2] := '['+STGR_LINHA_4_C1.Cells[0,VI_COMBINACOES1]+']';
                    STGR_LINHA_4_TODOS.Cells [10, VI_LINHAS2] := STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1];
                    STGR_LINHA_4_TODOS.Cells [11, VI_LINHAS2] := STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES1];
                    STGR_LINHA_4_TODOS.Cells [12, VI_LINHAS2] := STGR_LINHA_4_C2.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_4_TODOS.Cells [13, VI_LINHAS2] := STGR_LINHA_4_C3.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_4_TODOS.Cells [14, VI_LINHAS2] := STGR_LINHA_4_C4.Cells[1,VI_COMBINACOES1];
               VI_LINHAS2 := VI_LINHAS2 +1;
               STGR_LINHA_4_TODOS.RowCount := VI_LINHAS2;
          END; // IF (STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_TODOS.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_4_TODOS.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_4_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_4_100REP.Repaint;


        // ******************
        // **  LINHA_5 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 5 DO
                    BEGIN
                         STGR_LINHA_5_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_5_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_5_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_5_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L5.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_5_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L5.Cells[VI_COMBINACOES2,0];
                         STGR_LINHA_5_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_5_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         // ----------------------------
                         // -- FLAG NA COLUNA 2 --
                         // ----------------------------
                         STGR_LINHA_5_C2.Cells [1,VI_LINHAS2]:= 'F';
                         STGR_LINHA_5_C3.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O N�MERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L5.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L5.Cells[VI_COMBINACOES2,0];
                         IF (POS(STGR_BASE_L5.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_5_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES3,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O N�MERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L5.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L5.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L5.Cells[VI_COMBINACOES3,0];
                         IF (POS(STGR_BASE_L5.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_5_C3.Cells[1,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES4,0];
                         END;

                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM N�MEROS SER�O EXIBIDAS, AS COM O FLAG DE F (FALSO) N�O  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_LINHA_5_C2.Cells [1,VI_LINHAS2]='F')
                              OR (STGR_LINHA_5_C3.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // -----------------------------------
                              // -- CAPTURAR OS N�MERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L5.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L5.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L5.Cells[VI_COMBINACOES3,0]+ '-' +
                              STGR_BASE_L5.Cells[VI_COMBINACOES4,0];

                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L5.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_5_C4.Cells[1,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_5_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_5_C2.RowCount := VI_LINHAS2;
                              STGR_LINHA_5_C3.RowCount := VI_LINHAS2;
                              STGR_LINHA_5_C4.RowCount := VI_LINHAS2;
                         END; // IF
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_5_C1.Repaint;
     STGR_LINHA_5_C2.Repaint;
     STGR_LINHA_5_C3.Repaint;
     STGR_LINHA_5_C4.Repaint;
          // ----------------------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 1 SE NECESS�RIO --
          // ----------------------------------------------------
     IF (CB_FIXO_L5.ItemIndex = 1) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C1.RowCount-1) DO
          BEGIN
               IF (STRtoINT(STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES1])=STRtoINT(ED_fixoS_L5.Text))
                    OR (STRtoINT(STGR_LINHA_5_C1.Cells[3,VI_COMBINACOES1])=STRtoINT(ED_fixoS_L5.Text))
               THEN
               BEGIN
                    STGR_LINHA_5_C1.Cells [1,VI_COMBINACOES1]:= 'V';
               END ELSE
               BEGIN
                    STGR_LINHA_5_C1.Cells [1,VI_COMBINACOES1]:= 'F';
               END; // IF
          END; // FOR VI_COMBINACOES1
     END; // IF
               // -------------------------------
               // --  Removendo os EXCLUIDOS DA COLUNA  --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C1.RowCount-1) DO
     BEGIN
          IF  (STRtoINT(STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
              (STRtoINT(STGR_LINHA_5_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
              THEN
          BEGIN
              STGR_LINHA_5_C1.Cells [1,VI_COMBINACOES1] := 'F';
          END; // if (STGR_LINHA_5_TODOS.Cells[1,VI_CONTAR]
     END; // FOR VI_COMBINACOES1
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C1.RowCount-1) DO
     BEGIN
          IF  (STRtoINT(STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
              (STRtoINT(STGR_LINHA_5_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
              THEN
          BEGIN
              STGR_LINHA_5_C1.Cells [1,VI_COMBINACOES1] := 'F';
          END; // if (STGR_LINHA_5_TODOS.Cells[1,VI_CONTAR]
     END; // FOR VI_COMBINACOES1
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C1.RowCount-1) DO
     BEGIN
          IF  (STRtoINT(STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
              (STRtoINT(STGR_LINHA_5_C1.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
              THEN
          BEGIN
              STGR_LINHA_5_C1.Cells [1,VI_COMBINACOES1] := 'F';
          END; // if (STGR_LINHA_5_TODOS.Cells[1,VI_CONTAR]
     END; // FOR VI_COMBINACOES1


          // -------------------------------
          // -- Combina��es Totais --
          // -------------------------------
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_5_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_LINHA_5_TODOS.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_LINHA_5_TODOS.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_LINHA_5_TODOS.Cells [2, VI_LINHAS2] := STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES1];
               STGR_LINHA_5_TODOS.Cells [3, VI_LINHAS2] := STGR_LINHA_5_C1.Cells[3,VI_COMBINACOES1];
               //STGR_LINHA_5_TODOS.Cells [4, VI_LINHAS2] := '-'  ;
               STGR_LINHA_5_TODOS.Cells [4, VI_LINHAS2] := STGR_LINHA_5_C2.Cells[1,VI_COMBINACOES1];
               //STGR_LINHA_5_TODOS.Cells [6, VI_LINHAS2] := '-'  ;
               STGR_LINHA_5_TODOS.Cells [5, VI_LINHAS2] := STGR_LINHA_5_C3.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das pr�ximas celulas n�o s�o visiveis, pore�m n�o sa� ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_LINHA_5_TODOS.Cells [9, VI_LINHAS2] := '['+STGR_LINHA_5_C1.Cells[0,VI_COMBINACOES1]+']';
                    STGR_LINHA_5_TODOS.Cells [10, VI_LINHAS2] := STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES1];
                    STGR_LINHA_5_TODOS.Cells [11, VI_LINHAS2] := STGR_LINHA_5_C1.Cells[3,VI_COMBINACOES1];
                    STGR_LINHA_5_TODOS.Cells [12, VI_LINHAS2] := STGR_LINHA_5_C2.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_5_TODOS.Cells [13, VI_LINHAS2] := STGR_LINHA_5_C3.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_5_TODOS.Cells [14, VI_LINHAS2] := STGR_LINHA_5_C4.Cells[1,VI_COMBINACOES1];
               VI_LINHAS2 := VI_LINHAS2 +1;
               STGR_LINHA_5_TODOS.RowCount := VI_LINHAS2;
          END; // IF (STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_TODOS.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_5_TODOS.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_5_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_5_100REP.Repaint;



        // ******************
        // **  Colunas de Flag p/ colunas3xLinhas e p/ coluna4xlinhas
        // ******************
     FOR VI_COMBINACOES1:= 1 TO 10 DO
     BEGIN
          FOR VI_COMBINACOES2 := 1 TO 5 DO
          BEGIN
               STGR_FLAG_COL2.Cells[VI_COMBINACOES1, VI_COMBINACOES2] := '0';
               STGR_FLAG_COL3.Cells[VI_COMBINACOES1, VI_COMBINACOES2] := '0';
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 5 DO
               BEGIN
                    STGR_FLAG_COL2.Cells[VI_CONTAR, VI_COMBINACOES1] := '1';
                    STGR_FLAG_COL2.Cells[VI_CONTAR, VI_COMBINACOES2] := '1';
                    STGR_FLAG_COL2.Cells[VI_CONTAR, VI_COMBINACOES3] := '1';
                    VI_CONTAR := VI_CONTAR +1;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_FLAG_COL2.RowCount:= 6;
     VI_CONTAR := 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
               STGR_FLAG_COL3.Cells[VI_CONTAR, VI_COMBINACOES1] := '1';
               STGR_FLAG_COL3.Cells[VI_CONTAR, VI_COMBINACOES2] := '1';
               VI_CONTAR := VI_CONTAR +1;
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_FLAG_COL3.RowCount:= 6;

        // ******************
        // **  Colunas de Flag p/ Flag das combina��es das coluna 3 x 4
        // ******************
     VI_CONTAR := 1;
     FOR VI_COMBINACOES1:= 1 TO 10 DO
     BEGIN
          FOR VI_COMBINACOES2 := 1 TO 10 DO
          BEGIN
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,0] := 'c'+ STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 0] +'x'+ STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 0];
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,1] := INTtoSTR(2 + STRtoINT(STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 1]) +STRtoINT(STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 1]));
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,2] := INTtoSTR(2 + STRtoINT(STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 2]) +STRtoINT(STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 2]));
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,3] := INTtoSTR(2 + STRtoINT(STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 3]) +STRtoINT(STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 3]));
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,4] := INTtoSTR(2 + STRtoINT(STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 4]) +STRtoINT(STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 4]));
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,5] := INTtoSTR(2 + STRtoINT(STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 5]) +STRtoINT(STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 5]));
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,6] := 'V'   ;
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,8] := STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 0];
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,9] := STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 0];
               VI_CONTAR := VI_CONTAR +1;
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_FLAG_cmbCOL3x4.Repaint;
     // -------------------------------
     // --  Removendo os repetidos   --
     // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_FLAG_cmbCOL3x4.ColCount-1) DO
     BEGIN
          IF (STGR_FLAG_cmbCOL3x4.Cells [VI_COMBINACOES1,6] = 'F') THEN
               CONTINUE;
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_FLAG_cmbCOL3x4.ColCount-1) DO
          BEGIN
                IF  (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,1] = STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES2,1]) AND
                    (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,2] = STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES2,2])
               THEN
               BEGIN
                    IF  (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,3] = STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES2,3]) AND
                        (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,4] = STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES2,4]) AND
                        (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,5] = STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES2,5])
                        THEN
                    BEGIN
                        STGR_FLAG_cmbCOL3x4.Cells [VI_COMBINACOES2,6] := 'F';
                    END; // if (STGR_FLAG_cmbCOL3x4
                END;
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     // -------------------------------
     // --  Contar Quantidade de soma que deram 4, 3 e 2 e limitar nas combina��es de [1] de 2, [3] de 3 e [1] de 4
     // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO 100 DO
     BEGIN
          VI_QTDde2 := 0;
          VI_QTDde3 := 0;
          VI_QTDde4 := 0;
          FOR VI_COMBINACOES2 := 1 TO 5 DO
          BEGIN
               IF (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,VI_COMBINACOES2] = '2') THEN  VI_QTDde2 := VI_QTDde2 +1;
               IF (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,VI_COMBINACOES2] = '3') THEN  VI_QTDde3 := VI_QTDde3 +1;
               IF (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,VI_COMBINACOES2] = '4') THEN  VI_QTDde4 := VI_QTDde4 +1;
          END; //FOR
          IF  (VI_QTDde2=2) AND (VI_QTDde3=1) AND(VI_QTDde4=2)
          THEN
          BEGIN
               STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,7] := 'V'   ;
          END ELSE
          BEGIN
               STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,7] := 'F'   ;
          END; // IF
     END;//FOR
     // --  Defininfo o Flag dos v�lidos
     FOR VI_COMBINACOES1:= 1 TO 100 DO
     BEGIN
          IF (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,6] = 'V') AND (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,7] = 'V')
          THEN
               STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,10] := 'V'
          ELSE
               STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,10] := 'F'   ;
     end; // for

     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_FLAG_cmbCOL3x4.ColCount-1) DO
     BEGIN
          IF (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,10] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_QTD_cmbCOL3x4.Caption := INTtoSTR(VI_CONTAR);
     LA_QTD_cmbCOL3x4.Repaint;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_12_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_12_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_12_DADOS_TEMP')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT FIRST 10 * FROM COMBINACOES_15 ORDER BY DADOS; ')  ;
            SELF.IBQ_COMBINACOES.Open;     
     SHOWMESSAGE('OK');
end;



procedure T_F_SIM_01_FILTRO_12.BBT_GERAR_SIMULACAOClick(Sender: TObject);
var
     VI_LINHAS1, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR_CELULAS, VI_CONTASEL1, VI_CONTASEL2, VI_CONTASEL3, VI_CONTASEL4, VI_CONTASEL5, VI_CONTAR_COMB1: integer;
     VsI_COMBINACOES3, VsI_COMBINACOES4, VsI_COMBINACOES5, VsI_COMBINACOES6: SMALLINT;
     VI_SOMA1, VI_SOMA2,VI_SOMA3, VI_SOMA4: SMALLINT;
     VI_FLAG_SOMATORIA1, VI_FLAG_SOMATORIA2, VI_FLAG_SOMATORIA3, VI_FLAG_SOMATORIA4: SMALLINT;
     VsI_COMb3_1, VsI_COMB3_2, VsI_CONTADOR_COMB, VsI_CONTAR_O_NUMERO3: SMALLINT;

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
        // ----> MONTADO E VERIFICANDO TODOS OS 23 D�GITOS
        FOR VI_CONTAR :=4 TO 18 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 4;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB15.Cells [VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15


    PROCEDURE PR_ORDENAR_PRE_REMOCAO (OUT VI_LINHAS9: INTEGER);
    var
        VI_CONTAR: INTEGER;
    begin
        // ****************************************
    	// ** VERIFICA SE H� REPETIDOS PARA TR�S **
	// ****************************************
        IF (STGR_COMB15.RowCount) >=115 THEN
        BEGIN
            FOR VI_CONTAR :=  (STGR_COMB15.RowCount-114) TO (STGR_COMB15.RowCount-4) DO
            BEGIN
                IF  (STGR_COMB15.Cells[4,VI_CONTAR] = STGR_COMB15.Cells[4,VI_LINHAS9]) AND
                    (STGR_COMB15.Cells[5,VI_CONTAR] = STGR_COMB15.Cells[5,VI_LINHAS9])
                    THEN
                BEGIN
                    IF  (STGR_COMB15.Cells[6,VI_CONTAR] = STGR_COMB15.Cells[6,VI_LINHAS9]) AND
                        (STGR_COMB15.Cells[7,VI_CONTAR] = STGR_COMB15.Cells[7,VI_LINHAS9]) AND
                        (STGR_COMB15.Cells[8,VI_CONTAR] = STGR_COMB15.Cells[8,VI_LINHAS9]) AND
                        (STGR_COMB15.Cells[9,VI_CONTAR] = STGR_COMB15.Cells[9,VI_LINHAS9]) AND
                        (STGR_COMB15.Cells[10,VI_CONTAR] = STGR_COMB15.Cells[10,VI_LINHAS9]) AND
                        (STGR_COMB15.Cells[11,VI_CONTAR] = STGR_COMB15.Cells[11,VI_LINHAS9]) AND
                        (STGR_COMB15.Cells[12,VI_CONTAR] = STGR_COMB15.Cells[12,VI_LINHAS9]) AND
                        (STGR_COMB15.Cells[13,VI_CONTAR] = STGR_COMB15.Cells[13,VI_LINHAS9]) AND
                        (STGR_COMB15.Cells[14,VI_CONTAR] = STGR_COMB15.Cells[14,VI_LINHAS9]) AND
                        (STGR_COMB15.Cells[15,VI_CONTAR] = STGR_COMB15.Cells[15,VI_LINHAS9]) AND
                        (STGR_COMB15.Cells[16,VI_CONTAR] = STGR_COMB15.Cells[16,VI_LINHAS9]) AND
                        (STGR_COMB15.Cells[17,VI_CONTAR] = STGR_COMB15.Cells[17,VI_LINHAS9]) and
                        (STGR_COMB15.Cells[18,VI_CONTAR] = STGR_COMB15.Cells[18,VI_LINHAS9])
                        THEN
                    BEGIN
                         VI_LINHAS9 := VI_LINHAS9 - 1;
                         exit;
                    END; // if (STGR_COMB15.Cells[1,VI_CONTAR]
                END; // if (STGR_COMB15.Cells[1,VI_CONTAR]
            END; // FOR VI_CONTAR
        END;// IF (VI_LINHAS2)
    end; //  PROCEDURE ORDENAR_PRE_REMOCAO



    PROCEDURE PR_GRAVA_DADOS1 (VI_LINHAS1:INTEGER);
    VAR
        VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DADOS1, VC_DADOS2, VC_DADOS3, VC_DADOS4, VC_DADOS5, VC_DADOS6, VC_COMBINACOES : STRING;
    BEGIN
          // ************************
          // **   BANCO DE DADOS   **
          // ************************
          VC_COMBINACOES :='';
          FOR VI_CNTCELULAS := 1 TO 15 DO
          BEGIN
               VC_COMBINACOES := VC_COMBINACOES + STGR_COMB15.Cells[VI_CNTCELULAS,VI_LINHAS1] +' ';
          END; // FOR VI_CNTCELULAS
          SELF.IBQ_COMBINACOES.SQL.Clear;
          VC_QUERY  := 'INSERT INTO FILTRO_12_DADOS (DADOS) VALUES(' +#39+ VC_COMBINACOES + #39 +');';
          SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
          SELF.IBQ_COMBINACOES.ExecSQL;
          VI_LINHAS2:=2;
          STGR_COMB15.RowCount := VI_LINHAS2;
          SELF.IBQ_COMBINACOES.SQL.Clear;
          SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
          SELF.IBQ_COMBINACOES.ExecSQL;
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS


    PROCEDURE PR_GRAVAR_DADOS (VC_BEGIN_END: STRING; OUT VI_LINHAS2:INTEGER; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DADOS1, VC_DADOS2, VC_DADOS3, VC_DADOS4, VC_DADOS5, VC_COMBINACOES : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
            VC_DADOS1 := RIGHTSTR ('0'+STGR_BASE_L1.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L1.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[5,0],2);
            VC_DADOS2 := RIGHTSTR ('0'+STGR_BASE_L2.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L2.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[5,0],2);
            VC_DADOS3 := RIGHTSTR ('0'+STGR_BASE_L3.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L3.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[5,0],2);
            VC_DADOS4 := RIGHTSTR ('0'+STGR_BASE_L4.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L4.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[5,0],2);
            VC_DADOS5 := RIGHTSTR ('0'+STGR_BASE_L5.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L5.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L5.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L5.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L5.Cells[5,0],2);
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO FILTRO_12_DEFINICAO (LINHA_1, LINHA_2, LINHA_3, LINHA_4, LINHA_5, FIXOS_L1, FIXOS_L2, FIXOS_L3, FIXOS_L4, FIXOS_L5, FLAG_FIXO_L2, FLAG_FIXO_L3, FLAG_FIXO_L4, FLAG_FIXO_L5, SOMA_COL_1_INI, SOMA_COL_1_FINAL, SOMA_COL_2_INI, ';
            VC_QUERY  := VC_QUERY +' SOMA_COL_2_FINAL, SOMA_COL_1E2_INI, SOMA_COL_3_INI, SOMA_COL_3_FINAL, SOMA_COL_4_INI, SOMA_COL_4_FINAL, SOMA_COL_3E4_INI, EXC_1, EXC_2, EXC_3, FIXOS_1, FIXOS_2, FIXOS_3, FIXOS_4, CONTADOR_C1, TOTAL_CONTADOR_C1, FLAG_FIXO_L1, ';
            VC_QUERY  := VC_QUERY +' SOMA_COL_1E2_FINAL, SOMA_COL_3E4_FINAL, DATA_DEFINICAO, HORA_DEFINICAO, FIXOS_5) VALUES('+#39+ VC_DADOS1 + #39 +','  +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 + #39 +','  +#39+ VC_DADOS4 + #39 +','  +#39+ VC_DADOS5 ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_fixoS_L1.Text        + #39 +','+#39+ ED_fixoS_L2.Text        + #39 +','+#39+ ED_fixoS_L3.Text    + #39 +','+#39+ ED_fixoS_L4.Text       + #39 +','+#39+ ED_fixoS_L5.Text        + #39 +','+#39+ INTtoSTR(CB_FIXO_L2.ItemIndex)+ #39 +','+#39+ INTtoSTR(CB_FIXO_L3.ItemIndex)   + #39 +','+#39+ INTtoSTR(CB_FIXO_L4.ItemIndex)    + #39 +','+#39+ INTtoSTR(CB_FIXO_L5.ItemIndex);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMAS_C1_INI.Text    + #39 +','+#39+ ED_SOMAS_C1_FINAL.Text  + #39 +','+#39+ ED_SOMAS_C2_INI.Text+ #39 +','+#39+ ED_SOMAS_C2_FINAL.Text + #39 +','+#39+ ED_SOMAS_C1x2_INI.Text  + #39 +','+#39+ ED_SOMAS_C3_INI.Text         + #39 +','+#39+  ED_SOMAS_C3_FINAL.Text           + #39 +','+#39+ ED_SOMAS_C4_INI.Text              + #39 +','+#39+ ED_SOMAS_C4_FINAL.Text  + #39 +','+#39+ ED_SOMAS_C3x4_INI.Text ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01.Text          + #39 +','+#39+ ED_EXC_02.Text          + #39 +','+#39+ ED_EXC_03.Text      + #39 +','+#39+ ED_FIXOS_01.Text       + #39 +','+#39+ ED_FIXOS_02.Text        + #39 +','+#39+ ED_FIXOS_03.Text             + #39 +','+#39+  ED_FIXOS_04.Text                 + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ INTtoSTR(CB_FIXO_L1.ItemIndex)    + #39 +','+#39+ ED_SOMAS_C1x2_FINAL.Text     + #39 +','+#39+ ED_SOMAS_C3x4_FINAL.Text     + #39 +',' +#39+STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[])+ #39 +','+#39+FORMATDATETIME('h:n:s',time())+ #39 +','+#39+  ED_FIXOS_05.Text      +#39+');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;                
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB15.RowCount-1;
        IF ((VI_LINHAS2/2997) = (VI_LINHAS2 DIV 2997))
            or ((VI_LINHAS2/2998) = (VI_LINHAS2 DIV 2998))
            or ((VI_LINHAS2/2999) = (VI_LINHAS2 DIV 2999))
            OR (VC_BEGIN_END = 'FIM') THEN
        BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMB15.Repaint;
            Self.Repaint;
            Self.WindowState := wsMinimized;
            Self.WindowState :=  wsNormal;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COMB15.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES :='';
                FOR VI_CNTCELULAS := 4 TO 18 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_COMB15.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
                END; // FOR VI_CNTCELULAS
                SELF.IBQ_COMBINACOES.SQL.Clear;
                VC_QUERY  := 'INSERT INTO FILTRO_12_DADOS_TEMP (DADOS) VALUES(' +#39+ VC_COMBINACOES + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_12_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            VI_LINHAS2:=1;
            STGR_COMB15.RowCount := VI_LINHAS2;
             IF ((VI_LINHAS2/5996) = (VI_LINHAS2 DIV 5996))
                 or ((VI_LINHAS2/5997) = (VI_LINHAS2 DIV 5997))
                 or ((VI_LINHAS2/5998) = (VI_LINHAS2 DIV 5998))
                 OR (VC_BEGIN_END = 'FIM') THEN
             BEGIN
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_12_100repet01' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_12_DADOS_TEMP')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
             end;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS     

BEGIN
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR VI_CONTASEL1 := 1 TO 15 DO
     BEGIN
        STGR_COMB15.Cells [VI_CONTASEL1+3,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB15.Cells [VI_CONTASEL1+3,1] := '00';
     END;
     BBT_ORDENAR.Visible := TRUE;
     STGR_COMB15.RowCount := 2;
     STGR_COMB15.Repaint;
     PGBR_GERARCOMB3.Position :=0 ;
     PGBR_GERARCOMB3.Repaint;
     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     PGBR_REMREPET.Position := 0;
     PGBR_REMREPET.Repaint;
     //LA_PERC_COMB2.Caption := '00%      ';
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_TOTAL_100REPET.Caption := '000000';
     //LA_PERC_100REPET.Caption := '00%      ';
     //LA_PERC_100REPET.Repaint;
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     //LA_PERC_COMB2.Repaint;
     LA_QTD_COMB.Repaint;
     //BBT_SALVAR_SIMULACAO.Enabled:= false;
     IF not(CB_FORMA_EXECUCAO.ItemIndex = 1)
          THEN BBT_ORDENAR.Visible := false;
     BBT_ORDENAR.Repaint;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;     
     IF (RB_GERAR_FILTRAR.Checked) THEN
     BEGIN
          IF ( _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount <5 ) THEN
          begin
               SHOWMESSAGE('N�O EXISTE NENHUMA SIMULA��O GERADA E/OU CARREGADA. IMPOSS�VEL APLICAR O FILTRO. VOLTE E ESCOLHA, GERAR E SAIR');
               PA_GERAR.Enabled := TRUE;
               PA_GERAR.Left := 450;
               EXIT;
          END;
     END;    
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINA��ES   ||||
     // ||||=============================||||
     // =====================================
     VI_CONTAR_COMB1 := 1;
     VI_LINHAS2 := 1;
     VI_LINHAS1 := VI_LINHAS2;
     IF (CB_FORMA_EXECUCAO.ItemIndex = 0) THEN PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_LINHA_1_TODOS.RowCount-1));
    // =================== AQUI
     FOR VI_COMBINACOES1 := 1{15} TO {6}{16}TRUNC((STGR_LINHA_1_TODOS.RowCount-1)/1) DO
     BEGIN
          VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1 ;
          FOR VI_COMBINACOES2 := 1{6} TO {7} (STGR_LINHA_2_TODOS.RowCount-1) DO
          BEGIN
               FOR VsI_COMBINACOES3 := 1{10} TO {11} (STGR_LINHA_3_TODOS.RowCount-1) DO
               BEGIN
                    if (VsI_COMBINACOES3 mod 6) = 0 then
                    begin
                        PGBR_GERARCOMB3.Position := TRUNC(VsI_COMBINACOES3/(STGR_LINHA_3_TODOS.RowCount-1)*100);
                        PGBR_GERARCOMB3.Repaint;
                    end; // if
                    FOR VsI_COMBINACOES4 := 1{19} TO {19} (STGR_LINHA_4_TODOS.RowCount-1) DO
                    BEGIN
                         // ---------------------------------------
                         // --  MONTANDO O RESULTADO POR COLUNA  --
                         // ---------------------------------------
                         FOR VsI_COMBINACOES5 := 1{27} TO {27} (STGR_LINHA_5_TODOS.RowCount-1) DO
                         BEGIN
                              // ---------------------------------------
                              // --  COLUNA 1 --
                              // ---------------------------------------
                              VI_FLAG_SOMATORIA1:=0;
                             VI_SOMA1 := STRtoINT(STGR_LINHA_1_TODOS.Cells[2, VI_COMBINACOES1])
                              + STRtoINT(STGR_LINHA_1_TODOS.Cells[3, VI_COMBINACOES1])
                              + STRtoINT(STGR_LINHA_2_TODOS.Cells[2, VI_COMBINACOES2])
                              + STRtoINT(STGR_LINHA_2_TODOS.Cells[3, VI_COMBINACOES2])
                              + STRtoINT(STGR_LINHA_3_TODOS.Cells[2, VsI_COMBINACOES3])
                              + STRtoINT(STGR_LINHA_3_TODOS.Cells[3, VsI_COMBINACOES3])
                              + STRtoINT(STGR_LINHA_4_TODOS.Cells[2, VsI_COMBINACOES4])
                              + STRtoINT(STGR_LINHA_4_TODOS.Cells[3, VsI_COMBINACOES4])
                              + STRtoINT(STGR_LINHA_5_TODOS.Cells[2, VsI_COMBINACOES5])
                              + STRtoINT(STGR_LINHA_5_TODOS.Cells[3, VsI_COMBINACOES5]);
                              IF (VI_SOMA1 >= (STRtoINT(ED_SOMAS_C1_INI.Text))) AND (VI_SOMA1 <= (STRtoINT(ED_SOMAS_C1_FINAL.Text))) THEN
                              //IF (VI_SOMA1 = (STRtoINT(ED_SOMAS_C1_INI.Text))) THEN
                              BEGIN
                                   VI_FLAG_SOMATORIA1:=1 ;
                              END ELSE BEGIN
                                   CONTINUE;
                              END; // IF
                              // ---------------------------------------
                              // --  COLUNA 2 --
                              // ---------------------------------------
                              VI_FLAG_SOMATORIA2:=0;
                             VI_SOMA2 := STRtoINT(STGR_LINHA_1_TODOS.Cells[4, VI_COMBINACOES1] )
                              + STRtoINT(STGR_LINHA_2_TODOS.Cells[4, VI_COMBINACOES2])
                              + STRtoINT(STGR_LINHA_3_TODOS.Cells[4, VsI_COMBINACOES3])
                              + STRtoINT(STGR_LINHA_4_TODOS.Cells[4, VsI_COMBINACOES4])
                              + STRtoINT(STGR_LINHA_5_TODOS.Cells[4, VsI_COMBINACOES5]);
                              IF (VI_SOMA2 >= (STRtoINT(ED_SOMAS_C2_INI.Text))) AND (VI_SOMA2 <= (STRtoINT(ED_SOMAS_C2_FINAL.Text))) THEN
                             // IF (VI_SOMA2 = (STRtoINT(ED_SOMAS_C2_INI.Text))) THEN
                              BEGIN
                                   VI_FLAG_SOMATORIA2:=1 ;
                              END ELSE BEGIN
                                   FOR VI_CONTASEL1:=1 TO 2900 DO
                                   BEGIN END;
                                   CONTINUE;
                              END; // IF
                              IF ((VI_SOMA1 + VI_SOMA2) >= (STRtoINT(ED_SOMAS_C1x2_INI.Text))) AND ((VI_SOMA1 + VI_SOMA2) <= (STRtoINT(ED_SOMAS_C1x2_FINAL.Text))) THEN
                              BEGIN
                                   FOR VI_CONTASEL1:=1 TO 1900 DO
                                   BEGIN END;
                              END ELSE
                                   CONTINUE;

                              // ---------------------------------------
                              // --  COLUNA 3 --
                              // ---------------------------------------
                              VI_FLAG_SOMATORIA3:=0;
                             VI_SOMA3 := STRtoINT(STGR_LINHA_1_TODOS.Cells[5, VI_COMBINACOES1] )
                              + STRtoINT(STGR_LINHA_2_TODOS.Cells [5, VI_COMBINACOES2])
                              + STRtoINT(STGR_LINHA_3_TODOS.Cells[5, VsI_COMBINACOES3])
                              + STRtoINT(STGR_LINHA_4_TODOS.Cells[5, VsI_COMBINACOES4])
                              + STRtoINT(STGR_LINHA_5_TODOS.Cells[5, VsI_COMBINACOES5]);
                              IF (VI_SOMA3 >= (STRtoINT(ED_SOMAS_C3_INI.Text))) AND (VI_SOMA3 <= (STRtoINT(ED_SOMAS_C3_FINAL.Text))) THEN
                              //IF (VI_SOMA3 = (STRtoINT(ED_SOMAS_C3_INI.Text))) THEN
                              BEGIN
                                   VI_FLAG_SOMATORIA3:=1 ;
                              END ELSE BEGIN
                                   CONTINUE;
                              END; // IF
                              // ---------------------------------------
                              // --  COLUNA 4 --
                              // ---------------------------------------
                              VI_FLAG_SOMATORIA4:=0;
                             VI_SOMA4 := STRtoINT(STGR_LINHA_1_TODOS.Cells[14, VI_COMBINACOES1] )
                              + STRtoINT(STGR_LINHA_2_TODOS.Cells [14, VI_COMBINACOES2])
                              + STRtoINT(STGR_LINHA_3_TODOS.Cells[14, VsI_COMBINACOES3])
                              + STRtoINT(STGR_LINHA_4_TODOS.Cells[14, VsI_COMBINACOES4])
                              + STRtoINT(STGR_LINHA_5_TODOS.Cells[14, VsI_COMBINACOES5]) ;
                              IF (VI_SOMA4 >= (STRtoINT(ED_SOMAS_C4_INI.Text))) AND (VI_SOMA4 <= (STRtoINT(ED_SOMAS_C4_FINAL.Text))) THEN
                             // IF (VI_SOMA4 = (STRtoINT(ED_SOMAS_C4_INI.Text))) THEN
                              BEGIN
                                   VI_FLAG_SOMATORIA4:=1 ;
                              END ELSE BEGIN
                                   FOR VI_CONTASEL1:=1 TO 900 DO
                                   BEGIN END;
                                   CONTINUE;
                              END; // IF
                              IF ((VI_SOMA3 + VI_SOMA4) >= (STRtoINT(ED_SOMAS_C3x4_INI.Text))) AND ((VI_SOMA3 + VI_SOMA4) <= (STRtoINT(ED_SOMAS_C3x4_FINAL.Text))) THEN
                              BEGIN
                                   FOR VI_CONTASEL1:=1 TO 1900 DO
                                   BEGIN END;
                              END ELSE
                                   CONTINUE;


                                   // ---------------------------------------
                                   // --  MONTAGEM DAS COLUNAS ENCERRADAS  --
                                   // ---------------------------------------
                                   IF (VI_FLAG_SOMATORIA1=1) THEN
                                   BEGIN
                                        FOR VsI_COMBINACOES6 :=1 TO 100{(STGR_FLAG_cmbCOL3x4.ColCount-1)} DO
                                        BEGIN
                                             IF (STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,10] = 'V') THEN
                                             BEGIN
                                                  FOR VsI_CONTADOR_COMB := 1 TO 2 DO
                                                  BEGIN
                                                       CASE (VsI_CONTADOR_COMB) OF
                                                            1:
                                                            BEGIN
                                                                 VsI_COMb3_1 := 0;
                                                                 VsI_COMB3_2 := 1;
                                                            END;
                                                            2:
                                                            BEGIN
                                                                 VsI_COMb3_1 := 1;
                                                                 VsI_COMB3_2 := 0;
                                                            END;
                                                       END; // CASE
                                                       STGR_COMB15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                                       STGR_COMB15.Cells[1,VI_LINHAS2] := 'V';
                                                       STGR_COMB15.Cells[2,VI_LINHAS2] := 'F';
                                                       STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,1];
                                                       STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_COMB15.Cells[3,VI_LINHAS2]+ STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,2];
                                                       STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_COMB15.Cells[3,VI_LINHAS2]+ STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,3];
                                                       STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_COMB15.Cells[3,VI_LINHAS2]+ STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,4];
                                                       STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_COMB15.Cells[3,VI_LINHAS2]+ STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,5];
                                                       VI_CONTAR_CELULAS :=4;
                                                       // ---------------------------------------
                                                       // ---------------------------------------
                                                       // --  L�Gica pesada.
                                                       // - Existem apenas 2 possibilidades reais, por isso o contador VsI_CONTADOR_COMB
                                                       // - VsI_CONTAR_O_NUMERO3 conta a ocorrencia do numero 3 e se for 1
                                                       // -  adiciona VsI_COMb3_1,  2 VsI_COMb3_2 que s�o definidas de acordo com as 2 possiblidades reais
                                                       // - Caso contr�rio, � normal
                                                       // ---------------------------------------
                                                       // ---------------------------------------
                                                       FOR VI_CONTASEL1:=2 TO STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,1])+1 DO
                                                       BEGIN
                                                                // IF VI_LINHAS2 =9 THEN SHOWMESSAGE('');
                                                                 VsI_CONTAR_O_NUMERO3 := 1;

                                                                 IF (STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,1])= 3) AND (VI_CONTASEL1=4) AND (VsI_CONTAR_O_NUMERO3 = 1) THEN
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_1_TODOS.Cells[VI_CONTASEL1+VsI_COMb3_1, VI_COMBINACOES1] ;
                                                                      //VsI_CONTAR_O_NUMERO3 := VsI_CONTAR_O_NUMERO3+1;
                                                                 END ELSE
                                                                 IF (STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,1])= 3) AND (VI_CONTASEL1=4) AND (VsI_CONTAR_O_NUMERO3 = 2) THEN
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_1_TODOS.Cells[VI_CONTASEL1+VsI_COMb3_2, VI_COMBINACOES1] ;
                                                                      //VsI_CONTAR_O_NUMERO3 := VsI_CONTAR_O_NUMERO3+1;
                                                                 END ELSE BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_1_TODOS.Cells[VI_CONTASEL1, VI_COMBINACOES1] ;
                                                                 END ;


                                                                 IF (STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,1])= 3) THEN
                                                                     VsI_CONTAR_O_NUMERO3 := VsI_CONTAR_O_NUMERO3+1;
                                                                 VI_CONTAR_CELULAS := VI_CONTAR_CELULAS +1;

                                                       END ; // FOR
                                                       FOR VI_CONTASEL2:=2 TO STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,2])+1 DO
                                                       BEGIN
                                                                 IF (STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,2])= 3) AND (VI_CONTASEL2=4) AND (VsI_CONTAR_O_NUMERO3 = 1) THEN
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_2_TODOS.Cells[VI_CONTASEL2+VsI_COMb3_1, VI_COMBINACOES2] ;
                                                                      VsI_CONTAR_O_NUMERO3 := VsI_CONTAR_O_NUMERO3+1;
                                                                 END ELSE
                                                                 IF (STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,2])= 3) AND (VI_CONTASEL2=4) AND (VsI_CONTAR_O_NUMERO3 = 2) THEN
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_2_TODOS.Cells[VI_CONTASEL2+VsI_COMb3_2, VI_COMBINACOES2] ;
                                                                      VsI_CONTAR_O_NUMERO3 := VsI_CONTAR_O_NUMERO3+1;
                                                                 END ELSE BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_2_TODOS.Cells[VI_CONTASEL2, VI_COMBINACOES2] ;                                                                      
                                                                 END; //IF
                                                                 VI_CONTAR_CELULAS := VI_CONTAR_CELULAS +1;
                                                       END  ;
                                                       FOR VI_CONTASEL3:=2 TO STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,3])+1 DO
                                                       BEGIN
                                                                 IF (STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,3])= 3)  AND (VI_CONTASEL3=4) AND (VsI_CONTAR_O_NUMERO3 = 1) THEN
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_3_TODOS.Cells[VI_CONTASEL3+VsI_COMb3_1, VsI_COMBINACOES3] ;
                                                                      VsI_CONTAR_O_NUMERO3 := VsI_CONTAR_O_NUMERO3+1;
                                                                 END ELSE
                                                                 IF (STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,3])= 3)  AND (VI_CONTASEL3=4) AND (VsI_CONTAR_O_NUMERO3 = 2) THEN
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_3_TODOS.Cells[VI_CONTASEL3+VsI_COMb3_2, VsI_COMBINACOES3] ;
                                                                      VsI_CONTAR_O_NUMERO3 := VsI_CONTAR_O_NUMERO3+1;
                                                                 END ELSE
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_3_TODOS.Cells[VI_CONTASEL3, VsI_COMBINACOES3] ;                                                                      
                                                                 end; // IF
                                                                 VI_CONTAR_CELULAS := VI_CONTAR_CELULAS +1;
                                                       END  ;
                                                       FOR VI_CONTASEL4:=2 TO STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,4])+1 DO
                                                       BEGIN
                                                                 IF (STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,4])= 3)  AND (VI_CONTASEL4=4) AND (VsI_CONTAR_O_NUMERO3 = 1) THEN
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_4_TODOS.Cells[VI_CONTASEL4+VsI_COMb3_1, VsI_COMBINACOES4] ;
                                                                      VsI_CONTAR_O_NUMERO3 := VsI_CONTAR_O_NUMERO3+1;
                                                                 END ELSE
                                                                 IF (STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,4])= 3)  AND (VI_CONTASEL4=4) AND (VsI_CONTAR_O_NUMERO3 = 2) THEN
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_4_TODOS.Cells[VI_CONTASEL4+VsI_COMb3_2, VsI_COMBINACOES4] ;
                                                                      VsI_CONTAR_O_NUMERO3 := VsI_CONTAR_O_NUMERO3+1;
                                                                 END ELSE
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_4_TODOS.Cells[VI_CONTASEL4, VsI_COMBINACOES4] ;
                                                                 END; // IF
                                                                 VI_CONTAR_CELULAS := VI_CONTAR_CELULAS +1;
                                                       END  ; // FOR
                                                       FOR VI_CONTASEL5:=2 TO STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,5])+1 DO
                                                       BEGIN
                                                                 IF (STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,5])= 3)  AND (VI_CONTASEL5=4) AND (VsI_CONTAR_O_NUMERO3 = 1) THEN
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_5_TODOS.Cells[VI_CONTASEL5+VsI_COMb3_1, VsI_COMBINACOES5] ;
                                                                      VsI_CONTAR_O_NUMERO3 := VsI_CONTAR_O_NUMERO3+1;
                                                                 END ELSE
                                                                 IF (STRtoINT(STGR_FLAG_cmbCOL3x4.Cells[VsI_COMBINACOES6,5])= 3)  AND (VI_CONTASEL5=4) AND (VsI_CONTAR_O_NUMERO3 = 2) THEN
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_5_TODOS.Cells[VI_CONTASEL5+VsI_COMb3_2, VsI_COMBINACOES5] ;
                                                                      VsI_CONTAR_O_NUMERO3 := VsI_CONTAR_O_NUMERO3+1;
                                                                 END ELSE
                                                                 BEGIN
                                                                      STGR_COMB15.Cells[VI_CONTAR_CELULAS,VI_LINHAS2] := STGR_LINHA_5_TODOS.Cells[VI_CONTASEL5, VsI_COMBINACOES5] ;                                                                      
                                                                 END; // IF
                                                            VI_CONTAR_CELULAS := VI_CONTAR_CELULAS +1;
                                                       END  ; // FOR


                                                       if NOT(
                                                           (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[18,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                                (STRtoINT(STGR_COMB15.Cells[18,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[4,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[5,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[6,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[7,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[8,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[9,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[10,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[11,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[12,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[13,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text)) OR
                                                           (STRtoINT(STGR_COMB15.Cells[18,VI_LINHAS2]) = STRtoINT(ED_EXC_03.Text))
                                                            )
                                                            THEN
                                                                 if (STRtoINT(ED_fixoS_01.Text)=0) OR
                                                                     (
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
                                                                     (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                                                                     (STRtoINT(STGR_COMB15.Cells[18,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                                                                     ) AND
                                                                          (
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
                                                                          (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                                                                          (STRtoINT(STGR_COMB15.Cells[18,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                                                                          ) AND
                                                                      (
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
                                                                      (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                                                                      (STRtoINT(STGR_COMB15.Cells[18,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                                                                      ) AND
                                                                          (
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
                                                                          (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                                                                          (STRtoINT(STGR_COMB15.Cells[18,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                                                                          ) AND
                                                                               (
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
                                                                               (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                                                               (STRtoINT(STGR_COMB15.Cells[18,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text))
                                                                               )
                                                                           THEN
                                                                           BEGIN
                                                                                STGR_COMB15.Cells[19,VI_LINHAS2] := '-----'     ;
                                                                                STGR_COMB15.Cells[20,VI_LINHAS2] := 'C-1'   ;
                                                                                STGR_COMB15.Cells[21,VI_LINHAS2] := STGR_LINHA_1_TODOS.Cells[2, VI_COMBINACOES1] ;
                                                                                STGR_COMB15.Cells[22,VI_LINHAS2] := STGR_LINHA_1_TODOS.Cells[3, VI_COMBINACOES1] ;
                                                                                STGR_COMB15.Cells[23,VI_LINHAS2] := STGR_LINHA_2_TODOS.Cells[2, VI_COMBINACOES2]  ;
                                                                                STGR_COMB15.Cells[24,VI_LINHAS2] := STGR_LINHA_2_TODOS.Cells[3, VI_COMBINACOES2]  ;
                                                                                STGR_COMB15.Cells[25,VI_LINHAS2] := STGR_LINHA_3_TODOS.Cells[2, VsI_COMBINACOES3] ;
                                                                                STGR_COMB15.Cells[26,VI_LINHAS2] := STGR_LINHA_3_TODOS.Cells[3, VsI_COMBINACOES3] ;
                                                                                STGR_COMB15.Cells[27,VI_LINHAS2] := STGR_LINHA_4_TODOS.Cells[2, VsI_COMBINACOES4] ;
                                                                                STGR_COMB15.Cells[28,VI_LINHAS2] := STGR_LINHA_4_TODOS.Cells[3, VsI_COMBINACOES4] ;
                                                                                STGR_COMB15.Cells[29,VI_LINHAS2] := STGR_LINHA_5_TODOS.Cells[2, VsI_COMBINACOES5] ;
                                                                                STGR_COMB15.Cells[30,VI_LINHAS2] := STGR_LINHA_5_TODOS.Cells[3, VsI_COMBINACOES5] ;
                                                                                STGR_COMB15.Cells[31,VI_LINHAS2] := INTtoSTR(VI_SOMA1);
                                                                                STGR_COMB15.Cells[32,VI_LINHAS2] := '-----'     ;
                                                                                STGR_COMB15.Cells[33,VI_LINHAS2] := 'C-2'   ;
                                                                                STGR_COMB15.Cells[34,VI_LINHAS2] := STGR_LINHA_1_TODOS.Cells[4, VI_COMBINACOES1] ;
                                                                                STGR_COMB15.Cells[35,VI_LINHAS2] := STGR_LINHA_2_TODOS.Cells[4, VI_COMBINACOES2] ;
                                                                                STGR_COMB15.Cells[36,VI_LINHAS2] := STGR_LINHA_3_TODOS.Cells[4, VsI_COMBINACOES3] ;
                                                                                STGR_COMB15.Cells[37,VI_LINHAS2] := STGR_LINHA_4_TODOS.Cells[4, VsI_COMBINACOES4] ;
                                                                                STGR_COMB15.Cells[38,VI_LINHAS2] := STGR_LINHA_5_TODOS.Cells[4, VsI_COMBINACOES5] ;
                                                                                STGR_COMB15.Cells[39,VI_LINHAS2] := INTtoSTR(VI_SOMA2);
                                                                                STGR_COMB15.Cells[40,VI_LINHAS2] := '-----'     ;
                                                                                STGR_COMB15.Cells[41,VI_LINHAS2] := 'C-3'   ;
                                                                                STGR_COMB15.Cells[42,VI_LINHAS2] := STGR_LINHA_1_TODOS.Cells[5, VI_COMBINACOES1] ;
                                                                                STGR_COMB15.Cells[43,VI_LINHAS2] := STGR_LINHA_2_TODOS.Cells[5, VI_COMBINACOES2] ;
                                                                                STGR_COMB15.Cells[44,VI_LINHAS2] := STGR_LINHA_3_TODOS.Cells[5, VsI_COMBINACOES3] ;
                                                                                STGR_COMB15.Cells[45,VI_LINHAS2] := STGR_LINHA_4_TODOS.Cells[5, VsI_COMBINACOES4] ;
                                                                                STGR_COMB15.Cells[46,VI_LINHAS2] := STGR_LINHA_5_TODOS.Cells[5, VsI_COMBINACOES5] ;
                                                                                STGR_COMB15.Cells[47,VI_LINHAS2] := INTtoSTR(VI_SOMA3);
                                                                                STGR_COMB15.Cells[48,VI_LINHAS2] := '-----'     ;
                                                                                STGR_COMB15.Cells[49,VI_LINHAS2] := 'C-4'   ;
                                                                                STGR_COMB15.Cells[50,VI_LINHAS2] := STGR_LINHA_1_TODOS.Cells[14, VI_COMBINACOES1] ;
                                                                                STGR_COMB15.Cells[51,VI_LINHAS2] := STGR_LINHA_2_TODOS.Cells[14, VI_COMBINACOES2] ;
                                                                                STGR_COMB15.Cells[52,VI_LINHAS2] := STGR_LINHA_3_TODOS.Cells[14, VsI_COMBINACOES3] ;
                                                                                STGR_COMB15.Cells[53,VI_LINHAS2] := STGR_LINHA_4_TODOS.Cells[14, VsI_COMBINACOES4] ;
                                                                                STGR_COMB15.Cells[54,VI_LINHAS2] := STGR_LINHA_5_TODOS.Cells[14, VsI_COMBINACOES5] ;
                                                                                STGR_COMB15.Cells[55,VI_LINHAS2] := INTtoSTR(VI_SOMA4);
                                                                                                PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                                                                                                PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2);
                                                                                 VI_LINHAS2 := VI_LINHAS2+1;
                                                                                 VI_LINHAS1 := VI_LINHAS1+1;
                                                                           END; // IF
                                                       //STGR_COMB15.RowCount := VI_LINHAS2;
                                                       IF (NOT(CB_FORMA_EXECUCAO.ItemIndex = 1)) THEN PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_1_TODOS.RowCount-1));
                                                  END; // FOR VsI_CONTADOR_COMB
                                             END;// IF (STGR_FLAG_cmbCOL3x4
                                        END; // FOR VsI_COMBINACOES6
                                   END; // IF  //IF (VI_FLAG_SOMATORIA1


                          END;// FOR VsI_COMBINACOES5
                          STGR_COMB15.RowCount := VI_LINHAS2;
                    END;// FOR VsI_COMBINACOES4
                        STGR_COMB15.RowCount := VI_LINHAS2;
                    LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                    LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                    STGR_COMB15.Repaint;
                    LA_QTD_COMB.Repaint;
                    //SLEEP(30);
               END;// FOR VsI_COMBINACOES3

                                   PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_2_TODOS.RowCount-1)*100);
                                   PGBR_GERARCOMB0.Repaint;
                                   LA_QTD_COMB.Repaint;
                                   SLEEP(90);
          IF (NOT(CB_FORMA_EXECUCAO.ItemIndex = 1)) THEN SLEEP (6);                                   
         // Self.WindowState := wsMinimized;
         // Self.WindowState :=  wsNormal;
         // SELF.Repaint;
          END;// FOR VI_COMBINACOES2
          //PGBR_GERARCOMB3.Position := 100;
          PGBR_GERARCOMB0.Position := 100;
          LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_LINHA_1_TODOS.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_LINHA_1_TODOS.RowCount-1)*100))+ ' %  ';
          PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_LINHA_1_TODOS.RowCount-1)*100);
          LA_GERAR_COMB.Repaint;
          PGBR_GERARCOMB.Repaint;
          STGR_COMB15.RowCount := VI_LINHAS2;
          STGR_COMB15.Repaint;
          Self.WindowState := wsMinimized;
          Self.WindowState :=  wsNormal;
          SELF.Repaint;
     END;// FOR VI_COMBINACOES1
     LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     TRY
          STGR_COMB15.FixedRows := 1;
     EXCEPT
          //
     END;
          IF (NOT(CB_FORMA_EXECUCAO.ItemIndex = 1)) THEN  PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_1_TODOS.RowCount-1));     
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Repaint;
     LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_LINHA_1_TODOS.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_LINHA_1_TODOS.RowCount-1)*100))+ ' %  ';
     LA_GERAR_COMB.Repaint;
    // PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
     //PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_SIMULACAO.Enabled    := false;
     BBT_ORDENAR.Enabled  := false;
     BBT_ENCERRAR.Enabled := false;
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';
     IF (NOT(CB_FORMA_EXECUCAO.ItemIndex = 1)) THEN SELF.PR_SIMULAR_RECUPERANDODADOS('');
     IF (NOT(CB_FORMA_EXECUCAO.ItemIndex = 1)) THEN LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     IF (NOT(CB_FORMA_EXECUCAO.ItemIndex = 1)) THEN LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption+ '    ';
     IF (NOT(CB_FORMA_EXECUCAO.ItemIndex = 1)) THEN PA_REMOVEUREPET.Left :=  500;
end;



PROCEDURE T_F_SIM_01_FILTRO_12.PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
VAR
VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-2 - Retirando os repetidos');
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_12_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DADOS FROM FILTRO_12_DADOS GROUP BY DADOS ORDER BY DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
           IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('Recuperando os dados');
       // ********************
       // **   ENCERRANDO   **
       // ********************
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
       STGR_COMB15.RowCount := 0;
       SELF.IBQ_COMBINACOES.First;
       PGBR_REMREPET.Position := 0;       
       IF (TRIM(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString) ='') THEN
           SELF.IBQ_COMBINACOES.Next;
       FOR VI_AN_COMB1:= 1 TO  VI_CONTAR DO
       BEGIN
           STGR_COMB15.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB15.Cells [1, VI_AN_COMB1] := 'V';
           STGR_COMB15.Cells [2, VI_AN_COMB1] := 'F';
           STGR_COMB15.Cells [3, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [4, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
           STGR_COMB15.Cells [5, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
           STGR_COMB15.Cells [6, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
           STGR_COMB15.Cells [7, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
           STGR_COMB15.Cells [8, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
           STGR_COMB15.Cells [9, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
           STGR_COMB15.Cells [10, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
           STGR_COMB15.Cells [11, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
           STGR_COMB15.Cells [12, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
           STGR_COMB15.Cells [13, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
           STGR_COMB15.Cells [14, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
           STGR_COMB15.Cells [15, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
           STGR_COMB15.Cells [16, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
           STGR_COMB15.Cells [17, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
           STGR_COMB15.Cells [18, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
           STGR_COMB15.Cells [19, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [20, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [21, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [22, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [23, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [24, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [25, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [26, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [27, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [28, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [29, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [30, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [31, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [32, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [33, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [34, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [35, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [36, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [37, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [38, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [39, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [40, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [41, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [42, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [43, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [44, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [45, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [46, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [47, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [48, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [49, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [50, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [51, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [52, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [53, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [54, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [55, VI_AN_COMB1] := '';
               STGR_COMB15.RowCount := VI_AN_COMB1;
           if (VI_AN_COMB1/140)=(VI_AN_COMB1 DIV 140) then
           BEGIN
               PGBR_REMREPET.Position := (TRUNC(VI_AN_COMB1  / VI_CONTAR *10*8) );
               PGBR_REMREPET.Repaint;
               STGR_COMB15.REPAINT;               
           END;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_12_DEFINICAO;')  ;
       SELF.IBQ_COMBINACOES.Open;
       STGR_COMB15.REPAINT;
           PGBR_REMREPET.Position := 100;
       LA_TOTAL_100REPET.Caption := INTtoSTR(STGR_COMB15.RowCount);
       STGR_COMB15.REPAINT;
       LA_TOTAL_100REPET.Repaint;

           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();



procedure T_F_SIM_01_FILTRO_12.BBT_ORDENARClick(Sender: TObject);
{VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_CNTCELULAS: SMALLINT;   }
begin
    { LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     PGBR_REMREPET.Position :=0;
     PGBR_REMREPET.Repaint;
     // -------------------------
     // --  Ordena os dados    --
     // -------------------------
     FOR VI_COMBINACOES1 := 1 TO (STGR_COMB15.RowCount -1) DO
     BEGIN
          FOR VI_CONTAR :=1 TO 25 DO
          BEGIN
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
          END; // FOR VI_CONTAR
          // ----> MONTADO E VERIFICANDO TODOS OS 25 D�GITOS
          FOR VI_CONTAR :=4 TO 18 DO
          BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_COMBINACOES1])) ,1]:='V';
          END; // FOR VI_CONTAR1
          VI_CNTCELULAS := 4;
          FOR VI_CONTAR :=1 TO 25 DO
          BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB15.Cells [VI_CNTCELULAS, VI_COMBINACOES1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
          END; // FOR VI_CONTAR
     END; // FOR VI_CONBINACOES1
     STGR_COMB15.Repaint;
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMB15.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_COMB15.RowCount-1) DO
          BEGIN
                IF (STGR_COMB15.Cells [1,VI_COMBINACOES2] = 'F') THEN
                    CONTINUE;
                IF  (STGR_COMB15.Cells[4,VI_COMBINACOES1] = STGR_COMB15.Cells[4,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[5,VI_COMBINACOES1] = STGR_COMB15.Cells[5,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_COMB15.Cells[6,VI_COMBINACOES1] = STGR_COMB15.Cells[6,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[7,VI_COMBINACOES1] = STGR_COMB15.Cells[7,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[8,VI_COMBINACOES1] = STGR_COMB15.Cells[8,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[9,VI_COMBINACOES1] = STGR_COMB15.Cells[9,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[10,VI_COMBINACOES1] = STGR_COMB15.Cells[10,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[11,VI_COMBINACOES1] = STGR_COMB15.Cells[11,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[12,VI_COMBINACOES1] = STGR_COMB15.Cells[12,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[13,VI_COMBINACOES1] = STGR_COMB15.Cells[13,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[14,VI_COMBINACOES1] = STGR_COMB15.Cells[14,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[15,VI_COMBINACOES1] = STGR_COMB15.Cells[15,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[16,VI_COMBINACOES1] = STGR_COMB15.Cells[16,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[17,VI_COMBINACOES1] = STGR_COMB15.Cells[17,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[18,VI_COMBINACOES1] = STGR_COMB15.Cells[18,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_COMB15.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
          if ((VI_COMBINACOES1 MOD 99)=0) then
          begin
               //LA_PERC_100REPET.Caption := INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_COMB15.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_COMB15.RowCount-1)*100))+ ' %  '
          end else
          if (VI_COMBINACOES1/1000)=(VI_COMBINACOES1 DIV 1000) then
          BEGIN
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END; // IF (VI_COMBINACOES1/1000
          PGBR_REMREPET.Position := TRUNC(VI_COMBINACOES1/(STGR_COMB15.RowCount-1)*100);
          PGBR_REMREPET.Repaint;
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMB15.RowCount-1) DO
     BEGIN
          IF (STGR_COMB15.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TOTAL_100REPET.Caption := INTtoSTR(VI_CONTAR);
     LA_TOTAL_100REPET.Repaint;
     PGBR_REMREPET.Position := 100;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_SIMULACAO.Enabled    := false;
     BBT_ORDENAR.Enabled  := false;
     BBT_ENCERRAR.Enabled := false;
     LA_rTOTAL_COMB.Caption  := LA_gTOTAL_COMB.Caption;
     LA_rQTD_COMB.Caption    := LA_gQTD_COMB.Caption;
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption+ '    ';
     PA_REMOVEUREPET.Left :=  350;         }
end;




procedure T_F_SIM_01_FILTRO_12.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled    := TRUE;
     IF (RB_GERAR_FILTRAR.Checked) THEN
     BEGIN
          BBT_ENCERRAR.Click;
     END ELSE
     BEGIN
         _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add('# FILTRO 11: GERADO');
         _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add(' - E SALVO.  ');
         Self.Close;
     END;
end;



procedure T_F_SIM_01_FILTRO_12.BBT_ENCERRARClick(Sender: TObject);
VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_LINHAS2: SMALLINT;
begin
               // ---------------------------
               // --  FILTRANDO OS DADOS   --
               // ---------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMB15.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO (_FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount-1) DO
          BEGIN
                IF  (STGR_COMB15.Cells[4,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[1,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[5,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[2,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[6,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[3,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_COMB15.Cells[7,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[4,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[8,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[5,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[9,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[6,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[10,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[7,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[11,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[8,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[12,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[9,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[13,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[10,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[14,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[11,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[15,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[12,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[16,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[13,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[17,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[14,VI_COMBINACOES2]) and
                        (STGR_COMB15.Cells[18,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[15,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_COMB15.Cells [2,VI_COMBINACOES1] := 'V';
                    END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
          if (VI_COMBINACOES1/500)=(VI_COMBINACOES1 DIV 500) then
          BEGIN
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END; // IF (VI_COMBINACOES1/500
          PGBR_FILTRARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_COMB15.RowCount-1)*100);
          PGBR_FILTRARCOMB.Repaint;
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     PGBR_FILTRARCOMB.Position := 100;
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMB15.RowCount-1) DO
     BEGIN
          IF (STGR_COMB15.Cells[1,VI_COMBINACOES1] = 'V')  AND (trim(STGR_COMB15.Cells[2,VI_COMBINACOES1]) = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_QTD_FILTRADOS.Caption := INTtoSTR(VI_CONTAR);
     LA_QTD_FILTRADOS.Repaint;

     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount := 0;
     VI_LINHAS2 := 0;
     FOR VI_COMBINACOES1 :=0 TO (STGR_COMB15.RowCount ) DO
     BEGIN
        IF (STGR_COMB15.Cells[1,VI_COMBINACOES1] = 'V')  AND (trim(STGR_COMB15.Cells[2,VI_COMBINACOES1]) = 'V') THEN
        BEGIN
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
               _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_LINHAS2] := STGR_COMB15.Cells [VI_CONTAR+3,VI_COMBINACOES1];
            END; //FOR
           VI_LINHAS2 := VI_LINHAS2 +1 ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount := VI_LINHAS2;
        END; //IF
     END; // FOR
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Repaint;
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Repaint;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_SIMULACAO.Enabled    := false;
     BBT_ORDENAR.Enabled  := false;
     BBT_ENCERRAR.Enabled := false;
     LA_fTOTAL_COMB.Caption  := LA_rTOTAL_COMB.Caption;
     LA_fQTD_COMB.Caption    := LA_rQTD_COMB.Caption;
     LA_fTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption+ '    ';
     LA_fQTD_FILTRADOS.Caption := LA_QTD_FILTRADOS.Caption + '   ';
     PA_FIMFILTRO.Left :=  400;
end;



procedure T_F_SIM_01_FILTRO_12.BBT_FIMFILTROClick(Sender: TObject);
begin
    _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add('# FILTRO 12: RESULTADO');
    _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add('  ' + INTtoSTR(_FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount));
    PA_FIMFILTRO.Left := 5000;
    BBT_CLOSE.OnClick (Sender);
end;





procedure T_F_SIM_01_FILTRO_12.BBT_CAPTURAR_F11Click(Sender: TObject);
VAR
     VI_AN_COMB1, VI_CONTAR_INI, VI_CONTAR_FINAL : INTEGER;
BEGIN
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_11_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR_INI := STGR_COMB15.RowCount-1;
       VI_CONTAR_FINAL := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger + STGR_COMB15.RowCount;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DADOS FROM FILTRO_11_DADOS GROUP BY DADOS ORDER BY DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       // ********************
       // **   ENCERRANDO   **
       // ********************
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
       SELF.IBQ_COMBINACOES.First;
       PGBR_REMREPET.Position :=0;       
       IF (TRIM(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString) ='') THEN
           SELF.IBQ_COMBINACOES.Next;
       FOR VI_AN_COMB1:= VI_CONTAR_INI TO  VI_CONTAR_FINAL DO
       BEGIN
           STGR_COMB15.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB15.Cells [1, VI_AN_COMB1] := 'V';
           STGR_COMB15.Cells [2, VI_AN_COMB1] := 'F';
           STGR_COMB15.Cells [3, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [4, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
           STGR_COMB15.Cells [5, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
           STGR_COMB15.Cells [6, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
           STGR_COMB15.Cells [7, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
           STGR_COMB15.Cells [8, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
           STGR_COMB15.Cells [9, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
           STGR_COMB15.Cells [10, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
           STGR_COMB15.Cells [11, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
           STGR_COMB15.Cells [12, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
           STGR_COMB15.Cells [13, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
           STGR_COMB15.Cells [14, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
           STGR_COMB15.Cells [15, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
           STGR_COMB15.Cells [16, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
           STGR_COMB15.Cells [17, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
           STGR_COMB15.Cells [18, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
           STGR_COMB15.Cells [19, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [20, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [21, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [22, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [23, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [24, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [25, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [26, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [27, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [28, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [29, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [30, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [31, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [32, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [33, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [34, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [35, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [36, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [37, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [38, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [39, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [40, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [41, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [42, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [43, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [44, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [45, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [46, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [47, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [48, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [49, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [50, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [51, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [52, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [53, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [54, VI_AN_COMB1] := '';
           STGR_COMB15.Cells [55, VI_AN_COMB1] := '';
           if (VI_AN_COMB1/90)=(VI_AN_COMB1 DIV 90) then
           BEGIN
               PGBR_REMREPET.Position := (TRUNC(VI_AN_COMB1  / VI_CONTAR_FINAL *10*8) );
               PGBR_REMREPET.Repaint;
               STGR_COMB15.RowCount := VI_AN_COMB1;
               STGR_COMB15.REPAINT;
           END;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       STGR_COMB15.RowCount := VI_AN_COMB1;
       STGR_COMB15.REPAINT;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_11_DEFINICAO;')  ;
       SELF.IBQ_COMBINACOES.Open;
       // ----> SOME COM OS NUMEROS DO TOPO
       STGR_COMB15.REPAINT;
           PGBR_REMREPET.Position := 100;
       LA_TOTAL_100REPET.Caption := INTtoSTR(STGR_COMB15.RowCount);
       STGR_COMB15.REPAINT;
       LA_TOTAL_100REPET.Repaint;
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
     SHOWMESSAGE ('CAPTURA DE DADOS DO FILTRO 11 - ENCERRADA');
     BBT_CAPTURAR_F11.Enabled := FALSE;      
END;


procedure T_F_SIM_01_FILTRO_12.BT_NOVA_SIMULACAOClick(Sender: TObject);
begin
     BBT_RECOMECAR.Click;
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     PA_GABARITO.Visible := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     RB_RESULTADOS.SetFocus;
     RB_RES_GABARITOS.SetFocus;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_SIMULACAO.Enabled := TRUE;
     BBT_ENCERRAR.Enabled := TRUE;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
end;


procedure T_F_SIM_01_FILTRO_12.BT_CARREGAR_SIMULACAOClick(Sender: TObject);
begin
     BBT_RECOMECAR.Click;
     PA_PREENCHIMENTO.Visible := false;
     PA_PREENCHIMENTO.Enabled := false;
     PA_GABARITO.Visible := TRUE;
     RB_RESULTADOS.SetFocus;
     PA_GABARITO.Visible := false;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     BBT_ENCERRAR.Visible := TRUE;     
     BBT_ENCERRAR.Enabled := TRUE;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     PGBR_GERARCOMB3.Position := 100;
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
     LA_TOTAL_COMB.Visible := false;
     LA_GERAR_COMB.Visible := false;
     LA_QTD_COMB.Visible := false;
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
end;


procedure T_F_SIM_01_FILTRO_12.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     TRY
          BEGIN
          IBQ_COMBINACOES.Close;
          IBDatabase1.Close;
          END
     EXCEPT
     //
     END; // TRY;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_GERAR_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;

procedure T_F_SIM_01_FILTRO_12.BBT_GERAR_MENUClick(Sender: TObject);
begin
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Left := 460;
end;

end.
