unit Simulacao01_Filtro_07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ComCtrls, Grids, strutils,
  DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

type
  T_F_SIM_01_Filtro_07 = class(TForm)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    PA_INICIAL: TPanel;
    Label36: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_CARREGAR_SIMULACAO: TButton;
    BT_RECUPERAR_SIMULACAO: TButton;
    PA_TOPO: TPanel;
    Label53: TLabel;
    BBT_CLOSE: TImage;
    PA_FILTRO_07: TPanel;
    STGR_COMB25_MOD07: TStringGrid;
    StringGrid34: TStringGrid;
    Memo1: TMemo;
    Panel17: TPanel;
    Label66: TLabel;
    StringGrid35: TStringGrid;
    StringGrid36: TStringGrid;
    StringGrid37: TStringGrid;
    StringGrid38: TStringGrid;
    StringGrid39: TStringGrid;
    StringGrid40: TStringGrid;
    StringGrid41: TStringGrid;
    StringGrid42: TStringGrid;
    StringGrid43: TStringGrid;
    StringGrid44: TStringGrid;
    StringGrid45: TStringGrid;
    StringGrid46: TStringGrid;
    StringGrid47: TStringGrid;
    SCBX_GABARITO: TScrollBox;
    STGR_FIL07_L1_SEL: TStringGrid;
    STGR_FIL07_L1_EXC: TStringGrid;
    STGR_FIL07_L1_REST: TStringGrid;
    STGR_FIL07_L2_SEL: TStringGrid;
    STGR_FIL07_L2_EXC: TStringGrid;
    STGR_FIL07_L2_REST: TStringGrid;
    STGR_FIL07_L3_SEL: TStringGrid;
    STGR_FIL07_L3_EXC: TStringGrid;
    STGR_FIL07_L3_REST: TStringGrid;
    STGR_FIL07_L4_SEL: TStringGrid;
    STGR_FIL07_L4_EXC: TStringGrid;
    STGR_FIL07_L4_REST: TStringGrid;
    PA_REMOVEUREPET: TPanel;
    Bevel5: TBevel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    LA_rTOTAL_COMB: TLabel;
    LA_rQTD_COMB: TLabel;
    Label1: TLabel;
    LA_rTOTAL_100REPET: TLabel;
    Label5: TLabel;
    LA_gINICIO_100REPET: TLabel;
    Label6: TLabel;
    LA_gFIM_GERAR: TLabel;
    Label39: TLabel;
    LA_gFIM_100REPET: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    PA_FIMFILTRO: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    LA_fTOTAL_COMB: TLabel;
    LA_fQTD_COMB: TLabel;
    Label7: TLabel;
    LA_fTOTAL_100REPET: TLabel;
    Label8: TLabel;
    LA_fQTD_FILTRADOS: TLabel;
    BBT_FIMFILTRO: TBitBtn;
    PA_PREENCHIMENTO: TPanel;
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
    BBT_PAN07_RECOMECAR: TBitBtn;
    Label54: TLabel;
    Label55: TLabel;
    CB_FIXO07_A: TComboBox;
    ED_FIXO07S_A1: TEdit;
    ED_FIXO07S_A2: TEdit;
    ED_FIXO07EX_A1: TEdit;
    ED_FIXO07EX_B1: TEdit;
    ED_FIXO07S_B2: TEdit;
    ED_FIXO07S_B1: TEdit;
    CB_FIXO07_B: TComboBox;
    CB_FIXO07_D: TComboBox;
    ED_FIXO07S_D1: TEdit;
    ED_FIXO07S_D2: TEdit;
    ED_FIXO07EX_D1: TEdit;
    STGR_BASE_L4MOD7: TStringGrid;
    STGR_BASE_L3MOD7: TStringGrid;
    STGR_BASE_L2MOD7: TStringGrid;
    STGR_BASE_L1MOD7: TStringGrid;
    PA_FIXOS: TPanel;
    Label92: TLabel;
    ED_FIXOS_01: TEdit;
    ED_FIXOS_02: TEdit;
    ED_FIXOS_03: TEdit;
    ED_FIXOS_04: TEdit;
    PA_EXCLUIDOS_M07: TPanel;
    Label50: TLabel;
    ED_EXC_01_MOD07: TEdit;
    ED_EXC_02_MOD07: TEdit;
    ED_EXC_03_MOD07: TEdit;
    Panel14: TPanel;
    Label72: TLabel;
    ED_SOMA3_M07_FI: TEdit;
    ED_SOMA3_M07_IN: TEdit;
    Panel16: TPanel;
    Label61: TLabel;
    Label62: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label70: TLabel;
    ED_FIXO07EX_C1: TEdit;
    ED_SOMAE_M07_FI: TEdit;
    ED_SOMAE_M07_IN: TEdit;
    Panel15: TPanel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label69: TLabel;
    ED_FIXO07S_C1: TEdit;
    ED_SOMAS_M07_IN: TEdit;
    ED_SOMAS_M07_FI: TEdit;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR: TBitBtn;
    STGR_SIM_SELMOD7_SOMATORIA: TStringGrid;
    STGR_SIM_EXCMOD7_SOMATORIA: TStringGrid;
    PGBR_FIL07_GERARCOMB: TProgressBar;
    PGBR_FIL07_REMREPET: TProgressBar;
    PGBR_FIL07_FILTRARCOMB: TProgressBar;
    BBT_GERAR: TBitBtn;
    BBT_ENCERRAR: TBitBtn;
    BBT_CLICK_TUDO: TButton;
    STRGR_TODOS_NUMEROS: TStringGrid;
    BBT_CANCELAR: TBitBtn;
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
    procedure BBT_GERARClick(Sender: TObject);
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure BBT_CLICK_TUDOClick(Sender: TObject);
    procedure BBT_ORDENARClick(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_ENCERRARClick(Sender: TObject);
    procedure BBT_FIMFILTROClick(Sender: TObject);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure BT_CARREGAR_SIMULACAOClick(Sender: TObject);
    procedure BBT_GERAR_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ED_SOMA3_M07_INExit(Sender: TObject);
    procedure BBT_SIMULAR_MOD07Click(Sender: TObject);
    procedure BBT_PAN07_RECOMECARClick(Sender: TObject);
    procedure BBT_CANCELARClick(Sender: TObject);
  private
    { Private declarations }
     PROCEDURE PR_BOTOES_MODELO_ABCD1 (VI_NUMERO: INTEGER; VS_IMPAR: STRING);
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);     
  public
    { Public declarations }
  end;

var
  _F_SIM_01_Filtro_07: T_F_SIM_01_Filtro_07;

implementation

uses Unit1;

{$R *.dfm}



procedure T_F_SIM_01_Filtro_07.FormCreate(Sender: TObject);
begin
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_07_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
end;



