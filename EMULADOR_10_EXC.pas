unit EMULADOR_10_EXC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Menus, Grids, DB, STRutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

type
  T_F_EMULADOR_10_EXC = class(TForm)
    SCBX_GABARITO: TScrollBox;
    PA_TOPO: TPanel;
    BBT_CLOSE: TImage;
    Label34: TLabel;
    PA_RESULTADO: TPanel;
    STGR_COMB10: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR: TBitBtn;
    BBT_GERAR_MENU: TBitBtn;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_TOTAL_100REPET: TLabel;
    Label87: TLabel;
    LA_QTD_COMB: TLabel;
    LA_GERAR_COMB: TLabel;
    LA_TOTAL_COMB: TLabel;
    PGBR_REMREPET: TProgressBar;
    PGBR_GERARCOMB: TProgressBar;
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
    BBT_PA_REMOVEUREPET: TBitBtn;
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
    BBT_CLICK_TUDO: TButton;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    BBT_BLOCO_NOTAS: TBitBtn;
    MEM_COMBINACOES_TODAS: TMemo;
    BBT_SAIR: TButton;
    PA_EXCLUIDOS: TPanel;
    Label32: TLabel;
    ED_EXC_01: TEdit;
    ED_EXC_02: TEdit;
    ED_EXC_03: TEdit;
    BBT_CARREGAR: TButton;
    STGR_LINHA_1_C1: TStringGrid;
    STGR_LINHA_1_C2: TStringGrid;
    STGR_LINHA_1_C3: TStringGrid;
    STGR_LINHA_1_C4: TStringGrid;
    STGR_LINHA_1_TODOS: TStringGrid;
    STGR_LINHA_2_C1: TStringGrid;
    STGR_LINHA_2_C2: TStringGrid;
    STGR_LINHA_2_C3: TStringGrid;
    STGR_LINHA_2_C4: TStringGrid;
    STGR_LINHA_2_TODOS: TStringGrid;
    Label35: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Bevel2: TBevel;
    STGR_LINHA_3_C1: TStringGrid;
    Label17: TLabel;
    Label18: TLabel;
    STGR_LINHA_3_C2: TStringGrid;
    Label19: TLabel;
    STGR_LINHA_3_C3: TStringGrid;
    STGR_LINHA_3_C4: TStringGrid;
    STGR_LINHA_3_TODOS: TStringGrid;
    STGR_LINHA_4_C1: TStringGrid;
    Bevel3: TBevel;
    Label22: TLabel;
    STGR_LINHA_4_C2: TStringGrid;
    Label23: TLabel;
    STGR_LINHA_4_C3: TStringGrid;
    Label24: TLabel;
    STGR_LINHA_4_C4: TStringGrid;
    Label3: TLabel;
    LA_LINHA_4_100REP: TLabel;
    STGR_LINHA_4_TODOS: TStringGrid;
    Bevel4: TBevel;
    STGR_LINHA_5_C1: TStringGrid;
    STGR_LINHA_5_C2: TStringGrid;
    STGR_LINHA_5_C3: TStringGrid;
    STGR_LINHA_5_C4: TStringGrid;
    STGR_LINHA_5_TODOS: TStringGrid;
    LA_LINHA_5_100REP: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Bevel1: TBevel;
    LA_LINHA_1_100REP: TLabel;
    Label37: TLabel;
    Label15: TLabel;
    LA_LINHA_2_100REP: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label21: TLabel;
    LA_LINHA_3_100REP: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label4: TLabel;
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
    PA_COLUNA1e2: TPanel;
    Label20: TLabel;
    ED_SOMAS_C1e2_INI: TEdit;
    TRB_C1e2_INI: TTrackBar;
    PA_COLUNA3e4: TPanel;
    Label26: TLabel;
    ED_SOMAS_C3e4_INI: TEdit;
    TRB_C3e4_INI: TTrackBar;
    Pa_bASE5: TPanel;
    STGR_BASE_5: TStringGrid;
    STGR_FLAG_COL3: TStringGrid;
    STGR_FLAG_COL2: TStringGrid;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    STGR_FLAG_cmbCOL3x4: TStringGrid;
    Bevel5: TBevel;
    LA_QTD_cmbCOL3x4: TLabel;
    PA_GABARITO: TPanel;
    Label29: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    RB_RESULTADOS: TRadioButton;
    RB_GABARITO: TRadioButton;
    RB_RES_GABARITOS: TRadioButton;
    Label38: TLabel;
    STGR_FLAG_cmb20: TStringGrid;
    ED_SOMAS_C1e2_FINAL: TEdit;
    TRB_C1e2_FINAL: TTrackBar;
    ED_SOMAS_C3e4_FINAL: TEdit;
    TRB_C3e4_FINAL: TTrackBar;
    STGR_COL_01: TStringGrid;
    STGR_COL_02: TStringGrid;
    STGR_COL_03: TStringGrid;
    STGR_BASE_5F: TStringGrid;
    Label50: TLabel;
    LA_rTOTAL_100REPET: TLabel;
    BBT_CANCELAR: TBitBtn;
    ED_EXC_04: TEdit;
    ED_EXC_05: TEdit;
    PA_OBRIGATORIOS: TPanel;
    Label36: TLabel;
    ED_EXC_OBR_1: TEdit;
    ED_EXC_OBR_2: TEdit;
    ED_EXC_OBR_3: TEdit;
    Label39: TLabel;
    LA_rTOT_CALC: TLabel;
    LA_rLogic_Comp: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    LA_rTOT_PROCESSAMENTO: TLabel;
    LA_rATRIBUICAO_DADOS: TLabel;
    Label43: TLabel;
    BBT_CANCELAR_SAIR: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure RB_RES_GABARITOSClick(Sender: TObject);
    procedure RB_GABARITOClick(Sender: TObject);
    procedure RB_RESULTADOSClick(Sender: TObject);
    procedure TRB_C1_INIChange(Sender: TObject);
    procedure TRB_C1_FINALChange(Sender: TObject);
    procedure TRB_C2_INIChange(Sender: TObject);
    procedure TRB_C2_FINALChange(Sender: TObject);
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure BBT_RECOMECARClick(Sender: TObject);
    procedure BBT_CLICK_TUDOClick(Sender: TObject);
    procedure BBT_GERAR_MENUClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
    procedure BT_REAJUSTARClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure TRB_C3_INIChange(Sender: TObject);
    procedure TRB_C3_FINALChange(Sender: TObject);
    procedure TRB_C4_INIChange(Sender: TObject);
    procedure TRB_C4_FINALChange(Sender: TObject);
    procedure TRB_C1e2_INIChange(Sender: TObject);
    procedure TRB_C3e4_INIChange(Sender: TObject);
    procedure TRB_C1e2_FINALChange(Sender: TObject);
    procedure TRB_C3e4_FINALChange(Sender: TObject);
    procedure BBT_CANCELARClick(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
     PROCEDURE PR_LIMPAR_GRID10();
  public
    { Public declarations }
  end;

var
  _F_EMULADOR_10_EXC: T_F_EMULADOR_10_EXC;

implementation

{$R *.dfm}

procedure T_F_EMULADOR_10_EXC.FormCreate(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
     SELF.ClientWidth  := 1369;
     SELF.ClientHeight := 730;
     SELF.Top  := 69;
     SELF.Left := 9;
   //  SELF.Visible := TRUE;
     bbt_close.Left := SELF.ClientWidth-35;
    FOR VI_CONTAR := 1 TO 10 DO
    BEGIN
        STGR_COMB10.Cells [VI_CONTAR,1] := '0';
    END;
    STGR_COMB10.RowCount := 2;
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
    STGR_COMB10.Cells[0,0] := 'QTD';
    FOR VI_CONTAR := 1 TO 10 DO
    BEGIN
        STGR_COMB10.Cells [VI_CONTAR,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_FLAG_COL2.Cells[VI_CONTAR,0] := INTtoSTR(VI_CONTAR);
        STGR_FLAG_COL3.Cells[VI_CONTAR,0] := INTtoSTR(VI_CONTAR);
    END;
     FOR VI_CONTAR :=1 TO 20 DO
     BEGIN
          STGR_FLAG_cmb20.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
     END; // FOR VI_CONTAR
     FOR VI_CONTAR :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
     END; // FOR VI_CONTAR
     PA_REMOVEUREPET.Left := 5000;
     PA_GABARITO.Visible := false;
     PA_PREENCHIMENTO.Visible := false;
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible := false;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 520;
    PA_EXECUTAR_FILTRO.Enabled := false;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00c_10EXC_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
end;



procedure T_F_EMULADOR_10_EXC.FormClose(Sender: TObject;
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



procedure T_F_EMULADOR_10_EXC.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;


procedure T_F_EMULADOR_10_EXC.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(1);
    BBT_701.Enabled := FALSE;
end;


procedure T_F_EMULADOR_10_EXC.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(2);
    BBT_702.Enabled := FALSE;
end;


procedure T_F_EMULADOR_10_EXC.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(3);
    BBT_703.Enabled := FALSE;
end;


procedure T_F_EMULADOR_10_EXC.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(4);
    BBT_704.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(5);
    BBT_705.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(6);
    BBT_706.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(7);
    BBT_707.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(8);
    BBT_708.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(10);
    BBT_710.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(9);
    BBT_709.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(11);
    BBT_711.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(12);
    BBT_712.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(13);
    BBT_713.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(14);
    BBT_714.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(15);
    BBT_715.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(16);
    BBT_716.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(17);
    BBT_717.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(18);
    BBT_718.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(19);
    BBT_719.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(20);
    BBT_720.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(21);
    BBT_721.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(22);
    BBT_722.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(23);
    BBT_723.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(24);
    BBT_724.Enabled := FALSE;
end;

procedure T_F_EMULADOR_10_EXC.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(25);
    BBT_725.Enabled := FALSE;
end;



PROCEDURE T_F_EMULADOR_10_EXC.PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
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



procedure T_F_EMULADOR_10_EXC.BT_NOVA_SIMULACAOClick(Sender: TObject);
VAR
     VsI_CONTAR : SMALLINT;
begin
     FOR VsI_CONTAR := 1 TO 5 DO
     BEGIN
          STGR_BASE_L1.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L2.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L3.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L4.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L5.Cells[VsI_CONTAR,0] := '0';
     END;
     STGR_LINHA_1_C1.RowCount := 2;
     STGR_LINHA_2_C1.RowCount := 2;
     STGR_LINHA_3_C1.RowCount := 2;
     STGR_LINHA_4_C1.RowCount := 2;
     STGR_LINHA_5_C1.RowCount := 2;
     STGR_LINHA_1_C2.RowCount := 2;
     STGR_LINHA_2_C2.RowCount := 2;
     STGR_LINHA_3_C2.RowCount := 2;
     STGR_LINHA_4_C2.RowCount := 2;
     STGR_LINHA_5_C2.RowCount := 2;
     ED_EXC_01.Text := '00';
     ED_EXC_02.Text := '00';
     ED_EXC_03.Text := '00';
     BBT_RECOMECAR.Click;
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     PA_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     STGR_COMB10.Visible := TRUE;
     STGR_COMB10.Enabled := TRUE;
     RB_RESULTADOS.SetFocus;
     RB_RES_GABARITOS.SetFocus;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_RECOMECAR.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE;
     BBT_CANCELAR_SAIR.Visible := false;       
     BT_REAJUSTAR.Enabled :=  TRUE;     
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
end;





procedure T_F_EMULADOR_10_EXC.RB_RES_GABARITOSClick(Sender: TObject);
begin
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 184 ;
           Height := 195 ;
           Visible := TRUE;
       END; // WITH
     STGR_LINHA_1_C1.Height := 143;
     STGR_LINHA_1_C2.Height := 143;
     STGR_LINHA_2_C1.Height := 143;
     STGR_LINHA_2_C2.Height := 143;
     STGR_LINHA_3_C1.Height := 143;
     STGR_LINHA_3_C2.Height := 143;
     STGR_LINHA_4_C1.Height := 143;
     STGR_LINHA_4_C2.Height := 143;
     STGR_LINHA_5_C1.Height := 143;
     STGR_LINHA_5_C2.Height := 143;
     PA_RESULTADO.Visible  := TRUE;
end;


procedure T_F_EMULADOR_10_EXC.RB_GABARITOClick(Sender: TObject);
begin
{
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 184 ;
           Height := 520 ;
           Visible := TRUE;
       END; // WITH
     STGR_LINHA_1_C1.Height := 453;
     STGR_LINHA_1_C2.Height := 453;
     STGR_LINHA_2_C1.Height := 453;
     STGR_LINHA_2_C2.Height := 453;
     STGR_LINHA_3_C1.Height := 453;
     STGR_LINHA_3_C2.Height := 453;
     STGR_LINHA_4_C1.Height := 453;
     STGR_LINHA_4_C2.Height := 453;
     STGR_LINHA_5_C1.Height := 453;
     STGR_LINHA_5_C2.Height := 453;
     PA_RESULTADO.Visible  := false;
     }
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 184 ;
           Height := 520 ;
           Visible := TRUE;
       END; // WITH
     STGR_LINHA_1_C1.Height := 465;
     STGR_LINHA_1_C2.Height := 465;
     STGR_LINHA_1_C3.Height := 465;
     STGR_LINHA_1_C4.Height := 465;
     STGR_LINHA_2_C1.Height := 465;
     STGR_LINHA_2_C2.Height := 465;
     STGR_LINHA_2_C3.Height := 465;
     STGR_LINHA_2_C4.Height := 465;
     STGR_LINHA_3_C1.Height := 465;
     STGR_LINHA_3_C2.Height := 465;
     STGR_LINHA_3_C3.Height := 465;
     STGR_LINHA_3_C4.Height := 465;
     STGR_LINHA_4_C1.Height := 465;
     STGR_LINHA_4_C2.Height := 465;
     STGR_LINHA_4_C4.Height := 465;
     STGR_LINHA_4_C3.Height := 465;
     STGR_LINHA_5_C1.Height := 465;
     STGR_LINHA_5_C2.Height := 465;
     STGR_LINHA_5_C3.Height := 465;
     STGR_LINHA_5_C4.Height := 465;
     STGR_LINHA_1_TODOS.Height := 465  ;
     STGR_LINHA_2_TODOS.Height := 465   ;
     STGR_LINHA_3_TODOS.Height := 465   ;
     STGR_LINHA_4_TODOS.Height := 465  ;
     STGR_LINHA_5_TODOS.Height := 465  ; 
     STGR_FLAG_cmbCOL3x4.Height := 275;     
     PA_RESULTADO.Visible  := false;
end;


procedure T_F_EMULADOR_10_EXC.RB_RESULTADOSClick(Sender: TObject);
begin
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible  := TRUE;
end;



procedure T_F_EMULADOR_10_EXC.TRB_C1_INIChange(Sender: TObject);
begin
     IF TRB_C1_INI.Position = 1 THEN
          ED_SOMAS_C1_INI.Text := '60';
     IF TRB_C1_INI.Position = 2 THEN
          ED_SOMAS_C1_INI.Text := '61';
     IF TRB_C1_INI.Position = 3 THEN
          ED_SOMAS_C1_INI.Text := '62';
     IF TRB_C1_INI.Position = 4 THEN
          ED_SOMAS_C1_INI.Text := '63';
     IF TRB_C1_INI.Position = 5 THEN
          ED_SOMAS_C1_INI.Text := '64';
     IF TRB_C1_INI.Position = 6 THEN
          ED_SOMAS_C1_INI.Text := '65';
     IF TRB_C1_INI.Position = 7 THEN
          ED_SOMAS_C1_INI.Text := '66';
     IF TRB_C1_INI.Position = 8 THEN
          ED_SOMAS_C1_INI.Text := '67';
     IF TRB_C1_INI.Position = 9 THEN
          ED_SOMAS_C1_INI.Text := '68';
     IF TRB_C1_INI.Position = 10 THEN
          ED_SOMAS_C1_INI.Text := '69';
     IF TRB_C1_INI.Position = 11 THEN
          ED_SOMAS_C1_INI.Text := '70';
end;


procedure T_F_EMULADOR_10_EXC.TRB_C1_FINALChange(Sender: TObject);
begin
     IF TRB_C1_FINAL.Position = 1 THEN
          ED_SOMAS_C1_FINAL.Text := '60';
     IF TRB_C1_FINAL.Position = 2 THEN
          ED_SOMAS_C1_FINAL.Text := '61';
     IF TRB_C1_FINAL.Position = 3 THEN
          ED_SOMAS_C1_FINAL.Text := '62';
     IF TRB_C1_FINAL.Position = 4 THEN
          ED_SOMAS_C1_FINAL.Text := '63';
     IF TRB_C1_FINAL.Position = 5 THEN
          ED_SOMAS_C1_FINAL.Text := '64';
     IF TRB_C1_FINAL.Position = 6 THEN
          ED_SOMAS_C1_FINAL.Text := '65';
     IF TRB_C1_FINAL.Position = 7 THEN
          ED_SOMAS_C1_FINAL.Text := '66';
     IF TRB_C1_FINAL.Position = 8 THEN
          ED_SOMAS_C1_FINAL.Text := '67';
     IF TRB_C1_FINAL.Position = 9 THEN
          ED_SOMAS_C1_FINAL.Text := '68';
     IF TRB_C1_FINAL.Position = 10 THEN
          ED_SOMAS_C1_FINAL.Text := '69';
     IF TRB_C1_FINAL.Position = 11 THEN
          ED_SOMAS_C1_FINAL.Text := '70';
end;


procedure T_F_EMULADOR_10_EXC.TRB_C2_INIChange(Sender: TObject);
begin
     IF TRB_C2_INI.Position = 1 THEN
          ED_SOMAS_C2_INI.Text := '60';
     IF TRB_C2_INI.Position = 2 THEN
          ED_SOMAS_C2_INI.Text := '61';
     IF TRB_C2_INI.Position = 3 THEN
          ED_SOMAS_C2_INI.Text := '62';
     IF TRB_C2_INI.Position = 4 THEN
          ED_SOMAS_C2_INI.Text := '63';
     IF TRB_C2_INI.Position = 5 THEN
          ED_SOMAS_C2_INI.Text := '64';
     IF TRB_C2_INI.Position = 6 THEN
          ED_SOMAS_C2_INI.Text := '65';
     IF TRB_C2_INI.Position = 7 THEN
          ED_SOMAS_C2_INI.Text := '66';
     IF TRB_C2_INI.Position = 8 THEN
          ED_SOMAS_C2_INI.Text := '67';
     IF TRB_C2_INI.Position = 9 THEN
          ED_SOMAS_C2_INI.Text := '68';
     IF TRB_C2_INI.Position = 10 THEN
          ED_SOMAS_C2_INI.Text := '69';
     IF TRB_C2_INI.Position = 11 THEN
          ED_SOMAS_C2_INI.Text := '70';
END;



procedure T_F_EMULADOR_10_EXC.TRB_C2_FINALChange(Sender: TObject);
begin
     IF TRB_C2_FINAL.Position = 1 THEN
          ED_SOMAS_C2_FINAL.Text := '60';
     IF TRB_C2_FINAL.Position = 2 THEN
          ED_SOMAS_C2_FINAL.Text := '61';
     IF TRB_C2_FINAL.Position = 3 THEN
          ED_SOMAS_C2_FINAL.Text := '62';
     IF TRB_C2_FINAL.Position = 4 THEN
          ED_SOMAS_C2_FINAL.Text := '63';
     IF TRB_C2_FINAL.Position = 5 THEN
          ED_SOMAS_C2_FINAL.Text := '64';
     IF TRB_C2_FINAL.Position = 6 THEN
          ED_SOMAS_C2_FINAL.Text := '65';
     IF TRB_C2_FINAL.Position = 7 THEN
          ED_SOMAS_C2_FINAL.Text := '66';
     IF TRB_C2_FINAL.Position = 8 THEN
          ED_SOMAS_C2_FINAL.Text := '67';
     IF TRB_C2_FINAL.Position = 9 THEN
          ED_SOMAS_C2_FINAL.Text := '68';
     IF TRB_C2_FINAL.Position = 10 THEN
          ED_SOMAS_C2_FINAL.Text := '69';
     IF TRB_C2_FINAL.Position = 11 THEN
          ED_SOMAS_C2_FINAL.Text := '70';
end;


procedure T_F_EMULADOR_10_EXC.TRB_C1e2_INIChange(Sender: TObject);
begin
     IF TRB_C1e2_INI.Position = 1 THEN
          ED_SOMAS_C1e2_INI.Text := '120';
     IF TRB_C1e2_INI.Position = 2 THEN
          ED_SOMAS_C1e2_INI.Text := '121';
     IF TRB_C1e2_INI.Position = 3 THEN
          ED_SOMAS_C1e2_INI.Text := '122';
     IF TRB_C1e2_INI.Position = 4 THEN
          ED_SOMAS_C1e2_INI.Text := '123';
     IF TRB_C1e2_INI.Position = 5 THEN
          ED_SOMAS_C1e2_INI.Text := '124';
     IF TRB_C1e2_INI.Position = 6 THEN
          ED_SOMAS_C1e2_INI.Text := '125';
     IF TRB_C1e2_INI.Position = 7 THEN
          ED_SOMAS_C1e2_INI.Text := '126';
     IF TRB_C1e2_INI.Position = 8 THEN
          ED_SOMAS_C1e2_INI.Text := '127';
     IF TRB_C1e2_INI.Position = 9 THEN
          ED_SOMAS_C1e2_INI.Text := '128';
     IF TRB_C1e2_INI.Position = 10 THEN
          ED_SOMAS_C1e2_INI.Text := '129';
     IF TRB_C1e2_INI.Position = 11 THEN
          ED_SOMAS_C1e2_INI.Text := '130';
     IF TRB_C1e2_INI.Position = 12 THEN
          ED_SOMAS_C1e2_INI.Text := '131';
     IF TRB_C1e2_INI.Position = 13 THEN
          ED_SOMAS_C1e2_INI.Text := '132';
     IF TRB_C1e2_INI.Position = 14 THEN
          ED_SOMAS_C1e2_INI.Text := '133';
     IF TRB_C1e2_INI.Position = 15 THEN
          ED_SOMAS_C1e2_INI.Text := '134';
     IF TRB_C1e2_INI.Position = 16 THEN
          ED_SOMAS_C1e2_INI.Text := '135';
     IF TRB_C1e2_INI.Position = 17 THEN
          ED_SOMAS_C1e2_INI.Text := '136';
     IF TRB_C1e2_INI.Position = 18 THEN
          ED_SOMAS_C1e2_INI.Text := '137';
     IF TRB_C1e2_INI.Position = 19 THEN
          ED_SOMAS_C1e2_INI.Text := '138';
     IF TRB_C1e2_INI.Position = 20 THEN
          ED_SOMAS_C1e2_INI.Text := '139';
     IF TRB_C1e2_INI.Position = 21 THEN
          ED_SOMAS_C1e2_INI.Text := '140';
end;


procedure T_F_EMULADOR_10_EXC.TRB_C1e2_FINALChange(Sender: TObject);
begin
     IF TRB_C1e2_FINAL.Position = 1 THEN
          ED_SOMAS_C1e2_FINAL.Text := '120';
     IF TRB_C1e2_FINAL.Position = 2 THEN
          ED_SOMAS_C1e2_FINAL.Text := '121';
     IF TRB_C1e2_FINAL.Position = 3 THEN
          ED_SOMAS_C1e2_FINAL.Text := '122';
     IF TRB_C1e2_FINAL.Position = 4 THEN
          ED_SOMAS_C1e2_FINAL.Text := '123';
     IF TRB_C1e2_FINAL.Position = 5 THEN
          ED_SOMAS_C1e2_FINAL.Text := '124';
     IF TRB_C1e2_FINAL.Position = 6 THEN
          ED_SOMAS_C1e2_FINAL.Text := '125';
     IF TRB_C1e2_FINAL.Position = 7 THEN
          ED_SOMAS_C1e2_FINAL.Text := '126';
     IF TRB_C1e2_FINAL.Position = 8 THEN
          ED_SOMAS_C1e2_FINAL.Text := '127';
     IF TRB_C1e2_FINAL.Position = 9 THEN
          ED_SOMAS_C1e2_FINAL.Text := '128';
     IF TRB_C1e2_FINAL.Position = 10 THEN
          ED_SOMAS_C1e2_FINAL.Text := '129';
     IF TRB_C1e2_FINAL.Position = 11 THEN
          ED_SOMAS_C1e2_FINAL.Text := '130';
     IF TRB_C1e2_FINAL.Position = 12 THEN
          ED_SOMAS_C1e2_FINAL.Text := '131';
     IF TRB_C1e2_FINAL.Position = 13 THEN
          ED_SOMAS_C1e2_FINAL.Text := '132';
     IF TRB_C1e2_FINAL.Position = 14 THEN
          ED_SOMAS_C1e2_FINAL.Text := '133';
     IF TRB_C1e2_FINAL.Position = 15 THEN
          ED_SOMAS_C1e2_FINAL.Text := '134';
     IF TRB_C1e2_FINAL.Position = 16 THEN
          ED_SOMAS_C1e2_FINAL.Text := '135';
     IF TRB_C1e2_FINAL.Position = 17 THEN
          ED_SOMAS_C1e2_FINAL.Text := '136';
     IF TRB_C1e2_FINAL.Position = 18 THEN
          ED_SOMAS_C1e2_FINAL.Text := '137';
     IF TRB_C1e2_FINAL.Position = 19 THEN
          ED_SOMAS_C1e2_FINAL.Text := '138';
     IF TRB_C1e2_FINAL.Position = 20 THEN
          ED_SOMAS_C1e2_FINAL.Text := '139';
     IF TRB_C1e2_FINAL.Position = 21 THEN
          ED_SOMAS_C1e2_FINAL.Text := '140';
end;


procedure T_F_EMULADOR_10_EXC.TRB_C3_INIChange(Sender: TObject);
begin
     IF TRB_C3_INI.Position = 1 THEN
          ED_SOMAS_C3_INI.Text := '60';
     IF TRB_C3_INI.Position = 2 THEN
          ED_SOMAS_C3_INI.Text := '61';
     IF TRB_C3_INI.Position = 3 THEN
          ED_SOMAS_C3_INI.Text := '62';
     IF TRB_C3_INI.Position = 4 THEN
          ED_SOMAS_C3_INI.Text := '63';
     IF TRB_C3_INI.Position = 5 THEN
          ED_SOMAS_C3_INI.Text := '64';
     IF TRB_C3_INI.Position = 6 THEN
          ED_SOMAS_C3_INI.Text := '65';
     IF TRB_C3_INI.Position = 7 THEN
          ED_SOMAS_C3_INI.Text := '66';
     IF TRB_C3_INI.Position = 8 THEN
          ED_SOMAS_C3_INI.Text := '67';
     IF TRB_C3_INI.Position = 9 THEN
          ED_SOMAS_C3_INI.Text := '68';
     IF TRB_C3_INI.Position = 10 THEN
          ED_SOMAS_C3_INI.Text := '69';
     IF TRB_C3_INI.Position = 11 THEN
          ED_SOMAS_C3_INI.Text := '70';
end;


procedure T_F_EMULADOR_10_EXC.TRB_C3_FINALChange(Sender: TObject);
begin
     IF TRB_C3_FINAL.Position = 1 THEN
          ED_SOMAS_C3_FINAL.Text := '60';
     IF TRB_C3_FINAL.Position = 2 THEN
          ED_SOMAS_C3_FINAL.Text := '61';
     IF TRB_C3_FINAL.Position = 3 THEN
          ED_SOMAS_C3_FINAL.Text := '62';
     IF TRB_C3_FINAL.Position = 4 THEN
          ED_SOMAS_C3_FINAL.Text := '63';
     IF TRB_C3_FINAL.Position = 5 THEN
          ED_SOMAS_C3_FINAL.Text := '64';
     IF TRB_C3_FINAL.Position = 6 THEN
          ED_SOMAS_C3_FINAL.Text := '65';
     IF TRB_C3_FINAL.Position = 7 THEN
          ED_SOMAS_C3_FINAL.Text := '66';
     IF TRB_C3_FINAL.Position = 8 THEN
          ED_SOMAS_C3_FINAL.Text := '67';
     IF TRB_C3_FINAL.Position = 9 THEN
          ED_SOMAS_C3_FINAL.Text := '68';
     IF TRB_C3_FINAL.Position = 10 THEN
          ED_SOMAS_C3_FINAL.Text := '69';
     IF TRB_C3_FINAL.Position = 11 THEN
          ED_SOMAS_C3_FINAL.Text := '70';
end;


procedure T_F_EMULADOR_10_EXC.TRB_C4_INIChange(Sender: TObject);
begin
     IF TRB_C4_INI.Position = 1 THEN
          ED_SOMAS_C4_INI.Text := '120';
     IF TRB_C4_INI.Position = 2 THEN
          ED_SOMAS_C4_INI.Text := '121';
     IF TRB_C4_INI.Position = 3 THEN
          ED_SOMAS_C4_INI.Text := '122';
     IF TRB_C4_INI.Position = 4 THEN
          ED_SOMAS_C4_INI.Text := '123';
     IF TRB_C4_INI.Position = 5 THEN
          ED_SOMAS_C4_INI.Text := '124';
     IF TRB_C4_INI.Position = 6 THEN
          ED_SOMAS_C4_INI.Text := '125';
     IF TRB_C4_INI.Position = 7 THEN
          ED_SOMAS_C4_INI.Text := '126';
     IF TRB_C4_INI.Position = 8 THEN
          ED_SOMAS_C4_INI.Text := '127';
     IF TRB_C4_INI.Position = 9 THEN
          ED_SOMAS_C4_INI.Text := '128';
     IF TRB_C4_INI.Position = 10 THEN
          ED_SOMAS_C4_INI.Text := '129';
     IF TRB_C4_INI.Position = 11 THEN
          ED_SOMAS_C4_INI.Text := '130';
end;


procedure T_F_EMULADOR_10_EXC.TRB_C4_FINALChange(Sender: TObject);
begin
     IF TRB_C4_FINAL.Position = 1 THEN
          ED_SOMAS_C4_FINAL.Text := '120';
     IF TRB_C4_FINAL.Position = 2 THEN
          ED_SOMAS_C4_FINAL.Text := '121';
     IF TRB_C4_FINAL.Position = 3 THEN
          ED_SOMAS_C4_FINAL.Text := '122';
     IF TRB_C4_FINAL.Position = 4 THEN
          ED_SOMAS_C4_FINAL.Text := '123';
     IF TRB_C4_FINAL.Position = 5 THEN
          ED_SOMAS_C4_FINAL.Text := '124';
     IF TRB_C4_FINAL.Position = 6 THEN
          ED_SOMAS_C4_FINAL.Text := '125';
     IF TRB_C4_FINAL.Position = 7 THEN
          ED_SOMAS_C4_FINAL.Text := '126';
     IF TRB_C4_FINAL.Position = 8 THEN
          ED_SOMAS_C4_FINAL.Text := '127';
     IF TRB_C4_FINAL.Position = 9 THEN
          ED_SOMAS_C4_FINAL.Text := '128';
     IF TRB_C4_FINAL.Position = 10 THEN
          ED_SOMAS_C4_FINAL.Text := '129';
     IF TRB_C4_FINAL.Position = 11 THEN
          ED_SOMAS_C4_FINAL.Text := '130';
end;



procedure T_F_EMULADOR_10_EXC.TRB_C3e4_INIChange(Sender: TObject);
begin
     IF TRB_C3e4_INI.Position = 1 THEN
          ED_SOMAS_C3e4_INI.Text := '185';
     IF TRB_C3e4_INI.Position = 2 THEN
          ED_SOMAS_C3e4_INI.Text := '186';
     IF TRB_C3e4_INI.Position = 3 THEN
          ED_SOMAS_C3e4_INI.Text := '187';
     IF TRB_C3e4_INI.Position = 4 THEN
          ED_SOMAS_C3e4_INI.Text := '188';
     IF TRB_C3e4_INI.Position = 5 THEN
          ED_SOMAS_C3e4_INI.Text := '189';
     IF TRB_C3e4_INI.Position = 6 THEN
          ED_SOMAS_C3e4_INI.Text := '190';
     IF TRB_C3e4_INI.Position = 7 THEN
          ED_SOMAS_C3e4_INI.Text := '191';
     IF TRB_C3e4_INI.Position = 8 THEN
          ED_SOMAS_C3e4_INI.Text := '192';
     IF TRB_C3e4_INI.Position = 9 THEN
          ED_SOMAS_C3e4_INI.Text := '193';
     IF TRB_C3e4_INI.Position = 10 THEN
          ED_SOMAS_C3e4_INI.Text := '194';
     IF TRB_C3e4_INI.Position = 11 THEN
          ED_SOMAS_C3e4_INI.Text := '195';
     IF TRB_C3e4_INI.Position = 12 THEN
          ED_SOMAS_C3e4_INI.Text := '196';
     IF TRB_C3e4_INI.Position = 13 THEN
          ED_SOMAS_C3e4_INI.Text := '197';
     IF TRB_C3e4_INI.Position = 14 THEN
          ED_SOMAS_C3e4_INI.Text := '198';
     IF TRB_C3e4_INI.Position = 15 THEN
          ED_SOMAS_C3e4_INI.Text := '199';
     IF TRB_C3e4_INI.Position = 16 THEN
          ED_SOMAS_C3e4_INI.Text := '200';
     IF TRB_C3e4_INI.Position = 17 THEN
          ED_SOMAS_C3e4_INI.Text := '201';
     IF TRB_C3e4_INI.Position = 18 THEN
          ED_SOMAS_C3e4_INI.Text := '202';
     IF TRB_C3e4_INI.Position = 19 THEN
          ED_SOMAS_C3e4_INI.Text := '203';
     IF TRB_C3e4_INI.Position = 20 THEN
          ED_SOMAS_C3e4_INI.Text := '204';
     IF TRB_C3e4_INI.Position = 21 THEN
          ED_SOMAS_C3e4_INI.Text := '205';
end;


procedure T_F_EMULADOR_10_EXC.TRB_C3e4_FINALChange(Sender: TObject);
begin
     IF TRB_C3e4_FINAL.Position = 1 THEN
          ED_SOMAS_C3e4_FINAL.Text := '185';
     IF TRB_C3e4_FINAL.Position = 2 THEN
          ED_SOMAS_C3e4_FINAL.Text := '186';
     IF TRB_C3e4_FINAL.Position = 3 THEN
          ED_SOMAS_C3e4_FINAL.Text := '187';
     IF TRB_C3e4_FINAL.Position = 4 THEN
          ED_SOMAS_C3e4_FINAL.Text := '188';
     IF TRB_C3e4_FINAL.Position = 5 THEN
          ED_SOMAS_C3e4_FINAL.Text := '189';
     IF TRB_C3e4_FINAL.Position = 6 THEN
          ED_SOMAS_C3e4_FINAL.Text := '190';
     IF TRB_C3e4_FINAL.Position = 7 THEN
          ED_SOMAS_C3e4_FINAL.Text := '191';
     IF TRB_C3e4_FINAL.Position = 8 THEN
          ED_SOMAS_C3e4_FINAL.Text := '192';
     IF TRB_C3e4_FINAL.Position = 9 THEN
          ED_SOMAS_C3e4_FINAL.Text := '193';
     IF TRB_C3e4_FINAL.Position = 10 THEN
          ED_SOMAS_C3e4_FINAL.Text := '194';
     IF TRB_C3e4_FINAL.Position = 11 THEN
          ED_SOMAS_C3e4_FINAL.Text := '195';
     IF TRB_C3e4_FINAL.Position = 12 THEN
          ED_SOMAS_C3e4_FINAL.Text := '196';
     IF TRB_C3e4_FINAL.Position = 13 THEN
          ED_SOMAS_C3e4_FINAL.Text := '197';
     IF TRB_C3e4_FINAL.Position = 14 THEN
          ED_SOMAS_C3e4_FINAL.Text := '198';
     IF TRB_C3e4_FINAL.Position = 15 THEN
          ED_SOMAS_C3e4_FINAL.Text := '199';
     IF TRB_C3e4_FINAL.Position = 16 THEN
          ED_SOMAS_C3e4_FINAL.Text := '200';
     IF TRB_C3e4_FINAL.Position = 17 THEN
          ED_SOMAS_C3e4_FINAL.Text := '201';
     IF TRB_C3e4_FINAL.Position = 18 THEN
          ED_SOMAS_C3e4_FINAL.Text := '202';
     IF TRB_C3e4_FINAL.Position = 19 THEN
          ED_SOMAS_C3e4_FINAL.Text := '203';
     IF TRB_C3e4_FINAL.Position = 20 THEN
          ED_SOMAS_C3e4_FINAL.Text := '204';
     IF TRB_C3e4_FINAL.Position = 21 THEN
          ED_SOMAS_C3e4_FINAL.Text := '205';
end;



procedure T_F_EMULADOR_10_EXC.BBT_RECOMECARClick(Sender: TObject);
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
    FOR VI_CONTAR := 1 TO 10 DO
    BEGIN
        STGR_COMB10.Cells [VI_CONTAR,1] := '0';
    END;
    STGR_COMB10.RowCount := 2;
    FOR VI_CONTAR := 1 TO 5 DO
    BEGIN
        STGR_BASE_L1.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L2.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L3.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L4.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L5.Cells [VI_CONTAR,0] := '0';
    END;
end;




procedure T_F_EMULADOR_10_EXC.BBT_CLICK_TUDOClick(Sender: TObject);
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
end;



procedure T_F_EMULADOR_10_EXC.BBT_PREPARARClick(Sender: TObject);
var
     VI_CONTADOR, VI_CONTAR, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2: integer;
     VI_COMBINACOES3, VI_COMBINACOES4, VI_QTDde1, VI_QTDde2, VI_QTDde3 : SMALLINT;
     VS_NUMEROSPRINCIPAIS: STRING;
begin
      FOR VI_CONTAR := 1 TO 10 DO
     BEGIN
        STGR_COMB10.Cells [VI_CONTAR+2,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_COMB10.Cells [VI_CONTAR+2,1] := '00';
     END;
     STGR_COMB10.RowCount := 2;
     STGR_COMB10.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB.Repaint;
     PGBR_GERARCOMB0.Repaint;
     PGBR_REMREPET.Position := 00;
     PGBR_REMREPET.Repaint;
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
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_QTD_COMB.Repaint;
     IF (STRtoINT(STGR_BASE_L5.Cells [5,0] ) =0) THEN
     BEGIN
          SHOWMESSAGE ('TERMINE O PREENCHIMENTO.');
          ED_SOMAS_C1_INI.SetFocus;
          EXIT;
     END; // IF

     IF (STRtoINT(ED_SOMAS_C1_INI.Text) > STRtoINT(ED_SOMAS_C1_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C1_INI.SetFocus;
          EXIT;
     END; // IF
     IF (STRtoINT(ED_SOMAS_C2_INI.Text) > STRtoINT(ED_SOMAS_C2_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C2_INI.SetFocus;
          EXIT;
     END; // IF
     IF (STRtoINT(ED_SOMAS_C3_INI.Text) > STRtoINT(ED_SOMAS_C3_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C3_INI.SetFocus;
          EXIT;
     END; // IF
     IF (STRtoINT(ED_SOMAS_C4_INI.Text) > STRtoINT(ED_SOMAS_C4_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C4_INI.SetFocus;
          EXIT;
     END; // IF
        // ***************************
        // **  CONFERINDO OS EXCLUIDOS **
        // ***************************
     if (STRtoINT(ED_EXC_OBR_1.Text) >0) or (STRtoINT(ED_EXC_OBR_2.Text) >0) or (STRtoINT(ED_EXC_OBR_3.Text) >0) then
     begin
          IF (STRtoINT(ED_EXC_OBR_1.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_1.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_1.Text) = STRtoINT(ED_EXC_03.Text ) ) or
            (STRtoINT(ED_EXC_OBR_1.Text) = STRtoINT(ED_EXC_04.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_1.Text) = STRtoINT(ED_EXC_05.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO EXCLUÍDO OBRIGARÓRIO TEM DE SER DIFERENTE DOS NÃO EXCLUÍDOS.');
                 ED_EXC_OBR_1.SetFocus;
                 EXIT;
          END; // IF
          IF (STRtoINT(ED_EXC_OBR_2.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_2.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_2.Text) = STRtoINT(ED_EXC_03.Text ) ) or
            (STRtoINT(ED_EXC_OBR_2.Text) = STRtoINT(ED_EXC_04.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_2.Text) = STRtoINT(ED_EXC_05.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO EXCLUÍDO OBRIGARÓRIO TEM DE SER DIFERENTE DOS NÃO EXCLUÍDOS.');
                 ED_EXC_OBR_2.SetFocus;
                 EXIT;
          END; // IF
          IF (STRtoINT(ED_EXC_OBR_3.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_3.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_3.Text) = STRtoINT(ED_EXC_03.Text ) ) or
            (STRtoINT(ED_EXC_OBR_3.Text) = STRtoINT(ED_EXC_04.Text ) ) OR
            (STRtoINT(ED_EXC_OBR_3.Text) = STRtoINT(ED_EXC_05.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO EXCLUÍDO OBRIGARÓRIO TEM DE SER DIFERENTE DOS NÃO EXCLUÍDOS.');
                 ED_EXC_OBR_3.SetFocus;
                 EXIT;
          END; // IF
     end; // if     

    // ======================================================
    // ||||==============================================||||
    // |||| 	Análises Combinatórias e suas sobras     ||||
    // ||||==============================================||||
    // ======================================================
        // ******************
        // **  LINHA_1 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                         STGR_LINHA_1_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_1_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_1_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_1_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_1_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_1_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         // ----------------------------
                         // -- FLAG NA COLUNA 2 --
                         // ----------------------------
                         STGR_LINHA_1_C2.Cells [1,VI_LINHAS2]:= 'F';
                         STGR_LINHA_1_C3.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                         IF (POS(STGR_BASE_L1.Cells[VI_COMBINACOES2,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_1_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                         IF (POS(STGR_BASE_L1.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_1_C3.Cells[1,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                         END;

                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_LINHA_1_C2.Cells [1,VI_LINHAS2]='F')
                              OR (STGR_LINHA_1_C3.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // -----------------------------------
                              // -- CAPTURAR OS NÚMERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L1.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L1.Cells[VI_COMBINACOES3,0];

                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             BEGIN
                                                  STGR_LINHA_1_C4.Cells[1,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                             END;
                                        END;
                                   END; // FOR VI_CONTADOR
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_1_C4.Cells[2,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_1_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_1_C2.RowCount := VI_LINHAS2;
                              STGR_LINHA_1_C3.RowCount := VI_LINHAS2;
                              STGR_LINHA_1_C4.RowCount := VI_LINHAS2;
                         END; // IF
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_1_C1.Repaint;
     STGR_LINHA_1_C2.Repaint;
     STGR_LINHA_1_C3.Repaint;
     STGR_LINHA_1_C4.Repaint;

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

          // -------------------------------
          // -- Combinações Totais --
          // -------------------------------

     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_1_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_LINHA_1_TODOS.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_LINHA_1_TODOS.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_LINHA_1_TODOS.Cells [2, VI_LINHAS2] := STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1];
               //STGR_LINHA_1_TODOS.Cells [4, VI_LINHAS2] := '-'  ;
               STGR_LINHA_1_TODOS.Cells [3, VI_LINHAS2] := STGR_LINHA_1_C2.Cells[1,VI_COMBINACOES1];
               //STGR_LINHA_1_TODOS.Cells [6, VI_LINHAS2] := '-'  ;
               STGR_LINHA_1_TODOS.Cells [4, VI_LINHAS2] := STGR_LINHA_1_C3.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_LINHA_1_TODOS.Cells [7, VI_LINHAS2] := '['+STGR_LINHA_1_C1.Cells[0,VI_COMBINACOES1]+']';
                    STGR_LINHA_1_TODOS.Cells [8, VI_LINHAS2] := STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1];
                    STGR_LINHA_1_TODOS.Cells [9, VI_LINHAS2] := STGR_LINHA_1_C2.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_1_TODOS.Cells [10, VI_LINHAS2] := STGR_LINHA_1_C3.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_1_TODOS.Cells [11, VI_LINHAS2] := STGR_LINHA_1_C4.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_1_TODOS.Cells [12, VI_LINHAS2] := STGR_LINHA_1_C4.Cells[2,VI_COMBINACOES1];
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
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                         STGR_LINHA_2_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_2_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_2_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_2_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_2_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_2_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         // ----------------------------
                         // -- FLAG NA COLUNA 2 --
                         // ----------------------------
                         STGR_LINHA_2_C2.Cells [1,VI_LINHAS2]:= 'F';
                         STGR_LINHA_2_C3.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                         IF (POS(STGR_BASE_L2.Cells[VI_COMBINACOES2,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_2_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                         IF (POS(STGR_BASE_L2.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_2_C3.Cells[1,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                         END;

                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_LINHA_2_C2.Cells [1,VI_LINHAS2]='F')
                              OR (STGR_LINHA_2_C3.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // -----------------------------------
                              // -- CAPTURAR OS NÚMERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L2.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L2.Cells[VI_COMBINACOES3,0];

                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             BEGIN
                                                  STGR_LINHA_2_C4.Cells[1,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                             END;
                                        END;
                                   END; // FOR VI_CONTADOR
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_2_C4.Cells[2,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_2_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_2_C2.RowCount := VI_LINHAS2;
                              STGR_LINHA_2_C3.RowCount := VI_LINHAS2;
                              STGR_LINHA_2_C4.RowCount := VI_LINHAS2;
                         END; // IF
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_2_C1.Repaint;
     STGR_LINHA_2_C2.Repaint;
     STGR_LINHA_2_C3.Repaint;
     STGR_LINHA_2_C4.Repaint;

                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_2_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_2_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1

          // -------------------------------
          // -- Combinações Totais --
          // -------------------------------

     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_2_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_LINHA_2_TODOS.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_LINHA_2_TODOS.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_LINHA_2_TODOS.Cells [2, VI_LINHAS2] := STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1];
               //STGR_LINHA_2_TODOS.Cells [4, VI_LINHAS2] := '-'  ;
               STGR_LINHA_2_TODOS.Cells [3, VI_LINHAS2] := STGR_LINHA_2_C2.Cells[1,VI_COMBINACOES1];
               //STGR_LINHA_2_TODOS.Cells [6, VI_LINHAS2] := '-'  ;
               STGR_LINHA_2_TODOS.Cells [4, VI_LINHAS2] := STGR_LINHA_2_C3.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_LINHA_2_TODOS.Cells [7, VI_LINHAS2] := '['+STGR_LINHA_2_C1.Cells[0,VI_COMBINACOES1]+']';
                    STGR_LINHA_2_TODOS.Cells [8, VI_LINHAS2] := STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES1];
                    STGR_LINHA_2_TODOS.Cells [9, VI_LINHAS2] := STGR_LINHA_2_C2.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_2_TODOS.Cells [10, VI_LINHAS2] := STGR_LINHA_2_C3.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_2_TODOS.Cells [11, VI_LINHAS2] := STGR_LINHA_2_C4.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_2_TODOS.Cells [12, VI_LINHAS2] := STGR_LINHA_2_C4.Cells[2,VI_COMBINACOES1];
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
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                         STGR_LINHA_3_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_3_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_3_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_3_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_3_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_3_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         // ----------------------------
                         // -- FLAG NA COLUNA 2 --
                         // ----------------------------
                         STGR_LINHA_3_C2.Cells [1,VI_LINHAS2]:= 'F';
                         STGR_LINHA_3_C3.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                         IF (POS(STGR_BASE_L3.Cells[VI_COMBINACOES2,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_3_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                         IF (POS(STGR_BASE_L3.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_3_C3.Cells[1,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
                         END;

                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_LINHA_3_C2.Cells [1,VI_LINHAS2]='F')
                              OR (STGR_LINHA_3_C3.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // -----------------------------------
                              // -- CAPTURAR OS NÚMERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L3.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L3.Cells[VI_COMBINACOES3,0];

                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             BEGIN
                                                  STGR_LINHA_3_C4.Cells[1,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                             END;
                                        END;
                                   END; // FOR VI_CONTADOR
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_3_C4.Cells[2,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_3_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_3_C2.RowCount := VI_LINHAS2;
                              STGR_LINHA_3_C3.RowCount := VI_LINHAS2;
                              STGR_LINHA_3_C4.RowCount := VI_LINHAS2;
                         END; // IF
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_3_C1.Repaint;
     STGR_LINHA_3_C2.Repaint;
     STGR_LINHA_3_C3.Repaint;
     STGR_LINHA_3_C4.Repaint;

                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_3_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_3_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1

          // -------------------------------
          // -- Combinações Totais --
          // -------------------------------

     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_3_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_LINHA_3_TODOS.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_LINHA_3_TODOS.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_LINHA_3_TODOS.Cells [2, VI_LINHAS2] := STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1];
               //STGR_LINHA_3_TODOS.Cells [4, VI_LINHAS2] := '-'  ;
               STGR_LINHA_3_TODOS.Cells [3, VI_LINHAS2] := STGR_LINHA_3_C2.Cells[1,VI_COMBINACOES1];
               //STGR_LINHA_3_TODOS.Cells [6, VI_LINHAS2] := '-'  ;
               STGR_LINHA_3_TODOS.Cells [4, VI_LINHAS2] := STGR_LINHA_3_C3.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_LINHA_3_TODOS.Cells [7, VI_LINHAS2] := '['+STGR_LINHA_3_C1.Cells[0,VI_COMBINACOES1]+']';
                    STGR_LINHA_3_TODOS.Cells [8, VI_LINHAS2] := STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES1];
                    STGR_LINHA_3_TODOS.Cells [9, VI_LINHAS2] := STGR_LINHA_3_C2.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_3_TODOS.Cells [10, VI_LINHAS2] := STGR_LINHA_3_C3.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_3_TODOS.Cells [11, VI_LINHAS2] := STGR_LINHA_3_C4.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_3_TODOS.Cells [12, VI_LINHAS2] := STGR_LINHA_3_C4.Cells[2,VI_COMBINACOES1];
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
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                         STGR_LINHA_4_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_4_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_4_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_4_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_4_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_4_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         // ----------------------------
                         // -- FLAG NA COLUNA 2 --
                         // ----------------------------
                         STGR_LINHA_4_C2.Cells [1,VI_LINHAS2]:= 'F';
                         STGR_LINHA_4_C3.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                         IF (POS(STGR_BASE_L4.Cells[VI_COMBINACOES2,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_4_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                         IF (POS(STGR_BASE_L4.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_4_C3.Cells[1,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
                         END;

                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_LINHA_4_C2.Cells [1,VI_LINHAS2]='F')
                              OR (STGR_LINHA_4_C3.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // -----------------------------------
                              // -- CAPTURAR OS NÚMERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L4.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L4.Cells[VI_COMBINACOES3,0];

                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             BEGIN
                                                  STGR_LINHA_4_C4.Cells[1,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                             END;
                                        END;
                                   END; // FOR VI_CONTADOR
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_4_C4.Cells[2,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_4_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_4_C2.RowCount := VI_LINHAS2;
                              STGR_LINHA_4_C3.RowCount := VI_LINHAS2;
                              STGR_LINHA_4_C4.RowCount := VI_LINHAS2;
                         END; // IF
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_4_C1.Repaint;
     STGR_LINHA_4_C2.Repaint;
     STGR_LINHA_4_C3.Repaint;
     STGR_LINHA_4_C4.Repaint;

                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_4_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1

          // -------------------------------
          // -- Combinações Totais --
          // -------------------------------

     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_4_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_LINHA_4_TODOS.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_LINHA_4_TODOS.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_LINHA_4_TODOS.Cells [2, VI_LINHAS2] := STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1];
               //STGR_LINHA_4_TODOS.Cells [4, VI_LINHAS2] := '-'  ;
               STGR_LINHA_4_TODOS.Cells [3, VI_LINHAS2] := STGR_LINHA_4_C2.Cells[1,VI_COMBINACOES1];
               //STGR_LINHA_4_TODOS.Cells [6, VI_LINHAS2] := '-'  ;
               STGR_LINHA_4_TODOS.Cells [4, VI_LINHAS2] := STGR_LINHA_4_C3.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_LINHA_4_TODOS.Cells [7, VI_LINHAS2] := '['+STGR_LINHA_4_C1.Cells[0,VI_COMBINACOES1]+']';
                    STGR_LINHA_4_TODOS.Cells [8, VI_LINHAS2] := STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1];
                    STGR_LINHA_4_TODOS.Cells [9, VI_LINHAS2] := STGR_LINHA_4_C2.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_4_TODOS.Cells [10, VI_LINHAS2] := STGR_LINHA_4_C3.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_4_TODOS.Cells [11, VI_LINHAS2] := STGR_LINHA_4_C4.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_4_TODOS.Cells [12, VI_LINHAS2] := STGR_LINHA_4_C4.Cells[2,VI_COMBINACOES1];
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
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                         STGR_LINHA_5_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_5_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_5_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_LINHA_5_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L5.Cells[VI_COMBINACOES1,0];
                         STGR_LINHA_5_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_5_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         // ----------------------------
                         // -- FLAG NA COLUNA 2 --
                         // ----------------------------
                         STGR_LINHA_5_C2.Cells [1,VI_LINHAS2]:= 'F';
                         STGR_LINHA_5_C3.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L5.Cells[VI_COMBINACOES1,0];
                         IF (POS(STGR_BASE_L5.Cells[VI_COMBINACOES2,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_5_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES2,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L5.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L5.Cells[VI_COMBINACOES2,0];
                         IF (POS(STGR_BASE_L5.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_LINHA_5_C3.Cells[1,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES3,0];
                         END;

                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_LINHA_5_C2.Cells [1,VI_LINHAS2]='F')
                              OR (STGR_LINHA_5_C3.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // -----------------------------------
                              // -- CAPTURAR OS NÚMERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_L5.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_L5.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_L5.Cells[VI_COMBINACOES3,0];

                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L5.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                             BEGIN
                                                  STGR_LINHA_5_C4.Cells[1,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_CONTADOR,0];
                                                  VS_NUMEROSPRINCIPAIS:= VS_NUMEROSPRINCIPAIS+ '-' +
                                                       STGR_BASE_L5.Cells[VI_CONTADOR,0];
                                             END;
                                        END;
                                   END; // FOR VI_CONTADOR
                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_L5.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_LINHA_5_C4.Cells[2,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_LINHA_5_C1.RowCount := VI_LINHAS2;
                              STGR_LINHA_5_C2.RowCount := VI_LINHAS2;
                              STGR_LINHA_5_C3.RowCount := VI_LINHAS2;
                              STGR_LINHA_5_C4.RowCount := VI_LINHAS2;
                         END; // IF
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_5_C1.Repaint;
     STGR_LINHA_5_C2.Repaint;
     STGR_LINHA_5_C3.Repaint;
     STGR_LINHA_5_C4.Repaint;

                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                   THEN
               BEGIN
                   STGR_LINHA_5_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_5_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                   THEN
               BEGIN
                   STGR_LINHA_5_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_5_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C1.RowCount-1) DO
          BEGIN
               IF  (STRtoINT(STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                   THEN
               BEGIN
                   STGR_LINHA_5_C1.Cells [1,VI_COMBINACOES1] := 'F';
               END; // if (STGR_LINHA_5_TODOS.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES1

          // -------------------------------
          // -- Combinações Totais --
          // -------------------------------

     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_5_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_LINHA_5_TODOS.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_LINHA_5_TODOS.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_LINHA_5_TODOS.Cells [2, VI_LINHAS2] := STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES1];
               //STGR_LINHA_5_TODOS.Cells [4, VI_LINHAS2] := '-'  ;
               STGR_LINHA_5_TODOS.Cells [3, VI_LINHAS2] := STGR_LINHA_5_C2.Cells[1,VI_COMBINACOES1];
               //STGR_LINHA_5_TODOS.Cells [6, VI_LINHAS2] := '-'  ;
               STGR_LINHA_5_TODOS.Cells [4, VI_LINHAS2] := STGR_LINHA_5_C3.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_LINHA_5_TODOS.Cells [7, VI_LINHAS2] := '['+STGR_LINHA_5_C1.Cells[0,VI_COMBINACOES1]+']';
                    STGR_LINHA_5_TODOS.Cells [8, VI_LINHAS2] := STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES1];
                    STGR_LINHA_5_TODOS.Cells [9, VI_LINHAS2] := STGR_LINHA_5_C2.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_5_TODOS.Cells [10, VI_LINHAS2] := STGR_LINHA_5_C3.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_5_TODOS.Cells [11, VI_LINHAS2] := STGR_LINHA_5_C4.Cells[1,VI_COMBINACOES1];
                    STGR_LINHA_5_TODOS.Cells [12, VI_LINHAS2] := STGR_LINHA_5_C4.Cells[2,VI_COMBINACOES1];
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
        // **  Colunas de Flag p/ Flag das combinações das coluna 3 x 4
        // ******************
     VI_CONTAR := 1;
     FOR VI_COMBINACOES1:= 1 TO 10 DO
     BEGIN
          FOR VI_COMBINACOES2 := 1 TO 10 DO
          BEGIN
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,0] := 'c'+ STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 0] +'x'+ STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 0];
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,1] := INTtoSTR(1 + STRtoINT(STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 1]) +STRtoINT(STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 1]));
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,2] := INTtoSTR(1 + STRtoINT(STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 2]) +STRtoINT(STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 2]));
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,3] := INTtoSTR(1 + STRtoINT(STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 3]) +STRtoINT(STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 3]));
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,4] := INTtoSTR(1 + STRtoINT(STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 4]) +STRtoINT(STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 4]));
               STGR_FLAG_cmbCOL3x4.Cells[VI_CONTAR,5] := INTtoSTR(1 + STRtoINT(STGR_FLAG_COL2.Cells[VI_COMBINACOES1, 5]) +STRtoINT(STGR_FLAG_COL3.Cells[VI_COMBINACOES2, 5]));
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
     // --  Contar Quantidade de soma que deram 3, 2 e 1 e limitar nas combinações de [1] de 1, [3] de 2 e [1] de 1
     // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO 100 DO
     BEGIN
          VI_QTDde1 := 0;
          VI_QTDde2 := 0;
          VI_QTDde3 := 0;
          FOR VI_COMBINACOES2 := 1 TO 5 DO
          BEGIN
               IF (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,VI_COMBINACOES2] = '1') THEN  VI_QTDde1 := VI_QTDde1 +1;
               IF (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,VI_COMBINACOES2] = '2') THEN  VI_QTDde2 := VI_QTDde2 +1;
               IF (STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,VI_COMBINACOES2] = '3') THEN  VI_QTDde3 := VI_QTDde3 +1;
          END; //FOR
          IF  (VI_QTDde1=1) AND (VI_QTDde2=3) AND(VI_QTDde3=1)
          THEN
          BEGIN
               STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,7] := 'V'   ;
          END ELSE
          BEGIN
               STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,7] := 'F'   ;
          END; // IF
     END;//FOR
     // --  Defininfo o Flag dos válidos
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




        // ******************
        // **  Colunas de 20 POSSIBILIDADES
        // ******************
     VI_CONTAR := 1;
     FOR VI_COMBINACOES1:= 1 TO 100 DO
     BEGIN
          IF ( STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,10] = 'V' ) THEN
          BEGIN
               STGR_FLAG_cmb20.Cells[VI_CONTAR,1] := STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,1];
               STGR_FLAG_cmb20.Cells[VI_CONTAR,2] := STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,2];
               STGR_FLAG_cmb20.Cells[VI_CONTAR,3] := STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,3];
               STGR_FLAG_cmb20.Cells[VI_CONTAR,4] := STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,4];
               STGR_FLAG_cmb20.Cells[VI_CONTAR,5] := STGR_FLAG_cmbCOL3x4.Cells[VI_COMBINACOES1,5];
               VI_CONTAR := VI_CONTAR + 1;
          END; // IF
     END; // FOR VI_COMBINACOES1
     STGR_FLAG_cmb20.Repaint;

     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_00c_10EXC_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_00c_10EXC_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_00c_10EXC_DEFINICAO; ')  ;
            SELF.IBQ_COMBINACOES.Open;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00c_10EXC_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     SHOWMESSAGE('OK');
end;








procedure T_F_EMULADOR_10_EXC.BBT_GERAR_MENUClick(Sender: TObject);
var
     VI_CONTAR, VI_LINHAS1, VI_LINHAS2, VI_LINHAS_3, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR_COMB1, VI_TOTAL_COMB1, VI_CONTASEL1: integer;
     VsI_COMBINACOES3, VsI_COMBINACOES4, VsI_COMBINACOES5, VsI_COMBINACOES6, VsI_COMBINACOES7, VsI_COMBINACOES8: SMALLINT;
     VsI_SOMA1, VsI_SOMA2, VSI_CONTAR1, VSI_CONTAR2, VSI_CONTAR3: SMALLINT;
     VsI_FLAG_SOMATORIA1, VsI_FLAG_SOMATORIA2,VsI_FLAG_SOMATORIA3, VsI_FLAG_SOMATORIA4: SMALLINT;

    PROCEDURE PR_ORDENAR_10 (OUT VI_LINHAS9: INTEGER);
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
        // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
        FOR VI_CONTAR :=1 TO 10 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB10.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 1;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB10.Cells [VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
        IF VI_CNTCELULAS < 11 THEN
              VI_LINHAS9 := VI_LINHAS9 -1;        
    end; // PROCEDURE ORDENAR_SIMULACAO_15


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
            VC_QUERY  := 'INSERT INTO FILTRO_00c_10EXC_DEFINICAO (LINHA_1, LINHA_2, LINHA_3, LINHA_4, LINHA_5, SOMA_COL_1_INI, SOMA_COL_1_FINAL, SOMA_COL_2_INI, SOMA_COL_2_FINAL,';
            VC_QUERY  := VC_QUERY +' SOMA_COL_3_INI, SOMA_COL_3_FINAL, SOMA_COL_4_INI, SOMA_COL_4_FINAL, SOMA_COL_1e2_INI, SOMA_COL_1e2_FINAL, SOMA_COL_3e4_INI, SOMA_COL_3e4_FINAL, EXC_1, EXC_2, EXC_3, EXC_4, EXC_5, CONTADOR_C1, TOTAL_CONTADOR_C1, ';
            VC_QUERY  := VC_QUERY +' EXC_OBR_1, EXC_OBR_2, EXC_OBR_3, DATA_DEFINICAO, MODELO, HORA_DEFINICAO, QTD_DADOS) VALUES('+#39+ VC_DADOS1 + #39 +','  +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 + #39 +','  +#39+ VC_DADOS4 + #39 +','  +#39+ VC_DADOS5 ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMAS_C1_INI.Text    + #39 +','+#39+ ED_SOMAS_C1_FINAL.Text  + #39 +','+#39+ ED_SOMAS_C2_INI.Text+ #39 +','+#39+ ED_SOMAS_C2_FINAL.Text ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMAS_C3_INI.Text    + #39 +','+#39+ ED_SOMAS_C3_FINAL.Text  + #39 +',' +#39+ ED_SOMAS_C4_INI.Text    + #39 +','+#39+ ED_SOMAS_C4_FINAL.Text  + #39 +',' +#39+ ED_SOMAS_C1e2_INI.Text    + #39 +','+#39+ ED_SOMAS_C1e2_FINAL.Text  + #39 +',' +#39+ ED_SOMAS_C3e4_INI.Text    + #39 +','+#39+ ED_SOMAS_C3e4_FINAL.Text  + #39 +','+#39+ ED_EXC_01.Text          + #39 +','+#39+ ED_EXC_02.Text          + #39 +','+#39+ ED_EXC_03.Text       + #39 +','+#39+ ED_EXC_04.Text          + #39 +','+#39+ ED_EXC_05.Text       + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_OBR_1.Text       + #39 +','+#39+ ED_EXC_OBR_2.Text       + #39 +','+#39+ ED_EXC_OBR_3.Text     + #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[]) + #39 +',' +#39+ '2' + #39 +','+#39+FORMATDATETIME('h:n:s',time())   +#39+' ,''0'' );';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;                
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB15.RowCount-1;
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
                FOR VI_CNTCELULAS := 1 TO 10 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_COMB10.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
                END; // FOR VI_CNTCELULAS
                VC_QUERY  := 'INSERT INTO FILTRO_00C_10EXC_DADOS_temp (EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, EXC7, EXC8, EXC9, EXC10, DADOS) VALUES(' +#39+ STGR_COMB10.Cells[1,VI_AN_COMB1] + #39 +','+#39+ STGR_COMB10.Cells[2,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[3,VI_AN_COMB1] + #39 +','+#39+STGR_COMB10.Cells[4,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[5,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[6,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[7,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[8,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB10.Cells[9,VI_AN_COMB1]    + #39 +','+#39+STGR_COMB10.Cells[10,VI_AN_COMB1]
                     + #39 +','+#39+TRIM(VC_COMBINACOES) + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Clear;
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_00c_10EXC_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
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
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_00C_10EXC_DADOS')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_0_10EXC_DADOS_100REPET01' )  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_00C_10EXC_DADOS_temp')  ;
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
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_0_10EXC_DADOS_100REPET01' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                {  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_00C_10EXC_DADOS_temp')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;      }            
             end;
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS


begin
     IF (STRtoINT(ED_SOMAS_C1_INI.Text) > STRtoINT(ED_SOMAS_C1_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C1_INI.SetFocus;
          EXIT;
     END; // IF
     IF (STRtoINT(ED_SOMAS_C2_INI.Text) > STRtoINT(ED_SOMAS_C2_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C2_INI.SetFocus;
          EXIT;
     END; // IF
     IF (STRtoINT(ED_SOMAS_C1e2_INI.Text) > STRtoINT(ED_SOMAS_C1e2_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C1e2_INI.SetFocus;
          EXIT;
     END; // IF
     IF (STRtoINT(ED_SOMAS_C3_INI.Text) > STRtoINT(ED_SOMAS_C3_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C3_INI.SetFocus;
          EXIT;
     END; // IF
     IF (STRtoINT(ED_SOMAS_C4_INI.Text) > STRtoINT(ED_SOMAS_C4_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C4_INI.SetFocus;
          EXIT;
     END; // IF
     IF (STRtoINT(ED_SOMAS_C3e4_INI.Text) > STRtoINT(ED_SOMAS_C3e4_FINAL.Text ) ) THEN
     BEGIN
          SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR QUE O FINAL.');
          ED_SOMAS_C3e4_INI.SetFocus;
          EXIT;
     END; // IF

     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR VI_CONTASEL1 := 1 TO 10 DO
     BEGIN
        STGR_COMB10.Cells [VI_CONTASEL1+0,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB10.Cells [VI_CONTASEL1+0,1] := '00';
     END;
     STGR_COMB10.RowCount := 2;
     STGR_COMB10.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB.Repaint;
     PGBR_GERARCOMB0.Repaint;
     PGBR_REMREPET.Position := 0;
     PGBR_REMREPET.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_QTD_COMB.Repaint;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     VI_LINHAS2 := 1;
     VI_CONTAR_COMB1 := 0;
     VI_LINHAS1 := VI_LINHAS2;
     VI_TOTAL_COMB1  := STRtoINT(LA_LINHA_1_100REP.Caption);
     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_LINHA_1_C2.RowCount-1));
    // =================== AQUI
     FOR VI_COMBINACOES1 := 1 TO TRUNC((STGR_LINHA_1_TODOS.RowCount-1)/1) DO
     BEGIN
     VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1 ;
          FOR VI_COMBINACOES2 := 1{16} TO {18} (STGR_LINHA_2_TODOS.RowCount-1) DO
          BEGIN
               FOR VsI_COMBINACOES3 := 1 TO {4}(STGR_LINHA_3_TODOS.RowCount-1) DO
               BEGIN
                    if (VsI_COMBINACOES3 mod 6) = 0 then
                    begin
                        //PGBR_GERARCOMB3.Position := TRUNC(VsI_COMBINACOES3/(STGR_LINHA_3_TODOS.RowCount-1)*100);
                        //PGBR_GERARCOMB3.Repaint;
                    end; // if
                    FOR VsI_COMBINACOES4 := 1{22} TO {24} (STGR_LINHA_4_TODOS.RowCount-1) DO
                    BEGIN
                         // ---------------------------------------
                         // --  MONTANDO O RESULTADO POR COLUNA  --
                         // ---------------------------------------
                         FOR VsI_COMBINACOES5 := 1{12} TO (STGR_LINHA_5_TODOS.RowCount-1) DO
                         BEGIN
                              // ---------------------------------------
                              // --  COLUNA 1 e 2 -
                              // ---------------------------------------
                              VsI_FLAG_SOMATORIA1:=0;
                             VsI_SOMA1 := STRtoINT(STGR_LINHA_1_TODOS.Cells[2, VI_COMBINACOES1])
                              + STRtoINT(STGR_LINHA_2_TODOS.Cells[2, VI_COMBINACOES2])
                              + STRtoINT(STGR_LINHA_3_TODOS.Cells[2, VsI_COMBINACOES3])
                              + STRtoINT(STGR_LINHA_4_TODOS.Cells[2, VsI_COMBINACOES4])
                              + STRtoINT(STGR_LINHA_5_TODOS.Cells[2, VsI_COMBINACOES5]) ;
                              IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C1_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C1_FINAL.Text))) THEN
                              BEGIN
                                   VsI_FLAG_SOMATORIA1:=1 ;
                              END ELSE BEGIN
                                   CONTINUE;
                              END; // IF
                              VsI_FLAG_SOMATORIA2:=0;
                             VsI_SOMA2 := STRtoINT(STGR_LINHA_1_TODOS.Cells[3, VI_COMBINACOES1])
                              + STRtoINT(STGR_LINHA_2_TODOS.Cells[3, VI_COMBINACOES2])
                              + STRtoINT(STGR_LINHA_3_TODOS.Cells[3, VsI_COMBINACOES3])
                              + STRtoINT(STGR_LINHA_4_TODOS.Cells[3, VsI_COMBINACOES4])
                              + STRtoINT(STGR_LINHA_5_TODOS.Cells[3, VsI_COMBINACOES5]) ;
                              IF (VsI_SOMA2 >= (STRtoINT(ED_SOMAS_C2_INI.Text))) AND (VsI_SOMA2 <= (STRtoINT(ED_SOMAS_C2_FINAL.Text))) THEN
                              BEGIN
                                   VsI_FLAG_SOMATORIA2:=1 ;
                              END ELSE BEGIN
                                   CONTINUE;
                              END; // IF
                              IF ((VsI_SOMA1 + VsI_SOMA2) >= (STRtoINT(ED_SOMAS_C1e2_INI.Text))) AND ((VsI_SOMA1 + VsI_SOMA2) <= (STRtoINT(ED_SOMAS_C1e2_FINAL.Text))) THEN
                              BEGIN
                                 SLEEP(1);
                              END ELSE
                                   CONTINUE;

                              // ---------------------------------------
                              // --  COLUNA 3 e 4 -
                              // ---------------------------------------
                              VsI_FLAG_SOMATORIA3:=0;
                             VsI_SOMA1 := STRtoINT(STGR_LINHA_1_TODOS.Cells[4, VI_COMBINACOES1])
                              + STRtoINT(STGR_LINHA_2_TODOS.Cells[4, VI_COMBINACOES2])
                              + STRtoINT(STGR_LINHA_3_TODOS.Cells[4, VsI_COMBINACOES3])
                              + STRtoINT(STGR_LINHA_4_TODOS.Cells[4, VsI_COMBINACOES4])
                              + STRtoINT(STGR_LINHA_5_TODOS.Cells[4, VsI_COMBINACOES5]) ;
                              IF (VsI_SOMA1 >= (STRtoINT(ED_SOMAS_C3_INI.Text))) AND (VsI_SOMA1 <= (STRtoINT(ED_SOMAS_C3_FINAL.Text))) THEN
                              BEGIN
                                   VsI_FLAG_SOMATORIA3:=1 ;
                              END ELSE BEGIN
                                   CONTINUE;
                              END; // IF
                              VsI_FLAG_SOMATORIA4:=0;
                             VsI_SOMA2 := STRtoINT(STGR_LINHA_1_TODOS.Cells[11, VI_COMBINACOES1])
                              + STRtoINT(STGR_LINHA_2_TODOS.Cells[11, VI_COMBINACOES2])
                              + STRtoINT(STGR_LINHA_3_TODOS.Cells[11, VsI_COMBINACOES3])
                              + STRtoINT(STGR_LINHA_4_TODOS.Cells[11, VsI_COMBINACOES4])
                              + STRtoINT(STGR_LINHA_5_TODOS.Cells[11, VsI_COMBINACOES5])
                              + STRtoINT(STGR_LINHA_1_TODOS.Cells[12, VI_COMBINACOES1])
                              + STRtoINT(STGR_LINHA_2_TODOS.Cells[12, VI_COMBINACOES2])
                              + STRtoINT(STGR_LINHA_3_TODOS.Cells[12, VsI_COMBINACOES3])
                              + STRtoINT(STGR_LINHA_4_TODOS.Cells[12, VsI_COMBINACOES4])
                              + STRtoINT(STGR_LINHA_5_TODOS.Cells[12, VsI_COMBINACOES5])                               ;
                              IF (VsI_SOMA2 >= (STRtoINT(ED_SOMAS_C4_INI.Text))) AND (VsI_SOMA2 <= (STRtoINT(ED_SOMAS_C4_FINAL.Text))) THEN
                              BEGIN
                                   VsI_FLAG_SOMATORIA4:=1 ;
                              END ELSE BEGIN
                                   CONTINUE;
                              END; // IF
                              IF ((VsI_SOMA1 + VsI_SOMA2) >= (STRtoINT(ED_SOMAS_C3e4_INI.Text))) AND ((VsI_SOMA1 + VsI_SOMA2) <= (STRtoINT(ED_SOMAS_C3e4_FINAL.Text))) THEN
                              BEGIN
                                 SLEEP(1);
                              END ELSE
                                   CONTINUE;

                              IF (VsI_FLAG_SOMATORIA1=1) AND (VsI_FLAG_SOMATORIA2=1) AND (VsI_FLAG_SOMATORIA3=1) AND (VsI_FLAG_SOMATORIA4=1) THEN
                              BEGIN
                                   STGR_BASE_5.Cells[1,1] := STGR_LINHA_1_TODOS.Cells[2, VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[1,2] := STGR_LINHA_2_TODOS.Cells[2, VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[1,3] := STGR_LINHA_3_TODOS.Cells[2, VsI_COMBINACOES3];
                                   STGR_BASE_5.Cells[1,4] := STGR_LINHA_4_TODOS.Cells[2, VsI_COMBINACOES4];
                                   STGR_BASE_5.Cells[1,5] := STGR_LINHA_5_TODOS.Cells[2, VsI_COMBINACOES5];
                                   STGR_BASE_5.Cells[2,1] := STGR_LINHA_1_TODOS.Cells[3, VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[2,2] := STGR_LINHA_2_TODOS.Cells[3, VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[2,3] := STGR_LINHA_3_TODOS.Cells[3, VsI_COMBINACOES3];
                                   STGR_BASE_5.Cells[2,4] := STGR_LINHA_4_TODOS.Cells[3, VsI_COMBINACOES4];
                                   STGR_BASE_5.Cells[2,5] := STGR_LINHA_5_TODOS.Cells[3, VsI_COMBINACOES5];
                                   STGR_BASE_5.Cells[3,1] := STGR_LINHA_1_TODOS.Cells[4, VI_COMBINACOES1];
                                   STGR_BASE_5.Cells[3,2] := STGR_LINHA_2_TODOS.Cells[4, VI_COMBINACOES2];
                                   STGR_BASE_5.Cells[3,3] := STGR_LINHA_3_TODOS.Cells[4, VsI_COMBINACOES3];
                                   STGR_BASE_5.Cells[3,4] := STGR_LINHA_4_TODOS.Cells[4, VsI_COMBINACOES4];
                                   STGR_BASE_5.Cells[3,5] := STGR_LINHA_5_TODOS.Cells[4, VsI_COMBINACOES5];
//c                                   STGR_BASE_5.Repaint;
                                   // ---------------------------------------
                                   // --  Todas as Possibilidades p/ Coluna 1
                                   // ---------------------------------------
                                   STGR_COL_01.Cells[1,1] := STGR_BASE_5.Cells[1,1];
                                   STGR_COL_01.Cells[2,1] := STGR_BASE_5.Cells[1,2];
                                   STGR_COL_01.Cells[3,1] := STGR_BASE_5.Cells[1,3];
                                   STGR_COL_01.Cells[4,1] := STGR_BASE_5.Cells[1,4];
                                   STGR_COL_01.Cells[5,1] := STGR_BASE_5.Cells[1,5];
                                   // ---------------------------------------
                                   // --  Todas as Possibilidades p/ Coluna 2
                                   // ---------------------------------------
                                   VI_LINHAS_3:=1;
                                   FOR VsI_COMBINACOES6 :=1 TO 5 DO
                                   BEGIN
                                        FOR VsI_COMBINACOES7 :=VsI_COMBINACOES6+1 TO 5 DO
                                        BEGIN
                                             FOR VsI_COMBINACOES8 :=VsI_COMBINACOES7+1 TO 5 DO
                                             BEGIN
                                                  STGR_COL_02.Cells[0,VI_LINHAS_3] := INTtoSTR(VI_LINHAS_3);
                                                  STGR_COL_02.Cells[1,VI_LINHAS_3] := STGR_BASE_5.Cells[2, VsI_COMBINACOES6];
                                                  STGR_COL_02.Cells[2,VI_LINHAS_3] := STGR_BASE_5.Cells[2, VsI_COMBINACOES7];
                                                  STGR_COL_02.Cells[3,VI_LINHAS_3] := STGR_BASE_5.Cells[2, VsI_COMBINACOES8];
                                                  STGR_COL_02.Cells[4,VI_LINHAS_3] := INTtoSTR(VsI_COMBINACOES6);
                                                  STGR_COL_02.Cells[5,VI_LINHAS_3] := INTtoSTR(VsI_COMBINACOES7);
                                                  STGR_COL_02.Cells[6,VI_LINHAS_3] := INTtoSTR(VsI_COMBINACOES8);
                                                  VI_LINHAS_3:= VI_LINHAS_3+1;
                                             END; // FOR
                                        END; // FOR
                                   END; // FOR
                                   STGR_COL_02.RowCount := VI_LINHAS_3;
                                   // ---------------------------------------
                                   // --  Todas as Possibilidades p/ Coluna 3
                                   // ---------------------------------------
                                   VI_LINHAS_3:=1;                                   
                                   FOR VsI_COMBINACOES6 :=1 TO 5 DO
                                   BEGIN
                                        FOR VsI_COMBINACOES7 :=VsI_COMBINACOES6+1 TO 5 DO
                                        BEGIN
                                             STGR_COL_03.Cells[0,VI_LINHAS_3] := INTtoSTR(VI_LINHAS_3);
                                             STGR_COL_03.Cells[1,VI_LINHAS_3] := STGR_BASE_5.Cells[3, VsI_COMBINACOES6];
                                             STGR_COL_03.Cells[2,VI_LINHAS_3] := STGR_BASE_5.Cells[3, VsI_COMBINACOES7];
                                             STGR_COL_03.Cells[3,VI_LINHAS_3] := INTtoSTR(VsI_COMBINACOES6);
                                             STGR_COL_03.Cells[4,VI_LINHAS_3] := INTtoSTR(VsI_COMBINACOES7);
                                             VI_LINHAS_3:= VI_LINHAS_3+1;
                                        END; // FOR
                                   END; // FOR
                                   STGR_COL_03.RowCount := VI_LINHAS_3;
                                   // ---------------------------------------
                                   // --  Montar as combinações das colunas 1, 2 e 3 nas suas respectivas linhas
                                   // ---------------------------------------
                                   FOR VsI_COMBINACOES6 :=1 TO (STGR_COL_02.RowCount-1) DO
                                   BEGIN
                                        FOR VsI_COMBINACOES7 :=1 TO (STGR_COL_03.RowCount-1) DO
                                        BEGIN
                                                  FOR VI_CONTAR :=1 TO 5 DO
                                                  BEGIN
                                                       STGR_BASE_5F.Cells[VI_CONTAR,1] := '0';
                                                       STGR_BASE_5F.Cells[VI_CONTAR,2] := '0';
                                                       STGR_BASE_5F.Cells[VI_CONTAR,3] := '0';
                                                       STGR_BASE_5F.Cells[VI_CONTAR,4] := '0';
                                                       STGR_BASE_5F.Cells[VI_CONTAR,5] := '0';
                                                  END; // FOR
                                             STGR_BASE_5F.Cells[1,1] := STGR_BASE_5.Cells[1,1];
                                             STGR_BASE_5F.Cells[1,2] := STGR_BASE_5.Cells[1,2];
                                             STGR_BASE_5F.Cells[1,3] := STGR_BASE_5.Cells[1,3];
                                             STGR_BASE_5F.Cells[1,4] := STGR_BASE_5.Cells[1,4];
                                             STGR_BASE_5F.Cells[1,5] := STGR_BASE_5.Cells[1,5];
                                             STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[4,VsI_COMBINACOES6])] :=  STGR_COL_02.Cells[1,VsI_COMBINACOES6];
                                             STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[5,VsI_COMBINACOES6])] :=  STGR_COL_02.Cells[2,VsI_COMBINACOES6];
                                             STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[6,VsI_COMBINACOES6])] :=  STGR_COL_02.Cells[3,VsI_COMBINACOES6];
                                             STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[3,VsI_COMBINACOES7])] :=  STGR_COL_03.Cells[1,VsI_COMBINACOES7];
                                             STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[4,VsI_COMBINACOES7])] :=  STGR_COL_03.Cells[2,VsI_COMBINACOES7];
                                             // ---------------------------------------
                                             // --  Contando a quantidade de números diferentes de 0, por linha
                                             // ---------------------------------------
                                             VSI_CONTAR1  := 0;
                                             VSI_CONTAR2  := 0;
                                             VSI_CONTAR3  := 0;
                                             VI_CONTASEL1 := 0;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[1,1]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[2,1]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[3,1]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             STGR_BASE_5F.Cells[0,1] := INTtoSTR(VI_CONTASEL1);
                                             CASE VI_CONTASEL1 OF
                                                  1: VSI_CONTAR1 := VSI_CONTAR1 +1;
                                                  2: VSI_CONTAR2 := VSI_CONTAR2 +1;
                                                  3: VSI_CONTAR3 := VSI_CONTAR3 +1;
                                             END;
                                             VI_CONTASEL1 := 0;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[1,2]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[2,2]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[3,2]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             STGR_BASE_5F.Cells[0,2] := INTtoSTR(VI_CONTASEL1);
                                             CASE VI_CONTASEL1 OF
                                                  1: VSI_CONTAR1 := VSI_CONTAR1 +1;
                                                  2: VSI_CONTAR2 := VSI_CONTAR2 +1;
                                                  3: VSI_CONTAR3 := VSI_CONTAR3 +1;
                                             END;
                                             VI_CONTASEL1 := 0;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[1,3]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[2,3]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[3,3]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             STGR_BASE_5F.Cells[0,3] := INTtoSTR(VI_CONTASEL1);
                                             CASE VI_CONTASEL1 OF
                                                  1: VSI_CONTAR1 := VSI_CONTAR1 +1;
                                                  2: VSI_CONTAR2 := VSI_CONTAR2 +1;
                                                  3: VSI_CONTAR3 := VSI_CONTAR3 +1;
                                             END;
                                             VI_CONTASEL1 := 0;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[1,4]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[2,4]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[3,4]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             STGR_BASE_5F.Cells[0,4] := INTtoSTR(VI_CONTASEL1);
                                             CASE VI_CONTASEL1 OF
                                                  1: VSI_CONTAR1 := VSI_CONTAR1 +1;
                                                  2: VSI_CONTAR2 := VSI_CONTAR2 +1;
                                                  3: VSI_CONTAR3 := VSI_CONTAR3 +1;
                                             END;
                                             VI_CONTASEL1 := 0;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[1,5]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[2,5]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             IF  STRtoINT(STGR_BASE_5F.Cells[3,5]) >0 THEN VI_CONTASEL1 := VI_CONTASEL1 +1;
                                             STGR_BASE_5F.Cells[0,5] := INTtoSTR(VI_CONTASEL1);
                                             CASE VI_CONTASEL1 OF
                                                  1: VSI_CONTAR1 := VSI_CONTAR1 +1;
                                                  2: VSI_CONTAR2 := VSI_CONTAR2 +1;
                                                  3: VSI_CONTAR3 := VSI_CONTAR3 +1;
                                             END;
                                             IF (VSI_CONTAR1 =1) AND (VSI_CONTAR2=3) AND (VSI_CONTAR3 = 1) THEN
                                             BEGIN
                                                  // ===> Não Excluídos
                                                  IF (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[4,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_01.Text))   OR (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[4,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_02.Text))
                                                       OR (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[4,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_03.Text))   OR (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[4,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_04.Text))
                                                       OR (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[4,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_05.Text)) THEN
                                                            CONTINUE;
                                                  IF (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[5,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_01.Text))   OR (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[5,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_02.Text))
                                                       OR (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[5,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_03.Text))   OR (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[5,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_04.Text))
                                                       OR (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[5,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_05.Text)) THEN
                                                            CONTINUE;
                                                  IF (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[6,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_01.Text))   OR (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[6,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_02.Text))
                                                       OR (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[6,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_03.Text))   OR (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[6,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_04.Text))
                                                       OR (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[6,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_05.Text)) THEN
                                                            CONTINUE;
                                                  IF (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[3,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_01.Text))   OR (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[3,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_02.Text))
                                                       OR (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[3,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_03.Text))   OR (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[3,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_04.Text))
                                                       OR (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[3,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_05.Text)) THEN
                                                            CONTINUE;
                                                  IF (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[4,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_01.Text))   OR (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[4,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_02.Text))
                                                       OR (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[4,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_03.Text))   OR (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[4,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_04.Text))
                                                       OR (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[4,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_05.Text)) THEN
                                                            CONTINUE;
                                                  // ===> Obrigatórios
                                                  IF  STRtoINT(ED_EXC_OBR_1.Text) > 0 THEN
                                                  BEGIN
                                                       IF  NOT(
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,1]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,2]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,3]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,4]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,5]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[4,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[5,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[6,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[3,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_OBR_1.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[4,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_OBR_1.Text))
                                                           )
                                                       THEN
                                                            CONTINUE;
                                                       IF  NOT(
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,1]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,2]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,3]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,4]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,5]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[4,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[5,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[6,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[3,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_OBR_2.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[4,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_OBR_2.Text))
                                                           )
                                                       THEN
                                                            CONTINUE;
                                                       IF  NOT(
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,1]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,2]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,3]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,4]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[1,5]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[4,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[5,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[6,VsI_COMBINACOES6])]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[3,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_OBR_3.Text)) OR
                                                           (STRtoINT(STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[4,VsI_COMBINACOES7])]) = STRtoINT(ED_EXC_OBR_3.Text))
                                                           )
                                                       THEN
                                                            CONTINUE;
                                                  end; // IF
                                                  STGR_COMB10.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                                  STGR_COMB10.Cells[1,VI_LINHAS2] := STGR_BASE_5F.Cells[1,1];
                                                  STGR_COMB10.Cells[2,VI_LINHAS2] := STGR_BASE_5F.Cells[1,2];
                                                  STGR_COMB10.Cells[3,VI_LINHAS2] := STGR_BASE_5F.Cells[1,3];
                                                  STGR_COMB10.Cells[4,VI_LINHAS2] := STGR_BASE_5F.Cells[1,4];
                                                  STGR_COMB10.Cells[5,VI_LINHAS2] := STGR_BASE_5F.Cells[1,5];
                                                  STGR_COMB10.Cells[6,VI_LINHAS2] := STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[4,VsI_COMBINACOES6])] ;
                                                  STGR_COMB10.Cells[7,VI_LINHAS2] := STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[5,VsI_COMBINACOES6])] ;
                                                  STGR_COMB10.Cells[8,VI_LINHAS2] := STGR_BASE_5F.Cells[2,STRtoINT(STGR_COL_02.Cells[6,VsI_COMBINACOES6])] ;
                                                  STGR_COMB10.Cells[9,VI_LINHAS2] := STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[3,VsI_COMBINACOES7])] ;
                                                  STGR_COMB10.Cells[10,VI_LINHAS2] := STGR_BASE_5F.Cells[3,STRtoINT(STGR_COL_03.Cells[4,VsI_COMBINACOES7])];
                                                  PR_ORDENAR_10 (VI_LINHAS2);
                                                  VI_LINHAS2 := VI_LINHAS2 + 1;
                                                  VI_LINHAS1 := VI_LINHAS1 + 1;
                                                  PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_1_TODOS.RowCount-1));
                                             END; // IF
                                             IF (VI_LINHAS2 MOD 499)=0 THEN
                                             BEGIN
                                                       PA_RESULTADO.Repaint;
                                                       STGR_BASE_5.Repaint;
                                                       STGR_COMB10.RowCount := VI_LINHAS2;
                                                       STGR_COMB10.Repaint;
                                                       LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_2_TODOS.RowCount-1)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                                       LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                                       LA_QTD_COMB.Repaint;
                                                                 PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_2_TODOS.RowCount-1)*100);
                                                                 PGBR_GERARCOMB0.Repaint;
                                                                 LA_QTD_COMB.Repaint;
                                                       SLEEP(9);
                                             END; // IF
                                        END; // FOR VsI_COMBINACOES7
                                   END; // FOR VsI_COMBINACOES6
                              END; // IF
                          END;// FOR VsI_COMBINACOES5
                                           {//c  IF ( VsI_COMBINACOES4 MOD 12) =0 THEN
                                             BEGIN
                                                  LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+ INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_2_TODOS.RowCount-1)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                                  LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                                  LA_QTD_COMB.Repaint;
                                                  PA_RESULTADO.Repaint;
                                                  STGR_COMB10.RowCount := VI_LINHAS2;
                                                  STGR_COMB10.Repaint;
                                             END;  }
                    END;// FOR VsI_COMBINACOES4
                                                            PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_2_TODOS.RowCount-1)*100);
                                                            PGBR_GERARCOMB0.Repaint;
                                                            LA_QTD_COMB.Repaint;
                    STGR_COMB10.RowCount := VI_LINHAS2;
                    STGR_COMB10.Repaint;
                    SLEEP(95);
               END;// FOR VsI_COMBINACOES3
                       {   STGR_COMB10.RowCount := VI_LINHAS2;
                          STGR_COMB10.Repaint;
                         LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                         LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                         LA_QTD_COMB.Repaint;
                                   PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_2_TODOS.RowCount-1)*100);
                                   PGBR_GERARCOMB0.Repaint;
                                   LA_QTD_COMB.Repaint;
                                   PANEL_TITULO_SIMULACAO.Repaint;
                                   Pa_bASE5.Repaint;   }
                                   STGR_COMB10.Repaint;
                                   PGBR_GERARCOMB.Repaint;
                                   SLEEP(99);   //29
         // Self.WindowState := wsMinimized;
         // Self.WindowState :=  wsNormal;
         // SELF.Repaint;
          END;// FOR VI_COMBINACOES2
          //PGBR_GERARCOMB3.Position := 100;
                                                       LA_TOTAL_COMB.Caption := '% PROCESSADOS: '+  INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_LINHA_2_TODOS.RowCount-1)*100))+ ' %  ';//INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
                                                       LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1)+'  ';
                                                       LA_QTD_COMB.Repaint;
          PGBR_GERARCOMB0.Position := 100;
          LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_LINHA_1_TODOS.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_LINHA_1_TODOS.RowCount-1)*100))+ ' %  ';
          PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_LINHA_1_TODOS.RowCount-1)*100);
          LA_GERAR_COMB.Repaint;
          PGBR_GERARCOMB.Repaint;
          STGR_COMB10.RowCount := VI_LINHAS2;
          STGR_COMB10.Repaint;
          IF   (PGBR_GERARCOMB.Position MOD 3) = 0 THEN
          BEGIN
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               Pa_bASE5.Repaint;
               PA_RESULTADO.Repaint;
               STGR_COMB10.RowCount := VI_LINHAS2;
               STGR_COMB10.Repaint;
               PGBR_GERARCOMB.Repaint;               
               SELF.Repaint;
               SLEEP(190);
          END; // IF
          IF (STGR_COMB10.RowCount-1)>2
          THEN
               STGR_COMB10.FixedRows := 1;
     END;// FOR VI_COMBINACOES1


     LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS2-1);
     STGR_COMB10.Repaint;
     LA_QTD_COMB.Repaint;
     LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_CONTAR_COMB1)+ ' DE '+  INTtoSTR(VI_TOTAL_COMB1)+ ' - ' + INTtoSTR(TRUNC(VI_CONTAR_COMB1/VI_TOTAL_COMB1*100))+ ' %  ';
     //LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_GRUPO_A_TODOS5.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_GRUPO_A_TODOS5.RowCount-1)*100))+ ' %  ';
     LA_GERAR_COMB.Repaint;     
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
          PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_1_C2.RowCount-1));
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;     
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     //SHOWMESSAGE ('GERAÇÃO ENCERRADA:' +#13+#13+  LA_TOTAL_COMB.Caption +#13+ LA_QTD_COMB.Caption);
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';
     LA_rTOT_CALC.Caption    := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5*8)+'   '    ;
     LA_rLogic_Comp.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VsI_COMBINACOES3*VsI_COMBINACOES4*VsI_COMBINACOES5*34)+'   '   ;
     LA_rATRIBUICAO_DADOS.Caption    := FLOATtoSTR(TRUNC( STRtoFLOAT(TRIM(LA_rTOTAL_COMB.Caption))*25*25 + STRtoFLOAT(TRIM(LA_rTOTAL_COMB.Caption))*100 + STRtoFLOAT(TRIM(LA_rQTD_COMB.Caption)) *10 ));
     LA_rTOT_PROCESSAMENTO.Caption   := FLOATtoSTR(TRUNC ( STRtoFLOAT(TRIM(LA_rTOT_CALC.Caption)) + STRtoFLOAT(TRIM(LA_rLogic_Comp.Caption)) + STRtoFLOAT(TRIM(LA_rATRIBUICAO_DADOS.Caption)) + STRtoFLOAT(TRIM(LA_rTOTAL_COMB.Caption))) );
          SELF.PR_SIMULAR_RECUPERANDODADOS('');
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_00c_10EXC_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTAR_COMB1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00c_10EXC_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTAR_COMB1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     BBT_BLOCO_NOTAS.SetFocus;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00c_10EXC_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;     
     PA_REMOVEUREPET.Left := 870;
