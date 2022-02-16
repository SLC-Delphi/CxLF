unit SIMULACAO002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, StrUtils,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, Buttons,
  IBX.IBDatabase, DB, IBX.IBCustomDataSet, IBX.IBQuery;

type
  T_FRM_SIMULACAO2 = class(TForm)
    Panel1: TPanel;
    Label53: TLabel;
    BBT_RECOMECAR: TBitBtn;
    Panel2: TPanel;
    Label54: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label33: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    ED_fixoS_C1: TEdit;
    ED_fixoS_A1: TEdit;
    CB_FIXO_B: TComboBox;
    CB_FIXO_C: TComboBox;
    ED_fixoS_A2: TEdit;
    CB_FIXO_D: TComboBox;
    ED_fixoS_D1: TEdit;
    ED_fixoS_B1: TEdit;
    STGR_BASE_A: TStringGrid;
    STGR_BASE_B: TStringGrid;
    STGR_BASE_C: TStringGrid;
    STGR_BASE_D: TStringGrid;
    BBT_CLICK_TUDO: TButton;
    BBT_CLOSE: TImage;
    PA_COLUNA1: TPanel;
    Label56: TLabel;
    ED_SOMAS_C1_INI: TEdit;
    TRB_C1_INI: TTrackBar;
    PA_COLUNA2: TPanel;
    Label61: TLabel;
    ED_SOMAS_C2_INI: TEdit;
    TRB_C2_INI: TTrackBar;
    PA_COLUNA3: TPanel;
    Label72: TLabel;
    ED_SOMAS_C3_INI: TEdit;
    TRB_C3_INI: TTrackBar;
    PA_COLUNA4: TPanel;
    Label25: TLabel;
    ED_SOMAS_C4_INI: TEdit;
    TRB_C4_INI: TTrackBar;
    PA_EXCLUIDOS: TPanel;
    Label31: TLabel;
    ED_EXC_01: TEdit;
    ED_EXC_02: TEdit;
    ED_EXC_03: TEdit;
    PA_GABARITO: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    RB_RESULTADOS: TRadioButton;
    RB_GABARITO: TRadioButton;
    RB_RES_GABARITOS: TRadioButton;
    SCBX_GABARITO: TScrollBox;
    Label1: TLabel;
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
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label37: TLabel;
    LA_GRUPO_A_100REP: TLabel;
    LA_GRUPO_B_100REP: TLabel;
    Label35: TLabel;
    Label38: TLabel;
    LA_GRUPO_C_100REP: TLabel;
    LA_GRUPO_D_100REP: TLabel;
    Label34: TLabel;
    STGR_GRUPO_A_C1: TStringGrid;
    STGR_GRUPO_A_C2: TStringGrid;
    STGR_GRUPO_A_C3: TStringGrid;
    STGR_GRUPO_A_C4: TStringGrid;
    STGR_GRUPO_B_C4: TStringGrid;
    STGR_GRUPO_B_C3: TStringGrid;
    STGR_GRUPO_B_C2: TStringGrid;
    STGR_GRUPO_B_C1: TStringGrid;
    STGR_GRUPO_C_C1: TStringGrid;
    STGR_GRUPO_C_C2: TStringGrid;
    STGR_GRUPO_C_C3: TStringGrid;
    STGR_GRUPO_D_C1: TStringGrid;
    STGR_GRUPO_D_C2: TStringGrid;
    STGR_GRUPO_D_C3: TStringGrid;
    STGR_GRUPO_A_TODOS5: TStringGrid;
    STGR_GRUPO_B_TODOS4: TStringGrid;
    STGR_GRUPO_C_TODOS3: TStringGrid;
    STGR_GRUPO_D_TODOS3: TStringGrid;
    BBT_701: TBitBtn;
    BBT_703: TBitBtn;
    BBT_705: TBitBtn;
    BBT_707: TBitBtn;
    BBT_709: TBitBtn;
    BBT_711: TBitBtn;
    BBT_713: TBitBtn;
    BBT_715: TBitBtn;
    BBT_717: TBitBtn;
    BBT_719: TBitBtn;
    BBT_721: TBitBtn;
    BBT_723: TBitBtn;
    BBT_725: TBitBtn;
    BBT_724: TBitBtn;
    BBT_712: TBitBtn;
    BBT_722: TBitBtn;
    BBT_710: TBitBtn;
    BBT_720: TBitBtn;
    BBT_708: TBitBtn;
    BBT_718: TBitBtn;
    BBT_706: TBitBtn;
    BBT_716: TBitBtn;
    BBT_704: TBitBtn;
    BBT_714: TBitBtn;
    BBT_702: TBitBtn;
    PA_RESULTADO: TPanel;
    STGR_COMB15: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    CB_FIXO_A: TComboBox;
    PA_REMOVEUREPET: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    LA_rTOTAL_COMB: TLabel;
    LA_rQTD_COMB: TLabel;
    Label50: TLabel;
    LA_rTOTAL_100REPET: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    Panel3: TPanel;
    BBT_PREPARAR: TBitBtn;
    BBT_ENCERRAR: TBitBtn;
    PGBR_REMREPET: TProgressBar;
    LA_TOTAL_100REPET: TLabel;
    Label87: TLabel;
    PGBR_GERARCOMB: TProgressBar;
    LA_QTD_COMB: TLabel;
    LA_GERAR_COMB: TLabel;
    PGBR_GERARCOMB0: TProgressBar;
    LA_TOTAL_COMB: TLabel;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_PERC_COMB2: TLabel;
    LA_PERC_100REPET: TLabel;
    STGR_GRUPO_CxD: TStringGrid;
    Label24: TLabel;
    Label26: TLabel;
    LA_GRUPO_CxD: TLabel;
    Panel4: TPanel;
    Label27: TLabel;
    ED_SOMAS_CxD_INI: TEdit;
    ED_SOMAS_CxD_FINAL: TEdit;
    Label32: TLabel;
    BBT_GERAR_SIMULACAO: TBitBtn;
    PA_FIXOS: TPanel;
    Label39: TLabel;
    ED_FIXOS_01: TEdit;
    ED_FIXOS_02: TEdit;
    ED_FIXOS_03: TEdit;
    ED_FIXOS_04: TEdit;
    ED_SOMAS_C3_FINAL: TEdit;
    TRB_C3_FINAL: TTrackBar;
    ED_SOMAS_C4_FINAL: TEdit;
    TRB_C4_FINAL: TTrackBar;
    IBDatabase1: TIBDatabase;
    IBQ_COMBINACOES: TIBQuery;
    IBTransaction1: TIBTransaction;
    ED_FIXOS_05: TEdit;
    Label58: TLabel;
    LA_gINICIO_100REPET: TLabel;
    Label60: TLabel;
    LA_gFIM_GERAR: TLabel;
    Label40: TLabel;
    LA_gFIM_100REPET: TLabel;
    Button1: TButton;
    BBT_100REPT: TButton;
    ED_SOMAS_C2_FINAL: TEdit;
    TRB_C2_FINAL: TTrackBar;
    procedure FormCreate(Sender: TObject);
    procedure BBT_RECOMECARClick(Sender: TObject);
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
    procedure TRB_C3_INIChange(Sender: TObject);
    procedure TRB_C4_INIChange(Sender: TObject);
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure BBT_CLICK_TUDOClick(Sender: TObject);
    procedure RB_RES_GABARITOSClick(Sender: TObject);
    procedure RB_GABARITOClick(Sender: TObject);
    procedure RB_RESULTADOSClick(Sender: TObject);
    procedure BBT_ORDENARClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_ENCERRARClick(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure BBT_GERAR_SIMULACAOClick(Sender: TObject);
    procedure BBT_SALVAR_SIMULACAOClick(Sender: TObject);
    procedure TRB_C3_FINALChange(Sender: TObject);
    procedure TRB_C4_FINALChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CB_FIXO_AChange(Sender: TObject);
    procedure CB_FIXO_BChange(Sender: TObject);
    procedure CB_FIXO_CChange(Sender: TObject);
    procedure CB_FIXO_DChange(Sender: TObject);
    procedure TRB_C2_INIChange(Sender: TObject);
    procedure TRB_C2_FINALChange(Sender: TObject);
    procedure TRB_C1_INIChange(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_BOTOES_MODELO_ABCD1 (VI_NUMERO: INTEGER; VS_IMPAR: STRING);
     PROCEDURE PR_GRAVAR_DADOS ();
     PROCEDURE PR_LIMPAR_GRID15 () ;
     PROCEDURE PR_COMPLETAR_GRID15_1 (VI_LINHA_A:INTEGER; VI_LINHA_B:INTEGER; VI_LINHA_C:INTEGER; VI_LINHA_D:INTEGER; VI_LINHAS2: INTEGER);
     PROCEDURE PR_COMPLETAR_GRID15_2 (VI_LINHA_A:INTEGER; VI_LINHA_B:INTEGER; VI_LINHA_CxD:INTEGER; VI_LINHAS2:INTEGER);
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_OPERACAO: STRING);
  public
    { Public declarations }
  end;

var
  _FRM_SIMULACAO2: T_FRM_SIMULACAO2;
  VMI_A_C3_1: ARRAY [1..3360] OF INTEGER;
  VMI_A_C3_2: ARRAY [1..3360] OF INTEGER;
  VMI_B_C3_1: ARRAY [1..2520] OF INTEGER;
  VMI_B_C3_2: ARRAY [1..2520] OF INTEGER;
  VMI_C_C3_1: ARRAY [1..60] OF INTEGER;
  VMI_C_C3_2: ARRAY [1..60] OF INTEGER;
  VMI_D_C3_1: ARRAY [1..60] OF INTEGER;
  VMI_D_C3_2: ARRAY [1..60] OF INTEGER;
  VMI_GRUPO_B_TODOS4_2: ARRAY [1..2520] OF INTEGER;
  VMI_GRUPO_B_TODOS4_3: ARRAY [1..2520] OF INTEGER;
  VMI_GRUPO_B_TODOS4_4: ARRAY [1..2520] OF INTEGER;
  VMI_GRUPO_B_TODOS4_5: ARRAY [1..2520] OF INTEGER;
  VMS_GrupoC_C1_SEL: ARRAY [1..60] OF STRING;
  VMS_GrupoD_C1_SEL: ARRAY [1..60] OF STRING;
  VI_MOSTRAR_qtdcomb2 : SMALLINT = 0;

implementation

uses Unit1;

{$R *.dfm}


procedure T_FRM_SIMULACAO2.FormCreate(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
     self.Left   :=  50;
     self.Top    :=  90;
     self.ClientWidth  := 1252;
     self.ClientHeight := 620;
    FOR VI_CONTAR := 1 TO 8 DO
    BEGIN
        STGR_BASE_A.Cells [VI_CONTAR,0] := '0';
    END;
    FOR VI_CONTAR := 1 TO 7 DO
    BEGIN
        STGR_BASE_B.Cells [VI_CONTAR,0] := '0';
    END;

    FOR VI_CONTAR := 1 TO 5 DO
    BEGIN
        STGR_BASE_C.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_D.Cells [VI_CONTAR,0] := '0';
    END;
    STGR_COMB15.Cells[0,0] := 'QTD';
    STGR_COMB15.Cells[1,0] := '100REP';
    FOR VI_CONTAR := 1 TO 15 DO
    BEGIN
        STGR_COMB15.Cells[VI_CONTAR+1,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
    END;
     FOR VI_CONTAR :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
     END; // FOR VI_CONTAR
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE SIMULACAO_2_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
    PA_REMOVEUREPET.Left := 5000;
end;





procedure T_FRM_SIMULACAO2.BBT_RECOMECARClick(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
    BBT_701.Visible := TRUE;
    BBT_702.Visible := TRUE;
    BBT_703.Visible := TRUE;
    BBT_704.Visible := TRUE;
    BBT_705.Visible := TRUE;
    BBT_706.Visible := TRUE;
    BBT_707.Visible := TRUE;
    BBT_708.Visible := TRUE;
    BBT_709.Visible := TRUE;
    BBT_710.Visible := TRUE;
    BBT_711.Visible := TRUE;
    BBT_712.Visible := TRUE;
    BBT_713.Visible := TRUE;
    BBT_714.Visible := TRUE;
    BBT_715.Visible := TRUE;
    BBT_716.Visible := TRUE;
    BBT_717.Visible := TRUE;
    BBT_718.Visible := TRUE;
    BBT_719.Visible := TRUE;
    BBT_720.Visible := TRUE;
    BBT_721.Visible := TRUE;
    BBT_722.Visible := TRUE;
    BBT_723.Visible := TRUE;
    BBT_724.Visible := TRUE;
    BBT_725.Visible := TRUE;
    FOR VI_CONTAR := 0 TO 18 DO
    BEGIN
        STGR_COMB15.Cells[VI_CONTAR,1] := '0';
    END;
    STGR_COMB15.RowCount := 1;
    FOR VI_CONTAR := 1 TO 8 DO
    BEGIN
        STGR_BASE_A.Cells [VI_CONTAR,0] := '0';
    END;
    FOR VI_CONTAR := 1 TO 7 DO
    BEGIN
        STGR_BASE_B.Cells [VI_CONTAR,0] := '0';
    END;

    FOR VI_CONTAR := 1 TO 5 DO
    BEGIN
        STGR_BASE_C.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_D.Cells [VI_CONTAR,0] := '0';
    END;
end;



procedure T_FRM_SIMULACAO2.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(1,'V');
    BBT_701.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(2,'F');
    BBT_702.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(3,'V');
    BBT_703.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(4,'F');
    BBT_704.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(5,'V');
    BBT_705.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(6,'F');
    BBT_706.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(7,'V');
    BBT_707.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(8,'F');
    BBT_708.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(10,'F');
    BBT_710.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(9,'V');
    BBT_709.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(11,'V');
    BBT_711.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(12,'F');
    BBT_712.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(13,'V');
    BBT_713.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(14,'F');
    BBT_714.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(15,'V');
    BBT_715.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(16,'F');
    BBT_716.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(17,'V');
    BBT_717.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(18,'F');
    BBT_718.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(19,'V');
    BBT_719.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(20,'F');
    BBT_720.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(21,'V');
    BBT_721.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(22,'F');
    BBT_722.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(23,'V');
    BBT_723.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(24,'F');
    BBT_724.Visible := FALSE;
end;

procedure T_FRM_SIMULACAO2.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(25,'V');
    BBT_725.Visible := FALSE;
end;



PROCEDURE T_FRM_SIMULACAO2.PR_BOTOES_MODELO_ABCD1 (VI_NUMERO: INTEGER; VS_IMPAR: STRING);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3, VI_CONTAR4 : INTEGER;
BEGIN
    IF (VS_IMPAR='V') THEN
    BEGIN
       FOR VI_CONTAR := 1 TO 8 DO
        BEGIN
            IF (STRtoINT (STGR_BASE_A.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_BASE_A.Cells [VI_CONTAR,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                EXIT;
            END ELSE
            IF (VI_CONTAR = 8) THEN
            BEGIN
                FOR VI_CONTAR3 :=1 TO 5 DO
                BEGIN
                    IF (STRtoINT (STGR_BASE_C.Cells [VI_CONTAR3,0]) = 0) THEN
                    BEGIN
                        STGR_BASE_C.Cells [VI_CONTAR3,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                        EXIT  ;
                    END; // IF (VI_CONTAR3
                END;// FOR VI_CONTAR3
            END;// IF (STRtoINT
        END; // VI_CONTAR
    END ELSE
    BEGIN
        FOR VI_CONTAR2 :=1 TO 7 DO
        BEGIN
            IF (STRtoINT (STGR_BASE_B.Cells [VI_CONTAR2,0]) = 0) THEN
            BEGIN
                STGR_BASE_B.Cells [VI_CONTAR2,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                EXIT;
            END ELSE
            IF (VI_CONTAR2 = 7) THEN
            BEGIN
                    FOR VI_CONTAR4 :=1 TO 5 DO
                    BEGIN
                        IF (STRtoINT (STGR_BASE_D.Cells [VI_CONTAR4,0]) = 0) THEN
                        BEGIN
                            STGR_BASE_D.Cells [VI_CONTAR4,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                            EXIT ;
                        END; // IF VI_CONTAR4
                    END; // FOR VI_CONTAR4
            END; // IF (STRtoINT
        END; // FOR VI_CONTAR 2
    end; // IF (VS_IMPAR='V') THEN
END;


procedure T_FRM_SIMULACAO2.TRB_C3_INIChange(Sender: TObject);
begin
     IF TRB_C3_INI.Position = 1 THEN
          ED_SOMAS_C3_INI.Text := '102';
     IF TRB_C3_INI.Position = 2 THEN
          ED_SOMAS_C3_INI.Text := '104';
     IF TRB_C3_INI.Position = 3 THEN
          ED_SOMAS_C3_INI.Text := '106';
end;

procedure T_FRM_SIMULACAO2.TRB_C3_FINALChange(Sender: TObject);
begin
     IF TRB_C3_FINAL.Position = 1 THEN
          ED_SOMAS_C3_FINAL.Text := '102';
     IF TRB_C3_FINAL.Position = 2 THEN
          ED_SOMAS_C3_FINAL.Text := '104';
     IF TRB_C3_FINAL.Position = 3 THEN
          ED_SOMAS_C3_FINAL.Text := '106';
end;


procedure T_FRM_SIMULACAO2.TRB_C4_INIChange(Sender: TObject);
begin
     IF TRB_C4_INI.Position = 1 THEN
          ED_SOMAS_C4_INI.Text := '37';
     IF TRB_C4_INI.Position = 2 THEN
          ED_SOMAS_C4_INI.Text := '39';
     IF TRB_C4_INI.Position = 3 THEN
          ED_SOMAS_C4_INI.Text := '41';
end;

procedure T_FRM_SIMULACAO2.TRB_C4_FINALChange(Sender: TObject);
begin
     IF TRB_C4_FINAL.Position = 1 THEN
          ED_SOMAS_C4_FINAL.Text := '37';
     IF TRB_C4_FINAL.Position = 2 THEN
          ED_SOMAS_C4_FINAL.Text := '39';
     IF TRB_C4_FINAL.Position = 3 THEN
          ED_SOMAS_C4_FINAL.Text := '41';
end;



procedure T_FRM_SIMULACAO2.BBT_PREPARARClick(Sender: TObject);
var
     VI_CONTADOR, VI_CONTAR, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2: integer;
     VI_COMBINACOES3, VI_COMBINACOES4, VI_COMBINACOES5, VI_COMBINACOES6, VI_COMBINACOES7 : SMALLINT;
     VI_CNTCELULAS: SMALLINT;
     VS_NUMEROSPRINCIPAIS: STRING;     
begin
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
        STGR_COMB15.Cells[VI_CONTAR+1,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_COMB15.Cells[VI_CONTAR+1,1] := '00';
     END;
    STGR_COMB15.RowCount := 2;
    STGR_COMB15.Repaint;
    PGBR_GERARCOMB.Position := 0;
    PGBR_GERARCOMB.Repaint;
    PGBR_REMREPET.Position := 0;
    PGBR_REMREPET.Repaint;
    LA_TOTAL_COMB.Caption := 'GERAR:               ';    
    LA_PERC_COMB2.Caption := '00%        ';
    LA_TOTAL_100REPET.Caption := '000000';    
    LA_PERC_100REPET.Caption := '00%        ';
    LA_GERAR_COMB.Caption := '#          ';
    LA_QTD_COMB.Caption := '-       ';
     IF (STRtoINT(STGR_BASE_C.Cells [5,0] ) =0) THEN
     BEGIN
          SHOWMESSAGE ('TERMINE O PREENCHIMENTO.');
          STGR_BASE_C.SetFocus;
          EXIT;
     END; // IF
    // =========
     IF (STRtoINT(STGR_BASE_D.Cells [5,0] ) =0) THEN
     BEGIN
          SHOWMESSAGE ('TERMINE O PREENCHIMENTO.');
          STGR_BASE_D.SetFocus;
          EXIT;
     END; // IF
    // ==========================================
    // ||||==================================||||
    // |||| 	Conferindo numeros válidos   ||||
    // ||||==================================||||
    // ==========================================
        // **************
        // **  LINHA A **
        // **************
     IF (CB_fixo_A.ItemIndex = 1) THEN
     BEGIN
        IF not(
         ( STRtoINT(ED_fixoS_A1.Text) = STRtoINT(STGR_BASE_A.Cells [1,0] ) ) OR
            (STRtoINT(ED_fixoS_A1.Text) = STRtoINT(STGR_BASE_A.Cells [2,0] ) ) or
            (STRtoINT(ED_fixoS_A1.Text) = STRtoINT(STGR_BASE_A.Cells [3,0] ) ) or
            (STRtoINT(ED_fixoS_A1.Text) = STRtoINT(STGR_BASE_A.Cells [4,0] ) ) or
            (STRtoINT(ED_fixoS_A1.Text) = STRtoINT(STGR_BASE_A.Cells [5,0] ) ) or
            (STRtoINT(ED_fixoS_A1.Text) = STRtoINT(STGR_BASE_A.Cells [6,0] ) ) or
            (STRtoINT(ED_fixoS_A1.Text) = STRtoINT(STGR_BASE_A.Cells [7,0] ) ) or
            (STRtoINT(ED_fixoS_A1.Text) = STRtoINT(STGR_BASE_A.Cells [8,0] ) )
            )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_fixoS_A1.SetFocus;
            EXIT;
        END; // IF
        IF ( STRtoINT(ED_fixoS_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [1,0]) ) and
            (STRtoINT(ED_fixoS_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [2,0]) ) and
            (STRtoINT(ED_fixoS_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [3,0]) ) and
            (STRtoINT(ED_fixoS_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [4,0]) ) and
            (STRtoINT(ED_fixoS_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [5,0]) ) and
            (STRtoINT(ED_fixoS_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [6,0]) ) and
            (STRtoINT(ED_fixoS_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [7,0]) ) and
            (STRtoINT(ED_fixoS_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [8,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_fixoS_A2.SetFocus;
            EXIT;
        END;
        IF (STRtoINT(ED_fixoS_A1.Text)) > (STRtoINT(ED_fixoS_A2.Text)) THEN
        BEGIN
            SHOWMESSAGE ('ORDEM NUMÉRICA - POR FAVOR.');
            ED_fixoS_A2.SetFocus;
            EXIT;
        END;
     END; // IF
        // **************
        // **  LINHA B **
        // **************
     IF (CB_fixo_B.ItemIndex = 1) THEN
     BEGIN
        IF ( STRtoINT(ED_fixoS_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [1,0]) ) and
            (STRtoINT(ED_fixoS_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [2,0]) ) and
            (STRtoINT(ED_fixoS_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [3,0]) ) and
            (STRtoINT(ED_fixoS_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [4,0]) ) and
            (STRtoINT(ED_fixoS_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [5,0]) ) and
            (STRtoINT(ED_fixoS_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [6,0]) ) and
            (STRtoINT(ED_fixoS_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [7,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_fixoS_B1.SetFocus;
            EXIT;
        END; // IF
     END;  //  IF (CB_fixo_B
        // **************
        // **  LINHA C **
        // **************
     IF (CB_fixo_C.ItemIndex = 1) THEN
     BEGIN
        IF ( STRtoINT(ED_fixoS_C1.Text) <> STRtoINT(STGR_BASE_C.Cells [1,0]) ) and
            (STRtoINT(ED_fixoS_C1.Text) <> STRtoINT(STGR_BASE_C.Cells [2,0]) ) and
            (STRtoINT(ED_fixoS_C1.Text) <> STRtoINT(STGR_BASE_C.Cells [3,0]) ) and
            (STRtoINT(ED_fixoS_C1.Text) <> STRtoINT(STGR_BASE_C.Cells [4,0]) ) and
            (STRtoINT(ED_fixoS_C1.Text) <> STRtoINT(STGR_BASE_C.Cells [5,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_fixoS_C1.SetFocus;
            EXIT;
        END; // IF
     END;  //  IF (CB_fixo_C
     IF (CB_fixo_D.ItemIndex = 1) THEN
     BEGIN
        IF ( STRtoINT(ED_fixoS_D1.Text) <> STRtoINT(STGR_BASE_D.Cells [1,0]) ) and
            (STRtoINT(ED_fixoS_D1.Text) <> STRtoINT(STGR_BASE_D.Cells [2,0]) ) and
            (STRtoINT(ED_fixoS_D1.Text) <> STRtoINT(STGR_BASE_D.Cells [3,0]) ) and
            (STRtoINT(ED_fixoS_D1.Text) <> STRtoINT(STGR_BASE_D.Cells [4,0]) ) and
            (STRtoINT(ED_fixoS_D1.Text) <> STRtoINT(STGR_BASE_D.Cells [5,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_fixoS_D1.SetFocus;
            EXIT;
        END; // IF
     END;  //  IF (CB_fixo_C
        // ***************************
        // **  CONFERINDO OS EXCLUIDOS **
        // ***************************
    { IF (STRtoINT(ED_EXC_01.Text) = 0  ) OR
       (STRtoINT(ED_EXC_02.Text) = 0  ) OR
       (STRtoINT(ED_EXC_03.Text) = 0  ) THEN
     BEGIN
            SHOWMESSAGE ('NÚMERO EXCLUÍDO NÃO PODE SER 0.');
            ED_EXC_01.SetFocus;
            EXIT;
     END; // IF   }
     IF (STRtoINT(ED_EXC_01.Text) <> 0  ) then
     begin
          IF (STRtoINT(ED_fixoS_A1.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_fixoS_A1.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
          (STRtoINT(ED_fixoS_A2.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_fixoS_A2.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
          (STRtoINT(ED_fixoS_B1.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_fixoS_B1.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
          (STRtoINT(ED_fixoS_C1.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_fixoS_C1.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
          (STRtoINT(ED_FIXOS_D1.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
          (STRtoINT(ED_FIXOS_D1.Text) = STRtoINT(ED_EXC_01.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO EXCLUÍDO TEM DE SER DIFERENTE DOS SELECIONADOS (COLUNA).');
                 ED_EXC_01.SetFocus;
                 EXIT;
          END; // IF
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
     end; // if (STRtoINT
             // ***************************
        // **  Verificando números inicias e finais **
        // ***************************
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

     if (STRtoINT(ED_FIXOS_02.Text)>0) then
     begin
          IF (STRtoINT(ED_FIXOS_01.Text)) > (STRtoINT(ED_FIXOS_02.Text)) THEN
          BEGIN
            SHOWMESSAGE ('ORDEM NUMÉRICA - POR FAVOR.');
            ED_FIXOS_01.SetFocus;
            EXIT;
          END;
     end;
     if (STRtoINT(ED_FIXOS_02.Text)>0) and (STRtoINT(ED_FIXOS_01.Text)=00) then
     begin
          SHOWMESSAGE ('O PRIMEIRO NUMERO FIXO É ZERO, PORTANDO O SEGUNDO NÃO TERÁ EFEITO E SERÁ ZERADO.');
          ED_FIXOS_02.Text := '00';
          ED_FIXOS_01.SetFocus;
          EXIT;
     end;     
     IF (STRtoINT(ED_SOMAS_CxD_FINAL.Text)) < (STRtoINT(ED_SOMAS_CxD_INI.Text)) THEN
     BEGIN
       SHOWMESSAGE ('ORDEM NUMÉRICA - POR FAVOR.');
       ED_SOMAS_CxD_INI.SetFocus;
       EXIT;
     END;

    // ======================================================
    // ||||==============================================||||
    // |||| 	Análises Combinatórias e suas sobras     ||||
    // ||||==============================================||||
    // ======================================================
        // ******************
        // **  LINHA l (A) **
        // ******************
     FOR VI_CONTAR := 1 TO 3360 DO
     BEGIN
          VMI_A_C3_1[VI_CONTAR] := 0;
          VMI_A_C3_2[VI_CONTAR] := 0;
     END;//  FOR VI_CONTAR
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 7 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 8 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 8 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 8 DO
                    BEGIN
                         FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 8 DO
                         BEGIN
                              FOR VI_COMBINACOES6:= 1 TO 8 DO
                              BEGIN
                                   FOR VI_COMBINACOES7:= VI_COMBINACOES6+1 TO 8 DO
                                   BEGIN
                                        STGR_GRUPO_A_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_GRUPO_A_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_GRUPO_A_C1.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_GRUPO_A_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES1,0];
                                        STGR_GRUPO_A_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES2,0];
                                        STGR_GRUPO_A_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES3,0];
                                        STGR_GRUPO_A_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_GRUPO_A_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        // ----------------------------
                                        // -- FLAG NA COLUNA 2, 3 --
                                        // ----------------------------
                                        STGR_GRUPO_A_C2.Cells [2,VI_LINHAS2]:= 'F';
                                        STGR_GRUPO_A_C2.Cells [3,VI_LINHAS2]:= 'F';
                                        STGR_GRUPO_A_C3.Cells [1,VI_LINHAS2]:= 'F';
                                        STGR_GRUPO_A_C3.Cells [2,VI_LINHAS2]:= 'F';
                                        // ---------------------------------------------
                                        // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 2 --
                                        // ---------------------------------------------
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES2,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES3,0];
                                        IF (POS(STGR_BASE_A.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             STGR_GRUPO_A_C2.Cells[2,VI_LINHAS2] := STGR_BASE_A.Cells[VI_COMBINACOES4,0];
                                        END;
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES2,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES3,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES4,0] ;
                                        IF (POS(STGR_BASE_A.Cells[VI_COMBINACOES5,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             STGR_GRUPO_A_C2.Cells[3,VI_LINHAS2] := STGR_BASE_A.Cells[VI_COMBINACOES5,0];
                                        END;
                                        // ---------------------------------------------
                                        // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                                        // ---------------------------------------------
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES2,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES3,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES4,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES5,0] ;
                                        IF (POS(STGR_BASE_A.Cells[VI_COMBINACOES6,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             STGR_GRUPO_A_C3.Cells[1,VI_LINHAS2] := STGR_BASE_A.Cells[VI_COMBINACOES6,0];
                                        END;
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES2,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES3,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES4,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES5,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES6,0];
                                        IF (POS(STGR_BASE_A.Cells[VI_COMBINACOES7,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             STGR_GRUPO_A_C3.Cells[2,VI_LINHAS2] := STGR_BASE_A.Cells[VI_COMBINACOES7,0];
                                        END;
                                        // -----------------------------------------------------------------------------------
                                        // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                                        // -----------------------------------------------------------------------------------
                                        IF NOT ((STGR_GRUPO_A_C2.Cells [2,VI_LINHAS2]='F')
                                             OR (STGR_GRUPO_A_C2.Cells [3,VI_LINHAS2]='F')
                                             OR (STGR_GRUPO_A_C3.Cells [1,VI_LINHAS2]='F')
                                             OR (STGR_GRUPO_A_C3.Cells [2,VI_LINHAS2]='F'))
                                        THEN
                                        BEGIN
                                             // -----------------------------------
                                             // -- CAPTURAR OS NÚMERO QUE FALTAM --
                                             // -----------------------------------
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES2,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES3,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES4,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES5,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES6,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES7,0];

                                                  VI_CONTAR :=0;
                                                  FOR VI_CONTADOR := 1 TO 8 DO
                                                  BEGIN
                                                       IF (POS(STGR_BASE_A.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                       BEGIN
                                                            VI_CONTAR := VI_CONTAR +1;
                                                            IF (VI_CONTAR=1) THEN
                                                                 STGR_GRUPO_A_C4.Cells[1,VI_LINHAS2] := STGR_BASE_A.Cells[VI_CONTADOR,0];
                                                       END;
                                                  END; // FOR VI_CONTADOR
                                             // ---------------------------------------
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_GRUPO_A_C1.RowCount := VI_LINHAS2;
                                             STGR_GRUPO_A_C2.RowCount := VI_LINHAS2;
                                             STGR_GRUPO_A_C3.RowCount := VI_LINHAS2;
                                             STGR_GRUPO_A_C4.RowCount := VI_LINHAS2;
                                        END; // IF
                                   END; // FOR VI_COMBINACOES7
                              END; // FOR VI_COMBINACOES6
                         END; // FOR VI_COMBINACOES5
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_GRUPO_A_C1.Repaint;
     STGR_GRUPO_A_C2.Repaint;
     STGR_GRUPO_A_C3.Repaint;
     STGR_GRUPO_A_C4.Repaint;

          // ------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 1 --
          // ------------------------------------
     IF (CB_fixo_A.ItemIndex = 1) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_A_C1.RowCount-1) DO
          BEGIN
               IF (STRtoINT(ED_fixoS_A1.Text) <> STRtoINT(ED_fixoS_A2.Text))  THEN
               BEGIN
                    IF (STRtoINT(STGR_GRUPO_A_C1.Cells [2,VI_COMBINACOES1])=STRtoINT(ED_fixoS_A1.Text))
                         AND (STRtoINT(STGR_GRUPO_A_C1.Cells [3,VI_COMBINACOES1])=STRtoINT(ED_fixoS_A2.Text))
                              OR ((STRtoINT(STGR_GRUPO_A_C1.Cells[3,VI_COMBINACOES1])=STRtoINT(ED_fixoS_A1.Text))
                                   AND (STRtoINT(STGR_GRUPO_A_C1.Cells[4,VI_COMBINACOES1])=STRtoINT(ED_fixoS_A2.Text)))
                                        OR ((STRtoINT(STGR_GRUPO_A_C1.Cells[2,VI_COMBINACOES1])=STRtoINT(ED_fixoS_A1.Text))
                                             AND (STRtoINT(STGR_GRUPO_A_C1.Cells[4,VI_COMBINACOES1])=STRtoINT(ED_fixoS_A2.Text)))
                    THEN
                    BEGIN
                         STGR_GRUPO_A_C1.Cells [1,VI_COMBINACOES1]:= 'V';
                    END ELSE
                    BEGIN
                         STGR_GRUPO_A_C1.Cells [1,VI_COMBINACOES1]:= 'F';
                    END; // IF
               END ELSE
               BEGIN
                    IF ((STRtoINT(STGR_GRUPO_A_C1.Cells [2,VI_COMBINACOES1])>=STRtoINT(ED_fixoS_A1.Text))
                              AND (STRtoINT(STGR_GRUPO_A_C1.Cells [2,VI_COMBINACOES1])<=STRtoINT(ED_fixoS_A2.Text)))
                         OR ((STRtoINT(STGR_GRUPO_A_C1.Cells [3,VI_COMBINACOES1])>=STRtoINT(ED_fixoS_A1.Text))
                              AND (STRtoINT(STGR_GRUPO_A_C1.Cells [3,VI_COMBINACOES1])<=STRtoINT(ED_fixoS_A2.Text)))
                         OR ((STRtoINT(STGR_GRUPO_A_C1.Cells [4,VI_COMBINACOES1])>=STRtoINT(ED_fixoS_A1.Text))
                              AND (STRtoINT(STGR_GRUPO_A_C1.Cells [4,VI_COMBINACOES1])<=STRtoINT(ED_fixoS_A2.Text)))
                    THEN
                    BEGIN
                         STGR_GRUPO_A_C1.Cells [1,VI_COMBINACOES1]:= 'V';
                    END ELSE
                    BEGIN
                         STGR_GRUPO_A_C1.Cells [1,VI_COMBINACOES1]:= 'F';
                    END; // IF
               END; // IF
          END; // FOR
     END;  // IF (CB_fixo_A

          // ------------------------
          // -- Ordenando os dados --
          // ------------------------
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_A_C1.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_A_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_GRUPO_A_TODOS5.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_GRUPO_A_TODOS5.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_GRUPO_A_TODOS5.Cells [2, VI_LINHAS2] := STGR_GRUPO_A_C1.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_A_TODOS5.Cells [3, VI_LINHAS2] := STGR_GRUPO_A_C1.Cells[3,VI_COMBINACOES1];  
               STGR_GRUPO_A_TODOS5.Cells [4, VI_LINHAS2] := STGR_GRUPO_A_C1.Cells[4,VI_COMBINACOES1];  
               STGR_GRUPO_A_TODOS5.Cells [5, VI_LINHAS2] := STGR_GRUPO_A_C3.Cells[1,VI_COMBINACOES1];  
               STGR_GRUPO_A_TODOS5.Cells [6, VI_LINHAS2] := STGR_GRUPO_A_C4.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, AC1,AC1,AC2,AC3,AC4,AC5,AC6,AC6
                    STGR_GRUPO_A_TODOS5.Cells [7, VI_LINHAS2] := STGR_GRUPO_A_C1.Cells[0,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [8, VI_LINHAS2] := STGR_GRUPO_A_C1.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [9, VI_LINHAS2] := STGR_GRUPO_A_C1.Cells[3,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [10, VI_LINHAS2] := STGR_GRUPO_A_C1.Cells[4,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [11, VI_LINHAS2] := STGR_GRUPO_A_C2.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [12, VI_LINHAS2] := STGR_GRUPO_A_C2.Cells[3,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [13, VI_LINHAS2] := STGR_GRUPO_A_C3.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [14, VI_LINHAS2] := STGR_GRUPO_A_C3.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [15, VI_LINHAS2] := STGR_GRUPO_A_C4.Cells[1,VI_COMBINACOES1];
                         STGR_GRUPO_A_TODOS5.Cells [16, VI_LINHAS2] := 'fora:';
                         STGR_GRUPO_A_TODOS5.Cells [17, VI_LINHAS2] := STGR_GRUPO_A_C2.Cells[2,VI_COMBINACOES1];
                         STGR_GRUPO_A_TODOS5.Cells [18, VI_LINHAS2] := STGR_GRUPO_A_C2.Cells[3,VI_COMBINACOES1];
                         STGR_GRUPO_A_TODOS5.Cells [19, VI_LINHAS2] := STGR_GRUPO_A_C3.Cells[2,VI_COMBINACOES1];
                    VMI_A_C3_1[VI_LINHAS2] := STRtoINT(STGR_GRUPO_A_TODOS5.Cells [13, VI_LINHAS2]);
                    VMI_A_C3_2[VI_LINHAS2] := STRtoINT(STGR_GRUPO_A_TODOS5.Cells [14, VI_LINHAS2]);
               STGR_GRUPO_A_TODOS5.Cells [0, VI_LINHAS2+1] := INTtoSTR(VI_LINHAS2+1);
               STGR_GRUPO_A_TODOS5.Cells [1 ,VI_LINHAS2+1] := 'V';
               STGR_GRUPO_A_TODOS5.Cells [2, VI_LINHAS2+1] := STGR_GRUPO_A_C1.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_A_TODOS5.Cells [3, VI_LINHAS2+1] := STGR_GRUPO_A_C1.Cells[3,VI_COMBINACOES1];   
               STGR_GRUPO_A_TODOS5.Cells [4, VI_LINHAS2+1] := STGR_GRUPO_A_C1.Cells[4,VI_COMBINACOES1];   
               STGR_GRUPO_A_TODOS5.Cells [5, VI_LINHAS2+1] := STGR_GRUPO_A_C3.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_A_TODOS5.Cells [6, VI_LINHAS2+1] := STGR_GRUPO_A_C4.Cells[1,VI_COMBINACOES1];
                    // ==> Todas as células
                    STGR_GRUPO_A_TODOS5.Cells [7, VI_LINHAS2+1] := STGR_GRUPO_A_C1.Cells[0,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [8, VI_LINHAS2+1] := STGR_GRUPO_A_C1.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [9, VI_LINHAS2+1] := STGR_GRUPO_A_C1.Cells[3,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [10, VI_LINHAS2+1] := STGR_GRUPO_A_C1.Cells[4,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [11, VI_LINHAS2+1] := STGR_GRUPO_A_C2.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [12, VI_LINHAS2+1] := STGR_GRUPO_A_C2.Cells[3,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [13, VI_LINHAS2+1] := STGR_GRUPO_A_C3.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [14, VI_LINHAS2+1] := STGR_GRUPO_A_C3.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [15, VI_LINHAS2+1] := STGR_GRUPO_A_C4.Cells[1,VI_COMBINACOES1];
                         STGR_GRUPO_A_TODOS5.Cells [16, VI_LINHAS2+1] := 'fora:';
                         STGR_GRUPO_A_TODOS5.Cells [17, VI_LINHAS2+1] := STGR_GRUPO_A_C2.Cells[2,VI_COMBINACOES1];
                         STGR_GRUPO_A_TODOS5.Cells [18, VI_LINHAS2+1] := STGR_GRUPO_A_C2.Cells[3,VI_COMBINACOES1];
                         STGR_GRUPO_A_TODOS5.Cells [19, VI_LINHAS2+1] := STGR_GRUPO_A_C3.Cells[1,VI_COMBINACOES1];
                    VMI_A_C3_1[VI_LINHAS2+1] := STRtoINT(STGR_GRUPO_A_TODOS5.Cells [13, VI_LINHAS2+1]);
                    VMI_A_C3_2[VI_LINHAS2+1] := STRtoINT(STGR_GRUPO_A_TODOS5.Cells [14, VI_LINHAS2+1]);
               // ------------------------------------------------
               // --  Ordena os dados DAS 5 primeiras células   --
               // ------------------------------------------------
               {
               for VI_CONTADOR :=0 TO 1 DO
               BEGIN
                    FOR VI_CONTAR :=1 TO 25 DO
                    BEGIN
                      STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
                      STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                    END; // FOR VI_CONTAR
                    // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
                    FOR VI_CONTAR :=2 TO 6 DO
                    BEGIN
                      STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_GRUPO_A_TODOS5.Cells[VI_CONTAR,VI_LINHAS2+VI_CONTADOR])) ,1]:='V';
                    END; // FOR VI_CONTAR1
                    VI_CNTCELULAS := 2;
                    FOR VI_CONTAR :=1 TO 25 DO
                    BEGIN
                      IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                      BEGIN
                          STGR_GRUPO_A_TODOS5.Cells [VI_CNTCELULAS, VI_LINHAS2+VI_CONTADOR] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                          VI_CNTCELULAS := VI_CNTCELULAS + 1;
                      END; // IF (STRGR_TODOS_NUMEROS
                    END; // FOR VI_CONTAR
               END; // FOR VI_CONTADOR
               }
               VI_LINHAS2 := VI_LINHAS2 +2;
               STGR_GRUPO_A_TODOS5.RowCount := VI_LINHAS2;
          END; // IF (STGR_GRUPO_A_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1
     STGR_GRUPO_A_TODOS5.RowCount := VI_LINHAS2;
     STGR_GRUPO_A_TODOS5.Repaint;
     {
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_A_TODOS5.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+10 TO (STGR_GRUPO_A_TODOS5.RowCount-1) DO
          BEGIN
                IF  (STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1] = STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES2]) AND
                    (STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1] = STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1] = STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES2]) AND
                        (STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1] = STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES2]) AND
                        (STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1] = STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_GRUPO_A_TODOS5.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_GRUPO_A_TODOS5.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_A_TODOS5.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_GRUPO_A_TODOS5.Repaint;
      }
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_A_TODOS5.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_A_TODOS5.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_GRUPO_A_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_GRUPO_A_100REP.Repaint;



        // ******************
        // **  LINHA 2 (B) **
        // ******************
     FOR VI_CONTAR := 1 TO 2520 DO
     BEGIN
          VMI_B_C3_1[VI_CONTAR] := 0;
          VMI_B_C3_2[VI_CONTAR] := 0;
          VMI_GRUPO_B_TODOS4_2[VI_CONTAR] := 0;
          VMI_GRUPO_B_TODOS4_3[VI_CONTAR] := 0;
          VMI_GRUPO_B_TODOS4_4[VI_CONTAR] := 0;
          VMI_GRUPO_B_TODOS4_5[VI_CONTAR] := 0;
     END;//  FOR VI_CONTAR
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 6 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 7 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 7 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 7 DO
                    BEGIN
                         FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 7 DO
                         BEGIN
                              FOR VI_COMBINACOES6:= 1 TO 7 DO
                              BEGIN
                                       STGR_GRUPO_B_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_GRUPO_B_C1.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_GRUPO_B_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_GRUPO_B_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_B.Cells[VI_COMBINACOES1,0];
                                        STGR_GRUPO_B_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_B.Cells[VI_COMBINACOES2,0];
                                        STGR_GRUPO_B_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_GRUPO_B_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        // ----------------------------
                                        // -- FLAG NAs COLUNAs 2,3,4 --
                                        // ----------------------------
                                        STGR_GRUPO_B_C2.Cells [2,VI_LINHAS2]:= 'F';
                                        STGR_GRUPO_B_C3.Cells [1,VI_LINHAS2]:= 'F';
                                        STGR_GRUPO_B_C3.Cells [2,VI_LINHAS2]:= 'F';
                                        STGR_GRUPO_B_C4.Cells [1,VI_LINHAS2]:= 'F';
                                        // ---------------------------------------------
                                        // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 2 --
                                        // ---------------------------------------------
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_B.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES2,0];
                                        IF (POS(STGR_BASE_B.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             STGR_GRUPO_B_C2.Cells[2,VI_LINHAS2] := STGR_BASE_B.Cells[VI_COMBINACOES3,0];
                                        END;
                                        // ---------------------------------------------
                                        // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                                        // ---------------------------------------------
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_B.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES2,0]+ '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES3,0];
                                        IF (POS(STGR_BASE_B.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             STGR_GRUPO_B_C3.Cells[1,VI_LINHAS2] := STGR_BASE_B.Cells[VI_COMBINACOES4,0];
                                        END;
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_B.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES2,0]+ '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES3,0]+ '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES4,0];
                                        IF (POS(STGR_BASE_B.Cells[VI_COMBINACOES5,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             STGR_GRUPO_B_C3.Cells[2,VI_LINHAS2] := STGR_BASE_B.Cells[VI_COMBINACOES5,0];
                                        END;
                                        // ------------------------------------------------
                                        // -- CAPTURAR O 1º NÚMERO QUE FALTA NA COLUNA 4 --
                                        // ------------------------------------------------
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_B.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES2,0]+ '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES3,0]+ '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES4,0]+ '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES5,0];
                                        IF (POS(STGR_BASE_B.Cells[VI_COMBINACOES6,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             STGR_GRUPO_B_C4.Cells[1,VI_LINHAS2] := STGR_BASE_B.Cells[VI_COMBINACOES6,0];
                                        END;
                                        // -----------------------------------------------------------------------------------
                                        // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                                        // -----------------------------------------------------------------------------------
                                        IF NOT ((STGR_GRUPO_B_C2.Cells [2,VI_LINHAS2]='F')
                                             OR (STGR_GRUPO_B_C3.Cells [1,VI_LINHAS2]='F')
                                             OR (STGR_GRUPO_B_C3.Cells [2,VI_LINHAS2]='F')
                                             OR (STGR_GRUPO_B_C4.Cells [1,VI_LINHAS2]='F'))
                                        THEN
                                        BEGIN
                                             // -----------------------------------
                                             // -- CAPTURAR OS NÚMERO QUE FALTAM --
                                             // -----------------------------------

                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_B.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES2,0]+ '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES3,0]+ '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES4,0]+ '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES5,0]+ '-' +
                                             STGR_BASE_B.Cells[VI_COMBINACOES6,0];

                                                  VI_CONTAR :=0;
                                                  FOR VI_CONTADOR := 1 TO 7 DO
                                                  BEGIN
                                                       IF (POS(STGR_BASE_B.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                       BEGIN
                                                            VI_CONTAR := VI_CONTAR +1;
                                                            IF (VI_CONTAR=1) THEN
                                                                 STGR_GRUPO_B_C4.Cells[2,VI_LINHAS2] := STGR_BASE_B.Cells[VI_CONTADOR,0];
                                                       END;
                                                  END; // FOR VI_CONTADOR
                                             // ---------------------------------------
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_GRUPO_B_C1.RowCount := VI_LINHAS2;
                                             STGR_GRUPO_B_C2.RowCount := VI_LINHAS2;
                                             STGR_GRUPO_B_C3.RowCount := VI_LINHAS2;
                                             STGR_GRUPO_B_C4.RowCount := VI_LINHAS2;
                                        END; // IF
                              END; // FOR VI_COMBINACOES6
                         END; // FOR VI_COMBINACOES5
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_GRUPO_B_C1.Repaint;
     STGR_GRUPO_B_C2.Repaint;
     STGR_GRUPO_B_C3.Repaint;
     STGR_GRUPO_B_C4.Repaint;


          // ----------------------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 1 SE NECESSÁRIO --
          // ----------------------------------------------------
     IF (CB_FIXO_B.ItemIndex > 0) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_B_C2.RowCount-1) DO
          BEGIN
               IF (STRtoINT(STGR_GRUPO_B_C1.Cells[2,VI_COMBINACOES1])=STRtoINT(ED_fixoS_B1.Text))
                    OR (STRtoINT(STGR_GRUPO_B_C1.Cells[3,VI_COMBINACOES1])=STRtoINT(ED_fixoS_B1.Text))
               THEN
               BEGIN
                    STGR_GRUPO_B_C1.Cells[1,VI_COMBINACOES1]:= 'V';
               END ELSE
               BEGIN
                    STGR_GRUPO_B_C1.Cells[1,VI_COMBINACOES1]:= 'F';
               END; // IF
          END; // FOR VI_COMBINACOES1
     END; // IF (CB_FIXO
     STGR_GRUPO_B_C1.Repaint;
     STGR_GRUPO_B_C2.Repaint;
     STGR_GRUPO_B_C3.Repaint;
     STGR_GRUPO_B_C4.Repaint;

          // ------------------------
          // -- Ordenando os dados --
          // ------------------------
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_B_C1.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_B_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_GRUPO_B_TODOS4.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_GRUPO_B_TODOS4.Cells[1 ,VI_LINHAS2] := 'V';
               STGR_GRUPO_B_TODOS4.Cells [2, VI_LINHAS2] := STGR_GRUPO_B_C1.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_B_TODOS4.Cells [3, VI_LINHAS2] := STGR_GRUPO_B_C1.Cells[3,VI_COMBINACOES1];
               STGR_GRUPO_B_TODOS4.Cells [4, VI_LINHAS2] := STGR_GRUPO_B_C2.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_B_TODOS4.Cells [5, VI_LINHAS2] := STGR_GRUPO_B_C4.Cells[1,VI_COMBINACOES1];
               VMI_GRUPO_B_TODOS4_2[VI_LINHAS2] := STRtoINT(STGR_GRUPO_B_C1.Cells[2,VI_COMBINACOES1]);
               VMI_GRUPO_B_TODOS4_3[VI_LINHAS2] := STRtoINT(STGR_GRUPO_B_C1.Cells[3,VI_COMBINACOES1]);
               VMI_GRUPO_B_TODOS4_4[VI_LINHAS2] := STRtoINT(STGR_GRUPO_B_C2.Cells[2,VI_COMBINACOES1]);
               VMI_GRUPO_B_TODOS4_5[VI_LINHAS2] := STRtoINT(STGR_GRUPO_B_C4.Cells[1,VI_COMBINACOES1]);
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, AC1,AC1,AC2,AC3,AC4,AC5,AC6,AC6
                    STGR_GRUPO_B_TODOS4.Cells [6, VI_LINHAS2] := STGR_GRUPO_B_C1.Cells[0,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [7, VI_LINHAS2] := STGR_GRUPO_B_C1.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [8, VI_LINHAS2] := STGR_GRUPO_B_C1.Cells[3,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [9, VI_LINHAS2] := STGR_GRUPO_B_C2.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [10, VI_LINHAS2] := STGR_GRUPO_B_C3.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [11, VI_LINHAS2] := STGR_GRUPO_B_C3.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [12, VI_LINHAS2] := STGR_GRUPO_B_C4.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [13, VI_LINHAS2] := STGR_GRUPO_B_C4.Cells[2,VI_COMBINACOES1];
                    VMI_B_C3_1[VI_LINHAS2] := STRtoINT(STGR_GRUPO_B_TODOS4.Cells [10, VI_LINHAS2]);
                    VMI_B_C3_2[VI_LINHAS2] := STRtoINT(STGR_GRUPO_B_TODOS4.Cells [11, VI_LINHAS2]);
                         STGR_GRUPO_B_TODOS4.Cells [14, VI_LINHAS2] := 'fora:';
                         STGR_GRUPO_B_TODOS4.Cells [15, VI_LINHAS2] := STGR_GRUPO_B_C3.Cells[1,VI_COMBINACOES1];
                         STGR_GRUPO_B_TODOS4.Cells [16, VI_LINHAS2] := STGR_GRUPO_B_C3.Cells[2,VI_COMBINACOES1];
                         STGR_GRUPO_B_TODOS4.Cells [17, VI_LINHAS2] := STGR_GRUPO_B_C4.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_B_TODOS4.Cells [0, VI_LINHAS2+1] := INTtoSTR(VI_LINHAS2+1);
                                                                 STGR_GRUPO_B_TODOS4.Cells [1 ,VI_LINHAS2+1] := 'F';
               STGR_GRUPO_B_TODOS4.Cells [2, VI_LINHAS2+1] := STGR_GRUPO_B_C1.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_B_TODOS4.Cells [3, VI_LINHAS2+1] := STGR_GRUPO_B_C1.Cells[3,VI_COMBINACOES1];
               STGR_GRUPO_B_TODOS4.Cells [4, VI_LINHAS2+1] := STGR_GRUPO_B_C2.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_B_TODOS4.Cells [5, VI_LINHAS2+1] := STGR_GRUPO_B_C4.Cells[2,VI_COMBINACOES1];
               VMI_GRUPO_B_TODOS4_2[VI_LINHAS2+1] := STRtoINT(STGR_GRUPO_B_C1.Cells[2,VI_COMBINACOES1]);
               VMI_GRUPO_B_TODOS4_3[VI_LINHAS2+1] := STRtoINT(STGR_GRUPO_B_C1.Cells[3,VI_COMBINACOES1]);
               VMI_GRUPO_B_TODOS4_4[VI_LINHAS2+1] := STRtoINT(STGR_GRUPO_B_C2.Cells[2,VI_COMBINACOES1]);
               VMI_GRUPO_B_TODOS4_5[VI_LINHAS2+1] := STRtoINT(STGR_GRUPO_B_C4.Cells[2,VI_COMBINACOES1]);
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, AC1,AC1,AC2,AC3,AC4,AC5,AC6,AC6
                    STGR_GRUPO_B_TODOS4.Cells [6, VI_LINHAS2+1] := STGR_GRUPO_B_C1.Cells[0,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [7, VI_LINHAS2+1] := STGR_GRUPO_B_C1.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [8, VI_LINHAS2+1] := STGR_GRUPO_B_C1.Cells[3,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [9, VI_LINHAS2+1] := STGR_GRUPO_B_C2.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [10, VI_LINHAS2+1] := STGR_GRUPO_B_C3.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [11, VI_LINHAS2+1] := STGR_GRUPO_B_C3.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [12, VI_LINHAS2+1] := STGR_GRUPO_B_C4.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [13, VI_LINHAS2+1] := STGR_GRUPO_B_C4.Cells[2,VI_COMBINACOES1];
                         STGR_GRUPO_B_TODOS4.Cells [14, VI_LINHAS2+1] := 'fora:';
                         STGR_GRUPO_B_TODOS4.Cells [15, VI_LINHAS2+1] := STGR_GRUPO_B_C3.Cells[1,VI_COMBINACOES1];
                         STGR_GRUPO_B_TODOS4.Cells [16, VI_LINHAS2+1] := STGR_GRUPO_B_C3.Cells[2,VI_COMBINACOES1];
                         STGR_GRUPO_B_TODOS4.Cells [17, VI_LINHAS2+1] := STGR_GRUPO_B_C4.Cells[1,VI_COMBINACOES1];
                    VMI_B_C3_1[VI_LINHAS2+1] := STRtoINT(STGR_GRUPO_B_TODOS4.Cells[10, VI_LINHAS2+1]);
                    VMI_B_C3_2[VI_LINHAS2+1] := STRtoINT(STGR_GRUPO_B_TODOS4.Cells[11, VI_LINHAS2+1]);
               // ------------------------------------------------
               // --  Ordena os dados DAS 4 primeiras células   --
               // ------------------------------------------------
               {
               for VI_CONTADOR :=0 TO 1 DO
               BEGIN
                    FOR VI_CONTAR :=1 TO 25 DO
                    BEGIN
                      STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
                      STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                    END; // FOR VI_CONTAR
                    // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
                    FOR VI_CONTAR :=2 TO 5 DO
                    BEGIN
                      STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_GRUPO_B_TODOS4.Cells[VI_CONTAR,VI_LINHAS2+VI_CONTADOR])) ,1]:='V';
                    END; // FOR VI_CONTAR1
                    VI_CNTCELULAS := 2;
                    FOR VI_CONTAR :=1 TO 25 DO
                    BEGIN
                      IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                      BEGIN
                          STGR_GRUPO_B_TODOS4.Cells [VI_CNTCELULAS, VI_LINHAS2+VI_CONTADOR] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                          VI_CNTCELULAS := VI_CNTCELULAS + 1;
                      END; // IF (STRGR_TODOS_NUMEROS
                    END; // FOR VI_CONTAR
               END; // FOR VI_CONTADOR
               }
               VI_LINHAS2 := VI_LINHAS2 +2;
               STGR_GRUPO_B_TODOS4.RowCount := VI_LINHAS2;
          END; // IF (STGR_GRUPO_B_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1
     STGR_GRUPO_B_TODOS4.RowCount := VI_LINHAS2;
     STGR_GRUPO_B_TODOS4.Repaint;
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
               {
     FOR VI_COMBINACOES1:= 1 TO (STGR_Grupo_B_TODOS4.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_Grupo_B_TODOS4.RowCount-1) DO
          BEGIN
                IF  (STGR_Grupo_B_TODOS4.Cells[2,VI_COMBINACOES1] = STGR_Grupo_B_TODOS4.Cells[2,VI_COMBINACOES2]) AND
                    (STGR_Grupo_B_TODOS4.Cells[3,VI_COMBINACOES1] = STGR_Grupo_B_TODOS4.Cells[3,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_Grupo_B_TODOS4.Cells[4,VI_COMBINACOES1] = STGR_Grupo_B_TODOS4.Cells[4,VI_COMBINACOES2]) AND
                        (STGR_Grupo_B_TODOS4.Cells[5,VI_COMBINACOES1] = STGR_Grupo_B_TODOS4.Cells[5,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_Grupo_B_TODOS4.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_Grupo_B_TODOS4.Cells[1,VI_CONTAR]
                END; // if (STGR_Grupo_B_TODOS4.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_GRUPO_B_TODOS4.Repaint;
                     }
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_B_TODOS4.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_B_TODOS4.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     IF (VI_CONTAR>1258) THEN VI_MOSTRAR_qtdcomb2:=1 ELSE VI_MOSTRAR_qtdcomb2:=0;
     IF (VI_CONTAR>1258) THEN LA_PERC_COMB2.Visible :=TRUE ELSE LA_PERC_COMB2.Visible:=false;
     LA_GRUPO_B_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_GRUPO_B_100REP.Repaint;

        // ******************
        // **  LINHA 3 (C) **
        // ******************
     FOR VI_CONTAR := 1 TO 60 DO
     BEGIN
          VMI_C_C3_1[VI_CONTAR]:=0;
          VMI_C_C3_2[VI_CONTAR]:=0;
          VMS_GrupoC_C1_SEL[VI_CONTAR]:='000000';
     END;//  FOR VI_CONTAR
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 5 DO
                    BEGIN
                         STGR_GRUPO_C_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_C_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_C_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_GRUPO_C_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_C.Cells[VI_COMBINACOES1,0];
                         STGR_GRUPO_C_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_C.Cells[VI_COMBINACOES2,0];
                         STGR_GRUPO_C_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);

                         // ----------------------------
                         // -- FLAG NA COLUNA 2 E 3 --
                         // ----------------------------
                         STGR_GRUPO_C_C2.Cells [2,VI_LINHAS2]:= 'F';
                         STGR_GRUPO_C_C3.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_C.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_C.Cells[VI_COMBINACOES2,0];
                         IF (POS(STGR_BASE_C.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_GRUPO_C_C2.Cells[2,VI_LINHAS2] := STGR_BASE_C.Cells[VI_COMBINACOES3,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_C.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_C.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_C.Cells[VI_COMBINACOES3,0];
                         IF (POS(STGR_BASE_C.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_GRUPO_C_C3.Cells[1,VI_LINHAS2] := STGR_BASE_C.Cells[VI_COMBINACOES4,0];
                         END;
                        // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_GRUPO_C_C2.Cells [2,VI_LINHAS2]='F')
                              OR (STGR_GRUPO_C_C3.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // -----------------------------------
                              // -- CAPTURAR OS NÚMERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_C.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_C.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_C.Cells[VI_COMBINACOES3,0]+ '-' +
                              STGR_BASE_C.Cells[VI_COMBINACOES4,0];

                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_C.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_GRUPO_C_C3.Cells[2,VI_LINHAS2] := STGR_BASE_C.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_GRUPO_C_C1.RowCount := VI_LINHAS2;
                              STGR_GRUPO_C_C2.RowCount := VI_LINHAS2;
                              STGR_GRUPO_C_C3.RowCount := VI_LINHAS2;
                         END; // IF
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_GRUPO_C_C1.Repaint;
     STGR_GRUPO_C_C2.Repaint;
     STGR_GRUPO_C_C3.Repaint;

          // ----------------------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 1 SE NECESSÁRIO --
          // ----------------------------------------------------
     IF (CB_FIXO_C.ItemIndex > 0) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_C_C1.RowCount-1) DO
          BEGIN
               IF (STRtoINT(STGR_GRUPO_C_C1.Cells[2,VI_COMBINACOES1])=STRtoINT(ED_fixoS_C1.Text))
                    OR (STRtoINT(STGR_GRUPO_C_C1.Cells[3,VI_COMBINACOES1])=STRtoINT(ED_fixoS_C1.Text))
               THEN
               BEGIN
                    STGR_GRUPO_C_C1.Cells [1,VI_COMBINACOES1]:= 'V';
               END ELSE
               BEGIN
                    STGR_GRUPO_C_C1.Cells [1,VI_COMBINACOES1]:= 'F';
               END; // IF
          END; // FOR VI_COMBINACOES1
     END; // IF (CB_FIXO
     STGR_GRUPO_C_C1.Repaint;
     STGR_GRUPO_C_C2.Repaint;

          // ------------------------
          // -- Ordenando os dados --
          // ------------------------
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_C_C1.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_C_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_GRUPO_C_TODOS3.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_GRUPO_C_TODOS3.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_GRUPO_C_TODOS3.Cells [2, VI_LINHAS2] := STGR_GRUPO_C_C1.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_C_TODOS3.Cells [3, VI_LINHAS2] := STGR_GRUPO_C_C1.Cells[3,VI_COMBINACOES1];
               STGR_GRUPO_C_TODOS3.Cells [4, VI_LINHAS2] := STGR_GRUPO_C_C2.Cells[2,VI_COMBINACOES1];
                VMS_GrupoC_C1_SEL[VI_LINHAS2]:= STGR_GRUPO_C_C1.Cells[2,VI_COMBINACOES1]+STGR_GRUPO_C_C1.Cells[3,VI_COMBINACOES1]+STGR_GRUPO_C_C2.Cells[2,VI_COMBINACOES1];
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, AC1,AC1,AC2,AC3,AC4,AC5,AC6,AC6
                    STGR_GRUPO_C_TODOS3.Cells [5, VI_LINHAS2] := STGR_GRUPO_C_C1.Cells[0,VI_COMBINACOES1];
                    STGR_GRUPO_C_TODOS3.Cells [6, VI_LINHAS2] := STGR_GRUPO_C_C1.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_C_TODOS3.Cells [7, VI_LINHAS2] := STGR_GRUPO_C_C1.Cells[3,VI_COMBINACOES1];
                    STGR_GRUPO_C_TODOS3.Cells [8, VI_LINHAS2] := STGR_GRUPO_C_C2.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_C_TODOS3.Cells [9, VI_LINHAS2] := STGR_GRUPO_C_C3.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_C_TODOS3.Cells [10, VI_LINHAS2] := STGR_GRUPO_C_C3.Cells[2,VI_COMBINACOES1];
                    VMI_C_C3_1[VI_LINHAS2] := STRtoINT(STGR_GRUPO_C_TODOS3.Cells[9, VI_LINHAS2]);
                    VMI_C_C3_2[VI_LINHAS2] := STRtoINT(STGR_GRUPO_C_TODOS3.Cells[10, VI_LINHAS2]);

               // ------------------------------------------------
               // --  Ordena os dados DAS 3 primeiras células   --
               // ------------------------------------------------
               {
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                 STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
                 STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
               END; // FOR VI_CONTAR
               // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
               FOR VI_CONTAR :=2 TO 4 DO
               BEGIN
                 STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_GRUPO_C_TODOS3.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
               END; // FOR VI_CONTAR1
               VI_CNTCELULAS := 2;
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                 IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                 BEGIN
                     STGR_GRUPO_C_TODOS3.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                     VI_CNTCELULAS := VI_CNTCELULAS + 1;
                 END; // IF (STRGR_TODOS_NUMEROS
               END; // FOR VI_CONTAR
               }
               VI_LINHAS2 := VI_LINHAS2 +1;
               STGR_GRUPO_C_TODOS3.RowCount := VI_LINHAS2;
          END; // IF (STGR_GRUPO_C_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1
     STGR_GRUPO_C_TODOS3.RowCount := VI_LINHAS2;
     STGR_GRUPO_C_TODOS3.Repaint;
                {
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_C_TODOS3.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_GRUPO_C_TODOS3.RowCount-1) DO
          BEGIN
                IF  (STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES1] = STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES2]) AND
                    (STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES1] = STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES1] = STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_GRUPO_C_TODOS3.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_GRUPO_C_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_C_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_GRUPO_C_TODOS3.Repaint;
      }

     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_C_TODOS3.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_C_TODOS3.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_GRUPO_C_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_GRUPO_C_100REP.Repaint;



        // ******************
        // **  LINHA 4 (D) **
        // ******************
     FOR VI_CONTAR := 1 TO 60 DO
     BEGIN
          VMI_D_C3_1[VI_CONTAR]:=0;
          VMI_D_C3_2[VI_CONTAR]:=0;
          VMS_GrupoD_C1_SEL[VI_CONTAR]:='000000';
     END;//  FOR VI_CONTAR
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 5 DO
                    BEGIN
                         STGR_GRUPO_D_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_D_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_D_C1.Cells [1,VI_LINHAS2]:= 'V';
                         STGR_GRUPO_D_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_D.Cells[VI_COMBINACOES1,0];
                         STGR_GRUPO_D_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_D.Cells[VI_COMBINACOES2,0];
                         STGR_GRUPO_D_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         // ----------------------------
                         // -- FLAG NA COLUNA 2 --
                         // ----------------------------
                         STGR_GRUPO_D_C2.Cells [2,VI_LINHAS2]:= 'F';
                         STGR_GRUPO_D_C3.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_D.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_D.Cells[VI_COMBINACOES2,0];
                         IF (POS(STGR_BASE_D.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_GRUPO_D_C2.Cells[2,VI_LINHAS2] := STGR_BASE_D.Cells[VI_COMBINACOES3,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_D.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_D.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_D.Cells[VI_COMBINACOES3,0];
                         IF (POS(STGR_BASE_D.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_GRUPO_D_C3.Cells[1,VI_LINHAS2] := STGR_BASE_D.Cells[VI_COMBINACOES4,0];
                         END;

                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_GRUPO_D_C2.Cells [2,VI_LINHAS2]='F')
                              OR (STGR_GRUPO_D_C3.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // -----------------------------------
                              // -- CAPTURAR OS NÚMERO QUE FALTAM --
                              // -----------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_D.Cells[VI_COMBINACOES1,0] + '-' +
                              STGR_BASE_D.Cells[VI_COMBINACOES2,0]+ '-' +
                              STGR_BASE_D.Cells[VI_COMBINACOES3,0]+ '-' +
                              STGR_BASE_D.Cells[VI_COMBINACOES4,0];

                                   VI_CONTAR :=0;
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_D.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             VI_CONTAR := VI_CONTAR +1;
                                             IF (VI_CONTAR=1) THEN
                                                  STGR_GRUPO_D_C3.Cells[2,VI_LINHAS2] := STGR_BASE_D.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR
                              // ---------------------------------------
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_GRUPO_D_C1.RowCount := VI_LINHAS2;
                              STGR_GRUPO_D_C2.RowCount := VI_LINHAS2;
                              STGR_GRUPO_D_C3.RowCount := VI_LINHAS2;
                         end; //IF
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_GRUPO_D_C1.Repaint;
     STGR_GRUPO_D_C2.Repaint;
     STGR_GRUPO_D_C3.Repaint;

          // ----------------------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 1 SE NECESSÁRIO --
          // ----------------------------------------------------
     IF (CB_FIXO_D.ItemIndex > 0) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_D_C1.RowCount-1) DO
          BEGIN
               IF (STRtoINT(STGR_GRUPO_D_C1.Cells[2,VI_COMBINACOES1])=STRtoINT(ED_fixoS_D1.Text))
                    OR (STRtoINT(STGR_GRUPO_D_C1.Cells[3,VI_COMBINACOES1])=STRtoINT(ED_fixoS_D1.Text))
               THEN
               BEGIN
                    STGR_GRUPO_D_C1.Cells [1,VI_COMBINACOES1]:= 'V';
               END ELSE
               BEGIN
                    STGR_GRUPO_D_C1.Cells [1,VI_COMBINACOES1]:= 'F';
               END; // IF

          END; // FOR VI_COMBINACOES1
     END; // IF (CB_FIXO


          // ------------------------
          // -- Ordenando os dados --
          // ------------------------
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_D_C1.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_D_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_GRUPO_D_TODOS3.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_GRUPO_D_TODOS3.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_GRUPO_D_TODOS3.Cells [2, VI_LINHAS2] := STGR_GRUPO_D_C1.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_D_TODOS3.Cells [3, VI_LINHAS2] := STGR_GRUPO_D_C1.Cells[3,VI_COMBINACOES1];
               STGR_GRUPO_D_TODOS3.Cells [4, VI_LINHAS2] := STGR_GRUPO_D_C2.Cells[2,VI_COMBINACOES1];
                VMS_GrupoD_C1_SEL[VI_LINHAS2]:= STGR_GRUPO_D_C1.Cells[2,VI_COMBINACOES1]+STGR_GRUPO_D_C1.Cells[3,VI_COMBINACOES1]+STGR_GRUPO_D_C2.Cells[2,VI_COMBINACOES1];
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, AC1,AC1,AC2,AC3,AC4,AC5,AC6,AC6
                    STGR_GRUPO_D_TODOS3.Cells [5, VI_LINHAS2] := STGR_GRUPO_D_C1.Cells[0,VI_COMBINACOES1];
                    STGR_GRUPO_D_TODOS3.Cells [6, VI_LINHAS2] := STGR_GRUPO_D_C1.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_D_TODOS3.Cells [7, VI_LINHAS2] := STGR_GRUPO_D_C1.Cells[3,VI_COMBINACOES1];
                    STGR_GRUPO_D_TODOS3.Cells [8, VI_LINHAS2] := STGR_GRUPO_D_C2.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_D_TODOS3.Cells [9, VI_LINHAS2] := STGR_GRUPO_D_C3.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_D_TODOS3.Cells [10, VI_LINHAS2] := STGR_GRUPO_D_C3.Cells[2,VI_COMBINACOES1];
                    VMI_D_C3_1[VI_LINHAS2] := STRtoINT(STGR_GRUPO_D_TODOS3.Cells [9, VI_LINHAS2]);
                    VMI_D_C3_2[VI_LINHAS2] := STRtoINT(STGR_GRUPO_D_TODOS3.Cells [10, VI_LINHAS2]);
               // ------------------------------------------------
               // --  Ordena os dados DAS 3 primeiras células   --
               // ------------------------------------------------
               {
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                 STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
                 STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
               END; // FOR VI_CONTAR
               // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
               FOR VI_CONTAR :=2 TO 4 DO
               BEGIN
                 STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_GRUPO_D_TODOS3.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
               END; // FOR VI_CONTAR1
               VI_CNTCELULAS := 2;
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                 IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                 BEGIN
                     STGR_GRUPO_D_TODOS3.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                     VI_CNTCELULAS := VI_CNTCELULAS + 1;
                 END; // IF (STRGR_TODOS_NUMEROS
               END; // FOR VI_CONTAR
               }
               VI_LINHAS2 := VI_LINHAS2 +1;
               STGR_GRUPO_D_TODOS3.RowCount := VI_LINHAS2;
          END; // IF (STGR_GRUPO_D_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1
     STGR_GRUPO_D_TODOS3.RowCount := VI_LINHAS2;
     STGR_GRUPO_D_TODOS3.Repaint;
               {
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_D_TODOS3.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_GRUPO_D_TODOS3.RowCount-1) DO
          BEGIN
                IF  (STGR_GRUPO_D_TODOS3.Cells[2,VI_COMBINACOES1] = STGR_GRUPO_D_TODOS3.Cells[2,VI_COMBINACOES2]) AND
                    (STGR_GRUPO_D_TODOS3.Cells[3,VI_COMBINACOES1] = STGR_GRUPO_D_TODOS3.Cells[3,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_GRUPO_D_TODOS3.Cells[4,VI_COMBINACOES1] = STGR_GRUPO_D_TODOS3.Cells[4,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_GRUPO_D_TODOS3.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_GRUPO_D_TODOS3.Repaint;
     }
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_D_TODOS3.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_D_TODOS3.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;


        // ****************
        // **  LINHA CxD **
        // ****************
     FOR VI_CONTAR := 1 TO 60 DO
     BEGIN
          VMI_D_C3_1[VI_CONTAR]:=0;
          VMI_D_C3_2[VI_CONTAR]:=0;
          VMS_GrupoD_C1_SEL[VI_CONTAR]:='000000';
     END;//  FOR VI_CONTAR
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_C_TODOS3.RowCount-1) DO
     BEGIN
                    IF     ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                              CONTINUE;
                    IF     ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                              CONTINUE;
                    IF     ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                              CONTINUE;
          FOR VI_COMBINACOES2:= 1 TO (STGR_GRUPO_D_TODOS3.RowCount-1) DO
          BEGIN
                         IF     ((STRtoINT(STGR_GRUPO_D_TODOS3.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                            OR  ((STRtoINT(STGR_GRUPO_D_TODOS3.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                            OR  ((STRtoINT(STGR_GRUPO_D_TODOS3.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                            THEN
                                   CONTINUE;
                         IF     ((STRtoINT(STGR_GRUPO_D_TODOS3.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                            OR  ((STRtoINT(STGR_GRUPO_D_TODOS3.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                            OR  ((STRtoINT(STGR_GRUPO_D_TODOS3.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                            THEN
                                   CONTINUE;
                         IF     ((STRtoINT(STGR_GRUPO_D_TODOS3.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                            OR  ((STRtoINT(STGR_GRUPO_D_TODOS3.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                            OR  ((STRtoINT(STGR_GRUPO_D_TODOS3.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                            THEN
                                   CONTINUE;
               VI_CONTADOR := STRtoINT(STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES1])
                             +STRtoINT(STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES1])
                             +STRtoINT(STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES1])
                             +STRtoINT(STGR_GRUPO_D_TODOS3.Cells[2,VI_COMBINACOES2])
                             +STRtoINT(STGR_GRUPO_D_TODOS3.Cells[3,VI_COMBINACOES2])
                             +STRtoINT(STGR_GRUPO_D_TODOS3.Cells[4,VI_COMBINACOES2]);
               IF (VI_CONTADOR >= STRtoINT(ED_SOMAS_CxD_INI.Text)) AND (VI_CONTADOR <= STRtoINT(ED_SOMAS_CxD_FINAL.Text))
               THEN BEGIN
                    STGR_GRUPO_CxD.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_GRUPO_CxD.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_GRUPO_CxD.Cells [1,VI_LINHAS2]:= 'V';
                    STGR_GRUPO_CxD.Cells [2,VI_LINHAS2]:= STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_CxD.Cells [3,VI_LINHAS2]:= STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES1];
                    STGR_GRUPO_CxD.Cells [4,VI_LINHAS2]:= STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES1];
                    STGR_GRUPO_CxD.Cells [5,VI_LINHAS2]:= '['+INTtoSTR(VI_COMBINACOES1)+']' ;
                    STGR_GRUPO_CxD.Cells [6,VI_LINHAS2]:= '-' ;
                    STGR_GRUPO_CxD.Cells [7,VI_LINHAS2]:= STGR_GRUPO_D_TODOS3.Cells[2,VI_COMBINACOES2];
                    STGR_GRUPO_CxD.Cells [8,VI_LINHAS2]:= STGR_GRUPO_D_TODOS3.Cells[3,VI_COMBINACOES2];
                    STGR_GRUPO_CxD.Cells [9,VI_LINHAS2]:= STGR_GRUPO_D_TODOS3.Cells[4,VI_COMBINACOES2];
                    STGR_GRUPO_CxD.Cells [10,VI_LINHAS2]:= '['+INTtoSTR(VI_COMBINACOES2)+']' ;
                    STGR_GRUPO_CxD.Cells [11,VI_LINHAS2]:= 's:'+INTtoSTR(VI_CONTADOR) ;
                                   STGR_GRUPO_CxD.Cells [13,VI_LINHAS2]:= STGR_GRUPO_C_TODOS3.Cells[6,VI_COMBINACOES1];
                    STGR_GRUPO_CxD.Cells [14,VI_LINHAS2]:= STGR_GRUPO_C_TODOS3.Cells[7,VI_COMBINACOES1];
                    STGR_GRUPO_CxD.Cells [15,VI_LINHAS2]:= STGR_GRUPO_C_TODOS3.Cells[8,VI_COMBINACOES1];
                    STGR_GRUPO_CxD.Cells [16,VI_LINHAS2]:= STGR_GRUPO_C_TODOS3.Cells[9,VI_COMBINACOES1];
                    STGR_GRUPO_CxD.Cells [17,VI_LINHAS2]:= STGR_GRUPO_C_TODOS3.Cells[10,VI_COMBINACOES1];
                                   STGR_GRUPO_CxD.Cells [19,VI_LINHAS2]:= STGR_GRUPO_D_TODOS3.Cells[6,VI_COMBINACOES2];
                    STGR_GRUPO_CxD.Cells [20,VI_LINHAS2]:= STGR_GRUPO_D_TODOS3.Cells[7,VI_COMBINACOES2];
                    STGR_GRUPO_CxD.Cells [21,VI_LINHAS2]:= STGR_GRUPO_D_TODOS3.Cells[8,VI_COMBINACOES2];
                    STGR_GRUPO_CxD.Cells [22,VI_LINHAS2]:= STGR_GRUPO_D_TODOS3.Cells[9,VI_COMBINACOES2];
                    STGR_GRUPO_CxD.Cells [23,VI_LINHAS2]:= STGR_GRUPO_D_TODOS3.Cells[10,VI_COMBINACOES2];
                         STGR_GRUPO_CxD.Cells [24,VI_LINHAS2]:= 'fora:';
                         STGR_GRUPO_CxD.Cells [25,VI_LINHAS2]:= STGR_GRUPO_C_TODOS3.Cells [9, VI_COMBINACOES1];
                         STGR_GRUPO_CxD.Cells [26,VI_LINHAS2]:= STGR_GRUPO_C_TODOS3.Cells [10, VI_COMBINACOES1];
                         STGR_GRUPO_CxD.Cells [27,VI_LINHAS2]:= STGR_GRUPO_D_TODOS3.Cells[9,VI_COMBINACOES2] ;
                         STGR_GRUPO_CxD.Cells [28,VI_LINHAS2]:= STGR_GRUPO_D_TODOS3.Cells[10,VI_COMBINACOES2];
                    {
                         FOR VI_CONTAR :=1 TO 25 DO
                         BEGIN
                           STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
                           STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                         END; // FOR VI_CONTAR
                         // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
                         FOR VI_CONTAR :=13 TO 17 DO
                         BEGIN
                           STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_GRUPO_CxD.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
                         END; // FOR VI_CONTAR1
                         VI_CNTCELULAS := 13;
                         FOR VI_CONTAR :=1 TO 25 DO
                         BEGIN
                           IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                           BEGIN
                               STGR_GRUPO_CxD.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                               VI_CNTCELULAS := VI_CNTCELULAS + 1;
                           END; // IF (STRGR_TODOS_NUMEROS
                         END; // FOR VI_CONTAR
                         FOR VI_CONTAR :=1 TO 25 DO
                         BEGIN
                              STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
                              STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                         END; // FOR VI_CONTAR
                         // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
                         FOR VI_CONTAR :=19 TO 23 DO
                         BEGIN
                              STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_GRUPO_CxD.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
                         END; // FOR VI_CONTAR1
                         VI_CNTCELULAS := 19;
                         FOR VI_CONTAR :=1 TO 25 DO
                         BEGIN
                              IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                              BEGIN
                                   STGR_GRUPO_CxD.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                   VI_CNTCELULAS := VI_CNTCELULAS + 1;
                              END; // IF (STRGR_TODOS_NUMEROS
                         END; // FOR VI_CONTAR
                         }
                    VI_LINHAS2:= VI_LINHAS2+1;
                    STGR_GRUPO_CxD.RowCount := VI_LINHAS2;
               END; // IF
          END; // FOR VI_COMBINACOES2:=
     END; // FOR VI_COMBINACOES1:=
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_CxD.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_CxD.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_GRUPO_CxD.Caption := INTtoSTR(VI_CONTAR);
     LA_GRUPO_CxD.Repaint;
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_CxD.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_GRUPO_CxD.RowCount-1) DO
          BEGIN
                IF  (STGR_GRUPO_CxD.Cells [13,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [13,VI_COMBINACOES2]) AND
                   (STGR_GRUPO_CxD.Cells [14,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [14,VI_COMBINACOES2])
                THEN
                BEGIN
                    IF (STGR_GRUPO_CxD.Cells [15,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [15,VI_COMBINACOES2]) AND
                      (STGR_GRUPO_CxD.Cells [16,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [16,VI_COMBINACOES2]) AND
                      (STGR_GRUPO_CxD.Cells [17,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [17,VI_COMBINACOES2]) AND
                      (STGR_GRUPO_CxD.Cells [19,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [19,VI_COMBINACOES2]) AND
                      (STGR_GRUPO_CxD.Cells [20,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [20,VI_COMBINACOES2]) AND
                      (STGR_GRUPO_CxD.Cells [21,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [21,VI_COMBINACOES2]) AND
                      (STGR_GRUPO_CxD.Cells [22,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [23,VI_COMBINACOES2]) AND
                      (STGR_GRUPO_CxD.Cells [23,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [22,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_GRUPO_CxD.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1

          FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_CxD.RowCount-1) DO
          BEGIN
               IF (STGR_GRUPO_CxD.Cells [1,VI_COMBINACOES1]= 'F') THEN
                                   CONTINUE;
               FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_GRUPO_CxD.RowCount-1) DO
               BEGIN
                     IF  (STGR_GRUPO_CxD.Cells [13,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [13,VI_COMBINACOES2]) AND
                        (STGR_GRUPO_CxD.Cells [14,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [14,VI_COMBINACOES2])
                     THEN
                     BEGIN
                         IF (STGR_GRUPO_CxD.Cells [15,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [15,VI_COMBINACOES2]) AND
                           (STGR_GRUPO_CxD.Cells [16,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [17,VI_COMBINACOES2]) AND
                           (STGR_GRUPO_CxD.Cells [17,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [16,VI_COMBINACOES2]) AND
                           (STGR_GRUPO_CxD.Cells [19,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [19,VI_COMBINACOES2]) AND
                           (STGR_GRUPO_CxD.Cells [20,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [20,VI_COMBINACOES2]) AND
                           (STGR_GRUPO_CxD.Cells [21,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [21,VI_COMBINACOES2]) AND
                           (STGR_GRUPO_CxD.Cells [22,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [22,VI_COMBINACOES2]) AND
                           (STGR_GRUPO_CxD.Cells [23,VI_COMBINACOES1]= STGR_GRUPO_CxD.Cells [23,VI_COMBINACOES2])
                             THEN
                         BEGIN
                             STGR_GRUPO_CxD.Cells [1,VI_COMBINACOES2] := 'F';
                         END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
                     END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
               END; // FOR VI_COMBINACOES2
          END; // FOR VI_COMBINACOES1

     VI_CONTADOR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_CxD.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_CxD.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTADOR:=VI_CONTADOR +1;
     END;
     LA_GRUPO_CxD.Caption := INTtoSTR(VI_CONTADOR);
     LA_GRUPO_CxD.Repaint;
     LA_GRUPO_CxD.Caption := INTtoSTR(VI_CONTAR)+ ' => '+INTtoSTR(VI_CONTADOR);
     LA_GRUPO_CxD.Repaint;
     STGR_GRUPO_D_TODOS3.Repaint;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT DISTINCT(DADOS) FROM SIMULACAO_2_DADOS; ')  ;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_2_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_2_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_2_DADOS_TEMP')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT FIRST 10 * FROM SIMULACAO_2_DADOS ORDER BY DADOS; ')  ;
            SELF.IBQ_COMBINACOES.Open;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE SIMULACAO_2_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     SHOWMESSAGE('OK');


end;



procedure T_FRM_SIMULACAO2.BBT_GERARClick(Sender: TObject);
var
     VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR_COMB1: integer;
     VI_COMBINACOES3, VI_COMBINACOES4: SMALLINT;
     VI_SOMA1: SMALLINT;
     VI_FLAG_SOMATORIA1, VI_FLAG_SOMATORIA2, VI_FLAG_SOMATORIA3, VI_FLAG_SOMATORIA4, VI_FLAG_SOMATORIA_FINAL: SMALLINT;
BEGIN
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     STGR_COMB15.RowCount := 3;
     STGR_COMB15.Repaint;
     VI_CONTAR_COMB1 := 0;
     FOR VI_COMBINACOES1 := 0 TO 18 DO
     BEGIN
          STGR_COMB15.Cells[VI_COMBINACOES1,1] := '0';
     END;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     PGBR_REMREPET.Position := 0;
     PGBR_REMREPET.Repaint;
     LA_PERC_COMB2.Caption := '00%      ';
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_PERC_100REPET.Caption := '00%      ';
     LA_PERC_100REPET.Repaint;
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_PERC_COMB2.Repaint;
     LA_QTD_COMB.Repaint;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     VI_LINHAS2 := 1;
    // =================== AQUI
     FOR VI_COMBINACOES1 := 1{357}{195} TO TRUNC((STGR_GRUPO_A_TODOS5.RowCount-1)/1) DO
     BEGIN
                    IF     ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                              CONTINUE;
                    IF     ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                              CONTINUE;
                    IF     ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                              CONTINUE;
          FOR VI_COMBINACOES2 := 1{698} {416} TO (STGR_GRUPO_B_TODOS4.RowCount-1) DO
          BEGIN
                              IF     ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                                 THEN
                                        CONTINUE;
                              IF     ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                                 THEN
                                        CONTINUE;
                              IF     ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                                 THEN
                                        CONTINUE;(*
                                       // não gerou ganho de desempenho
                              IF     ((VMI_GRUPO_B_TODOS4_2[VI_COMBINACOES2]) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((VMI_GRUPO_B_TODOS4_3[VI_COMBINACOES2]) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((VMI_GRUPO_B_TODOS4_4[VI_COMBINACOES2]) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((VMI_GRUPO_B_TODOS4_5[VI_COMBINACOES2]) = STRtoINT(ED_EXC_01.Text))
                                 THEN
                                        CONTINUE;
                              IF     ((VMI_GRUPO_B_TODOS4_2[VI_COMBINACOES2]) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((VMI_GRUPO_B_TODOS4_3[VI_COMBINACOES2]) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((VMI_GRUPO_B_TODOS4_4[VI_COMBINACOES2]) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((VMI_GRUPO_B_TODOS4_5[VI_COMBINACOES2]) = STRtoINT(ED_EXC_02.Text))
                                 THEN
                                        CONTINUE;
                              IF     ((VMI_GRUPO_B_TODOS4_2[VI_COMBINACOES2]) = STRtoINT(ED_EXC_03.Text))
                                 OR  ((VMI_GRUPO_B_TODOS4_3[VI_COMBINACOES2]) = STRtoINT(ED_EXC_03.Text))
                                 OR  ((VMI_GRUPO_B_TODOS4_4[VI_COMBINACOES2]) = STRtoINT(ED_EXC_03.Text))
                                 OR  ((VMI_GRUPO_B_TODOS4_5[VI_COMBINACOES2]) = STRtoINT(ED_EXC_03.Text))
                                 THEN
                                        CONTINUE;  *)
               FOR VI_COMBINACOES3 := 1 {19} {9} TO (STGR_GRUPO_C_TODOS3.RowCount-1) DO
               BEGIN
                              IF     ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES3])) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES3])) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES3])) = STRtoINT(ED_EXC_01.Text))
                                 THEN
                                        CONTINUE;
                              IF     ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES3])) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES3])) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES3])) = STRtoINT(ED_EXC_02.Text))
                                 THEN
                                        CONTINUE;
                              IF     ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES3])) = STRtoINT(ED_EXC_03.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES3])) = STRtoINT(ED_EXC_03.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES3])) = STRtoINT(ED_EXC_03.Text))
                                 THEN
                        CONTINUE;
                    FOR VI_COMBINACOES4 :=1{6}{9} TO (STGR_GRUPO_D_TODOS3.RowCount-1) DO
                    BEGIN
                         // ----------------------------
                         // --  MONTANDO O RESULTADO  --
                         // ----------------------------
                         STGR_COMB15.Cells[2,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1];
                         STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1];
                         STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1];
                         STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1];
                         STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1];
                         // ===> PEGA 4 NUMEROS
                         STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2];
                         STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2];
                         STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2];
                         STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2];
                         // ===> PEGA 3 NUMEROS
                         STGR_COMB15.Cells[11,VI_LINHAS2] := {COPY(VMS_GrupoC_C1_SEL[VI_COMBINACOES3],1,2) }STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES3] ;
                         STGR_COMB15.Cells[12,VI_LINHAS2] := {COPY(VMS_GrupoC_C1_SEL[VI_COMBINACOES3],3,2) }STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES3] ;
                         STGR_COMB15.Cells[13,VI_LINHAS2] := {COPY(VMS_GrupoC_C1_SEL[VI_COMBINACOES3],5,2) }STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES3] ;
                         // ===> PEGA 3 NUMEROS
                         STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_GRUPO_D_TODOS3.Cells[2,VI_COMBINACOES4] ;
                         STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_GRUPO_D_TODOS3.Cells[3,VI_COMBINACOES4] ;
                         STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_GRUPO_D_TODOS3.Cells[4,VI_COMBINACOES4] ;
                         // ===> NUMERA A LINHA E FLAG EXISTENTE
                         STGR_COMB15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_COMB15.Cells[1,VI_LINHAS2] := 'V';
                         IF NOT(
                              ((STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2])) = STRtoINT(ED_EXC_01.Text))
                            OR  ((STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2])) = STRtoINT(ED_EXC_01.Text))
                            OR  ((STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2])) = STRtoINT(ED_EXC_01.Text))
                            )
                         THEN
                         BEGIN
                              IF NOT(
                                   ((STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2])) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2])) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2])) = STRtoINT(ED_EXC_02.Text))
                                 )
                              THEN
                              BEGIN
                                   IF NOT(
                                        ((STRtoINT(STGR_COMB15.Cells[14,VI_LINHAS2])) = STRtoINT(ED_EXC_03.Text))
                                      OR  ((STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2])) = STRtoINT(ED_EXC_03.Text))
                                      OR  ((STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2])) = STRtoINT(ED_EXC_03.Text))
                                      )
                                   THEN
                                   BEGIN
                                        VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1 ;
                         // --------------------------------------
                         // --  CONFERINDO A SOMA DA COLUNA 1   --
                         // --------------------------------------
                                       VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[8,VI_COMBINACOES1]) + STRtoINT(STGR_GRUPO_A_TODOS5.Cells[9,VI_COMBINACOES1])
                                         + STRtoINT(STGR_GRUPO_A_TODOS5.Cells[10,VI_COMBINACOES1])
                                         + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[7,VI_COMBINACOES2])
                                         + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[8,VI_COMBINACOES2])
                                         + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[6,VI_COMBINACOES3])
                                         + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[7,VI_COMBINACOES3])
                                         + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[6,VI_COMBINACOES4])
                                         + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[7,VI_COMBINACOES4]);
                                        IF (VI_SOMA1 = (STRtoINT(ED_SOMAS_C1_INI.Text))) THEN
                                        BEGIN
                                             VI_FLAG_SOMATORIA1:= 1 ;
                                             STGR_COMB15.Cells[17,VI_LINHAS2] := '-----'     ;
                                             STGR_COMB15.Cells[18,VI_LINHAS2] := 'C-1'   ;
                                             STGR_COMB15.Cells[19,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[8,VI_COMBINACOES1] ;
                                             STGR_COMB15.Cells[20,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[9,VI_COMBINACOES1] ;
                                             STGR_COMB15.Cells[21,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[10,VI_COMBINACOES1];
                                             STGR_COMB15.Cells[22,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[7,VI_COMBINACOES2] ;
                                             STGR_COMB15.Cells[23,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[8,VI_COMBINACOES2] ;
                                             STGR_COMB15.Cells[24,VI_LINHAS2] := STGR_GRUPO_C_TODOS3.Cells[6,VI_COMBINACOES3]     ;
                                             STGR_COMB15.Cells[25,VI_LINHAS2] := STGR_GRUPO_C_TODOS3.Cells[7,VI_COMBINACOES3]     ;
                                             STGR_COMB15.Cells[26,VI_LINHAS2] := STGR_GRUPO_D_TODOS3.Cells[6,VI_COMBINACOES3]     ;
                                             STGR_COMB15.Cells[27,VI_LINHAS2] := STGR_GRUPO_D_TODOS3.Cells[7,VI_COMBINACOES3]     ;
                                             STGR_COMB15.Cells[28,VI_LINHAS2] := INTtoSTR(VI_SOMA1);
                                        END
                                        ELSE
                                        BEGIN
                                             VI_FLAG_SOMATORIA1:= 0;
                                        END;

                         // --------------------------------------
                         // --  CONFERINDO A SOMA DA COLUNA 2   --
                         // --------------------------------------
                                       VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[11,VI_COMBINACOES1]) + STRtoINT(STGR_GRUPO_A_TODOS5.Cells[12,VI_COMBINACOES1])
                                         + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[9,VI_COMBINACOES2])
                                         + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[8,VI_COMBINACOES3])
                                         + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[8,VI_COMBINACOES4]);
                                        IF (VI_SOMA1 = (STRtoINT(ED_SOMAS_C2_INI.Text))) THEN
                                        BEGIN
                                             VI_FLAG_SOMATORIA2:= 1 ;
                                             STGR_COMB15.Cells[29,VI_LINHAS2] := '-----'     ;
                                             STGR_COMB15.Cells[30,VI_LINHAS2] := 'C-2'   ;
                                             STGR_COMB15.Cells[31,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[11,VI_COMBINACOES1] ;
                                             STGR_COMB15.Cells[32,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[12,VI_COMBINACOES1] ;
                                             STGR_COMB15.Cells[33,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[9,VI_COMBINACOES2] ;
                                             STGR_COMB15.Cells[34,VI_LINHAS2] := STGR_GRUPO_C_TODOS3.Cells[8,VI_COMBINACOES3]     ;
                                             STGR_COMB15.Cells[35,VI_LINHAS2] := STGR_GRUPO_D_TODOS3.Cells[8,VI_COMBINACOES3]     ;
                                             STGR_COMB15.Cells[36,VI_LINHAS2] := INTtoSTR(VI_SOMA1);
                                        END ELSE BEGIN
                                             VI_FLAG_SOMATORIA2:= 0;
                                        END;

                         // --------------------------------------
                         // --  CONFERINDO A SOMA DA COLUNA 3   --
                         // --------------------------------------
                                       VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[13,VI_COMBINACOES1])
                                         + STRtoINT(STGR_GRUPO_A_TODOS5.Cells[14,VI_COMBINACOES1])
                                         + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[10,VI_COMBINACOES2])
                                         + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[11,VI_COMBINACOES2])
                                         + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[9,VI_COMBINACOES3])
                                         + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[10,VI_COMBINACOES3])
                                         + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[9,VI_COMBINACOES4])
                                         + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[10,VI_COMBINACOES4]);
                                        IF (VI_SOMA1 = (STRtoINT(ED_SOMAS_C3_INI.Text))) THEN
                                        BEGIN
                                             VI_FLAG_SOMATORIA3:=1 ;
                                             STGR_COMB15.Cells[37,VI_LINHAS2] := '-----'     ;
                                             STGR_COMB15.Cells[38,VI_LINHAS2] := 'C-3'   ;
                                             STGR_COMB15.Cells[39,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[13,VI_COMBINACOES1] ;
                                             STGR_COMB15.Cells[40,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[14,VI_COMBINACOES1] ;
                                             STGR_COMB15.Cells[41,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[10,VI_COMBINACOES2] ;
                                             STGR_COMB15.Cells[42,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[11,VI_COMBINACOES2] ;
                                             STGR_COMB15.Cells[43,VI_LINHAS2] := STGR_GRUPO_C_TODOS3.Cells[9,VI_COMBINACOES3]     ;
                                             STGR_COMB15.Cells[44,VI_LINHAS2] := STGR_GRUPO_C_TODOS3.Cells[10,VI_COMBINACOES3]     ;
                                             STGR_COMB15.Cells[45,VI_LINHAS2] := STGR_GRUPO_D_TODOS3.Cells[9,VI_COMBINACOES3]     ;
                                             STGR_COMB15.Cells[46,VI_LINHAS2] := STGR_GRUPO_D_TODOS3.Cells[10,VI_COMBINACOES3]     ;
                                             STGR_COMB15.Cells[47,VI_LINHAS2] := INTtoSTR(VI_SOMA1);
                                        END ELSE BEGIN
                                             VI_FLAG_SOMATORIA3:=0;
                                        END;
                                       { // não gerou ganho de desempenho
                                       VI_SOMA1 := VMI_A_C3_1[VI_COMBINACOES1]
                                         + VMI_A_C3_2[VI_COMBINACOES1]
                                         + VMI_B_C3_1[VI_COMBINACOES2]
                                         + VMI_B_C3_2[VI_COMBINACOES2]
                                         + VMI_C_C3_1[VI_COMBINACOES3]
                                         + VMI_C_C3_2[VI_COMBINACOES3]
                                         + VMI_D_C3_1[VI_COMBINACOES4]
                                         + VMI_D_C3_2[VI_COMBINACOES4];
                                        IF (VI_SOMA1 = (STRtoINT(ED_SOMAS_C3_INI.Text))) THEN
                                             VI_FLAG_SOMATORIA3:=100
                                        ELSE
                                             VI_FLAG_SOMATORIA3:=0;
                                        }

                         // --------------------------------------
                         // --  CONFERINDO A SOMA DA COLUNA 4   --
                         // --------------------------------------
                                       VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[15,VI_COMBINACOES1])
                                         + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[12,VI_COMBINACOES2])
                                         + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[13,VI_COMBINACOES2]);
                                        IF (VI_SOMA1 = (STRtoINT(ED_SOMAS_C4_INI.Text))) THEN
                                        BEGIN
                                             VI_FLAG_SOMATORIA4:=1  ;
                                             STGR_COMB15.Cells[48,VI_LINHAS2] := '-----'     ;
                                             STGR_COMB15.Cells[49,VI_LINHAS2] := 'C-4'   ;
                                             STGR_COMB15.Cells[50,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[15,VI_COMBINACOES1] ;
                                             STGR_COMB15.Cells[51,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[12,VI_COMBINACOES2] ;
                                             STGR_COMB15.Cells[52,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[13,VI_COMBINACOES2] ;
                                             STGR_COMB15.Cells[53,VI_LINHAS2] := INTtoSTR(VI_SOMA1);
                                             STGR_COMB15.Cells[55,VI_LINHAS2] := '-----'     ;
                                             STGR_COMB15.Cells[56,VI_LINHAS2] := 'GRUPO A';
                                             STGR_COMB15.Cells[57,VI_LINHAS2] := '['+STGR_GRUPO_A_TODOS5.Cells [0, VI_COMBINACOES1]+']';
                                             STGR_COMB15.Cells[58,VI_LINHAS2] := 'GRUPO B';
                                             STGR_COMB15.Cells[59,VI_LINHAS2] := '['+STGR_GRUPO_B_TODOS4.Cells [0, VI_COMBINACOES2]+']';
                                             STGR_COMB15.Cells[60,VI_LINHAS2] := 'GRUPO C';
                                             STGR_COMB15.Cells[61,VI_LINHAS2] := '['+STGR_GRUPO_C_TODOS3.Cells [0, VI_COMBINACOES3]+']';
                                             STGR_COMB15.Cells[62,VI_LINHAS2] := 'GRUPO D';
                                             STGR_COMB15.Cells[63,VI_LINHAS2] := '['+STGR_GRUPO_D_TODOS3.Cells [0, VI_COMBINACOES4]+']';
                                        END ELSE
                                        BEGIN
                                             VI_FLAG_SOMATORIA4:=0;
                                        END;
                                      VI_FLAG_SOMATORIA_FINAL:= VI_FLAG_SOMATORIA4+ VI_FLAG_SOMATORIA3+ VI_FLAG_SOMATORIA2+ VI_FLAG_SOMATORIA1;
                                        IF ((VI_FLAG_SOMATORIA1 =1) AND (VI_FLAG_SOMATORIA2 =1) AND (VI_FLAG_SOMATORIA3 =1) AND (VI_FLAG_SOMATORIA4 =1))
                                             THEN
                                             BEGIN
                                                  VI_LINHAS2 := VI_LINHAS2+1 ;
                                        END;// IF
                                   END; //IF NOT((STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2])) = STRtoINT(ED_EXC_02.Text)
                              END; //IF NOT((STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2])) = STRtoINT(ED_EXC_02.Text)
                         END; //IF NOT((STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2])) = STRtoINT(ED_EXC_01.Text)
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
                         PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_GRUPO_B_TODOS4.RowCount-1)*100);
                         PGBR_GERARCOMB0.Repaint;
                         SLEEP(12);
                         LA_QTD_COMB.Repaint;
                              IF (VI_MOSTRAR_qtdcomb2 = 1) THEN
                              BEGIN
                                   IF (VI_COMBINACOES2 MOD 10) =0 THEN
                                   BEGIN
                                        LA_PERC_COMB2.Caption := '# ' + INTtoSTR(VI_COMBINACOES2)+ ' DE '+  INTtoSTR(STGR_GRUPO_B_TODOS4.RowCount-1)+ ' => '+INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_GRUPO_B_TODOS4.RowCount-1)*100))+ ' %';
                                        LA_PERC_COMB2.Repaint;
                                        SLEEP(35);                                        
                                   end; // if
                                   IF (VI_COMBINACOES2 MOD 250) =0 THEN
                                   BEGIN
                                        Self.WindowState := wsMinimized;                                   
                                        Self.WindowState :=  wsNormal;
                                        SELF.Repaint;
                                   END; //IF
                                   LA_QTD_COMB.Repaint;
                                   PANEL_TITULO_SIMULACAO.Repaint;
                                   Self.Repaint;
                              END; // IF
           END; // FOR VI_COMBINACOES2
          SLEEP(100);
          PGBR_GERARCOMB0.Position := 100;          
         // END;// IF (STGR_GRUPO_A_TODOS
          STGR_COMB15.RowCount := VI_LINHAS2;
          LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4)+'   ';
          LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS2-1);
          STGR_COMB15.Repaint;
          LA_QTD_COMB.Repaint;

          LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_GRUPO_A_TODOS5.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_GRUPO_A_TODOS5.RowCount-1)*100))+ ' %  ';
          PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_GRUPO_A_TODOS5.RowCount-1)*100);
          LA_GERAR_COMB.Repaint;
          PGBR_GERARCOMB.Repaint;
          STGR_COMB15.RowCount := VI_LINHAS2;
          STGR_COMB15.Repaint;
          Self.WindowState := wsMinimized;
          Self.WindowState :=  wsNormal;
          SELF.Repaint;
     END; // FOR VI_COMBINACOES1
     LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4)+'   ';
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS2-1);
     TRY
          STGR_COMB15.FixedRows := 1;
     EXCEPT
          //
     END;
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Repaint;
     LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_GRUPO_A_TODOS5.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_GRUPO_A_TODOS5.RowCount-1)*100))+ ' %  ';
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
     BBT_ENCERRAR.Enabled := false;
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS2-1)+'     ';
     PA_REMOVEUREPET.Left := 330;
end;




procedure T_FRM_SIMULACAO2.BBT_CLICK_TUDOClick(Sender: TObject);
begin
     {
     BBT_703.Click;
     BBT_705.Click;
     BBT_709.Click;
     BBT_711.Click;
     BBT_713.Click;
     BBT_715.Click;
     BBT_723.Click;
     BBT_725.Click;
     BBT_701.Click;
     BBT_707.Click;
     BBT_717.Click;

     BBT_704.Click;
     BBT_708.Click;
     BBT_712.Click;
     BBT_714.Click;
     BBT_716.Click;
     BBT_718.Click;
     BBT_720.Click;
     BBT_702.Click;
     BBT_706.Click;
     BBT_710.Click;     

     ED_EXC_01.Text := '09';
     ED_EXC_02.Text := '09';
     ED_EXC_03.Text := '09';
     }
     BBT_703.Click;
     BBT_707.Click;
     BBT_709.Click;
     BBT_711.Click;
     BBT_713.Click;
     BBT_715.Click;
     BBT_721.Click;
     BBT_725.Click;
     BBT_701.Click;
     BBT_705.Click;
     BBT_717.Click;

     BBT_702.Click;
     BBT_710.Click;
     BBT_712.Click;
     BBT_714.Click;
     BBT_716.Click;
     BBT_718.Click;
     BBT_720.Click;
     BBT_704.Click;
     BBT_706.Click;
     BBT_708.Click;     

     ED_EXC_01.Text := '09';
     ED_EXC_02.Text := '09';
     ED_EXC_03.Text := '09';
end;



procedure T_FRM_SIMULACAO2.BBT_ORDENARClick(Sender: TObject);
VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR, VI_TOTAL : integer;
     VI_CNTCELULAS: SMALLINT;
begin
{
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
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
          // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
          FOR VI_CONTAR :=2 TO 16 DO
          BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_COMBINACOES1])) ,1]:='V';
          END; // FOR VI_CONTAR1
          VI_CNTCELULAS := 2;
          FOR VI_CONTAR :=1 TO 25 DO
          BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB15.Cells[VI_CNTCELULAS, VI_COMBINACOES1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
          END; // FOR VI_CONTAR
     END; // FOR VI_CONBINACOES1     }
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMB15.RowCount-1) DO
     BEGIN
          VI_TOTAL := VI_COMBINACOES1 + 250;
          IF (VI_TOTAL > (STGR_COMB15.RowCount-1)) THEN
          BEGIN
               VI_TOTAL := (STGR_COMB15.RowCount-1);
          END;
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO VI_TOTAL DO
          BEGIN
                IF (STGR_COMB15.Cells[1,VI_COMBINACOES2] = 'F') THEN
                    CONTINUE;
                IF  (STGR_COMB15.Cells[2,VI_COMBINACOES1] = STGR_COMB15.Cells[2,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[3,VI_COMBINACOES1] = STGR_COMB15.Cells[3,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_COMB15.Cells[4,VI_COMBINACOES1] = STGR_COMB15.Cells[4,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[5,VI_COMBINACOES1] = STGR_COMB15.Cells[5,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[6,VI_COMBINACOES1] = STGR_COMB15.Cells[6,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[7,VI_COMBINACOES1] = STGR_COMB15.Cells[7,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[8,VI_COMBINACOES1] = STGR_COMB15.Cells[8,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[9,VI_COMBINACOES1] = STGR_COMB15.Cells[9,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[10,VI_COMBINACOES1] = STGR_COMB15.Cells[10,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[11,VI_COMBINACOES1] = STGR_COMB15.Cells[11,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[12,VI_COMBINACOES1] = STGR_COMB15.Cells[12,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[13,VI_COMBINACOES1] = STGR_COMB15.Cells[13,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[14,VI_COMBINACOES1] = STGR_COMB15.Cells[14,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[15,VI_COMBINACOES1] = STGR_COMB15.Cells[15,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[16,VI_COMBINACOES1] = STGR_COMB15.Cells[16,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_COMB15.Cells[1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
          if ((VI_COMBINACOES1 MOD 250)=0) then
          begin
               LA_PERC_100REPET.Caption := INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_COMB15.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_COMB15.RowCount-1)*100))+ ' %  ' ;
               LA_PERC_100REPET.Repaint;
               PANEL_TITULO_SIMULACAO.Repaint;
               SLEEP(2);
          end else
          if (VI_COMBINACOES1/2000)=(VI_COMBINACOES1 DIV 2000) then
          BEGIN
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
               STGR_COMB15.Repaint;
               LA_PERC_100REPET.Repaint;
               PANEL_TITULO_SIMULACAO.Repaint;
               SLEEP(5);
          END; // IF (VI_COMBINACOES1/1000
          PGBR_REMREPET.Position := TRUNC(VI_COMBINACOES1/(STGR_COMB15.RowCount-1)*100);
          PGBR_REMREPET.Repaint;
     END; // FOR VI_COMBINACOES1
     STGR_COMB15.Repaint;
     PGBR_REMREPET.Position := 100;
     LA_PERC_100REPET.Caption := INTtoSTR(VI_COMBINACOES1-1)+ ' DE '+  INTtoSTR(STGR_COMB15.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_COMB15.RowCount-1)*100))+ ' %  ';
     VI_CONTAR := 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMB15.RowCount-1) DO
     BEGIN
          IF (STGR_COMB15.Cells[1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TOTAL_100REPET.Caption := INTtoSTR(VI_CONTAR-1);
     LA_TOTAL_100REPET.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     PANEL_TITULO_SIMULACAO.Repaint;
     PGBR_REMREPET.Position := 100;
     Self.Repaint;
     SLEEP(100);
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
    // LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     //BBT_RECOMECAR.Enabled := false;
     //BBT_PREPARAR.Enabled := false;
     //BBT_GERAR_SIMULACAO.Enabled    := false;
     //BBT_ENCERRAR.Enabled := false;
   //  LA_rTOTAL_COMB.Caption  := LA_gTOTAL_COMB.Caption;
   //  LA_rQTD_COMB.Caption    := LA_gQTD_COMB.Caption;
   //  LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption+ '    ';
   //  BBT_SALVAR_SIMULACAO.Enabled:= TRUE;
end;



procedure T_FRM_SIMULACAO2.RB_RES_GABARITOSClick(Sender: TObject);
begin
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 184 ;
           Width  := 1076;
           Height := 170 ;
           Visible := TRUE;
       END; // WITH
     STGR_GRUPO_A_C1.Height := 123;
     STGR_GRUPO_A_C2.Height := 123;
     STGR_GRUPO_A_C3.Height := 123;
     STGR_GRUPO_A_C4.Height := 123;
     STGR_GRUPO_B_C4.Height := 123;
     STGR_GRUPO_B_C3.Height := 123;
     STGR_GRUPO_B_C2.Height := 123;
     STGR_GRUPO_B_C1.Height := 123;
     STGR_GRUPO_C_C1.Height := 123;
     STGR_GRUPO_C_C2.Height := 123;
     STGR_GRUPO_C_C3.Height := 123;
     STGR_GRUPO_D_C1.Height := 123;
     STGR_GRUPO_D_C2.Height := 123;
     STGR_GRUPO_D_C3.Height := 123;
     STGR_GRUPO_A_TODOS5.Height := 123 ;
     STGR_GRUPO_B_TODOS4.Height := 123 ;
     STGR_GRUPO_C_TODOS3.Height := 123 ;
     STGR_GRUPO_D_TODOS3.Height := 123 ;
     STGR_GRUPO_CxD.Height := 123  ;     
     PA_RESULTADO.Visible  := TRUE;
end;

procedure T_FRM_SIMULACAO2.RB_GABARITOClick(Sender: TObject);
begin
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 184 ;
           Width  := 1076;
           Height := 405 ;
           Visible := TRUE;
       END; // WITH
     STGR_GRUPO_A_C1.Height := 353;
     STGR_GRUPO_A_C2.Height := 353;
     STGR_GRUPO_A_C3.Height := 353;
     STGR_GRUPO_A_C4.Height := 353;
     STGR_GRUPO_B_C4.Height := 353;
     STGR_GRUPO_B_C3.Height := 353;
     STGR_GRUPO_B_C2.Height := 353;
     STGR_GRUPO_B_C1.Height := 353;
     STGR_GRUPO_C_C1.Height := 353;
     STGR_GRUPO_C_C2.Height := 353;
     STGR_GRUPO_C_C3.Height := 353;
     STGR_GRUPO_D_C1.Height := 353;
     STGR_GRUPO_D_C2.Height := 353;
     STGR_GRUPO_D_C3.Height := 353;
     STGR_GRUPO_A_TODOS5.Height := 353  ;
     STGR_GRUPO_B_TODOS4.Height := 353   ;
     STGR_GRUPO_C_TODOS3.Height := 353   ;
     STGR_GRUPO_D_TODOS3.Height := 353  ;
     STGR_GRUPO_CxD.Height := 353  ;
     PA_RESULTADO.Visible  := false;
end;

procedure T_FRM_SIMULACAO2.RB_RESULTADOSClick(Sender: TObject);
begin
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible  := TRUE;
end;



procedure T_FRM_SIMULACAO2.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_SIMULACAO.Enabled    := TRUE;
     BBT_ENCERRAR.Enabled := TRUE;
end;



procedure T_FRM_SIMULACAO2.BBT_ENCERRARClick(Sender: TObject);
VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_LINHAS2: SMALLINT;
begin
      {
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount := 0;
     VI_LINHAS2 := 1;
     FOR VI_COMBINACOES1:=0 TO 29 DO
     BEGIN
          _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [0,VI_COMBINACOES1]:='00';
          STGR_COMB15.Cells[0,VI_COMBINACOES1]:='00'
     END;
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.ColCount := 28;
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.DefaultColWidth := 33;
     FOR VI_COMBINACOES1 :=1 TO (STGR_COMB15.RowCount-1) DO
     BEGIN
        IF (STGR_COMB15.Cells[1,VI_COMBINACOES1] = 'V') THEN
        BEGIN
            FOR VI_CONTAR := 2 TO 17 DO
            BEGIN
               _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[VI_CONTAR-1,VI_LINHAS2] := STGR_COMB15.Cells[VI_CONTAR,VI_COMBINACOES1];
            END; //FOR
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[16,VI_LINHAS2] := '----' ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[17,VI_LINHAS2] := STGR_COMB15.Cells[64, VI_COMBINACOES1] ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[18,VI_LINHAS2] := STGR_COMB15.Cells[65, VI_COMBINACOES1] ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[19,VI_LINHAS2] := STGR_COMB15.Cells[66, VI_COMBINACOES1] ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[20,VI_LINHAS2] := STGR_COMB15.Cells[68, VI_COMBINACOES1] ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[21,VI_LINHAS2] := STGR_COMB15.Cells[69, VI_COMBINACOES1] ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[22,VI_LINHAS2] := STGR_COMB15.Cells[70, VI_COMBINACOES1] ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[23,VI_LINHAS2] := STGR_COMB15.Cells[72, VI_COMBINACOES1] ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[24,VI_LINHAS2] := STGR_COMB15.Cells[73, VI_COMBINACOES1] ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[25,VI_LINHAS2] := STGR_COMB15.Cells[75, VI_COMBINACOES1] ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[26,VI_LINHAS2] := STGR_COMB15.Cells[76, VI_COMBINACOES1] ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [27, VI_LINHAS2] :=  'EXCL:';
           {
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [28, VI_AN_COMB1-1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC1').AsString;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [29, VI_AN_COMB1-1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC2').AsString;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [30, VI_AN_COMB1-1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC3').AsString;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [31, VI_AN_COMB1-1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC4').AsString;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [32, VI_AN_COMB1-1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC5').AsString;
           }
           {
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [33, VI_LINHAS2] :=  '||';
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [34, VI_LINHAS2] :=  '||';
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [35, VI_LINHAS2] :=  '';
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [36, VI_LINHAS2] :=  '';
           VI_LINHAS2 := VI_LINHAS2 +1 ;
           _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount := VI_LINHAS2;
        END; //IF
     END; // FOR
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Repaint;
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Repaint;
     _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add('# SIMULAÇÃO 02: RESULTADO');
     _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add('  ' + INTtoSTR(_FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount-1));
     _FRM_SIM_LOTOFACIL01.LA_N_SIMULACAO.Caption := 'SIMULACAO 2';
     }
     SELF.Close;
end;

procedure T_FRM_SIMULACAO2.BBT_CLOSEClick(Sender: TObject);
begin
     self.Close;
end;



PROCEDURE T_FRM_SIMULACAO2.PR_GRAVAR_DADOS ();
VAR
   VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
   VC_QUERY, vc_gerar, VC_COMBINACOES : STRING;
   VC_DADOS1, VC_DADOS2, VC_DADOS3, VC_DADOS4, VC_DADOS5, VC_DADOS6 : STRING;
BEGIN
 {  VI_TOTALGERADO := STGR_COMB15.RowCount-1;
   IF ((VI_TOTALGERADO/10900) = (VI_TOTALGERADO DIV 10900))
       or ((VI_TOTALGERADO/10901) = (VI_TOTALGERADO DIV 10901))
       or ((VI_TOTALGERADO/10902) = (VI_TOTALGERADO DIV 10902))
       OR (VC_FINALIZAR = 'SIM') THEN
   BEGIN      }
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.Close;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.Open;
            IF NOT(_FRM_SIM_LOTOFACIL01.IBTransaction1.Active) THEN _FRM_SIM_LOTOFACIL01.IBTransaction1.StartTransaction;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.SQL.Clear;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.SQL.Add('DELETE FROM COMBINACOES_15')  ;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.ExecSQL;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.SQL.Clear;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.SQL.Add('DELETE FROM DADOS_SIMULACAO_25')  ;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.ExecSQL;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.SQL.Clear;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.ExecSQL;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.SQL.Clear;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.SQL.Add('SELECT FIRST 10 * FROM COMBINACOES_15 ORDER BY DADOS; ')  ;
            _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.Open;
       // ************************
       // **   BANCO DE DADOS   **
       // ************************
       STGR_COMB15.Repaint;
       Self.Repaint;
       Self.WindowState := wsMinimized;
       Self.WindowState :=  wsNormal;
      // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
           PGBR_GERARCOMB.Position := 0;
       vc_gerar := LA_QTD_COMB.Caption;
       LA_QTD_COMB.Caption:= vc_gerar + '0 %   ';
       FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COMB15.RowCount-1)/1) DO
       BEGIN
           VC_COMBINACOES :='';
           FOR VI_CNTCELULAS := 2 TO 16 DO
           BEGIN
               VC_COMBINACOES := VC_COMBINACOES + STGR_COMB15.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
           END; // FOR VI_CNTCELULAS
           _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.SQL.Clear;
           VC_QUERY  := 'INSERT INTO COMBINACOES_15 (DADOS) VALUES(' +#39+ VC_COMBINACOES + #39 +');';
           _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
           _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.ExecSQL;
           if (VI_AN_COMB1/100)=(VI_AN_COMB1 DIV 100) then
           BEGIN
                LA_QTD_COMB.Caption:= vc_gerar + '  '+INTtoSTR(TRUNC(VI_AN_COMB1  / ((STGR_COMB15.RowCount)-1) *100) ) + ' %  ';
                LA_QTD_COMB.Repaint;
                PGBR_GERARCOMB.Position :=  (TRUNC(VI_AN_COMB1  / ((STGR_COMB15.RowCount)-1) *100) );
                PGBR_GERARCOMB.Repaint;
          END; // IF (VI_ANCOMB1
       END;
      // SELF.PR_LIMPAR_GRID15 ();
 {  END; // IF (VI_TOTALGERADO/1000)
   IF (VC_FINALIZAR = 'SIM') THEN
   BEGIN

       VC_DADOS1 := RIGHTSTR ('0'+Edit26.Text,2) + ' ' + RIGHTSTR ('0'+Edit27.Text,2) + ' '  + RIGHTSTR ('0'+Edit28.Text,2) + ' '  + RIGHTSTR ('0'+Edit29.Text,2) + ' '  + RIGHTSTR ('0'+Edit30.Text,2) + ' '  + RIGHTSTR ('0'+Edit31.Text,2) + ' ' + RIGHTSTR ('0'+Edit32.Text,2) + ' ' + RIGHTSTR ('0'+Edit33.Text,2) ;
       VC_DADOS2 := RIGHTSTR ('0'+Edit34.Text,2) + ' ' + RIGHTSTR ('0'+Edit35.Text,2) + ' '  + RIGHTSTR ('0'+Edit36.Text,2) + ' '  + RIGHTSTR ('0'+Edit37.Text,2) + ' '  + RIGHTSTR ('0'+Edit38.Text,2) + ' '  + RIGHTSTR ('0'+Edit39.Text,2) + ' ' + RIGHTSTR ('0'+Edit40.Text,2) ;
       VC_DADOS3 := RIGHTSTR ('0'+Edit42.Text,2) + ' ' + RIGHTSTR ('0'+Edit43.Text,2) + ' '  + RIGHTSTR ('0'+Edit44.Text,2) + ' '  + RIGHTSTR ('0'+Edit45.Text,2) + ' '  + RIGHTSTR ('0'+Edit46.Text,2);
       VC_DADOS4 := RIGHTSTR ('0'+Edit50.Text,2) + ' ' + RIGHTSTR ('0'+Edit51.Text,2) + ' '  + RIGHTSTR ('0'+Edit52.Text,2) + ' '  + RIGHTSTR ('0'+Edit53.Text,2) + ' '  + RIGHTSTR ('0'+Edit54.Text,2);
       VC_DADOS5 := RIGHTSTR ('00'+ED_SOMA_01.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_11.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_21.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_31.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_41.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_51.Text,3) ;
       VC_DADOS6 := RIGHTSTR ('00'+ED_SOMA_02.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_12.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_22.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_32.Text,3) + ' ' + RIGHTSTR ('00'+ED_SOMA_42.Text,3);
           SELF.IBQ_COMBINACOES.SQL.Clear;
       VC_QUERY  := 'INSERT INTO DADOS_SIMULACAO_25 (DADOS_1, DADOS_2, DADOS_3, DADOS_4, DADOS_5, DADOS_6) VALUES(' +#39+ VC_DADOS1 + #39 +','  +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 + #39 +','  +#39+ VC_DADOS4 + #39 +','  +#39+ VC_DADOS5 + #39 +','  +#39+ VC_DADOS6 + #39 +');';
           SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
           SELF.IBQ_COMBINACOES.ExecSQL;

   END; // IF (VC_FINALIZAR = 'SIM')
   }
   PGBR_GERARCOMB.Position := 100;
   _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.SQL.Clear;
   _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
   _FRM_SIM_LOTOFACIL01.IBQ_COMBINACOES.ExecSQL;
  // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
  SHOWMESSAGE('FIM');
END; // PROCEDURE GRAVAR_DADOS



PROCEDURE T_FRM_SIMULACAO2.PR_LIMPAR_GRID15 ();
BEGIN
     WITH STGR_COMB15 DO
     BEGIN
          Left := 131   ;
          Top := 42     ;
          Width := 945  ;
          Height := 150 ;
          TabStop := False    ;
          Align := alClient   ;
          Color := clSkyBlue  ;
          ColCount := 17      ;
          DefaultColWidth := 52  ;
          DefaultRowHeight := 22 ;
          FixedColor := 16762754 ;
          FixedCols := 2         ;
          RowCount := 2          ;
          Font.Color := clWindowText ;
          Font.Height := -12         ;
          Font.Name := 'Tahoma'      ;
          Font.Style := []           ;
          ParentFont := False        ;
          TabOrder := 0              ;
          FixedColor := $00FFC782;   ;
     end; // with
end;






procedure T_FRM_SIMULACAO2.BBT_GERAR_SIMULACAOClick(Sender: TObject);
var
     VI_LINHAS1, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR_COMB1, VI_CONTASEL1, VI_CONTASEL2, VI_CONTASEL3, VI_CONTASEL4: integer;
     VI_COMBINACOES3, VI_COMBINACOES4: SMALLINT;
     VI_SOMA1: SMALLINT;
     VI_FLAG_SOMATORIA1, VI_FLAG_SOMATORIA2, VI_FLAG_SOMATORIA3, VI_FLAG_SOMATORIA4, VI_FLAG_SOMATORIA_FINAL: SMALLINT;


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
        // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
        FOR VI_CONTAR :=2 TO 16 DO
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


    PROCEDURE PR_ORDENAR_SIMULACAO_NS10 (VI_LINHAS9: INTEGER);
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
        FOR VI_CONTAR :=34 TO 43 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 34;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB15.Cells[VI_CNTCELULAS+12, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
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
         (*
          VI_QTD_VERIFICAR:= 1;
          CASE (STGR_COMB15.RowCount) OF
               10..29:        VI_QTD_VERIFICAR:= 10;    //2..49
               30..98:        VI_QTD_VERIFICAR:= 30;
              { 99..149:        VI_QTD_VERIFICAR:= 99;
               150..209:       VI_QTD_VERIFICAR:= 150;
               210:            VI_QTD_VERIFICAR:= 210;
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
          *)
    end; //  PROCEDURE ORDENAR_PRE_REMOCAO


    PROCEDURE PR_GRAVAR_DADOS (VC_BEGIN_END: STRING; OUT VI_LINHAS2:INTEGER; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DADOS1, VC_DADOS2, VC_DADOS3, VC_DADOS4, VC_COMBINACOES : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
            VC_DADOS1 := RIGHTSTR ('0'+STGR_BASE_A.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_A.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[6,0],2)+ ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[7,0],2)+ ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[8,0],2);
            VC_DADOS2 := RIGHTSTR ('0'+STGR_BASE_B.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_B.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[6,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[7,0],2);
            VC_DADOS3 := RIGHTSTR ('0'+STGR_BASE_C.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_C.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_C.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_C.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_C.Cells[5,0],2);
            VC_DADOS4 := RIGHTSTR ('0'+STGR_BASE_D.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_D.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_D.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_D.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_D.Cells[5,0],2);
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO SIMULACAO_2_DEFINICAO (LINHA_1, LINHA_2, LINHA_3, LINHA_4, ';
            VC_QUERY  := VC_QUERY +' SOMA_COL_1_INI, SOMA_COL_1_FINAL, SOMA_COL_2_INI, SOMA_COL_2_FINAL, SOMA_COL_3_INI, SOMA_COL_3_FINAL, SOMA_COL_4_INI, SOMA_COL_4_FINAL, ';
            VC_QUERY  := VC_QUERY +' EXC_1, EXC_2, EXC_3, FIXOS_1, FIXOS_2, FIXOS_3, FIXOS_4, CONTADOR_C1, TOTAL_CONTADOR_C1, DATA_DEFINICAO, HORA_DEFINICAO, FIXOS_5,SOMA_GRUPO_C_D_INI, SOMA_GRUPO_C_D_FINAL, FIXOS_L1_1, FIXOS_L1_2, FIXOS_L2_1, FIXOS_L3_1, FIXOS_L4_1)';

            VC_QUERY  := VC_QUERY +'  VALUES('+#39+ VC_DADOS1              + #39 +',' +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 + #39 +','  +#39+ VC_DADOS4 ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMAS_C1_INI.Text    + #39 +',' +#39+ ED_SOMAS_C1_INI.Text  + #39 +',' +#39+ ED_SOMAS_C2_INI.Text + #39 +','+#39+ ED_SOMAS_C2_FINAL.Text + #39 +','+#39+ ED_SOMAS_C3_INI.Text         + #39 +','+#39+  ED_SOMAS_C3_FINAL.Text      + #39 +','+#39+ ED_SOMAS_C4_INI.Text              + #39 +','+#39+ ED_SOMAS_C4_FINAL.Text ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01.Text          + #39 +',' +#39+ ED_EXC_02.Text          + #39 +','+#39+ ED_EXC_03.Text        + #39 +','+#39+ ED_FIXOS_01.Text       + #39 +','+#39+ ED_FIXOS_02.Text             + #39 +','+#39+ ED_FIXOS_03.Text             + #39 +','+#39+  ED_FIXOS_04.Text                 + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[])+ #39 +','+#39+FORMATDATETIME('h:n:s',time())+ #39 +','+#39+  ED_FIXOS_05.Text      + #39 +','+#39+  ED_SOMAS_CxD_INI.Text      + #39 +','+#39+  ED_SOMAS_CxD_FINAL.Text      + #39 +','+#39+  ED_fixoS_A1.Text             + #39 +','+#39+  ED_fixoS_A2.Text                     + #39 +','+#39+  ED_fixoS_B1.Text      + #39 +','+#39+  ED_fixoS_C1.Text                     + #39 +','+#39+  ED_fixoS_D1.Text      +#39+  ');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB15.RowCount-1;
          IF VC_BEGIN_END = 'FIM' THEN
          BEGIN
               // APOS O REFINAR1, OS DADOS FORAM TODOS RECARREGADOS PARA O sTRING gRID
               // E MARCADOS COM f OS REPETIDOS.
               // OS DADOS SERÃO TODOS REGRAVADOS NA TABELA SIMULACAO_2_DADOS_TEMP
               // ENTÃO TEM DE LIMPAR PARA QUE OS DADOS DA ÚLTIMA GRAVAÇÃO NÃO CONFLITEM COM OS NOVOS
               // GERANDO ASSIM MAIS DADOS DOS QUE EXISTEM NO STRING GRID
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_2_DADOS_TEMP')  ;
               SELF.IBQ_COMBINACOES.ExecSQL;
               TRY
                    SELF.IBTransaction1.Commit;
               EXCEPT
                    //
               END;
          END;// IF
        IF ((VI_LINHAS2/1997) = (VI_LINHAS2 DIV 1997))  // 2997
            or ((VI_LINHAS2/1998) = (VI_LINHAS2 DIV 1998))
            or ((VI_LINHAS2/1999) = (VI_LINHAS2 DIV 1999))
            OR (VC_BEGIN_END = 'ENCERRANDO')
            OR (VC_BEGIN_END = 'ENCERRANDO2')
            OR (VC_BEGIN_END = 'FIM')
            THEN
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
                FOR VI_CNTCELULAS := 2 TO 16 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_COMB15.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
                END; // FOR VI_CNTCELULAS
                IF (VC_BEGIN_END = 'FIM') OR (VC_BEGIN_END = 'ENCERRANDO') THEN
                BEGIN
                    IF STGR_COMB15.Cells[1,VI_AN_COMB1]='F'
                         THEN CONTINUE;
                END;// IF
                SELF.IBQ_COMBINACOES.SQL.Clear;
                VC_QUERY  := 'INSERT INTO SIMULACAO_2_DADOS_TEMP (DADOS, NS_A1, NS_A2, NS_A3, NS_B1, NS_B2, NS_B3, NS_C1, NS_C2, NS_D1, NS_D2, N01, N02, N03, N04, N05, N06, N07, N08, N09, N10, N11, N12, N13, N14, N15, DADOS_NS) VALUES(' +#39+ VC_COMBINACOES
                          {+ #39 +',' +#39+ STGR_COMB15.Cells[64,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[65,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[66,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[68,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[69,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[70,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[72,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[73,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[75,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[76,VI_AN_COMB1]}
                          + #39 +',' +#39+ STGR_COMB15.Cells[34,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[35,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[36,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[37,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[38,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[39,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[40,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[41,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[42,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[43,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[2,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[3,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[4,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[5,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[6,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[7,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[8,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[9,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[10,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[11,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[12,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[13,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[14,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[15,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[16,VI_AN_COMB1]
                          + #39 +',' +#39+ STGR_COMB15.Cells[46,VI_AN_COMB1]  + ' '+ STGR_COMB15.Cells[47,VI_AN_COMB1]  + ' '+ STGR_COMB15.Cells[48,VI_AN_COMB1]  + ' '+ STGR_COMB15.Cells[49,VI_AN_COMB1]  + ' '+ STGR_COMB15.Cells[50,VI_AN_COMB1]  + ' '+ STGR_COMB15.Cells[51,VI_AN_COMB1]  + ' '+ STGR_COMB15.Cells[52,VI_AN_COMB1]  + ' '+ STGR_COMB15.Cells[53,VI_AN_COMB1]  + ' '+ STGR_COMB15.Cells[54,VI_AN_COMB1]  + ' '+ STGR_COMB15.Cells[55,VI_AN_COMB1]
                           + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END; // FOR
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE SIMULACAO_2_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            VI_LINHAS2:=1;
            STGR_COMB15.RowCount := VI_LINHAS2;
               IF VC_BEGIN_END = 'FIM' THEN
               BEGIN
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_2_DADOS')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('execute procedure SIMULACAO_2_100repet01' )  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    TRY
                         SELF.IBTransaction1.Commit;
                    EXCEPT
                         //
                    END;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_2_DADOS_TEMP')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    TRY
                         SELF.IBTransaction1.Commit;
                    EXCEPT
                         //
                    END;
               END;// IF
             IF ((VI_LINHAS2/7994) = (VI_LINHAS2 DIV 7994))
                 or ((VI_LINHAS2/7996) = (VI_LINHAS2 DIV 7996))
                 or ((VI_LINHAS2/7998) = (VI_LINHAS2 DIV 7998))
                 OR (VC_BEGIN_END = 'ENCERRANDO2') THEN 
             BEGIN
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure SIMULACAO_2_100repet01' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                 // SELF.IBQ_COMBINACOES.SQL.Clear;
                 // SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_2_DADOS_TEMP')  ;
                 // SELF.IBQ_COMBINACOES.ExecSQL;
             end;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
        END; // IF ((VI_LINHAS2/997) = (VI_LINHAS2 DIV 997))
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS
    


BEGIN
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR VI_CONTASEL1 := 1 TO 15 DO
     BEGIN
        STGR_COMB15.Cells[VI_CONTASEL1+1,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB15.Cells[VI_CONTASEL1+1,1] := '00';
     END;
     STGR_COMB15.RowCount := 2;
     STGR_COMB15.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     PGBR_REMREPET.Position := 0;
     PGBR_REMREPET.Repaint;
     LA_PERC_COMB2.Caption := '00%      ';
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_PERC_100REPET.Caption := '00%      ';
     LA_PERC_100REPET.Repaint;
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_PERC_COMB2.Repaint;
     LA_QTD_COMB.Repaint;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     VI_CONTAR_COMB1 :=1;
     VI_LINHAS2 := 1;
     VI_LINHAS1 := VI_LINHAS2;
     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_GRUPO_A_TODOS5.RowCount-1));
    // =================== AQUI
     FOR VI_COMBINACOES1 := 1 {354}{195} TO TRUNC((STGR_GRUPO_A_TODOS5.RowCount-1)/1) DO
     BEGIN
                    IF     ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                       THEN
                              CONTINUE;
                    IF     ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                       THEN
                              CONTINUE;
                    IF     ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                       THEN
                              CONTINUE;
          FOR VI_COMBINACOES2 := 1 TO (STGR_GRUPO_B_TODOS4.RowCount-1) DO
          BEGIN

               IF  ((STGR_GRUPO_B_TODOS4.Cells[1,VI_COMBINACOES2]) = 'F' )
               THEN
                    CONTINUE;

                              IF     ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                                 THEN
                                        CONTINUE;
                              IF     ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                                 THEN
                                        CONTINUE;
                              IF     ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                                 OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                                 THEN
                                        CONTINUE;
               FOR VI_COMBINACOES3 := 1 TO (STGR_GRUPO_CxD.RowCount-1) DO
               BEGIN
                    IF NOT(STGR_GRUPO_CxD.Cells [1,VI_COMBINACOES3]= 'V') THEN
                                        CONTINUE;
                    // ----------------------------
                    // --  MONTANDO O RESULTADO  --
                    // ----------------------------
                    STGR_COMB15.Cells[2,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1];
                    // ===> PEGA 4 NUMEROS
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2];
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2];
                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2];
                    // ===> PEGA 3 NUMEROS
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[2,VI_COMBINACOES3] ;
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[3,VI_COMBINACOES3] ;
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[4,VI_COMBINACOES3] ;
                    // ===> PEGA 3 NUMEROS
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[7,VI_COMBINACOES3] ;
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[8,VI_COMBINACOES3] ;
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[9,VI_COMBINACOES3] ;
                    // ===> NUMERA A LINHA E FLAG EXISTENTE
                    STGR_COMB15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                    STGR_COMB15.Cells[1,VI_LINHAS2] := 'V';
                    // --------------------
                    // --  NUMEROS FIXOS   --
                    // --------------------
                    IF (STRtoINT(ED_FIXOS_01.Text)>0) THEN
                    BEGIN
                         STGR_COMB15.Cells[93,VI_LINHAS2] := 'F';
                         FOR VI_CONTASEL1 := 2 TO 16 DO
                         BEGIN
                              IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL1,VI_LINHAS2])) = STRtoINT(ED_FIXOS_01.Text))
                              THEN BEGIN
                                   IF (STRtoINT(ED_FIXOS_02.Text)>0) THEN
                                   BEGIN
                                        FOR VI_CONTASEL2 := 2 TO 16 DO
                                        BEGIN
                                             IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL2,VI_LINHAS2])) = STRtoINT(ED_FIXOS_02.Text))
                                             THEN
                                                  STGR_COMB15.Cells[93,VI_LINHAS2] := 'V';
                                        END; // FOR VI_CONTARSEL2
                                   END ELSE
                                   BEGIN
                                        STGR_COMB15.Cells[93,VI_LINHAS2] := 'V';
                                   END; // IF
                              END;// IF
                         END; // FOR
                         IF  (STGR_COMB15.Cells[93,VI_LINHAS2] = 'F')
                         THEN
                              CONTINUE;
                    END; // IF (STRtoINT(ED_FIXOS_01.Text)>0)
                    IF (STRtoINT(ED_FIXOS_03.Text)>0) THEN
                    BEGIN
                         STGR_COMB15.Cells[93,VI_LINHAS2] := 'F';
                         FOR VI_CONTASEL3 := 2 TO 16 DO
                         BEGIN
                              IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL3,VI_LINHAS2])) = STRtoINT(ED_FIXOS_03.Text))
                              THEN
                              BEGIN
                                        IF (STRtoINT(ED_FIXOS_04.Text)>0) THEN
                                        BEGIN
                                                  FOR VI_CONTASEL4 := 2 TO 16 DO
                                                  BEGIN
                                                       IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL4,VI_LINHAS2])) = STRtoINT(ED_FIXOS_04.Text))
                                                       THEN
                                                            STGR_COMB15.Cells[93,VI_LINHAS2] := 'V';
                                                  END; // FOR VI_CONTASEL3
                                        END  ELSE
                                        BEGIN
                                             STGR_COMB15.Cells[93,VI_LINHAS2] := 'V';
                                        END;
                              END; // IF ((STRtoINT(STGR_COMB15.
                         END; // FOR VI_CONTARSEL3
                         IF  (STGR_COMB15.Cells[93,VI_LINHAS2] = 'F')
                         THEN
                              CONTINUE;
                    END; // IF (STRtoINT(ED_FIXOS_03.Text)>0)

                         VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1 ;
                         // --------------------------------------
                         // --  CONFERINDO A SOMA DA COLUNA 1   --
                         // --------------------------------------
                        VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[8,VI_COMBINACOES1]) + STRtoINT(STGR_GRUPO_A_TODOS5.Cells[9,VI_COMBINACOES1])
                          + STRtoINT(STGR_GRUPO_A_TODOS5.Cells[10,VI_COMBINACOES1])
                          + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[7,VI_COMBINACOES2])
                          + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[8,VI_COMBINACOES2])
                          + STRtoINT(STGR_GRUPO_CxD.Cells[13,VI_COMBINACOES3])
                          + STRtoINT(STGR_GRUPO_CxD.Cells[14,VI_COMBINACOES3])
                          + STRtoINT(STGR_GRUPO_CxD.Cells[19,VI_COMBINACOES3])
                          + STRtoINT(STGR_GRUPO_CxD.Cells[20,VI_COMBINACOES3]);
// ------>>>>>>                           IF (VI_SOMA1 >= 115) AND (VI_SOMA1 <= 119) THEN
                         IF (VI_SOMA1 = (STRtoINT(ED_SOMAS_C1_INI.Text))) THEN
                         BEGIN
                              VI_FLAG_SOMATORIA1:= 1 ;
                              STGR_COMB15.Cells[17,VI_LINHAS2] := '-----'     ;
                            {  STGR_COMB15.Cells[18,VI_LINHAS2] := 'C-1'   ;
                              STGR_COMB15.Cells[19,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[8,VI_COMBINACOES1] ;
                              STGR_COMB15.Cells[20,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[9,VI_COMBINACOES1] ;
                              STGR_COMB15.Cells[21,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[10,VI_COMBINACOES1];
                              STGR_COMB15.Cells[22,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[7,VI_COMBINACOES2] ;
                              STGR_COMB15.Cells[23,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[8,VI_COMBINACOES2] ;
                              STGR_COMB15.Cells[24,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[13,VI_COMBINACOES3]     ;
                              STGR_COMB15.Cells[25,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[14,VI_COMBINACOES3]     ;
                              STGR_COMB15.Cells[26,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[19,VI_COMBINACOES3]     ;
                              STGR_COMB15.Cells[27,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[20,VI_COMBINACOES3]     ;
                              STGR_COMB15.Cells[28,VI_LINHAS2] := INTtoSTR(VI_SOMA1);  }
                         END
                         ELSE
                         BEGIN
                              VI_FLAG_SOMATORIA1:= 0;
                         END;

                         // --------------------------------------
                         // --  CONFERINDO A SOMA DA COLUNA 2   --
                         // --------------------------------------
                        VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[11,VI_COMBINACOES1]) + STRtoINT(STGR_GRUPO_A_TODOS5.Cells[12,VI_COMBINACOES1])
                          + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[9,VI_COMBINACOES2])
                          + STRtoINT(STGR_GRUPO_CxD.Cells[15,VI_COMBINACOES3])
                          + STRtoINT(STGR_GRUPO_CxD.Cells[21,VI_COMBINACOES3]);
                         IF (VI_SOMA1 >= (STRtoINT(ED_SOMAS_C2_INI.Text))) AND (VI_SOMA1 <= (STRtoINT(ED_SOMAS_C2_FINAL.Text))) THEN
                         BEGIN
                              VI_FLAG_SOMATORIA2:= 1 ;
                              {STGR_COMB15.Cells[29,VI_LINHAS2] := '-----'     ;
                              STGR_COMB15.Cells[30,VI_LINHAS2] := 'C-2'   ;
                              STGR_COMB15.Cells[31,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[11,VI_COMBINACOES1] ;
                              STGR_COMB15.Cells[32,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[12,VI_COMBINACOES1] ;
                              STGR_COMB15.Cells[33,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[9,VI_COMBINACOES2] ;
                              STGR_COMB15.Cells[34,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[15,VI_COMBINACOES3]     ;
                              STGR_COMB15.Cells[35,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[21,VI_COMBINACOES3]     ;
                              STGR_COMB15.Cells[36,VI_LINHAS2] := INTtoSTR(VI_SOMA1);  }
                         END ELSE BEGIN
                              VI_FLAG_SOMATORIA2:= 0;
                              CONTINUE;
                         END;

                         // --------------------------------------
                         // --  CONFERINDO A SOMA DA COLUNA 3   --
                         // --------------------------------------
                        VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[13,VI_COMBINACOES1])
                          + STRtoINT(STGR_GRUPO_A_TODOS5.Cells[14,VI_COMBINACOES1])
                          + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[10,VI_COMBINACOES2])
                          + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[11,VI_COMBINACOES2])
                          + STRtoINT(STGR_GRUPO_CxD.Cells[16,VI_COMBINACOES3])
                          + STRtoINT(STGR_GRUPO_CxD.Cells[17,VI_COMBINACOES3])
                          + STRtoINT(STGR_GRUPO_CxD.Cells[22,VI_COMBINACOES3])
                          + STRtoINT(STGR_GRUPO_CxD.Cells[23,VI_COMBINACOES3]);
                         IF (VI_SOMA1 >= (STRtoINT(ED_SOMAS_C3_INI.Text))) AND (VI_SOMA1 <= (STRtoINT(ED_SOMAS_C3_FINAL.Text))) THEN
                         BEGIN
                              VI_FLAG_SOMATORIA3:=1 ;
                              {STGR_COMB15.Cells[37,VI_LINHAS2] := '-----'     ;
                              STGR_COMB15.Cells[38,VI_LINHAS2] := 'C-3'   ;
                              STGR_COMB15.Cells[39,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[13,VI_COMBINACOES1] ;
                              STGR_COMB15.Cells[40,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[14,VI_COMBINACOES1] ;
                              STGR_COMB15.Cells[41,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[10,VI_COMBINACOES2] ;
                              STGR_COMB15.Cells[42,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[11,VI_COMBINACOES2] ;
                              STGR_COMB15.Cells[43,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[16,VI_COMBINACOES3]     ;
                              STGR_COMB15.Cells[44,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[17,VI_COMBINACOES3]     ;
                              STGR_COMB15.Cells[45,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[22,VI_COMBINACOES3]     ;
                              STGR_COMB15.Cells[46,VI_LINHAS2] := STGR_GRUPO_CxD.Cells[23,VI_COMBINACOES3]     ;
                              STGR_COMB15.Cells[47,VI_LINHAS2] := INTtoSTR(VI_SOMA1); }
                         END ELSE BEGIN
                              VI_FLAG_SOMATORIA3:=0;
                              CONTINUE;
                         END;

                        VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[15,VI_COMBINACOES1])
                          + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[12,VI_COMBINACOES2])
                          + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[13,VI_COMBINACOES2]);
                         IF (VI_SOMA1 >= (STRtoINT(ED_SOMAS_C4_INI.Text))) AND (VI_SOMA1 <= (STRtoINT(ED_SOMAS_C4_FINAL.Text))) THEN
                         BEGIN
                              VI_FLAG_SOMATORIA4:=1  ;
                            {  STGR_COMB15.Cells[48,VI_LINHAS2] := '-----'     ;
                              STGR_COMB15.Cells[49,VI_LINHAS2] := 'C-4'   ;
                              STGR_COMB15.Cells[50,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[15,VI_COMBINACOES1] ;
                              STGR_COMB15.Cells[51,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[12,VI_COMBINACOES2] ;
                              STGR_COMB15.Cells[52,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[13,VI_COMBINACOES2] ;
                              STGR_COMB15.Cells[53,VI_LINHAS2] := INTtoSTR(VI_SOMA1);
                              STGR_COMB15.Cells[55,VI_LINHAS2] := '-----'     ;
                              STGR_COMB15.Cells[56,VI_LINHAS2] := 'GRP A';
                              STGR_COMB15.Cells[57,VI_LINHAS2] := '['+STGR_GRUPO_A_TODOS5.Cells [0, VI_COMBINACOES1]+']';
                              STGR_COMB15.Cells[58,VI_LINHAS2] := 'GRP B';
                              STGR_COMB15.Cells[59,VI_LINHAS2] := '['+STGR_GRUPO_B_TODOS4.Cells [0, VI_COMBINACOES2]+']';
                              STGR_COMB15.Cells[60,VI_LINHAS2] := 'GRP CxD';
                              STGR_COMB15.Cells[61,VI_LINHAS2] := '['+STGR_GRUPO_CxD.Cells [0, VI_COMBINACOES3]+']';
                              STGR_COMB15.Cells[62,VI_LINHAS2] := '[-----]';           }
                              STGR_COMB15.Cells[32,VI_LINHAS2] := '-----'     ;
                              STGR_COMB15.Cells[33,VI_LINHAS2] := '<FORA>';
                              STGR_COMB15.Cells[34,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells [17, VI_COMBINACOES1] ;
                              STGR_COMB15.Cells[35,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells [18, VI_COMBINACOES1] ;
                              STGR_COMB15.Cells[36,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells [19, VI_COMBINACOES1] ;
                              //STGR_COMB15.Cells[37,VI_LINHAS2] := '-' ;
                              STGR_COMB15.Cells[37,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells [15, VI_COMBINACOES2] ;
                              STGR_COMB15.Cells[38,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells [16, VI_COMBINACOES2] ;
                              STGR_COMB15.Cells[39,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells [17, VI_COMBINACOES2] ;
                              //STGR_COMB15.Cells[41,VI_LINHAS2] := '-' ;
                              STGR_COMB15.Cells[40,VI_LINHAS2] := STGR_GRUPO_CxD.Cells [25,VI_COMBINACOES3];
                              STGR_COMB15.Cells[41,VI_LINHAS2] := STGR_GRUPO_CxD.Cells [26,VI_COMBINACOES3];
                             // STGR_COMB15.Cells[44,VI_LINHAS2] := '-' ;
                              STGR_COMB15.Cells[42,VI_LINHAS2] := STGR_GRUPO_CxD.Cells [27,VI_COMBINACOES3];
                              STGR_COMB15.Cells[43,VI_LINHAS2] := STGR_GRUPO_CxD.Cells [28,VI_COMBINACOES3];
                         END ELSE
                         BEGIN
                              VI_FLAG_SOMATORIA4:=0;
                              CONTINUE;
                         END;

                       VI_FLAG_SOMATORIA_FINAL:= VI_FLAG_SOMATORIA4+ VI_FLAG_SOMATORIA3+ VI_FLAG_SOMATORIA2+ VI_FLAG_SOMATORIA1;
                         IF ((VI_FLAG_SOMATORIA1 =1) AND (VI_FLAG_SOMATORIA2 =1) AND (VI_FLAG_SOMATORIA3 =1) AND (VI_FLAG_SOMATORIA4 =1))
                              THEN
                              BEGIN
                                  PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                                  PR_ORDENAR_SIMULACAO_NS10 (VI_LINHAS2);
                                  PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                  VI_LINHAS2 := VI_LINHAS2+1 ;
                                  VI_LINHAS1 := VI_LINHAS1+1 ;
                                  PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_GRUPO_A_TODOS5.RowCount-1));
                                  CASE (VI_LINHAS2) OF
                                       10..19:     STGR_COMB15.RowCount := VI_LINHAS2;
                                       30:        STGR_COMB15.RowCount := VI_LINHAS2;
                                       70:        STGR_COMB15.RowCount := VI_LINHAS2;
                                  END; // CASE
                                  CASE (VI_LINHAS2) OF
                                       10..19:     STGR_COMB15.Repaint;
                                       30:         STGR_COMB15.Repaint ;
                                       70:         STGR_COMB15.Repaint ;
                                  END; // CASE
                                  IF (VI_COMBINACOES2 MOD 99) = 0 THEN STGR_COMB15.RowCount := VI_LINHAS2;
                         END;// IF
               END; // FOR VI_COMBINACOES3
               PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_GRUPO_B_TODOS4.RowCount-1)*100);
               PGBR_GERARCOMB0.Repaint;
                    IF (VI_MOSTRAR_qtdcomb2 = 1) THEN
                    BEGIN
                         IF (VI_COMBINACOES2 MOD 30) = 0 THEN   // MOD 30
                         BEGIN
                              PANEL_TITULO_SIMULACAO.Repaint;
                              Self.Repaint;
                         end;
                         IF (VI_COMBINACOES2 MOD 50) = 0 THEN   // MOD 30
                         BEGIN
                              LA_PERC_COMB2.Caption := '# ' + INTtoSTR(VI_COMBINACOES2)+ ' DE '+  INTtoSTR(STGR_GRUPO_B_TODOS4.RowCount-1)+ ' => '+INTtoSTR(TRUNC(VI_COMBINACOES2/(STGR_GRUPO_B_TODOS4.RowCount-1)*100))+ ' %';
                              LA_PERC_COMB2.Repaint;
                         end; // if
                         IF (VI_COMBINACOES2 MOD 700) =0 THEN  // MOD 300
                         BEGIN
                              Self.WindowState := wsMinimized;
                              Self.WindowState :=  wsNormal;
                              SELF.Repaint;
                         END; //IF
                    END; // IF
           END; // FOR VI_COMBINACOES2
           STGR_COMB15.RowCount := VI_LINHAS2;
          SLEEP(30);  // SLEEP (100)
          PGBR_GERARCOMB0.Position := 100;
         // END;// IF (STGR_GRUPO_A_TODOS
          LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4)+'   ';
          LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
          STGR_COMB15.Repaint;
          LA_QTD_COMB.Repaint;

          LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_GRUPO_A_TODOS5.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_GRUPO_A_TODOS5.RowCount-1)*100))+ ' %  ';
          PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_GRUPO_A_TODOS5.RowCount-1)*100);
          LA_GERAR_COMB.Repaint;
          PGBR_GERARCOMB.Repaint;
          STGR_COMB15.RowCount := VI_LINHAS2;
          STGR_COMB15.Repaint;
          IF (PGBR_GERARCOMB.Position MOD 10) =0 THEN 
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               Self.Repaint;
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END; //IF
     END; // FOR VI_COMBINACOES1
     LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VI_COMBINACOES3)+'   ';
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Repaint;
     LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_GRUPO_A_TODOS5.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_GRUPO_A_TODOS5.RowCount-1)*100))+ ' %  ';
     LA_GERAR_COMB.Repaint;
     PGBR_GERARCOMB.Position := 100;
     TRY
          STGR_COMB15.FixedRows := 1;
     EXCEPT
          //
     END;
     PR_GRAVAR_DADOS ('ENCERRANDO2', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_GRUPO_A_TODOS5.RowCount-1));
     //PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB.Repaint;
 //    SHOWMESSAGE('Refinar1');
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM SIMULACAO_2_DADOS_TEMP')  ;
               SELF.IBQ_COMBINACOES.ExecSQL;
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
               SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.PR_SIMULAR_RECUPERANDODADOS('A');    // Carregando os dados
     BBT_100REPT.Click;                       // REMOVENDO OS REPETIDOS
     PR_GRAVAR_DADOS ('ENCERRANDO', VI_LINHAS2, TRUNC(VI_COMBINACOES1/2+1), TRUNC(STGR_GRUPO_A_TODOS5.RowCount-1));
 //         SHOWMESSAGE('Refinar2');
     SELF.PR_SIMULAR_RECUPERANDODADOS('B');
     BBT_100REPT.Click;                       // REMOVENDO OS REPETIDOS
     PR_GRAVAR_DADOS ('ENCERRANDO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_GRUPO_A_TODOS5.RowCount-1));
  //   SHOWMESSAGE('Refinar3');
     SELF.PR_SIMULAR_RECUPERANDODADOS('C');
     BBT_100REPT.Click;
     PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_GRUPO_A_TODOS5.RowCount-1));
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE SIMULACAO_2_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_SIMULACAO.Enabled    := false;
     BBT_ENCERRAR.Enabled := false;
     //LA_gTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VI_COMBINACOES3)+'   ';
     //LA_gQTD_COMB.Caption    := INTtoSTR(VI_LINHAS2-1)+'     ';
     //PA_GEROU.Left := 330;
     VI_CONTASEL1 := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMB15.RowCount-1) DO
     BEGIN
          IF (STGR_COMB15.Cells[1,VI_COMBINACOES1] = 'V') THEN VI_CONTASEL1:=VI_CONTASEL1 +1;
     END;
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VI_COMBINACOES3)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption + '    ';
     PA_REMOVEUREPET.Left :=  500;
end;



                                                              
PROCEDURE T_FRM_SIMULACAO2.PR_SIMULAR_RECUPERANDODADOS(VC_OPERACAO: STRING);
VAR
     VI_AN_COMB1, VI_CONTAR, VI_CONTADOR : INTEGER;


    PROCEDURE PR_ORDENAR_SIMULACAO_NS10 (VI_LINHAS9: INTEGER);
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
        FOR VI_CONTAR :=34 TO 43 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 34;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB15.Cells[VI_CNTCELULAS+12, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15


BEGIN
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
               SELF.IBQ_COMBINACOES.ExecSQL;
       SELF.IBQ_COMBINACOES.Close;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(*) AS SOMADADOS FROM SIMULACAO_2_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTADOR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       IF VC_OPERACAO = 'A' THEN
       BEGIN
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('select FIRST ' + INTtoSTR(TRUNC(VI_CONTADOR/2+1))  + 'distinct(dados), NS_A1, NS_A2, NS_A3, NS_B1, NS_B2, NS_B3, NS_C1, NS_C2, NS_D1, NS_D2, DADOS_NS  from simulacao_2_dados order by dados;')  ;
            SELF.IBQ_COMBINACOES.Open;
            VI_CONTAR := TRUNC(VI_CONTADOR/2+1);
       END ELSE
       IF VC_OPERACAO = 'B' THEN
       BEGIN
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('select FIRST ' + INTtoSTR(TRUNC(VI_CONTADOR/2-1))  + ' SKIP '+ INTtoSTR(TRUNC(VI_CONTADOR/2+1))  +'distinct(dados), NS_A1, NS_A2, NS_A3, NS_B1, NS_B2, NS_B3, NS_C1, NS_C2, NS_D1, NS_D2, DADOS_NS  from simulacao_2_dados order by dados;')  ;
            SELF.IBQ_COMBINACOES.Open;
            VI_CONTAR := TRUNC(VI_CONTADOR/2-1);
       END ELSE
       BEGIN;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('select distinct(dados), NS_A1, NS_A2, NS_A3, NS_B1, NS_B2, NS_B3, NS_C1, NS_C2, NS_D1, NS_D2, DADOS_NS  from simulacao_2_dados_TEMP order by dados;')  ;
            SELF.IBQ_COMBINACOES.Open;
            VI_CONTAR := VI_CONTADOR;
       END; // IF
       // ********************
       // **   ENCERRANDO   **
       // ********************
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
     FOR VI_CONTADOR := 1 TO 15 DO
     BEGIN
        STGR_COMB15.Cells[VI_CONTAR+1,0] := '-'+INTtoSTR(VI_CONTADOR)+'-';
        STGR_COMB15.Cells[VI_CONTAR+1,1] := '00';
     END;
       STGR_COMB15.RowCount := 2;
       SELF.IBQ_COMBINACOES.First;
       IF (TRIM(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString) ='') THEN
           SELF.IBQ_COMBINACOES.Next;
       FOR VI_AN_COMB1:= 1 TO  VI_CONTAR DO
       BEGIN
           STGR_COMB15.Cells[0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB15.Cells[1, VI_AN_COMB1] := 'V';
           STGR_COMB15.Cells[2, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
           STGR_COMB15.Cells[3, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
           STGR_COMB15.Cells[4, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
           STGR_COMB15.Cells[5, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
           STGR_COMB15.Cells[6, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
           STGR_COMB15.Cells[7, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
           STGR_COMB15.Cells[8, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
           STGR_COMB15.Cells[9, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
           STGR_COMB15.Cells[10, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
           STGR_COMB15.Cells[11, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
           STGR_COMB15.Cells[12, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
           STGR_COMB15.Cells[13, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
           STGR_COMB15.Cells[14, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
           STGR_COMB15.Cells[15, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
           STGR_COMB15.Cells[16, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
           STGR_COMB15.Cells[17, VI_AN_COMB1] :=  '---';
          { STGR_COMB15.Cells[64, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_A1').AsString;
           STGR_COMB15.Cells[65, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_A2').AsString;
           STGR_COMB15.Cells[66, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_A3').AsString;
           STGR_COMB15.Cells[68, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_B1').AsString;
           STGR_COMB15.Cells[69, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_B2').AsString;
           STGR_COMB15.Cells[70, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_B3').AsString;
           STGR_COMB15.Cells[72, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_C1').AsString;
           STGR_COMB15.Cells[73, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_C2').AsString;
           STGR_COMB15.Cells[75, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_D1').AsString;
           STGR_COMB15.Cells[76, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_D2').AsString;}
           STGR_COMB15.Cells[34, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_A1').AsString;
           STGR_COMB15.Cells[35, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_A2').AsString;
           STGR_COMB15.Cells[36, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_A3').AsString;
           STGR_COMB15.Cells[37, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_B1').AsString;
           STGR_COMB15.Cells[38, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_B2').AsString;
           STGR_COMB15.Cells[39, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_B3').AsString;
           STGR_COMB15.Cells[40, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_C1').AsString;
           STGR_COMB15.Cells[41, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_C2').AsString;
           STGR_COMB15.Cells[42, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_D1').AsString;
           STGR_COMB15.Cells[43, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('NS_D2').AsString;
          { STGR_COMB15.Cells[46, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_NS').AsString,1,2);
           STGR_COMB15.Cells[47, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_NS').AsString,4,2);
           STGR_COMB15.Cells[48, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_NS').AsString,7,2);
           STGR_COMB15.Cells[49, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_NS').AsString,10,2);
           STGR_COMB15.Cells[50, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_NS').AsString,13,2);
           STGR_COMB15.Cells[51, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_NS').AsString,16,2);
           STGR_COMB15.Cells[52, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_NS').AsString,19,2);
           STGR_COMB15.Cells[53, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_NS').AsString,22,2);
           STGR_COMB15.Cells[54, VI_AN_COMB1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS_NS').AsString,25,2);  }
         //  IF (VI_AN_COMB1=997) THEN SHOWMESSAGE('995');
                                  PR_ORDENAR_SIMULACAO_NS10 (VI_AN_COMB1);
               STGR_COMB15.RowCount := VI_AN_COMB1;
           if (VI_AN_COMB1/90)=(VI_AN_COMB1 DIV 90) then
           BEGIN
               PGBR_REMREPET.Position := (TRUNC(VI_AN_COMB1  / VI_CONTAR *100) );
               PGBR_REMREPET.Repaint;
               STGR_COMB15.REPAINT;               
           END;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       PGBR_REMREPET.Position := 100;
       PGBR_REMREPET.Repaint;
       STGR_COMB15.RowCount := VI_CONTAR+1;       
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM SIMULACAO_2_DEFINICAO;')  ;
       SELF.IBQ_COMBINACOES.Open;
       STGR_COMB15.REPAINT;
           PGBR_REMREPET.Position := 100;
       LA_PERC_100REPET.Caption := '100%     ';           
       LA_TOTAL_100REPET.Caption := INTtoSTR(STGR_COMB15.RowCount-1);
       STGR_COMB15.REPAINT;
       LA_TOTAL_100REPET.Repaint;

           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;

    showmessage('ok');
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();



PROCEDURE T_FRM_SIMULACAO2.PR_COMPLETAR_GRID15_1 (VI_LINHA_A:INTEGER; VI_LINHA_B:INTEGER; VI_LINHA_C:INTEGER; VI_LINHA_D:INTEGER; VI_LINHAS2: INTEGER);
VAR
     VSI_CONTADOR : SMALLINT;
BEGIN
     STGR_COMB15.Cells[17,VI_LINHAS2] := '-' ;
     FOR VSI_CONTADOR :=1 TO 9 DO
     BEGIN
          STGR_COMB15.Cells[17+VSI_CONTADOR,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells [6+VSI_CONTADOR, VI_LINHA_A];
     END; // FOR
     STGR_COMB15.Cells[27,VI_LINHAS2] := '-' ;
     FOR VSI_CONTADOR :=1 TO 8 DO
     BEGIN
          STGR_COMB15.Cells[27+VSI_CONTADOR,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells [5+VSI_CONTADOR, VI_LINHA_B];
     END; // FOR
     STGR_COMB15.Cells[36,VI_LINHAS2] := '-' ;
     FOR VSI_CONTADOR :=1 TO 6 DO
     BEGIN
          STGR_COMB15.Cells[36+VSI_CONTADOR,VI_LINHAS2] := STGR_GRUPO_C_TODOS3.Cells [4+VSI_CONTADOR, VI_LINHA_C];
     END; // FOR
     STGR_COMB15.Cells[43,VI_LINHAS2] := '-' ;
     FOR VSI_CONTADOR :=1 TO 6 DO
     BEGIN
          STGR_COMB15.Cells[43+VSI_CONTADOR,VI_LINHAS2] := STGR_GRUPO_D_TODOS3.Cells [4+VSI_CONTADOR, VI_LINHA_D];
     END; // FOR
END;


PROCEDURE T_FRM_SIMULACAO2.PR_COMPLETAR_GRID15_2 (VI_LINHA_A:INTEGER; VI_LINHA_B:INTEGER; VI_LINHA_CxD:INTEGER; VI_LINHAS2: INTEGER);
VAR
     VSI_CONTADOR : SMALLINT;
BEGIN
     STGR_COMB15.Cells[17,VI_LINHAS2] := '-' ;
     FOR VSI_CONTADOR :=1 TO 9 DO
     BEGIN
          STGR_COMB15.Cells[17+VSI_CONTADOR,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells [6+VSI_CONTADOR, VI_LINHA_A];
     END; // FOR
     STGR_COMB15.Cells[27,VI_LINHAS2] := '-' ;
     FOR VSI_CONTADOR :=1 TO 8 DO
     BEGIN
          STGR_COMB15.Cells[27+VSI_CONTADOR,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells [5+VSI_CONTADOR, VI_LINHA_B];
     END; // FOR
     STGR_COMB15.Cells[36,VI_LINHAS2] := '-' ;
     FOR VSI_CONTADOR :=1 TO 11 DO
     BEGIN
          STGR_COMB15.Cells[36+VSI_CONTADOR,VI_LINHAS2] := STGR_GRUPO_CxD.Cells [11+VSI_CONTADOR, VI_LINHA_CxD];
     END; // FOR
END;



procedure T_FRM_SIMULACAO2.BBT_SALVAR_SIMULACAOClick(Sender: TObject);
begin
     SELF.PR_GRAVAR_DADOS ();
end;




procedure T_FRM_SIMULACAO2.Button1Click(Sender: TObject);
begin
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
end;


procedure T_FRM_SIMULACAO2.CB_FIXO_AChange(Sender: TObject);
begin
     IF CB_FIXO_A.ItemIndex = 0 THEN ED_fixoS_A1.Text := '00';
     IF CB_FIXO_A.ItemIndex = 0 THEN ED_fixoS_A2.Text := '00';
end;


procedure T_FRM_SIMULACAO2.CB_FIXO_BChange(Sender: TObject);
begin
     IF CB_FIXO_B.ItemIndex = 0 THEN ED_fixoS_B1.Text := '00';
end;


procedure T_FRM_SIMULACAO2.CB_FIXO_CChange(Sender: TObject);
begin
     IF CB_FIXO_C.ItemIndex = 0 THEN ED_fixoS_C1.Text := '00';
end;


procedure T_FRM_SIMULACAO2.CB_FIXO_DChange(Sender: TObject);
begin
     IF CB_FIXO_D.ItemIndex = 0 THEN ED_fixoS_D1.Text := '00';
end;


procedure T_FRM_SIMULACAO2.TRB_C2_INIChange(Sender: TObject);
begin
     IF TRB_C2_INI.Position = 1 THEN
          ED_SOMAS_C2_INI.Text := '63';
     IF TRB_C2_INI.Position = 2 THEN
          ED_SOMAS_C2_INI.Text := '65';
     IF TRB_C2_INI.Position = 3 THEN
          ED_SOMAS_C2_INI.Text := '67';
end;


procedure T_FRM_SIMULACAO2.TRB_C2_FINALChange(Sender: TObject);
begin
     IF TRB_C2_FINAL.Position = 1 THEN
          ED_SOMAS_C2_FINAL.Text := '63';
     IF TRB_C2_FINAL.Position = 2 THEN
          ED_SOMAS_C2_FINAL.Text := '65';
     IF TRB_C2_FINAL.Position = 3 THEN
          ED_SOMAS_C2_FINAL.Text := '67';
end;


procedure T_FRM_SIMULACAO2.TRB_C1_INIChange(Sender: TObject);
begin
     IF TRB_C1_INI.Position = 1 THEN
          ED_SOMAS_C1_INI.Text := '115';
     IF TRB_C1_INI.Position = 2 THEN
          ED_SOMAS_C1_INI.Text := '117';
     IF TRB_C1_INI.Position = 3 THEN
          ED_SOMAS_C1_INI.Text := '119';
end;



end.