procedure T_F_SIM_01_Filtro_07.FormShow(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
     SELF.ClientWidth  := 1052;
     SELF.ClientHeight := 707;
     SELF.Top  := 90;
     SELF.Left := 20;
    FOR VI_CONTAR := 1 TO 8 DO
    BEGIN
        STGR_BASE_L1MOD7.Cells [VI_CONTAR,0] := '0';
    END;
    STGR_COMB25_MOD07.RowCount := 2;
    FOR VI_CONTAR := 1 TO 7 DO
    BEGIN
        STGR_BASE_L2MOD7.Cells [VI_CONTAR,0] := '0';
    END;

    FOR VI_CONTAR := 1 TO 5 DO
    BEGIN
        STGR_BASE_L3MOD7.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L4MOD7.Cells [VI_CONTAR,0] := '0';
    END;
    STGR_COMB25_MOD07.Cells[0,0] := 'QTD';
    FOR VI_CONTAR := 1 TO 15 DO
    BEGIN
        STGR_COMB25_MOD07.Cells [VI_CONTAR+1,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
    END;
    PA_REMOVEUREPET.Left := 5000;
    PA_FIMFILTRO.Left := 5000;
    PA_PREENCHIMENTO.Enabled := false;
    PA_EXECUTAR_FILTRO.Enabled := false;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 410;
end;



procedure T_F_SIM_01_Filtro_07.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(1,'V');
    BBT_701.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(2,'F');
    BBT_702.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(3,'V');
    BBT_703.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(4,'F');
    BBT_704.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(5,'V');
    BBT_705.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(6,'F');
    BBT_706.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(7,'V');
    BBT_707.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(8,'F');
    BBT_708.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(10,'F');
    BBT_710.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(9,'V');
    BBT_709.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(11,'V');
    BBT_711.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(12,'F');
    BBT_712.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(13,'V');
    BBT_713.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(14,'F');
    BBT_714.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(15,'V');
    BBT_715.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(16,'F');
    BBT_716.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(17,'V');
    BBT_717.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(18,'F');
    BBT_718.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(19,'V');
    BBT_719.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(20,'F');
    BBT_720.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(21,'V');
    BBT_721.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(22,'F');
    BBT_722.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(23,'V');
    BBT_723.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(24,'F');
    BBT_724.Enabled := FALSE;
end;

procedure T_F_SIM_01_Filtro_07.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_ABCD1(25,'V');
    BBT_725.Enabled := FALSE;
end;


procedure T_F_SIM_01_Filtro_07.BBT_PAN07_RECOMECARClick(Sender: TObject);
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
    FOR VI_CONTAR := 0 TO 18 DO
    BEGIN
        STGR_COMB25_MOD07.Cells [VI_CONTAR,1] := '0';
    END;
    STGR_COMB25_MOD07.RowCount := 1;
    FOR VI_CONTAR := 0 TO 8 DO
    BEGIN
        STGR_BASE_L1MOD7.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L2MOD7.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L3MOD7.Cells [VI_CONTAR,0] := '0';
        STGR_BASE_L4MOD7.Cells [VI_CONTAR,0] := '0';
    END;
end;


PROCEDURE T_F_SIM_01_Filtro_07.PR_BOTOES_MODELO_ABCD1 (VI_NUMERO: INTEGER; VS_IMPAR: STRING);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3, VI_CONTAR4 : INTEGER;
BEGIN
    IF (VS_IMPAR='V') THEN
    BEGIN
       FOR VI_CONTAR := 1 TO 8 DO
        BEGIN
            IF (STRtoINT (STGR_BASE_L1MOD7.Cells [VI_CONTAR,0]) = 0) THEN
            BEGIN
                STGR_BASE_L1MOD7.Cells [VI_CONTAR,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                EXIT;
            END ELSE
            IF (VI_CONTAR = 8) THEN
            BEGIN
                FOR VI_CONTAR3 :=1 TO 5 DO
                BEGIN
                    IF (STRtoINT (STGR_BASE_L3MOD7.Cells [VI_CONTAR3,0]) = 0) THEN
                    BEGIN
                        STGR_BASE_L3MOD7.Cells [VI_CONTAR3,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                        EXIT  ;
                    END; // IF (VI_CONTAR3
                END;// FOR VI_CONTAR3
            END;// IF (STRtoINT
        END; // VI_CONTAR
    END ELSE
    BEGIN
        FOR VI_CONTAR2 :=1 TO 7 DO
        BEGIN
            IF (STRtoINT (STGR_BASE_L2MOD7.Cells [VI_CONTAR2,0]) = 0) THEN
            BEGIN
                STGR_BASE_L2MOD7.Cells [VI_CONTAR2,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                EXIT;
            END ELSE
            IF (VI_CONTAR2 = 7) THEN
            BEGIN
                    FOR VI_CONTAR4 :=1 TO 5 DO
                    BEGIN
                        IF (STRtoINT (STGR_BASE_L4MOD7.Cells [VI_CONTAR4,0]) = 0) THEN
                        BEGIN
                            STGR_BASE_L4MOD7.Cells [VI_CONTAR4,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                            EXIT ;
                        END; // IF VI_CONTAR4
                    END; // FOR VI_CONTAR4
            END; // IF (STRtoINT
        END; // FOR VI_CONTAR 2
    end; // IF (VS_IMPAR='V') THEN
END;




procedure T_F_SIM_01_Filtro_07.BBT_CLICK_TUDOClick(Sender: TObject);
begin
    BBT_701.Click;
    BBT_702.Click;
    BBT_703.Click;
    BBT_705.Click;
    BBT_707.Click;
    BBT_709.Click;
    BBT_711.Click;
    BBT_704.Click;
    BBT_706.Click;
    BBT_708.Click;
    BBT_710.Click;
    BBT_712.Click;
    BBT_714.Click;
    BBT_716.Click;
    BBT_718.Click;
    BBT_720.Click;
    BBT_722.Click;
    BBT_724.Click;
end;



procedure T_F_SIM_01_Filtro_07.BBT_PREPARARClick(Sender: TObject);
var
    VI_COMBINACOES3, VI_COMBINACOES4, VI_QTD_CELULAS : SMALLINT;
    VI_ACONTECEU, VI_QTD_PARES, VI_QTD_IMPARES, VI_COMBINACOES5, VI_COMBINACOES9 : SMALLINT;
    VI_S1: STRING;
    VI_COMBINACOES1, VI_COMBINACOES2, VI_LINHAS1, VI_LINHAS2, VI_SOMA1, VI_SOMA2, VI_SOMA3, VI_CONTASEL1, VI_CONTASEL2, VI_CONTASEL3, VI_CONTASEL4 : INTEGER;
begin
    // ==========================================
    // ||||==================================||||
    // |||| 	Conferindo numeros válidos   ||||
    // ||||==================================||||
    // ==========================================
        // ******************
        // **  LINHA l (A) **
        // ******************
    IF (CB_FIXO07_A.ItemIndex = 1) THEN
    BEGIN
        IF not(
         ( STRtoINT(ED_FIXO07S_A1.Text) = STRtoINT(STGR_BASE_L1MOD7.Cells [1,0] ) ) OR
            (STRtoINT(ED_FIXO07S_A1.Text) = STRtoINT(STGR_BASE_L1MOD7.Cells [2,0] ) ) or
            (STRtoINT(ED_FIXO07S_A1.Text) = STRtoINT(STGR_BASE_L1MOD7.Cells [3,0] ) ) or
            (STRtoINT(ED_FIXO07S_A1.Text) = STRtoINT(STGR_BASE_L1MOD7.Cells [4,0] ) ) or
            (STRtoINT(ED_FIXO07S_A1.Text) = STRtoINT(STGR_BASE_L1MOD7.Cells [5,0] ) ) or
            (STRtoINT(ED_FIXO07S_A1.Text) = STRtoINT(STGR_BASE_L1MOD7.Cells [6,0] ) ) or
            (STRtoINT(ED_FIXO07S_A1.Text) = STRtoINT(STGR_BASE_L1MOD7.Cells [7,0] ) ) or
            (STRtoINT(ED_FIXO07S_A1.Text) = STRtoINT(STGR_BASE_L1MOD7.Cells [8,0] ) )
            )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_FIXO07S_A1.SetFocus;
            EXIT;
        END; // IF
        IF ( STRtoINT(ED_FIXO07S_A2.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [1,0]) ) and
            (STRtoINT(ED_FIXO07S_A2.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [2,0]) ) and
            (STRtoINT(ED_FIXO07S_A2.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [3,0]) ) and
            (STRtoINT(ED_FIXO07S_A2.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [4,0]) ) and
            (STRtoINT(ED_FIXO07S_A2.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [5,0]) ) and
            (STRtoINT(ED_FIXO07S_A2.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [6,0]) ) and
            (STRtoINT(ED_FIXO07S_A2.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [7,0]) ) and
            (STRtoINT(ED_FIXO07S_A2.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [8,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_FIXO07S_A2.SetFocus;
            EXIT;
        END; // IF
        IF ( STRtoINT(ED_FIXO07EX_A1.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [1,0]) ) and
            (STRtoINT(ED_FIXO07EX_A1.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [2,0]) ) and
            (STRtoINT(ED_FIXO07EX_A1.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [3,0]) ) and
            (STRtoINT(ED_FIXO07EX_A1.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [4,0]) ) and
            (STRtoINT(ED_FIXO07EX_A1.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [5,0]) ) and
            (STRtoINT(ED_FIXO07EX_A1.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [6,0]) ) and
            (STRtoINT(ED_FIXO07EX_A1.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [7,0]) ) and
            (STRtoINT(ED_FIXO07EX_A1.Text) <> STRtoINT(STGR_BASE_L1MOD7.Cells [8,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_FIXO07EX_A1.SetFocus;
            EXIT;
        END; // IF

    END;  //  IF (CB_FIXO07_A


        // ******************
        // **  LINHA 2 (b) **
        // ******************
    IF (CB_FIXO07_B.ItemIndex = 1) THEN
    BEGIN
        IF not(
         ( STRtoINT(ED_FIXO07S_B1.Text) = STRtoINT(STGR_BASE_L2MOD7.Cells [1,0] ) ) OR
            (STRtoINT(ED_FIXO07S_B1.Text) = STRtoINT(STGR_BASE_L2MOD7.Cells [2,0] ) ) or
            (STRtoINT(ED_FIXO07S_B1.Text) = STRtoINT(STGR_BASE_L2MOD7.Cells [3,0] ) ) or
            (STRtoINT(ED_FIXO07S_B1.Text) = STRtoINT(STGR_BASE_L2MOD7.Cells [4,0] ) ) or
            (STRtoINT(ED_FIXO07S_B1.Text) = STRtoINT(STGR_BASE_L2MOD7.Cells [5,0] ) ) or
            (STRtoINT(ED_FIXO07S_B1.Text) = STRtoINT(STGR_BASE_L2MOD7.Cells [6,0] ) ) or
            (STRtoINT(ED_FIXO07S_B1.Text) = STRtoINT(STGR_BASE_L2MOD7.Cells [7,0] ) ) 
            )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_FIXO07S_B1.SetFocus;
            EXIT;
        END; // IF
        IF ( STRtoINT(ED_FIXO07S_B2.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [1,0]) ) and
            (STRtoINT(ED_FIXO07S_B2.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [2,0]) ) and
            (STRtoINT(ED_FIXO07S_B2.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [3,0]) ) and
            (STRtoINT(ED_FIXO07S_B2.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [4,0]) ) and
            (STRtoINT(ED_FIXO07S_B2.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [5,0]) ) and
            (STRtoINT(ED_FIXO07S_B2.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [6,0]) ) and
            (STRtoINT(ED_FIXO07S_B2.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [7,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_FIXO07S_B2.SetFocus;
            EXIT;
        END; // IF
        IF ( STRtoINT(ED_FIXO07EX_B1.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [1,0]) ) and
            (STRtoINT(ED_FIXO07EX_B1.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [2,0]) ) and
            (STRtoINT(ED_FIXO07EX_B1.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [3,0]) ) and
            (STRtoINT(ED_FIXO07EX_B1.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [4,0]) ) and
            (STRtoINT(ED_FIXO07EX_B1.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [5,0]) ) and
            (STRtoINT(ED_FIXO07EX_B1.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [6,0]) ) and
            (STRtoINT(ED_FIXO07EX_B1.Text) <> STRtoINT(STGR_BASE_L2MOD7.Cells [7,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_FIXO07EX_B1.SetFocus;
            EXIT;
        END; // IF

    END;  //  IF (CB_FIXO07_A


            // ******************
            // **  LINHA 3 (C) **
            // ******************ED_FIXO07S_C1
            IF not(
             ( STRtoINT(ED_FIXO07S_C1.Text) = STRtoINT(STGR_BASE_L3MOD7.Cells [1,0] ) ) OR
                (STRtoINT(ED_FIXO07S_C1.Text) = STRtoINT(STGR_BASE_L3MOD7.Cells [2,0] ) ) or
                (STRtoINT(ED_FIXO07S_C1.Text) = STRtoINT(STGR_BASE_L3MOD7.Cells [3,0] ) ) or
                (STRtoINT(ED_FIXO07S_C1.Text) = STRtoINT(STGR_BASE_L3MOD7.Cells [4,0] ) ) or
                (STRtoINT(ED_FIXO07S_C1.Text) = STRtoINT(STGR_BASE_L3MOD7.Cells [5,0] ) )
                )
            THEN
            BEGIN
                SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
                ED_FIXO07S_C1.SetFocus;
                EXIT;
            END; // IF

            IF ( STRtoINT(ED_FIXO07EX_C1.Text) <> STRtoINT(STGR_BASE_L3MOD7.Cells [1,0]) ) and
                (STRtoINT(ED_FIXO07EX_C1.Text) <> STRtoINT(STGR_BASE_L3MOD7.Cells [2,0]) ) and
                (STRtoINT(ED_FIXO07EX_C1.Text) <> STRtoINT(STGR_BASE_L3MOD7.Cells [3,0]) ) and
                (STRtoINT(ED_FIXO07EX_C1.Text) <> STRtoINT(STGR_BASE_L3MOD7.Cells [4,0]) ) and
                (STRtoINT(ED_FIXO07EX_C1.Text) <> STRtoINT(STGR_BASE_L3MOD7.Cells [5,0]) )
            THEN
            BEGIN
                SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
                ED_FIXO07EX_C1.SetFocus;
                EXIT;
            END; // IF




        // ******************
        // **  LINHA 4 (D) **
        // ******************
    IF (CB_FIXO07_D.ItemIndex = 1) THEN
    BEGIN
        IF not(
         ( STRtoINT(ED_FIXO07S_D1.Text) = STRtoINT(STGR_BASE_L4MOD7.Cells [1,0] ) ) OR
            (STRtoINT(ED_FIXO07S_D1.Text) = STRtoINT(STGR_BASE_L4MOD7.Cells [2,0] ) ) or
            (STRtoINT(ED_FIXO07S_D1.Text) = STRtoINT(STGR_BASE_L4MOD7.Cells [3,0] ) ) or
            (STRtoINT(ED_FIXO07S_D1.Text) = STRtoINT(STGR_BASE_L4MOD7.Cells [4,0] ) ) or
            (STRtoINT(ED_FIXO07S_D1.Text) = STRtoINT(STGR_BASE_L4MOD7.Cells [5,0] ) )
            )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_FIXO07S_D1.SetFocus;
            EXIT;
        END; // IF
        IF ( STRtoINT(ED_FIXO07S_D2.Text) <> STRtoINT(STGR_BASE_L4MOD7.Cells [1,0]) ) and
            (STRtoINT(ED_FIXO07S_D2.Text) <> STRtoINT(STGR_BASE_L4MOD7.Cells [2,0]) ) and
            (STRtoINT(ED_FIXO07S_D2.Text) <> STRtoINT(STGR_BASE_L4MOD7.Cells [3,0]) ) and
            (STRtoINT(ED_FIXO07S_D2.Text) <> STRtoINT(STGR_BASE_L4MOD7.Cells [4,0]) ) and
            (STRtoINT(ED_FIXO07S_D2.Text) <> STRtoINT(STGR_BASE_L4MOD7.Cells [5,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_FIXO07S_D2.SetFocus;
            EXIT;
        END; // IF
        IF ( STRtoINT(ED_FIXO07EX_D1.Text) <> STRtoINT(STGR_BASE_L4MOD7.Cells [1,0]) ) and
            (STRtoINT(ED_FIXO07EX_D1.Text) <> STRtoINT(STGR_BASE_L4MOD7.Cells [2,0]) ) and
            (STRtoINT(ED_FIXO07EX_D1.Text) <> STRtoINT(STGR_BASE_L4MOD7.Cells [3,0]) ) and
            (STRtoINT(ED_FIXO07EX_D1.Text) <> STRtoINT(STGR_BASE_L4MOD7.Cells [4,0]) ) and
            (STRtoINT(ED_FIXO07EX_D1.Text) <> STRtoINT(STGR_BASE_L4MOD7.Cells [5,0]) )
        THEN
        BEGIN
            SHOWMESSAGE ('O NÚMERO DIGITADO NÃO FAZ PARTE DA CADEIA NUMÉRICA.');
            ED_FIXO07EX_D1.SetFocus;
            EXIT;
        END; // IF

    END;  //  IF (CB_FIXO07_D


    VI_LINHAS1:= 1;
    VI_LINHAS2:= 1;
    STGR_FIL07_L1_SEL.Cells [0,0]:= 'Nº';
    STGR_FIL07_L1_SEL.Cells [1,0]:= 'ST';
    STGR_FIL07_L1_SEL.Cells [0,0]:= 'Nº';
    STGR_FIL07_L1_SEL.Cells [1,0]:= 'ST';
    STGR_FIL07_L1_SEL.Cells [0,0]:= 'NºR';
    STGR_FIL07_L1_SEL.Cells [1,0]:= 'ST';
    STGR_FIL07_L1_SEL.Cells [0,0]:= 'Nº';
    STGR_FIL07_L1_SEL.Cells [1,0]:= 'ST';

    STGR_FIL07_L1_EXC.Cells [1,0]:= 'Nº';
    STGR_FIL07_L1_EXC.Cells [0,0]:= 'ST';
    STGR_FIL07_L1_EXC.Cells [1,0]:= 'Nº';
    STGR_FIL07_L1_EXC.Cells [0,0]:= 'ST';
    STGR_FIL07_L1_EXC.Cells [1,0]:= 'Nº';
    STGR_FIL07_L1_EXC.Cells [0,0]:= 'ST';
    STGR_FIL07_L1_EXC.Cells [1,0]:= 'Nº';
    STGR_FIL07_L1_EXC.Cells [0,0]:= 'ST';

    STGR_SIM_SELMOD7_SOMATORIA.Cells [1,0]:= 'SOMA';
    STGR_SIM_SELMOD7_SOMATORIA.Cells [2,0]:= 'FLAG';

    STGR_SIM_EXCMOD7_SOMATORIA.Cells [1,0]:= 'SOMA';
    STGR_SIM_EXCMOD7_SOMATORIA.Cells [2,0]:= 'FLAG';
    ED_SOMA3_M07_FI.Repaint;    

    // ======================================================
    // ||||==============================================||||
    // |||| 	Análises Combinatórias e suas sobras     ||||
    // ||||==============================================||||
    // ======================================================
        // ******************
        // **  LINHA l (A) **
        // ******************
    VI_LINHAS2:= 1;
    VI_LINHAS1:= 1;
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
                        STGR_FIL07_L1_SEL.Cells [0,VI_LINHAS2+0]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L1_EXC.Cells [0,VI_LINHAS2+0]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L1_REST.Cells [0,VI_LINHAS2+0]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L1_SEL.Cells [0,VI_LINHAS2+1]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L1_EXC.Cells [0,VI_LINHAS2+1]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L1_REST.Cells [0,VI_LINHAS2+1]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L1_SEL.Cells [0,VI_LINHAS2+2]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L1_EXC.Cells [0,VI_LINHAS2+2]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L1_REST.Cells [0,VI_LINHAS2+2]:= INTtoSTR(VI_LINHAS1);
                        // *************************************
                        // ** LINHA 2 - Montando o principal  **
                        // *************************************
                        STGR_FIL07_L1_SEL.Cells [2,VI_LINHAS2+0]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES1,0];
                        STGR_FIL07_L1_SEL.Cells [3,VI_LINHAS2+0]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES2,0];
                        STGR_FIL07_L1_SEL.Cells [4,VI_LINHAS2+0]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES3,0];
                        STGR_FIL07_L1_SEL.Cells [5,VI_LINHAS2+0]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES4,0];
                        STGR_FIL07_L1_SEL.Cells [6,VI_LINHAS2+0]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES5,0];
                        STGR_FIL07_L1_SEL.Cells [2,VI_LINHAS2+1]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES1,0];
                        STGR_FIL07_L1_SEL.Cells [3,VI_LINHAS2+1]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES2,0];
                        STGR_FIL07_L1_SEL.Cells [4,VI_LINHAS2+1]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES3,0];
                        STGR_FIL07_L1_SEL.Cells [5,VI_LINHAS2+1]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES4,0];
                        STGR_FIL07_L1_SEL.Cells [6,VI_LINHAS2+1]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES5,0];
                        STGR_FIL07_L1_SEL.Cells [2,VI_LINHAS2+2]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES1,0];
                        STGR_FIL07_L1_SEL.Cells [3,VI_LINHAS2+2]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES2,0];
                        STGR_FIL07_L1_SEL.Cells [4,VI_LINHAS2+2]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES3,0];
                        STGR_FIL07_L1_SEL.Cells [5,VI_LINHAS2+2]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES4,0];
                        STGR_FIL07_L1_SEL.Cells [6,VI_LINHAS2+2]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES5,0];
                        // -------------------------------------------
                        // -- DEFININDO FLAG DE VERDADEIRO OU FALSO --
                        // -------------------------------------------
                        IF (CB_FIXO07_A.ItemIndex = 0) THEN
                        BEGIN
                            STGR_FIL07_L1_SEL.Cells [1,VI_LINHAS2+0]:= 'V';
                        END ELSE
                        BEGIN
                                IF  ( STRtoINT(STGR_FIL07_L1_SEL.Cells [2,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_A1.Text) )   OR
                                    ( STRtoINT(STGR_FIL07_L1_SEL.Cells [3,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_A1.Text) )   OR
                                    ( STRtoINT(STGR_FIL07_L1_SEL.Cells [4,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_A1.Text) )   OR
                                    ( STRtoINT(STGR_FIL07_L1_SEL.Cells [5,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_A1.Text) )   OR
                                    ( STRtoINT(STGR_FIL07_L1_SEL.Cells [6,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_A1.Text) )
                                THEN
                                   STGR_FIL07_L1_SEL.Cells [1,VI_LINHAS2+0]:= 'V'
                                ELSE
                                   STGR_FIL07_L1_SEL.Cells [1,VI_LINHAS2+0]:= 'F';
                                IF  NOT ( STRtoINT(ED_FIXO07S_A1.Text) = (STRtoINT(ED_FIXO07S_A2.Text)) ) THEN
                                BEGIN
                                        IF  (
                                            ( STRtoINT(STGR_FIL07_L1_SEL.Cells [2,VI_LINHAS2]) =  STRtoINT(ED_FIXO07S_A2.Text) ) OR
                                            ( STRtoINT(STGR_FIL07_L1_SEL.Cells [3,VI_LINHAS2]) =  STRtoINT(ED_FIXO07S_A2.Text) ) OR
                                            ( STRtoINT(STGR_FIL07_L1_SEL.Cells [4,VI_LINHAS2]) =  STRtoINT(ED_FIXO07S_A2.Text) ) OR
                                            ( STRtoINT(STGR_FIL07_L1_SEL.Cells [5,VI_LINHAS2]) =  STRtoINT(ED_FIXO07S_A2.Text) ) OR
                                            ( STRtoINT(STGR_FIL07_L1_SEL.Cells [6,VI_LINHAS2]) =  STRtoINT(ED_FIXO07S_A2.Text) )
                                             ) AND (STGR_FIL07_L1_SEL.Cells [1,VI_LINHAS2+0]= 'V')
                                       THEN
                                           STGR_FIL07_L1_SEL.Cells [1,VI_LINHAS2+0]:= 'V'
                                       ELSE
                                           STGR_FIL07_L1_SEL.Cells [1,VI_LINHAS2+0]:= 'F';
                                END;  //  IF  NOT ( STRtoINT(
                        END; // IF (CB_FIXO07_A
                        STGR_FIL07_L1_SEL.Cells [1,VI_LINHAS2+1]:= STGR_FIL07_L1_SEL.Cells [1,VI_LINHAS2+0];
                        STGR_FIL07_L1_SEL.Cells [1,VI_LINHAS2+2]:= STGR_FIL07_L1_SEL.Cells [1,VI_LINHAS2+0];                                                
                        // -----------------------
                        // -- Pegando as sobras --
                        // -----------------------
                        VI_QTD_CELULAS:= 2;
                        FOR VI_COMBINACOES9:= 1 TO 8 DO
                        BEGIN
                            IF ( STRtoINT(STGR_FIL07_L1_SEL.Cells[2,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L1MOD7.Cells [VI_COMBINACOES9,0]) ) AND
                                (STRtoINT(STGR_FIL07_L1_SEL.Cells[3,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L1MOD7.Cells [VI_COMBINACOES9,0]) ) AND
                                (STRtoINT(STGR_FIL07_L1_SEL.Cells[4,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L1MOD7.Cells [VI_COMBINACOES9,0]) ) AND
                                (STRtoINT(STGR_FIL07_L1_SEL.Cells[5,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L1MOD7.Cells [VI_COMBINACOES9,0]) ) AND
                                (STRtoINT(STGR_FIL07_L1_SEL.Cells[6,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L1MOD7.Cells [VI_COMBINACOES9,0]) )
                            THEN
                            BEGIN
                                if (VI_QTD_CELULAS<4) THEN
                                    STGR_FIL07_L1_EXC.Cells [VI_QTD_CELULAS,VI_LINHAS2]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES9,0]
                                ELSE
                                    STGR_FIL07_L1_REST.Cells [1,VI_LINHAS2]:= STGR_BASE_L1MOD7.Cells[VI_COMBINACOES9,0] ;

                                VI_QTD_CELULAS:= VI_QTD_CELULAS + 1;
                            END; // IF
                        END; // FOR I_COMBINACOES9
                        // --------------------------------------
                        // --   MONTANDO AS LINHAS FALTANTES   --
                        // --------------------------------------
                        STGR_FIL07_L1_EXC.Cells [2,VI_LINHAS2+1]:=  STGR_FIL07_L1_EXC.Cells [2,VI_LINHAS2];
                        STGR_FIL07_L1_EXC.Cells [3,VI_LINHAS2+1]:=  STGR_FIL07_L1_REST.Cells [1,VI_LINHAS2];
                        STGR_FIL07_L1_REST.Cells [1,VI_LINHAS2+1]:= STGR_FIL07_L1_EXC.Cells [3,VI_LINHAS2];
                        STGR_FIL07_L1_EXC.Cells [2,VI_LINHAS2+2]:=  STGR_FIL07_L1_EXC.Cells [3,VI_LINHAS2];
                        STGR_FIL07_L1_EXC.Cells [3,VI_LINHAS2+2]:=  STGR_FIL07_L1_REST.Cells [1,VI_LINHAS2];
                        STGR_FIL07_L1_REST.Cells [1,VI_LINHAS2+2]:= STGR_FIL07_L1_EXC.Cells [2,VI_LINHAS2];
                        // -------------------------------------------
                        // -- DEFININDO FLAG DE VERDADEIRO OU FALSO --
                        // -------------------------------------------
                        IF (CB_FIXO07_A.ItemIndex = 0) THEN
                        BEGIN
                            STGR_FIL07_L1_EXC.Cells [1,VI_LINHAS2+0]:= 'V';
                        END ELSE
                        BEGIN
                            IF  ( STRtoINT(STGR_FIL07_L1_EXC.Cells [2,VI_LINHAS2]) = STRtoINT(ED_FIXO07EX_A1.Text)) OR
                                ( STRtoINT(STGR_FIL07_L1_EXC.Cells [3,VI_LINHAS2]) = STRtoINT(ED_FIXO07EX_A1.Text))
                           THEN
                               STGR_FIL07_L1_EXC.Cells [1,VI_LINHAS2+0]:= 'V'
                           ELSE
                               STGR_FIL07_L1_EXC.Cells [1,VI_LINHAS2+0]:= 'F';
                        END; // IF (CB_FIXO06_A
                                                IF (CB_FIXO07_A.ItemIndex = 0) THEN
                                                BEGIN
                                                    STGR_FIL07_L1_EXC.Cells [1,VI_LINHAS2+1]:= 'V';
                                                END ELSE
                                                BEGIN
                                                    IF  ( STRtoINT(STGR_FIL07_L1_EXC.Cells [2,VI_LINHAS2+1]) = STRtoINT(ED_FIXO07EX_A1.Text)) OR
                                                        ( STRtoINT(STGR_FIL07_L1_EXC.Cells [3,VI_LINHAS2+1]) = STRtoINT(ED_FIXO07EX_A1.Text))
                                                   THEN
                                                       STGR_FIL07_L1_EXC.Cells [1,VI_LINHAS2+1]:= 'V'
                                                   ELSE
                                                       STGR_FIL07_L1_EXC.Cells [1,VI_LINHAS2+1]:= 'F';
                                                END; // IF (CB_FIXO06_A
                            IF (CB_FIXO07_A.ItemIndex = 0) THEN
                            BEGIN
                                STGR_FIL07_L1_EXC.Cells [1,VI_LINHAS2+2]:= 'V';
                            END ELSE
                            BEGIN
                                IF  ( STRtoINT(STGR_FIL07_L1_EXC.Cells [2,VI_LINHAS2+2]) = STRtoINT(ED_FIXO07EX_A1.Text)) OR
                                    ( STRtoINT(STGR_FIL07_L1_EXC.Cells [3,VI_LINHAS2+2]) = STRtoINT(ED_FIXO07EX_A1.Text))
                               THEN
                                   STGR_FIL07_L1_EXC.Cells [1,VI_LINHAS2+2]:= 'V'
                               ELSE
                                   STGR_FIL07_L1_EXC.Cells [1,VI_LINHAS2+2]:= 'F';
                            END; // IF (CB_FIXO06_A



                        VI_LINHAS2 := VI_LINHAS2 +1+1+1;
                        VI_LINHAS1 := VI_LINHAS1 +1;
                        STGR_FIL07_L1_SEL.RowCount := VI_LINHAS2;
                        STGR_FIL07_L1_EXC.RowCount := VI_LINHAS2;
                        STGR_FIL07_L1_REST.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES5
                END; // FOR VI_COMBINACOES4
            END; // FOR VI_COMBINACOES3
        END; // FOR VI_COMBINACOES2
    END; // FOR VI_COMBINACOES1
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    Self.Repaint;


        // ******************
        // **  LINHA 2 (B) **
        // ******************
    VI_LINHAS1:= 1;
    VI_LINHAS2:= 1;
    FOR VI_COMBINACOES1:= 1 TO 7 DO
    BEGIN
        FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 7 DO
        BEGIN
            FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 7 DO
            BEGIN
                FOR VI_COMBINACOES4:= VI_COMBINACOES3+1 TO 7 DO
                BEGIN
                        STGR_FIL07_L2_SEL.Cells [0,VI_LINHAS2+0]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L2_EXC.Cells [0,VI_LINHAS2+0]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L2_REST.Cells [0,VI_LINHAS2+0]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L2_SEL.Cells [0,VI_LINHAS2+1]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L2_EXC.Cells [0,VI_LINHAS2+1]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L2_REST.Cells [0,VI_LINHAS2+1]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L2_SEL.Cells [0,VI_LINHAS2+2]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L2_EXC.Cells [0,VI_LINHAS2+2]:= INTtoSTR(VI_LINHAS1);
                        STGR_FIL07_L2_REST.Cells [0,VI_LINHAS2+2]:= INTtoSTR(VI_LINHAS1);
                        // *************************************
                        // ** LINHA 2 - Montando o principal  **
                        // *************************************
                        STGR_FIL07_L2_SEL.Cells [2,VI_LINHAS2]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES1,0];
                        STGR_FIL07_L2_SEL.Cells [3,VI_LINHAS2]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES2,0];
                        STGR_FIL07_L2_SEL.Cells [4,VI_LINHAS2]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES3,0];
                        STGR_FIL07_L2_SEL.Cells [5,VI_LINHAS2]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES4,0];
                        STGR_FIL07_L2_SEL.Cells [2,VI_LINHAS2+1]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES1,0];
                        STGR_FIL07_L2_SEL.Cells [3,VI_LINHAS2+1]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES2,0];
                        STGR_FIL07_L2_SEL.Cells [4,VI_LINHAS2+1]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES3,0];
                        STGR_FIL07_L2_SEL.Cells [5,VI_LINHAS2+1]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES4,0];
                        STGR_FIL07_L2_SEL.Cells [2,VI_LINHAS2+2]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES1,0];
                        STGR_FIL07_L2_SEL.Cells [3,VI_LINHAS2+2]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES2,0];
                        STGR_FIL07_L2_SEL.Cells [4,VI_LINHAS2+2]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES3,0];
                        STGR_FIL07_L2_SEL.Cells [5,VI_LINHAS2+2]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES4,0];
                        // -------------------------------------------
                        // -- DEFININDO FLAG DE VERDADEIRO OU FALSO --
                        // -------------------------------------------
                        IF (CB_FIXO07_B.ItemIndex = 0) THEN
                        BEGIN
                            STGR_FIL07_L2_SEL.Cells [1,VI_LINHAS2+0]:= 'V';
                        END ELSE
                        BEGIN
                                IF  ( STRtoINT(STGR_FIL07_L2_SEL.Cells [2,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_B1.Text) )   OR
                                    ( STRtoINT(STGR_FIL07_L2_SEL.Cells [3,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_B1.Text) )   OR
                                    ( STRtoINT(STGR_FIL07_L2_SEL.Cells [4,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_B1.Text) )   OR
                                    ( STRtoINT(STGR_FIL07_L2_SEL.Cells [5,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_B1.Text) )
                                THEN
                                   STGR_FIL07_L2_SEL.Cells [1,VI_LINHAS2+0]:= 'V'
                                ELSE
                                   STGR_FIL07_L2_SEL.Cells [1,VI_LINHAS2+0]:= 'F';
                                IF  NOT ( STRtoINT(ED_FIXO07S_B1.Text) = (STRtoINT(ED_FIXO07S_B2.Text)) ) THEN
                                BEGIN
                                        IF  (
                                            ( STRtoINT(STGR_FIL07_L2_SEL.Cells [2,VI_LINHAS2]) =  STRtoINT(ED_FIXO07S_B2.Text) ) OR
                                            ( STRtoINT(STGR_FIL07_L2_SEL.Cells [3,VI_LINHAS2]) =  STRtoINT(ED_FIXO07S_B2.Text) ) OR
                                            ( STRtoINT(STGR_FIL07_L2_SEL.Cells [4,VI_LINHAS2]) =  STRtoINT(ED_FIXO07S_B2.Text) ) OR
                                            ( STRtoINT(STGR_FIL07_L2_SEL.Cells [5,VI_LINHAS2]) =  STRtoINT(ED_FIXO07S_B2.Text) )
                                             ) AND (STGR_FIL07_L2_SEL.Cells [1,VI_LINHAS2+0]= 'V')
                                       THEN
                                           STGR_FIL07_L2_SEL.Cells [1,VI_LINHAS2+0]:= 'V'
                                       ELSE
                                           STGR_FIL07_L2_SEL.Cells [1,VI_LINHAS2+0]:= 'F';
                                END;  //  IF  NOT ( STRtoINT(
                        END; // IF (CB_FIXO07_B
                        STGR_FIL07_L2_SEL.Cells [1,VI_LINHAS2+1]:= STGR_FIL07_L2_SEL.Cells [1,VI_LINHAS2+0];
                        STGR_FIL07_L2_SEL.Cells [1,VI_LINHAS2+2]:= STGR_FIL07_L2_SEL.Cells [1,VI_LINHAS2+0];
                        // -----------------------
                        // -- Pegando as sobras --
                        // -----------------------
                        VI_QTD_CELULAS:= 2;
                        FOR VI_COMBINACOES9:= 1 TO 7 DO
                        BEGIN
                            IF ( STRtoINT(STGR_FIL07_L2_SEL.Cells[2,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L2MOD7.Cells [VI_COMBINACOES9,0]) ) AND
                                (STRtoINT(STGR_FIL07_L2_SEL.Cells[3,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L2MOD7.Cells [VI_COMBINACOES9,0]) ) AND
                                (STRtoINT(STGR_FIL07_L2_SEL.Cells[4,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L2MOD7.Cells [VI_COMBINACOES9,0]) ) AND
                                (STRtoINT(STGR_FIL07_L2_SEL.Cells[5,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L2MOD7.Cells [VI_COMBINACOES9,0]) )
                            THEN
                            BEGIN
                                if (VI_QTD_CELULAS<4) THEN
                                    STGR_FIL07_L2_EXC.Cells [VI_QTD_CELULAS,VI_LINHAS2]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES9,0]
                                ELSE
                                    STGR_FIL07_L2_REST.Cells [1,VI_LINHAS2]:= STGR_BASE_L2MOD7.Cells[VI_COMBINACOES9,0] ;

                                VI_QTD_CELULAS:= VI_QTD_CELULAS + 1;
                            END; // IF
                        END; // FOR I_COMBINACOES9
                        // --------------------------------------
                        // --   MONTANDO AS LINHAS FALTANTES   --
                        // --------------------------------------
                        STGR_FIL07_L2_EXC.Cells [2,VI_LINHAS2+1]:=  STGR_FIL07_L2_EXC.Cells [2,VI_LINHAS2];
                        STGR_FIL07_L2_EXC.Cells [3,VI_LINHAS2+1]:=  STGR_FIL07_L2_REST.Cells [1,VI_LINHAS2];
                        STGR_FIL07_L2_REST.Cells [1,VI_LINHAS2+1]:= STGR_FIL07_L2_EXC.Cells [3,VI_LINHAS2];
                        STGR_FIL07_L2_EXC.Cells [2,VI_LINHAS2+2]:=  STGR_FIL07_L2_EXC.Cells [3,VI_LINHAS2];
                        STGR_FIL07_L2_EXC.Cells [3,VI_LINHAS2+2]:=  STGR_FIL07_L2_REST.Cells [1,VI_LINHAS2];
                        STGR_FIL07_L2_REST.Cells [1,VI_LINHAS2+2]:= STGR_FIL07_L2_EXC.Cells [2,VI_LINHAS2];
                        // -------------------------------------------
                        // -- DEFININDO FLAG DE VERDADEIRO OU FALSO --
                        // -------------------------------------------
                        IF (CB_FIXO07_B.ItemIndex = 0) THEN
                        BEGIN
                            STGR_FIL07_L2_EXC.Cells [1,VI_LINHAS2+0]:= 'V';
                        END ELSE
                        BEGIN
                            IF  ( STRtoINT(STGR_FIL07_L2_EXC.Cells [2,VI_LINHAS2]) = STRtoINT(ED_FIXO07EX_B1.Text)) OR
                                ( STRtoINT(STGR_FIL07_L2_EXC.Cells [3,VI_LINHAS2]) = STRtoINT(ED_FIXO07EX_B1.Text))
                           THEN
                               STGR_FIL07_L2_EXC.Cells [1,VI_LINHAS2+0]:= 'V'
                           ELSE
                               STGR_FIL07_L2_EXC.Cells [1,VI_LINHAS2+0]:= 'F';
                        END; // IF (CB_FIXO07_A
                                                IF (CB_FIXO07_B.ItemIndex = 0) THEN
                                                BEGIN
                                                    STGR_FIL07_L2_EXC.Cells [1,VI_LINHAS2+1]:= 'V';
                                                END ELSE
                                                BEGIN
                                                    IF  ( STRtoINT(STGR_FIL07_L2_EXC.Cells [2,VI_LINHAS2+1]) = STRtoINT(ED_FIXO07EX_B1.Text)) OR
                                                        ( STRtoINT(STGR_FIL07_L2_EXC.Cells [3,VI_LINHAS2+1]) = STRtoINT(ED_FIXO07EX_B1.Text))
                                                   THEN
                                                       STGR_FIL07_L2_EXC.Cells [1,VI_LINHAS2+1]:= 'V'
                                                   ELSE
                                                       STGR_FIL07_L2_EXC.Cells [1,VI_LINHAS2+1]:= 'F';
                                                END; // IF (CB_FIXO07_A
                        IF (CB_FIXO07_B.ItemIndex = 0) THEN
                        BEGIN
                            STGR_FIL07_L2_EXC.Cells [1,VI_LINHAS2+2]:= 'V';
                        END ELSE
                        BEGIN
                            IF  ( STRtoINT(STGR_FIL07_L2_EXC.Cells [2,VI_LINHAS2+2]) = STRtoINT(ED_FIXO07EX_B1.Text)) OR
                                ( STRtoINT(STGR_FIL07_L2_EXC.Cells [3,VI_LINHAS2+2]) = STRtoINT(ED_FIXO07EX_B1.Text))
                           THEN
                               STGR_FIL07_L2_EXC.Cells [1,VI_LINHAS2+2]:= 'V'
                           ELSE
                               STGR_FIL07_L2_EXC.Cells [1,VI_LINHAS2+2]:= 'F';
                        END; // IF (CB_FIXO07_A

                        VI_LINHAS2 := VI_LINHAS2 +1+1+1;
                        VI_LINHAS1 := VI_LINHAS1 +1;
                        STGR_FIL07_L2_SEL.RowCount := VI_LINHAS2;
                        STGR_FIL07_L2_EXC.RowCount := VI_LINHAS2;
                        STGR_FIL07_L2_REST.RowCount := VI_LINHAS2;
                END; // FOR VI_COMBINACOES4
            END; // FOR VI_COMBINACOES3
        END; // FOR VI_COMBINACOES2
    END; // FOR VI_COMBINACOES1
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    Self.Repaint;


            // ******************
            // **  LINHA 3 (C) **
            // ******************
        VI_LINHAS1:= 1;            
        VI_LINHAS2:= 1;
        FOR VI_COMBINACOES1:= 1 TO 5 DO
        BEGIN
            FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
            BEGIN
                    STGR_FIL07_L3_SEL.Cells [0,VI_LINHAS2+0]:= INTtoSTR(VI_LINHAS1);
                    STGR_FIL07_L3_EXC.Cells [0,VI_LINHAS2+0]:= INTtoSTR(VI_LINHAS1);
                    STGR_FIL07_L3_REST.Cells [0,VI_LINHAS2+0]:= INTtoSTR(VI_LINHAS1);
                    STGR_FIL07_L3_SEL.Cells [0,VI_LINHAS2+1]:= INTtoSTR(VI_LINHAS1);
                    STGR_FIL07_L3_EXC.Cells [0,VI_LINHAS2+1]:= INTtoSTR(VI_LINHAS1);
                    STGR_FIL07_L3_REST.Cells [0,VI_LINHAS2+1]:= INTtoSTR(VI_LINHAS1);
                    STGR_FIL07_L3_SEL.Cells [0,VI_LINHAS2+2]:= INTtoSTR(VI_LINHAS1);
                    STGR_FIL07_L3_EXC.Cells [0,VI_LINHAS2+2]:= INTtoSTR(VI_LINHAS1);
                    STGR_FIL07_L3_REST.Cells [0,VI_LINHAS2+2]:= INTtoSTR(VI_LINHAS1);
                    // *************************************
                    // ** LINHA 2 - Montando o principal  **
                    // *************************************
                    STGR_FIL07_L3_SEL.Cells [2,VI_LINHAS2+0]:= STGR_BASE_L3MOD7.Cells[VI_COMBINACOES1,0];
                    STGR_FIL07_L3_SEL.Cells [3,VI_LINHAS2+0]:= STGR_BASE_L3MOD7.Cells[VI_COMBINACOES2,0];
                    STGR_FIL07_L3_SEL.Cells [2,VI_LINHAS2+1]:= STGR_BASE_L3MOD7.Cells[VI_COMBINACOES1,0];
                    STGR_FIL07_L3_SEL.Cells [3,VI_LINHAS2+1]:= STGR_BASE_L3MOD7.Cells[VI_COMBINACOES2,0];
                    STGR_FIL07_L3_SEL.Cells [2,VI_LINHAS2+2]:= STGR_BASE_L3MOD7.Cells[VI_COMBINACOES1,0];
                    STGR_FIL07_L3_SEL.Cells [3,VI_LINHAS2+2]:= STGR_BASE_L3MOD7.Cells[VI_COMBINACOES2,0];
                    // -------------------------------------------
                    // -- DEFININDO FLAG DE VERDADEIRO OU FALSO --
                    // -------------------------------------------
                    IF  ( STRtoINT(STGR_FIL07_L3_SEL.Cells [2,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_C1.Text)) OR
                        ( STRtoINT(STGR_FIL07_L3_SEL.Cells [3,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_C1.Text)) 
                    THEN
                        STGR_FIL07_L3_SEL.Cells [1,VI_LINHAS2+0]:= 'V'
                    ELSE
                         STGR_FIL07_L3_SEL.Cells [1,VI_LINHAS2+0]:= 'F';
                    STGR_FIL07_L3_SEL.Cells [1,VI_LINHAS2+1]:= STGR_FIL07_L3_SEL.Cells [1,VI_LINHAS2+0];
                    STGR_FIL07_L3_SEL.Cells [1,VI_LINHAS2+2]:= STGR_FIL07_L3_SEL.Cells [1,VI_LINHAS2+0];
                    // -----------------------
                    // -- Pegando as sobras --
                    // -----------------------
                    VI_QTD_CELULAS:= 2;
                    FOR VI_COMBINACOES9:= 1 TO 5 DO
                    BEGIN
                        IF ( STRtoINT(STGR_FIL07_L3_SEL.Cells[2,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L3MOD7.Cells [VI_COMBINACOES9,0]) ) AND
                            (STRtoINT(STGR_FIL07_L3_SEL.Cells[3,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L3MOD7.Cells [VI_COMBINACOES9,0]) )
                        THEN
                        BEGIN
                                if (VI_QTD_CELULAS<4) THEN
                                    STGR_FIL07_L3_EXC.Cells [VI_QTD_CELULAS,VI_LINHAS2]:= STGR_BASE_L3MOD7.Cells[VI_COMBINACOES9,0]
                                ELSE
                                    STGR_FIL07_L3_REST.Cells [1,VI_LINHAS2]:= STGR_BASE_L3MOD7.Cells[VI_COMBINACOES9,0] ;

                                VI_QTD_CELULAS:= VI_QTD_CELULAS + 1;
                        END; // IF
                    END; // FOR I_COMBINACOES9
                        // --------------------------------------
                        // --   MONTANDO AS LINHAS FALTANTES   --
                        // --------------------------------------
                        STGR_FIL07_L3_EXC.Cells [2,VI_LINHAS2+1]:=  STGR_FIL07_L3_EXC.Cells [2,VI_LINHAS2];
                        STGR_FIL07_L3_EXC.Cells [3,VI_LINHAS2+1]:=  STGR_FIL07_L3_REST.Cells [1,VI_LINHAS2];
                        STGR_FIL07_L3_REST.Cells [1,VI_LINHAS2+1]:= STGR_FIL07_L3_EXC.Cells [3,VI_LINHAS2];
                        STGR_FIL07_L3_EXC.Cells [2,VI_LINHAS2+2]:=  STGR_FIL07_L3_EXC.Cells [3,VI_LINHAS2];
                        STGR_FIL07_L3_EXC.Cells [3,VI_LINHAS2+2]:=  STGR_FIL07_L3_REST.Cells [1,VI_LINHAS2];
                        STGR_FIL07_L3_REST.Cells [1,VI_LINHAS2+2]:= STGR_FIL07_L3_EXC.Cells [2,VI_LINHAS2];
                    // -------------------------------------------
                    // -- DEFININDO FLAG DE VERDADEIRO OU FALSO --
                    // -------------------------------------------
                        IF  ( STRtoINT(STGR_FIL07_L3_EXC.Cells [2,VI_LINHAS2]) = STRtoINT(ED_FIXO07EX_C1.Text)) OR
                            ( STRtoINT(STGR_FIL07_L3_EXC.Cells [3,VI_LINHAS2]) = STRtoINT(ED_FIXO07EX_C1.Text))
                       THEN
                           STGR_FIL07_L3_EXC.Cells [1,VI_LINHAS2+0]:= 'V'
                       ELSE
                           STGR_FIL07_L3_EXC.Cells [1,VI_LINHAS2+0]:= 'F'  ;
                                                IF  ( STRtoINT(STGR_FIL07_L3_EXC.Cells [2,VI_LINHAS2+1]) = STRtoINT(ED_FIXO07EX_C1.Text)) OR
                                                    ( STRtoINT(STGR_FIL07_L3_EXC.Cells [3,VI_LINHAS2+1]) = STRtoINT(ED_FIXO07EX_C1.Text))
                                               THEN
                                                   STGR_FIL07_L3_EXC.Cells [1,VI_LINHAS2+1]:= 'V'
                                               ELSE
                                                   STGR_FIL07_L3_EXC.Cells [1,VI_LINHAS2+1]:= 'F'  ;
                        IF  ( STRtoINT(STGR_FIL07_L3_EXC.Cells [2,VI_LINHAS2+2]) = STRtoINT(ED_FIXO07EX_C1.Text)) OR
                            ( STRtoINT(STGR_FIL07_L3_EXC.Cells [3,VI_LINHAS2+2]) = STRtoINT(ED_FIXO07EX_C1.Text))
                       THEN
                           STGR_FIL07_L3_EXC.Cells [1,VI_LINHAS2+2]:= 'V'
                       ELSE
                           STGR_FIL07_L3_EXC.Cells [1,VI_LINHAS2+2]:= 'F'  ;

                    VI_LINHAS2 := VI_LINHAS2 +1+1+1;
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STGR_FIL07_L3_SEL.RowCount := VI_LINHAS2;
                    STGR_FIL07_L3_EXC.RowCount := VI_LINHAS2;
                    STGR_FIL07_L3_REST.RowCount := VI_LINHAS2;
            END; // FOR VI_COMBINACOES2
        END; // FOR VI_COMBINACOES1
        Self.WindowState := wsMinimized;
        Self.WindowState :=  wsNormal;
        Self.Repaint;


        // ******************
        // **  LINHA 4 (D) **
        // ******************
    VI_LINHAS1:= 1;
    VI_LINHAS2:= 1;
    FOR VI_COMBINACOES1:= 1 TO 5 DO
    BEGIN
        FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 5 DO
        BEGIN
            FOR VI_COMBINACOES3:= VI_COMBINACOES2+1 TO 5 DO
            BEGIN
                    STGR_FIL07_L4_SEL.Cells [0,VI_LINHAS2+0]:= INTtoSTR(VI_LINHAS1+0);
                    STGR_FIL07_L4_EXC.Cells [0,VI_LINHAS2+0]:= INTtoSTR(VI_LINHAS1+0);
                    STGR_FIL07_L4_REST.Cells [0,VI_LINHAS2+0]:= INTtoSTR(VI_LINHAS1+0);
                    STGR_FIL07_L4_SEL.Cells [0,VI_LINHAS2+1]:= INTtoSTR(VI_LINHAS1+0);
                    STGR_FIL07_L4_EXC.Cells [0,VI_LINHAS2+1]:= INTtoSTR(VI_LINHAS1+0);
                    STGR_FIL07_L4_REST.Cells [0,VI_LINHAS2+1]:= INTtoSTR(VI_LINHAS1+0);
                    // *************************************
                    // ** LINHA 2 - Montando o principal  **
                    // *************************************
                    STGR_FIL07_L4_SEL.Cells [2,VI_LINHAS2+0]:= STGR_BASE_L4MOD7.Cells[VI_COMBINACOES1,0];
                    STGR_FIL07_L4_SEL.Cells [3,VI_LINHAS2+0]:= STGR_BASE_L4MOD7.Cells[VI_COMBINACOES2,0];
                    STGR_FIL07_L4_SEL.Cells [4,VI_LINHAS2+0]:= STGR_BASE_L4MOD7.Cells[VI_COMBINACOES3,0];
                    STGR_FIL07_L4_SEL.Cells [2,VI_LINHAS2+1]:= STGR_BASE_L4MOD7.Cells[VI_COMBINACOES1,0];
                    STGR_FIL07_L4_SEL.Cells [3,VI_LINHAS2+1]:= STGR_BASE_L4MOD7.Cells[VI_COMBINACOES2,0];
                    STGR_FIL07_L4_SEL.Cells [4,VI_LINHAS2+1]:= STGR_BASE_L4MOD7.Cells[VI_COMBINACOES3,0];
                    // -------------------------------------------
                    // -- DEFININDO FLAG DE VERDADEIRO OU FALSO --
                    // -------------------------------------------
                        IF (CB_FIXO07_D.ItemIndex = 0) THEN
                        BEGIN
                            STGR_FIL07_L4_SEL.Cells [1,VI_LINHAS2+0]:= 'V';
                        END ELSE
                        BEGIN
                                IF  ( STRtoINT(STGR_FIL07_L4_SEL.Cells [2,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_D1.Text) )   OR
                                    ( STRtoINT(STGR_FIL07_L4_SEL.Cells [3,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_D1.Text) )   OR
                                    ( STRtoINT(STGR_FIL07_L4_SEL.Cells [4,VI_LINHAS2]) = STRtoINT(ED_FIXO07S_D1.Text) )
                                THEN
                                   STGR_FIL07_L4_SEL.Cells [1,VI_LINHAS2+0]:= 'V'
                                ELSE
                                   STGR_FIL07_L4_SEL.Cells [1,VI_LINHAS2+0]:= 'F';
                                IF  NOT ( STRtoINT(ED_FIXO07S_D1.Text) = (STRtoINT(ED_FIXO07S_D2.Text)) ) THEN
                                BEGIN
                                        IF  (
                                            ( STRtoINT(STGR_FIL07_L4_SEL.Cells [2,VI_LINHAS2]) =  STRtoINT(ED_FIXO07S_D2.Text) ) OR
                                            ( STRtoINT(STGR_FIL07_L4_SEL.Cells [3,VI_LINHAS2]) =  STRtoINT(ED_FIXO07S_D2.Text) ) OR
                                            ( STRtoINT(STGR_FIL07_L4_SEL.Cells [4,VI_LINHAS2]) =  STRtoINT(ED_FIXO07S_D2.Text) )
                                             ) AND (STGR_FIL07_L4_SEL.Cells [1,VI_LINHAS2+0]= 'V')
                                       THEN
                                           STGR_FIL07_L4_SEL.Cells [1,VI_LINHAS2+0]:= 'V'
                                       ELSE
                                           STGR_FIL07_L4_SEL.Cells [1,VI_LINHAS2+0]:= 'F';
                                END;  //  IF  NOT ( STRtoINT(
                        END; // IF (CB_FIXO07_D
                    STGR_FIL07_L4_SEL.Cells [1,VI_LINHAS2+1]:= STGR_FIL07_L4_SEL.Cells [1,VI_LINHAS2+0];
                    // -----------------------
                    // -- Pegando as sobras --
                    // -----------------------
                    VI_QTD_CELULAS:= 2;
                    FOR VI_COMBINACOES9:= 1 TO 5 DO
                    BEGIN
                        IF ( STRtoINT(STGR_FIL07_L4_SEL.Cells[2,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L4MOD7.Cells [VI_COMBINACOES9,0]) ) AND
                            (STRtoINT(STGR_FIL07_L4_SEL.Cells[3,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L4MOD7.Cells [VI_COMBINACOES9,0]) ) AND
                            (STRtoINT(STGR_FIL07_L4_SEL.Cells[4,VI_LINHAS2]) <> STRtoINT(STGR_BASE_L4MOD7.Cells [VI_COMBINACOES9,0]) )
                        THEN
                        BEGIN
                                if (VI_QTD_CELULAS<3) THEN
                                    STGR_FIL07_L4_EXC.Cells [VI_QTD_CELULAS,VI_LINHAS2]:= STGR_BASE_L4MOD7.Cells[VI_COMBINACOES9,0]
                                ELSE
                                    STGR_FIL07_L4_REST.Cells [1,VI_LINHAS2]:= STGR_BASE_L4MOD7.Cells[VI_COMBINACOES9,0] ;

                                VI_QTD_CELULAS:= VI_QTD_CELULAS + 1;   
                        END; // IF
                    END; // FOR I_COMBINACOES9
                        // --------------------------------------
                        // --   MONTANDO AS LINHAS FALTANTES   --
                        // --------------------------------------
                        STGR_FIL07_L4_EXC.Cells [2,VI_LINHAS2+1]:=  STGR_FIL07_L4_REST.Cells [1,VI_LINHAS2];
                        STGR_FIL07_L4_REST.Cells [1,VI_LINHAS2+1]:= STGR_FIL07_L4_EXC.Cells [2,VI_LINHAS2];
                    // -------------------------------------------
                    // -- DEFININDO FLAG DE VERDADEIRO OU FALSO --
                    // -------------------------------------------
                    IF (CB_FIXO07_D.ItemIndex = 0) THEN
                    BEGIN
                        STGR_FIL07_L4_EXC.Cells [1,VI_LINHAS2+0]:= 'V';
                    END ELSE
                    BEGIN
                        IF  ( STRtoINT(STGR_FIL07_L4_EXC.Cells [2,VI_LINHAS2]) = STRtoINT(ED_FIXO07EX_D1.Text))
                       THEN
                           STGR_FIL07_L4_EXC.Cells [1,VI_LINHAS2+0]:= 'V'
                       ELSE
                           STGR_FIL07_L4_EXC.Cells [1,VI_LINHAS2+0]:= 'F';
                    END; // IF (CB_FIXO07_A
                                    IF (CB_FIXO07_D.ItemIndex = 0) THEN
                                    BEGIN
                                        STGR_FIL07_L4_EXC.Cells [1,VI_LINHAS2+1]:= 'V';
                                    END ELSE
                                    BEGIN
                                        IF  ( STRtoINT(STGR_FIL07_L4_EXC.Cells [2,VI_LINHAS2+1]) = STRtoINT(ED_FIXO07EX_D1.Text))
                                       THEN
                                           STGR_FIL07_L4_EXC.Cells [1,VI_LINHAS2+1]:= 'V'
                                       ELSE
                                           STGR_FIL07_L4_EXC.Cells [1,VI_LINHAS2+1]:= 'F';
                                    END; // IF (CB_FIXO07_A

                    VI_LINHAS2 := VI_LINHAS2 +2;
                    VI_LINHAS1 := VI_LINHAS1 +1;
                    STGR_FIL07_L4_SEL.RowCount := VI_LINHAS2;
                    STGR_FIL07_L4_EXC.RowCount := VI_LINHAS2;
                    STGR_FIL07_L4_REST.RowCount := VI_LINHAS2;
            END; // FOR VI_COMBINACOES3
        END; // FOR VI_COMBINACOES2
    END; // FOR VI_COMBINACOES1
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    Self.Repaint;





            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_07_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_07_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_07_DADOS_TEMP')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT FIRST 10 * FROM COMBINACOES_15 ORDER BY DADOS; ')  ;
            SELF.IBQ_COMBINACOES.Open;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_07_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
      SHOWMESSAGE('OK');
end;




procedure T_F_SIM_01_Filtro_07.BBT_GERARClick(Sender: TObject);
var
     VI_LINHAS1, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTASEL1, VI_CONTASEL2, VI_CONTASEL3, VI_CONTASEL4, VI_CONTASEL5: integer;
     VI_COMBINACOES3, VI_COMBINACOES4: SMALLINT;
     VI_SOMA1: SMALLINT;
     VI_FLAG_SOMATORIA1, VI_FLAG_SOMATORIA2, VI_FLAG_SOMATORIA3, VI_FLAG_SOMATORIA4: SMALLINT;


begin
     PGBR_FIL07_GERARCOMB.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_PAN07_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR.Enabled    := false;
     BBT_ENCERRAR.Enabled := false;
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_09_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTASEL1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_09_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTASEL1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_09_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     PA_REMOVEUREPET.Left :=  500;
end;



PROCEDURE T_F_SIM_01_Filtro_07.PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_07_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DADOS FROM FILTRO_07_DADOS GROUP BY DADOS ORDER BY DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       // ********************
       // **   ENCERRANDO   **
       // ********************
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
       STGR_COMB25_MOD07.RowCount := 1;
       SELF.IBQ_COMBINACOES.First;
       IF (TRIM(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString) ='') THEN
           SELF.IBQ_COMBINACOES.Next;
       FOR VI_AN_COMB1:= 1 TO  VI_CONTAR DO
       BEGIN
           STGR_COMB25_MOD07.Cells [0, VI_AN_COMB1-1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB25_MOD07.Cells [1, VI_AN_COMB1-1] := 'V';
           STGR_COMB25_MOD07.Cells [2, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
           STGR_COMB25_MOD07.Cells [3 , VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
           STGR_COMB25_MOD07.Cells [4 , VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
           STGR_COMB25_MOD07.Cells [5 , VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
           STGR_COMB25_MOD07.Cells [6 , VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
           STGR_COMB25_MOD07.Cells [7 , VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
           STGR_COMB25_MOD07.Cells [8 , VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
           STGR_COMB25_MOD07.Cells [9, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
           STGR_COMB25_MOD07.Cells [10, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
           STGR_COMB25_MOD07.Cells [11, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
           STGR_COMB25_MOD07.Cells [12, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
           STGR_COMB25_MOD07.Cells [13, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
           STGR_COMB25_MOD07.Cells [14, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
           STGR_COMB25_MOD07.Cells [15, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
           STGR_COMB25_MOD07.Cells [16, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
               STGR_COMB25_MOD07.RowCount := VI_AN_COMB1;
           if (VI_AN_COMB1/90)=(VI_AN_COMB1 DIV 90) then
           BEGIN
               PGBR_FIL07_REMREPET.Position := (TRUNC(VI_AN_COMB1  / VI_CONTAR *10*8) );
               PGBR_FIL07_REMREPET.Repaint;
               STGR_COMB25_MOD07.REPAINT;               
           END;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_07_DEFINICAO;')  ;
       SELF.IBQ_COMBINACOES.Open;
       STGR_COMB25_MOD07.REPAINT;
           PGBR_FIL07_REMREPET.Position := 100;
       STGR_COMB25_MOD07.REPAINT;

           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();



procedure T_F_SIM_01_Filtro_07.BBT_ORDENARClick(Sender: TObject);
{VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_CNTCELULAS: SMALLINT;    }
begin
{
     LA_TOTAL_100REPET.Caption := '000000';
     LA_TOTAL_100REPET.Repaint;
     PGBR_FIL07_REMREPET.Position :=0;
     PGBR_FIL07_REMREPET.Repaint;     
     // -------------------------
     // --  Ordena os dados    --
     // -------------------------
     FOR VI_COMBINACOES1 := 1 TO (STGR_COMB25_MOD07.RowCount -1) DO
     BEGIN
          FOR VI_CONTAR :=1 TO 25 DO
          BEGIN
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
          END; // FOR VI_CONTAR
          // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
          FOR VI_CONTAR :=3 TO 17 DO
          BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB25_MOD07.Cells[VI_CONTAR,VI_COMBINACOES1])) ,1]:='V';
          END; // FOR VI_CONTAR1
          VI_CNTCELULAS := 3;
          FOR VI_CONTAR :=1 TO 25 DO
          BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB25_MOD07.Cells [VI_CNTCELULAS, VI_COMBINACOES1] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
          END; // FOR VI_CONTAR
     END; // FOR VI_CONBINACOES1
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMB25_MOD07.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_COMB25_MOD07.RowCount-1) DO
          BEGIN
                IF (STGR_COMB25_MOD07.Cells [1,VI_COMBINACOES2] = 'F') THEN
                    CONTINUE;          
                IF  (STGR_COMB25_MOD07.Cells[3,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[3,VI_COMBINACOES2]) AND
                        (STGR_COMB25_MOD07.Cells[4,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[4,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_COMB25_MOD07.Cells[5,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[5,VI_COMBINACOES2]) AND
                        (STGR_COMB25_MOD07.Cells[6,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[6,VI_COMBINACOES2]) AND
                        (STGR_COMB25_MOD07.Cells[7,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[7,VI_COMBINACOES2]) AND
                        (STGR_COMB25_MOD07.Cells[8,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[8,VI_COMBINACOES2]) AND
                        (STGR_COMB25_MOD07.Cells[9,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[9,VI_COMBINACOES2]) AND
                        (STGR_COMB25_MOD07.Cells[10,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[10,VI_COMBINACOES2]) AND
                        (STGR_COMB25_MOD07.Cells[11,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[11,VI_COMBINACOES2]) AND
                        (STGR_COMB25_MOD07.Cells[12,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[12,VI_COMBINACOES2]) AND
                        (STGR_COMB25_MOD07.Cells[13,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[13,VI_COMBINACOES2]) AND
                        (STGR_COMB25_MOD07.Cells[14,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[14,VI_COMBINACOES2]) AND
                        (STGR_COMB25_MOD07.Cells[15,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[15,VI_COMBINACOES2]) AND
                        (STGR_COMB25_MOD07.Cells[16,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[16,VI_COMBINACOES2]) and
                        (STGR_COMB25_MOD07.Cells[17,VI_COMBINACOES1] = STGR_COMB25_MOD07.Cells[17,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_COMB25_MOD07.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
          if (VI_COMBINACOES1/1000)=(VI_COMBINACOES1 DIV 1000) then
          BEGIN
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END; // IF (VI_COMBINACOES1/500
          PGBR_FIL07_REMREPET.Position := TRUNC(VI_COMBINACOES1/(STGR_COMB25_MOD07.RowCount-1)*100);
          PGBR_FIL07_REMREPET.Repaint;
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_COMB25_MOD07.RowCount-1) DO
     BEGIN
          IF (STGR_COMB25_MOD07.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TOTAL_100REPET.Caption := INTtoSTR(VI_CONTAR);
     LA_TOTAL_100REPET.Repaint;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_FIL09_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_MENU.Enabled    := false;
     BBT_ORDENAR.Enabled  := false;
     BBT_ENCERRAR.Enabled := false;
     LA_rTOTAL_COMB.Caption  := LA_gTOTAL_COMB.Caption;
     LA_rQTD_COMB.Caption    := LA_gQTD_COMB.Caption;
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption+ '    ';
     PA_REMOVEUREPET.Left :=  350;
     }
end;



procedure T_F_SIM_01_Filtro_07.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_PAN07_RECOMECAR.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR.Enabled    := TRUE;
         Self.Close;
end;



procedure T_F_SIM_01_Filtro_07.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;




procedure T_F_SIM_01_Filtro_07.BBT_ENCERRARClick(Sender: TObject);
VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_LINHAS2: SMALLINT;
begin


     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_PAN07_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR.Enabled    := false;
     BBT_ENCERRAR.Enabled := false;
     LA_fTOTAL_COMB.Caption  := LA_rTOTAL_COMB.Caption;
     LA_fQTD_COMB.Caption    := LA_rQTD_COMB.Caption;
     PA_FIMFILTRO.Left :=  400;

end;



procedure T_F_SIM_01_Filtro_07.BBT_FIMFILTROClick(Sender: TObject);
begin
    _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add('# FILTRO 07: RESULTADO');
    _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add('  ' + INTtoSTR(_FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount));

    PA_FIMFILTRO.Left := 5000;
    BBT_CLOSE.OnClick (Sender);
end;


procedure T_F_SIM_01_Filtro_07.BT_NOVA_SIMULACAOClick(Sender: TObject);
begin
     STGR_COMB25_MOD07.Visible := TRUE;
     BBT_PAN07_RECOMECAR.Click;
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     STGR_COMB25_MOD07.Visible := TRUE;
     STGR_COMB25_MOD07.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Visible := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR.Enabled := TRUE;
     BBT_ENCERRAR.Enabled := false; //TRUE;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 4500;
end;


procedure T_F_SIM_01_Filtro_07.BT_CARREGAR_SIMULACAOClick(Sender: TObject);
begin
     STGR_COMB25_MOD07.Visible := TRUE;
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     BBT_PAN07_RECOMECAR.Click;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     PA_PREENCHIMENTO.Visible := false;
     PA_PREENCHIMENTO.Enabled := false;
     BBT_PREPARAR.Visible := false;
     BBT_GERAR.Visible := false;
     BBT_ENCERRAR.Enabled := false; //TRUE;
     BBT_ENCERRAR.Visible := false; //TRUE;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 4500;
     PGBR_FIL07_GERARCOMB.Position := 100;
     STGR_COMB25_MOD07.RowCount := 2;
     WITH STGR_COMB25_MOD07 DO
     BEGIN
          Left := 43    ;
          Top  := 18   ;
          Width  := 958;
          Height := 565 ;
          FixedCols := 1;
          FixedRows := 1;
          Visible := TRUE;
     END; // with
     PA_EXECUTAR_FILTRO.Visible := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_07_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
     SHOWMESSAGE('OK');
end;




procedure T_F_SIM_01_Filtro_07.BBT_GERAR_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;


procedure T_F_SIM_01_Filtro_07.FormClose(Sender: TObject;
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




procedure T_F_SIM_01_Filtro_07.ED_SOMA3_M07_INExit(Sender: TObject);
begin
    ED_SOMA3_M07_FI.Text := INTtoSTR(STRtoINT(ED_SOMA3_M07_IN.Text)+4);
end;

procedure T_F_SIM_01_Filtro_07.BBT_SIMULAR_MOD07Click(Sender: TObject);
var
    VI_COMBINACOES3, VI_COMBINACOES4, VI_QTD_CELULAS : SMALLINT;
    VI_ACONTECEU, VI_QTD_PARES, VI_QTD_IMPARES, VI_COMBINACOES5, VI_COMBINACOES9 : SMALLINT;
    VI_S1: STRING;
    VI_COMBINACOES1, VI_COMBINACOES2, VI_LINHAS1, VI_LINHAS2, VI_SOMA1, VI_SOMA2, VI_SOMA3, VI_CONTASEL1, VI_CONTASEL2, VI_CONTASEL3, VI_CONTASEL4 : INTEGER;

    PROCEDURE PR_ORDENAR_FILTRO07_1 (VI_LINHAS2: INTEGER);
    var
        VI_CONTAR, VI_CNTCELULAS: SMALLINT;
    begin
        // ************************
    	// **  Ordena os dados   **
	    // ************************
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);        
            STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
        END; // FOR VI_CONTAR
        // ----> MONTADO E VERIFICANDO TODOS OS 23 DÍGITOS
        FOR VI_CONTAR :=2 TO 16 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMB25_MOD07.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 2;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMB25_MOD07.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
    end; // PROCEDURE ORDENAR_SIMULACAO_15


    PROCEDURE PR_GRAVAR_DADOS (VC_BEGIN_END: STRING; OUT VI_LINHAS2:INTEGER; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DADOS1, VC_DADOS2, VC_DADOS3, VC_DADOS4, VC_COMBINACOES : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
            VC_DADOS1 := RIGHTSTR ('0'+STGR_BASE_L1MOD7.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L1MOD7.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1MOD7.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1MOD7.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1MOD7.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1MOD7.Cells[6,0],2)+ ' '  + RIGHTSTR ('0'+STGR_BASE_L1MOD7.Cells[7,0],2)+ ' '  + RIGHTSTR ('0'+STGR_BASE_L1MOD7.Cells[8,0],2);
            VC_DADOS2 := RIGHTSTR ('0'+STGR_BASE_L2MOD7.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L2MOD7.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2MOD7.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2MOD7.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2MOD7.Cells[5,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2MOD7.Cells[6,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2MOD7.Cells[7,0],2);
            VC_DADOS3 := RIGHTSTR ('0'+STGR_BASE_L3MOD7.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L3MOD7.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3MOD7.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3MOD7.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3MOD7.Cells[5,0],2);
            VC_DADOS4 := RIGHTSTR ('0'+STGR_BASE_L4MOD7.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L4MOD7.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4MOD7.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4MOD7.Cells[4,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4MOD7.Cells[5,0],2);
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO FILTRO_07_DEFINICAO (LINHA_1, LINHA_2, LINHA_3, LINHA_4, FIXOS_L1_1COL1, FIXOS_L1_2COL1, EXC_L1_COL2, FIXOS_L2_1COL1, FIXOS_L2_2COL1, EXC_L2_COL2, FIXOS_L4_1COL1, FIXOS_L4_2COL1,';
            VC_QUERY  := VC_QUERY +' EXC_L4_COL2, ';
            VC_QUERY  := VC_QUERY +' SOMA_COL_1_INI, SOMA_COL_1_FINAL, SOMA_COL_2_INI, SOMA_COL_2_FINAL, SOMA_COL_3_INI, SOMA_COL_3_FINAL, FIXO_COL1, EXC_COL1, ';
            VC_QUERY  := VC_QUERY +' EXC_1, EXC_2, EXC_3, FIXOS_1, FIXOS_2, FIXOS_3, FIXOS_4, CONTADOR_C1, TOTAL_CONTADOR_C1, DATA_DEFINICAO, HORA_DEFINICAO)';

            VC_QUERY  := VC_QUERY +'  VALUES('+#39+ VC_DADOS1              + #39 +',' +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 + #39 +','  +#39+ VC_DADOS4 ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_FIXO07S_A1.Text      + #39 +',' +#39+ ED_FIXO07S_A2.Text        + #39 +','+#39+ ED_FIXO07EX_A1.Text    + #39 +','+#39+ ED_FIXO07S_B1.Text       + #39 +','+#39+ ED_FIXO07S_B2.Text        + #39 +','+#39+ ED_FIXO07EX_B1.Text + #39 +','+#39+ ED_FIXO07S_D1.Text   + #39 +','+#39+ ED_FIXO07S_D2.Text    + #39 +','+#39+ ED_FIXO07EX_D1.Text;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_SOMAS_M07_IN.Text    + #39 +',' +#39+ ED_SOMAS_M07_FI.Text  + #39 +',' +#39+ ED_SOMAE_M07_IN.Text + #39 +','+#39+ ED_SOMAE_M07_FI.Text + #39 +','+#39+ ED_SOMA3_M07_IN.Text         + #39 +','+#39+  ED_SOMA3_M07_FI.Text      + #39 +','+#39+ ED_FIXO07S_C1.Text              + #39 +','+#39+ ED_FIXO07EX_C1.Text ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01_MOD07.Text          + #39 +',' +#39+ ED_EXC_02_MOD07.Text          + #39 +','+#39+ ED_EXC_03_MOD07.Text        + #39 +','+#39+ ED_FIXOS_01.Text       + #39 +','+#39+ ED_FIXOS_02.Text             + #39 +','+#39+ ED_FIXOS_03.Text             + #39 +','+#39+  ED_FIXOS_04.Text                 + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[])+ #39 +','+#39+FORMATDATETIME('h:n:s',time())+ #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB25_MOD07.RowCount-1;
        IF ((VI_LINHAS2/1997) = (VI_LINHAS2 DIV 1997))
            or ((VI_LINHAS2/1998) = (VI_LINHAS2 DIV 1998))
            or ((VI_LINHAS2/1999) = (VI_LINHAS2 DIV 1999))
            OR (VC_BEGIN_END = 'FIM') THEN
        BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMB25_MOD07.Repaint;
            Self.Repaint;
            Self.WindowState := wsMinimized;
            Self.WindowState :=  wsNormal;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
            FOR VI_AN_COMB1:= 1 TO  TRUNC((STGR_COMB25_MOD07.RowCount-1)/1) DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES :='';
                FOR VI_CNTCELULAS := 2 TO 16 DO
                BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_COMB25_MOD07.Cells[VI_CNTCELULAS,VI_AN_COMB1] +' ';
                END; // FOR VI_CNTCELULAS
                SELF.IBQ_COMBINACOES.SQL.Clear;
                VC_QUERY  := 'INSERT INTO FILTRO_07_DADOS_TEMP (DADOS) VALUES(' +#39+ VC_COMBINACOES + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_07_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            VI_LINHAS2:=1;
            STGR_COMB25_MOD07.RowCount := VI_LINHAS2;
             IF ((VI_LINHAS2/3996) = (VI_LINHAS2 DIV 3996))
                 or ((VI_LINHAS2/3997) = (VI_LINHAS2 DIV 3997))
                 or ((VI_LINHAS2/3998) = (VI_LINHAS2 DIV 3998))
                 OR (VC_BEGIN_END = 'FIM') THEN
             BEGIN
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_07_100repet01' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_07_DADOS_TEMP')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
             end;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS


  PROCEDURE PR_PRE_REMOCAO_REPETIDOS07 (OUT VI_LINHAS9: INTEGER);
    var
        VI_CONTAR: INTEGER;
    begin
        // ****************************************
    	// ** VERIFICA SE HÁ REPETIDOS PARA TRÁS **
	    // ****************************************
        IF (STGR_COMB25_MOD07.RowCount) >=12 THEN
        BEGIN
            FOR VI_CONTAR :=  (VI_LINHAS9-12) TO (VI_LINHAS9-1) DO
            BEGIN
                IF  (STGR_COMB25_mod07.Cells[1,VI_CONTAR] = STGR_COMB25_mod07.Cells[1,VI_LINHAS9]) AND
                    (STGR_COMB25_mod07.Cells[2,VI_CONTAR] = STGR_COMB25_mod07.Cells[2,VI_LINHAS9]) AND
                    (STGR_COMB25_mod07.Cells[3,VI_CONTAR] = STGR_COMB25_mod07.Cells[3,VI_LINHAS9])
                    THEN
                BEGIN
                    IF  (STGR_COMB25_mod07.Cells[4,VI_CONTAR] = STGR_COMB25_mod07.Cells[4,VI_LINHAS9]) AND
                        (STGR_COMB25_mod07.Cells[5,VI_CONTAR] = STGR_COMB25_mod07.Cells[5,VI_LINHAS9]) AND
                        (STGR_COMB25_mod07.Cells[6,VI_CONTAR] = STGR_COMB25_mod07.Cells[6,VI_LINHAS9]) AND
                        (STGR_COMB25_mod07.Cells[7,VI_CONTAR] = STGR_COMB25_mod07.Cells[7,VI_LINHAS9]) AND
                        (STGR_COMB25_mod07.Cells[8,VI_CONTAR] = STGR_COMB25_mod07.Cells[8,VI_LINHAS9]) AND
                        (STGR_COMB25_mod07.Cells[9,VI_CONTAR] = STGR_COMB25_mod07.Cells[9,VI_LINHAS9]) AND
                        (STGR_COMB25_mod07.Cells[10,VI_CONTAR] = STGR_COMB25_mod07.Cells[10,VI_LINHAS9]) AND
                        (STGR_COMB25_mod07.Cells[11,VI_CONTAR] = STGR_COMB25_mod07.Cells[11,VI_LINHAS9]) AND
                        (STGR_COMB25_mod07.Cells[12,VI_CONTAR] = STGR_COMB25_mod07.Cells[12,VI_LINHAS9]) AND
                        (STGR_COMB25_mod07.Cells[13,VI_CONTAR] = STGR_COMB25_mod07.Cells[13,VI_LINHAS9]) AND
                        (STGR_COMB25_mod07.Cells[14,VI_CONTAR] = STGR_COMB25_mod07.Cells[14,VI_LINHAS9]) AND
                        (STGR_COMB25_mod07.Cells[15,VI_CONTAR] = STGR_COMB25_mod07.Cells[15,VI_LINHAS9])
                        THEN
                    BEGIN
                         VI_LINHAS9 := VI_LINHAS9 - 1;
                         exit;
                    END; // if (STGR_COMB25_mod07.Cells[1,VI_CONTAR]
                END; // if (STGR_COMB25_mod07.Cells[1,VI_CONTAR]
            END; // FOR VI_CONTAR
        END;// IF (VI_LINHAS2)
    end; //  PR_PRE_REMOCAO_REPETIDOS07
    
        

begin
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
    STGR_COMB25_MOD07.RowCount := 2;
    PGBR_FIL07_GERARCOMB.Position := 0;
    PGBR_FIL07_GERARCOMB.Repaint;
    PGBR_FIL07_FILTRARCOMB.Position := 0;
    PGBR_FIL07_FILTRARCOMB.Repaint;
    PGBR_FIL07_REMREPET.Position := 0;
    PGBR_FIL07_REMREPET.Repaint;
    STGR_SIM_SELMOD7_SOMATORIA.Cells [0,1] := '0';
    STGR_SIM_SELMOD7_SOMATORIA.Cells [0,1] := '0';
    STGR_SIM_EXCMOD7_SOMATORIA.Cells [0,1] := '0';
    STGR_SIM_EXCMOD7_SOMATORIA.Cells [0,1] := '0';


     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES    ||||
     // ||||=============================||||
     // =====================================
     VI_LINHAS2 := 1;
     VI_LINHAS1 := VI_LINHAS2;
     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_FIL07_L1_SEL.RowCount-1));

        // *********************
        // **  G E R A N D O  **
        // *********************

    VI_LINHAS1 := 1;
    VI_LINHAS2 := 1;
    // =================== AQUI
    FOR VI_COMBINACOES1:= 1 {30} TO (STGR_FIL07_L1_SEL.RowCount-1) DO
    BEGIN
        STGR_SIM_EXCMOD7_SOMATORIA.Cells [0,0] := INTtoSTR(TRUNC((VI_COMBINACOES1/(STGR_FIL07_L1_SEL.RowCount-1))*100))+' %';
        STGR_SIM_EXCMOD7_SOMATORIA.Repaint;
        PGBR_FIL07_GERARCOMB.Position := TRUNC((VI_COMBINACOES1/(STGR_FIL07_L1_SEL.RowCount-1))*100);
        PGBR_FIL07_GERARCOMB.Repaint;
        SLEEP(19);
        FOR VI_COMBINACOES2:= 1 {70} TO (STGR_FIL07_L2_SEL.RowCount-1) DO
        BEGIN
                    // --> Numeros excluídos
                    IF     ((STRtoINT(STGR_FIL07_L1_SEL.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L1_SEL.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L1_SEL.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L1_SEL.Cells[5,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L1_SEL.Cells[6,VI_COMBINACOES1])) = STRtoINT(ED_EXC_01_MOD07.Text))
                       THEN
                              CONTINUE;
                    IF     ((STRtoINT(STGR_FIL07_L1_SEL.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L1_SEL.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L1_SEL.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L1_SEL.Cells[5,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L1_SEL.Cells[6,VI_COMBINACOES1])) = STRtoINT(ED_EXC_02_MOD07.Text))
                       THEN
                              CONTINUE;
                    IF     ((STRtoINT(STGR_FIL07_L1_SEL.Cells[2,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L1_SEL.Cells[3,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L1_SEL.Cells[4,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L1_SEL.Cells[5,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L1_SEL.Cells[6,VI_COMBINACOES1])) = STRtoINT(ED_EXC_03_MOD07.Text))
                       THEN
                              CONTINUE;

                    // --> Numeros excluídos
                    IF     ((STRtoINT(STGR_FIL07_L2_SEL.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L2_SEL.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L2_SEL.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L2_SEL.Cells[5,VI_COMBINACOES2])) = STRtoINT(ED_EXC_01_MOD07.Text))
                       THEN
                              CONTINUE;
                    IF     ((STRtoINT(STGR_FIL07_L2_SEL.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L2_SEL.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L2_SEL.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L2_SEL.Cells[5,VI_COMBINACOES2])) = STRtoINT(ED_EXC_02_MOD07.Text))
                       THEN
                              CONTINUE;
                    IF     ((STRtoINT(STGR_FIL07_L2_SEL.Cells[2,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L2_SEL.Cells[3,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L2_SEL.Cells[4,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03_MOD07.Text))
                       OR  ((STRtoINT(STGR_FIL07_L2_SEL.Cells[5,VI_COMBINACOES2])) = STRtoINT(ED_EXC_03_MOD07.Text))
                       THEN
                              CONTINUE;
            FOR VI_COMBINACOES3:= 1 {11} TO (STGR_FIL07_L3_EXC.RowCount-1) DO
            BEGIN
                         // --> Numeros excluídos
                         IF     ((STRtoINT(STGR_FIL07_L3_EXC.Cells[2,VI_COMBINACOES3])) = STRtoINT(ED_EXC_01_MOD07.Text))
                            OR  ((STRtoINT(STGR_FIL07_L3_EXC.Cells[3,VI_COMBINACOES3])) = STRtoINT(ED_EXC_01_MOD07.Text))
                            OR  ((STRtoINT(STGR_FIL07_L3_REST.Cells[1,VI_COMBINACOES3])) = STRtoINT(ED_EXC_01_MOD07.Text))
                            THEN
                                   CONTINUE;
                         IF     ((STRtoINT(STGR_FIL07_L3_EXC.Cells[2,VI_COMBINACOES3])) = STRtoINT(ED_EXC_02_MOD07.Text))
                            OR  ((STRtoINT(STGR_FIL07_L3_EXC.Cells[3,VI_COMBINACOES3])) = STRtoINT(ED_EXC_02_MOD07.Text))
                            OR  ((STRtoINT(STGR_FIL07_L3_REST.Cells[1,VI_COMBINACOES3]))= STRtoINT(ED_EXC_02_MOD07.Text))
                            THEN
                                   CONTINUE;
                         IF     ((STRtoINT(STGR_FIL07_L3_EXC.Cells[2,VI_COMBINACOES3])) = STRtoINT(ED_EXC_03_MOD07.Text))
                            OR  ((STRtoINT(STGR_FIL07_L3_EXC.Cells[3,VI_COMBINACOES3])) = STRtoINT(ED_EXC_03_MOD07.Text))
                            OR  ((STRtoINT(STGR_FIL07_L3_REST.Cells[1,VI_COMBINACOES3]))= STRtoINT(ED_EXC_03_MOD07.Text))
                            THEN
                                   CONTINUE;
                FOR VI_COMBINACOES4:= 1 TO (STGR_FIL07_L4_SEL.RowCount-1) DO
                BEGIN
                         // --> Numeros excluídos
                         IF     ((STRtoINT(STGR_FIL07_L4_SEL.Cells[2,VI_COMBINACOES4])) = STRtoINT(ED_EXC_01_MOD07.Text))
                            OR  ((STRtoINT(STGR_FIL07_L4_SEL.Cells[3,VI_COMBINACOES4])) = STRtoINT(ED_EXC_01_MOD07.Text))
                            OR  ((STRtoINT(STGR_FIL07_L4_SEL.Cells[4,VI_COMBINACOES4])) = STRtoINT(ED_EXC_01_MOD07.Text))
                            THEN
                                   CONTINUE;
                         IF     ((STRtoINT(STGR_FIL07_L4_SEL.Cells[2,VI_COMBINACOES4])) = STRtoINT(ED_EXC_02_MOD07.Text))
                            OR  ((STRtoINT(STGR_FIL07_L4_SEL.Cells[3,VI_COMBINACOES4])) = STRtoINT(ED_EXC_02_MOD07.Text))
                            OR  ((STRtoINT(STGR_FIL07_L4_SEL.Cells[4,VI_COMBINACOES4])) = STRtoINT(ED_EXC_02_MOD07.Text))
                            THEN
                                   CONTINUE;
                         IF     ((STRtoINT(STGR_FIL07_L4_SEL.Cells[2,VI_COMBINACOES4])) = STRtoINT(ED_EXC_03_MOD07.Text))
                            OR  ((STRtoINT(STGR_FIL07_L4_SEL.Cells[3,VI_COMBINACOES4])) = STRtoINT(ED_EXC_03_MOD07.Text))
                            OR  ((STRtoINT(STGR_FIL07_L4_SEL.Cells[4,VI_COMBINACOES4])) = STRtoINT(ED_EXC_03_MOD07.Text))
                            THEN
                                   CONTINUE;
                    IF (STGR_FIL07_L1_SEL.Cells[1,VI_COMBINACOES1]='V') AND (STGR_FIL07_L2_SEL.Cells[1,VI_COMBINACOES2]='V') AND
                            (STGR_FIL07_L3_EXC.Cells[1,VI_COMBINACOES3]='V') AND (STGR_FIL07_L4_SEL.Cells[1,VI_COMBINACOES4]='V')
                        AND (STGR_FIL07_L1_EXC.Cells[1,VI_COMBINACOES1]='V') AND (STGR_FIL07_L2_EXC.Cells[1,VI_COMBINACOES2]='V') AND
                            (STGR_FIL07_L3_SEL.Cells[1,VI_COMBINACOES3]='V') AND (STGR_FIL07_L4_EXC.Cells[1,VI_COMBINACOES4]='V')
                    THEN
                    BEGIN
                        // --> Numeros Gerados
                        STGR_COMB25_MOD07.Cells [0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                        STGR_COMB25_MOD07.Cells [1,VI_LINHAS2] := 'F';
                        STGR_COMB25_MOD07.Cells [2,VI_LINHAS2] := STGR_FIL07_L1_SEL.Cells[2,VI_COMBINACOES1];
                        STGR_COMB25_MOD07.Cells [3,VI_LINHAS2] := STGR_FIL07_L1_SEL.Cells[3,VI_COMBINACOES1];
                        STGR_COMB25_MOD07.Cells [4,VI_LINHAS2] := STGR_FIL07_L1_SEL.Cells[4,VI_COMBINACOES1];
                        STGR_COMB25_MOD07.Cells [5,VI_LINHAS2] := STGR_FIL07_L1_SEL.Cells[5,VI_COMBINACOES1];
                        STGR_COMB25_MOD07.Cells [6,VI_LINHAS2] := STGR_FIL07_L1_SEL.Cells[6,VI_COMBINACOES1];
                        STGR_COMB25_MOD07.Cells [7,VI_LINHAS2] := STGR_FIL07_L2_SEL.Cells[2,VI_COMBINACOES2];
                        STGR_COMB25_MOD07.Cells [8,VI_LINHAS2] := STGR_FIL07_L2_SEL.Cells[3,VI_COMBINACOES2];
                        STGR_COMB25_MOD07.Cells [9,VI_LINHAS2] := STGR_FIL07_L2_SEL.Cells[4,VI_COMBINACOES2];
                        STGR_COMB25_MOD07.Cells [10,VI_LINHAS2] := STGR_FIL07_L2_SEL.Cells[5,VI_COMBINACOES2];
                        STGR_COMB25_MOD07.Cells [11,VI_LINHAS2] := STGR_FIL07_L3_EXC.Cells[2,VI_COMBINACOES3];
                        STGR_COMB25_MOD07.Cells [12,VI_LINHAS2] := STGR_FIL07_L3_EXC.Cells[3,VI_COMBINACOES3];
                        STGR_COMB25_MOD07.Cells [13,VI_LINHAS2] := STGR_FIL07_L3_REST.Cells[1,VI_COMBINACOES3];
                        STGR_COMB25_MOD07.Cells [14,VI_LINHAS2] := STGR_FIL07_L4_SEL.Cells[2,VI_COMBINACOES4];
                        STGR_COMB25_MOD07.Cells [15,VI_LINHAS2] := STGR_FIL07_L4_SEL.Cells[3,VI_COMBINACOES4];
                        STGR_COMB25_MOD07.Cells [16,VI_LINHAS2] := STGR_FIL07_L4_SEL.Cells[4,VI_COMBINACOES4];
                        STGR_COMB25_MOD07.Cells [17,VI_LINHAS2] := '1';


                                        // --------------------
                                        // --  NUMEROS FIXOS   --
                                        // --------------------
                                        IF (STRtoINT(ED_FIXOS_01.Text)>0) THEN
                                        BEGIN
                                             STGR_COMB25_MOD07.Cells[33,VI_LINHAS2] := 'F';
                                             FOR VI_CONTASEL1 := 3 TO 17 DO
                                             BEGIN
                                                  IF ((STRtoINT(STGR_COMB25_MOD07.Cells[VI_CONTASEL1,VI_LINHAS2])) = STRtoINT(ED_FIXOS_01.Text))
                                                  THEN BEGIN
                                                       IF (STRtoINT(ED_FIXOS_02.Text)>0) THEN
                                                       BEGIN
                                                            FOR VI_CONTASEL2 := 3 TO 17 DO
                                                            BEGIN
                                                                 IF ((STRtoINT(STGR_COMB25_MOD07.Cells[VI_CONTASEL2,VI_LINHAS2])) = STRtoINT(ED_FIXOS_02.Text))
                                                                 THEN
                                                                      STGR_COMB25_MOD07.Cells[33,VI_LINHAS2] := 'V';
                                                            END; // FOR VI_CONTARSEL2
                                                       END ELSE
                                                       BEGIN
                                                            STGR_COMB25_MOD07.Cells[33,VI_LINHAS2] := 'V';
                                                       END; // IF
                                                  END;// IF
                                             END; // FOR
                                             IF  (STGR_COMB25_MOD07.Cells[33,VI_LINHAS2] = 'F')
                                             THEN
                                                  CONTINUE;
                                        END; // IF (STRtoINT(ED_FIXOS_01.Text)>0)
                                        IF (STRtoINT(ED_FIXOS_03.Text)>0) THEN
                                        BEGIN
                                             STGR_COMB25_MOD07.Cells[34,VI_LINHAS2] := 'F';
                                             FOR VI_CONTASEL3 := 3 TO 17 DO
                                             BEGIN
                                                  IF ((STRtoINT(STGR_COMB25_MOD07.Cells[VI_CONTASEL3,VI_LINHAS2])) = STRtoINT(ED_FIXOS_03.Text))
                                                  THEN
                                                  BEGIN
                                                            IF (STRtoINT(ED_FIXOS_04.Text)>0) THEN
                                                            BEGIN
                                                                      FOR VI_CONTASEL4 := 3 TO 17 DO
                                                                      BEGIN
                                                                           IF ((STRtoINT(STGR_COMB25_MOD07.Cells[VI_CONTASEL4,VI_LINHAS2])) = STRtoINT(ED_FIXOS_04.Text))
                                                                           THEN
                                                                                STGR_COMB25_MOD07.Cells[34,VI_LINHAS2] := 'V';
                                                                      END; // FOR VI_CONTASEL3
                                                            END  ELSE
                                                            BEGIN
                                                                 STGR_COMB25_MOD07.Cells[34,VI_LINHAS2] := 'V';
                                                            END;
                                                  END; // IF ((STRtoINT(STGR_COMB25_MOD07.
                                             END; // FOR VI_CONTARSEL3
                                             IF  (STGR_COMB25_MOD07.Cells[34,VI_LINHAS2] = 'F')
                                             THEN
                                                  CONTINUE;
                                        END; // IF (STRtoINT(ED_FIXOS_03.Text)>0)
                                    
                        // --> Soma
                        VI_SOMA1 :=  STRtoINT(STGR_COMB25_MOD07.Cells [2,VI_LINHAS2]) + STRtoINT(STGR_COMB25_MOD07.Cells [3,VI_LINHAS2]) + STRtoINT(STGR_COMB25_MOD07.Cells [4,VI_LINHAS2])
                             + STRtoINT(STGR_COMB25_MOD07.Cells [5,VI_LINHAS2])+ STRtoINT(STGR_COMB25_MOD07.Cells [6,VI_LINHAS2]) + STRtoINT(STGR_COMB25_MOD07.Cells [7,VI_LINHAS2])
                             + STRtoINT(STGR_COMB25_MOD07.Cells [8,VI_LINHAS2])+ STRtoINT(STGR_COMB25_MOD07.Cells [9,VI_LINHAS2]) + STRtoINT(STGR_COMB25_MOD07.Cells [10,VI_LINHAS2])
                                      + STRtoINT(STGR_FIL07_L3_SEL.Cells [2,VI_COMBINACOES3])+ STRtoINT(STGR_FIL07_L3_SEL.Cells [3,VI_COMBINACOES3])
                             + STRtoINT(STGR_COMB25_MOD07.Cells [14,VI_LINHAS2])+ STRtoINT(STGR_COMB25_MOD07.Cells [15,VI_LINHAS2]) + STRtoINT(STGR_COMB25_MOD07.Cells [16,VI_LINHAS2]) ;

                        VI_SOMA2 := STRtoINT(STGR_FIL07_L1_EXC.Cells [2,VI_COMBINACOES1]) + STRtoINT(STGR_FIL07_L1_EXC.Cells [3,VI_COMBINACOES1])
                             + STRtoINT(STGR_FIL07_L2_EXC.Cells [2,VI_COMBINACOES2])+ STRtoINT(STGR_FIL07_L2_EXC.Cells [3,VI_COMBINACOES2])
                             + STRtoINT(STGR_FIL07_L3_EXC.Cells [2,VI_COMBINACOES3])+ STRtoINT(STGR_FIL07_L3_EXC.Cells [3,VI_COMBINACOES3])
                             + STRtoINT(STGR_FIL07_L4_EXC.Cells [2,VI_COMBINACOES4]) ;

                        VI_SOMA3 := STRtoINT(STGR_FIL07_L1_REST.Cells [1,VI_COMBINACOES1]) + STRtoINT(STGR_FIL07_L2_REST.Cells [1,VI_COMBINACOES2])
                                 + STRtoINT(STGR_FIL07_L3_REST.Cells [1,VI_COMBINACOES3]) + STRtoINT(STGR_FIL07_L4_REST.Cells [1,VI_COMBINACOES4]) ;

                        STGR_SIM_SELMOD7_SOMATORIA.Cells [2,1] := 'F';
                        STGR_SIM_EXCMOD7_SOMATORIA.Cells [2,1] := 'F';
                        // -->  Descrição da geração de combinações
                        STGR_SIM_SELMOD7_SOMATORIA.Cells [0,0] := INTtoSTR(VI_LINHAS1);
                        STGR_SIM_SELMOD7_SOMATORIA.Cells [1,1] := INTtoSTR(VI_SOMA1) ;
                        STGR_SIM_SELMOD7_SOMATORIA.Repaint;
                        STGR_SIM_EXCMOD7_SOMATORIA.Cells [1,1] := INTtoSTR(VI_SOMA2) ;
                        // -->  Contador das Combinações
                        VI_LINHAS1 := VI_LINHAS1 + 1;
                        // -->  Limitador por soma
                        IF (VI_SOMA1 >= STRtoINT(ED_SOMAS_M07_IN.Text)) AND (VI_SOMA1 <= STRtoINT(ED_SOMAS_M07_FI.Text))
                        THEN
                        BEGIN
                            STGR_SIM_SELMOD7_SOMATORIA.Cells [2,1] := 'V';
                            IF  (VI_SOMA2 >= STRtoINT(ED_SOMAE_M07_IN.Text)) AND (VI_SOMA2 <= STRtoINT(ED_SOMAE_M07_FI.Text))  AND ((VI_SOMA3 >= STRtoINT(ED_SOMA3_M07_IN.Text)) AND (VI_SOMA3 <= STRtoINT(ED_SOMA3_M07_FI.Text)))
                            THEN
                            BEGIN
                                STGR_SIM_EXCMOD7_SOMATORIA.Cells [2,1] := 'V';
                                  PR_ORDENAR_FILTRO07_1 (VI_LINHAS2);
////                                      PR_PRE_REMOCAO_REPETIDOS07 (VI_LINHAS2) ;
                                VI_LINHAS2 := VI_LINHAS2 + 1;
                                STGR_COMB25_MOD07.RowCount := VI_LINHAS2;
                                   STGR_COMB25_MOD07.Repaint;
                                   sleep(4);                                
                                STGR_SIM_SELMOD7_SOMATORIA.Cells [0,1] := INTtoSTR(VI_LINHAS2);
                                STGR_SIM_SELMOD7_SOMATORIA.Repaint;
                                STGR_SIM_EXCMOD7_SOMATORIA.Repaint;
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_FIL07_L1_SEL.RowCount-1));
                            END; // IF  (VI_SOMA2 > STRtoINT(ED_SOMA08_in.Text))
                        END; // IF (VI_SOMA1 > STRtoINT(ED_SOMA15_in.Text)
                        if (VI_LINHAS2/100)=(VI_LINHAS2 DIV 100) then
                            STGR_COMB25_MOD07.Repaint;
                        if (VI_LINHAS2/900)=(VI_LINHAS2 DIV 900) then begin
                            Self.WindowState := wsMinimized;
                            Self.WindowState :=  wsNormal;
                        end; // if
                    END; // IF
                END; // FOR VI_COMBINACOES4
            END; // FOR VI_COMBINACOES3
        END; // FOR VI_COMBINACOES2
                        if (VI_COMBINACOES1/10)=(VI_COMBINACOES1 DIV 10) then begin
                            Self.WindowState := wsMinimized;
                            Self.WindowState :=  wsNormal;
                            Self.Repaint;
                            sleep(190);
                        end; // if
    END; // FOR VI_COMBINACOES1
    STGR_COMB25_MOD07.Repaint;
    PGBR_FIL07_FILTRARCOMB.Position  := 100;
    PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_FIL07_L1_SEL.RowCount-1));
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_PAN07_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR.Enabled    := false;
     BBT_ENCERRAR.Enabled := false;
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';
          SELF.PR_SIMULAR_RECUPERANDODADOS('');
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
          LA_rTOTAL_100REPET.Caption := INTtoSTR(STGR_COMB25_MOD07.RowCount)+ '    ';
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_07_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTASEL1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_07_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTASEL1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_07_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     PA_REMOVEUREPET.Left :=  500;
end;



procedure T_F_SIM_01_Filtro_07.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_07_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;



end.
