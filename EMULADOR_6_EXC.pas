unit EMULADOR_6_EXC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, Grids, IBX.IBDatabase, DB, StrUtils,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  T_F_EMULADOR_6_EXC = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    SCBX_GABARITO: TScrollBox;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label37: TLabel;
    Label35: TLabel;
    LA_LINHA_2_100REP: TLabel;
    Label3: TLabel;
    LA_LINHA_4_100REP: TLabel;
    LA_LINHA_3_100REP: TLabel;
    Label38: TLabel;
    Bevel4: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    LA_LINHA_5_100REP: TLabel;
    LA_QTD_cmbCOL3x4: TLabel;
    LA_LINHA_1_100REP: TLabel;
    STGR_LINHA_1_C1: TStringGrid;
    STGR_LINHA_1_C2: TStringGrid;
    STGR_LINHA_2_C2: TStringGrid;
    STGR_LINHA_2_C1: TStringGrid;
    STGR_LINHA_3_C1: TStringGrid;
    STGR_LINHA_3_C2: TStringGrid;
    STGR_LINHA_4_C1: TStringGrid;
    STGR_LINHA_4_C2: TStringGrid;
    STGR_LINHA_5_C1: TStringGrid;
    STGR_LINHA_5_C2: TStringGrid;
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
    BBT_CLICK_TUDO: TButton;
    PA_TOPO: TPanel;
    BBT_CLOSE: TImage;
    Label34: TLabel;
    PA_GABARITO: TPanel;
    Label29: TLabel;
    Label31: TLabel;
    RB_RESULTADOS: TRadioButton;
    RB_RES_GABARITOS: TRadioButton;
    PA_RESULTADO: TPanel;
    STGR_COMB6: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR: TBitBtn;
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
    PA_INICIAL: TPanel;
    STGR_BASE_L6: TStringGrid;
    Label1: TLabel;
    Bevel5: TBevel;
    Label4: TLabel;
    Label7: TLabel;
    LA_LINHA_6_100REP: TLabel;
    Label11: TLabel;
    STGR_LINHA_6_C2: TStringGrid;
    STGR_LINHA_6_C1: TStringGrid;
    IBQ_COMBINACOES: TIBQuery;
    Label55: TLabel;
    CB_NAO_EXCLUIDO1: TComboBox;
    Label12: TLabel;
    MEM_COMBINACOES_TODAS: TMemo;
    BBT_PA_REMOVEUREPET: TBitBtn;
    BBT_BLOCO_NOTAS: TBitBtn;
    PA_EXCLUIDOS: TPanel;
    Label32: TLabel;
    ED_EXC_01: TEdit;
    ED_EXC_02: TEdit;
    ED_EXC_03: TEdit;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    BBT_CARREGAR: TButton;
    BBT_SAIR: TButton;
    BBT_CANCELAR: TBitBtn;
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
    procedure BBT_CANCELARClick(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
  public
    { Public declarations }
  end;

var
  _F_EMULADOR_6_EXC: T_F_EMULADOR_6_EXC;

implementation

{$R *.dfm}


procedure T_F_EMULADOR_6_EXC.FormCreate(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
     SELF.ClientWidth  := 1223;
     SELF.ClientHeight := 730;
     SELF.Top  := 69;
     SELF.Left := 9;
     bbt_close.Left := SELF.ClientWidth-35;
    FOR VI_CONTAR := 1 TO 6 DO
    BEGIN
        STGR_COMB6.Cells [VI_CONTAR,1] := '0';
    END;
    STGR_COMB6.RowCount := 2;
    FOR VI_CONTAR := 1 TO 4 DO
    BEGIN
        STGR_BASE_L1.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_L2.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_L3.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_L4.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_L5.Cells[VI_CONTAR,0] := '0';
        STGR_BASE_L6.Cells[VI_CONTAR,0] := '0';
    END;
    STGR_COMB6.Cells[0,0] := 'QTD';
    FOR VI_CONTAR := 1 TO 6 DO
    BEGIN
        STGR_COMB6.Cells [VI_CONTAR,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
    END;
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
     PA_INICIAL.Left := 450;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00b_6EXC_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
    PA_EXECUTAR_FILTRO.Enabled := false;
end;



procedure T_F_EMULADOR_6_EXC.FormClose(Sender: TObject;
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



procedure T_F_EMULADOR_6_EXC.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;


procedure T_F_EMULADOR_6_EXC.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(1);
    BBT_701.Enabled := FALSE;
end;


procedure T_F_EMULADOR_6_EXC.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(2);
    BBT_702.Enabled := FALSE;
end;


procedure T_F_EMULADOR_6_EXC.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(3);
    BBT_703.Enabled := FALSE;
end;


procedure T_F_EMULADOR_6_EXC.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(4);
    BBT_704.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(5);
    BBT_705.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(6);
    BBT_706.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(7);
    BBT_707.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(8);
    BBT_708.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(10);
    BBT_710.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(9);
    BBT_709.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(11);
    BBT_711.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(12);
    BBT_712.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(13);
    BBT_713.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(14);
    BBT_714.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(15);
    BBT_715.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(16);
    BBT_716.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(17);
    BBT_717.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(18);
    BBT_718.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(19);
    BBT_719.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(20);
    BBT_720.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(21);
    BBT_721.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(22);
    BBT_722.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(23);
    BBT_723.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(24);
    BBT_724.Enabled := FALSE;
end;

procedure T_F_EMULADOR_6_EXC.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(25);
    BBT_725.Enabled := FALSE;
end;



PROCEDURE T_F_EMULADOR_6_EXC.PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3, VI_CONTAR4, VI_CONTAR5, VI_CONTAR6: INTEGER;
BEGIN
   FOR VI_CONTAR := 1 TO 4 DO
    BEGIN
        IF (STRtoINT (STGR_BASE_L1.Cells [VI_CONTAR,0]) = 0) THEN
        BEGIN
            STGR_BASE_L1.Cells [VI_CONTAR,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
            EXIT;
        END ELSE
        IF (VI_CONTAR = 4) THEN
        BEGIN
            FOR VI_CONTAR2 :=1 TO 4 DO
            BEGIN
                IF (STRtoINT (STGR_BASE_L2.Cells [VI_CONTAR2,0]) = 0) THEN
                BEGIN
                    STGR_BASE_L2.Cells [VI_CONTAR2,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                    EXIT;
                END ELSE
                IF (VI_CONTAR2 = 4) THEN
                BEGIN
                    FOR VI_CONTAR3 :=1 TO 4 DO
                    BEGIN
                        IF (STRtoINT (STGR_BASE_L3.Cells [VI_CONTAR3,0]) = 0) THEN
                        BEGIN
                            STGR_BASE_L3.Cells [VI_CONTAR3,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                            EXIT  ;
                        END ELSE
                        IF (VI_CONTAR3 = 4) THEN
                        BEGIN
                            FOR VI_CONTAR4 :=1 TO 4 DO
                            BEGIN
                                IF (STRtoINT (STGR_BASE_L4.Cells [VI_CONTAR4,0]) = 0) THEN
                                BEGIN
                                    STGR_BASE_L4.Cells [VI_CONTAR4,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                    EXIT ;
                            END ELSE
                                IF (VI_CONTAR4 = 4) THEN
                                BEGIN
                                    FOR VI_CONTAR5 :=1 TO 4 DO
                                    BEGIN
                                        IF (STRtoINT (STGR_BASE_L5.Cells [VI_CONTAR5,0]) = 0) THEN
                                        BEGIN
                                            STGR_BASE_L5.Cells [VI_CONTAR5,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                            EXIT ;
                                    END ELSE
                                        IF (VI_CONTAR5 = 4) THEN
                                        BEGIN
                                            FOR VI_CONTAR6 :=1 TO 4 DO
                                            BEGIN
                                                IF (STRtoINT (STGR_BASE_L6.Cells [VI_CONTAR6,0]) = 0) THEN
                                                BEGIN
                                                    STGR_BASE_L6.Cells [VI_CONTAR6,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                                    EXIT ;
                                                END;
                                            END; // IF VI_CONTAR6
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



procedure T_F_EMULADOR_6_EXC.BT_NOVA_SIMULACAOClick(Sender: TObject);
VAR
     VsI_CONTAR : SMALLINT;
begin
     FOR VsI_CONTAR := 1 TO 4 DO
     BEGIN
          STGR_BASE_L1.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L2.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L3.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L4.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L5.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L6.Cells[VsI_CONTAR,0] := '0';
     END;
     STGR_LINHA_1_C1.RowCount := 2;
     STGR_LINHA_2_C1.RowCount := 2;
     STGR_LINHA_3_C1.RowCount := 2;
     STGR_LINHA_4_C1.RowCount := 2;
     STGR_LINHA_5_C1.RowCount := 2;
     STGR_LINHA_6_C1.RowCount := 2;     
     STGR_LINHA_1_C2.RowCount := 2;
     STGR_LINHA_2_C2.RowCount := 2;
     STGR_LINHA_3_C2.RowCount := 2;
     STGR_LINHA_4_C2.RowCount := 2;
     STGR_LINHA_5_C2.RowCount := 2;
     STGR_LINHA_6_C2.RowCount := 2;
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
     STGR_COMB6.Visible := TRUE;
     STGR_COMB6.Enabled := TRUE;
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
     CASE CB_NAO_EXCLUIDO1.ItemIndex OF
          01: BBT_701.Enabled := false;
          02: BBT_702.Enabled := false;
          03: BBT_703.Enabled := false;
          04: BBT_704.Enabled := false;
          05: BBT_705.Enabled := false;
          06: BBT_706.Enabled := false;
          07: BBT_707.Enabled := false;
          08: BBT_708.Enabled := false;
          09: BBT_709.Enabled := false;
          10: BBT_710.Enabled := false;
          11: BBT_711.Enabled := false;
          12: BBT_712.Enabled := false;
          13: BBT_713.Enabled := false;
          14: BBT_714.Enabled := false;
          15: BBT_715.Enabled := false;
          16: BBT_716.Enabled := false;
          17: BBT_717.Enabled := false;
          18: BBT_718.Enabled := false;
          19: BBT_719.Enabled := false;
          20: BBT_720.Enabled := false;
          21: BBT_721.Enabled := false;
          22: BBT_722.Enabled := false;
          23: BBT_723.Enabled := false;
          24: BBT_724.Enabled := false;
          25: BBT_725.Enabled := false;
     END; // CASE;               
                                 
end;





procedure T_F_EMULADOR_6_EXC.RB_RES_GABARITOSClick(Sender: TObject);
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


procedure T_F_EMULADOR_6_EXC.RB_GABARITOClick(Sender: TObject);
begin
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
end;


procedure T_F_EMULADOR_6_EXC.RB_RESULTADOSClick(Sender: TObject);
begin
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible  := TRUE;
end;



procedure T_F_EMULADOR_6_EXC.TRB_C1_INIChange(Sender: TObject);
begin
     IF TRB_C1_INI.Position = 1 THEN
          ED_SOMAS_C1_INI.Text := '229';
     IF TRB_C1_INI.Position = 2 THEN
          ED_SOMAS_C1_INI.Text := '230';
     IF TRB_C1_INI.Position = 3 THEN
          ED_SOMAS_C1_INI.Text := '231';
     IF TRB_C1_INI.Position = 4 THEN
          ED_SOMAS_C1_INI.Text := '232';
     IF TRB_C1_INI.Position = 5 THEN
          ED_SOMAS_C1_INI.Text := '233';
     IF TRB_C1_INI.Position = 6 THEN
          ED_SOMAS_C1_INI.Text := '234';
     IF TRB_C1_INI.Position = 7 THEN
          ED_SOMAS_C1_INI.Text := '235';
     IF TRB_C1_INI.Position = 8 THEN
          ED_SOMAS_C1_INI.Text := '236';
     IF TRB_C1_INI.Position = 9 THEN
          ED_SOMAS_C1_INI.Text := '237';
     IF TRB_C1_INI.Position = 10 THEN
          ED_SOMAS_C1_INI.Text := '238';
     IF TRB_C1_INI.Position = 11 THEN
          ED_SOMAS_C1_INI.Text := '239';
end;


procedure T_F_EMULADOR_6_EXC.TRB_C1_FINALChange(Sender: TObject);
begin
     IF TRB_C1_FINAL.Position = 1 THEN
          ED_SOMAS_C1_FINAL.Text := '229';
     IF TRB_C1_FINAL.Position = 2 THEN
          ED_SOMAS_C1_FINAL.Text := '230';
     IF TRB_C1_FINAL.Position = 3 THEN
          ED_SOMAS_C1_FINAL.Text := '231';
     IF TRB_C1_FINAL.Position = 4 THEN
          ED_SOMAS_C1_FINAL.Text := '232';
     IF TRB_C1_FINAL.Position = 5 THEN
          ED_SOMAS_C1_FINAL.Text := '233';
     IF TRB_C1_FINAL.Position = 6 THEN
          ED_SOMAS_C1_FINAL.Text := '234';
     IF TRB_C1_FINAL.Position = 7 THEN
          ED_SOMAS_C1_FINAL.Text := '235';
     IF TRB_C1_FINAL.Position = 8 THEN
          ED_SOMAS_C1_FINAL.Text := '236';
     IF TRB_C1_FINAL.Position = 9 THEN
          ED_SOMAS_C1_FINAL.Text := '237';
     IF TRB_C1_FINAL.Position = 10 THEN
          ED_SOMAS_C1_FINAL.Text := '238';
     IF TRB_C1_FINAL.Position = 11 THEN
          ED_SOMAS_C1_FINAL.Text := '239';
end;


procedure T_F_EMULADOR_6_EXC.TRB_C2_INIChange(Sender: TObject);
begin
     IF TRB_C2_INI.Position = 1 THEN
          ED_SOMAS_C2_INI.Text := '73';
     IF TRB_C2_INI.Position = 2 THEN
          ED_SOMAS_C2_INI.Text := '74';
     IF TRB_C2_INI.Position = 3 THEN
          ED_SOMAS_C2_INI.Text := '75';
     IF TRB_C2_INI.Position = 4 THEN
          ED_SOMAS_C2_INI.Text := '76';
     IF TRB_C2_INI.Position = 5 THEN
          ED_SOMAS_C2_INI.Text := '77';
     IF TRB_C2_INI.Position = 6 THEN
          ED_SOMAS_C2_INI.Text := '78';
     IF TRB_C2_INI.Position = 7 THEN
          ED_SOMAS_C2_INI.Text := '79';
     IF TRB_C2_INI.Position = 8 THEN
          ED_SOMAS_C2_INI.Text := '80';
     IF TRB_C2_INI.Position = 9 THEN
          ED_SOMAS_C2_INI.Text := '81';
     IF TRB_C2_INI.Position = 10 THEN
          ED_SOMAS_C2_INI.Text := '82';
     IF TRB_C2_INI.Position = 11 THEN
          ED_SOMAS_C2_INI.Text := '83';
end;


procedure T_F_EMULADOR_6_EXC.TRB_C2_FINALChange(Sender: TObject);
begin
     IF TRB_C2_FINAL.Position = 1 THEN
          ED_SOMAS_C2_FINAL.Text := '73';
     IF TRB_C2_FINAL.Position = 2 THEN
          ED_SOMAS_C2_FINAL.Text := '74';
     IF TRB_C2_FINAL.Position = 3 THEN
          ED_SOMAS_C2_FINAL.Text := '75';
     IF TRB_C2_FINAL.Position = 4 THEN
          ED_SOMAS_C2_FINAL.Text := '76';
     IF TRB_C2_FINAL.Position = 5 THEN
          ED_SOMAS_C2_FINAL.Text := '77';
     IF TRB_C2_FINAL.Position = 6 THEN
          ED_SOMAS_C2_FINAL.Text := '78';
     IF TRB_C2_FINAL.Position = 7 THEN
          ED_SOMAS_C2_FINAL.Text := '79';
     IF TRB_C2_FINAL.Position = 8 THEN
          ED_SOMAS_C2_FINAL.Text := '80';
     IF TRB_C2_FINAL.Position = 9 THEN
          ED_SOMAS_C2_FINAL.Text := '81';
     IF TRB_C2_FINAL.Position = 10 THEN
          ED_SOMAS_C2_FINAL.Text := '82';
     IF TRB_C2_FINAL.Position = 11 THEN
          ED_SOMAS_C2_FINAL.Text := '83';
end;




procedure T_F_EMULADOR_6_EXC.BBT_RECOMECARClick(Sender: TObject);
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
    FOR VI_CONTAR := 1 TO 6 DO
    BEGIN
        STGR_COMB6.Cells [VI_CONTAR,1] := '0';
    END;
    STGR_COMB6.RowCount := 2;
    FOR VI_CONTAR := 1 TO 4 DO
    BEGIN
        STGR_BASE_L1.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L2.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L3.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L4.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L5.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L6.Cells [VI_CONTAR,0] := '0';
    END;
     CASE CB_NAO_EXCLUIDO1.ItemIndex OF
          01: BBT_701.Enabled := false;
          02: BBT_702.Enabled := false;
          03: BBT_703.Enabled := false;
          04: BBT_704.Enabled := false;
          05: BBT_705.Enabled := false;
          06: BBT_706.Enabled := false;
          07: BBT_707.Enabled := false;
          08: BBT_708.Enabled := false;
          09: BBT_709.Enabled := false;
          10: BBT_710.Enabled := false;
          11: BBT_711.Enabled := false;
          12: BBT_712.Enabled := false;
          13: BBT_713.Enabled := false;
          14: BBT_714.Enabled := false;
          15: BBT_715.Enabled := false;
          16: BBT_716.Enabled := false;
          17: BBT_717.Enabled := false;
          18: BBT_718.Enabled := false;
          19: BBT_719.Enabled := false;
          20: BBT_720.Enabled := false;
          21: BBT_721.Enabled := false;
          22: BBT_722.Enabled := false;
          23: BBT_723.Enabled := false;
          24: BBT_724.Enabled := false;
          25: BBT_725.Enabled := false;
     END; // CASE;    
end;



procedure T_F_EMULADOR_6_EXC.BBT_CLICK_TUDOClick(Sender: TObject);
begin
     BBT_701.Click;
     BBT_702.Click;
     BBT_724.Click;
     BBT_725.Click;
     BBT_703.Click;
     BBT_704.Click;
     BBT_722.Click;
     BBT_723.Click;
     BBT_705.Click;
     BBT_706.Click;     
end;



procedure T_F_EMULADOR_6_EXC.BBT_PREPARARClick(Sender: TObject);
var
     VI_CONTADOR, VI_CONTAR, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2: integer;
     VI_COMBINACOES3, VI_COMBINACOES4 : SMALLINT;
     VS_NUMEROSPRINCIPAIS: STRING;
begin
      FOR VI_CONTAR := 1 TO 6 DO
     BEGIN
        STGR_COMB6.Cells [VI_CONTAR+2,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_COMB6.Cells [VI_CONTAR+2,1] := '00';
     END;
     STGR_COMB6.RowCount := 2;
     STGR_COMB6.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB0.Position :=0;
     PGBR_GERARCOMB.Repaint;
     PGBR_GERARCOMB0.Repaint;
     PGBR_REMREPET.Position := 00;
     PGBR_REMREPET.Repaint;
     PGBR_FILTRARCOMB.Position := 0;
     PGBR_FILTRARCOMB.Repaint;
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

     IF (STRtoINT(STGR_BASE_L6.Cells [4,0] ) =0) THEN
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

    // ======================================================
    // ||||==============================================||||
    // |||| 	Análises Combinatórias e suas sobras     ||||
    // ||||==============================================||||
    // ======================================================
        // ******************
        // **  LINHA_1 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 4 DO
               BEGIN
                    STGR_LINHA_1_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_1_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_1_C1.Cells [1,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_1_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_1_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                    // ----------------------------------
                    // -- CAPTURAR O NÚMERO QUE FALTA  --
                    // ----------------------------------
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                    IF (POS(STGR_BASE_L1.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                    BEGIN
                         STGR_LINHA_1_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                         STGR_LINHA_1_C2.Cells[2,VI_LINHAS2] := 'V';
                    END;
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_L1.Cells[VI_COMBINACOES2,0]+ '-' +
                         STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
                              VI_CONTAR :=0;
                              FOR VI_CONTADOR := 1 TO 4 DO
                              BEGIN
                                   IF (POS(STGR_BASE_L1.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                        IF (VI_CONTAR=1) THEN
                                             STGR_LINHA_1_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                         // ---------------------------------------
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_1_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_1_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_1_C1.Repaint;
     STGR_LINHA_1_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C2.RowCount-1) DO
     BEGIN
               IF     ((STRtoINT(STGR_LINHA_1_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_LINHA_1_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_1_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_LINHA_1_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_1_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_LINHA_1_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C2.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_1_C2.Cells [2,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_1_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_1_100REP.Repaint;

     
        // ******************
        // **  LINHA_2 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 4 DO
               BEGIN
                    STGR_LINHA_2_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_2_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_2_C1.Cells [1,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_2_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_2_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                    // ----------------------------------
                    // -- CAPTURAR O NÚMERO QUE FALTA  --
                    // ----------------------------------
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                    IF (POS(STGR_BASE_L2.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                    BEGIN
                         STGR_LINHA_2_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                         STGR_LINHA_2_C2.Cells[2,VI_LINHAS2] := 'V';                         
                    END;
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_L2.Cells[VI_COMBINACOES2,0]+ '-' +
                         STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
                              VI_CONTAR :=0;
                              FOR VI_CONTADOR := 1 TO 4 DO
                              BEGIN
                                   IF (POS(STGR_BASE_L2.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                        IF (VI_CONTAR=1) THEN
                                             STGR_LINHA_2_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                         // ---------------------------------------
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_2_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_2_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_2_C1.Repaint;
     STGR_LINHA_2_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C2.RowCount-1) DO
     BEGIN
               IF     ((STRtoINT(STGR_LINHA_2_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_LINHA_2_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_2_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_LINHA_2_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_2_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_LINHA_2_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C2.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_2_C2.Cells [2,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_2_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_2_100REP.Repaint;

        // ******************
        // **  LINHA_3 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 4 DO
               BEGIN
                    STGR_LINHA_3_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_3_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_3_C1.Cells [1,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_3_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_3_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
                    // ----------------------------------
                    // -- CAPTURAR O NÚMERO QUE FALTA  --
                    // ----------------------------------
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                    IF (POS(STGR_BASE_L3.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                    BEGIN
                         STGR_LINHA_3_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
                         STGR_LINHA_3_C2.Cells[2,VI_LINHAS2] := 'V';                         
                    END;
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_L3.Cells[VI_COMBINACOES2,0]+ '-' +
                         STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
                              VI_CONTAR :=0;
                              FOR VI_CONTADOR := 1 TO 4 DO
                              BEGIN
                                   IF (POS(STGR_BASE_L3.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                        IF (VI_CONTAR=1) THEN
                                             STGR_LINHA_3_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                         // ---------------------------------------
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_3_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_3_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_3_C1.Repaint;
     STGR_LINHA_3_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C2.RowCount-1) DO
     BEGIN
               IF     ((STRtoINT(STGR_LINHA_3_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_LINHA_3_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_3_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_LINHA_3_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_3_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_LINHA_3_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C2.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_3_C2.Cells [2,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     VI_CONTAR := STGR_LINHA_3_C1.RowCount-1;
     LA_LINHA_3_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_3_100REP.Repaint;

        // ******************
        // **  LINHA_4 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 4 DO
               BEGIN
                    STGR_LINHA_4_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_4_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_4_C1.Cells [1,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_4_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_4_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
                    // ----------------------------------
                    // -- CAPTURAR O NÚMERO QUE FALTA  --
                    // ----------------------------------
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                    IF (POS(STGR_BASE_L4.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                    BEGIN
                         STGR_LINHA_4_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
                         STGR_LINHA_4_C2.Cells[2,VI_LINHAS2] := 'V';
                    END;
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_L4.Cells[VI_COMBINACOES2,0]+ '-' +
                         STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
                              VI_CONTAR :=0;
                              FOR VI_CONTADOR := 1 TO 4 DO
                              BEGIN
                                   IF (POS(STGR_BASE_L4.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                        IF (VI_CONTAR=1) THEN
                                             STGR_LINHA_4_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                         // ---------------------------------------
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_4_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_4_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_4_C1.Repaint;
     STGR_LINHA_4_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C2.RowCount-1) DO
     BEGIN
               IF     ((STRtoINT(STGR_LINHA_4_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_LINHA_4_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_4_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_LINHA_4_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_4_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_LINHA_4_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C2.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_4_C2.Cells [2,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     VI_CONTAR := STGR_LINHA_4_C1.RowCount-1;
     LA_LINHA_4_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_4_100REP.Repaint;

        // ******************
        // **  LINHA_5 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 4 DO
               BEGIN
                    STGR_LINHA_5_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_5_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_5_C1.Cells [1,VI_LINHAS2]:= STGR_BASE_L5.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_5_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L5.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_5_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L5.Cells[VI_COMBINACOES3,0];
                    // ----------------------------------
                    // -- CAPTURAR O NÚMERO QUE FALTA  --
                    // ----------------------------------
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_L5.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_L5.Cells[VI_COMBINACOES2,0];
                    IF (POS(STGR_BASE_L5.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                    BEGIN
                         STGR_LINHA_5_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES3,0];
                         STGR_LINHA_5_C2.Cells[2,VI_LINHAS2] := 'V';
                    END;
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_L5.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_L5.Cells[VI_COMBINACOES2,0]+ '-' +
                         STGR_BASE_L5.Cells[VI_COMBINACOES3,0];
                              VI_CONTAR :=0;
                              FOR VI_CONTADOR := 1 TO 4 DO
                              BEGIN
                                   IF (POS(STGR_BASE_L5.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                        IF (VI_CONTAR=1) THEN
                                             STGR_LINHA_5_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                         // ---------------------------------------
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_5_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_5_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_5_C1.Repaint;
     STGR_LINHA_5_C2.Repaint;
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C2.RowCount-1) DO
     BEGIN
               IF     ((STRtoINT(STGR_LINHA_5_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_LINHA_5_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_5_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_LINHA_5_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_5_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_LINHA_5_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C2.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_5_C2.Cells [2,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     VI_CONTAR := STGR_LINHA_5_C1.RowCount-1;
     LA_LINHA_5_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_5_100REP.Repaint;

        // ******************
        // **  LINHA_6 **
        // ******************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 3 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 4 DO
               BEGIN
                    STGR_LINHA_6_C1.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_6_C2.Cells [0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_6_C1.Cells [1,VI_LINHAS2]:= STGR_BASE_L6.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_6_C1.Cells [2,VI_LINHAS2]:= STGR_BASE_L6.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_6_C1.Cells [3,VI_LINHAS2]:= STGR_BASE_L6.Cells[VI_COMBINACOES3,0];
                    // ----------------------------------
                    // -- CAPTURAR O NÚMERO QUE FALTA  --
                    // ----------------------------------
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_L6.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_L6.Cells[VI_COMBINACOES2,0];
                    IF (POS(STGR_BASE_L6.Cells[VI_COMBINACOES3,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                    BEGIN
                         STGR_LINHA_6_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L6.Cells[VI_COMBINACOES3,0];
                         STGR_LINHA_6_C2.Cells[2,VI_LINHAS2] := 'V';                         
                    END;
                    VS_NUMEROSPRINCIPAIS:= STGR_BASE_L6.Cells[VI_COMBINACOES1,0] + '-' +
                         STGR_BASE_L6.Cells[VI_COMBINACOES2,0]+ '-' +
                         STGR_BASE_L6.Cells[VI_COMBINACOES3,0];
                              VI_CONTAR :=0;
                              FOR VI_CONTADOR := 1 TO 4 DO
                              BEGIN
                                   IF (POS(STGR_BASE_L6.Cells[VI_CONTADOR,0], VS_NUMEROSPRINCIPAIS)=0) THEN
                                   BEGIN
                                        VI_CONTAR := VI_CONTAR +1;
                                        IF (VI_CONTAR=1) THEN
                                             STGR_LINHA_6_C2.Cells[1,VI_LINHAS2] := STGR_BASE_L6.Cells[VI_CONTADOR,0];
                                   END;
                              END; // FOR VI_CONTADOR
                         // ---------------------------------------
                         VI_LINHAS2 := VI_LINHAS2 +1;
                         STGR_LINHA_6_C1.RowCount := VI_LINHAS2;
                         STGR_LINHA_6_C2.RowCount := VI_LINHAS2;
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
               // -------------------------------
               // --  Marcando os excluídos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_6_C2.RowCount-1) DO
     BEGIN
               IF     ((STRtoINT(STGR_LINHA_6_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01.Text))
                  THEN
                    STGR_LINHA_6_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_6_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_LINHA_6_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_6_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_LINHA_6_C2.Cells [2 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C2.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_5_C2.Cells [2,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     STGR_LINHA_6_C1.Repaint;
     STGR_LINHA_6_C2.Repaint;
     VI_CONTAR := STGR_LINHA_6_C1.RowCount-1;
     LA_LINHA_6_100REP.Caption := INTtoSTR(VI_CONTAR);
     LA_LINHA_6_100REP.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     Self.WindowState :=  wsNormal;     
     SELF.Repaint;
            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_00B_6EXC_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_00B_6EXC_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_00B_6EXC_DEFINICAO; ')  ;
            SELF.IBQ_COMBINACOES.Open;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00b_6EXC_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     SHOWMESSAGE('OK');
end;





procedure T_F_EMULADOR_6_EXC.BBT_GERAR_MENUClick(Sender: TObject);
var
     VI_LINHAS1, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR_COMB1, VI_TOTAL_COMB1, VI_CONTASEL1: integer;
     VI_COMBINACOES3, VI_COMBINACOES4, VI_COMBINACOES5, VI_COMBINACOES6: SMALLINT;
     VI_SOMA1: SMALLINT;
     VsI_FLAG_SOMATORIA1, VsI_FLAG_SOMATORIA2: SMALLINT;

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
        FOR VI_CONTAR :=1 TO 6 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB6.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 1;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB6.Cells [VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15


    PROCEDURE PR_GRAVAR_DADOS (VC_BEGIN_END: STRING; OUT VI_LINHAS2:INTEGER; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DADOS1, VC_DADOS2, VC_DADOS3, VC_DADOS4, VC_DADOS5, VC_DADOS6, VC_COMBINACOES : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
            VC_DADOS1 := RIGHTSTR ('0'+STGR_BASE_L1.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L1.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[4,0],2);
            VC_DADOS2 := RIGHTSTR ('0'+STGR_BASE_L2.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L2.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[4,0],2);
            VC_DADOS3 := RIGHTSTR ('0'+STGR_BASE_L3.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L3.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[4,0],2);
            VC_DADOS4 := RIGHTSTR ('0'+STGR_BASE_L4.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L4.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[4,0],2);
            VC_DADOS5 := RIGHTSTR ('0'+STGR_BASE_L5.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L5.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L5.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L5.Cells[4,0],2);
            VC_DADOS6 := RIGHTSTR ('0'+STGR_BASE_L6.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L6.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L6.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L6.Cells[4,0],2);
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO FILTRO_00B_6EXC_DEFINICAO (LINHA_1, LINHA_2, LINHA_3, LINHA_4, LINHA_5, LINHA_6, SOMA_COL_1_INI, SOMA_COL_1_FINAL, SOMA_COL_2_INI, ';
            VC_QUERY  := VC_QUERY +' SOMA_COL_2_FINAL, EXC_1, EXC_2, EXC_3, CONTADOR_C1, TOTAL_CONTADOR_C1, ';
            VC_QUERY  := VC_QUERY +' DATA_DEFINICAO, HORA_DEFINICAO) VALUES('+#39+ VC_DADOS1 + #39 +','  +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 + #39 +','  +#39+ VC_DADOS4 + #39 +','  +#39+ VC_DADOS5 + #39 +','  +#39+ VC_DADOS6 ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMAS_C1_INI.Text    + #39 +','+#39+ ED_SOMAS_C1_FINAL.Text  + #39 +','+#39+ ED_SOMAS_C2_INI.Text+ #39 +','+#39+ ED_SOMAS_C2_FINAL.Text ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01.Text          + #39 +','+#39+ ED_EXC_02.Text          + #39 +','+#39+ ED_EXC_03.Text       + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[])+ #39 +','+#39+FORMATDATETIME('h:n:s',time())   +#39+');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;                
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB15.RowCount-1;
        IF (VC_BEGIN_END = 'FIM') THEN
        BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMB6.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COMB6.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES :='';
                FOR VI_CNTCELULAS := 1 TO 6 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_COMB6.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
                END; // FOR VI_CNTCELULAS
                VC_QUERY  := 'INSERT INTO FILTRO_00B_6EXC_DADOS (EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, DADOS) VALUES(' +#39+ STGR_COMB6.Cells[1,VI_AN_COMB1] + #39 +','+#39+ STGR_COMB6.Cells[2,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB6.Cells[3,VI_AN_COMB1] + #39 +','+#39+STGR_COMB6.Cells[4,VI_AN_COMB1] + #39 +','+#39+STGR_COMB6.Cells[5,VI_AN_COMB1] + #39 +','+#39+STGR_COMB6.Cells[6,VI_AN_COMB1] + #39 +','+#39+VC_COMBINACOES + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Clear;
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
                SELF.IBQ_COMBINACOES.SQL.Clear;
                SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_00B_6EXC_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            VI_LINHAS2:=1;
            STGR_COMB6.RowCount := VI_LINHAS2;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
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
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR VI_CONTASEL1 := 1 TO 6 DO
     BEGIN
        STGR_COMB6.Cells [VI_CONTASEL1+0,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB6.Cells [VI_CONTASEL1+0,1] := '00';
     END;
     STGR_COMB6.RowCount := 2;
     STGR_COMB6.Repaint;
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
     FOR VI_COMBINACOES1 := 1 TO TRUNC((STGR_LINHA_1_C2.RowCount-1)/1) DO
     BEGIN
          IF ((STGR_LINHA_1_C2.Cells[2,VI_COMBINACOES1]) = 'F')
          THEN
               CONTINUE;
          FOR VI_COMBINACOES2 := 1 TO (STGR_LINHA_2_C2.RowCount-1) DO
          BEGIN
               IF ((STGR_LINHA_2_C2.Cells[2,VI_COMBINACOES2]) = 'F')
               THEN
                    CONTINUE;
               FOR VI_COMBINACOES3 := 1 TO TRUNC((STGR_LINHA_3_C2.RowCount-1)/1) DO
               BEGIN
                    IF ((STGR_LINHA_3_C2.Cells[2,VI_COMBINACOES3]) = 'F')
                    THEN
                         CONTINUE;
                    FOR VI_COMBINACOES4 := 1 TO (STGR_LINHA_4_C2.RowCount-1) DO
                    BEGIN
                         IF ((STGR_LINHA_4_C2.Cells[2,VI_COMBINACOES4]) = 'F')
                         THEN
                              CONTINUE;
                         FOR VI_COMBINACOES5 := 1 TO TRUNC((STGR_LINHA_5_C2.RowCount-1)/1) DO
                         BEGIN
                              IF ((STGR_LINHA_5_C2.Cells[2,VI_COMBINACOES5]) = 'F')
                              THEN
                                   CONTINUE;
                              FOR VI_COMBINACOES6:= 1 TO TRUNC((STGR_LINHA_5_C2.RowCount-1)/1) DO
                              BEGIN
                                   IF ((STGR_LINHA_6_C2.Cells[2,VI_COMBINACOES5]) = 'F')
                                   THEN
                                        CONTINUE;
                                  VI_SOMA1 := STRtoINT(STGR_LINHA_1_C2.Cells[1,VI_COMBINACOES1])
                                   + STRtoINT(STGR_LINHA_2_C2.Cells[1,VI_COMBINACOES2])
                                   + STRtoINT(STGR_LINHA_3_C2.Cells[1,VI_COMBINACOES3])
                                   + STRtoINT(STGR_LINHA_4_C2.Cells[1,VI_COMBINACOES4])
                                   + STRtoINT(STGR_LINHA_5_C2.Cells[1,VI_COMBINACOES5])
                                   + STRtoINT(STGR_LINHA_6_C2.Cells[1,VI_COMBINACOES6]);
                                   IF (VI_SOMA1 >= STRtoINT(ED_SOMAS_C2_INI.Text)) AND (VI_SOMA1 <= STRtoINT(ED_SOMAS_C2_FINAL.Text) ) THEN
                                        VsI_FLAG_SOMATORIA1 := 1
                                   ELSE
                                        CONTINUE;
                                  VI_SOMA1 := STRtoINT(STGR_LINHA_1_C1.Cells[1,VI_COMBINACOES1]) + STRtoINT(STGR_LINHA_1_C1.Cells[2,VI_COMBINACOES1])  + STRtoINT(STGR_LINHA_1_C1.Cells[3,VI_COMBINACOES1]) 
                                   + STRtoINT(STGR_LINHA_2_C1.Cells[1,VI_COMBINACOES2]) + STRtoINT(STGR_LINHA_2_C1.Cells[2,VI_COMBINACOES2]) + STRtoINT(STGR_LINHA_2_C1.Cells[3,VI_COMBINACOES2])
                                   + STRtoINT(STGR_LINHA_3_C1.Cells[1,VI_COMBINACOES3]) + STRtoINT(STGR_LINHA_3_C1.Cells[2,VI_COMBINACOES3]) + STRtoINT(STGR_LINHA_3_C1.Cells[3,VI_COMBINACOES3]) 
                                   + STRtoINT(STGR_LINHA_4_C1.Cells[1,VI_COMBINACOES4]) + STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES4]) + STRtoINT(STGR_LINHA_4_C1.Cells[3,VI_COMBINACOES4]) 
                                   + STRtoINT(STGR_LINHA_5_C1.Cells[1,VI_COMBINACOES5]) + STRtoINT(STGR_LINHA_5_C1.Cells[2,VI_COMBINACOES5]) + STRtoINT(STGR_LINHA_5_C1.Cells[3,VI_COMBINACOES5])
                                   + STRtoINT(STGR_LINHA_6_C1.Cells[1,VI_COMBINACOES6]) + STRtoINT(STGR_LINHA_6_C1.Cells[2,VI_COMBINACOES6]) + STRtoINT(STGR_LINHA_6_C1.Cells[3,VI_COMBINACOES6]) ;
                                   IF (VI_SOMA1 >= STRtoINT(ED_SOMAS_C1_INI.Text)) AND (VI_SOMA1 <= STRtoINT(ED_SOMAS_C1_FINAL.Text)) THEN
                                        VsI_FLAG_SOMATORIA2 := 1
                                   ELSE
                                        CONTINUE;
                                   STGR_COMB6.Cells[1, VI_LINHAS2] := STGR_LINHA_1_C2.Cells[1, VI_COMBINACOES1];
                                   STGR_COMB6.Cells[2, VI_LINHAS2] := STGR_LINHA_2_C2.Cells[1, VI_COMBINACOES2];
                                   STGR_COMB6.Cells[3, VI_LINHAS2] := STGR_LINHA_3_C2.Cells[1, VI_COMBINACOES3];
                                   STGR_COMB6.Cells[4, VI_LINHAS2] := STGR_LINHA_4_C2.Cells[1, VI_COMBINACOES4];
                                   STGR_COMB6.Cells[5, VI_LINHAS2] := STGR_LINHA_5_C2.Cells[1, VI_COMBINACOES5];
                                   STGR_COMB6.Cells[6, VI_LINHAS2] := STGR_LINHA_6_C2.Cells[1, VI_COMBINACOES6];
                                   STGR_COMB6.Cells[0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);

                                   IF (VsI_FLAG_SOMATORIA1 =1) AND (VsI_FLAG_SOMATORIA2 =1)
                                   THEN
                                   BEGIN
                                         //PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                                         //PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2);
                                        VI_LINHAS2 := VI_LINHAS2+1 ;
                                        VI_LINHAS1 := VI_LINHAS1+1 ;
                                        //PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_GRUPO_A_TODOS5.RowCount-1));
                                   END;// IF
                              END; // VI_COMBINACOES6
                         END; // FOR VI_COMBINACOES5
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
               PGBR_GERARCOMB0.Position := TRUNC(VI_COMBINACOES2/(STGR_LINHA_2_C2.RowCount-1)*100);
               PGBR_GERARCOMB0.Repaint;
          END; // FOR VI_COMBINACOES2
         // END;// IF (STGR_GRUPO_A_TODOS
                    LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_CONTAR_COMB1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4*VI_COMBINACOES5)+'   ';
                    LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS2-1);
                    LA_QTD_COMB.Repaint;
                    //SLEEP(30);
          LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_CONTAR_COMB1)+ ' DE '+  INTtoSTR(VI_TOTAL_COMB1)+ ' - ' + INTtoSTR(TRUNC(VI_CONTAR_COMB1/VI_TOTAL_COMB1*100))+ ' %  ';
          PGBR_GERARCOMB.Position := TRUNC(VI_CONTAR_COMB1/VI_TOTAL_COMB1*100);
          LA_GERAR_COMB.Repaint;
          PGBR_GERARCOMB.Repaint;
          STGR_COMB6.RowCount := VI_LINHAS2;
          STGR_COMB6.Repaint;
          Self.WindowState := wsMinimized;
          Self.WindowState :=  wsNormal;
          SELF.Repaint;
     END; // FOR VI_COMBINACOES1
     LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4)+'   ';
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS2-1);
     STGR_COMB6.Repaint;
     LA_QTD_COMB.Repaint;
     LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_CONTAR_COMB1)+ ' DE '+  INTtoSTR(VI_TOTAL_COMB1)+ ' - ' + INTtoSTR(TRUNC(VI_CONTAR_COMB1/VI_TOTAL_COMB1*100))+ ' %  ';
     //LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_GRUPO_A_TODOS5.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_GRUPO_A_TODOS5.RowCount-1)*100))+ ' %  ';
     LA_GERAR_COMB.Repaint;     
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
     TRY
          STGR_COMB6.FixedRows := 1;
     EXCEPT
          //
     END;
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
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4*VI_COMBINACOES5)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_00b_6EXC_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTAR_COMB1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00b_6EXC_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTAR_COMB1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     BBT_BLOCO_NOTAS.SetFocus;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00b_6EXC_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     PA_REMOVEUREPET.Left := 870;     
end;




PROCEDURE T_F_EMULADOR_6_EXC.PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-2 - Retirando os repetidos');
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_00B_6EXC_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DISTINCT(DADOS), EXC1, EXC2, EXC3, EXC4, EXC5,EXC6 FROM FILTRO_00B_6EXC_DADOS  ORDER BY DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
           IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('Recuperando os dados');
       // ********************
       // **   ENCERRANDO   **
       // ********************
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
       STGR_COMB6.RowCount := 0;
       SELF.IBQ_COMBINACOES.First;
       FOR VI_AN_COMB1:= 1 TO  VI_CONTAR DO
       BEGIN
           STGR_COMB6.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB6.Cells [1, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC1').AsString;
           STGR_COMB6.Cells [2, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC2').AsString;
           STGR_COMB6.Cells [3, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC3').AsString;
           STGR_COMB6.Cells [4, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC4').AsString;
           STGR_COMB6.Cells [5, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC5').AsString;
           STGR_COMB6.Cells [6, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC6').AsString;
               STGR_COMB6.RowCount := VI_AN_COMB1;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       STGR_COMB6.RowCount := VI_AN_COMB1;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_00B_6EXC_DEFINICAO;')  ;
       SELF.IBQ_COMBINACOES.Open;
       STGR_COMB6.REPAINT;
           PGBR_REMREPET.Position := 100;
       LA_TOTAL_100REPET.Caption := INTtoSTR(STGR_COMB6.RowCount);
       STGR_COMB6.REPAINT;
       LA_TOTAL_100REPET.Repaint;

           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();




procedure T_F_EMULADOR_6_EXC.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := TRUE;     
     PA_INICIAL.Left := 520;
end;



procedure T_F_EMULADOR_6_EXC.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, VI_CONTAR : INTEGER;
    VC_COMBINACOES : string;
begin
    MEM_COMBINACOES_TODAS.Clear;
   	MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + INTtoSTR(STGR_COMB6.RowCount-1)) ;
   	MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
    FOR VI_CONTAR := 1 TO STGR_COMB6.RowCount-1 DO
    BEGIN
		VC_COMBINACOES :=INTtoSTR(VI_CONTAR)+'=> ';
    	FOR VI_AN_COMB1 := 1 TO 6 DO
        BEGIN
			VC_COMBINACOES := VC_COMBINACOES + STGR_COMB6.Cells[VI_AN_COMB1,VI_CONTAR] +' ';
        END; // FOR VI_AN_COMB1
       	MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\EXCLUIDOS_6.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\EXCLUIDOS_6.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado
   showmessage('BLOCO DE NOTAS GERADO');
end;



procedure T_F_EMULADOR_6_EXC.BT_REAJUSTARClick(Sender: TObject);
begin
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     PA_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     STGR_COMB6.Visible := TRUE;
     STGR_COMB6.Enabled := TRUE;
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


procedure T_F_EMULADOR_6_EXC.BBT_CARREGARClick(Sender: TObject);
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
          SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00b_6EXC_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
          SELF.IBQ_COMBINACOES.ExecSQL;
          TRY
               SELF.IBTransaction1.Commit;
          EXCEPT
               //
          END;
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
end;



procedure T_F_EMULADOR_6_EXC.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_00B_6EXC_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;

end.
