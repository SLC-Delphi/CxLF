unit Simulacao01_Filtro_10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ComCtrls, STRUTILS,
  Grids, DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

type
  T_F_SIM_01_FILTRO_10 = class(TForm)
    Memo4: TMemo;
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
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
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
    STGR_GRUPO_C_C4: TStringGrid;
    STGR_GRUPO_D_C1: TStringGrid;
    STGR_GRUPO_D_C2: TStringGrid;
    STGR_GRUPO_D_C3: TStringGrid;
    STGR_GRUPO_D_C4: TStringGrid;
    STGR_GRUPO_A_C5: TStringGrid;
    Label9: TLabel;
    STGR_GRUPO_A_C6: TStringGrid;
    Label26: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    STGR_GRUPO_B_C5: TStringGrid;
    STGR_GRUPO_B_C6: TStringGrid;
    Label32: TLabel;
    STGR_GRUPO_C_C5: TStringGrid;
    STGR_GRUPO_D_C5: TStringGrid;
    Label31: TLabel;
    STGR_GRUPO_A_TODOS5: TStringGrid;
    Label37: TLabel;
    STRGR_TODOS_NUMEROS: TStringGrid;
    LA_GRUPO_A_100REP: TLabel;
    Label35: TLabel;
    LA_GRUPO_B_100REP: TLabel;
    STGR_GRUPO_B_TODOS4: TStringGrid;
    Label34: TLabel;
    LA_GRUPO_D_100REP: TLabel;
    STGR_GRUPO_D_TODOS3: TStringGrid;
    STGR_GRUPO_C_TODOS3: TStringGrid;
    LA_GRUPO_C_100REP: TLabel;
    Label38: TLabel;
    SCBX_GABARITO: TScrollBox;
    PA_FIMFILTRO: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    LA_fTOTAL_COMB: TLabel;
    LA_fQTD_COMB: TLabel;
    Label59: TLabel;
    LA_fTOTAL_100REPET: TLabel;
    BBT_FIMFILTRO: TBitBtn;
    Label62: TLabel;
    LA_fQTD_FILTRADOS: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    PA_REMOVEUREPET: TPanel;
    Bevel5: TBevel;
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
    LA_gFIM_GERAR: TLabel;
    Label40: TLabel;
    LA_gFIM_100REPET: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    PA_TOPO: TPanel;
    Label41: TLabel;
    BBT_CLOSE: TImage;
    PA_PREENCHIMENTO: TPanel;
    Label55: TLabel;
    Label54: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    STGR_BASE_D: TStringGrid;
    STGR_BASE_C: TStringGrid;
    STGR_BASE_B: TStringGrid;
    STGR_BASE_A: TStringGrid;
    PA_COLUNA2: TPanel;
    Label61: TLabel;
    ED_SOMAS_C2_INI: TEdit;
    TRB_C2_INI: TTrackBar;
    ED_SOMAS_C2_FINAL: TEdit;
    TRB_C2_FINAL: TTrackBar;
    PA_COLUNA1: TPanel;
    Label56: TLabel;
    ED_SOMAS_C1_INI: TEdit;
    TRB_C1_INI: TTrackBar;
    ED_SOMAS_C1_FINAL: TEdit;
    TRB_C1_FINAL: TTrackBar;
    PA_COLUNA3: TPanel;
    Label72: TLabel;
    ED_SOMAS_C3_INI: TEdit;
    TRB_C3_INI: TTrackBar;
    ED_SOMAS_C3_FINAL: TEdit;
    TRB_C3_FINAL: TTrackBar;
    ED_FIXO10S_C2: TEdit;
    ED_FIXO10S_A1: TEdit;
    CB_FIXO_B: TComboBox;
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
    ED_FIXO10S_B1: TEdit;
    CB_FIXO_C: TComboBox;
    PA_COLUNA4: TPanel;
    Label25: TLabel;
    ED_SOMAS_C4_INI: TEdit;
    TRB_C4_INI: TTrackBar;
    ED_SOMAS_C4_FINAL: TEdit;
    TRB_C4_FINAL: TTrackBar;
    ED_FIXO10S_A2: TEdit;
    ED_FIXO10S_B2: TEdit;
    PA_COLUNA5: TPanel;
    Label27: TLabel;
    ED_SOMAS_C5_INI: TEdit;
    TRB_C5_INI: TTrackBar;
    ED_SOMAS_C5_FINAL: TEdit;
    TRB_C5_FINAL: TTrackBar;
    CB_FIXO_D: TComboBox;
    ED_FIXO10S_D1: TEdit;
    PA_EXCLUIDOS: TPanel;
    Label28: TLabel;
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
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    BBT_RECOMECAR: TBitBtn;
    PA_RESULTADO: TPanel;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_TOTAL_COMB: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    LA_GERAR_COMB: TLabel;
    LA_QTD_COMB: TLabel;
    LA_TOTAL_100REPET: TLabel;
    LA_QTD_FILTRADOS: TLabel;
    PGBR_REMREPET: TProgressBar;
    PGBR_GERARCOMB: TProgressBar;
    PGBR_FILTRARCOMB: TProgressBar;
    PGBR_GERARCOMB0: TProgressBar;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_ENCERRAR: TBitBtn;
    BBT_ORDENAR: TBitBtn;
    BBT_GERAR_MENU: TBitBtn;
    BBT_PREPARAR: TBitBtn;
    STGR_COMB15: TStringGrid;
    StringGrid34: TStringGrid;
    PA_GERAR: TPanel;
    Label64: TLabel;
    Label65: TLabel;
    RB_GERAR: TRadioButton;
    RB_GERAR_FILTRAR: TRadioButton;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_GERAR: TBitBtn;
    BBT_GERAR_SAIR: TBitBtn;
    PA_INICIAL: TPanel;
    Label42: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_CARREGAR_SIMULACAO: TButton;
    BT_RECUPERAR_SIMULACAO: TButton;
    CB_FIXO_A: TComboBox;
    Button3: TButton;
    MEM_COMBINACOES_TODAS: TMemo;
    CB_MODO_PROCESSAMENTO: TComboBox;
    BBT_M01_BLOCO_NOTAS: TBitBtn;
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
    procedure BBT_RECOMECARClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure BBT_ORDENARClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_ENCERRARClick(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure BBT_FIMFILTROClick(Sender: TObject);
    procedure TRB_C5_INIChange(Sender: TObject);
    procedure TRB_C5_FINALChange(Sender: TObject);
    procedure TRB_C4_INIChange(Sender: TObject);
    procedure TRB_C3_INIChange(Sender: TObject);
    procedure TRB_C2_INIChange(Sender: TObject);
    procedure TRB_C1_INIChange(Sender: TObject);
    procedure TRB_C1_FINALChange(Sender: TObject);
    procedure TRB_C2_FINALChange(Sender: TObject);
    procedure TRB_C3_FINALChange(Sender: TObject);
    procedure TRB_C4_FINALChange(Sender: TObject);
    procedure BT_CARREGAR_SIMULACAOClick(Sender: TObject);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure BBT_GERAR_MENUClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBT_GERAR_SAIRClick(Sender: TObject);
    procedure BBT_M01_BLOCO_NOTASClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_BOTOES_MODELO_ABCD1 (VI_NUMERO: INTEGER; VS_IMPAR: STRING);
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);          
  public
    { Public declarations }
  end;

var
  _F_SIM_01_FILTRO_10: T_F_SIM_01_FILTRO_10;

implementation

uses Unit1;

{$R *.dfm}


procedure T_F_SIM_01_FILTRO_10.FormCreate(Sender: TObject);
begin
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_10_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
end;