end;


PROCEDURE T_F_EMULADOR_10_EXC.PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       SELF.PR_LIMPAR_GRID10();
       IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-2 - Retirando os repetidos');
       SELF.IBQ_COMBINACOES.Close;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_00C_10EXC_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DISTINCT(DADOS), EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, EXC7, EXC8, EXC9, EXC10   FROM FILTRO_00C_10EXC_DADOS  ORDER BY DADOS;')  ;
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
           STGR_COMB10.Cells [1, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC1').AsString;
           STGR_COMB10.Cells [2, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC2').AsString;
           STGR_COMB10.Cells [3, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC3').AsString;
           STGR_COMB10.Cells [4, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC4').AsString;
           STGR_COMB10.Cells [5, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC5').AsString;
           STGR_COMB10.Cells [6, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC6').AsString;
           STGR_COMB10.Cells [7, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC7').AsString;
           STGR_COMB10.Cells [8, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC8').AsString;
           STGR_COMB10.Cells [9, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC9').AsString;
           STGR_COMB10.Cells [10, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC10').AsString;
               STGR_COMB10.RowCount := VI_AN_COMB1;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       STGR_COMB10.RowCount := VI_AN_COMB1;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_00c_10EXC_DEFINICAO;')  ;
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


procedure T_F_EMULADOR_10_EXC.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 520;
end;

procedure T_F_EMULADOR_10_EXC.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, VI_CONTAR : INTEGER;
    VC_COMBINACOES : string;
begin
    MEM_COMBINACOES_TODAS.Clear;
   	MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + INTtoSTR(STGR_COMB10.RowCount-1)) ;
   	MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
    FOR VI_CONTAR := 1 TO STGR_COMB10.RowCount-1 DO
    BEGIN
		VC_COMBINACOES :=INTtoSTR(VI_CONTAR)+'=> ';
    	FOR VI_AN_COMB1 := 1 TO 10 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STGR_COMB10.Cells[VI_AN_COMB1,VI_CONTAR] +' ';
        END; // FOR VI_AN_COMB1
       	MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\EXCLUIDOS_5.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\EXCLUIDOS_5.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
   showmessage('BLOCO DE NOTAS GERADO');
end;

procedure T_F_EMULADOR_10_EXC.BT_REAJUSTARClick(Sender: TObject);
begin
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     PA_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     STGR_COMB10.Visible := TRUE;
     STGR_COMB10.Enabled := TRUE;
     RB_RESULTADOS.SetFocus;
     RB_RES_GABARITOS.SetFocus;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE;
     BBT_CANCELAR_SAIR.Visible := false;       
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
end;


procedure T_F_EMULADOR_10_EXC.BBT_CARREGARClick(Sender: TObject);
begin
    BBT_CANCELAR_SAIR.Visible := TRUE;
     BBT_RECOMECAR.Click;
     PA_PREENCHIMENTO.Visible := false;
     PA_PREENCHIMENTO.Enabled := false;
     PA_GABARITO.Visible := TRUE;
     RB_RESULTADOS.SetFocus;
     PA_GABARITO.Visible := false;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
     LA_TOTAL_COMB.Visible := false;
     LA_GERAR_COMB.Visible := false;
     LA_QTD_COMB.Visible := false;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00c_10EXC_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
end;




procedure T_F_EMULADOR_10_EXC.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00c_10EXC_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;


PROCEDURE T_F_EMULADOR_10_EXC.PR_LIMPAR_GRID10 ();
BEGIN
    STGR_COMB10.CleanupInstance;
    STGR_COMB10.Free;
    STGR_COMB10:= TStringGrid.Create(SELF);
    STGR_COMB10.Parent:= PA_RESULTADO;

    STGR_COMB10.Left   := 271 ;
    STGR_COMB10.Top    := 42;
    STGR_COMB10.Width  := 1553;
    STGR_COMB10.Height := 256;
    STGR_COMB10.Align := alClient;
    STGR_COMB10.RowCount := 2;
    STGR_COMB10.ColCount  := 11 ;
    STGR_COMB10.DefaultColWidth := 54;
    STGR_COMB10.ColWidths[0] := 59;
    STGR_COMB10.FixedCols := 1  ;
    STGR_COMB10.FixedRows := 1  ;
    STGR_COMB10.Color     := $002D8CFF;
    STGR_COMB10.FixedColor := clMedGray;
    STGR_COMB10.Options := [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect] ;
END;




end.
