unit Loto_Facil_3_exc6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, Grids, IBDatabase, DB, StrUtils,
  IBCustomDataSet, IBQuery;

type
  T_F_EMULADOR_12p6_6_EXC = class(TForm)
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
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR: TBitBtn;
    BBT_GERAR_1: TBitBtn;
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
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    BBT_CARREGAR: TButton;
    BBT_SAIR: TButton;
    LA_LINHA6EXC_100REP: TLabel;
    Label13: TLabel;
    STGR_COMB6: TStringGrid;
    Label14: TLabel;
    Bevel6: TBevel;
    PA_NAO_EXCLUIDOS: TPanel;
    Label19: TLabel;
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
    Label20: TLabel;
    STGR_COMB12: TStringGrid;
    Panel1: TPanel;
    Label23: TLabel;
    STGR_BASE2_L1: TStringGrid;
    Label24: TLabel;
    STGR_BASE2_L2: TStringGrid;
    Label25: TLabel;
    STGR_BASE2_L3: TStringGrid;
    Label26: TLabel;
    STGR_BASE2_L4: TStringGrid;
    Label27: TLabel;
    STGR_BASE2_L5: TStringGrid;
    Label28: TLabel;
    STGR_BASE2_L6: TStringGrid;
    BBT_GERAR2: TBitBtn;
    PA_EXCLUIDOS: TPanel;
    Label30: TLabel;
    ED_EXC_201: TEdit;
    ED_EXC_202: TEdit;
    Label32: TLabel;
    ED_EXC_203: TEdit;
    STGR_BASE1_L1: TStringGrid;
    Label8: TLabel;
    Label33: TLabel;
    STGR_BASE1_L2: TStringGrid;
    STGR_BASE1_L4: TStringGrid;
    Label36: TLabel;
    Label40: TLabel;
    STGR_BASE1_L3: TStringGrid;
    Label41: TLabel;
    STGR_BASE1_L5: TStringGrid;
    Label42: TLabel;
    STGR_BASE1_L6: TStringGrid;
    STGR_BASE2_L6EXC: TStringGrid;
    Label43: TLabel;
    LA_GERAR_COMB0: TLabel;
    ED_FLAG_LINHA_EXC: TEdit;
    LA_GERAR_COMB00: TLabel;
    BBT_100REPET: TBitBtn;
    Label50: TLabel;
    LA_rTOTAL_100REPET: TLabel;
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
    procedure BBT_GERAR_1Click(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
    procedure BT_REAJUSTARClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_GERAR2Click(Sender: TObject);
    procedure BBT_100REPETClick(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
  public
    { Public declarations }
  end;

var
  _F_EMULADOR_12p6_6_EXC: T_F_EMULADOR_12p6_6_EXC;

implementation

{$R *.dfm}


procedure T_F_EMULADOR_12p6_6_EXC.FormCreate(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
     SELF.ClientWidth  := 1223;
     SELF.ClientHeight := 730;
     SELF.Top  := 69;
     SELF.Left := 9;
     bbt_close.Left := SELF.ClientWidth-35;
    FOR VI_CONTAR := 2 TO 18 DO
    BEGIN
        STGR_COMB6.Cells[VI_CONTAR,1] := '0';
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
        STGR_COMB6.Cells[VI_CONTAR,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
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
    PA_EXECUTAR_FILTRO.Enabled := false;
end;



procedure T_F_EMULADOR_12p6_6_EXC.FormClose(Sender: TObject;
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



procedure T_F_EMULADOR_12p6_6_EXC.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;


procedure T_F_EMULADOR_12p6_6_EXC.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(1);
    BBT_701.Enabled := FALSE;
end;


procedure T_F_EMULADOR_12p6_6_EXC.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(2);
    BBT_702.Enabled := FALSE;
end;


procedure T_F_EMULADOR_12p6_6_EXC.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(3);
    BBT_703.Enabled := FALSE;
end;


procedure T_F_EMULADOR_12p6_6_EXC.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(4);
    BBT_704.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(5);
    BBT_705.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(6);
    BBT_706.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(7);
    BBT_707.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(8);
    BBT_708.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(10);
    BBT_710.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(9);
    BBT_709.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(11);
    BBT_711.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(12);
    BBT_712.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(13);
    BBT_713.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(14);
    BBT_714.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(15);
    BBT_715.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(16);
    BBT_716.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(17);
    BBT_717.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(18);
    BBT_718.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(19);
    BBT_719.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(20);
    BBT_720.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(21);
    BBT_721.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(22);
    BBT_722.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(23);
    BBT_723.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(24);
    BBT_724.Enabled := FALSE;
end;

procedure T_F_EMULADOR_12p6_6_EXC.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(25);
    BBT_725.Enabled := FALSE;
end;



PROCEDURE T_F_EMULADOR_12p6_6_EXC.PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3, VI_CONTAR4, VI_CONTAR5, VI_CONTAR6: INTEGER;
BEGIN
   FOR VI_CONTAR := 1 TO 4 DO
    BEGIN
        IF (STRtoINT (STGR_BASE_L1.Cells[VI_CONTAR,0]) = 0) THEN
        BEGIN
            STGR_BASE_L1.Cells[VI_CONTAR,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
            EXIT;
        END ELSE
        IF (VI_CONTAR = 4) THEN
        BEGIN
            FOR VI_CONTAR2 :=1 TO 4 DO
            BEGIN
                IF (STRtoINT (STGR_BASE_L2.Cells[VI_CONTAR2,0]) = 0) THEN
                BEGIN
                    STGR_BASE_L2.Cells[VI_CONTAR2,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                    EXIT;
                END ELSE
                IF (VI_CONTAR2 = 4) THEN
                BEGIN
                    FOR VI_CONTAR3 :=1 TO 4 DO
                    BEGIN
                        IF (STRtoINT (STGR_BASE_L3.Cells[VI_CONTAR3,0]) = 0) THEN
                        BEGIN
                            STGR_BASE_L3.Cells[VI_CONTAR3,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                            EXIT  ;
                        END ELSE
                        IF (VI_CONTAR3 = 4) THEN
                        BEGIN
                            FOR VI_CONTAR4 :=1 TO 4 DO
                            BEGIN
                                IF (STRtoINT (STGR_BASE_L4.Cells[VI_CONTAR4,0]) = 0) THEN
                                BEGIN
                                    STGR_BASE_L4.Cells[VI_CONTAR4,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                    EXIT ;
                            END ELSE
                                IF (VI_CONTAR4 = 4) THEN
                                BEGIN
                                    FOR VI_CONTAR5 :=1 TO 4 DO
                                    BEGIN
                                        IF (STRtoINT (STGR_BASE_L5.Cells[VI_CONTAR5,0]) = 0) THEN
                                        BEGIN
                                            STGR_BASE_L5.Cells[VI_CONTAR5,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                            EXIT ;
                                    END ELSE
                                        IF (VI_CONTAR5 = 4) THEN
                                        BEGIN
                                            FOR VI_CONTAR6 :=1 TO 4 DO
                                            BEGIN
                                                IF (STRtoINT (STGR_BASE_L6.Cells [VI_CONTAR6,0]) = 0) THEN
                                                BEGIN
                                                    STGR_BASE_L6.Cells[VI_CONTAR6,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
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



procedure T_F_EMULADOR_12p6_6_EXC.BT_NOVA_SIMULACAOClick(Sender: TObject);
VAR
     VsI_CONTAR : SMALLINT;
begin
     BBT_RECOMECAR.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_1.Enabled := TRUE;
     BBT_GERAR2.Enabled := TRUE;     
     BT_REAJUSTAR.Enabled :=  TRUE;
     FOR VsI_CONTAR := 1 TO 6 DO
     BEGIN
          STGR_COMB6.Cells[VsI_CONTAR+2,0] := '-'+INTtoSTR(VsI_CONTAR)+'-';
          STGR_BASE2_L6EXC.Cells[VsI_CONTAR,0] :='0';
          STGR_COMB6.Cells[VsI_CONTAR+2,1] := '00';
     END;
     FOR VsI_CONTAR := 1 TO 4 DO
     BEGIN
          STGR_BASE_L1.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L2.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L3.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L4.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L5.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_L6.Cells[VsI_CONTAR,0] := '0';
     END;
     FOR VsI_CONTAR := 1 TO 3 DO
     BEGIN
          STGR_BASE1_L1.Cells[VsI_CONTAR,1] := '0';
          STGR_BASE1_L2.Cells[VsI_CONTAR,1] := '0';
          STGR_BASE1_L3.Cells[VsI_CONTAR,1] := '0';
          STGR_BASE1_L4.Cells[VsI_CONTAR,1] := '0';
          STGR_BASE1_L5.Cells[VsI_CONTAR,1] := '0';
          STGR_BASE1_L6.Cells[VsI_CONTAR,1] := '0';
          STGR_BASE2_L1.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE2_L2.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE2_L3.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE2_L4.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE2_L5.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE2_L6.Cells[VsI_CONTAR,0] := '0';
          STGR_COMB6.Cells[VsI_CONTAR,0] := '0';
     END;
     FOR VsI_CONTAR := 2 TO 13 DO
     BEGIN
        STGR_COMB12.Cells[VsI_CONTAR,0] := '-'+INTtoSTR(VsI_CONTAR-1)+'-';
        STGR_COMB12.Cells[VsI_CONTAR,1] := '00';
     END;
     FOR VsI_CONTAR := 1 TO 6 DO
     BEGIN
        STGR_COMB12.Cells[VsI_CONTAR+14,0] := '-'+INTtoSTR(VsI_CONTAR)+'-';
        STGR_COMB12.Cells[VsI_CONTAR+14,1] := '00';
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
     STGR_BASE1_L1.RowCount := 2;
     STGR_BASE1_L2.RowCount := 2;
     STGR_BASE1_L3.RowCount := 2;
     STGR_BASE1_L4.RowCount := 2;
     STGR_BASE1_L5.RowCount := 2;
     STGR_BASE1_L6.RowCount := 2;
     STGR_COMB6.RowCount := 2;
     STGR_COMB12.RowCount := 2;     
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





procedure T_F_EMULADOR_12p6_6_EXC.RB_RES_GABARITOSClick(Sender: TObject);
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


procedure T_F_EMULADOR_12p6_6_EXC.RB_GABARITOClick(Sender: TObject);
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


procedure T_F_EMULADOR_12p6_6_EXC.RB_RESULTADOSClick(Sender: TObject);
begin
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible  := TRUE;
end;



procedure T_F_EMULADOR_12p6_6_EXC.TRB_C1_INIChange(Sender: TObject);
begin
     IF TRB_C1_INI.Position = 1 THEN
          ED_SOMAS_C1_INI.Text := '224';
     IF TRB_C1_INI.Position = 2 THEN
          ED_SOMAS_C1_INI.Text := '225';
     IF TRB_C1_INI.Position = 3 THEN
          ED_SOMAS_C1_INI.Text := '226';
     IF TRB_C1_INI.Position = 4 THEN
          ED_SOMAS_C1_INI.Text := '227';
     IF TRB_C1_INI.Position = 5 THEN
          ED_SOMAS_C1_INI.Text := '228';
     IF TRB_C1_INI.Position = 6 THEN
          ED_SOMAS_C1_INI.Text := '229';
     IF TRB_C1_INI.Position = 7 THEN
          ED_SOMAS_C1_INI.Text := '230';
     IF TRB_C1_INI.Position = 8 THEN
          ED_SOMAS_C1_INI.Text := '231';
     IF TRB_C1_INI.Position = 9 THEN
          ED_SOMAS_C1_INI.Text := '232';
     IF TRB_C1_INI.Position = 10 THEN
          ED_SOMAS_C1_INI.Text := '233';
     IF TRB_C1_INI.Position = 11 THEN
          ED_SOMAS_C1_INI.Text := '234';
     IF TRB_C1_INI.Position = 12 THEN
          ED_SOMAS_C1_INI.Text := '235';
     IF TRB_C1_INI.Position = 13 THEN
          ED_SOMAS_C1_INI.Text := '236';
     IF TRB_C1_INI.Position = 14 THEN
          ED_SOMAS_C1_INI.Text := '237';
     IF TRB_C1_INI.Position = 15 THEN
          ED_SOMAS_C1_INI.Text := '238';
     IF TRB_C1_INI.Position = 16 THEN
          ED_SOMAS_C1_INI.Text := '239';
     IF TRB_C1_INI.Position = 17 THEN
          ED_SOMAS_C1_INI.Text := '240';
     IF TRB_C1_INI.Position = 18 THEN
          ED_SOMAS_C1_INI.Text := '241';
     IF TRB_C1_INI.Position = 19 THEN
          ED_SOMAS_C1_INI.Text := '242';
     IF TRB_C1_INI.Position = 20 THEN
          ED_SOMAS_C1_INI.Text := '243';
     IF TRB_C1_INI.Position = 21 THEN
          ED_SOMAS_C1_INI.Text := '244';
end;


procedure T_F_EMULADOR_12p6_6_EXC.TRB_C1_FINALChange(Sender: TObject);
begin
     IF TRB_C1_FINAL.Position = 1 THEN
          ED_SOMAS_C1_FINAL.Text := '224';
     IF TRB_C1_FINAL.Position = 2 THEN
          ED_SOMAS_C1_FINAL.Text := '225';
     IF TRB_C1_FINAL.Position = 3 THEN
          ED_SOMAS_C1_FINAL.Text := '226';
     IF TRB_C1_FINAL.Position = 4 THEN
          ED_SOMAS_C1_FINAL.Text := '227';
     IF TRB_C1_FINAL.Position = 5 THEN
          ED_SOMAS_C1_FINAL.Text := '228';
     IF TRB_C1_FINAL.Position = 6 THEN
          ED_SOMAS_C1_FINAL.Text := '229';
     IF TRB_C1_FINAL.Position = 7 THEN
          ED_SOMAS_C1_FINAL.Text := '230';
     IF TRB_C1_FINAL.Position = 8 THEN
          ED_SOMAS_C1_FINAL.Text := '231';
     IF TRB_C1_FINAL.Position = 9 THEN
          ED_SOMAS_C1_FINAL.Text := '232';
     IF TRB_C1_FINAL.Position = 10 THEN
          ED_SOMAS_C1_FINAL.Text := '233';
     IF TRB_C1_FINAL.Position = 11 THEN
          ED_SOMAS_C1_FINAL.Text := '234';
     IF TRB_C1_FINAL.Position = 12 THEN
          ED_SOMAS_C1_FINAL.Text := '235';
     IF TRB_C1_FINAL.Position = 13 THEN
          ED_SOMAS_C1_FINAL.Text := '236';
     IF TRB_C1_FINAL.Position = 14 THEN
          ED_SOMAS_C1_FINAL.Text := '237';
     IF TRB_C1_FINAL.Position = 15 THEN
          ED_SOMAS_C1_FINAL.Text := '238';
     IF TRB_C1_FINAL.Position = 16 THEN
          ED_SOMAS_C1_FINAL.Text := '239';
     IF TRB_C1_FINAL.Position = 17 THEN
          ED_SOMAS_C1_FINAL.Text := '240';
     IF TRB_C1_FINAL.Position = 18 THEN
          ED_SOMAS_C1_FINAL.Text := '241';
     IF TRB_C1_FINAL.Position = 19 THEN
          ED_SOMAS_C1_FINAL.Text := '242';
     IF TRB_C1_FINAL.Position = 20 THEN
          ED_SOMAS_C1_FINAL.Text := '243';
     IF TRB_C1_FINAL.Position = 21 THEN
          ED_SOMAS_C1_FINAL.Text := '244';
end;


procedure T_F_EMULADOR_12p6_6_EXC.TRB_C2_INIChange(Sender: TObject);
begin
     IF TRB_C2_INI.Position = 1 THEN
          ED_SOMAS_C2_INI.Text := '68';
     IF TRB_C2_INI.Position = 2 THEN
          ED_SOMAS_C2_INI.Text := '69';
     IF TRB_C2_INI.Position = 3 THEN
          ED_SOMAS_C2_INI.Text := '70';
     IF TRB_C2_INI.Position = 4 THEN
          ED_SOMAS_C2_INI.Text := '71';
     IF TRB_C2_INI.Position = 5 THEN
          ED_SOMAS_C2_INI.Text := '72';
     IF TRB_C2_INI.Position = 6 THEN
          ED_SOMAS_C2_INI.Text := '73';
     IF TRB_C2_INI.Position = 7 THEN
          ED_SOMAS_C2_INI.Text := '74';
     IF TRB_C2_INI.Position = 8 THEN
          ED_SOMAS_C2_INI.Text := '75';
     IF TRB_C2_INI.Position = 9 THEN
          ED_SOMAS_C2_INI.Text := '76';
     IF TRB_C2_INI.Position = 10 THEN
          ED_SOMAS_C2_INI.Text := '77';
     IF TRB_C2_INI.Position = 11 THEN
          ED_SOMAS_C2_INI.Text := '78';
     IF TRB_C2_INI.Position = 12 THEN
          ED_SOMAS_C2_INI.Text := '79';
     IF TRB_C2_INI.Position = 13 THEN
          ED_SOMAS_C2_INI.Text := '80';
     IF TRB_C2_INI.Position = 14 THEN
          ED_SOMAS_C2_INI.Text := '81';
     IF TRB_C2_INI.Position = 15 THEN
          ED_SOMAS_C2_INI.Text := '82';
     IF TRB_C2_INI.Position = 16 THEN
          ED_SOMAS_C2_INI.Text := '83';
     IF TRB_C2_INI.Position = 17 THEN
          ED_SOMAS_C2_INI.Text := '84';
     IF TRB_C2_INI.Position = 18 THEN
          ED_SOMAS_C2_INI.Text := '85';
     IF TRB_C2_INI.Position = 19 THEN
          ED_SOMAS_C2_INI.Text := '86';
     IF TRB_C2_INI.Position = 20 THEN
          ED_SOMAS_C2_INI.Text := '87';
     IF TRB_C2_INI.Position = 21 THEN
          ED_SOMAS_C2_INI.Text := '88';
end;


procedure T_F_EMULADOR_12p6_6_EXC.TRB_C2_FINALChange(Sender: TObject);
begin
     IF TRB_C2_FINAL.Position = 1 THEN
          ED_SOMAS_C2_FINAL.Text := '68';
     IF TRB_C2_FINAL.Position = 2 THEN
          ED_SOMAS_C2_FINAL.Text := '69';
     IF TRB_C2_FINAL.Position = 3 THEN
          ED_SOMAS_C2_FINAL.Text := '70';
     IF TRB_C2_FINAL.Position = 4 THEN
          ED_SOMAS_C2_FINAL.Text := '71';
     IF TRB_C2_FINAL.Position = 5 THEN
          ED_SOMAS_C2_FINAL.Text := '72';
     IF TRB_C2_FINAL.Position = 6 THEN
          ED_SOMAS_C2_FINAL.Text := '73';
     IF TRB_C2_FINAL.Position = 7 THEN
          ED_SOMAS_C2_FINAL.Text := '74';
     IF TRB_C2_FINAL.Position = 8 THEN
          ED_SOMAS_C2_FINAL.Text := '75';
     IF TRB_C2_FINAL.Position = 9 THEN
          ED_SOMAS_C2_FINAL.Text := '76';
     IF TRB_C2_FINAL.Position = 10 THEN
          ED_SOMAS_C2_FINAL.Text := '77';
     IF TRB_C2_FINAL.Position = 11 THEN
          ED_SOMAS_C2_FINAL.Text := '78';
     IF TRB_C2_FINAL.Position = 12 THEN
          ED_SOMAS_C2_FINAL.Text := '79';
     IF TRB_C2_FINAL.Position = 13 THEN
          ED_SOMAS_C2_FINAL.Text := '80';
     IF TRB_C2_FINAL.Position = 14 THEN
          ED_SOMAS_C2_FINAL.Text := '81';
     IF TRB_C2_FINAL.Position = 15 THEN
          ED_SOMAS_C2_FINAL.Text := '82';
     IF TRB_C2_FINAL.Position = 16 THEN
          ED_SOMAS_C2_FINAL.Text := '83';
     IF TRB_C2_FINAL.Position = 17 THEN
          ED_SOMAS_C2_FINAL.Text := '84';
     IF TRB_C2_FINAL.Position = 18 THEN
          ED_SOMAS_C2_FINAL.Text := '85';
     IF TRB_C2_FINAL.Position = 19 THEN
          ED_SOMAS_C2_FINAL.Text := '86';
     IF TRB_C2_FINAL.Position = 20 THEN
          ED_SOMAS_C2_FINAL.Text := '87';
     IF TRB_C2_FINAL.Position = 21 THEN
          ED_SOMAS_C2_FINAL.Text := '88';
end;




procedure T_F_EMULADOR_12p6_6_EXC.BBT_RECOMECARClick(Sender: TObject);
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
        STGR_COMB6.Cells[VI_CONTAR,1] := '0';
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



procedure T_F_EMULADOR_12p6_6_EXC.BBT_CLICK_TUDOClick(Sender: TObject);
begin
     BBT_701.Click;
     BBT_702.Click;
     BBT_724.Click;
     BBT_725.Click;
     BBT_705.Click;
     BBT_704.Click;
     BBT_722.Click;
     BBT_723.Click;
     BBT_703.Click;
     BBT_706.Click;
     BBT_720.Click;
     BBT_721.Click;
end;

    // ==========================================
    // ||||==================================||||
    // |||| 	Conferindo numeros válidos   ||||
    // ||||==================================||||
    // ==========================================}

procedure T_F_EMULADOR_12p6_6_EXC.BBT_PREPARARClick(Sender: TObject);
var
     VI_CONTADOR, VI_CONTAR, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2: integer;
     VI_COMBINACOES3, VI_COMBINACOES4 : SMALLINT;
     VS_NUMEROSPRINCIPAIS: STRING;
begin
     FOR VI_CONTAR := 1 TO 6 DO
     BEGIN
          STGR_COMB6.Cells[VI_CONTAR+2,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
          STGR_BASE2_L6EXC.Cells[VI_CONTAR,0] :='0';
          STGR_COMB6.Cells[VI_CONTAR+2,1] := '00';
     END;
     FOR VI_CONTAR := 1 TO 3 DO
     BEGIN
          STGR_BASE2_L1.Cells[VI_CONTAR,0] := '00';
          STGR_BASE2_L2.Cells[VI_CONTAR,0] := '00';
          STGR_BASE2_L3.Cells[VI_CONTAR,0] := '00';
          STGR_BASE2_L4.Cells[VI_CONTAR,0] := '00';
          STGR_BASE2_L5.Cells[VI_CONTAR,0] := '00';
          STGR_BASE2_L6.Cells[VI_CONTAR,0] := '00';
     END;
     FOR VI_CONTAR := 2 TO 13 DO
     BEGIN
        STGR_COMB12.Cells[VI_CONTAR,0] := '-'+INTtoSTR(VI_CONTAR-1)+'-';
        STGR_COMB12.Cells[VI_CONTAR,1] := '00';
     END;
     FOR VI_CONTAR := 1 TO 6 DO
     BEGIN
        STGR_COMB12.Cells[VI_CONTAR+14,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_COMB12.Cells[VI_CONTAR+14,1] := '00';
     END;
     STGR_COMB6.RowCount := 2;
     STGR_COMB6.Repaint;
     STGR_COMB12.RowCount:= 2;
     STGR_COMB12.Repaint;     
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
     LA_GERAR_COMB0.Caption:= '0/0      ';
     LA_GERAR_COMB00.Caption:= '0     ';
     LA_QTD_COMB.Caption := '000000';
     LA_QTD_FILTRADOS.Caption := '0000000';
     LA_QTD_FILTRADOS.Repaint;
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_QTD_COMB.Repaint;
     Self.Repaint;
     IF (STRtoINT(STGR_BASE_L6.Cells[4,0] ) =0) THEN
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

        // ***************************
        // **  CONFERINDO OS EXCLUIDOS **
        // ***************************
     IF ((STRtoINT(ED_EXC_01.Text) <> 0) OR (STRtoINT(ED_EXC_02.Text) <> 0) OR (STRtoINT(ED_EXC_03.Text) <> 0)) THEN
     BEGIN
          IF (STRtoINT(ED_EXC_01.Text) = STRtoINT(ED_EXC_201.Text ) ) OR
            (STRtoINT(ED_EXC_01.Text) = STRtoINT(ED_EXC_202.Text ) ) OR
            (STRtoINT(ED_EXC_01.Text) = STRtoINT(ED_EXC_203.Text ) ) OR
          (STRtoINT(ED_EXC_02.Text) = STRtoINT(ED_EXC_201.Text ) ) OR
            (STRtoINT(ED_EXC_02.Text) = STRtoINT(ED_EXC_202.Text ) ) OR
            (STRtoINT(ED_EXC_02.Text) = STRtoINT(ED_EXC_203.Text ) ) OR
          (STRtoINT(ED_EXC_03.Text) = STRtoINT(ED_EXC_201.Text ) ) OR
            (STRtoINT(ED_EXC_03.Text) = STRtoINT(ED_EXC_202.Text ) ) OR
            (STRtoINT(ED_EXC_03.Text) = STRtoINT(ED_EXC_203.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO EXCLUÍDO DO -GERAR- TEM DE SER DIFERENTE DOS NÃO EXCLUÍDOS DO -PREPARAR-.');
                 ED_EXC_01.SetFocus;
                 EXIT;
          END; // IF
     END;
     IF ((STRtoINT(ED_EXC_201.Text) <> 0) OR (STRtoINT(ED_EXC_202.Text) <> 0) OR (STRtoINT(ED_EXC_203.Text) <> 0)) THEN
     BEGIN
          IF (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_201.Text ) ) OR
            (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_202.Text ) ) OR
            (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_203.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_01.SetFocus;
                 EXIT;
          END; // IF
          IF (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_201.Text ) ) OR
            (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_202.Text ) ) OR
            (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_203.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_02.SetFocus;
                 EXIT;
          END; // IF
          IF (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_201.Text ) ) OR
            (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_202.Text ) ) OR
            (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_203.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_03.SetFocus;
                 EXIT;
          END; // IF
          IF (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_201.Text ) ) OR
            (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_202.Text ) ) OR
            (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_203.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_04.SetFocus;
                 EXIT;
          END; // IF
          IF (STRtoINT(ED_FIXOS_05.Text) = STRtoINT(ED_EXC_201.Text ) ) OR
            (STRtoINT(ED_FIXOS_05.Text) = STRtoINT(ED_EXC_202.Text ) ) OR
            (STRtoINT(ED_FIXOS_05.Text) = STRtoINT(ED_EXC_203.Text ) )
          THEN
          BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_05.SetFocus;
                 EXIT;
          END; // IF
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
                    STGR_LINHA_1_C1.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_1_C2.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_1_C1.Cells[1,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_1_C1.Cells[2,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_1_C1.Cells[3,VI_LINHAS2]:= STGR_BASE_L1.Cells[VI_COMBINACOES3,0];
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
                    STGR_LINHA_1_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_1_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_LINHA_1_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_1_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_LINHA_1_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1_C2.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_1_C2.Cells[2,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
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
                    STGR_LINHA_2_C1.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_2_C2.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_2_C1.Cells[1,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_2_C1.Cells[2,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_2_C1.Cells[3,VI_LINHAS2]:= STGR_BASE_L2.Cells[VI_COMBINACOES3,0];
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
                    STGR_LINHA_2_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_2_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_LINHA_2_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_2_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_LINHA_2_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_2_C2.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_2_C2.Cells[2,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
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
                    STGR_LINHA_3_C1.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_3_C2.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_3_C1.Cells[1,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_3_C1.Cells[2,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_3_C1.Cells[3,VI_LINHAS2]:= STGR_BASE_L3.Cells[VI_COMBINACOES3,0];
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
                    STGR_LINHA_3_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_3_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_LINHA_3_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_3_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_LINHA_3_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_3_C2.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_3_C2.Cells[2,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
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
                    STGR_LINHA_4_C1.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_4_C2.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_4_C1.Cells[1,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_4_C1.Cells[2,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_4_C1.Cells[3,VI_LINHAS2]:= STGR_BASE_L4.Cells[VI_COMBINACOES3,0];
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
                    STGR_LINHA_4_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_4_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_LINHA_4_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_4_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_LINHA_4_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C2.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_4_C2.Cells[2,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
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
                    STGR_LINHA_5_C1.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_5_C2.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_5_C1.Cells[1,VI_LINHAS2]:= STGR_BASE_L5.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_5_C1.Cells[2,VI_LINHAS2]:= STGR_BASE_L5.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_5_C1.Cells[3,VI_LINHAS2]:= STGR_BASE_L5.Cells[VI_COMBINACOES3,0];
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
                    STGR_LINHA_5_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_5_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_LINHA_5_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_5_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_LINHA_5_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C2.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_5_C2.Cells[2,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
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
                    STGR_LINHA_6_C1.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_6_C2.Cells[0,VI_LINHAS2]:= INTtoSTR(VI_LINHAS2);
                    STGR_LINHA_6_C1.Cells[1,VI_LINHAS2]:= STGR_BASE_L6.Cells[VI_COMBINACOES1,0];
                    STGR_LINHA_6_C1.Cells[2,VI_LINHAS2]:= STGR_BASE_L6.Cells[VI_COMBINACOES2,0];
                    STGR_LINHA_6_C1.Cells[3,VI_LINHAS2]:= STGR_BASE_L6.Cells[VI_COMBINACOES3,0];
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
                    STGR_LINHA_6_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_6_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02.Text))
                  THEN
                    STGR_LINHA_6_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
               IF     ((STRtoINT(STGR_LINHA_6_C2.Cells[1,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03.Text))
                  THEN
                    STGR_LINHA_6_C2.Cells[2 ,VI_COMBINACOES1] := 'F';
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_C2.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_5_C2.Cells[2,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
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
     {
            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_14_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_14_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_14_DEFINICAO; ')  ;
            SELF.IBQ_COMBINACOES.Open;
            }
     BBT_GERAR_1.Click;
     SHOWMESSAGE('OK');
end;





procedure T_F_EMULADOR_12p6_6_EXC.BBT_GERAR_1Click(Sender: TObject);
var
     VI_LINHAS1, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR_COMB1, VI_TOTAL_COMB1, VI_CONTAR, VI_CONTASEL1: integer;
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
        FOR VI_CONTAR :=1 TO 15 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
        END; // FOR VI_CONTAR
        // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
        FOR VI_CONTAR :=1 TO 6 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells[ (STRtoINT(STGR_COMB6.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 1;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB6.Cells[VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
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
            VC_QUERY  := 'INSERT INTO FILTRO_14_DEFINICAO (LINHA_1, LINHA_2, LINHA_3, LINHA_4, LINHA_5, LINHA_6, SOMA_COL_1_INI, SOMA_COL_1_FINAL, SOMA_COL_2_INI, ';
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
                VC_QUERY  := 'INSERT INTO FILTRO_14_DADOS (EXC1, EXC2, EXC3, EXC4, EXC5, EXC6, DADOS) VALUES(' +#39+ STGR_COMB6.Cells[1,VI_AN_COMB1] + #39 +','+#39+ STGR_COMB6.Cells[2,VI_AN_COMB1]
                     + #39 +','+#39+STGR_COMB6.Cells[3,VI_AN_COMB1] + #39 +','+#39+STGR_COMB6.Cells[4,VI_AN_COMB1] + #39 +','+#39+STGR_COMB6.Cells[5,VI_AN_COMB1] + #39 +','+#39+STGR_COMB6.Cells[6,VI_AN_COMB1] + #39 +','+#39+VC_COMBINACOES + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Clear;
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
                SELF.IBQ_COMBINACOES.SQL.Clear;
                SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_14_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
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
        STGR_COMB6.Cells[VI_CONTASEL1+0,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB6.Cells[VI_CONTASEL1+0,1] := '00';
     END;
     STGR_COMB6.RowCount := 2;
     STGR_COMB6.Repaint;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     VI_LINHAS2 := 1;
     VI_CONTAR_COMB1 := 0;
     VI_LINHAS1 := VI_LINHAS2;
     VI_TOTAL_COMB1  := STRtoINT(LA_LINHA_1_100REP.Caption);
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

                                   // *****************************************
                                   // **   MONTA AS DEMAIS TABELAS DE BASE   **
                                   // *****************************************
                                   VI_CONTASEL1 := 1;
                                   STGR_BASE1_L1.Cells[0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   FOR VI_CONTAR := 1 TO 4 DO
                                   BEGIN
                                        IF (STGR_COMB6.Cells[1, VI_LINHAS2]  <> STGR_BASE_L1.Cells[VI_CONTAR,0]) then
                                        BEGIN
                                             STGR_BASE1_L1.Cells[VI_CONTASEL1, VI_LINHAS2] := STGR_BASE_L1.Cells[VI_CONTAR,0] ;
                                             VI_CONTASEL1 := VI_CONTASEL1+1;
                                        END;
                                   END;
                                   VI_CONTASEL1 := 1;
                                   STGR_BASE1_L2.Cells[0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   FOR VI_CONTAR := 1 TO 4 DO
                                   BEGIN
                                        IF (STGR_COMB6.Cells[2, VI_LINHAS2]  <> STGR_BASE_L2.Cells[VI_CONTAR,0]) then
                                        BEGIN
                                             STGR_BASE1_L2.Cells[VI_CONTASEL1, VI_LINHAS2] := STGR_BASE_L2.Cells[VI_CONTAR,0] ;
                                             VI_CONTASEL1 := VI_CONTASEL1+1;
                                        END;
                                   END;
                                   VI_CONTASEL1 := 1;
                                   STGR_BASE1_L3.Cells[0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   FOR VI_CONTAR := 1 TO 4 DO
                                   BEGIN
                                        IF (STGR_COMB6.Cells[3, VI_LINHAS2]  <> STGR_BASE_L3.Cells[VI_CONTAR,0]) then
                                        BEGIN
                                             STGR_BASE1_L3.Cells[VI_CONTASEL1, VI_LINHAS2] := STGR_BASE_L3.Cells[VI_CONTAR,0] ;
                                             VI_CONTASEL1 := VI_CONTASEL1+1;
                                        END;
                                   END;
                                   VI_CONTASEL1 := 1;
                                   STGR_BASE1_L4.Cells[0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   FOR VI_CONTAR := 1 TO 4 DO
                                   BEGIN
                                        IF (STGR_COMB6.Cells[4, VI_LINHAS2]  <> STGR_BASE_L4.Cells[VI_CONTAR,0]) then
                                        BEGIN
                                             STGR_BASE1_L4.Cells[VI_CONTASEL1, VI_LINHAS2] := STGR_BASE_L4.Cells[VI_CONTAR,0] ;
                                             VI_CONTASEL1 := VI_CONTASEL1+1;
                                        END;
                                   END;
                                   VI_CONTASEL1 := 1;
                                   STGR_BASE1_L5.Cells[0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   FOR VI_CONTAR := 1 TO 4 DO
                                   BEGIN
                                        IF (STGR_COMB6.Cells[5, VI_LINHAS2]  <> STGR_BASE_L5.Cells[VI_CONTAR,0]) then
                                        BEGIN
                                             STGR_BASE1_L5.Cells[VI_CONTASEL1, VI_LINHAS2] := STGR_BASE_L5.Cells[VI_CONTAR,0] ;
                                             VI_CONTASEL1 := VI_CONTASEL1+1;
                                        END;
                                   END;
                                   VI_CONTASEL1 := 1;
                                   STGR_BASE1_L6.Cells[0, VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   FOR VI_CONTAR := 1 TO 4 DO
                                   BEGIN
                                        IF (STGR_COMB6.Cells[6, VI_LINHAS2]  <> STGR_BASE_L6.Cells[VI_CONTAR,0]) then
                                        BEGIN
                                             STGR_BASE1_L6.Cells[VI_CONTASEL1, VI_LINHAS2] := STGR_BASE_L6.Cells[VI_CONTAR,0] ;
                                             VI_CONTASEL1 := VI_CONTASEL1+1;
                                        END;
                                   END;

                                   IF (VsI_FLAG_SOMATORIA1 =1) AND (VsI_FLAG_SOMATORIA2 =1)
                                   THEN
                                   BEGIN
                                        VI_LINHAS2 := VI_LINHAS2+1 ;
                                        VI_LINHAS1 := VI_LINHAS1+1 ;

                                   END;// IF
                              END; // VI_COMBINACOES6
                         END; // FOR VI_COMBINACOES5
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
          STGR_COMB6.RowCount := VI_LINHAS2;
          STGR_COMB6.Repaint;
     END; // FOR VI_COMBINACOES1
     STGR_BASE1_L1.RowCount := VI_LINHAS2;
     STGR_BASE1_L2.RowCount := VI_LINHAS2;
     STGR_BASE1_L3.RowCount := VI_LINHAS2;
     STGR_BASE1_L4.RowCount := VI_LINHAS2;
     STGR_BASE1_L5.RowCount := VI_LINHAS2;
     STGR_BASE1_L6.RowCount := VI_LINHAS2;
     TRY
          STGR_COMB6.FixedRows := 1;
     EXCEPT
          //
     END;
     LA_LINHA6EXC_100REP.Caption := INTtoSTR(STGR_COMB6.RowCount);
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
end;




PROCEDURE T_F_EMULADOR_12p6_6_EXC.PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-2 - Retirando os repetidos');
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_14_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DISTINCT(DADOS), EXC1, EXC2, EXC3, EXC4, EXC5,EXC6 FROM FILTRO_14_DADOS  ORDER BY DADOS;')  ;
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
           STGR_COMB6.Cells[0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB6.Cells[1, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC1').AsString;
           STGR_COMB6.Cells[2, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC2').AsString;
           STGR_COMB6.Cells[3, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC3').AsString;
           STGR_COMB6.Cells[4, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC4').AsString;
           STGR_COMB6.Cells[5, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC5').AsString;
           STGR_COMB6.Cells[6, VI_AN_COMB1] :=  IBQ_COMBINACOES.FIELDBYNAME('EXC6').AsString;
               STGR_COMB6.RowCount := VI_AN_COMB1;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       STGR_COMB6.RowCount := VI_AN_COMB1;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_14_DEFINICAO;')  ;
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




procedure T_F_EMULADOR_12p6_6_EXC.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_1.Enabled := false;
     BBT_GERAR2.Enabled := false;
     PA_INICIAL.Enabled := TRUE;     
     PA_INICIAL.Left := 520;
end;



procedure T_F_EMULADOR_12p6_6_EXC.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, VI_CONTAR, VI_QTD : INTEGER;
    VC_COMBINACOES : string;
begin
     MEM_COMBINACOES_TODAS.Clear;
     MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + LA_rTOTAL_100REPET.Caption) ;
     MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
     VI_QTD:=0;
     FOR VI_CONTAR := 1 TO STGR_COMB12.RowCount-1 DO
     BEGIN
          IF (STGR_COMB12.Cells[1,VI_CONTAR])='F' THEN
               CONTINUE;
          VI_QTD := VI_QTD + 1;
          VC_COMBINACOES := INTtoSTR(VI_QTD)+'=> ';
          FOR VI_AN_COMB1 := 2 TO 13 DO
             BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_COMB12.Cells[VI_AN_COMB1,VI_CONTAR] +' ';
             END; // FOR VI_AN_COMB1
               MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
     END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\EMULADOR12_6.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\EMULADOR12_6.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado
   showmessage('BLOCO DE NOTAS GERADO');
end;



procedure T_F_EMULADOR_12p6_6_EXC.BT_REAJUSTARClick(Sender: TObject);
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
     BBT_GERAR_1.Enabled := TRUE;
     BBT_GERAR2.Enabled := TRUE;     
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
end;


procedure T_F_EMULADOR_12p6_6_EXC.BBT_CARREGARClick(Sender: TObject);
begin
     BBT_RECOMECAR.Click;
     PA_PREENCHIMENTO.Visible := false;
     PA_PREENCHIMENTO.Enabled := false;
     PA_GABARITO.Visible := TRUE;
     RB_RESULTADOS.SetFocus;
     PA_GABARITO.Visible := false;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_1.Enabled := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
     LA_TOTAL_COMB.Visible := false;
     LA_GERAR_COMB.Visible := false;
     LA_QTD_COMB.Visible := false;
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
end;



procedure T_F_EMULADOR_12p6_6_EXC.BBT_GERAR2Click(Sender: TObject);
var
     VI_LINHAS1, VI_LINHAS2, VI_CONTAR, VI_CONTAR_COMB1, VI_TOTAL_COMB1, VI_COMBEXC: integer;
     VI_COMBINACOES1, VI_COMBINACOES2, VI_COMBINACOES3, VI_SOMA_COL1 : integer;


    PROCEDURE PR_ORDENAR_SIMULACAO_12 (VI_LINHAS9: INTEGER);
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
        FOR VI_CONTAR :=2 TO 13 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB12.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 2;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB12.Cells [VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
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
         // IF (STGR_COMB12.RowCount) <=4 THEN
         //      Exit;
          VI_QTD_VERIFICAR:= 1;
          CASE (STGR_COMB12.RowCount) OF
               2..19:        VI_QTD_VERIFICAR:= STGR_COMB12.RowCount;    //2..49
               20..29:        VI_QTD_VERIFICAR:= 20;
               30..59:        VI_QTD_VERIFICAR:= 20;
               60..69:        VI_QTD_VERIFICAR:= 60;
               70..79:        VI_QTD_VERIFICAR:= 70;
               80..99:        VI_QTD_VERIFICAR:= 80;
               100..149:        VI_QTD_VERIFICAR:= 100;
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
               1250..1489:      VI_QTD_VERIFICAR:= 1250;
               1500:        VI_QTD_VERIFICAR:= 1500;
          END;
          IF (STGR_COMB12.RowCount) >=VI_QTD_VERIFICAR THEN
          BEGIN
               FOR VI_CONTAR :=  (STGR_COMB12.RowCount-VI_QTD_VERIFICAR+1) TO (STGR_COMB12.RowCount-1) DO
               BEGIN
                    IF  (STGR_COMB12.Cells[2,VI_CONTAR] = STGR_COMB12.Cells[2,VI_LINHAS9]) AND
                    (STGR_COMB12.Cells[3,VI_CONTAR] = STGR_COMB12.Cells[3,VI_LINHAS9])
                    THEN
                    BEGIN
                         IF  (STGR_COMB12.Cells[4,VI_CONTAR] = STGR_COMB12.Cells[4,VI_LINHAS9]) AND
                             (STGR_COMB12.Cells[5,VI_CONTAR] = STGR_COMB12.Cells[5,VI_LINHAS9]) AND
                             (STGR_COMB12.Cells[6,VI_CONTAR] = STGR_COMB12.Cells[6,VI_LINHAS9]) AND
                             (STGR_COMB12.Cells[7,VI_CONTAR] = STGR_COMB12.Cells[7,VI_LINHAS9]) AND
                             (STGR_COMB12.Cells[8,VI_CONTAR] = STGR_COMB12.Cells[8,VI_LINHAS9]) AND
                             (STGR_COMB12.Cells[9,VI_CONTAR] = STGR_COMB12.Cells[9,VI_LINHAS9]) AND
                             (STGR_COMB12.Cells[10,VI_CONTAR] = STGR_COMB12.Cells[10,VI_LINHAS9]) AND
                             (STGR_COMB12.Cells[11,VI_CONTAR] = STGR_COMB12.Cells[11,VI_LINHAS9]) AND
                             (STGR_COMB12.Cells[12,VI_CONTAR] = STGR_COMB12.Cells[12,VI_LINHAS9]) AND
                             (STGR_COMB12.Cells[13,VI_CONTAR] = STGR_COMB12.Cells[13,VI_LINHAS9]) 
                             THEN
                         BEGIN
                              VI_LINHAS9 := VI_LINHAS9 - 1;
                              VI_LINHAS8 := VI_LINHAS8 - 1;
                              exit;
                         END; // if (STGR_COMB12.Cells[1,VI_CONTAR]
                    END; // if (STGR_COMB12.Cells[1,VI_CONTAR]
               END; // FOR VI_CONTAR
          END;// IF (VI_LINHAS2)
    end; //  PROCEDURE ORDENAR_PRE_REMOCAO


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
     FOR VI_CONTAR := 2 TO 13 DO
     BEGIN
        STGR_COMB12.Cells[VI_CONTAR,0] := '-'+INTtoSTR(VI_CONTAR-1)+'-';
        STGR_COMB12.Cells[VI_CONTAR,1] := '00';
     END;
     FOR VI_CONTAR := 1 TO 6 DO
     BEGIN
        STGR_COMB12.Cells[VI_CONTAR+14,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_COMB12.Cells[VI_CONTAR+14,1] := '00';
     END;
     STGR_COMB12.RowCount := 2;
     STGR_COMB12.Repaint;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES   ||||
     // ||||=============================||||
     // =====================================
     VI_LINHAS2 := 1;
     VI_CONTAR_COMB1 := 0;
     VI_LINHAS1 := VI_LINHAS2;
     VI_TOTAL_COMB1 := STGR_COMB6.RowCount-1;
     FOR VI_COMBEXC := 1 TO TRUNC((STGR_COMB6.RowCount-1)/1) DO
     BEGIN
          // ==> LINHA DE BASE DOS EXCLUÍDOS
          STGR_BASE2_L6EXC.Cells[1,0] := STGR_COMB6.Cells[1,VI_COMBEXC];
          STGR_BASE2_L6EXC.Cells[2,0] := STGR_COMB6.Cells[2,VI_COMBEXC];
          STGR_BASE2_L6EXC.Cells[3,0] := STGR_COMB6.Cells[3,VI_COMBEXC];
          STGR_BASE2_L6EXC.Cells[4,0] := STGR_COMB6.Cells[4,VI_COMBEXC];
          STGR_BASE2_L6EXC.Cells[5,0] := STGR_COMB6.Cells[5,VI_COMBEXC];
          STGR_BASE2_L6EXC.Cells[6,0] := STGR_COMB6.Cells[6,VI_COMBEXC];
          // ==> LINHA DE BASE 1
          STGR_BASE2_L1.Cells[0,0] := 'V';
          STGR_BASE2_L1.Cells[1,0] := STGR_BASE1_L1.Cells[1,VI_COMBEXC];
          STGR_BASE2_L1.Cells[2,0] := STGR_BASE1_L1.Cells[2,VI_COMBEXC];
          STGR_BASE2_L1.Cells[3,0] := STGR_BASE1_L1.Cells[3,VI_COMBEXC];
          {VI_SOMA_COL1 := STRtoINT(STGR_BASE2_L1.Cells[1,0]) +
                          STRtoINT(STGR_BASE2_L1.Cells[2,0]) +
                          STRtoINT(STGR_BASE2_L1.Cells[3,0]) ;  }
          // ==> LINHA DE BASE 2
          STGR_BASE2_L2.Cells[0,0] := 'V';
          STGR_BASE2_L2.Cells[1,0] := STGR_BASE1_L2.Cells[1,VI_COMBEXC];
          STGR_BASE2_L2.Cells[2,0] := STGR_BASE1_L2.Cells[2,VI_COMBEXC];
          STGR_BASE2_L2.Cells[3,0] := STGR_BASE1_L2.Cells[3,VI_COMBEXC];
          {VI_SOMA_COL1 := STRtoINT(STGR_BASE2_L2.Cells[1,0]) +
                          STRtoINT(STGR_BASE2_L2.Cells[2,0]) +
                          STRtoINT(STGR_BASE2_L2.Cells[3,0]) +
                          VI_SOMA_COL1;     }
          // ==> LINHA DE BASE 3
          STGR_BASE2_L3.Cells[0,0] := 'V';
          STGR_BASE2_L3.Cells[1,0] := STGR_BASE1_L3.Cells[1,VI_COMBEXC];
          STGR_BASE2_L3.Cells[2,0] := STGR_BASE1_L3.Cells[2,VI_COMBEXC];
          STGR_BASE2_L3.Cells[3,0] := STGR_BASE1_L3.Cells[3,VI_COMBEXC];
          {VI_SOMA_COL1 := STRtoINT(STGR_BASE2_L3.Cells[1,0]) +
                          STRtoINT(STGR_BASE2_L3.Cells[2,0]) +
                          STRtoINT(STGR_BASE2_L3.Cells[3,0]) +
                          VI_SOMA_COL1; }
          // ==> LINHA DE BASE 4
          STGR_BASE2_L4.Cells[0,0] := 'V';
          STGR_BASE2_L4.Cells[1,0] := STGR_BASE1_L4.Cells[1,VI_COMBEXC];
          STGR_BASE2_L4.Cells[2,0] := STGR_BASE1_L4.Cells[2,VI_COMBEXC];
          STGR_BASE2_L4.Cells[3,0] := STGR_BASE1_L4.Cells[3,VI_COMBEXC];
          {VI_SOMA_COL1 := STRtoINT(STGR_BASE2_L4.Cells[1,0]) +
                          STRtoINT(STGR_BASE2_L4.Cells[2,0]) +
                          STRtoINT(STGR_BASE2_L4.Cells[3,0]) +
                          VI_SOMA_COL1;  }
          // ==> LINHA DE BASE 5
          STGR_BASE2_L5.Cells[0,0] := 'V';
          STGR_BASE2_L5.Cells[1,0] := STGR_BASE1_L5.Cells[1,VI_COMBEXC];
          STGR_BASE2_L5.Cells[2,0] := STGR_BASE1_L5.Cells[2,VI_COMBEXC];
          STGR_BASE2_L5.Cells[3,0] := STGR_BASE1_L5.Cells[3,VI_COMBEXC];
          {VI_SOMA_COL1 := STRtoINT(STGR_BASE2_L5.Cells[1,0]) +
                          STRtoINT(STGR_BASE2_L5.Cells[2,0]) +
                          STRtoINT(STGR_BASE2_L5.Cells[3,0]) +
                          VI_SOMA_COL1;     }
          // ==> LINHA DE BASE 6
          STGR_BASE2_L6.Cells[0,0] := 'V';
          STGR_BASE2_L6.Cells[1,0] := STGR_BASE1_L6.Cells[1,VI_COMBEXC];
          STGR_BASE2_L6.Cells[2,0] := STGR_BASE1_L6.Cells[2,VI_COMBEXC];
          STGR_BASE2_L6.Cells[3,0] := STGR_BASE1_L6.Cells[3,VI_COMBEXC];
          {VI_SOMA_COL1 := STRtoINT(STGR_BASE2_L6.Cells[1,0]) +
                          STRtoINT(STGR_BASE2_L6.Cells[2,0]) +
                          STRtoINT(STGR_BASE2_L6.Cells[3,0]) +
                          VI_SOMA_COL1;
         { IF  NOT( (VI_SOMA_COL1 >= STRtoINT(ED_SOMAS_C1_INI.Text)) AND (VI_SOMA_COL1 <= STRtoINT(ED_SOMAS_C1_FINAL.Text)) )
          THEN
               CONTINUE;       }
          ED_FLAG_LINHA_EXC.Text := 'V';

          IF ((STRtoINT(ED_EXC_201.Text) <> 0) OR (STRtoINT(ED_EXC_202.Text) <> 0) OR (STRtoINT(ED_EXC_203.Text) <> 0)) THEN
          BEGIN
               IF ((STRtoINT(STGR_BASE2_L1.Cells[1,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L1.Cells[1,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L1.Cells[1,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L2.Cells[1,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L2.Cells[1,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L2.Cells[1,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L3.Cells[1,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L3.Cells[1,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L3.Cells[1,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L4.Cells[1,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L4.Cells[1,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L4.Cells[1,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L5.Cells[1,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L5.Cells[1,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L5.Cells[1,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L6.Cells[1,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L6.Cells[1,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L6.Cells[1,0])=STRtoINT(ED_EXC_203.Text)))
               THEN
               BEGIN
                    ED_FLAG_LINHA_EXC.Text := 'F';
               END;
               IF ((STRtoINT(STGR_BASE2_L1.Cells[1,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L1.Cells[1,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L1.Cells[1,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L1.Cells[2,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L1.Cells[2,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L1.Cells[2,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L1.Cells[3,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L1.Cells[3,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L1.Cells[3,0])=STRtoINT(ED_EXC_203.Text)))
               THEN
               BEGIN
                    STGR_BASE2_L1.Cells[0,0] := 'F';
               END;
               IF ((STRtoINT(STGR_BASE2_L2.Cells[1,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L2.Cells[1,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L2.Cells[1,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L2.Cells[2,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L2.Cells[2,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L2.Cells[2,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L2.Cells[3,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L2.Cells[3,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L2.Cells[3,0])=STRtoINT(ED_EXC_203.Text)))
               THEN
               BEGIN
                    STGR_BASE2_L2.Cells[0,0] := 'F';
               END;
               IF ((STRtoINT(STGR_BASE2_L3.Cells[1,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L3.Cells[1,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L3.Cells[1,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L3.Cells[2,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L3.Cells[2,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L3.Cells[2,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L3.Cells[3,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L3.Cells[3,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L3.Cells[3,0])=STRtoINT(ED_EXC_203.Text)))
               THEN
               BEGIN
                    STGR_BASE2_L3.Cells[0,0] := 'F';
               END;
               IF ((STRtoINT(STGR_BASE2_L4.Cells[1,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L4.Cells[1,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L4.Cells[1,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L4.Cells[2,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L4.Cells[2,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L4.Cells[2,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L4.Cells[3,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L4.Cells[3,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L4.Cells[3,0])=STRtoINT(ED_EXC_203.Text)))
               THEN
               BEGIN
                    STGR_BASE2_L4.Cells[0,0] := 'F';
               END;
               IF ((STRtoINT(STGR_BASE2_L5.Cells[1,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L5.Cells[1,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L5.Cells[1,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L5.Cells[2,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L5.Cells[2,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L5.Cells[2,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L5.Cells[3,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L5.Cells[3,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L5.Cells[3,0])=STRtoINT(ED_EXC_203.Text)))
               THEN
               BEGIN
                    STGR_BASE2_L5.Cells[0,0] := 'F';
               END;
               IF ((STRtoINT(STGR_BASE2_L6.Cells[1,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L6.Cells[1,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L6.Cells[1,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L6.Cells[2,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L6.Cells[2,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L6.Cells[2,0])=STRtoINT(ED_EXC_203.Text))) OR
                  ((STRtoINT(STGR_BASE2_L6.Cells[3,0])=STRtoINT(ED_EXC_201.Text)) OR (STRtoINT(STGR_BASE2_L6.Cells[3,0])=STRtoINT(ED_EXC_202.Text)) OR (STRtoINT(STGR_BASE2_L6.Cells[3,0])=STRtoINT(ED_EXC_203.Text)))
               THEN
               BEGIN
                    STGR_BASE2_L6.Cells[0,0] := 'F';
               END;
          END; // IF
          LA_GERAR_COMB0.Caption:= INTtoSTR(VI_COMBEXC)+'/'+ INTtOSTR(STGR_COMB6.RowCount-1);
          PGBR_GERARCOMB0.Position := TRUNC(VI_COMBEXC/VI_TOTAL_COMB1*100);
          SELF.Repaint;
          PGBR_GERARCOMB0.Repaint;
          IF (ED_FLAG_LINHA_EXC.Text = 'F')
          THEN
          BEGIN
               SLEEP(120);
               CONTINUE;
          END;

         // IF (VI_COMBEXC =53) THEN SHOWMESSAGE('AQUI2');

          FOR VI_COMBINACOES1 := 1 TO 4 DO
          BEGIN
               FOR VI_COMBINACOES2 := VI_COMBINACOES1+1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES3 := VI_COMBINACOES2+1 TO 6 DO
                    BEGIN
                         STGR_COMB12.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2) ;
                         STGR_COMB12.Cells[1,VI_LINHAS2] := 'V';                         
                         STGR_COMB12.Cells[2,VI_LINHAS2] :=  STGR_BASE2_L1.Cells[1,0] ; //  STGR_BASE2_L6EXC.Cells[1,0] ;
                         STGR_COMB12.Cells[3,VI_LINHAS2] :=  STGR_BASE2_L2.Cells[1,0] ; //  STGR_BASE2_L6EXC.Cells[2,0] ;
                         STGR_COMB12.Cells[4,VI_LINHAS2] :=  STGR_BASE2_L3.Cells[1,0] ; //  STGR_BASE2_L6EXC.Cells[3,0] ;
                         STGR_COMB12.Cells[5,VI_LINHAS2] :=  STGR_BASE2_L4.Cells[1,0] ; //  STGR_BASE2_L6EXC.Cells[4,0] ;
                         STGR_COMB12.Cells[6,VI_LINHAS2] :=  STGR_BASE2_L5.Cells[1,0] ; //  STGR_BASE2_L6EXC.Cells[5,0] ;
                         STGR_COMB12.Cells[7,VI_LINHAS2] :=  STGR_BASE2_L6.Cells[1,0] ; //  STGR_BASE2_L6EXC.Cells[6,0] ;
                       {  IF  (STGR_BASE2_L1.Cells[0,0]= 'F') OR
                             (STGR_BASE2_L2.Cells[0,0]= 'F') OR
                             (STGR_BASE2_L3.Cells[0,0]= 'F') OR
                             (STGR_BASE2_L4.Cells[0,0]= 'F') OR
                             (STGR_BASE2_L5.Cells[0,0]= 'F') OR
                             (STGR_BASE2_L6.Cells[0,0]= 'F')
                         THEN
                              CONTINUE; }
                         // *************************************
                         // ***    MONTANDO OS 12 NÚMEROS     ***
                         // *************************************
                         CASE VI_COMBINACOES1 OF
                              1:
                              BEGIN
                                   IF  (STGR_BASE2_L1.Cells[0,0]= 'F')
                                   THEN
                                        CONTINUE;
                                   STGR_COMB12.Cells[8,VI_LINHAS2] := STGR_BASE2_L1.Cells[2,0] ;
                                   STGR_COMB12.Cells[9,VI_LINHAS2] := STGR_BASE2_L1.Cells[3,0] ;
                              END; //1
                              2:
                              BEGIN
                                   IF  (STGR_BASE2_L2.Cells[0,0]= 'F')
                                   THEN
                                        CONTINUE;
                                   STGR_COMB12.Cells[8,VI_LINHAS2] := STGR_BASE2_L2.Cells[2,0] ;
                                   STGR_COMB12.Cells[9,VI_LINHAS2] := STGR_BASE2_L2.Cells[3,0] ;
                              END; //2
                              3:
                              BEGIN
                                   IF  (STGR_BASE2_L3.Cells[0,0]= 'F')
                                   THEN
                                        CONTINUE;
                                   STGR_COMB12.Cells[8,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                   STGR_COMB12.Cells[9,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                              END ; //3
                              4:
                              BEGIN
                                   IF  (STGR_BASE2_L4.Cells[0,0]= 'F')
                                   THEN
                                        CONTINUE;
                                   STGR_COMB12.Cells[8,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                   STGR_COMB12.Cells[9,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                              END ; //4
                         END; // CASE
                         CASE VI_COMBINACOES2 OF
                              2:
                              BEGIN
                                   IF  (STGR_BASE2_L2.Cells[0,0]= 'F')
                                   THEN
                                        CONTINUE;
                                   STGR_COMB12.Cells[10,VI_LINHAS2] := STGR_BASE2_L2.Cells[2,0] ;
                                   STGR_COMB12.Cells[11,VI_LINHAS2] := STGR_BASE2_L2.Cells[3,0] ;
                              END ; //2
                              3:
                              BEGIN
                                   IF  (STGR_BASE2_L3.Cells[0,0]= 'F')
                                   THEN
                                        CONTINUE;
                                   STGR_COMB12.Cells[10,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                   STGR_COMB12.Cells[11,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                              END ; //3
                              4:
                              BEGIN
                                   IF  (STGR_BASE2_L4.Cells[0,0]= 'F')
                                   THEN
                                        CONTINUE;
                                   STGR_COMB12.Cells[10,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                   STGR_COMB12.Cells[11,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                              END ; //4
                              5:
                              BEGIN
                                   IF  (STGR_BASE2_L5.Cells[0,0]= 'F')
                                   THEN
                                        CONTINUE;
                                   STGR_COMB12.Cells[10,VI_LINHAS2]  := STGR_BASE2_L5.Cells[2,0] ;
                                   STGR_COMB12.Cells[11,VI_LINHAS2] := STGR_BASE2_L5.Cells[3,0] ;
                              END  ; //5
                         END; // CASE
                         CASE VI_COMBINACOES3 OF
                              3:
                              BEGIN
                                   IF  (STGR_BASE2_L3.Cells[0,0]= 'F')
                                   THEN
                                        CONTINUE;
                                   STGR_COMB12.Cells[12,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                   STGR_COMB12.Cells[13,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                              END ; //3
                              4:
                              BEGIN
                                   IF  (STGR_BASE2_L4.Cells[0,0]= 'F')
                                   THEN
                                        CONTINUE;
                                   STGR_COMB12.Cells[12,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                   STGR_COMB12.Cells[13,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                              END ; //4
                              5:
                              BEGIN
                                   IF  (STGR_BASE2_L5.Cells[0,0]= 'F')
                                   THEN
                                        CONTINUE;
                                   STGR_COMB12.Cells[12,VI_LINHAS2] := STGR_BASE2_L5.Cells[2,0] ;
                                   STGR_COMB12.Cells[13,VI_LINHAS2] := STGR_BASE2_L5.Cells[3,0] ;
                              END  ; //5
                              6:
                              BEGIN
                                   IF  (STGR_BASE2_L6.Cells[0,0]= 'F')
                                   THEN
                                        CONTINUE;
                                   STGR_COMB12.Cells[12,VI_LINHAS2] := STGR_BASE2_L6.Cells[2,0] ;
                                   STGR_COMB12.Cells[13,VI_LINHAS2] := STGR_BASE2_L6.Cells[3,0] ;
                              END  ; //6
                         END; // CASE
                         // ********************************************************
                         // ***    VERIFICANDO A EXISTÊNCIA DOS NÚMERO FIXOS     ***
                         // ********************************************************
                         if (STRtoINT(ED_fixoS_01.Text)=0) OR
                             (
                             (STRtoINT(STGR_COMB12.Cells[2,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_COMB12.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_COMB12.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_COMB12.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_COMB12.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_COMB12.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_COMB12.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_COMB12.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_COMB12.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_COMB12.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_COMB12.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_COMB12.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                             ) AND
                                  (
                                  (STRtoINT(STGR_COMB12.Cells[2,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                                  ) AND
                              (
                              (STRtoINT(STGR_COMB12.Cells[2,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                              (STRtoINT(STGR_COMB12.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                              (STRtoINT(STGR_COMB12.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                              (STRtoINT(STGR_COMB12.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                              (STRtoINT(STGR_COMB12.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                              (STRtoINT(STGR_COMB12.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                              (STRtoINT(STGR_COMB12.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                              (STRtoINT(STGR_COMB12.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                              (STRtoINT(STGR_COMB12.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                              (STRtoINT(STGR_COMB12.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                              (STRtoINT(STGR_COMB12.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
                              (STRtoINT(STGR_COMB12.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                              ) AND
                                  (
                                  (STRtoINT(STGR_COMB12.Cells[2,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
                                  (STRtoINT(STGR_COMB12.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                                  ) AND
                                       (
                                       (STRtoINT(STGR_COMB12.Cells[2,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                       (STRtoINT(STGR_COMB12.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                       (STRtoINT(STGR_COMB12.Cells[4,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                       (STRtoINT(STGR_COMB12.Cells[5,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                       (STRtoINT(STGR_COMB12.Cells[6,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                       (STRtoINT(STGR_COMB12.Cells[7,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                       (STRtoINT(STGR_COMB12.Cells[8,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                       (STRtoINT(STGR_COMB12.Cells[9,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                       (STRtoINT(STGR_COMB12.Cells[10,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                       (STRtoINT(STGR_COMB12.Cells[11,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                       (STRtoINT(STGR_COMB12.Cells[12,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
                                       (STRtoINT(STGR_COMB12.Cells[13,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text))
                                       )
                                   THEN
                                   BEGIN
                                   // *********************************************
                                   // ***    MONTANDO OS 6 NÚMEROS RESTANTES    ***
                                   // *********************************************
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '123' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L5.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L5.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L6.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L6.Cells[3,0] ;
                                        END ELSE
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '124' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L5.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L5.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L6.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L6.Cells[3,0] ;
                                        END ELSE
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '125' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L6.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L6.Cells[3,0] ;
                                        END ELSE
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '126' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L5.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L5.Cells[3,0] ;
                                        END ELSE
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '134' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L2.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L2.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L5.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L5.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L6.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L6.Cells[3,0] ;
                                        END ELSE
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '135' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L2.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L2.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L6.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L6.Cells[3,0] ;
                                        END ELSE
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '136' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L2.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L2.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L5.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L5.Cells[3,0] ;
                                        END ELSE
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '145' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L2.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L2.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L6.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L6.Cells[3,0] ;
                                        END ELSE
                                   IF(INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '146' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L2.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L2.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L5.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L5.Cells[3,0] ;
                                        END ELSE
                                   IF(INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '156' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L2.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L2.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                                        END ELSE
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '234' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L1.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L1.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L5.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L5.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L6.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L6.Cells[3,0] ;
                                        END ELSE
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '235' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L1.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L1.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L6.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L6.Cells[3,0] ;
                                        END ELSE
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '236' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L1.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L1.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L5.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L5.Cells[3,0] ;
                                        END ELSE
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '245' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L1.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L1.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L6.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L6.Cells[3,0] ;
                                        END ELSE
                                   IF(INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '246' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L1.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L1.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L5.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L5.Cells[3,0] ;
                                        END ELSE
                                   IF(INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '256' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L1.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L1.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                                        END ELSE
                                   IF (INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '345' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L1.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L1.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L2.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L2.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L6.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L6.Cells[3,0] ;
                                        END ELSE
                                   IF(INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '346' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L1.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L1.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L2.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L2.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L5.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L5.Cells[3,0] ;
                                        END ELSE
                                   IF(INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '356' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L1.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L1.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L2.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L2.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L4.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L4.Cells[3,0] ;
                                        END ELSE
                                   IF(INTtoSTR(VI_COMBINACOES1)+INTtoSTR(VI_COMBINACOES2)+INTtoSTR(VI_COMBINACOES3)) = '456' THEN
                                        BEGIN
                                             STGR_COMB12.Cells[15,VI_LINHAS2] := STGR_BASE2_L1.Cells[2,0] ;
                                             STGR_COMB12.Cells[16,VI_LINHAS2] := STGR_BASE2_L1.Cells[3,0] ;
                                             STGR_COMB12.Cells[17,VI_LINHAS2] := STGR_BASE2_L2.Cells[2,0] ;
                                             STGR_COMB12.Cells[18,VI_LINHAS2] := STGR_BASE2_L2.Cells[3,0] ;
                                             STGR_COMB12.Cells[19,VI_LINHAS2] := STGR_BASE2_L3.Cells[2,0] ;
                                             STGR_COMB12.Cells[20,VI_LINHAS2] := STGR_BASE2_L3.Cells[3,0] ;
                                   END; // IF

                                  PR_ORDENAR_SIMULACAO_12 (VI_LINHAS2);
                                  PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                  VI_LINHAS2 := VI_LINHAS2+1 ;
                                  VI_LINHAS1 := VI_LINHAS1+1 ;
                                  //PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_GRUPO_A_TODOS5.RowCount-1));
                                  CASE (VI_LINHAS2) OF
                                       2..29:     STGR_COMB12.RowCount := VI_LINHAS2;
                                       30:        STGR_COMB12.RowCount := VI_LINHAS2;
                                       50:        STGR_COMB12.RowCount := VI_LINHAS2;
                                       60:        STGR_COMB12.RowCount := VI_LINHAS2;
                                       70:        STGR_COMB12.RowCount := VI_LINHAS2;
                                       80:        STGR_COMB12.RowCount := VI_LINHAS2;
                                       110:        STGR_COMB12.RowCount := VI_LINHAS2;
                                       220:        STGR_COMB12.RowCount := VI_LINHAS2;
                                       330:        STGR_COMB12.RowCount := VI_LINHAS2;
                                  END; // CASE;
                                   VI_CONTAR_COMB1 := VI_CONTAR_COMB1 + 1;
                                   LA_GERAR_COMB00.Caption:= INTtoSTR(VI_CONTAR_COMB1)+'  ';
                                   LA_GERAR_COMB00.Repaint;
                                   STGR_COMB12.RowCount := VI_LINHAS2;
                                   STGR_COMB12.Repaint;
                              end; // IF
                    END; // FOR VI_COMBINACOES3
                   // LA_TOTAL_COMB.Caption := 'TP: '+INTtoSTR(VI_CONTAR_COMB1)+'   ';
               END; // FOR VI_COMBINACOES2
          END; // FOR VI_COMBINACOES1
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               STGR_COMB12.Repaint;
               LA_QTD_COMB.Repaint;
               LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBEXC*4*5*6)+ ' DE '+  INTtoSTR((STGR_COMB6.RowCount-1)*4*5*6)+ ' - ' + INTtoSTR(TRUNC((VI_COMBEXC*4*5*6)/(VI_TOTAL_COMB1*4*5*6)*100))+ ' %  ';
               PGBR_GERARCOMB.Position := TRUNC((VI_COMBEXC*4*5*6)/(VI_TOTAL_COMB1*4*5*6)*100);
          SLEEP(70);
     END; // FOR VI_COMBINACOES1
     LA_GERAR_COMB.Repaint;
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
     TRY
          STGR_COMB12.FixedRows := 1;
     EXCEPT
          //
     END;
          //PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_GRUPO_A_TODOS5.RowCount-1));
     PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR2.Enabled    := false;
     BBT_100REPET.Enabled  := false;
     //SHOWMESSAGE ('GERAÇÃO ENCERRADA:' +#13+#13+  LA_TOTAL_COMB.Caption +#13+ LA_QTD_COMB.Caption);
     LA_rTOTAL_COMB.Caption  := INTtoSTR((STGR_COMB6.RowCount-1)*4*5*6)+'   ';
     LA_rQTD_COMB.Caption    := LA_GERAR_COMB00.Caption+'     ';
     //SELF.PR_SIMULAR_RECUPERANDODADOS('');
     //LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     //LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption+ '    ';
     BBT_100REPET.Click;
     BBT_BLOCO_NOTAS.SetFocus;
     //PA_REMOVEUREPET.Left :=  500;
end;



procedure T_F_EMULADOR_12p6_6_EXC.BBT_100REPETClick(Sender: TObject);
VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_CNTCELULAS: SMALLINT;
begin
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     PGBR_REMREPET.Position :=0;
     PGBR_REMREPET.Repaint;
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMB12.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_COMB12.RowCount-1) DO
          BEGIN
                IF (STGR_COMB12.Cells [1,VI_COMBINACOES2] = 'F') THEN
                    CONTINUE;
                IF  (STGR_COMB12.Cells[2,VI_COMBINACOES1] = STGR_COMB12.Cells[2,VI_COMBINACOES2]) AND
                        (STGR_COMB12.Cells[3,VI_COMBINACOES1] = STGR_COMB12.Cells[3,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_COMB12.Cells[4,VI_COMBINACOES1] = STGR_COMB12.Cells[4,VI_COMBINACOES2]) AND
                        (STGR_COMB12.Cells[5,VI_COMBINACOES1] = STGR_COMB12.Cells[5,VI_COMBINACOES2]) AND
                        (STGR_COMB12.Cells[6,VI_COMBINACOES1] = STGR_COMB12.Cells[6,VI_COMBINACOES2]) AND
                        (STGR_COMB12.Cells[7,VI_COMBINACOES1] = STGR_COMB12.Cells[7,VI_COMBINACOES2]) AND
                        (STGR_COMB12.Cells[8,VI_COMBINACOES1] = STGR_COMB12.Cells[8,VI_COMBINACOES2]) AND
                        (STGR_COMB12.Cells[9,VI_COMBINACOES1] = STGR_COMB12.Cells[9,VI_COMBINACOES2]) AND
                        (STGR_COMB12.Cells[10,VI_COMBINACOES1] = STGR_COMB12.Cells[10,VI_COMBINACOES2]) AND
                        (STGR_COMB12.Cells[11,VI_COMBINACOES1] = STGR_COMB12.Cells[11,VI_COMBINACOES2]) AND
                        (STGR_COMB12.Cells[12,VI_COMBINACOES1] = STGR_COMB12.Cells[12,VI_COMBINACOES2]) AND
                        (STGR_COMB12.Cells[13,VI_COMBINACOES1] = STGR_COMB12.Cells[13,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_COMB12.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
          if ((VI_COMBINACOES1 MOD 99)=0) then
          begin
               //LA_PERC_100REPET.Caption := INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_COMB12.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_COMB12.RowCount-1)*100))+ ' %  '
          end else
          if (VI_COMBINACOES1/1000)=(VI_COMBINACOES1 DIV 1000) then
          BEGIN
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END; // IF (VI_COMBINACOES1/1000
          PGBR_REMREPET.Position := TRUNC(VI_COMBINACOES1/(STGR_COMB12.RowCount-1)*100);
          PGBR_REMREPET.Repaint;
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMB12.RowCount-1) DO
     BEGIN
          IF (STGR_COMB12.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TOTAL_100REPET.Caption := INTtoSTR(VI_CONTAR);
     LA_TOTAL_100REPET.Repaint;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     LA_rTOTAL_100REPET.Caption := INTtoSTR(VI_CONTAR);
     LA_rTOTAL_100REPET.Repaint;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR2.Enabled    := false;
     BBT_100REPET.Enabled  := false;
     PA_REMOVEUREPET.Left :=  350;
end;




end.
