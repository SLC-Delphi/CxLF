unit Simulacao01_Filtro_911;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, RzBckgnd, ExtCtrls, StrUtils,
  WinSkinData;

type
  T_F_SIM_01_FILTRO_911 = class(TForm)
    SkinData1: TSkinData;
    Panel1: TPanel;
    STGR_COMB15: TStringGrid;
    STGR_BASE_E: TStringGrid;
    STGR_BASE_D: TStringGrid;
    STGR_BASE_C: TStringGrid;
    STGR_BASE_B: TStringGrid;
    STGR_BASE_A: TStringGrid;
    SCBX_GABARITO: TScrollBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    STGR_GRUPO_A_C3: TStringGrid;
    STGR_GRUPO_A_C2: TStringGrid;
    STGR_GRUPO_A_C1: TStringGrid;
    STGR_GRUPO_B_C2: TStringGrid;
    STGR_GRUPO_B_C1: TStringGrid;
    STGR_GRUPO_B_C3: TStringGrid;
    STGR_GRUPO_C_C3: TStringGrid;
    STGR_GRUPO_C_C1: TStringGrid;
    STGR_GRUPO_C_C2: TStringGrid;
    STGR_GRUPO_D_C3: TStringGrid;
    STGR_GRUPO_D_C1: TStringGrid;
    STGR_GRUPO_D_C2: TStringGrid;
    STGR_GRUPO_E_C3: TStringGrid;
    STGR_GRUPO_E_C1: TStringGrid;
    STGR_GRUPO_E_C2: TStringGrid;
    PGBR_REMREPET: TProgressBar;
    PGBR_ORDENAR: TProgressBar;
    PGBR_GERARCOMB: TProgressBar;
    PGBR_FILTRARCOMB: TProgressBar;
    Panel16: TPanel;
    Label61: TLabel;
    Label46: TLabel;
    Label5: TLabel;
    ED_SOMAS_C2I_NI: TEdit;
    ED_SOMAS_C2I_FIN: TEdit;
    ED_FIXO_02: TEdit;
    ED_FIXO_01: TEdit;
    ED_FIXO_04: TEdit;
    ED_FIXO_03: TEdit;
    Panel15: TPanel;
    Label56: TLabel;
    Label3: TLabel;
    ED_SOMAS_C1_INI: TEdit;
    ED_SOMAS_C1_FIN: TEdit;
    Panel14: TPanel;
    Label72: TLabel;
    Label7: TLabel;
    ED_SOMAS_C3_INI: TEdit;
    ED_SOMAS_C3_FIN: TEdit;
    Label9: TLabel;
    Label88: TLabel;
    Label87: TLabel;
    Label86: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label53: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    BBT_ORDENAR: TBitBtn;
    BBT_GERAR: TBitBtn;
    BBT_FIL09_RECOMECAR: TBitBtn;
    BBT_ENCERRAR: TBitBtn;
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
    BBT_PREPARAR: TBitBtn;
    LA_PERCENTUAL_ENCERRAR: TLabel;
    PA_GABARITO: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    RB_RESULTADOS: TRadioButton;
    RB_GABARITO: TRadioButton;
    RB_RES_GABARITOS: TRadioButton;
    PA_EXCLUIDOS: TPanel;
    Label12: TLabel;
    ED_EXC_01: TEdit;
    ED_EXC_02: TEdit;
    procedure FormShow(Sender: TObject);
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
    procedure BBT_FIL09_RECOMECARClick(Sender: TObject);
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure RB_RES_GABARITOSClick(Sender: TObject);
    procedure RB_GABARITOClick(Sender: TObject);
    procedure RB_RESULTADOSClick(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_BOTOES_MODELO_ABCDE1 (VI_NUMERO: INTEGER; VS_IMPAR: STRING);    
  public
    { Public declarations }
  end;

var
  _F_SIM_01_FILTRO_911: T_F_SIM_01_FILTRO_911;

implementation

{$R *.dfm}

procedure T_F_SIM_01_FILTRO_911.FormShow(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
    FOR VI_CONTAR := 1 TO 6 DO
    BEGIN
        STGR_BASE_A.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_B.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_C.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_D.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_E.Cells [VI_CONTAR,0] := '0';
    END;
end;


procedure T_F_SIM_01_FILTRO_911.BBT_FIL09_RECOMECARClick(Sender: TObject);
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
    FOR VI_CONTAR := 1 TO 6 DO
    BEGIN
        STGR_BASE_A.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_B.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_C.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_D.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_E.Cells [VI_CONTAR,0] := '0';
    END;    
end;


procedure T_F_SIM_01_FILTRO_911.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(1,'V');
    BBT_701.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(2,'F');
    BBT_702.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(3,'V');
    BBT_703.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(4,'F');
    BBT_704.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(5,'V');
    BBT_705.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(6,'F');
    BBT_706.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(7,'V');
    BBT_707.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(8,'F');
    BBT_708.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(10,'F');
    BBT_710.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(9,'V');
    BBT_709.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(11,'V');
    BBT_711.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(12,'F');
    BBT_712.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(13,'V');
    BBT_713.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(14,'F');
    BBT_714.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(15,'V');
    BBT_715.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(16,'F');
    BBT_716.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(17,'V');
    BBT_717.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(18,'F');
    BBT_718.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(19,'V');
    BBT_719.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(20,'F');
    BBT_720.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(21,'V');
    BBT_721.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(22,'F');
    BBT_722.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(23,'V');
    BBT_723.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(24,'F');
    BBT_724.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_911.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCDE1(25,'V');
    BBT_725.Visible := FALSE;
end;


PROCEDURE T_F_SIM_01_FILTRO_911.PR_BOTOES_MODELO_ABCDE1 (VI_NUMERO: INTEGER; VS_IMPAR: STRING);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3, VI_CONTAR4, VI_CONTAR5 : INTEGER;
BEGIN
   FOR VI_CONTAR := 1 TO 5 DO
    BEGIN
        IF (STRtoINT (STGR_BASE_A.Cells [VI_CONTAR,0]) = 0) THEN
        BEGIN
            STGR_BASE_A.Cells [VI_CONTAR,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
            EXIT;
        END ELSE
        IF (VI_CONTAR = 5) THEN
        BEGIN
            FOR VI_CONTAR2 :=1 TO 5 DO
            BEGIN
                IF (STRtoINT (STGR_BASE_B.Cells [VI_CONTAR2,0]) = 0) THEN
                BEGIN
                    STGR_BASE_B.Cells [VI_CONTAR2,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                    EXIT;
                END ELSE
                IF (VI_CONTAR2 = 5) THEN
                BEGIN
                    FOR VI_CONTAR3 :=1 TO 5 DO
                    BEGIN
                        IF (STRtoINT (STGR_BASE_C.Cells [VI_CONTAR3,0]) = 0) THEN
                        BEGIN
                            STGR_BASE_C.Cells [VI_CONTAR3,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                            EXIT  ;
                        END ELSE
                        IF (VI_CONTAR3 = 5) THEN
                        BEGIN
                            FOR VI_CONTAR4 :=1 TO 5 DO
                            BEGIN
                                IF (STRtoINT (STGR_BASE_D.Cells [VI_CONTAR4,0]) = 0) THEN
                                BEGIN
                                    STGR_BASE_D.Cells [VI_CONTAR4,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                    EXIT ;
                            END ELSE
                                IF (VI_CONTAR4 = 5) THEN
                                BEGIN
                                    FOR VI_CONTAR5 :=1 TO 5 DO
                                    BEGIN
                                        IF (STRtoINT (STGR_BASE_E.Cells [VI_CONTAR5,0]) = 0) THEN
                                        BEGIN
                                            STGR_BASE_E.Cells [VI_CONTAR5,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
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


procedure T_F_SIM_01_FILTRO_911.BBT_PREPARARClick(Sender: TObject);
var
     VI_CONTADOR, VI_CONTAR, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2: integer;
     VI_COMBINACOES3, VI_COMBINACOES4, VI_COMBINACOES5, VI_COMBINACOES6, VI_COMBINACOES7 : SMALLINT;
     VI_CNTCELULAS: SMALLINT;
     VS_NUMEROSPRINCIPAIS: STRING;     
begin
    STGR_COMB15.RowCount := 3;
    PGBR_GERARCOMB.Position := 0;
    PGBR_GERARCOMB.Repaint;
    PGBR_REMREPET.Position := 0;
    PGBR_REMREPET.Repaint;
    PGBR_FILTRARCOMB.Position := 0;
    PGBR_FILTRARCOMB.Repaint;
    LA_PERCENTUAL_ENCERRAR.Caption := '0%        ';
    // ======================================================
    // ||||==============================================||||
    // |||| 	Análises Combinatórias e suas sobras     ||||
    // ||||==============================================||||
    // ======================================================
        // ******************
        // **  LINHA l (A) **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 8 DO
                    BEGIN
                         FOR VI_COMBINACOES5:= 1 TO 5 DO
                         BEGIN
                         FOR VI_COMBINACOES6:= VI_COMBINACOES5+1 TO 8 DO
                         BEGIN
                              FOR VI_COMBINACOES7:= 1 TO 8 DO
                              BEGIN
                                        STGR_GRUPO_A_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_GRUPO_A_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        STGR_GRUPO_A_C1.Cells [1,VI_LINHAS2]:= 'V';
                                        STGR_GRUPO_A_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES1,0];
                                        STGR_GRUPO_A_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES2,0];
                                        STGR_GRUPO_A_C1.Cells [4,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES3,0];
                                        STGR_GRUPO_A_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                        // ----------------------------
                                        // -- FLAG NA COLUNA 2, 3 --
                                        // ----------------------------
                                        STGR_GRUPO_A_C2.Cells [2,VI_LINHAS2]:= 'F';
                                        STGR_GRUPO_A_C2.Cells [3,VI_LINHAS2]:= 'F';
                                        STGR_GRUPO_A_C2.Cells [4,VI_LINHAS2]:= 'F';
                                        STGR_GRUPO_A_C3.Cells [1,VI_LINHAS2]:= 'F';
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
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES2,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES3,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES4,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES5,0];
                                        IF (POS(STGR_BASE_A.Cells[VI_COMBINACOES6,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             STGR_GRUPO_A_C2.Cells[4,VI_LINHAS2] := STGR_BASE_A.Cells[VI_COMBINACOES6,0];
                                        END;
                                        // ---------------------------------------------
                                        // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                                        // ---------------------------------------------
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES2,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES3,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES4,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES5,0]+ '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES6,0];
                                        IF (POS(STGR_BASE_A.Cells[VI_COMBINACOES7,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             STGR_GRUPO_A_C3.Cells[1,VI_LINHAS2] := STGR_BASE_A.Cells[VI_COMBINACOES7,0];
                                        END;


                                        // -----------------------------------------------------------------------------------
                                        // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                                        // -----------------------------------------------------------------------------------
                                        IF NOT ((STGR_GRUPO_A_C2.Cells [2,VI_LINHAS2]='F')
                                             OR (STGR_GRUPO_A_C2.Cells [3,VI_LINHAS2]='F')
                                             OR (STGR_GRUPO_A_C2.Cells [4,VI_LINHAS2]='F')
                                             OR (STGR_GRUPO_A_C3.Cells [1,VI_LINHAS2]='F'))
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
                                                                 STGR_GRUPO_A_C3.Cells[2,VI_LINHAS2] := STGR_BASE_A.Cells[VI_CONTADOR,0];
                                                       END;
                                                  END; // FOR VI_CONTADOR
                                             // ---------------------------------------
                                             VI_LINHAS2 := VI_LINHAS2 +1;
                                             STGR_GRUPO_A_C1.RowCount := VI_LINHAS2;
                                             STGR_GRUPO_A_C2.RowCount := VI_LINHAS2;
                                             STGR_GRUPO_A_C3.RowCount := VI_LINHAS2;
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


end;

procedure T_F_SIM_01_FILTRO_911.RB_RES_GABARITOSClick(Sender: TObject);
begin
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 196 ;
           Width  := 1088;
           Height := 190 ;
           Visible := TRUE;
       END; // WITH
     WITH STGR_COMB15 DO
     BEGIN
          Left := 27    ;
          Top  := 392   ;
          Width  := 1037;
          Height := 203 ;
          FixedCols := 3;
          FixedRows := 1;
          Visible := TRUE;
     END; // with
     STGR_GRUPO_A_C1.Height := 144;
     STGR_GRUPO_A_C2.Height := 144;
     STGR_GRUPO_A_C3.Height := 144;
     STGR_GRUPO_B_C3.Height := 144;
     STGR_GRUPO_B_C2.Height := 144;
     STGR_GRUPO_B_C1.Height := 144;
     STGR_GRUPO_C_C1.Height := 144;
     STGR_GRUPO_C_C2.Height := 144;
     STGR_GRUPO_C_C3.Height := 144;
     STGR_GRUPO_D_C1.Height := 144;
     STGR_GRUPO_D_C2.Height := 144;
     STGR_GRUPO_D_C3.Height := 144;
     STGR_GRUPO_D_C1.Height := 144;
     STGR_GRUPO_D_C2.Height := 144;
     STGR_GRUPO_D_C3.Height := 144;     
end;

procedure T_F_SIM_01_FILTRO_911.RB_GABARITOClick(Sender: TObject);
begin
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 196 ;
           Width  := 1088;
           Height := 380 ;
           Visible := TRUE;
       END; // WITH
     STGR_GRUPO_A_C1.Height := 333;
     STGR_GRUPO_A_C2.Height := 333;
     STGR_GRUPO_A_C3.Height := 333;
     STGR_GRUPO_B_C3.Height := 333;
     STGR_GRUPO_B_C2.Height := 333;
     STGR_GRUPO_B_C1.Height := 333;
     STGR_GRUPO_C_C1.Height := 333;
     STGR_GRUPO_C_C2.Height := 333;
     STGR_GRUPO_C_C3.Height := 333;
     STGR_GRUPO_D_C1.Height := 333;
     STGR_GRUPO_D_C2.Height := 333;
     STGR_GRUPO_D_C3.Height := 333;
     STGR_GRUPO_E_C1.Height := 333;
     STGR_GRUPO_E_C2.Height := 333;
     STGR_GRUPO_E_C3.Height := 333;
     STGR_COMB15.Visible := false;
end;

procedure T_F_SIM_01_FILTRO_911.RB_RESULTADOSClick(Sender: TObject);
begin
     WITH SCBX_GABARITO DO
     BEGIN
           Left := 1   ;
           Top  := 196 ;
           Width  := 1088;
           Height := 190 ;
           Visible := false;
       END; // WITH
     WITH STGR_COMB15 DO
     BEGIN
          Left := 27    ;
          Top  := 196   ;
          Width  := 1037;
          Height := 385 ;
          FixedCols := 3;
          FixedRows := 1;
          Visible := TRUE;
     END; // with
     STGR_GRUPO_A_C1.Height := 144;
     STGR_GRUPO_A_C2.Height := 144;
     STGR_GRUPO_A_C3.Height := 144;
     STGR_GRUPO_B_C3.Height := 144;
     STGR_GRUPO_B_C2.Height := 144;
     STGR_GRUPO_B_C1.Height := 144;
     STGR_GRUPO_C_C1.Height := 144;
     STGR_GRUPO_C_C2.Height := 144;
     STGR_GRUPO_C_C3.Height := 144;
     STGR_GRUPO_D_C1.Height := 144;
     STGR_GRUPO_D_C2.Height := 144;
     STGR_GRUPO_D_C3.Height := 144;
     STGR_GRUPO_D_C1.Height := 144;
     STGR_GRUPO_D_C2.Height := 144;
     STGR_GRUPO_D_C3.Height := 144;
end;

end.