procedure T_F_SIM_01_FILTRO_10.FormShow(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
     SELF.ClientWidth  := 1095;
     SELF.ClientHeight := 795;
     SELF.Top  := 99;
     SELF.Left := 19;
     bbt_close.Left := SELF.ClientWidth-35;
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
    STGR_COMB15.Cells[2,0] := 'FILTRADO';
    FOR VI_CONTAR := 1 TO 15 DO
    BEGIN
        STGR_COMB15.Cells [VI_CONTAR+2,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
    END;
    PA_REMOVEUREPET.Left := 5000;
    PA_FIMFILTRO.Left := 5000;

    PA_REMOVEUREPET.Left := 5000;
    PA_FIMFILTRO.Left := 5000;
     PA_PREENCHIMENTO.Visible := false;
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible := false;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 450;
    PA_EXECUTAR_FILTRO.Enabled := false;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
end;



procedure T_F_SIM_01_FILTRO_10.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(1,'V');
    BBT_701.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(2,'F');
    BBT_702.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(3,'V');
    BBT_703.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(4,'F');
    BBT_704.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(5,'V');
    BBT_705.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(6,'F');
    BBT_706.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(7,'V');
    BBT_707.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(8,'F');
    BBT_708.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(10,'F');
    BBT_710.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(9,'V');
    BBT_709.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(11,'V');
    BBT_711.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(12,'F');
    BBT_712.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(13,'V');
    BBT_713.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(14,'F');
    BBT_714.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(15,'V');
    BBT_715.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(16,'F');
    BBT_716.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(17,'V');
    BBT_717.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(18,'F');
    BBT_718.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(19,'V');
    BBT_719.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(20,'F');
    BBT_720.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(21,'V');
    BBT_721.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(22,'F');
    BBT_722.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(23,'V');
    BBT_723.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(24,'F');
    BBT_724.Visible := FALSE;
end;

procedure T_F_SIM_01_FILTRO_10.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(25,'V');
    BBT_725.Visible := FALSE;
end;



PROCEDURE T_F_SIM_01_FILTRO_10.PR_BOTOES_MODELO_ABCD1 (VI_NUMERO: INTEGER; VS_IMPAR: STRING);
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



procedure T_F_SIM_01_FILTRO_10.BBT_RECOMECARClick(Sender: TObject);
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
        STGR_COMB15.Cells [VI_CONTAR,1] := '0';
    END;
    STGR_COMB15.RowCount := 3;
    STGR_COMB15.Repaint;
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


procedure T_F_SIM_01_FILTRO_10.Button3Click(Sender: TObject);
begin
     BBT_701.Click;
     BBT_705.Click;
     BBT_709.Click;
     BBT_711.Click;
     BBT_713.Click;
     BBT_719.Click;
     BBT_721.Click;
     BBT_725.Click;

     BBT_702.Click;
     BBT_708.Click;
     BBT_710.Click;
     BBT_714.Click;
     BBT_716.Click;
     BBT_718.Click;
     BBT_722.Click;

     BBT_703.Click;
     BBT_707.Click;

     BBT_704.Click;
     BBT_706.Click;

     ED_EXC_01.Text := '11';
     ED_EXC_02.Text := '13';
     ED_EXC_03.Text := '16';
     ED_FIXO10S_D1.Text := '00';
     CB_FIXO_D.ItemIndex := 0;
     ED_FIXO10S_A1.Text := '01';
     ED_FIXO10S_A2.Text := '05';
     ED_FIXO10S_B1.Text := '18';
     ED_FIXO10S_B2.Text := '22';
     TRB_C1_INI.Position   := 0;
     TRB_C1_FINAL.Position := 3;
     TRB_C4_INI.Position   := 0;
     TRB_C4_FINAL.Position := 3;
     TRB_C5_INI.Position   := 0;
     TRB_C5_FINAL.Position := 5;
end;



procedure T_F_SIM_01_FILTRO_10.BBT_PREPARARClick(Sender: TObject);
var
     VI_CONTADOR, VI_CONTAR, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2: integer;
     VI_COMBINACOES3, VI_COMBINACOES4, VI_COMBINACOES5 : SMALLINT;
     VI_CNTCELULAS: SMALLINT;
     VS_NUMEROSPRINCIPAIS: STRING;
begin
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
        STGR_COMB15.Cells [VI_CONTAR+2,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_COMB15.Cells [VI_CONTAR+2,1] := '00';
     END;
     STGR_COMB15.RowCount := 2;
     STGR_COMB15.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB.Repaint;
     PGBR_GERARCOMB0.Repaint;
     PGBR_REMREPET.Position := 00;
     PGBR_REMREPET.Repaint;
     PGBR_FILTRARCOMB.Position := 0;
     PGBR_FILTRARCOMB.Repaint;
     STGR_GRUPO_A_TODOS5.RowCount := 2;
     STGR_GRUPO_B_TODOS4.RowCount := 2;
     STGR_GRUPO_C_TODOS3.RowCount := 2;
     STGR_GRUPO_D_TODOS3.RowCount := 2;
     STGR_GRUPO_A_TODOS5.Repaint;
     STGR_GRUPO_B_TODOS4.Repaint;
     STGR_GRUPO_C_TODOS3.Repaint;
     STGR_GRUPO_D_TODOS3.Repaint;
     LA_GRUPO_A_100REP.Caption := '00';
     LA_GRUPO_B_100REP.Caption := '00';
     LA_GRUPO_C_100REP.Caption := '00';
     LA_GRUPO_D_100REP.Caption := '00';
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
        IF (STRtoINT(ED_FIXO10S_A1.Text)=0) OR (STRtoINT(ED_FIXO10S_A2.Text)=0) THEN
        BEGIN
            SHOWMESSAGE ('DIGITE UM NÚMERO DIFERENTE DE 0 E QUE FAÇA PARTE DA CADEIA NUMÉRICA.');
            ED_fixo10S_A1.SetFocus;
            EXIT;
        END; // IF
        IF not(
         ( STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(STGR_BASE_A.Cells [1,0] ) ) OR
            (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(STGR_BASE_A.Cells [2,0] ) ) or
            (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(STGR_BASE_A.Cells [3,0] ) ) or
            (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(STGR_BASE_A.Cells [4,0] ) ) or
            (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(STGR_BASE_A.Cells [5,0] ) ) or
            (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(STGR_BASE_A.Cells [6,0] ) ) or
            (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(STGR_BASE_A.Cells [7,0] ) ) or
            (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(STGR_BASE_A.Cells [8,0] ) )
            )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_fixo10S_A1.SetFocus;
            EXIT;
        END; // IF
        IF ( STRtoINT(ED_fixo10S_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [1,0]) ) and
            (STRtoINT(ED_fixo10S_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [2,0]) ) and
            (STRtoINT(ED_fixo10S_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [3,0]) ) and
            (STRtoINT(ED_fixo10S_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [4,0]) ) and
            (STRtoINT(ED_fixo10S_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [5,0]) ) and
            (STRtoINT(ED_fixo10S_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [6,0]) ) and
            (STRtoINT(ED_fixo10S_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [7,0]) ) and
            (STRtoINT(ED_fixo10S_A2.Text) <> STRtoINT(STGR_BASE_A.Cells [8,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_fixo10S_A2.SetFocus;
            EXIT;
        END; // IF
    END;  //  IF (CB_fixo_A
        // **************
        // **  LINHA B **
        // **************
    IF (CB_fixo_B.ItemIndex = 1) THEN
    BEGIN
        IF ( STRtoINT(ED_fixo10S_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [1,0]) ) and
            (STRtoINT(ED_fixo10S_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [2,0]) ) and
            (STRtoINT(ED_fixo10S_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [3,0]) ) and
            (STRtoINT(ED_fixo10S_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [4,0]) ) and
            (STRtoINT(ED_fixo10S_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [5,0]) ) and
            (STRtoINT(ED_fixo10S_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [6,0]) ) and
            (STRtoINT(ED_fixo10S_B1.Text) <> STRtoINT(STGR_BASE_B.Cells [7,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_fixo10S_B1.SetFocus;
            EXIT;
        END; // IF
        IF (STRtoINT(ED_fixo10S_B2.Text) <> STRtoINT( STGR_BASE_B.Cells [1,0]) ) and
            (STRtoINT(ED_fixo10S_B2.Text) <> STRtoINT(STGR_BASE_B.Cells [2,0]) ) and
            (STRtoINT(ED_fixo10S_B2.Text) <> STRtoINT(STGR_BASE_B.Cells [3,0]) ) and
            (STRtoINT(ED_fixo10S_B2.Text) <> STRtoINT(STGR_BASE_B.Cells [4,0]) ) and
            (STRtoINT(ED_fixo10S_B2.Text) <> STRtoINT(STGR_BASE_B.Cells [5,0]) ) and
            (STRtoINT(ED_fixo10S_B2.Text) <> STRtoINT(STGR_BASE_B.Cells [6,0]) ) and
            (STRtoINT(ED_fixo10S_B2.Text) <> STRtoINT(STGR_BASE_B.Cells [7,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_fixo10S_B2.SetFocus;
            EXIT;
        END; // IF
    END;  //  IF (CB_fixo_B
        // **************
        // **  LINHA C **
        // **************
    IF (CB_fixo_C.ItemIndex = 1) THEN
    BEGIN
        IF ( STRtoINT(ED_fixo10S_C2.Text) <> STRtoINT(STGR_BASE_C.Cells [1,0]) ) and
            (STRtoINT(ED_fixo10S_C2.Text) <> STRtoINT(STGR_BASE_C.Cells [2,0]) ) and
            (STRtoINT(ED_fixo10S_C2.Text) <> STRtoINT(STGR_BASE_C.Cells [3,0]) ) and
            (STRtoINT(ED_fixo10S_C2.Text) <> STRtoINT(STGR_BASE_C.Cells [4,0]) ) and
            (STRtoINT(ED_fixo10S_C2.Text) <> STRtoINT(STGR_BASE_C.Cells [5,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_fixo10S_C2.SetFocus;
            EXIT;
        END; // IF
    END;  //  IF (CB_fixo_C
        // **************
        // **  LINHA D **
        // **************
    IF (CB_fixo_D.ItemIndex = 1) THEN
    BEGIN
        IF ( STRtoINT(ED_fixo10S_D1.Text) <> STRtoINT(STGR_BASE_D.Cells [1,0]) ) and
            (STRtoINT(ED_fixo10S_D1.Text) <> STRtoINT(STGR_BASE_D.Cells [2,0]) ) and
            (STRtoINT(ED_fixo10S_D1.Text) <> STRtoINT(STGR_BASE_D.Cells [3,0]) ) and
            (STRtoINT(ED_fixo10S_D1.Text) <> STRtoINT(STGR_BASE_D.Cells [4,0]) ) and
            (STRtoINT(ED_fixo10S_D1.Text) <> STRtoINT(STGR_BASE_D.Cells [5,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_fixo10S_D1.SetFocus;
            EXIT;
        END; // IF
    END;  //  IF (CB_fixo_C
    IF (STRtoINT(ED_SOMAS_C5_INI.Text) > STRtoINT(ED_SOMAS_C5_FINAL.Text)) THEN
    BEGIN
            SHOWMESSAGE ('O NÚMERO INICIAL NÃO PODE SER MAIOR QUE O NÚMERO FINAL.');
            ED_SOMAS_C5_INI.SetFocus;
            EXIT;
    END; // IF
        // ***************************
        // **  CONFERINDO OS EXCLUIDOS **
        // ***************************
    IF (STRtoINT(ED_EXC_01.Text) = 0  ) OR
       (STRtoINT(ED_EXC_02.Text) = 0  ) OR
       (STRtoINT(ED_EXC_03.Text) = 0  )
    THEN
    BEGIN
            SHOWMESSAGE ('NÚMERO EXCLUÍDO NÃO PODE SER 0.');
            ED_EXC_01.SetFocus;
            EXIT;
    END; // IF
    IF (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(ED_EXC_03.Text ) )
    THEN
    BEGIN
            SHOWMESSAGE ('O NÚMERO EXCLUÍDO TEM DE SER DIFERENTE DOS SELECIONADOS (COLUNA).');
            ED_EXC_01.SetFocus;
            EXIT;
    END; // IF
    IF (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXO10S_A1.Text) = STRtoINT(ED_EXC_03.Text ) ) OR
     (STRtoINT(ED_FIXO10S_A2.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXO10S_A2.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXO10S_A2.Text) = STRtoINT(ED_EXC_03.Text ) ) OR
     (STRtoINT(ED_FIXO10S_B1.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXO10S_B1.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXO10S_B1.Text) = STRtoINT(ED_EXC_03.Text ) ) OR
     (STRtoINT(ED_FIXO10S_B2.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXO10S_B2.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXO10S_B2.Text) = STRtoINT(ED_EXC_03.Text ) ) OR
     (STRtoINT(ED_FIXO10S_C2.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXO10S_C2.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXO10S_C2.Text) = STRtoINT(ED_EXC_03.Text ) ) OR            
     (STRtoINT(ED_FIXO10S_D1.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
     (STRtoINT(ED_FIXO10S_D1.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
     (STRtoINT(ED_FIXO10S_D1.Text) = STRtoINT(ED_EXC_03.Text ) ) OR
       (STRtoINT(ED_FIXO10S_D1.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXO10S_D1.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXO10S_D1.Text) = STRtoINT(ED_EXC_03.Text ) )
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
        // ***************************
        // **  Verificando números inicias e finais **
        // ***************************
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
        // **  Verificando números fixos **
        // ***************************
     if (STRtoINT(ED_FIXOS_02.Text)>0) then
     begin
          IF (STRtoINT(ED_FIXOS_01.Text)) > (STRtoINT(ED_FIXOS_02.Text)) THEN
          BEGIN
               SHOWMESSAGE ('ORDEM NUMÉRICA - POR FAVOR.');
               ED_FIXOS_01.SetFocus;
               EXIT;
          END;
     end else
     if (STRtoINT(ED_FIXOS_03.Text)>0) then
     begin
          IF (STRtoINT(ED_FIXOS_02.Text)) > (STRtoINT(ED_FIXOS_03.Text)) THEN
          BEGIN
               SHOWMESSAGE ('Ordem numérica - por favor.');
               ED_FIXOS_01.SetFocus;
               EXIT;
          END;
     end else
     if (STRtoINT(ED_FIXOS_03.Text)>0) then
     begin
          IF (STRtoINT(ED_FIXOS_03.Text)) > (STRtoINT(ED_FIXOS_04.Text)) THEN
          BEGIN
               SHOWMESSAGE ('Ordem numérica - por favor.');
               ED_FIXOS_01.SetFocus;
               EXIT;
          END;
     end;  // IF

     if (STRtoINT(ED_FIXOS_02.Text)>0) and (STRtoINT(ED_FIXOS_01.Text)=00) then
     begin
          SHOWMESSAGE ('O primeiro numero fixo é zero, portando os demais números não terão efeito, e por isto, serão zerados.');
          ED_FIXOS_02.Text := '00';
          ED_FIXOS_03.Text := '00';
          ED_FIXOS_04.Text := '00';
          ED_FIXOS_01.SetFocus;
          EXIT;
     end else
     if ( (STRtoINT(ED_FIXOS_03.Text)>0) or (STRtoINT(ED_FIXOS_04.Text)>0) ) and (STRtoINT(ED_FIXOS_02.Text)=00) then
     begin
          SHOWMESSAGE ('O segundo numero fixo é zero, portando os demais números que se seguem, não terão efeito, e por isto, serão zerados.');
          ED_FIXOS_03.Text := '00';
          ED_FIXOS_04.Text := '00';
          ED_FIXOS_01.SetFocus;
          EXIT;
     end; // if
     
    // ======================================================
    // ||||==============================================||||
    // |||| 	Análises Combinatórias e suas sobras     ||||
    // ||||==============================================||||
    // ======================================================
        // ******************
        // **  LINHA l (A) **
        // ******************
     {
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 7 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 8 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 8 DO
               BEGIN
                    FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 8 DO
                    BEGIN
                         FOR VI_COMBINACOES5:= VI_COMBINACOES4+1 TO 8 DO
                         BEGIN
                              STGR_GRUPO_A_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_GRUPO_A_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_GRUPO_A_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_GRUPO_A_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_GRUPO_A_C5.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_GRUPO_A_C6.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);

                              STGR_GRUPO_A_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES1,0];
                              STGR_GRUPO_A_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES2,0];
                              STGR_GRUPO_A_C2.Cells [1,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES3,0];
                              STGR_GRUPO_A_C3.Cells [1,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES4,0];
                              STGR_GRUPO_A_C4.Cells [1,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES5,0];
                              // ---------------------------------------
                              // -- CAPTURAR OS 3 NÚMEROS QUE FALTAM  --
                              // ---------------------------------------
                              VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] +
                                   STGR_BASE_A.Cells[VI_COMBINACOES2,0] +
                                   STGR_BASE_A.Cells[VI_COMBINACOES3,0] +
                                   STGR_BASE_A.Cells[VI_COMBINACOES4,0] +
                                   STGR_BASE_A.Cells[VI_COMBINACOES5,0];
                              VI_CONTAR :=1;
                              FOR VI_CONTADOR := 1 TO 8 DO
                              BEGIN
                                   IF (POS(STGR_BASE_A.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                        IF (VI_CONTAR = 2) THEN
                                             STGR_GRUPO_A_C5.Cells[1,VI_LINHAS2] := STGR_BASE_A.Cells[VI_CONTADOR,0];
                                        IF (VI_CONTAR = 3) THEN
                                             STGR_GRUPO_A_C6.Cells[1,VI_LINHAS2] := STGR_BASE_A.Cells[VI_CONTADOR,0];
                                        IF (VI_CONTAR = 4) THEN
                                             STGR_GRUPO_A_C6.Cells[2,VI_LINHAS2] := STGR_BASE_A.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_GRUPO_A_C1.RowCount := VI_LINHAS2;
                              STGR_GRUPO_A_C2.RowCount := VI_LINHAS2;
                              STGR_GRUPO_A_C3.RowCount := VI_LINHAS2;
                              STGR_GRUPO_A_C4.RowCount := VI_LINHAS2;
                              STGR_GRUPO_A_C5.RowCount := VI_LINHAS2;
                              STGR_GRUPO_A_C6.RowCount := VI_LINHAS2;
                         END; // FOR VI_COMBINACOES5                              
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
      }
        {
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES9:= 1 TO 7 DO
     BEGIN
          FOR VI_COMBINACOES8:= VI_COMBINACOES9+1 TO 8 DO
          BEGIN
               // ---------------------------------
               // -- CAPTURANDO OS 4 DEMAIS NÚMEROS
               // ---------------------------------
               FOR VI_COMBINACOES1:= 1 TO 8 DO
               BEGIN
                    FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 8 DO
                    BEGIN
                         FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 8 DO
                         BEGIN
                              FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 8 DO
                              BEGIN
                                   STGR_GRUPO_A_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_GRUPO_A_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_GRUPO_A_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES9,0];
                                   STGR_GRUPO_A_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES8,0];
                                   STGR_GRUPO_A_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_GRUPO_A_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_GRUPO_A_C5.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_GRUPO_A_C6.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   // --------------------------------
                                   // -- FLAG NA COLUNA 2, 3, 4 E 5 --
                                   // --------------------------------
                                    STGR_GRUPO_A_C2.Cells [1,VI_LINHAS2]:= 'F';
                                    STGR_GRUPO_A_C3.Cells [1,VI_LINHAS2]:= 'F';
                                    STGR_GRUPO_A_C4.Cells [1,VI_LINHAS2]:= 'F';
                                    STGR_GRUPO_A_C5.Cells [1,VI_LINHAS2]:= 'F';
                                   // -------------------------------------------------------------
                                   // -- COLUNA 2, 3, 4 E 5  NÃO PODEM SER IGUAL(IS) a coluna 1,2  --
                                   // -------------------------------------------------------------
                                   IF ((STGR_BASE_A.Cells[VI_COMBINACOES1,0] <> STGR_BASE_A.Cells[VI_COMBINACOES9,0])
                                       AND (STGR_BASE_A.Cells[VI_COMBINACOES1,0] <> STGR_BASE_A.Cells[VI_COMBINACOES8,0]))
                                   THEN
                                         STGR_GRUPO_A_C2.Cells [1,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES1,0];
                                   IF ((STGR_BASE_A.Cells[VI_COMBINACOES2,0] <> STGR_BASE_A.Cells[VI_COMBINACOES9,0])
                                       AND (STGR_BASE_A.Cells[VI_COMBINACOES2,0] <> STGR_BASE_A.Cells[VI_COMBINACOES8,0]))
                                   THEN
                                        STGR_GRUPO_A_C3.Cells [1,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES2,0];
                                   IF ((STGR_BASE_A.Cells[VI_COMBINACOES3,0] <> STGR_BASE_A.Cells[VI_COMBINACOES9,0])
                                       AND (STGR_BASE_A.Cells[VI_COMBINACOES3,0] <> STGR_BASE_A.Cells[VI_COMBINACOES8,0]))
                                   THEN
                                        STGR_GRUPO_A_C4.Cells [1,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES3,0];
                                   IF ((STGR_BASE_A.Cells[VI_COMBINACOES4,0] <> STGR_BASE_A.Cells[VI_COMBINACOES9,0])
                                       AND (STGR_BASE_A.Cells[VI_COMBINACOES4,0] <> STGR_BASE_A.Cells[VI_COMBINACOES8,0]))
                                   THEN
                                        STGR_GRUPO_A_C5.Cells [1,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES4,0];
                                   // -----------------------------------------------------------------------------------
                                   // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                                   // -----------------------------------------------------------------------------------
                                   IF NOT ((STGR_GRUPO_A_C2.Cells [1,VI_LINHAS2]='F')
                                        OR (STGR_GRUPO_A_C3.Cells [1,VI_LINHAS2]='F')
                                        OR (STGR_GRUPO_A_C4.Cells [1,VI_LINHAS2]='F')
                                        OR (STGR_GRUPO_A_C5.Cells [1,VI_LINHAS2]='F'))
                                   THEN
                                   BEGIN
                                        // ---------------------------------------
                                        // -- CAPTURAR OS 2 NÚMEROS QUE FALTAM  --
                                        // ---------------------------------------
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES9,0] +
                                             STGR_BASE_A.Cells[VI_COMBINACOES8,0] +
                                             STGR_BASE_A.Cells[VI_COMBINACOES1,0] +
                                             STGR_BASE_A.Cells[VI_COMBINACOES2,0] +
                                             STGR_BASE_A.Cells[VI_COMBINACOES3,0] +
                                             STGR_BASE_A.Cells[VI_COMBINACOES4,0];
                                        VI_CONTAR :=1;
                                        FOR VI_CONTADOR := 1 TO 8 DO
                                        BEGIN
                                             IF (POS(STGR_BASE_A.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                             BEGIN
                                                  VI_CONTAR := VI_CONTAR +1;
                                                  STGR_GRUPO_A_C6.Cells[VI_CONTAR,VI_LINHAS2] := STGR_BASE_A.Cells[VI_CONTADOR,0];
                                             END;
                                        END; // FOR VI_CONTADOR
                                        // ---------------------------------------
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_GRUPO_A_C1.RowCount := VI_LINHAS2;
                                        STGR_GRUPO_A_C2.RowCount := VI_LINHAS2;
                                        STGR_GRUPO_A_C3.RowCount := VI_LINHAS2;
                                        STGR_GRUPO_A_C4.RowCount := VI_LINHAS2;
                                        STGR_GRUPO_A_C5.RowCount := VI_LINHAS2;
                                        STGR_GRUPO_A_C6.RowCount := VI_LINHAS2;
                                   END; // IF
                              END; // FOR VI_COMBINACOES4
                         END; // FOR VI_COMBINACOES3
                    END; // FOR VI_COMBINACOES2
               END; // FOR VI_COMBINACOES1
          END; // FOR VI_COMBINACOES8
     END; // FOR VI_COMBINACOES9
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     Self.Repaint;
     }

     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 7 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 8 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 8 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 8 DO
                    BEGIN
                         FOR VI_COMBINACOES5:= 1 TO 8 DO
                         BEGIN
                                   STGR_GRUPO_A_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_GRUPO_A_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_GRUPO_A_C1.Cells [1,VI_LINHAS2]:= 'V';
                                   STGR_GRUPO_A_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES1,0];
                                   STGR_GRUPO_A_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_A.Cells[VI_COMBINACOES2,0];
                                   STGR_GRUPO_A_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_GRUPO_A_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_GRUPO_A_C5.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   STGR_GRUPO_A_C6.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                                   // ----------------------------
                                   // -- FLAG NA COLUNA 2, 3, 4 --
                                   // ----------------------------
                                   STGR_GRUPO_A_C2.Cells [1,VI_LINHAS2]:= 'F';
                                   STGR_GRUPO_A_C3.Cells [1,VI_LINHAS2]:= 'F';
                                   STGR_GRUPO_A_C4.Cells [1,VI_LINHAS2]:= 'F';
                                   // ---------------------------------------------
                                   // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 2 --
                                   // ---------------------------------------------
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_A.Cells[VI_COMBINACOES2,0];
                                   IF (POS(STGR_BASE_A.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        STGR_GRUPO_A_C2.Cells[1,VI_LINHAS2] := STGR_BASE_A.Cells[VI_COMBINACOES3,0];
                                   END;
                                   // ---------------------------------------------
                                   // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                                   // ---------------------------------------------
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_A.Cells[VI_COMBINACOES2,0] + '-' +
                                        STGR_BASE_A.Cells[VI_COMBINACOES3,0];
                                   IF (POS(STGR_BASE_A.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        STGR_GRUPO_A_C3.Cells[1,VI_LINHAS2] := STGR_BASE_A.Cells[VI_COMBINACOES4,0];
                                   END;
                                   // ---------------------------------------------
                                   // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 4 --
                                   // ---------------------------------------------
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                                        STGR_BASE_A.Cells[VI_COMBINACOES2,0] + '-' +
                                        STGR_BASE_A.Cells[VI_COMBINACOES3,0] + '-' +
                                        STGR_BASE_A.Cells[VI_COMBINACOES4,0];
                                   IF (POS(STGR_BASE_A.Cells[VI_COMBINACOES5,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        STGR_GRUPO_A_C4.Cells[1,VI_LINHAS2] := STGR_BASE_A.Cells[VI_COMBINACOES5,0];
                                   END;

                                   // -----------------------------------------------------------------------------------
                                   // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                                   // -----------------------------------------------------------------------------------                                   
                                   IF NOT ((STGR_GRUPO_A_C2.Cells [1,VI_LINHAS2]='F')
                                        OR (STGR_GRUPO_A_C3.Cells [1,VI_LINHAS2]='F')
                                        OR (STGR_GRUPO_A_C4.Cells [1,VI_LINHAS2]='F'))
                                   THEN
                                   BEGIN
                                        // -----------------------------------
                                        // -- CAPTURAR OS NÚMERO QUE FALTAM --
                                        // -----------------------------------
                                        VS_NUMEROSPRINCIPAIS:= STGR_BASE_A.Cells[VI_COMBINACOES1,0] + '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES2,0] +  '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES3,0] +  '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES4,0] +  '-' +
                                             STGR_BASE_A.Cells[VI_COMBINACOES5,0];
                                             VI_CONTAR :=0;
                                             FOR VI_CONTADOR := 1 TO 8 DO
                                             BEGIN
                                                  IF (POS(STGR_BASE_A.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                                  BEGIN
                                                       VI_CONTAR := VI_CONTAR +1;
                                                       IF (VI_CONTAR=1) THEN
                                                            STGR_GRUPO_A_C5.Cells[1,VI_LINHAS2] := STGR_BASE_A.Cells[VI_CONTADOR,0];
                                                       IF (VI_CONTAR=2) THEN
                                                            STGR_GRUPO_A_C6.Cells[1,VI_LINHAS2] := STGR_BASE_A.Cells[VI_CONTADOR,0];
                                                       IF (VI_CONTAR=3) THEN
                                                            STGR_GRUPO_A_C6.Cells[2,VI_LINHAS2] := STGR_BASE_A.Cells[VI_CONTADOR,0];
                                                  END;
                                             END; // FOR VI_CONTADOR
                                        // ---------------------------------------
                                        VI_LINHAS2 := VI_LINHAS2 +1;
                                        STGR_GRUPO_A_C1.RowCount := VI_LINHAS2;
                                        STGR_GRUPO_A_C2.RowCount := VI_LINHAS2;
                                        STGR_GRUPO_A_C3.RowCount := VI_LINHAS2;
                                        STGR_GRUPO_A_C4.RowCount := VI_LINHAS2;
                                        STGR_GRUPO_A_C5.RowCount := VI_LINHAS2;
                                        STGR_GRUPO_A_C6.RowCount := VI_LINHAS2;
                                   END; // IF
                         END; // FOR VI_COMBINACOES5
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
          // ------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 1 --
          // ------------------------------------
     IF (CB_FIXO_A.ItemIndex > 0) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_A_C1.RowCount-1) DO
          BEGIN
               IF (STRtoINT(ED_FIXO10S_A1.Text) <> STRtoINT(ED_FIXO10S_A2.Text))  THEN
               BEGIN
                    IF (STRtoINT(STGR_GRUPO_A_C1.Cells [2,VI_COMBINACOES1])=STRtoINT(ED_FIXO10S_A1.Text))
                         AND (STRtoINT(STGR_GRUPO_A_C1.Cells [3,VI_COMBINACOES1])=STRtoINT(ED_FIXO10S_A2.Text))
                    THEN
                    BEGIN
                         STGR_GRUPO_A_C1.Cells [1,VI_COMBINACOES1]:= 'V';
                    END ELSE
                    BEGIN
                         STGR_GRUPO_A_C1.Cells [1,VI_COMBINACOES1]:= 'F';
                    END; // IF
               END ELSE
               BEGIN
                    IF ((STRtoINT(STGR_GRUPO_A_C1.Cells [2,VI_COMBINACOES1])>=STRtoINT(ED_FIXO10S_A1.Text))
                              AND (STRtoINT(STGR_GRUPO_A_C1.Cells [2,VI_COMBINACOES1])<=STRtoINT(ED_FIXO10S_A2.Text)))
                         OR ((STRtoINT(STGR_GRUPO_A_C1.Cells [3,VI_COMBINACOES1])>=STRtoINT(ED_FIXO10S_A1.Text))
                              AND (STRtoINT(STGR_GRUPO_A_C1.Cells [3,VI_COMBINACOES1])<=STRtoINT(ED_FIXO10S_A2.Text)))
                    THEN
                    BEGIN
                         STGR_GRUPO_A_C1.Cells [1,VI_COMBINACOES1]:= 'V';
                    END ELSE
                    BEGIN
                         STGR_GRUPO_A_C1.Cells [1,VI_COMBINACOES1]:= 'F';
                    END; // IF
               END; // IF
          END; // FOR VI_COMBINACOES1
     end; // IF (CB_FIXO_D.ItemIndex > 0) THEN

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
               STGR_GRUPO_A_TODOS5.Cells [4, VI_LINHAS2] := STGR_GRUPO_A_C2.Cells[1,VI_COMBINACOES1];
               STGR_GRUPO_A_TODOS5.Cells [5, VI_LINHAS2] := STGR_GRUPO_A_C3.Cells[1,VI_COMBINACOES1];
               STGR_GRUPO_A_TODOS5.Cells [6, VI_LINHAS2] := STGR_GRUPO_A_C4.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, AC1,AC1,AC2,AC3,AC4,AC5,AC6,AC6
                    STGR_GRUPO_A_TODOS5.Cells [7, VI_LINHAS2] := STGR_GRUPO_A_C1.Cells[0,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [8, VI_LINHAS2] := STGR_GRUPO_A_C1.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [9, VI_LINHAS2] := STGR_GRUPO_A_C1.Cells[3,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [10, VI_LINHAS2] := STGR_GRUPO_A_C2.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [11, VI_LINHAS2] := STGR_GRUPO_A_C3.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [12, VI_LINHAS2] := STGR_GRUPO_A_C4.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [13, VI_LINHAS2] := STGR_GRUPO_A_C5.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [14, VI_LINHAS2] := STGR_GRUPO_A_C6.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_A_TODOS5.Cells [15, VI_LINHAS2] := STGR_GRUPO_A_C6.Cells[2,VI_COMBINACOES1];
               // ------------------------------------------------
               // --  Ordena os dados DAS 6 primeiras células   --
               // ------------------------------------------------
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                 STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
                 STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
               END; // FOR VI_CONTAR
               // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
               FOR VI_CONTAR :=2 TO 6 DO
               BEGIN
                 STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_GRUPO_A_TODOS5.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
               END; // FOR VI_CONTAR1
               VI_CNTCELULAS := 2;
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                 IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                 BEGIN
                     STGR_GRUPO_A_TODOS5.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                     VI_CNTCELULAS := VI_CNTCELULAS + 1;
                 END; // IF (STRGR_TODOS_NUMEROS
               END; // FOR VI_CONTAR
               VI_LINHAS2 := VI_LINHAS2 +1;
               STGR_GRUPO_A_TODOS5.RowCount := VI_LINHAS2;
          END; // IF (STGR_GRUPO_A_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
{
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_A_C1.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_GRUPO_A_C1.RowCount-1) DO
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
     }
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_A_TODOS5.RowCount-1) DO
     BEGIN
               IF     ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                  OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                  OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                  OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                  OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_GRUPO_A_TODOS5.Cells [1 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_GRUPO_A_TODOS5.Cells [1 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  OR  ((STRtoINT(STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_GRUPO_A_TODOS5.Cells [1 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1

     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_A_TODOS5.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_A_TODOS5.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_GRUPO_A_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_GRUPO_A_100REP.Repaint;
    
        // ======================================================
        // ******************
        // **  LINHA 2 (B) **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 6 DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO 7 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 7 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 7 DO
                    BEGIN
                         STGR_GRUPO_B_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_B_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_B_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_B_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_B_C5.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_B_C6.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_B_C6.Cells [1,VI_LINHAS2]:= 'V';                              

                         STGR_GRUPO_B_C1.Cells [1,VI_LINHAS2]:= STGR_BASE_B.Cells[VI_COMBINACOES1,0];

                         // ----------------------------
                         // -- FLAG NA COLUNA 2, 3, 4 --
                         // ----------------------------
                         STGR_GRUPO_B_C2.Cells [1,VI_LINHAS2]:= 'F';
                         STGR_GRUPO_B_C3.Cells [1,VI_LINHAS2]:= 'F';
                         STGR_GRUPO_B_C4.Cells [1,VI_LINHAS2]:= 'F';
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 2 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_B.Cells[VI_COMBINACOES1,0];
                         IF (POS(STGR_BASE_B.Cells[VI_COMBINACOES2,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_GRUPO_B_C2.Cells[1,VI_LINHAS2] := STGR_BASE_B.Cells[VI_COMBINACOES2,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_B.Cells[VI_COMBINACOES1,0] +'-'+
                              STGR_BASE_B.Cells[VI_COMBINACOES2,0] ;
                         IF (POS(STGR_BASE_B.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_GRUPO_B_C3.Cells[1,VI_LINHAS2] := STGR_BASE_B.Cells[VI_COMBINACOES3,0];
                         END;
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 4 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_B.Cells[VI_COMBINACOES1,0] + '-'+
                              STGR_BASE_B.Cells[VI_COMBINACOES2,0] + '-'+
                              STGR_BASE_B.Cells[VI_COMBINACOES3,0];
                         IF (POS(STGR_BASE_B.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_GRUPO_B_C4.Cells[1,VI_LINHAS2] := STGR_BASE_B.Cells[VI_COMBINACOES4,0];
                         END;
                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_GRUPO_B_C2.Cells [1,VI_LINHAS2]='F')
                              OR (STGR_GRUPO_B_C3.Cells [1,VI_LINHAS2]='F')
                              OR (STGR_GRUPO_B_C4.Cells [1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // ---------------------------------------
                              // -- CAPTURAR OS 3 NÚMEROS QUE FALTAM  --
                              // ---------------------------------------
                              VS_NUMEROSPRINCIPAIS:= STGR_BASE_B.Cells[VI_COMBINACOES1,0] + '-'+
                                   STGR_BASE_B.Cells[VI_COMBINACOES2,0] + '-'+
                                   STGR_BASE_B.Cells[VI_COMBINACOES3,0]+ '-'+
                                   STGR_BASE_B.Cells[VI_COMBINACOES4,0];
                              VI_CONTAR :=1;
                              FOR VI_CONTADOR := 1 TO 7 DO
                              BEGIN
                                   IF (POS(STGR_BASE_B.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                        IF (VI_CONTAR = 2) THEN
                                             STGR_GRUPO_B_C5.Cells[2,VI_LINHAS2] := STGR_BASE_B.Cells[VI_CONTADOR,0];
                                        IF (VI_CONTAR = 3) THEN
                                             STGR_GRUPO_B_C6.Cells[2,VI_LINHAS2] := STGR_BASE_B.Cells[VI_CONTADOR,0];
                                        IF (VI_CONTAR = 4) THEN
                                             STGR_GRUPO_B_C6.Cells[3,VI_LINHAS2] := STGR_BASE_B.Cells[VI_CONTADOR,0];
                                   END; // if
                              END; // FOR VI_CONTADOR
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_GRUPO_B_C1.RowCount := VI_LINHAS2;
                              STGR_GRUPO_B_C2.RowCount := VI_LINHAS2;
                              STGR_GRUPO_B_C3.RowCount := VI_LINHAS2;
                              STGR_GRUPO_B_C4.RowCount := VI_LINHAS2;
                              STGR_GRUPO_B_C5.RowCount := VI_LINHAS2;
                              STGR_GRUPO_B_C6.RowCount := VI_LINHAS2;
                         END; // IF
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
          // ----------------------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 5e6 SE NECESSÁRIO --
          // ----------------------------------------------------
     IF (CB_FIXO_B.ItemIndex > 0) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_B_C6.RowCount-1) DO
          BEGIN
               IF (STRtoINT(ED_FIXO10S_B1.Text) <> STRtoINT(ED_FIXO10S_B2.Text))  THEN
               BEGIN
                    IF (STRtoINT(STGR_GRUPO_B_C6.Cells [2,VI_COMBINACOES1])=STRtoINT(ED_FIXO10S_B1.Text))
                         AND (STRtoINT(STGR_GRUPO_B_C6.Cells [3,VI_COMBINACOES1])=STRtoINT(ED_FIXO10S_B2.Text))
                         OR ((STRtoINT(STGR_GRUPO_B_C5.Cells [2,VI_COMBINACOES1])>=STRtoINT(ED_FIXO10S_B1.Text))
                              AND (STRtoINT(STGR_GRUPO_B_C5.Cells [2,VI_COMBINACOES1])<=STRtoINT(ED_FIXO10S_B2.Text)))
                    THEN
                    BEGIN
                         STGR_GRUPO_B_C6.Cells [1,VI_COMBINACOES1]:= 'V';
                    END ELSE
                    BEGIN
                         STGR_GRUPO_B_C6.Cells [1,VI_COMBINACOES1]:= 'F';
                    END; // IF
               END ELSE
               BEGIN
                    IF ((STRtoINT(STGR_GRUPO_B_C6.Cells [2,VI_COMBINACOES1])>=STRtoINT(ED_FIXO10S_B1.Text))
                              AND (STRtoINT(STGR_GRUPO_B_C6.Cells [2,VI_COMBINACOES1])<=STRtoINT(ED_FIXO10S_B2.Text)))
                         OR ((STRtoINT(STGR_GRUPO_B_C6.Cells [3,VI_COMBINACOES1])>=STRtoINT(ED_FIXO10S_B1.Text))
                              AND (STRtoINT(STGR_GRUPO_B_C6.Cells [3,VI_COMBINACOES1])<=STRtoINT(ED_FIXO10S_B2.Text)))
                         OR ((STRtoINT(STGR_GRUPO_B_C5.Cells [2,VI_COMBINACOES1])>=STRtoINT(ED_FIXO10S_B1.Text))
                              AND (STRtoINT(STGR_GRUPO_B_C5.Cells [2,VI_COMBINACOES1])<=STRtoINT(ED_FIXO10S_B2.Text)))
                    THEN
                    BEGIN
                         STGR_GRUPO_B_C6.Cells [1,VI_COMBINACOES1]:= 'V';
                    END ELSE
                    BEGIN
                         STGR_GRUPO_B_C6.Cells [1,VI_COMBINACOES1]:= 'F';
                    END; // IF
               END; // IF
          END; // FOR VI_COMBINACOES1
     END; // IF (CB_FIXO
          // -------------------------------
          // -- Combinações sem repetidos --
          // -------------------------------
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_B_C6.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_B_C6.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_GRUPO_B_TODOS4.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_GRUPO_B_TODOS4.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_GRUPO_B_TODOS4.Cells [2, VI_LINHAS2] := STGR_GRUPO_B_C2.Cells[1,VI_COMBINACOES1];
               STGR_GRUPO_B_TODOS4.Cells [3, VI_LINHAS2] := STGR_GRUPO_B_C5.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_B_TODOS4.Cells [4, VI_LINHAS2] := STGR_GRUPO_B_C6.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_B_TODOS4.Cells [5, VI_LINHAS2] := STGR_GRUPO_B_C6.Cells[3,VI_COMBINACOES1];
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_GRUPO_B_TODOS4.Cells [6, VI_LINHAS2] := STGR_GRUPO_B_C1.Cells[0,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [7, VI_LINHAS2] := STGR_GRUPO_B_C1.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [8, VI_LINHAS2] := STGR_GRUPO_B_C2.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [9, VI_LINHAS2] := STGR_GRUPO_B_C3.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [10, VI_LINHAS2] := STGR_GRUPO_B_C4.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [11, VI_LINHAS2] := STGR_GRUPO_B_C5.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [12, VI_LINHAS2] := STGR_GRUPO_B_C6.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_B_TODOS4.Cells [13, VI_LINHAS2] := STGR_GRUPO_B_C6.Cells[3,VI_COMBINACOES1];
               // ************************************************
               // **  Ordena os dados DAS 6 primeiras células   **
               // ************************************************
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                 STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
                 STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
               END; // FOR VI_CONTAR
               // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
               FOR VI_CONTAR :=2 TO 5 DO
               BEGIN
                 STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_GRUPO_B_TODOS4.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
               END; // FOR VI_CONTAR1
               VI_CNTCELULAS := 2;
               FOR VI_CONTAR :=1 TO 25 DO
               BEGIN
                 IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                 BEGIN
                     STGR_GRUPO_B_TODOS4.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                     VI_CNTCELULAS := VI_CNTCELULAS + 1;
                 END; // IF (STRGR_TODOS_NUMEROS
               END; // FOR VI_CONTAR
               VI_LINHAS2 := VI_LINHAS2 +1;
               STGR_GRUPO_B_TODOS4.RowCount := VI_LINHAS2;
          END; // IF (STGR_GRUPO_B_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
               {
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_B_C6.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_GRUPO_B_C6.RowCount-1) DO
          BEGIN
                IF  (STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES1] = STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2]) AND
                    (STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES1] = STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES1] = STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2]) AND
                        (STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES1] = STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2]) 
                        THEN
                    BEGIN
                        STGR_GRUPO_B_TODOS4.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_GRUPO_B_TODOS4.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_B_TODOS4.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1   }
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------

     FOR VI_COMBINACOES2:= 1 TO (STGR_GRUPO_B_TODOS4.RowCount-1) DO
     BEGIN
               IF     ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                  OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                  OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                  OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_GRUPO_B_TODOS4.Cells [1 ,VI_COMBINACOES2] := 'F';
               IF     ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                  OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                  OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                  OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_GRUPO_B_TODOS4.Cells [1 ,VI_COMBINACOES2] := 'F';
               IF     ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                  OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                  OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                  OR  ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_GRUPO_B_TODOS4.Cells [1 ,VI_COMBINACOES2] := 'F';
     END; // FOR VI_COMBINACOES2

     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_B_TODOS4.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_B_TODOS4.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_GRUPO_B_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_GRUPO_B_100REP.Repaint;


        // ======================================================
        // ******************
        // **  LINHA 3 (C) **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 5 DO
                    BEGIN
                         STGR_GRUPO_C_C1.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_C_C2.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_C_C3.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_C_C4.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_C_C5.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                         STGR_GRUPO_C_C2.Cells [1,VI_LINHAS2]:= 'V';

                         STGR_GRUPO_C_C2.Cells[2,VI_LINHAS2]:= STGR_BASE_C.Cells[VI_COMBINACOES1,0];
                         STGR_GRUPO_C_C3.Cells[1,VI_LINHAS2]:= STGR_BASE_C.Cells[VI_COMBINACOES2,0];
                         STGR_GRUPO_C_C5.Cells[1,VI_LINHAS2]:= STGR_BASE_C.Cells[VI_COMBINACOES3,0];
                         // --------------------------
                         // -- FLAG NA COLUNA 1,3,4 --
                         // --------------------------
                         STGR_GRUPO_C_C1.Cells[1,VI_LINHAS2]:= 'F';
                         STGR_GRUPO_C_C3.Cells[1,VI_LINHAS2]:= 'F';
                         STGR_GRUPO_C_C5.Cells[1,VI_LINHAS2]:= 'F';
                              // ---------------------------------------------
                              // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                              // ---------------------------------------------
                              VS_NUMEROSPRINCIPAIS:= STGR_BASE_C.Cells[VI_COMBINACOES1,0];
                              IF (POS(STGR_BASE_C.Cells[VI_COMBINACOES2,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                              BEGIN
                                   STGR_GRUPO_C_C3.Cells[1,VI_LINHAS2] := STGR_BASE_C.Cells[VI_COMBINACOES2,0];
                              END;
                              // ---------------------------------------------
                              // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 5 --
                              // ---------------------------------------------
                              VS_NUMEROSPRINCIPAIS:= STGR_BASE_C.Cells[VI_COMBINACOES1,0] + '-'+
                                   STGR_BASE_C.Cells[VI_COMBINACOES2,0] ;
                              IF (POS(STGR_BASE_C.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                              BEGIN
                                   STGR_GRUPO_C_C5.Cells[1,VI_LINHAS2] := STGR_BASE_C.Cells[VI_COMBINACOES3,0];
                              END;
                         // ---------------------------------------------
                         // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 1 --
                         // ---------------------------------------------
                         VS_NUMEROSPRINCIPAIS:= STGR_BASE_C.Cells[VI_COMBINACOES1,0] + '-'+
                              STGR_BASE_C.Cells[VI_COMBINACOES2,0] + '-'+
                              STGR_BASE_C.Cells[VI_COMBINACOES3,0];
                         IF (POS(STGR_BASE_C.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                         BEGIN
                              STGR_GRUPO_C_C1.Cells[1,VI_LINHAS2] := STGR_BASE_C.Cells[VI_COMBINACOES4,0];
                         END;

                         // -----------------------------------------------------------------------------------
                         // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                         // -----------------------------------------------------------------------------------
                         IF NOT ((STGR_GRUPO_C_C1.Cells[1,VI_LINHAS2]='F')
                              OR (STGR_GRUPO_C_C3.Cells[1,VI_LINHAS2]='F')
                              OR (STGR_GRUPO_C_C5.Cells[1,VI_LINHAS2]='F'))
                         THEN
                         BEGIN
                              // ----------------------------------
                              // -- CAPTURAR O NÚMERO QUE FALTA  --
                              // ----------------------------------
                              VS_NUMEROSPRINCIPAIS:= STGR_BASE_C.Cells[VI_COMBINACOES4,0] + '-' +
                                   STGR_BASE_C.Cells[VI_COMBINACOES1,0] + '-' +
                                   STGR_BASE_C.Cells[VI_COMBINACOES2,0] + '-' +
                                   STGR_BASE_C.Cells[VI_COMBINACOES3,0];
                              VI_CONTAR :=1;
                              FOR VI_CONTADOR := 1 TO 5 DO
                              BEGIN
                                   IF (POS(STGR_BASE_C.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                        IF (VI_CONTAR = 2) THEN
                                             STGR_GRUPO_C_C4.Cells[2,VI_LINHAS2] := STGR_BASE_C.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                              VI_LINHAS2 := VI_LINHAS2 +1;
                              STGR_GRUPO_C_C1.RowCount := VI_LINHAS2;
                              STGR_GRUPO_C_C2.RowCount := VI_LINHAS2;
                              STGR_GRUPO_C_C3.RowCount := VI_LINHAS2;
                              STGR_GRUPO_C_C4.RowCount := VI_LINHAS2;
                              STGR_GRUPO_C_C5.RowCount := VI_LINHAS2;
                         END; // IF NOT
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1


          Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;

          // ------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 2 --
          // ------------------------------------
     IF (CB_FIXO_C.ItemIndex > 0) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_C_C2.RowCount-1) DO
          BEGIN
               IF (STRtoINT(STGR_GRUPO_C_C2.Cells [2,VI_COMBINACOES1])=STRtoINT(ED_FIXO10S_C2.Text))
               THEN
               BEGIN
                    STGR_GRUPO_C_C2.Cells [1,VI_COMBINACOES1]:= 'V';
               END ELSE
               BEGIN
                    STGR_GRUPO_C_C2.Cells [1,VI_COMBINACOES1]:= 'F';
               END; // IF
          END; // FOR VI_COMBINACOES1
     END; // IF (CB_FIXO
          // ------------------------
          // -- ORDENANDO OS DADOS --
          // ------------------------
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_C_C1.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_C_C2.Cells[1,VI_COMBINACOES1]='V')  THEN
          BEGIN
               STGR_GRUPO_C_TODOS3.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_GRUPO_C_TODOS3.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_GRUPO_C_TODOS3.Cells [2, VI_LINHAS2] := STGR_GRUPO_C_C2.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_C_TODOS3.Cells [3, VI_LINHAS2] := STGR_GRUPO_C_C3.Cells[1,VI_COMBINACOES1];
               STGR_GRUPO_C_TODOS3.Cells [4, VI_LINHAS2] := STGR_GRUPO_C_C5.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_GRUPO_C_TODOS3.Cells [5, VI_LINHAS2] := STGR_GRUPO_C_C1.Cells[0,VI_COMBINACOES1];
                    STGR_GRUPO_C_TODOS3.Cells [6, VI_LINHAS2] := STGR_GRUPO_C_C1.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_C_TODOS3.Cells [7, VI_LINHAS2] := STGR_GRUPO_C_C2.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_C_TODOS3.Cells [8, VI_LINHAS2] := STGR_GRUPO_C_C3.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_C_TODOS3.Cells [9, VI_LINHAS2] := STGR_GRUPO_C_C4.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_C_TODOS3.Cells [10, VI_LINHAS2] := STGR_GRUPO_C_C5.Cells[1,VI_COMBINACOES1];
                  // ************************************************
               // **  Ordena os dados DAS 4 primeiras células   **
               // ************************************************
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
                 IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V')  THEN
                 BEGIN
                     STGR_GRUPO_C_TODOS3.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                     VI_CNTCELULAS := VI_CNTCELULAS + 1;
                 END; // IF (STRGR_TODOS_NUMEROS
               END; // FOR VI_CONTAR
               VI_LINHAS2 := VI_LINHAS2 +1;
               STGR_GRUPO_C_TODOS3.RowCount := VI_LINHAS2;
          END; // IF (STGR_GRUPO_C_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
               {
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_C_C1.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_GRUPO_C_C1.RowCount-1) DO
          BEGIN
                IF  (STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES1] = STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES1] = STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES2]) AND
                        (STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES1] = STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_GRUPO_C_TODOS3.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_GRUPO_C_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_C_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     }
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES3:= 1 TO (STGR_GRUPO_C_TODOS3.RowCount-1) DO
     BEGIN
               IF     ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES3])) = STRtoINT(ED_EXC_01.Text))
                  OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES3])) = STRtoINT(ED_EXC_01.Text))
                  OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES3])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_GRUPO_C_TODOS3.Cells [1 ,VI_COMBINACOES3] := 'F';
               IF     ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES3])) = STRtoINT(ED_EXC_02.Text))
                  OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES3])) = STRtoINT(ED_EXC_02.Text))
                  OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES3])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_GRUPO_C_TODOS3.Cells [1 ,VI_COMBINACOES3] := 'F';
               IF     ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES3])) = STRtoINT(ED_EXC_03.Text))
                  OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES3])) = STRtoINT(ED_EXC_03.Text))
                  OR  ((STRtoINT(STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES3])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_GRUPO_C_TODOS3.Cells [1 ,VI_COMBINACOES3] := 'F';
     END; // FOR VI_COMBINACOES3
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_C_TODOS3.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_C_TODOS3.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_GRUPO_C_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_GRUPO_C_100REP.Repaint;


        // ======================================================
        // ******************
        // **  LINHA 4 (D) **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 4 DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO 5 DO
                    BEGIN
                              STGR_GRUPO_D_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_GRUPO_D_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_GRUPO_D_C3.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_GRUPO_D_C4.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_GRUPO_D_C5.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                              STGR_GRUPO_D_C1.Cells [1,VI_LINHAS2]:= 'V';

                              STGR_GRUPO_D_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_D.Cells[VI_COMBINACOES1,0];
                              // -----------------------------
                              // -- FLAG NA COLUNA 2, 3, 4  --
                              // -----------------------------
                              STGR_GRUPO_D_C2.Cells [1,VI_LINHAS2]:= 'F';
                              STGR_GRUPO_D_C3.Cells [1,VI_LINHAS2]:= 'F';
                              STGR_GRUPO_D_C4.Cells [1,VI_LINHAS2]:= 'F';
                              // ---------------------------------------------
                              // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 2 --
                              // ---------------------------------------------
                              VS_NUMEROSPRINCIPAIS:= STGR_BASE_D.Cells[VI_COMBINACOES1,0];
                              IF (POS(STGR_BASE_D.Cells[VI_COMBINACOES2,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                              BEGIN
                                   STGR_GRUPO_D_C2.Cells[1,VI_LINHAS2] := STGR_BASE_D.Cells[VI_COMBINACOES2,0];
                              END;

                              // ---------------------------------------------
                              // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 3 --
                              // ---------------------------------------------
                              VS_NUMEROSPRINCIPAIS:= STGR_BASE_D.Cells[VI_COMBINACOES1,0]+ '-'+
                                   STGR_BASE_D.Cells[VI_COMBINACOES2,0];
                              IF (POS(STGR_BASE_D.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                              BEGIN
                                   STGR_GRUPO_D_C3.Cells[1,VI_LINHAS2] := STGR_BASE_D.Cells[VI_COMBINACOES3,0];
                              END;
                              // ---------------------------------------------
                              // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 4 --
                              // ---------------------------------------------
                              VS_NUMEROSPRINCIPAIS:= STGR_BASE_D.Cells[VI_COMBINACOES1,0] + '-'+
                                   STGR_BASE_D.Cells[VI_COMBINACOES2,0] + '-'+
                                   STGR_BASE_D.Cells[VI_COMBINACOES3,0];
                              IF (POS(STGR_BASE_D.Cells[VI_COMBINACOES4,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                              BEGIN
                                   STGR_GRUPO_D_C4.Cells[1,VI_LINHAS2] := STGR_BASE_D.Cells[VI_COMBINACOES4,0];
                              END;

                              // -----------------------------------------------------------------------------------
                              // -- SOMENTE AS LINHAS COM NÚMEROS SERÃO EXIBIDAS, AS COM O FLAG DE F (FALSO) NÃO  --
                              // -----------------------------------------------------------------------------------
                              IF NOT ((STGR_GRUPO_D_C2.Cells [1,VI_LINHAS2]='F')
                                   OR (STGR_GRUPO_D_C3.Cells [1,VI_LINHAS2]='F')
                                   OR (STGR_GRUPO_D_C4.Cells [1,VI_LINHAS2]='F'))
                              THEN
                              BEGIN
                                   // ---------------------------------------------
                                   // -- CAPTURAR O NÚMERO QUE FALTA NA COLUNA 5 --
                                   // ---------------------------------------------
                                   VS_NUMEROSPRINCIPAIS:= STGR_BASE_D.Cells[VI_COMBINACOES1,0] + '-'+
                                        STGR_BASE_D.Cells[VI_COMBINACOES2,0] + '-'+
                                        STGR_BASE_D.Cells[VI_COMBINACOES3,0] + '-'+
                                        STGR_BASE_D.Cells[VI_COMBINACOES4,0];
                                   FOR VI_CONTADOR := 1 TO 5 DO
                                   BEGIN
                                        IF (POS(STGR_BASE_D.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                        BEGIN
                                             STGR_GRUPO_D_C5.Cells[1,VI_LINHAS2] := STGR_BASE_D.Cells[VI_CONTADOR,0];
                                        END;
                                   END; // FOR VI_CONTADOR

                                   VI_LINHAS2 := VI_LINHAS2 +1;
                                   STGR_GRUPO_D_C1.RowCount := VI_LINHAS2;
                                   STGR_GRUPO_D_C2.RowCount := VI_LINHAS2;
                                   STGR_GRUPO_D_C3.RowCount := VI_LINHAS2;
                                   STGR_GRUPO_D_C4.RowCount := VI_LINHAS2;
                                   STGR_GRUPO_D_C5.RowCount := VI_LINHAS2;
                              END; // IF
                    END; // FOR VI_COMBINACOES4                         
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
          // --------------------------------------------------
          // -- AJUSTANDO OS FLAGS DA COLUNA 1 SE NECESSÁRIO --
          // --------------------------------------------------
     IF (CB_FIXO_D.ItemIndex > 0) THEN
     BEGIN
          FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_D_C1.RowCount-1) DO
          BEGIN
               IF (STRtoINT(STGR_GRUPO_D_C1.Cells [2,VI_COMBINACOES1])=STRtoINT(ED_FIXO10S_D1.Text))
               THEN
               BEGIN
                    STGR_GRUPO_D_C1.Cells [1,VI_COMBINACOES1]:= 'V';
               END ELSE
               BEGIN
                    STGR_GRUPO_D_C1.Cells [1,VI_COMBINACOES1]:= 'F';
               END; // IF
          END; // FOR VI_COMBINACOES1
     END; // IF (CB_FIXO
     {
     IF (CB_MODO_PROCESSAMENTO.ItemIndex > 1) THEN
     BEGIN
         FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_D_C3.RowCount-1) DO
         BEGIN
              VI_CONTAR :=1;
              FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_GRUPO_D_C4.RowCount-1) DO
              BEGIN
                   IF ((STRtoINT(STGR_GRUPO_D_C1.Cells [2,VI_COMBINACOES1]))=(STRtoINT(STGR_GRUPO_D_C1.Cells [2,VI_COMBINACOES2])))
                        AND ((STRtoINT(STGR_GRUPO_D_C2.Cells [1,VI_COMBINACOES1]))=(STRtoINT(STGR_GRUPO_D_C2.Cells [1,VI_COMBINACOES2])))
                        AND ((STRtoINT(STGR_GRUPO_D_C5.Cells [1,VI_COMBINACOES1]))=(STRtoINT(STGR_GRUPO_D_C5.Cells [1,VI_COMBINACOES2])))
                        and ((STRtoINT(STGR_GRUPO_D_C3.Cells [1,VI_COMBINACOES1]))=(STRtoINT(STGR_GRUPO_D_C4.Cells [1,VI_COMBINACOES2])))
                        and ((STRtoINT(STGR_GRUPO_D_C4.Cells [1,VI_COMBINACOES1]))=(STRtoINT(STGR_GRUPO_D_C3.Cells [1,VI_COMBINACOES2])))
                        AND ((STRtoINT(STGR_GRUPO_D_C3.Cells [1,VI_COMBINACOES1]))>=(STRtoINT(STGR_GRUPO_D_C3.Cells [1,VI_COMBINACOES2])-1))
                   THEN
                   BEGIN
                        VI_CONTAR := VI_CONTAR + 1;
                        IF (VI_CONTAR >1) THEN STGR_GRUPO_D_C1.Cells [1,VI_COMBINACOES2]:= 'F';
                   END; // IF
              END; // FOR VI_COMBINACOES1
         END; // FOR VI_COMBINACOES2
     END; // IF (CB_MODO_PROCESSAMENTO
     }
          // -------------------------------
          // -- Combinações sem repetidos --
          // -------------------------------
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_D_C1.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_D_C1.Cells[1,VI_COMBINACOES1]='V') THEN
          BEGIN
               STGR_GRUPO_D_TODOS3.Cells [0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
               STGR_GRUPO_D_TODOS3.Cells [1 ,VI_LINHAS2] := 'V';
               STGR_GRUPO_D_TODOS3.Cells [2, VI_LINHAS2] := STGR_GRUPO_D_C1.Cells[2,VI_COMBINACOES1];
               STGR_GRUPO_D_TODOS3.Cells [3, VI_LINHAS2] := STGR_GRUPO_D_C3.Cells[1,VI_COMBINACOES1];
               STGR_GRUPO_D_TODOS3.Cells [4, VI_LINHAS2] := STGR_GRUPO_D_C4.Cells[1,VI_COMBINACOES1];
                    // ==> os numeros das próximas celulas não são visiveis, poreém não saõ ordenados, pois correspondem as
                         // as colunas N.LINHA, bC1,bC2,bC3,bC4,bC5,bC6,bC6
                    STGR_GRUPO_D_TODOS3.Cells [5, VI_LINHAS2] := STGR_GRUPO_D_C1.Cells[0,VI_COMBINACOES1];
                    STGR_GRUPO_D_TODOS3.Cells [6, VI_LINHAS2] := STGR_GRUPO_D_C1.Cells[2,VI_COMBINACOES1];
                    STGR_GRUPO_D_TODOS3.Cells [7, VI_LINHAS2] := STGR_GRUPO_D_C2.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_D_TODOS3.Cells [8, VI_LINHAS2] := STGR_GRUPO_D_C3.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_D_TODOS3.Cells [9, VI_LINHAS2] := STGR_GRUPO_D_C4.Cells[1,VI_COMBINACOES1];
                    STGR_GRUPO_D_TODOS3.Cells [10, VI_LINHAS2] := STGR_GRUPO_D_C5.Cells[1,VI_COMBINACOES1];
               // ------------------------------------------------
               // --  Ordena os dados DAS 4 primeiras células   --
               // ------------------------------------------------
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
               VI_LINHAS2 := VI_LINHAS2 +1;
               STGR_GRUPO_D_TODOS3.RowCount := VI_LINHAS2;
          END; // IF (STGR_GRUPO_D_C1.Cells[2,VI_COMBINACOES1]='V')
     END; // FOR VI_COMBINACOES1
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
               {
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_D_C1.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_GRUPO_D_C1.RowCount-1) DO
          BEGIN
                IF  (STGR_GRUPO_D_TODOS3.Cells[2,VI_COMBINACOES1] = STGR_GRUPO_D_TODOS3.Cells[2,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_GRUPO_D_TODOS3.Cells[3,VI_COMBINACOES1] = STGR_GRUPO_D_TODOS3.Cells[3,VI_COMBINACOES2]) AND
                        (STGR_GRUPO_D_TODOS3.Cells[4,VI_COMBINACOES1] = STGR_GRUPO_D_TODOS3.Cells[4,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_GRUPO_D_TODOS3.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     }
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_GRUPO_D_TODOS3.RowCount-1) DO
     BEGIN
          IF (STGR_GRUPO_D_TODOS3.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_GRUPO_D_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_GRUPO_D_100REP.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_10_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_10_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_10_DADOS_TEMP')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT FIRST 10 * FROM COMBINACOES_15 ORDER BY DADOS; ')  ;
            SELF.IBQ_COMBINACOES.Open;
          SELF.IBQ_COMBINACOES.SQL.Clear;
          SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_10_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
          SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.IBQ_COMBINACOES.SQL.Clear;
          SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
          SELF.IBQ_COMBINACOES.ExecSQL;            
     SHOWMESSAGE('OK');
end;



procedure T_F_SIM_01_FILTRO_10.BBT_GERARClick(Sender: TObject);
var
     VI_LINHAS1, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR_COMB1, VI_TOTAL_COMB1, VI_CONTASEL1, VI_CONTASEL2, VI_CONTASEL3, VI_CONTASEL4, VI_CONTASEL5: integer;
     VI_COMBINACOES3, VI_COMBINACOES4: SMALLINT;
     VI_SOMA1, VsI_CB_MODPROCESSAMENTO_ITEMINDEX: SMALLINT;
     VI_FLAG_SOMATORIA1, VI_FLAG_SOMATORIA2, VI_FLAG_SOMATORIA3, VI_FLAG_SOMATORIA4, VI_FLAG_SOMATORIA5: SMALLINT;


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


    PROCEDURE PR_ORDENAR_PRE_REMOCAO (OUT VI_LINHAS9: INTEGER);
    var
        VI_CONTAR: INTEGER;
    begin
     // ****************************************
    	// ** VERIFICA SE HÁ REPETIDOS PARA TRÁS **
	// ****************************************
        IF (STGR_COMB15.RowCount) >=35 THEN
        BEGIN
            FOR VI_CONTAR :=  (STGR_COMB15.RowCount-34) TO (STGR_COMB15.RowCount-4) DO
            BEGIN
                IF  (STGR_COMB15.Cells[3,VI_CONTAR] = STGR_COMB15.Cells[3,VI_LINHAS9]) AND
                    (STGR_COMB15.Cells[4,VI_CONTAR] = STGR_COMB15.Cells[4,VI_LINHAS9])
                    THEN
                BEGIN
                    IF  (STGR_COMB15.Cells[5,VI_CONTAR] = STGR_COMB15.Cells[5,VI_LINHAS9]) AND
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
                        (STGR_COMB15.Cells[16,VI_CONTAR] = STGR_COMB15.Cells[16,VI_LINHAS9]) AND
                        (STGR_COMB15.Cells[17,VI_CONTAR] = STGR_COMB15.Cells[17,VI_LINHAS9])
                        THEN
                    BEGIN
                         VI_LINHAS9 := VI_LINHAS9 - 1;
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
        VC_DADOS1, VC_DADOS2, VC_DADOS3, VC_DADOS4, VC_COMBINACOES : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
            VC_DADOS1 := RIGHTSTR ('0'+STGR_BASE_A.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_A.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[6,0],2)+ ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[7,0],2)+ ' '  + RIGHTSTR ('0'+STGR_BASE_A.Cells[8,0],2);
            VC_DADOS2 := RIGHTSTR ('0'+STGR_BASE_B.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_B.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[6,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_B.Cells[7,0],2);
            VC_DADOS3 := RIGHTSTR ('0'+STGR_BASE_C.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_C.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_C.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_C.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_C.Cells[5,0],2);
            VC_DADOS4 := RIGHTSTR ('0'+STGR_BASE_D.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_D.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_D.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_D.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_D.Cells[5,0],2);
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO FILTRO_10_DEFINICAO (LINHA_1, LINHA_2, LINHA_3, LINHA_4, FIXOS_L1_1COL1, FIXOS_L1_2COL1, FIXOS_L2_1COL5E6, FIXOS_L2_2COL5E6, FIXOS_L3_1COL2, FIXOS_L4_1COL1,';
            VC_QUERY  := VC_QUERY +' FLAG_FIXO_L2, FLAG_FIXO_L3, FLAG_FIXO_L4, ';
            VC_QUERY  := VC_QUERY +' SOMA_COL_1_INI, SOMA_COL_1_FINAL, SOMA_COL_2_INI, SOMA_COL_2_FINAL, SOMA_COL_3_INI, SOMA_COL_3_FINAL, SOMA_COL_4_INI, SOMA_COL_4_FINAL, SOMA_COL_5E6_INI, SOMA_COL_5E6_FINAL, ';
            VC_QUERY  := VC_QUERY +' EXC_1, EXC_2, EXC_3, FIXOS_1, FIXOS_2, FIXOS_3, FIXOS_4, CONTADOR_C1, TOTAL_CONTADOR_C1, DATA_DEFINICAO, HORA_DEFINICAO, FIXOS_5)';
            VC_QUERY  := VC_QUERY +'  VALUES('+#39+ VC_DADOS1              + #39 +',' +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 + #39 +','  +#39+ VC_DADOS4 ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_fixo10S_A1.Text      + #39 +',' +#39+ ED_FIXO10S_A2.Text    + #39 +','+#39+ ED_FIXO10S_B1.Text    + #39 +','+#39+ ED_FIXO10S_B2.Text        + #39 +','+#39+ ED_FIXO10S_C2.Text    + #39 +','+#39+ ED_FIXO10S_D1.Text;
            VC_QUERY  := VC_QUERY + #39 +','+#39+ INTtoSTR(CB_FIXO_B.ItemIndex)+ #39 +','+#39+ INTtoSTR(CB_FIXO_C.ItemIndex)   + #39 +','+#39+ INTtoSTR(CB_FIXO_D.ItemIndex);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMAS_C1_INI.Text    + #39 +',' +#39+ ED_SOMAS_C1_FINAL.Text  + #39 +',' +#39+ ED_SOMAS_C2_INI.Text + #39 +','+#39+ ED_SOMAS_C2_FINAL.Text + #39 +','+#39+ ED_SOMAS_C3_INI.Text         + #39 +','+#39+  ED_SOMAS_C3_FINAL.Text      + #39 +','+#39+ ED_SOMAS_C4_INI.Text              + #39 +','+#39+ ED_SOMAS_C4_FINAL.Text      + #39 +','+#39+ ED_SOMAS_C5_INI.Text              + #39 +','+#39+ ED_SOMAS_C5_FINAL.Text  ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01.Text          + #39 +',' +#39+ ED_EXC_02.Text          + #39 +','+#39+ ED_EXC_03.Text        + #39 +','+#39+ ED_FIXOS_01.Text       + #39 +','+#39+ ED_FIXOS_02.Text             + #39 +','+#39+ ED_FIXOS_03.Text             + #39 +','+#39+  ED_FIXOS_04.Text                 + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[])+ #39 +','+#39+FORMATDATETIME('h:n:s',time())+ #39 +','+#39+  ED_FIXOS_05.Text      +#39+');';
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
                FOR VI_CNTCELULAS := 3 TO 17 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_COMB15.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
                END; // FOR VI_CNTCELULAS
                SELF.IBQ_COMBINACOES.SQL.Clear;
                VC_QUERY  := 'INSERT INTO FILTRO_10_DADOS_TEMP (DADOS) VALUES(' +#39+ VC_COMBINACOES + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_10_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
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
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_10_100repet01' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_10_DADOS_TEMP')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
             end;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS
        

BEGIN
    VsI_CB_MODPROCESSAMENTO_ITEMINDEX := CB_MODO_PROCESSAMENTO.ItemIndex;
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR VI_CONTASEL1 := 1 TO 15 DO
     BEGIN
        STGR_COMB15.Cells [VI_CONTASEL1+2,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB15.Cells [VI_CONTASEL1+2,1] := '00';
     END;
     STGR_COMB15.RowCount := 2;
     STGR_COMB15.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB.Repaint;
     PGBR_GERARCOMB0.Repaint;
     PGBR_REMREPET.Position := 0;
     PGBR_REMREPET.Repaint;
     PGBR_FILTRARCOMB.Position := 0;
     PGBR_FILTRARCOMB.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_QTD_FILTRADOS.Caption := '0000000';
     LA_QTD_FILTRADOS.Repaint;     
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_QTD_COMB.Repaint;
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     {
     IF (RB_GERAR_FILTRAR.Checked) THEN
     BEGIN
          IF ( _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount <5 ) THEN
          begin
               SHOWMESSAGE('NÃO EXISTE NENHUMA SIMULAÇÃO GERADA E/OU CARREGADA. IMPOSSÍVEL APLICAR O FILTRO. VOLTE E ESCOLHA, GERAR E SAIR');
               PA_GERAR.Enabled := TRUE;
               PA_GERAR.Left := 450;
               EXIT;
          END;
     END;
     }
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     VI_LINHAS2 := 1;
     VI_CONTAR_COMB1 := 0;
     VI_LINHAS1 := VI_LINHAS2;
     VI_TOTAL_COMB1  := STRtoINT(LA_GRUPO_A_100REP.Caption);
     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_GRUPO_A_TODOS5.RowCount-1));
    // =================== AQUI
     FOR VI_COMBINACOES1 := 1{36} TO {45} TRUNC((STGR_GRUPO_A_TODOS5.RowCount-1)/1) DO
     BEGIN
          IF ((STGR_GRUPO_A_TODOS5.Cells[1,VI_COMBINACOES1]) = 'F')
          THEN
                    CONTINUE
          ELSE
                    VI_CONTAR_COMB1 := VI_CONTAR_COMB1+1;                   
          FOR VI_COMBINACOES2 := 1 TO (STGR_GRUPO_B_TODOS4.RowCount-1) DO
          BEGIN
               IF ((STGR_GRUPO_B_TODOS4.Cells[1,VI_COMBINACOES2]) = 'F') THEN
                         CONTINUE;
          {
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
                         CONTINUE;  }
                    FOR VI_COMBINACOES3 := 1 TO (STGR_GRUPO_C_TODOS3.RowCount-1) DO
                    BEGIN
                         IF ((STGR_GRUPO_C_TODOS3.Cells[1,VI_COMBINACOES3]) = 'F') THEN
                                   CONTINUE;
                            {  IF     ((STRtoINT(STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01.Text))
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
                                        CONTINUE;   }

                         FOR VI_COMBINACOES4 := 1 TO (STGR_GRUPO_D_TODOS3.RowCount-1) DO
                         BEGIN
                                            IF (VsI_CB_MODPROCESSAMENTO_ITEMINDEX =2) THEN
                                                BEGIN
                                                 VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[8,VI_COMBINACOES1]) + STRtoINT(STGR_GRUPO_A_TODOS5.Cells[9,VI_COMBINACOES1])
                                                  + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[7,VI_COMBINACOES2])
                                                  + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[6,VI_COMBINACOES3])
                                                  + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[6,VI_COMBINACOES4]);
                                                 IF (VI_SOMA1 >= (STRtoINT(ED_SOMAS_C1_INI.Text))) AND (VI_SOMA1 <= (STRtoINT(ED_SOMAS_C1_FINAL.Text))) THEN
                                                 BEGIN
                                                      IF (VI_COMBINACOES4 MOD 48)=0 THEN SLEEP (3);
                                                      VI_FLAG_SOMATORIA1:= 1   ;
                                                 END
                                                 ELSE
                                                 BEGIN
                                                      //VI_FLAG_SOMATORIA1:= 0;
                                                      CONTINUE;
                                                 END;
                                                 VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[13,VI_COMBINACOES1])
                                                  + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[11,VI_COMBINACOES2])
                                                  + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[10,VI_COMBINACOES3])
                                                  + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[10,VI_COMBINACOES4])
                                                      +STRtoINT(STGR_GRUPO_A_TODOS5.Cells[14,VI_COMBINACOES1])
                                                  + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[12,VI_COMBINACOES2])
                                                      +STRtoINT(STGR_GRUPO_A_TODOS5.Cells[15,VI_COMBINACOES1])
                                                  + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[13,VI_COMBINACOES2])                                                ;
                                                 IF (VI_SOMA1 >= (STRtoINT(ED_SOMAS_C5_INI.Text))) AND (VI_SOMA1 <= (STRtoINT(ED_SOMAS_C5_FINAL.Text))) THEN
                                                      VI_FLAG_SOMATORIA5:=1
                                                 ELSE
                                                      CONTINUE
                                             END; // IF (VsI_CB_MODPROCESSAMENTO_ITEMINDEX =2)
                                            IF (VsI_CB_MODPROCESSAMENTO_ITEMINDEX =1) THEN
                                            BEGIN
                                                 VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[12,VI_COMBINACOES1])
                                                  + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[10,VI_COMBINACOES2])
                                                  + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[9,VI_COMBINACOES3])
                                                  + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[9,VI_COMBINACOES4]);
                                                 IF (VI_SOMA1 >= (STRtoINT(ED_SOMAS_C4_INI.Text))) AND (VI_SOMA1 <= (STRtoINT(ED_SOMAS_C4_FINAL.Text))) THEN
                                                 BEGIN
                                                      IF (VI_COMBINACOES4 MOD 12)=0 THEN SLEEP (1);
                                                      VI_FLAG_SOMATORIA4:=1
                                                 END
                                                 ELSE
                                                 BEGIN
                                                      CONTINUE; //VI_FLAG_SOMATORIA4:=0;
                                                 END;
                                            END;
                              //IF (VI_COMBINACOES1=37) AND (VI_COMBINACOES2=179) AND (VI_COMBINACOES3=15) AND (VI_COMBINACOES4=22) THEN SHOWMESSAGE('AQUI]');
                              // ===> PEGA 5 NUMEROS
                              STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[2,VI_COMBINACOES1];
                              STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[3,VI_COMBINACOES1];
                              STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[4,VI_COMBINACOES1];
                              STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[5,VI_COMBINACOES1];
                              STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_GRUPO_A_TODOS5.Cells[6,VI_COMBINACOES1];
                              // ===> PEGA 4 NUMEROS
                              STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[2,VI_COMBINACOES2];
                              STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[3,VI_COMBINACOES2];
                              STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[4,VI_COMBINACOES2];
                              STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_GRUPO_B_TODOS4.Cells[5,VI_COMBINACOES2];
                              // ===> PEGA 3 NUMEROS
                              STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_GRUPO_C_TODOS3.Cells[2,VI_COMBINACOES3];
                              STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_GRUPO_C_TODOS3.Cells[3,VI_COMBINACOES3];
                              STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_GRUPO_C_TODOS3.Cells[4,VI_COMBINACOES3];
                              // ===> PEGA 3 NUMEROS
                              STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_GRUPO_D_TODOS3.Cells[2,VI_COMBINACOES4];
                              STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_GRUPO_D_TODOS3.Cells[3,VI_COMBINACOES4];
                              STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_GRUPO_D_TODOS3.Cells[4,VI_COMBINACOES4];
                              // ===> NUMERA A LINHA E FLAG EXISTENTE
                              STGR_COMB15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                              STGR_COMB15.Cells[1,VI_LINHAS2] := 'V';
                              STGR_COMB15.Cells[2,VI_LINHAS2] := 'F';
                              IF NOT(
                                     ((STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2])) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2])) = STRtoINT(ED_EXC_01.Text))
                                 OR  ((STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2])) = STRtoINT(ED_EXC_01.Text))
                                 )
                              THEN
                              BEGIN
                                   IF NOT(
                                          ((STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2])) = STRtoINT(ED_EXC_02.Text))
                                      OR  ((STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2])) = STRtoINT(ED_EXC_02.Text))
                                      OR  ((STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2])) = STRtoINT(ED_EXC_02.Text))
                                      )
                                   THEN
                                   BEGIN
                                   IF NOT(
                                          ((STRtoINT(STGR_COMB15.Cells[15,VI_LINHAS2])) = STRtoINT(ED_EXC_03.Text))
                                      OR  ((STRtoINT(STGR_COMB15.Cells[16,VI_LINHAS2])) = STRtoINT(ED_EXC_03.Text))
                                      OR  ((STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2])) = STRtoINT(ED_EXC_03.Text))
                                      )
                                   THEN
                                   BEGIN
                                        // --------------------
                                        // --  NUMEROS FIXOS   --
                                        // --------------------
                                       { // IMPLEMENTAR FUTURAMENTE
                                        IF (STRtoINT(ED_FIXOS_01.Text)>0) THEN
                                        BEGIN
                                             STGR_COMB15.Cells[33,VI_LINHAS2] := 'F';
                                             FOR VI_CONTASEL1 := 3 TO 17 DO
                                             BEGIN
                                                  IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL1,VI_LINHAS2])) = STRtoINT(ED_FIXOS_01.Text))
                                                  THEN
                                                  BEGIN
                                                       STGR_COMB15.Cells[33,VI_LINHAS2] := 'V';
                                                  END ;
                                             END; // FOR VI_CONTARSEL1
                                             IF  (STGR_COMB15.Cells[33,VI_LINHAS2] = 'F')
                                             THEN
                                                  CONTINUE;
                                        END; // IF (STRtoINT(ED_FIXOS_01.Text)>0)

                                        IF (STRtoINT(ED_FIXOS_02.Text)>0) THEN
                                        BEGIN
                                             STGR_COMB15.Cells[33,VI_LINHAS2] := 'F';
                                             FOR VI_CONTASEL2 := 3 TO 17 DO
                                             BEGIN
                                                  IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL2,VI_LINHAS2])) = STRtoINT(ED_FIXOS_02.Text))
                                                  THEN
                                                  BEGIN
                                                       STGR_COMB15.Cells[33,VI_LINHAS2] := 'V';
                                                  END; // IF ((STRtoINT(STGR_COMB15.
                                             END; // FOR VI_CONTARSEL2
                                             IF  (STGR_COMB15.Cells[33,VI_LINHAS2] = 'F')
                                             THEN
                                                  CONTINUE;
                                        END; // IF (STRtoINT(ED_FIXOS_02.Text)>0)
                                        }
                                        // --------------------
                                        // --  NUMEROS FIXOS   --
                                        // --------------------
                                        IF (STRtoINT(ED_FIXOS_01.Text)>0) THEN
                                        BEGIN
                                             STGR_COMB15.Cells[33,VI_LINHAS2] := 'F';
                                             FOR VI_CONTASEL1 := 3 TO 17 DO
                                             BEGIN
                                                  IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL1,VI_LINHAS2])) = STRtoINT(ED_FIXOS_01.Text))
                                                  THEN BEGIN
                                                       IF (STRtoINT(ED_FIXOS_02.Text)>0) THEN
                                                       BEGIN
                                                            FOR VI_CONTASEL2 := 3 TO 17 DO
                                                            BEGIN
                                                                 IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL2,VI_LINHAS2])) = STRtoINT(ED_FIXOS_02.Text))
                                                                 THEN
                                                                      STGR_COMB15.Cells[33,VI_LINHAS2] := 'V';
                                                            END; // FOR VI_CONTARSEL2
                                                       END ELSE
                                                       BEGIN
                                                            STGR_COMB15.Cells[33,VI_LINHAS2] := 'V';
                                                       END; // IF
                                                  END;// IF
                                             END; // FOR
                                             IF  (STGR_COMB15.Cells[33,VI_LINHAS2] = 'F')
                                             THEN
                                                  CONTINUE;
                                        END; // IF (STRtoINT(ED_FIXOS_01.Text)>0)
                                        IF (STRtoINT(ED_FIXOS_03.Text)>0) THEN
                                        BEGIN
                                             STGR_COMB15.Cells[34,VI_LINHAS2] := 'F';
                                             FOR VI_CONTASEL3 := 3 TO 17 DO
                                             BEGIN
                                                  IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL3,VI_LINHAS2])) = STRtoINT(ED_FIXOS_03.Text))
                                                  THEN
                                                  BEGIN
                                                            IF (STRtoINT(ED_FIXOS_04.Text)>0) THEN
                                                            BEGIN
                                                                      FOR VI_CONTASEL4 := 3 TO 17 DO
                                                                      BEGIN
                                                                           IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL4,VI_LINHAS2])) = STRtoINT(ED_FIXOS_04.Text))
                                                                           THEN
                                                                                STGR_COMB15.Cells[34,VI_LINHAS2] := 'V';
                                                                      END; // FOR VI_CONTASEL3
                                                            END  ELSE
                                                            BEGIN
                                                                 STGR_COMB15.Cells[34,VI_LINHAS2] := 'V';
                                                            END;
                                                  END; // IF ((STRtoINT(STGR_COMB15.
                                             END; // FOR VI_CONTARSEL3
                                             IF  (STGR_COMB15.Cells[34,VI_LINHAS2] = 'F')
                                             THEN
                                                  CONTINUE;
                                             IF (STRtoINT(ED_FIXOS_05.Text)>0) THEN
                                             BEGIN
                                             STGR_COMB15.Cells[35,VI_LINHAS2] := 'F';
                                                       FOR VI_CONTASEL5 := 3 TO 17 DO
                                                       BEGIN
                                                            IF ((STRtoINT(STGR_COMB15.Cells[VI_CONTASEL5,VI_LINHAS2])) = STRtoINT(ED_FIXOS_05.Text))
                                                            THEN
                                                                 STGR_COMB15.Cells[35,VI_LINHAS2] := 'V';
                                                       END; // FOR VI_CONTASEL3
                                             END  ELSE
                                             BEGIN
                                                  STGR_COMB15.Cells[35,VI_LINHAS2] := 'V';
                                             END;
                                             IF  (STGR_COMB15.Cells[35,VI_LINHAS2] = 'F')
                                             THEN
                                                  CONTINUE;
                                        END; // IF (STRtoINT(ED_FIXOS_03.Text)>0)
                                 // -------------------------------------
                                 // --  CONFERINDO A SOMA DO GRUPO A   --
                                 // -------------------------------------
                                            IF (VsI_CB_MODPROCESSAMENTO_ITEMINDEX <2) THEN
                                            BEGIN
                                                 VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[8,VI_COMBINACOES1]) + STRtoINT(STGR_GRUPO_A_TODOS5.Cells[9,VI_COMBINACOES1])
                                                  + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[7,VI_COMBINACOES2])
                                                  + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[6,VI_COMBINACOES3])
                                                  + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[6,VI_COMBINACOES4]);
                                                 IF (VI_SOMA1 >= (STRtoINT(ED_SOMAS_C1_INI.Text))) AND (VI_SOMA1 <= (STRtoINT(ED_SOMAS_C1_FINAL.Text))) THEN
                                                      VI_FLAG_SOMATORIA1:= 1
                                                 ELSE
                                                      VI_FLAG_SOMATORIA1:= 0;
                                             END;

                                             VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[10,VI_COMBINACOES1])
                                              + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[8,VI_COMBINACOES2])
                                              + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[7,VI_COMBINACOES3])
                                              + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[7,VI_COMBINACOES4]);
                                             IF (VI_SOMA1 >= (STRtoINT(ED_SOMAS_C2_INI.Text))) AND (VI_SOMA1 <= (STRtoINT(ED_SOMAS_C2_FINAL.Text))) THEN
                                             BEGIN
                                                  VI_FLAG_SOMATORIA2:= 1   ;
                                             END
                                             ELSE
                                             BEGIN
                                                  IF (VsI_CB_MODPROCESSAMENTO_ITEMINDEX >=1) THEN CONTINUE;
                                                  VI_FLAG_SOMATORIA2:= 0;
                                             END;


                                             VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[11,VI_COMBINACOES1])
                                              + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[9,VI_COMBINACOES2])
                                              + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[8,VI_COMBINACOES3])
                                              + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[8,VI_COMBINACOES4]);
                                             IF (VI_SOMA1 >= (STRtoINT(ED_SOMAS_C3_INI.Text))) AND (VI_SOMA1 <= (STRtoINT(ED_SOMAS_C3_FINAL.Text))) THEN
                                             BEGIN
                                                  VI_FLAG_SOMATORIA3:= 1   ;
                                             END
                                             ELSE
                                             BEGIN
                                                  IF (VsI_CB_MODPROCESSAMENTO_ITEMINDEX >=1) THEN CONTINUE;
                                                  VI_FLAG_SOMATORIA3:= 0;
                                             END;

                                            IF  not (VsI_CB_MODPROCESSAMENTO_ITEMINDEX =1) THEN
                                            BEGIN
                                                 VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[12,VI_COMBINACOES1])
                                                  + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[10,VI_COMBINACOES2])
                                                  + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[9,VI_COMBINACOES3])
                                                  + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[9,VI_COMBINACOES4]);
                                                 IF (VI_SOMA1 >= (STRtoINT(ED_SOMAS_C4_INI.Text))) AND (VI_SOMA1 <= (STRtoINT(ED_SOMAS_C4_FINAL.Text))) THEN
                                                      VI_FLAG_SOMATORIA4:=1
                                                 ELSE
                                                      VI_FLAG_SOMATORIA4:=0;
                                            END;

                                            IF (VsI_CB_MODPROCESSAMENTO_ITEMINDEX <2) THEN
                                            BEGIN
                                                 VI_SOMA1 := STRtoINT(STGR_GRUPO_A_TODOS5.Cells[13,VI_COMBINACOES1])
                                                  + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[11,VI_COMBINACOES2])
                                                  + STRtoINT(STGR_GRUPO_C_TODOS3.Cells[10,VI_COMBINACOES3])
                                                  + STRtoINT(STGR_GRUPO_D_TODOS3.Cells[10,VI_COMBINACOES4])
                                                      +STRtoINT(STGR_GRUPO_A_TODOS5.Cells[14,VI_COMBINACOES1])
                                                  + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[12,VI_COMBINACOES2])
                                                      +STRtoINT(STGR_GRUPO_A_TODOS5.Cells[15,VI_COMBINACOES1])
                                                  + STRtoINT(STGR_GRUPO_B_TODOS4.Cells[13,VI_COMBINACOES2])                                                ;
                                                 IF (VI_SOMA1 >= (STRtoINT(ED_SOMAS_C5_INI.Text))) AND (VI_SOMA1 <= (STRtoINT(ED_SOMAS_C5_FINAL.Text))) THEN
                                                      VI_FLAG_SOMATORIA5:=1
                                                 ELSE
                                                      VI_FLAG_SOMATORIA5:= 0;
                                            end;// IF (VsI_CB_MODPROCESSAMENTO_ITEMINDEX <2)

                                             IF (VI_FLAG_SOMATORIA1 =1) AND (VI_FLAG_SOMATORIA2 =1) AND (VI_FLAG_SOMATORIA3 =1) AND (VI_FLAG_SOMATORIA4 =1)
                                                  THEN IF (VI_FLAG_SOMATORIA5 = 1)
                                                  THEN
                                                  BEGIN
                                                        PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                                                        PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2);
                                                       VI_LINHAS2 := VI_LINHAS2+1 ;
                                                       VI_LINHAS1 := VI_LINHAS1+1 ;                                                              
                                                       PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_GRUPO_A_TODOS5.RowCount-1));
                                             END;// IF
                                        END; //IF NOT((STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2])) = STRtoINT(ED_EXC_03.Text)
                                   END; //IF NOT((STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2])) = STRtoINT(ED_EXC_02.Text)
                              END; //IF NOT((STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2])) = STRtoINT(ED_EXC_01.Text)
                         END; // FOR VI_COMBINACOES4
                    END; // FOR VI_COMBINACOES3
                    PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_GRUPO_B_TODOS4.RowCount-1)*100);
                    PGBR_GERARCOMB0.Repaint;
          END; // FOR VI_COMBINACOES2
         // END;// IF (STGR_GRUPO_A_TODOS
                    LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4)+'   ';
                    LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS2-1);
                    LA_QTD_COMB.Repaint;
                    //SLEEP(30);
          LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_CONTAR_COMB1)+ ' DE '+  INTtoSTR(VI_TOTAL_COMB1)+ ' - ' + INTtoSTR(TRUNC(VI_CONTAR_COMB1/VI_TOTAL_COMB1*100))+ ' %  ';
          PGBR_GERARCOMB.Position := TRUNC(VI_CONTAR_COMB1/VI_TOTAL_COMB1*100);
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
     STGR_COMB15.Repaint;
     LA_QTD_COMB.Repaint;
     LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_CONTAR_COMB1)+ ' DE '+  INTtoSTR(VI_TOTAL_COMB1)+ ' - ' + INTtoSTR(TRUNC(VI_CONTAR_COMB1/VI_TOTAL_COMB1*100))+ ' %  ';
     //LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_GRUPO_A_TODOS5.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_GRUPO_A_TODOS5.RowCount-1)*100))+ ' %  ';
     LA_GERAR_COMB.Repaint;     
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
     TRY
          STGR_COMB15.FixedRows := 1;
     EXCEPT
          //
     END;
          PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_GRUPO_A_TODOS5.RowCount-1));     
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;     
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR.Enabled    := false;
     BBT_ORDENAR.Enabled  := false;
     BBT_ENCERRAR.Enabled := false;
     //SHOWMESSAGE ('GERAÇÃO ENCERRADA:' +#13+#13+  LA_TOTAL_COMB.Caption +#13+ LA_QTD_COMB.Caption);
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption+ '    ';
     BBT_M01_BLOCO_NOTAS.SetFocus;
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_10_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTASEL1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_10_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTASEL1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_10_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     PA_REMOVEUREPET.Left :=  500;
end;


PROCEDURE T_F_SIM_01_FILTRO_10.PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-2 - Retirando os repetidos');
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_10_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DADOS FROM FILTRO_10_DADOS GROUP BY DADOS ORDER BY DADOS;')  ;
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
       IF (TRIM(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString) ='') THEN
           SELF.IBQ_COMBINACOES.Next;
       FOR VI_AN_COMB1:= 1 TO  VI_CONTAR DO
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
       LA_TOTAL_100REPET.Caption := INTtoSTR(STGR_COMB15.RowCount);
       STGR_COMB15.REPAINT;
       LA_TOTAL_100REPET.Repaint;

           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();


     // ====================================================
     // ||||============================================||||
     // |||| 	ORDENAR, FILTRAR E REMOVER REPETIDOS    ||||
     // ||||============================================||||
     // ====================================================
procedure T_F_SIM_01_FILTRO_10.BBT_ORDENARClick(Sender: TObject);
{VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_CNTCELULAS: SMALLINT; }
begin
   {  LA_TOTAL_100REPET.Caption := '000000';
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
          FOR VI_CONTAR :=3 TO 17 DO
          BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB15.Cells[VI_CONTAR,VI_COMBINACOES1])) ,1]:='V';
          END; // FOR VI_CONTAR1
          VI_CNTCELULAS := 3;
          FOR VI_CONTAR :=1 TO 25 DO
          BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB15.Cells [VI_CNTCELULAS, VI_COMBINACOES1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
          END; // FOR VI_CONTAR
     END; // FOR VI_CONBINACOES1
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMB15.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_COMB15.RowCount-1) DO
          BEGIN
                IF (STGR_COMB15.Cells [1,VI_COMBINACOES2] = 'F') THEN
                    CONTINUE;          
                IF  (STGR_COMB15.Cells[3,VI_COMBINACOES1] = STGR_COMB15.Cells[3,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[4,VI_COMBINACOES1] = STGR_COMB15.Cells[4,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_COMB15.Cells[5,VI_COMBINACOES1] = STGR_COMB15.Cells[5,VI_COMBINACOES2]) AND
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
                        (STGR_COMB15.Cells[16,VI_COMBINACOES1] = STGR_COMB15.Cells[16,VI_COMBINACOES2]) and
                        (STGR_COMB15.Cells[17,VI_COMBINACOES1] = STGR_COMB15.Cells[17,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_COMB15.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
          if (VI_COMBINACOES1/1000)=(VI_COMBINACOES1 DIV 1000) then
          BEGIN
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END; // IF (VI_COMBINACOES1/500
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
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR.Enabled    := false;
     BBT_ORDENAR.Enabled  := false;
     BBT_ENCERRAR.Enabled := false;
     LA_rTOTAL_COMB.Caption  := LA_rTOTAL_COMB.Caption;
     LA_rQTD_COMB.Caption    := LA_rQTD_COMB.Caption;
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption+ '    ';
     PA_REMOVEUREPET.Left :=  350;
    // SHOWMESSAGE ('ORDENAÇÃO E REMOÇÃO DE REPETIDOS ENCERRADA:' +#13+#13+  LA_TOTAL_COMB.Caption +#13+ LA_QTD_COMB.Caption+ #13+ 'QUANTIDADE SEM REPETIDOS: '+LA_TOTAL_100REPET.Caption);
    }
end;



procedure T_F_SIM_01_FILTRO_10.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR.Enabled    := TRUE;
     BBT_ORDENAR.Enabled  := TRUE;
     BBT_ENCERRAR.Enabled := TRUE;
{     IF (RB_GERAR_FILTRAR.Checked) THEN
     BEGIN
          BBT_ENCERRAR.Click;
     END ELSE
     BEGIN
         _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add('# FILTRO 10: GERADO');
         _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add(' - E SALVO.  ');
         Self.Close;
     END;
 }
    BBT_CLOSE.OnClick (Sender); 
end;



procedure T_F_SIM_01_FILTRO_10.BBT_ENCERRARClick(Sender: TObject);
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
                IF  (STGR_COMB15.Cells[3,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[1,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[4,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[2,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[5,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[3,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_COMB15.Cells[6,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[4,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[7,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[5,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[8,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[6,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[9,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[7,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[10,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[8,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[11,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[9,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[12,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[10,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[13,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[11,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[14,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[12,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[15,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[13,VI_COMBINACOES2]) AND
                        (STGR_COMB15.Cells[16,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[14,VI_COMBINACOES2]) and
                        (STGR_COMB15.Cells[17,VI_COMBINACOES1] = _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells[15,VI_COMBINACOES2])
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
               _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_LINHAS2] := STGR_COMB15.Cells [VI_CONTAR+2,VI_COMBINACOES1];
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
     BBT_GERAR_MENU.Enabled    := false;
     BBT_ORDENAR.Enabled  := false;
     BBT_ENCERRAR.Enabled := false;
     LA_fTOTAL_COMB.Caption  := LA_rTOTAL_COMB.Caption;
     LA_fQTD_COMB.Caption    := LA_rQTD_COMB.Caption;
     LA_fTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption+ '    ';
     LA_fQTD_FILTRADOS.Caption := LA_QTD_FILTRADOS.Caption + '   ';
     PA_FIMFILTRO.Left :=  400;
end;


procedure T_F_SIM_01_FILTRO_10.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;


procedure T_F_SIM_01_FILTRO_10.BBT_FIMFILTROClick(Sender: TObject);
begin
    _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add('# FILTRO 10: RESULTADO');
    _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add('  ' + INTtoSTR(_FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount));
    PA_FIMFILTRO.Left := 5000;
    BBT_CLOSE.OnClick (Sender);
end;




procedure T_F_SIM_01_FILTRO_10.TRB_C5_INIChange(Sender: TObject);
begin
     IF TRB_C5_INI.Position = 1 THEN
          ED_SOMAS_C5_INI.Text := '100';
     IF TRB_C5_INI.Position = 2 THEN
          ED_SOMAS_C5_INI.Text := '102';
     IF TRB_C5_INI.Position = 3 THEN
          ED_SOMAS_C5_INI.Text := '104';
     IF TRB_C5_INI.Position = 4 THEN
          ED_SOMAS_C5_INI.Text := '106';
     IF TRB_C5_INI.Position = 5 THEN
          ED_SOMAS_C5_INI.Text := '108';
end;


procedure T_F_SIM_01_FILTRO_10.TRB_C5_FINALChange(Sender: TObject);
begin
     IF TRB_C5_FINAL.Position = 1 THEN
          ED_SOMAS_C5_FINAL.Text := '100';
     IF TRB_C5_FINAL.Position = 2 THEN
          ED_SOMAS_C5_FINAL.Text := '102';
     IF TRB_C5_FINAL.Position = 3 THEN
          ED_SOMAS_C5_FINAL.Text := '104';
     IF TRB_C5_FINAL.Position = 4 THEN
          ED_SOMAS_C5_FINAL.Text := '106';
     IF TRB_C5_FINAL.Position = 5 THEN
          ED_SOMAS_C5_FINAL.Text := '108';
end;



procedure T_F_SIM_01_FILTRO_10.TRB_C4_INIChange(Sender: TObject);
begin
     IF TRB_C4_INI.Position = 1 THEN
          ED_SOMAS_C4_INI.Text := '50';
     IF TRB_C4_INI.Position = 2 THEN
          ED_SOMAS_C4_INI.Text := '52';
     IF TRB_C4_INI.Position = 3 THEN
          ED_SOMAS_C4_INI.Text := '54';
end;


procedure T_F_SIM_01_FILTRO_10.TRB_C3_INIChange(Sender: TObject);
begin
     IF TRB_C3_INI.Position = 1 THEN
          ED_SOMAS_C3_INI.Text := '50';
     IF TRB_C3_INI.Position = 2 THEN
          ED_SOMAS_C3_INI.Text := '52';
     IF TRB_C3_INI.Position = 3 THEN
          ED_SOMAS_C3_INI.Text := '54';
end;


procedure T_F_SIM_01_FILTRO_10.TRB_C2_INIChange(Sender: TObject);
begin
     IF TRB_C2_INI.Position = 1 THEN
          ED_SOMAS_C2_INI.Text := '50';
     IF TRB_C2_INI.Position = 2 THEN
          ED_SOMAS_C2_INI.Text := '52';
     IF TRB_C2_INI.Position = 3 THEN
          ED_SOMAS_C2_INI.Text := '54';
end;


procedure T_F_SIM_01_FILTRO_10.TRB_C1_INIChange(Sender: TObject);
begin
     IF TRB_C1_INI.Position = 1 THEN
          ED_SOMAS_C1_INI.Text := '63';
     IF TRB_C1_INI.Position = 2 THEN
          ED_SOMAS_C1_INI.Text := '65';
     IF TRB_C1_INI.Position = 3 THEN
          ED_SOMAS_C1_INI.Text := '67';
end;

procedure T_F_SIM_01_FILTRO_10.TRB_C1_FINALChange(Sender: TObject);
begin
     IF TRB_C1_FINAL.Position = 1 THEN
          ED_SOMAS_C1_FINAL.Text := '63';
     IF TRB_C1_FINAL.Position = 2 THEN
          ED_SOMAS_C1_FINAL.Text := '65';
     IF TRB_C1_FINAL.Position = 3 THEN
          ED_SOMAS_C1_FINAL.Text := '67';
end;



procedure T_F_SIM_01_FILTRO_10.TRB_C2_FINALChange(Sender: TObject);
begin
     IF TRB_C2_FINAL.Position = 1 THEN
          ED_SOMAS_C2_FINAL.Text := '50';
     IF TRB_C2_FINAL.Position = 2 THEN
          ED_SOMAS_C2_FINAL.Text := '52';
     IF TRB_C2_FINAL.Position = 3 THEN
          ED_SOMAS_C2_FINAL.Text := '54';
end;


procedure T_F_SIM_01_FILTRO_10.TRB_C3_FINALChange(Sender: TObject);
begin
     IF TRB_C3_FINAL.Position = 1 THEN
          ED_SOMAS_C3_FINAL.Text := '50';
     IF TRB_C3_FINAL.Position = 2 THEN
          ED_SOMAS_C3_FINAL.Text := '52';
     IF TRB_C3_FINAL.Position = 3 THEN
          ED_SOMAS_C3_FINAL.Text := '54';
end;


procedure T_F_SIM_01_FILTRO_10.TRB_C4_FINALChange(Sender: TObject);
begin
     IF TRB_C4_FINAL.Position = 1 THEN
          ED_SOMAS_C4_FINAL.Text := '50';
     IF TRB_C4_FINAL.Position = 2 THEN
          ED_SOMAS_C4_FINAL.Text := '52';
     IF TRB_C4_FINAL.Position = 3 THEN
          ED_SOMAS_C4_FINAL.Text := '54';
end;



procedure T_F_SIM_01_FILTRO_10.BT_CARREGAR_SIMULACAOClick(Sender: TObject);
begin
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
//     RB_RESULTADOS.SetFocus;
     BBT_RECOMECAR.Click;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     PA_PREENCHIMENTO.Visible := false;
     PA_PREENCHIMENTO.Enabled := false;
     BBT_PREPARAR.Visible := false;
     SCBX_GABARITO.Visible := false;
     BBT_GERAR_MENU.Visible := false;
     BBT_ENCERRAR.Enabled := TRUE;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 4500;
     PGBR_GERARCOMB.Position := 100;
     PGBR_GERARCOMB0.Position := 100;
     CB_MODO_PROCESSAMENTO.Visible := false;
     WITH STGR_COMB15 DO
     BEGIN
          Left := 34    ;
          Top  := 42   ;
          Width  := 1037;
          Height := 535 ;
          FixedCols := 3;
          FixedRows := 1;
          Visible := TRUE;
     END; // with

     WITH PA_RESULTADO DO
     BEGIN
          Anchors := [akLeft,akTop,akBottom];
          Top := 36;
          Height := self.ClientHeight-40;
          Visible := TRUE;
          Enabled := TRUE;
     END; // with
     PA_EXECUTAR_FILTRO.Visible := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     LA_TOTAL_COMB.Visible := false;
     LA_GERAR_COMB.Visible := false;
     LA_QTD_COMB.Visible := false;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_10_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
     SHOWMESSAGE('OK');
end;


procedure T_F_SIM_01_FILTRO_10.BT_NOVA_SIMULACAOClick(Sender: TObject);
begin
     BBT_RECOMECAR.Click;
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     STGR_COMB15.Visible := TRUE;
     STGR_COMB15.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Visible := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
//     RB_RES_GABARITOS.SetFocus;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_MENU.Enabled := TRUE;
     BBT_ENCERRAR.Enabled := TRUE;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 4500;
     CB_MODO_PROCESSAMENTO.Visible := TRUE;
    WITH PA_RESULTADO DO
     BEGIN
          Anchors := [akLeft,akBottom];     
          Visible := TRUE;
          Enabled := TRUE;
     END; // with
end;



procedure T_F_SIM_01_FILTRO_10.BBT_GERAR_MENUClick(Sender: TObject);
begin
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Left := 450;
end;


procedure T_F_SIM_01_FILTRO_10.FormClose(Sender: TObject;
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


procedure T_F_SIM_01_FILTRO_10.BBT_GERAR_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;


procedure T_F_SIM_01_FILTRO_10.BBT_M01_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, VI_CONTAR : INTEGER;
    VC_COMBINACOES : string;
begin
    MEM_COMBINACOES_TODAS.Clear;
   	MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + INTtoSTR(STGR_COMB15.RowCount)) ;
   	MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
    FOR VI_CONTAR := 1 TO STGR_COMB15.RowCount-1 DO
    BEGIN
		VC_COMBINACOES :=INTtoSTR(VI_CONTAR)+'=> ';
    	FOR VI_AN_COMB1 := 3 TO 17 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STGR_COMB15.Cells[VI_AN_COMB1,VI_CONTAR] +' ';
        END; // FOR VI_AN_COMB1
       	MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\FILTRO10.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\FILTRO10.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
   showmessage('BLOCO DE NOTAS GERADO');
end;



end.


