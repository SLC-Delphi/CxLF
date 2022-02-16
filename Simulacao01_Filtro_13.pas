unit Simulacao01_Filtro_13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,  STRUtils,
  Dialogs, Menus, DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, ComCtrls,
  ExtCtrls, StdCtrls, Buttons, Grids;

type
  T_F_SIM_01_FILTRO_04 = class(TForm)
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
    SCBX_GABARITO: TScrollBox;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label35: TLabel;
    LA_LINHA_1_100REP: TLabel;
    Label3: TLabel;
    LA_LINHA_4_100REP: TLabel;
    LA_LINHA_3_100REP: TLabel;
    Label38: TLabel;
    Label5: TLabel;
    LA_LINHA_5_100REP: TLabel;
    Bevel5: TBevel;
    STGR_LINHA_1_C1: TStringGrid;
    STGR_LINHA_2_C1: TStringGrid;
    STGR_LINHA_3_C1: TStringGrid;
    STGR_LINHA_4_C1: TStringGrid;
    PA_RESULTADO: TPanel;
    STGR_COMB15: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR_MENU: TBitBtn;
    BBT_ENCERRAR: TBitBtn;
    BBT_GERAR_FILTRO: TBitBtn;
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
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    Label1: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    LA_LINHA_2_100REP: TLabel;
    Label11: TLabel;
    STGR_LINHA_5_Comb6: TStringGrid;
    Bevel4: TBevel;
    Label4: TLabel;
    LA_1234_TODOS: TLabel;
    STGR_LINHA_1234_TODOS: TStringGrid;
    BBT_CLICK_TUDO: TButton;
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
    STGR_LINHA_5_Comb7: TStringGrid;
    LA_LINHA5_Comb7: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    STGR_LINHA_5_Comb8: TStringGrid;
    LA_LINHA5_Comb8: TLabel;
    PA_GERAR: TPanel;
    Label64: TLabel;
    Label65: TLabel;
    RB_GERAR: TRadioButton;
    RB_GERAR_FILTRAR: TRadioButton;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_GERAR: TBitBtn;
    BBT_GERAR_SAIR: TBitBtn;
    PA_REMOVEUREPET: TPanel;
    Bevel6: TBevel;
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
    Label8: TLabel;
    LA_gFIM_100REPET: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    PA_FIMFILTRO: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    LA_fTOTAL_COMB: TLabel;
    LA_fQTD_COMB: TLabel;
    Label59: TLabel;
    LA_fTOTAL_100REPET: TLabel;
    Label62: TLabel;
    LA_fQTD_FILTRADOS: TLabel;
    BBT_FIMFILTRO: TBitBtn;
    ED_FIXOS_05: TEdit;
    CB_MODO_FILTRO: TComboBox;
    PA_INICIAL: TPanel;
    Label9: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_CARREGAR_SIMULACAO: TButton;
    BT_RECUPERAR_SIMULACAO: TButton;
    PA_PREPARAR_MENU: TPanel;
    Label12: TLabel;
    Panel3: TPanel;
    Label13: TLabel;
    BBT_PREPARAR: TBitBtn;
    BitBtn2: TBitBtn;
    CB_MODO_LINHA1: TComboBox;
    Label10: TLabel;
    CB_MODO_LINHA4: TComboBox;
    BBT_CANCELAR: TBitBtn;
    procedure BBT_CLICK_TUDOClick(Sender: TObject);
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
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure BBT_GERAR_FILTROClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure BBT_ENCERRARClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_FIMFILTROClick(Sender: TObject);
    procedure BBT_GERAR_SAIRClick(Sender: TObject);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure BT_CARREGAR_SIMULACAOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBT_PREPARAR_MENUClick(Sender: TObject);
    procedure BBT_CANCELARClick(Sender: TObject);
  private
    F_SET_FLAG_AUTOEXECUTAR: STRING;
    { Private declarations }
     PROCEDURE PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
    procedure Set_SET_FLAG_AUTOEXECUTAR(const Value: STRING);
  public
    { Public declarations }
     PROPERTY _SET_FLAG_AUTOEXECUTAR : STRING read F_SET_FLAG_AUTOEXECUTAR write Set_SET_FLAG_AUTOEXECUTAR;    
  end;

var
  _F_SIM_01_FILTRO_04: T_F_SIM_01_FILTRO_04;

implementation

uses Unit1;

{$R *.dfm}




procedure T_F_SIM_01_FILTRO_04.BBT_CLICK_TUDOClick(Sender: TObject);
begin
     BBT_701.Click;
     BBT_706.Click;
     BBT_711.Click;

     BBT_715.Click;
     BBT_720.Click;
     BBT_725.Click;

     BBT_712.Click;
     BBT_713.Click;
     BBT_714.Click;

     BBT_705.Click;
     BBT_710.Click;
     BBT_716.Click;
     BBT_721.Click;

     BBT_702.Click;
     BBT_707.Click;

     BBT_703.Click;
     BBT_708.Click;

     BBT_704.Click;
     BBT_709.Click;

     BBT_717.Click;
     BBT_722.Click;

     BBT_718.Click;
     BBT_723.Click;

     BBT_719.Click;
     BBT_724.Click;
end;







procedure T_F_SIM_01_FILTRO_04.FormCreate(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
     SELF.ClientWidth  := 1225;
     SELF.ClientHeight := 685;
     SELF.Top  := 90;
     SELF.Left := 20;
    STGR_COMB15.RowCount := 2;
    FOR VI_CONTAR := 1 TO 3 DO
    BEGIN
        STGR_BASE_L1.Cells[VI_CONTAR,0] := '00';
        STGR_BASE_L2.Cells[VI_CONTAR,0] := '00';
        STGR_BASE_L3.Cells[VI_CONTAR,0] := '00';
        STGR_BASE_L4.Cells[VI_CONTAR,0] := '00';
        STGR_BASE_L4.Cells[VI_CONTAR+1,0] := '00';
    END;
    FOR VI_CONTAR := 1 TO 2 DO
    BEGIN
        STGR_BASE_L5.Cells[VI_CONTAR,1] := '00';
        STGR_BASE_L5.Cells[VI_CONTAR,2] := '00';
        STGR_BASE_L5.Cells[VI_CONTAR,3] := '00';
        STGR_BASE_L5.Cells[VI_CONTAR,4] := '00';
        STGR_BASE_L5.Cells[VI_CONTAR,5] := '00';
        STGR_BASE_L5.Cells[VI_CONTAR,6] := '00';
    END;
    STGR_COMB15.Cells[0,0] := 'QTD';
    STGR_COMB15.Cells[1,0] := '100REP';
    STGR_COMB15.Cells[2,0] := 'FILTRADO';
    FOR VI_CONTAR := 1 TO 15 DO
    BEGIN
        STGR_COMB15.Cells [VI_CONTAR+3,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
    END;
    FOR VI_CONTAR := 4 TO 18 DO
    BEGIN
        STGR_COMB15.Cells [VI_CONTAR,1] := '0';
    END;
     FOR VI_CONTAR :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
     END; // FOR VI_CONTAR
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     PA_PREPARAR_MENU.Enabled := false;
     PA_PREPARAR_MENU.Left := 4500;
     PA_INICIAL.Enabled := TRUE;
     BBT_CLICK_TUDO.Click;
//     PA_EXCLUIDOS.Visible := TRUE;
  //   PA_EXCLUIDOS.Enabled := TRUE;
    // PA_EXCLUIDOS.SetFocus;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_04_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
               SELF.IBQ_COMBINACOES.Close;
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT FLAG_AUTOEXECUTAR FROM FILTRO_NS_01_DEFINICAO;')  ;
               SELF.IBQ_COMBINACOES.Open;
               SELF._SET_FLAG_AUTOEXECUTAR := TRIM(SELF.IBQ_COMBINACOES.FieldByName('FLAG_AUTOEXECUTAR').AsString);
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
        PA_INICIAL.Left := 450;

end;




procedure T_F_SIM_01_FILTRO_04.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;





procedure T_F_SIM_01_FILTRO_04.BBT_701Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(1);
    BBT_701.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_702Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(2);
    BBT_702.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_703Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(3);
    BBT_703.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_704Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(4);
    BBT_704.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_705Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(5);
    BBT_705.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_706Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(6);
    BBT_706.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_707Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(7);
    BBT_707.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_708Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(8);
    BBT_708.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_710Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(10);
    BBT_710.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_709Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(9);
    BBT_709.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_711Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(11);
    BBT_711.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_712Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(12);
    BBT_712.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_713Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(13);
    BBT_713.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_714Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(14);
    BBT_714.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_715Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(15);
    BBT_715.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_716Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(16);
    BBT_716.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_717Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(17);
    BBT_717.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_718Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(18);
    BBT_718.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_719Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(19);
    BBT_719.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_720Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(20);
    BBT_720.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_721Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(21);
    BBT_721.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_722Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(22);
    BBT_722.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_723Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(23);
    BBT_723.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_724Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(24);
    BBT_724.Enabled := FALSE;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_725Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO_12345(25);
    BBT_725.Enabled := FALSE;
end;




PROCEDURE T_F_SIM_01_FILTRO_04.PR_BOTOES_MODELO_12345 (VI_NUMERO: INTEGER);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3, VI_CONTAR4, VI_CONTAR51, VI_CONTAR52, VI_CONTAR53, VI_CONTAR54, VI_CONTAR55, VI_CONTAR56 : INTEGER;
BEGIN
   FOR VI_CONTAR := 1 TO 3 DO
    BEGIN
        IF (STRtoINT (STGR_BASE_L1.Cells [VI_CONTAR,0]) = 0) THEN
        BEGIN
            STGR_BASE_L1.Cells [VI_CONTAR,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
            EXIT;
        END ELSE
        IF (VI_CONTAR = 3) THEN
        BEGIN
            FOR VI_CONTAR2 :=1 TO 3 DO
            BEGIN
                IF (STRtoINT (STGR_BASE_L2.Cells [VI_CONTAR2,0]) = 0) THEN
                BEGIN
                    STGR_BASE_L2.Cells [VI_CONTAR2,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                    EXIT;
                END ELSE
                IF (VI_CONTAR2 = 3) THEN
                BEGIN
                    FOR VI_CONTAR3 :=1 TO 3 DO
                    BEGIN
                        IF (STRtoINT (STGR_BASE_L3.Cells [VI_CONTAR3,0]) = 0) THEN
                        BEGIN
                            STGR_BASE_L3.Cells [VI_CONTAR3,0] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                            EXIT  ;
                        END ELSE
                        IF (VI_CONTAR3 = 3) THEN
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
                                    FOR VI_CONTAR51 :=1 TO 2 DO
                                    BEGIN
                                        IF (STRtoINT (STGR_BASE_L5.Cells [VI_CONTAR51,1]) = 0) THEN
                                        BEGIN
                                            STGR_BASE_L5.Cells [VI_CONTAR51,1] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                            EXIT ;
                                      END ELSE
                                             IF (VI_CONTAR51 = 2) THEN
                                             BEGIN
                                              FOR VI_CONTAR52 :=1 TO 2 DO
                                              BEGIN
                                                  IF (STRtoINT (STGR_BASE_L5.Cells [VI_CONTAR52,2]) = 0) THEN
                                                  BEGIN
                                                      STGR_BASE_L5.Cells [VI_CONTAR52,2] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                                      EXIT ;
                                                  END ELSE
                                                  IF (VI_CONTAR52 = 2) THEN
                                                  BEGIN
                                                       FOR VI_CONTAR53 :=1 TO 2 DO
                                                       BEGIN
                                                            IF (STRtoINT (STGR_BASE_L5.Cells [VI_CONTAR53,3]) = 0) THEN
                                                            BEGIN
                                                                STGR_BASE_L5.Cells [VI_CONTAR53,3] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                                                EXIT ;
                                                            END ELSE
                                                            IF (VI_CONTAR53 = 2) THEN
                                                            BEGIN
                                                                 FOR VI_CONTAR54 :=1 TO 2 DO
                                                                 BEGIN
                                                                      IF (STRtoINT (STGR_BASE_L5.Cells [VI_CONTAR54,4]) = 0) THEN
                                                                      BEGIN
                                                                          STGR_BASE_L5.Cells [VI_CONTAR54,4] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                                                          EXIT ;
                                                                      END ELSE
                                                                      IF (VI_CONTAR54 = 2) THEN
                                                                      BEGIN
                                                                           FOR VI_CONTAR55 :=1 TO 2 DO
                                                                           BEGIN
                                                                                IF (STRtoINT (STGR_BASE_L5.Cells [VI_CONTAR55,5]) = 0) THEN
                                                                                BEGIN
                                                                                    STGR_BASE_L5.Cells [VI_CONTAR55,5] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                                                                    EXIT ;
                                                                                END ELSE
                                                                                IF (VI_CONTAR55 = 2) THEN
                                                                                BEGIN
                                                                                     FOR VI_CONTAR56 :=1 TO 2 DO
                                                                                     BEGIN
                                                                                          IF (STRtoINT (STGR_BASE_L5.Cells [VI_CONTAR56,6]) = 0) THEN
                                                                                          BEGIN
                                                                                              STGR_BASE_L5.Cells [VI_CONTAR56,6] := RIGHTSTR ('0'+INTtoSTR(VI_NUMERO),2);
                                                                                              EXIT ;
                                                                                          END; // IF VI_CONTAR56
                                                                                     end; // FOR VI_CONTAR_56
                                                                                END; // IF VI_CONTAR55
                                                                           end; // FOR VI_CONTAR_55
                                                                      END; // IF VI_CONTAR54
                                                                 end; // FOR VI_CONTAR_54
                                                            END; // IF VI_CONTAR53
                                                       end; // FOR VI_CONTAR_53
                                                  END; // IF VI_CONTAR52
                                              end; // FOR VI_CONTAR_52
                                        END; // IF VI_CONTAR51
                                    END; // FOR VI_CONTAR51
                                END; // IF VI_CONTAR4
                            END; // FOR VI_CONTAR4
                        END; // IF (VI_CONTAR3
                    END;// FOR VI_CONTAR3
                END; // IF (STRtoINT
            END; // FOR VI_CONTAR 2
        END;// IF (STRtoINT
    END; // VI_CONTAR
END;



procedure T_F_SIM_01_FILTRO_04.BBT_RECOMECARClick(Sender: TObject);
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
    FOR VI_CONTAR := 1 TO 3 DO
    BEGIN
        STGR_BASE_L1.Cells[VI_CONTAR,0] := '00';
        STGR_BASE_L2.Cells[VI_CONTAR,0] := '00';
        STGR_BASE_L3.Cells[VI_CONTAR,0] := '00';
        STGR_BASE_L4.Cells[VI_CONTAR,0] := '00';
        STGR_BASE_L4.Cells[VI_CONTAR+1,0] := '00';
    END;
    FOR VI_CONTAR := 1 TO 2 DO
    BEGIN
        STGR_BASE_L5.Cells[VI_CONTAR,0] := '00';
        STGR_BASE_L5.Cells[VI_CONTAR,1] := '00';
        STGR_BASE_L5.Cells[VI_CONTAR,2] := '00';
        STGR_BASE_L5.Cells[VI_CONTAR,3] := '00';
        STGR_BASE_L5.Cells[VI_CONTAR,4] := '00';
        STGR_BASE_L5.Cells[VI_CONTAR,5] := '00';
    END;
    FOR VI_CONTAR := 1 TO 15 DO
    BEGIN
        STGR_COMB15.Cells [VI_CONTAR+3,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
    END;
    FOR VI_CONTAR := 4 TO 18 DO
    BEGIN
        STGR_COMB15.Cells [VI_CONTAR,1] := '0';
    END;    
end;




procedure T_F_SIM_01_FILTRO_04.BBT_PREPARARClick(Sender: TObject);
var
     VI_CONTADOR, VI_CONTAR, VI_LINHAS2,VI_COMBINACOES1, VI_COMBINACOES2,VI_COMBINACOES3, VI_COMBINACOES4, VI_COMBINACOES5,
     VI_COMBINACOES6, VI_COMBINACOES7, VI_COMBINACOES8, VI_COMBINACOES9, VI_COMBINACOES0, VI_CNTCELULAS : integer;
begin
     PA_PREPARAR_MENU.Enabled := false;
     PA_PREPARAR_MENU.Left := 4500;
     BBT_GERAR_FILTRO.Enabled := TRUE;
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
        STGR_COMB15.Cells [VI_CONTAR+3,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
        STGR_COMB15.Cells [VI_CONTAR+3,1] := '00';
     END;
        // ***************************
        // **  CONFERINDO OS EXCLUIDOS **
        // ***************************
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
            ED_FIXOS_03.SetFocus;
            EXIT;
     END; // IF
     IF (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_03.Text ) )
     THEN
     BEGIN
            SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
            ED_FIXOS_04.SetFocus;
            EXIT;
     END; // IF
     IF (STRtoINT(ED_FIXOS_05.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
       (STRtoINT(ED_FIXOS_05.Text) = STRtoINT(ED_EXC_02.Text ) ) OR
       (STRtoINT(ED_FIXOS_05.Text) = STRtoINT(ED_EXC_03.Text ) )
     THEN
     BEGIN
            SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
            ED_FIXOS_05.SetFocus;
            EXIT;
     END; // IF
        // ******************
        // **  LINHA_1 **
        // ******************
     VI_LINHAS2:= 1;
     STGR_LINHA_1_C1.Cells[0,0] := 'N.';
     STGR_LINHA_1_C1.Cells[1,0] := 'qtd';
     STGR_LINHA_1_C1.Cells[0,0] := 'N.';
     STGR_LINHA_1_C1.Cells[0,1] := '1';
     STGR_LINHA_1_C1.Cells[1,1] := '1';
     STGR_LINHA_1_C1.Cells[0,2] := '2';
     STGR_LINHA_1_C1.Cells[1,2] := '1';
     STGR_LINHA_1_C1.Cells[0,3] := '3';
     STGR_LINHA_1_C1.Cells[1,3] := '1';
     STGR_LINHA_1_C1.Cells[2,1] := STGR_BASE_L1.Cells[1,0];
     STGR_LINHA_1_C1.Cells[2,2] := STGR_BASE_L1.Cells[2,0];
     STGR_LINHA_1_C1.Cells[2,3] := STGR_BASE_L1.Cells[3,0];
     STGR_LINHA_1_C1.Cells[3,1] := '00';
     STGR_LINHA_1_C1.Cells[3,2] := '00';
     STGR_LINHA_1_C1.Cells[3,3] := '00';

     STGR_LINHA_1_C1.Cells[0,4] := '4';
     STGR_LINHA_1_C1.Cells[1,4] := '2';
     STGR_LINHA_1_C1.Cells[0,5] := '5';
     STGR_LINHA_1_C1.Cells[1,5] := '2';
     STGR_LINHA_1_C1.Cells[0,6] := '6';
     STGR_LINHA_1_C1.Cells[1,6] := '2';
     STGR_LINHA_1_C1.Cells[2,4] := STGR_BASE_L1.Cells[1,0];
     STGR_LINHA_1_C1.Cells[2,5] := STGR_BASE_L1.Cells[1,0];
     STGR_LINHA_1_C1.Cells[2,6] := STGR_BASE_L1.Cells[2,0];
     STGR_LINHA_1_C1.Cells[3,4] := STGR_BASE_L1.Cells[2,0];
     STGR_LINHA_1_C1.Cells[3,5] := STGR_BASE_L1.Cells[3,0];
     STGR_LINHA_1_C1.Cells[3,6] := STGR_BASE_L1.Cells[3,0];
     LA_LINHA_1_100REP.Caption :='06';
     STGR_LINHA_1_C1.RowCount := 7;
     IF (CB_MODO_LINHA1.ItemIndex = 1) THEN
     BEGIN
          STGR_LINHA_1_C1.Cells[0,7] := '7';
          STGR_LINHA_1_C1.Cells[1,7] := '3';
          STGR_LINHA_1_C1.Cells[2,7] := STGR_BASE_L1.Cells[1,0];
          STGR_LINHA_1_C1.Cells[3,7] := STGR_BASE_L1.Cells[2,0];
          STGR_LINHA_1_C1.Cells[4,7] := STGR_BASE_L1.Cells[3,0];
          STGR_LINHA_1_C1.Cells[4,6] := '00';
          STGR_LINHA_1_C1.Cells[4,5] := '00';
          STGR_LINHA_1_C1.Cells[4,5] := '00';
          STGR_LINHA_1_C1.Cells[4,3] := '00';
          STGR_LINHA_1_C1.Cells[4,2] := '00';
          STGR_LINHA_1_C1.Cells[4,1] := '00';
          LA_LINHA_1_100REP.Caption :='07';
          STGR_LINHA_1_C1.RowCount := 8;
     END;

     STGR_LINHA_1_C1.Repaint;

        // ******************
        // **  LINHA_2 **
        // ******************
     STGR_LINHA_2_C1.Cells[0,0] := 'N.';
     STGR_LINHA_2_C1.Cells[1,0] := 'qtd';
     STGR_LINHA_2_C1.Cells[0,0] := 'N.';
     STGR_LINHA_2_C1.Cells[0,1] := '1';
     STGR_LINHA_2_C1.Cells[1,1] := '2';
     STGR_LINHA_2_C1.Cells[2,1] :=STGR_BASE_L2.Cells[1,0];
     STGR_LINHA_2_C1.Cells[3,1] :=STGR_BASE_L2.Cells[2,0];
     STGR_LINHA_2_C1.Cells[4,1] := '00';
     STGR_LINHA_2_C1.Cells[0,2] := '2';
     STGR_LINHA_2_C1.Cells[1,2] := '2';
     STGR_LINHA_2_C1.Cells[2,2] :=STGR_BASE_L2.Cells[1,0];
     STGR_LINHA_2_C1.Cells[3,2] :=STGR_BASE_L2.Cells[3,0];
     STGR_LINHA_2_C1.Cells[4,2] := '00';
     STGR_LINHA_2_C1.Cells[0,3] := '3';
     STGR_LINHA_2_C1.Cells[1,3] := '2';
     STGR_LINHA_2_C1.Cells[2,3] :=STGR_BASE_L2.Cells[2,0];
     STGR_LINHA_2_C1.Cells[3,3] :=STGR_BASE_L2.Cells[3,0];
     STGR_LINHA_2_C1.Cells[4,3] := '00';

     STGR_LINHA_2_C1.Cells[0,4] := '4';
     STGR_LINHA_2_C1.Cells[1,4] := '3';
     STGR_LINHA_2_C1.Cells[2,4] := STGR_BASE_L2.Cells[1,0];
     STGR_LINHA_2_C1.Cells[3,4] := STGR_BASE_L2.Cells[2,0];
     STGR_LINHA_2_C1.Cells[4,4] := STGR_BASE_L2.Cells[3,0];

     LA_LINHA_2_100REP.Caption :='04';
     STGR_LINHA_2_C1.RowCount := 5;
     STGR_LINHA_2_C1.Repaint ;

       // ******************
        // **  LINHA_3 **
        // ******************
     STGR_LINHA_3_C1.Cells[0,0] := 'N.';
     STGR_LINHA_3_C1.Cells[1,0] := 'qtd';
     STGR_LINHA_3_C1.Cells[0,0] := 'N.';
     STGR_LINHA_3_C1.Cells[0,1] := '1';
     STGR_LINHA_3_C1.Cells[1,1] := '1';
     STGR_LINHA_3_C1.Cells[2,1] :=STGR_BASE_L3.Cells[1,0];
     STGR_LINHA_3_C1.Cells[3,1] := '00';
     STGR_LINHA_3_C1.Cells[4,1] := '00';
     STGR_LINHA_3_C1.Cells[0,2] := '2';
     STGR_LINHA_3_C1.Cells[1,2] := '1';
     STGR_LINHA_3_C1.Cells[2,2] :=STGR_BASE_L3.Cells[2,0];
     STGR_LINHA_3_C1.Cells[3,2] := '00';
     STGR_LINHA_3_C1.Cells[4,2] := '00';
     STGR_LINHA_3_C1.Cells[0,3] := '3';
     STGR_LINHA_3_C1.Cells[1,3] := '1';
     STGR_LINHA_3_C1.Cells[2,3] :=STGR_BASE_L3.Cells[3,0];
     STGR_LINHA_3_C1.Cells[3,3] := '00';
     STGR_LINHA_3_C1.Cells[4,3] := '00';

     STGR_LINHA_3_C1.Cells[0,4] := '4';
     STGR_LINHA_3_C1.Cells[1,4] := '2';
     STGR_LINHA_3_C1.Cells[2,4] :=STGR_BASE_L3.Cells[1,0];
     STGR_LINHA_3_C1.Cells[3,4] :=STGR_BASE_L3.Cells[2,0];
     STGR_LINHA_3_C1.Cells[4,4] := '00';
     STGR_LINHA_3_C1.Cells[0,5] := '5';
     STGR_LINHA_3_C1.Cells[1,5] := '2';
     STGR_LINHA_3_C1.Cells[2,5] :=STGR_BASE_L3.Cells[1,0];
     STGR_LINHA_3_C1.Cells[3,5] :=STGR_BASE_L3.Cells[3,0];
     STGR_LINHA_3_C1.Cells[4,5] := '00';
     STGR_LINHA_3_C1.Cells[0,6] := '6';
     STGR_LINHA_3_C1.Cells[1,6] := '2';
     STGR_LINHA_3_C1.Cells[2,6] :=STGR_BASE_L3.Cells[2,0];
     STGR_LINHA_3_C1.Cells[3,6] :=STGR_BASE_L3.Cells[3,0];
     STGR_LINHA_3_C1.Cells[4,6] := '00';

     STGR_LINHA_3_C1.Cells[0,7] := '7';
     STGR_LINHA_3_C1.Cells[1,7] := '3';
     STGR_LINHA_3_C1.Cells[2,7] := STGR_BASE_L3.Cells[1,0];
     STGR_LINHA_3_C1.Cells[3,7] := STGR_BASE_L3.Cells[2,0];
     STGR_LINHA_3_C1.Cells[4,7] := STGR_BASE_L3.Cells[3,0];

     LA_LINHA_3_100REP.Caption :='07';
     STGR_LINHA_3_C1.RowCount := 8;
     STGR_LINHA_3_C1.Repaint ;

        // ******************
        // **  LINHA_4 **
        // ******************
     STGR_LINHA_4_C1.Cells[0,0] := 'N.';
     STGR_LINHA_4_C1.Cells[2,0] := 'qtd';

     STGR_LINHA_4_C1.Cells[0,1] := '1';
     STGR_LINHA_4_C1.Cells[1,1] := 'V';
     STGR_LINHA_4_C1.Cells[2,1] := '1';
     STGR_LINHA_4_C1.Cells[3,1] :=STGR_BASE_L4.Cells[1,0];
     STGR_LINHA_4_C1.Cells[4,1] := '00';
     STGR_LINHA_4_C1.Cells[5,1] := '00';
     STGR_LINHA_4_C1.Cells[6,1] := '00';
     STGR_LINHA_4_C1.Cells[0,2] := '2';
     STGR_LINHA_4_C1.Cells[1,2] := 'V';
     STGR_LINHA_4_C1.Cells[2,2] := '1';
     STGR_LINHA_4_C1.Cells[3,2] :=STGR_BASE_L4.Cells[2,0];
     STGR_LINHA_4_C1.Cells[4,2] := '00';
     STGR_LINHA_4_C1.Cells[5,2] := '00';
     STGR_LINHA_4_C1.Cells[6,2] := '00';
     STGR_LINHA_4_C1.Cells[0,3] := '3';
     STGR_LINHA_4_C1.Cells[1,3] := 'V';
     STGR_LINHA_4_C1.Cells[2,3] := '1';
     STGR_LINHA_4_C1.Cells[3,3] :=STGR_BASE_L4.Cells[3,0];
     STGR_LINHA_4_C1.Cells[4,3] := '00';
     STGR_LINHA_4_C1.Cells[5,3] := '00';
     STGR_LINHA_4_C1.Cells[6,3] := '00';
     STGR_LINHA_4_C1.Cells[0,4] := '4';
     STGR_LINHA_4_C1.Cells[1,4] := 'V';
     STGR_LINHA_4_C1.Cells[2,4] := '1';
     STGR_LINHA_4_C1.Cells[3,4] :=STGR_BASE_L4.Cells[4,0];
     STGR_LINHA_4_C1.Cells[4,4] := '00';
     STGR_LINHA_4_C1.Cells[5,4] := '00';
     STGR_LINHA_4_C1.Cells[6,4] := '00';

     STGR_LINHA_4_C1.Cells[00,5] := '5';
     STGR_LINHA_4_C1.Cells[1,5] := 'V';
     STGR_LINHA_4_C1.Cells[2,5] := '2';
     STGR_LINHA_4_C1.Cells[3,5] :=STGR_BASE_L4.Cells[1,0];
     STGR_LINHA_4_C1.Cells[4,5] :=STGR_BASE_L4.Cells[2,0];
     STGR_LINHA_4_C1.Cells[5,5] := '00';
     STGR_LINHA_4_C1.Cells[6,5] := '00';
     STGR_LINHA_4_C1.Cells[0,6] := '6';
     STGR_LINHA_4_C1.Cells[1,6] := 'V';
     STGR_LINHA_4_C1.Cells[2,6] := '2';
     STGR_LINHA_4_C1.Cells[3,6] :=STGR_BASE_L4.Cells[1,0];
     STGR_LINHA_4_C1.Cells[4,6] :=STGR_BASE_L4.Cells[3,0];
     STGR_LINHA_4_C1.Cells[5,6] := '00';
     STGR_LINHA_4_C1.Cells[6,6] := '00';
     STGR_LINHA_4_C1.Cells[0,7] := '7';
     STGR_LINHA_4_C1.Cells[1,7] := 'V';
     STGR_LINHA_4_C1.Cells[2,7] := '2';
     STGR_LINHA_4_C1.Cells[3,7] :=STGR_BASE_L4.Cells[1,0];
     STGR_LINHA_4_C1.Cells[4,7] :=STGR_BASE_L4.Cells[4,0];
     STGR_LINHA_4_C1.Cells[5,7] := '00';
     STGR_LINHA_4_C1.Cells[6,7] := '00';
     STGR_LINHA_4_C1.Cells[0,8] := '8';
     STGR_LINHA_4_C1.Cells[1,8] := 'V';
     STGR_LINHA_4_C1.Cells[2,8] := '2';
     STGR_LINHA_4_C1.Cells[3,8] :=STGR_BASE_L4.Cells[2,0];
     STGR_LINHA_4_C1.Cells[4,8] :=STGR_BASE_L4.Cells[3,0];
     STGR_LINHA_4_C1.Cells[5,8] := '00';
     STGR_LINHA_4_C1.Cells[6,8] := '00';
     STGR_LINHA_4_C1.Cells[0,9] := '9';
     STGR_LINHA_4_C1.Cells[1,9] := 'V';
     STGR_LINHA_4_C1.Cells[2,9] := '2';
     STGR_LINHA_4_C1.Cells[3,9] :=STGR_BASE_L4.Cells[2,0];
     STGR_LINHA_4_C1.Cells[4,9] :=STGR_BASE_L4.Cells[4,0];
     STGR_LINHA_4_C1.Cells[5,9] := '00';
     STGR_LINHA_4_C1.Cells[6,9] := '00';
     STGR_LINHA_4_C1.Cells[0,10] := '10';
     STGR_LINHA_4_C1.Cells[1,10] := 'V';
     STGR_LINHA_4_C1.Cells[2,10] := '2';
     STGR_LINHA_4_C1.Cells[3,10] :=STGR_BASE_L4.Cells[3,0];
     STGR_LINHA_4_C1.Cells[4,10] :=STGR_BASE_L4.Cells[4,0];
     STGR_LINHA_4_C1.Cells[5,10] := '00';
     STGR_LINHA_4_C1.Cells[6,10] := '00';

     STGR_LINHA_4_C1.Cells[0,11] := '11';
     STGR_LINHA_4_C1.Cells[1,11] := 'V';
     STGR_LINHA_4_C1.Cells[2,11] := '3';
     STGR_LINHA_4_C1.Cells[3,11] :=STGR_BASE_L4.Cells[1,0];
     STGR_LINHA_4_C1.Cells[4,11] :=STGR_BASE_L4.Cells[2,0];
     STGR_LINHA_4_C1.Cells[5,11] :=STGR_BASE_L4.Cells[3,0];
     STGR_LINHA_4_C1.Cells[6,11] := '00';
     STGR_LINHA_4_C1.Cells[0,12] := '12';
     STGR_LINHA_4_C1.Cells[1,12] := 'V';
     STGR_LINHA_4_C1.Cells[2,12] := '3';
     STGR_LINHA_4_C1.Cells[3,12] :=STGR_BASE_L4.Cells[1,0];
     STGR_LINHA_4_C1.Cells[4,12] :=STGR_BASE_L4.Cells[2,0];
     STGR_LINHA_4_C1.Cells[5,12] :=STGR_BASE_L4.Cells[4,0];
     STGR_LINHA_4_C1.Cells[6,12] := '00';
     STGR_LINHA_4_C1.Cells[0,13] := '13';
     STGR_LINHA_4_C1.Cells[1,13] := 'V';
     STGR_LINHA_4_C1.Cells[2,13] := '3';
     STGR_LINHA_4_C1.Cells[3,13] :=STGR_BASE_L4.Cells[1,0];
     STGR_LINHA_4_C1.Cells[4,13] :=STGR_BASE_L4.Cells[3,0];
     STGR_LINHA_4_C1.Cells[5,13] :=STGR_BASE_L4.Cells[4,0];
     STGR_LINHA_4_C1.Cells[6,13] := '00';
     STGR_LINHA_4_C1.Cells[0,14] := '14';
     STGR_LINHA_4_C1.Cells[1,14] := 'V';
     STGR_LINHA_4_C1.Cells[2,14] := '3';
     STGR_LINHA_4_C1.Cells[3,14] :=STGR_BASE_L4.Cells[2,0];
     STGR_LINHA_4_C1.Cells[4,14] :=STGR_BASE_L4.Cells[3,0];
     STGR_LINHA_4_C1.Cells[5,14] :=STGR_BASE_L4.Cells[4,0];
     STGR_LINHA_4_C1.Cells[6,14] := '00';

     STGR_LINHA_4_C1.Cells[0,15] := '15';
     STGR_LINHA_4_C1.Cells[1,15] := 'V';
     STGR_LINHA_4_C1.Cells[2,15] := '4';
     STGR_LINHA_4_C1.Cells[3,15] :=STGR_BASE_L4.Cells[1,0];
     STGR_LINHA_4_C1.Cells[4,15] :=STGR_BASE_L4.Cells[2,0];
     STGR_LINHA_4_C1.Cells[5,15] :=STGR_BASE_L4.Cells[3,0];
     STGR_LINHA_4_C1.Cells[6,15] :=STGR_BASE_L4.Cells[4,0];

     LA_LINHA_4_100REP.Caption :='15';
     STGR_LINHA_4_C1.RowCount := 16;
     STGR_LINHA_4_C1.Repaint ;
     FOR VI_COMBINACOES1:= 1 TO STGR_LINHA_4_C1.RowCount-1 DO
     BEGIN
          CASE CB_MODO_LINHA4.ItemIndex OF
               0:
               BEGIN
                    IF (STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1] = '1') OR (STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1] = '4')
                    THEN
                              STGR_LINHA_4_C1.Cells[1,VI_COMBINACOES1] := 'F';
               END;
               1:
               BEGIN
                    IF (STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1] = '1')
                    THEN
                              STGR_LINHA_4_C1.Cells[1,VI_COMBINACOES1] := 'F';
               END;
               2:
               BEGIN
                    IF (STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1] = '4')
                    THEN
                              STGR_LINHA_4_C1.Cells[1,VI_COMBINACOES1] := 'F';
               END;
               3:
               BEGIN
                    IF (STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1] = '3')
                    THEN
                              STGR_LINHA_4_C1.Cells[1,VI_COMBINACOES1] := 'F';
               END;

               4:
               BEGIN
                    IF (STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1] = '2')
                    THEN
                              STGR_LINHA_4_C1.Cells[1,VI_COMBINACOES1] := 'F';
               END;
               5:
               BEGIN
                    IF (STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1] = '2') OR (STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES1] = '3')
                    THEN
                              STGR_LINHA_4_C1.Cells[1,VI_COMBINACOES1] := 'F';
               END;
          END; // CASE
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_4_C1.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_4_C1.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_4_100REP.Caption := INTtoSTR(VI_CONTAR);
     STGR_LINHA_4_C1.Repaint;
     STGR_LINHA_4_C1.Repaint;

        // ************************************
        // **  Combinações das LINHA_1x2x3x4 **
        // ************************************
     STGR_LINHA_1234_TODOS.Cells[0,0] := 'N.';
     STGR_LINHA_1234_TODOS.Cells[2,0] := 'qtd';
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO STGR_LINHA_1_C1.RowCount-1 DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO STGR_LINHA_2_C1.RowCount-1 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO STGR_LINHA_3_C1.RowCount-1 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO STGR_LINHA_4_C1.RowCount-1 DO
                    BEGIN
                         STGR_LINHA_1234_TODOS.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_LINHA_1234_TODOS.Cells[1,VI_LINHAS2] := 'V';
                         STGR_LINHA_1234_TODOS.Cells[2,VI_LINHAS2] := INTtoSTR(STRtoINT(STGR_LINHA_1_C1.Cells[1,VI_COMBINACOES1]) + STRtoINT(STGR_LINHA_2_C1.Cells[1,VI_COMBINACOES2]) + STRtoINT(STGR_LINHA_3_C1.Cells[1,VI_COMBINACOES3]) + STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES4]));
                         FOR VI_CONTAR := 3 TO 15 DO
                         BEGIN
                              STGR_LINHA_1234_TODOS.Cells[VI_CONTAR,VI_LINHAS2] := '00';
                         END;
                         VI_LINHAS2 := VI_LINHAS2 + 1;
                         STGR_LINHA_1234_TODOS.RowCount := VI_LINHAS2;
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO STGR_LINHA_1_C1.RowCount-1 DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO STGR_LINHA_2_C1.RowCount-1 DO
          BEGIN
               FOR VI_COMBINACOES3:= 1 TO STGR_LINHA_3_C1.RowCount-1 DO
               BEGIN
                    FOR VI_COMBINACOES4:= 1 TO STGR_LINHA_4_C1.RowCount-1 DO
                    BEGIN
                         IF  (STGR_LINHA_4_C1.Cells[1,VI_COMBINACOES4]='F') THEN
                         BEGIN
                              //VI_CNTCELULAS := 0;
                              CONTINUE;
                         END;
                       //  VI_CNTCELULAS := 1; // UTILIZADO COMO FLAG PARA A LINHA 4
                         VI_CONTAR := 2;
                         FOR VI_CONTADOR := 1 TO (STRtoINT(STGR_LINHA_1_C1.Cells[1,VI_COMBINACOES1])) DO
                         BEGIN
                              STGR_LINHA_1234_TODOS.Cells[VI_CONTAR+VI_CONTADOR,VI_LINHAS2] := STGR_LINHA_1_C1.Cells[1+VI_CONTADOR,VI_COMBINACOES1];
                         END;
                         VI_CONTAR := VI_CONTAR + STRtoINT(STGR_LINHA_1_C1.Cells[1,VI_COMBINACOES1]) ;
                         FOR VI_CONTADOR := 1 TO (STRtoINT(STGR_LINHA_2_C1.Cells[1,VI_COMBINACOES2])) DO
                         BEGIN
                              STGR_LINHA_1234_TODOS.Cells[VI_CONTAR+VI_CONTADOR,VI_LINHAS2] := STGR_LINHA_2_C1.Cells[1+VI_CONTADOR,VI_COMBINACOES2];
                         END;
                         VI_CONTAR := VI_CONTAR + STRtoINT(STGR_LINHA_2_C1.Cells[1,VI_COMBINACOES2]) ;
                         FOR VI_CONTADOR := 1 TO (STRtoINT(STGR_LINHA_3_C1.Cells[1,VI_COMBINACOES3])) DO
                         BEGIN
                              STGR_LINHA_1234_TODOS.Cells[VI_CONTAR+VI_CONTADOR,VI_LINHAS2] := STGR_LINHA_3_C1.Cells[1+VI_CONTADOR,VI_COMBINACOES3];
                         END;
                         VI_CONTAR := VI_CONTAR + STRtoINT(STGR_LINHA_3_C1.Cells[1,VI_COMBINACOES3]) ;
                         FOR VI_CONTADOR := 1 TO (STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES4])) DO
                         BEGIN
                              STGR_LINHA_1234_TODOS.Cells[VI_CONTAR+VI_CONTADOR,VI_LINHAS2] := STGR_LINHA_4_C1.Cells[2+VI_CONTADOR,VI_COMBINACOES4];
                         END;// FOR VI_CONTAR
                     //    IF (VI_CNTCELULAS=1) THEN
                      //   BEGIN
                              STGR_LINHA_1234_TODOS.Cells[2,VI_LINHAS2] := INTtoSTR(STRtoINT(STGR_LINHA_1_C1.Cells[1,VI_COMBINACOES1]) + STRtoINT(STGR_LINHA_2_C1.Cells[1,VI_COMBINACOES2]) + STRtoINT(STGR_LINHA_3_C1.Cells[1,VI_COMBINACOES3]) + STRtoINT(STGR_LINHA_4_C1.Cells[2,VI_COMBINACOES4]));
                              VI_LINHAS2 := VI_LINHAS2 + 1;
                     //    END; // IF (VI_CNTCELULAS=1)
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
     STGR_LINHA_1234_TODOS.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
     STGR_LINHA_1234_TODOS.RowCount := VI_LINHAS2;
     STGR_LINHA_1234_TODOS.Repaint;
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1234_TODOS.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_01.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[11,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[12,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[13,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[14,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_1234_TODOS.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1234_TODOS.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_02.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[11,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[12,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[13,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[14,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_1234_TODOS.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1234_TODOS.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_03.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[11,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[12,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[13,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_1234_TODOS.Cells[14,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_1234_TODOS.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_1234_TODOS.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_1234_TODOS.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_1234_TODOS.Caption := INTtoSTR(VI_CONTAR);





        // ******************************
        // **  LINHA_5 - 6 combinações **
        // ******************************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 6 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
               STGR_LINHA_5_Comb6.Cells[2,VI_LINHAS2] := '6';
               STGR_LINHA_5_Comb6.Cells[1,VI_LINHAS2] := 'V';
               STGR_LINHA_5_Comb6.Cells[3,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES1];
               STGR_LINHA_5_Comb6.Cells[4,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES1];
               STGR_LINHA_5_Comb6.Cells[5,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES2];
               STGR_LINHA_5_Comb6.Cells[6,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES2];
               FOR VI_COMBINACOES3:= 1 TO 6 DO
               BEGIN
                    FOR VI_COMBINACOES4:=1 TO 2 DO
                    BEGIN
                        { IF  (STGR_LINHA_5_Comb6.Cells[2,VI_LINHAS2] = STGR_BASE_L5.Cells[1,VI_COMBINACOES3]) OR (STGR_LINHA_5_Comb6.Cells[2,VI_LINHAS2] = STGR_BASE_L5.Cells[2,VI_COMBINACOES3]) OR
                              (STGR_LINHA_5_Comb6.Cells[3,VI_LINHAS2] = STGR_BASE_L5.Cells[1,VI_COMBINACOES3]) OR (STGR_LINHA_5_Comb6.Cells[3,VI_LINHAS2] = STGR_BASE_L5.Cells[2,VI_COMBINACOES3]) OR
                              (STGR_LINHA_5_Comb6.Cells[4,VI_LINHAS2] = STGR_BASE_L5.Cells[1,VI_COMBINACOES3]) OR (STGR_LINHA_5_Comb6.Cells[4,VI_LINHAS2] = STGR_BASE_L5.Cells[2,VI_COMBINACOES3]) OR
                              (STGR_LINHA_5_Comb6.Cells[5,VI_LINHAS2] = STGR_BASE_L5.Cells[1,VI_COMBINACOES3]) OR (STGR_LINHA_5_Comb6.Cells[5,VI_LINHAS2] = STGR_BASE_L5.Cells[2,VI_COMBINACOES3])
                         THEN
                              CONTINUE;
                         }STGR_LINHA_5_Comb6.Cells[2,VI_LINHAS2] := '6';
                         STGR_LINHA_5_Comb6.Cells[1,VI_LINHAS2] := 'V';
                         STGR_LINHA_5_Comb6.Cells[3,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES1];
                         STGR_LINHA_5_Comb6.Cells[4,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES1];
                         STGR_LINHA_5_Comb6.Cells[5,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES2];
                         STGR_LINHA_5_Comb6.Cells[6,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES2];
                         STGR_LINHA_5_Comb6.Cells[7,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES4,VI_COMBINACOES3];
                         IF  (STGR_LINHA_5_Comb6.Cells[7,VI_LINHAS2] = STGR_LINHA_5_Comb6.Cells[3,VI_LINHAS2]) OR (STGR_LINHA_5_Comb6.Cells[7,VI_LINHAS2] = STGR_LINHA_5_Comb6.Cells[4,VI_LINHAS2]) OR
                             (STGR_LINHA_5_Comb6.Cells[7,VI_LINHAS2] = STGR_LINHA_5_Comb6.Cells[5,VI_LINHAS2]) OR (STGR_LINHA_5_Comb6.Cells[7,VI_LINHAS2] = STGR_LINHA_5_Comb6.Cells[6,VI_LINHAS2])
                         THEN
                              CONTINUE;
                         STGR_LINHA_5_Comb6.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         FOR VI_COMBINACOES5:=1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES6:=1 TO 2 DO
                              BEGIN     {
                                   IF  (STGR_LINHA_5_Comb6.Cells[2,VI_LINHAS2] = STGR_BASE_L5.Cells[1,VI_COMBINACOES5]) OR (STGR_LINHA_5_Comb6.Cells[2,VI_LINHAS2] = STGR_BASE_L5.Cells[2,VI_COMBINACOES5]) OR
                                        (STGR_LINHA_5_Comb6.Cells[3,VI_LINHAS2] = STGR_BASE_L5.Cells[1,VI_COMBINACOES5]) OR (STGR_LINHA_5_Comb6.Cells[3,VI_LINHAS2] = STGR_BASE_L5.Cells[2,VI_COMBINACOES5]) OR
                                        (STGR_LINHA_5_Comb6.Cells[4,VI_LINHAS2] = STGR_BASE_L5.Cells[1,VI_COMBINACOES5]) OR (STGR_LINHA_5_Comb6.Cells[4,VI_LINHAS2] = STGR_BASE_L5.Cells[2,VI_COMBINACOES5]) OR
                                        (STGR_LINHA_5_Comb6.Cells[5,VI_LINHAS2] = STGR_BASE_L5.Cells[1,VI_COMBINACOES5]) OR (STGR_LINHA_5_Comb6.Cells[5,VI_LINHAS2] = STGR_BASE_L5.Cells[2,VI_COMBINACOES5]) OR
                                        (STGR_LINHA_5_Comb6.Cells[6,VI_LINHAS2] = STGR_BASE_L5.Cells[1,VI_COMBINACOES5]) OR (STGR_LINHA_5_Comb6.Cells[6,VI_LINHAS2] = STGR_BASE_L5.Cells[2,VI_COMBINACOES5])
                                   THEN
                                        CONTINUE;}
                                   STGR_LINHA_5_Comb6.Cells[2,VI_LINHAS2] := '6';
                                   STGR_LINHA_5_Comb6.Cells[1,VI_LINHAS2] := 'V';
                                   STGR_LINHA_5_Comb6.Cells[3,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES1];
                                   STGR_LINHA_5_Comb6.Cells[4,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES1];
                                   STGR_LINHA_5_Comb6.Cells[5,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES2];
                                   STGR_LINHA_5_Comb6.Cells[6,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES2];
                                   STGR_LINHA_5_Comb6.Cells[7,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES4,VI_COMBINACOES3];
                                   STGR_LINHA_5_Comb6.Cells[8,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES6,VI_COMBINACOES5];
                                   IF  (STGR_LINHA_5_Comb6.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb6.Cells[3,VI_LINHAS2]) OR (STGR_LINHA_5_Comb6.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb6.Cells[4,VI_LINHAS2]) OR
                                       (STGR_LINHA_5_Comb6.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb6.Cells[5,VI_LINHAS2]) OR (STGR_LINHA_5_Comb6.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb6.Cells[6,VI_LINHAS2]) OR
                                       (STGR_LINHA_5_Comb6.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb6.Cells[7,VI_LINHAS2])
                                   THEN
                                        CONTINUE;
                                   IF (VI_COMBINACOES3 = VI_COMBINACOES5) THEN
                                        CONTINUE;
                                   STGR_LINHA_5_Comb6.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                             // ------------------------------------------------
                                             // --  Ordena os dados DAS 6 primeiras células   --
                                             // ------------------------------------------------
                                             FOR VI_CONTAR :=1 TO 25 DO
                                             BEGIN
                                                  STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
                                                  STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                             END; // FOR VI_CONTAR
                                             // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
                                             FOR VI_CONTAR :=3 TO 8 DO
                                             BEGIN
                                                  STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_LINHA_5_Comb6.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
                                             END; // FOR VI_CONTAR1
                                             VI_CNTCELULAS := 3;
                                             FOR VI_CONTAR :=1 TO 25 DO
                                             BEGIN
                                               IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                                               BEGIN
                                                   STGR_LINHA_5_Comb6.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                                   VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                               END; // IF (STRGR_TODOS_NUMEROS
                                             END; // FOR VI_CONTAR
                                   VI_LINHAS2 := VI_LINHAS2+1;
                              END; // FOR VI_COMBINACOES6
                         END; // FOR VI_COMBINACOES5
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
              STGR_LINHA_5_Comb6.RowCount := VI_LINHAS2;               
          end; //  FOR VI_COMBINACOES2
     end; // FOR VI_COMBINACOES1
    STGR_LINHA_5_Comb6.RowCount := VI_LINHAS2;
     STGR_LINHA_5_Comb6.FixedRows := 1;
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_Comb6.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_LINHA_5_Comb6.RowCount-1) DO
          BEGIN
                IF  (STGR_LINHA_5_Comb6.Cells[3,VI_COMBINACOES1] = STGR_LINHA_5_Comb6.Cells[3,VI_COMBINACOES2]) AND
                    (STGR_LINHA_5_Comb6.Cells[4,VI_COMBINACOES1] = STGR_LINHA_5_Comb6.Cells[4,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_LINHA_5_Comb6.Cells[5,VI_COMBINACOES1] = STGR_LINHA_5_Comb6.Cells[5,VI_COMBINACOES2]) AND
                        (STGR_LINHA_5_Comb6.Cells[6,VI_COMBINACOES1] = STGR_LINHA_5_Comb6.Cells[6,VI_COMBINACOES2]) AND
                        (STGR_LINHA_5_Comb6.Cells[7,VI_COMBINACOES1] = STGR_LINHA_5_Comb6.Cells[7,VI_COMBINACOES2]) AND
                        (STGR_LINHA_5_Comb6.Cells[8,VI_COMBINACOES1] = STGR_LINHA_5_Comb6.Cells[8,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_LINHA_5_Comb6.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_LINHA_5_Comb6.Cells[1,VI_CONTAR]
                END; // if (STGR_LINHA_5_Comb6.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_COMB6.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_01.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_5_COMB6.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_5_COMB6.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_COMB6.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_02.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_5_COMB6.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_5_COMB6.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_COMB6.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_03.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_5_COMB6.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB6.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_5_COMB6.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES1                    
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_Comb6.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_5_Comb6.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA_5_100REP.Caption := INTtoSTR(VI_CONTAR);

        // ******************************
        // **  LINHA_5 - 7 combinações **
        // ******************************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 6 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
               STGR_LINHA_5_Comb7.Cells[2,VI_LINHAS2] := '7';
               STGR_LINHA_5_Comb7.Cells[1,VI_LINHAS2] := 'V';
               STGR_LINHA_5_Comb7.Cells[3,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES1];
               STGR_LINHA_5_Comb7.Cells[4,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES1];
               STGR_LINHA_5_Comb7.Cells[5,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES2];
               STGR_LINHA_5_Comb7.Cells[6,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES2];
               FOR VI_COMBINACOES3:= 1 TO 6 DO
               BEGIN
                    FOR VI_COMBINACOES4:=1 TO 2 DO
                    BEGIN
                         STGR_LINHA_5_Comb7.Cells[2,VI_LINHAS2] := '7';
                         STGR_LINHA_5_Comb7.Cells[1,VI_LINHAS2] := 'V';
                         STGR_LINHA_5_Comb7.Cells[3,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES1];
                         STGR_LINHA_5_Comb7.Cells[4,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES1];
                         STGR_LINHA_5_Comb7.Cells[5,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES2];
                         STGR_LINHA_5_Comb7.Cells[6,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES2];
                         STGR_LINHA_5_Comb7.Cells[7,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES4,VI_COMBINACOES3];
                         IF  (STGR_LINHA_5_Comb7.Cells[7,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[3,VI_LINHAS2]) OR (STGR_LINHA_5_Comb7.Cells[7,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[4,VI_LINHAS2]) OR
                             (STGR_LINHA_5_Comb7.Cells[7,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[5,VI_LINHAS2]) OR (STGR_LINHA_5_Comb7.Cells[7,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[6,VI_LINHAS2])
                         THEN
                              CONTINUE;
                         STGR_LINHA_5_Comb7.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         FOR VI_COMBINACOES5:=1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES6:=1 TO 2 DO
                              BEGIN
                                   STGR_LINHA_5_Comb7.Cells[2,VI_LINHAS2] := '7';
                                   STGR_LINHA_5_Comb7.Cells[1,VI_LINHAS2] := 'V';
                                   STGR_LINHA_5_Comb7.Cells[3,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES1];
                                   STGR_LINHA_5_Comb7.Cells[4,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES1];
                                   STGR_LINHA_5_Comb7.Cells[5,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES2];
                                   STGR_LINHA_5_Comb7.Cells[6,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES2];
                                   STGR_LINHA_5_Comb7.Cells[7,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES4,VI_COMBINACOES3];
                                   STGR_LINHA_5_Comb7.Cells[8,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES6,VI_COMBINACOES5];
                                   IF  (STGR_LINHA_5_Comb7.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[3,VI_LINHAS2]) OR (STGR_LINHA_5_Comb7.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[4,VI_LINHAS2]) OR
                                       (STGR_LINHA_5_Comb7.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[5,VI_LINHAS2]) OR (STGR_LINHA_5_Comb7.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[6,VI_LINHAS2]) OR
                                       (STGR_LINHA_5_Comb7.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[7,VI_LINHAS2])
                                   THEN
                                        CONTINUE;
                                   IF (VI_COMBINACOES3 = VI_COMBINACOES5) THEN
                                        CONTINUE;
                                   STGR_LINHA_5_Comb7.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   FOR VI_COMBINACOES7:=1 TO 6 DO
                                   BEGIN
                                        FOR VI_COMBINACOES8:=1 TO 2 DO
                                        BEGIN
                                             STGR_LINHA_5_Comb7.Cells[2,VI_LINHAS2] := '7';
                                             STGR_LINHA_5_Comb7.Cells[1,VI_LINHAS2] := 'V';
                                             STGR_LINHA_5_Comb7.Cells[3,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES1];
                                             STGR_LINHA_5_Comb7.Cells[4,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES1];
                                             STGR_LINHA_5_Comb7.Cells[5,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES2];
                                             STGR_LINHA_5_Comb7.Cells[6,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES2];
                                             STGR_LINHA_5_Comb7.Cells[7,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES4,VI_COMBINACOES3];
                                             STGR_LINHA_5_Comb7.Cells[8,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES6,VI_COMBINACOES5];
                                             STGR_LINHA_5_Comb7.Cells[9,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES8,VI_COMBINACOES7];
                                             IF  (STGR_LINHA_5_Comb7.Cells[9,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[3,VI_LINHAS2]) OR (STGR_LINHA_5_Comb7.Cells[9,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[4,VI_LINHAS2]) OR
                                                 (STGR_LINHA_5_Comb7.Cells[9,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[5,VI_LINHAS2]) OR (STGR_LINHA_5_Comb7.Cells[9,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[6,VI_LINHAS2]) OR
                                                 (STGR_LINHA_5_Comb7.Cells[9,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[7,VI_LINHAS2]) OR (STGR_LINHA_5_Comb7.Cells[9,VI_LINHAS2] = STGR_LINHA_5_Comb7.Cells[8,VI_LINHAS2])
                                             THEN
                                                  CONTINUE;
                                             IF (VI_COMBINACOES3 = VI_COMBINACOES5) or (VI_COMBINACOES5 = VI_COMBINACOES7) or (VI_COMBINACOES3 = VI_COMBINACOES7) THEN
                                                  CONTINUE;
                                             STGR_LINHA_5_Comb7.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                                  // ------------------------------------------------
                                                  // --  Ordena os dados DAS 7 primeiras células   --
                                                  // ------------------------------------------------
                                                  FOR VI_CONTAR :=1 TO 25 DO
                                                  BEGIN
                                                       STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
                                                       STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                  END; // FOR VI_CONTAR
                                                  // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
                                                  FOR VI_CONTAR :=3 TO 9 DO
                                                  BEGIN
                                                       STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_LINHA_5_Comb7.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
                                                  END; // FOR VI_CONTAR1
                                                  VI_CNTCELULAS := 3;
                                                  FOR VI_CONTAR :=1 TO 25 DO
                                                  BEGIN
                                                    IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                                                    BEGIN
                                                        STGR_LINHA_5_Comb7.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                                        VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                                    END; // IF (STRGR_TODOS_NUMEROS
                                                  END; // FOR VI_CONTAR
                                             VI_LINHAS2 := VI_LINHAS2+1;
                                        END; // FOR VI_COMBINACOES8
                                   END; // FOR VI_COMBINACOES7
                              END; // FOR VI_COMBINACOES6
                         END; // FOR VI_COMBINACOES5
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
               STGR_LINHA_5_Comb7.RowCount := VI_LINHAS2;
          end; //  FOR VI_COMBINACOES2
     end; // FOR VI_COMBINACOES1
     STGR_LINHA_5_Comb7.RowCount := VI_LINHAS2;     
     STGR_LINHA_5_Comb7.FixedRows := 1;
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_Comb7.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_LINHA_5_Comb7.RowCount-1) DO
          BEGIN
                IF  (STGR_LINHA_5_Comb7.Cells[3,VI_COMBINACOES1] = STGR_LINHA_5_Comb7.Cells[3,VI_COMBINACOES2]) AND
                    (STGR_LINHA_5_Comb7.Cells[4,VI_COMBINACOES1] = STGR_LINHA_5_Comb7.Cells[4,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_LINHA_5_Comb7.Cells[5,VI_COMBINACOES1] = STGR_LINHA_5_Comb7.Cells[5,VI_COMBINACOES2]) AND
                        (STGR_LINHA_5_Comb7.Cells[6,VI_COMBINACOES1] = STGR_LINHA_5_Comb7.Cells[6,VI_COMBINACOES2]) AND
                        (STGR_LINHA_5_Comb7.Cells[7,VI_COMBINACOES1] = STGR_LINHA_5_Comb7.Cells[7,VI_COMBINACOES2]) AND
                        (STGR_LINHA_5_Comb7.Cells[8,VI_COMBINACOES1] = STGR_LINHA_5_Comb7.Cells[8,VI_COMBINACOES2]) AND
                        (STGR_LINHA_5_Comb7.Cells[9,VI_COMBINACOES1] = STGR_LINHA_5_Comb7.Cells[9,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_LINHA_5_Comb7.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_LINHA_5_Comb7.Cells[1,VI_CONTAR]
                END; // if (STGR_LINHA_5_Comb7.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_COMB7.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_01.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_5_COMB7.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_5_COMB7.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_COMB7.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_02.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_5_COMB7.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_5_COMB7.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_COMB7.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_03.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_5_COMB7.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB7.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_5_COMB7.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_Comb7.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_5_Comb7.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA5_Comb7.Caption := INTtoSTR(VI_CONTAR);

        // ******************************
        // **  LINHA_5 - 8 combinações **
        // ******************************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES1:= 1 TO 6 DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO 6 DO
          BEGIN
               STGR_LINHA_5_Comb8.Cells[2,VI_LINHAS2] := '8';
               STGR_LINHA_5_Comb8.Cells[1,VI_LINHAS2] := 'V';
               STGR_LINHA_5_Comb8.Cells[3,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES1];
               STGR_LINHA_5_Comb8.Cells[4,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES1];
               STGR_LINHA_5_Comb8.Cells[5,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES2];
               STGR_LINHA_5_Comb8.Cells[6,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES2];
               FOR VI_COMBINACOES3:= 1 TO 6 DO
               BEGIN
                    FOR VI_COMBINACOES4:=1 TO 2 DO
                    BEGIN
                         STGR_LINHA_5_Comb8.Cells[2,VI_LINHAS2] := '8';
                         STGR_LINHA_5_Comb8.Cells[1,VI_LINHAS2] := 'V';
                         STGR_LINHA_5_Comb8.Cells[3,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES1];
                         STGR_LINHA_5_Comb8.Cells[4,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES1];
                         STGR_LINHA_5_Comb8.Cells[5,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES2];
                         STGR_LINHA_5_Comb8.Cells[6,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES2];
                         STGR_LINHA_5_Comb8.Cells[7,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES4,VI_COMBINACOES3];
                         IF  (STGR_LINHA_5_Comb8.Cells[7,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[3,VI_LINHAS2]) OR (STGR_LINHA_5_Comb8.Cells[7,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[4,VI_LINHAS2]) OR
                             (STGR_LINHA_5_Comb8.Cells[7,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[5,VI_LINHAS2]) OR (STGR_LINHA_5_Comb8.Cells[7,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[6,VI_LINHAS2])
                         THEN
                              CONTINUE;
                         STGR_LINHA_5_Comb8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         FOR VI_COMBINACOES5:=1 TO 6 DO
                         BEGIN
                              FOR VI_COMBINACOES6:=1 TO 2 DO
                              BEGIN
                                   STGR_LINHA_5_Comb8.Cells[2,VI_LINHAS2] := '8';
                                   STGR_LINHA_5_Comb8.Cells[1,VI_LINHAS2] := 'V';
                                   STGR_LINHA_5_Comb8.Cells[3,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES1];
                                   STGR_LINHA_5_Comb8.Cells[4,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES1];
                                   STGR_LINHA_5_Comb8.Cells[5,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES2];
                                   STGR_LINHA_5_Comb8.Cells[6,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES2];
                                   STGR_LINHA_5_Comb8.Cells[7,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES4,VI_COMBINACOES3];
                                   STGR_LINHA_5_Comb8.Cells[8,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES6,VI_COMBINACOES5];
                                   IF  (STGR_LINHA_5_Comb8.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[3,VI_LINHAS2]) OR (STGR_LINHA_5_Comb8.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[4,VI_LINHAS2]) OR
                                       (STGR_LINHA_5_Comb8.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[5,VI_LINHAS2]) OR (STGR_LINHA_5_Comb8.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[6,VI_LINHAS2]) OR
                                       (STGR_LINHA_5_Comb8.Cells[8,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[7,VI_LINHAS2])
                                   THEN
                                        CONTINUE;
                                   IF (VI_COMBINACOES3 = VI_COMBINACOES5) THEN
                                        CONTINUE;
                                   STGR_LINHA_5_Comb8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   FOR VI_COMBINACOES7:=1 TO 6 DO
                                   BEGIN
                                        FOR VI_COMBINACOES8:=1 TO 2 DO
                                        BEGIN
                                             STGR_LINHA_5_Comb8.Cells[2,VI_LINHAS2] := '8';
                                             STGR_LINHA_5_Comb8.Cells[1,VI_LINHAS2] := 'V';
                                             STGR_LINHA_5_Comb8.Cells[3,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES1];
                                             STGR_LINHA_5_Comb8.Cells[4,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES1];
                                             STGR_LINHA_5_Comb8.Cells[5,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES2];
                                             STGR_LINHA_5_Comb8.Cells[6,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES2];
                                             STGR_LINHA_5_Comb8.Cells[7,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES4,VI_COMBINACOES3];
                                             STGR_LINHA_5_Comb8.Cells[8,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES6,VI_COMBINACOES5];
                                             STGR_LINHA_5_Comb8.Cells[9,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES8,VI_COMBINACOES7];
                                             IF  (STGR_LINHA_5_Comb8.Cells[9,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[3,VI_LINHAS2]) OR (STGR_LINHA_5_Comb8.Cells[9,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[4,VI_LINHAS2]) OR
                                                 (STGR_LINHA_5_Comb8.Cells[9,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[5,VI_LINHAS2]) OR (STGR_LINHA_5_Comb8.Cells[9,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[6,VI_LINHAS2]) OR
                                                 (STGR_LINHA_5_Comb8.Cells[9,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[7,VI_LINHAS2]) OR (STGR_LINHA_5_Comb8.Cells[9,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[8,VI_LINHAS2])
                                             THEN
                                                  CONTINUE;
                                             IF (VI_COMBINACOES3 = VI_COMBINACOES5) or (VI_COMBINACOES5 = VI_COMBINACOES7) or (VI_COMBINACOES3 = VI_COMBINACOES7) THEN
                                                  CONTINUE;
                                             STGR_LINHA_5_Comb8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                             FOR VI_COMBINACOES9:=1 TO 6 DO
                                             BEGIN
                                                  FOR VI_COMBINACOES0:=1 TO 2 DO
                                                  BEGIN
                                                       STGR_LINHA_5_Comb8.Cells[2,VI_LINHAS2] := '8';
                                                       STGR_LINHA_5_Comb8.Cells[1,VI_LINHAS2] := 'V';
                                                       STGR_LINHA_5_Comb8.Cells[3,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES1];
                                                       STGR_LINHA_5_Comb8.Cells[4,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES1];
                                                       STGR_LINHA_5_Comb8.Cells[5,VI_LINHAS2] := STGR_BASE_L5.Cells[1,VI_COMBINACOES2];
                                                       STGR_LINHA_5_Comb8.Cells[6,VI_LINHAS2] := STGR_BASE_L5.Cells[2,VI_COMBINACOES2];
                                                       STGR_LINHA_5_Comb8.Cells[7,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES4,VI_COMBINACOES3];
                                                       STGR_LINHA_5_Comb8.Cells[8,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES6,VI_COMBINACOES5];
                                                       STGR_LINHA_5_Comb8.Cells[9,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES8,VI_COMBINACOES7];
                                                       STGR_LINHA_5_Comb8.Cells[10,VI_LINHAS2] := STGR_BASE_L5.Cells[VI_COMBINACOES0,VI_COMBINACOES9];
                                                       IF  (STGR_LINHA_5_Comb8.Cells[10,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[3,VI_LINHAS2]) OR (STGR_LINHA_5_Comb8.Cells[10,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[4,VI_LINHAS2]) OR
                                                           (STGR_LINHA_5_Comb8.Cells[10,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[5,VI_LINHAS2]) OR (STGR_LINHA_5_Comb8.Cells[10,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[6,VI_LINHAS2]) OR
                                                           (STGR_LINHA_5_Comb8.Cells[10,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[7,VI_LINHAS2]) OR (STGR_LINHA_5_Comb8.Cells[10,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[8,VI_LINHAS2]) or
                                                           (STGR_LINHA_5_Comb8.Cells[10,VI_LINHAS2] = STGR_LINHA_5_Comb8.Cells[9,VI_LINHAS2])
                                                       THEN
                                                            CONTINUE;
                                                       IF (VI_COMBINACOES3 = VI_COMBINACOES5) or (VI_COMBINACOES3 = VI_COMBINACOES7) or (VI_COMBINACOES3 = VI_COMBINACOES9)
                                                          or (VI_COMBINACOES5 = VI_COMBINACOES7) or (VI_COMBINACOES5 = VI_COMBINACOES9) or (VI_COMBINACOES7= VI_COMBINACOES9)
                                                       THEN
                                                            CONTINUE;
                                                       STGR_LINHA_5_Comb8.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                             // ------------------------------------------------
                                             // --  Ordena os dados DAS 6 primeiras células   --
                                             // ------------------------------------------------
                                             FOR VI_CONTAR :=1 TO 25 DO
                                             BEGIN
                                                  STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
                                                  STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                             END; // FOR VI_CONTAR
                                             // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
                                             FOR VI_CONTAR :=3 TO 10 DO
                                             BEGIN
                                                  STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_LINHA_5_Comb8.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
                                             END; // FOR VI_CONTAR1
                                             VI_CNTCELULAS := 3;
                                             FOR VI_CONTAR :=1 TO 25 DO
                                             BEGIN
                                               IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                                               BEGIN
                                                   STGR_LINHA_5_Comb8.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                                   VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                               END; // IF (STRGR_TODOS_NUMEROS
                                             END; // FOR VI_CONTAR
                                                       VI_LINHAS2 := VI_LINHAS2+1;
                                                  END; // FOR VI_COMBINACOES0
                                             END; // FOR VI_COMBINACOES8
                                        END; // FOR VI_COMBINACOES8
                                   END; // FOR VI_COMBINACOES7
                              END; // FOR VI_COMBINACOES6
                         END; // FOR VI_COMBINACOES5
                    END; // FOR VI_COMBINACOES4
               END; // FOR VI_COMBINACOES3
               STGR_LINHA_5_Comb8.RowCount := VI_LINHAS2;               
          end; //  FOR VI_COMBINACOES2
     end; // FOR VI_COMBINACOES1
     STGR_LINHA_5_Comb8.RowCount := VI_LINHAS2;
     STGR_LINHA_5_Comb8.FixedRows := 1;
               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_Comb8.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= VI_COMBINACOES1+1 TO (STGR_LINHA_5_Comb8.RowCount-1) DO
          BEGIN
                IF  (STGR_LINHA_5_Comb8.Cells[3,VI_COMBINACOES1] = STGR_LINHA_5_Comb8.Cells[3,VI_COMBINACOES2]) AND
                    (STGR_LINHA_5_Comb8.Cells[4,VI_COMBINACOES1] = STGR_LINHA_5_Comb8.Cells[4,VI_COMBINACOES2])
                    THEN
                BEGIN
                    IF  (STGR_LINHA_5_Comb8.Cells[5,VI_COMBINACOES1] = STGR_LINHA_5_Comb8.Cells[5,VI_COMBINACOES2]) AND
                        (STGR_LINHA_5_Comb8.Cells[6,VI_COMBINACOES1] = STGR_LINHA_5_Comb8.Cells[6,VI_COMBINACOES2]) AND
                        (STGR_LINHA_5_Comb8.Cells[7,VI_COMBINACOES1] = STGR_LINHA_5_Comb8.Cells[7,VI_COMBINACOES2]) AND
                        (STGR_LINHA_5_Comb8.Cells[8,VI_COMBINACOES1] = STGR_LINHA_5_Comb8.Cells[8,VI_COMBINACOES2]) AND
                        (STGR_LINHA_5_Comb8.Cells[9,VI_COMBINACOES1] = STGR_LINHA_5_Comb8.Cells[9,VI_COMBINACOES2]) AND
                        (STGR_LINHA_5_Comb8.Cells[10,VI_COMBINACOES1] = STGR_LINHA_5_Comb8.Cells[10,VI_COMBINACOES2])
                        THEN
                    BEGIN
                        STGR_LINHA_5_Comb8.Cells [1,VI_COMBINACOES2] := 'F';
                    END; // if (STGR_LINHA_5_Comb8.Cells[1,VI_CONTAR]
                END; // if (STGR_LINHA_5_Comb8.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
     END; // FOR VI_COMBINACOES1
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_COMB8.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_01.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_5_COMB8.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_EXC_01.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_5_COMB8.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_COMB8.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_02.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_5_COMB8.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_EXC_02.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_5_COMB8.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES1
          FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_COMB8.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_03.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_LINHA_5_COMB8.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_LINHA_5_COMB8.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_EXC_03.Text))
                        THEN
                    BEGIN
                        STGR_LINHA_5_COMB8.Cells [1,VI_COMBINACOES1] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     FOR VI_COMBINACOES1:= 1 TO (STGR_LINHA_5_Comb8.RowCount-1) DO
     BEGIN
          IF (STGR_LINHA_5_Comb8.Cells [1,VI_COMBINACOES1] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_LINHA5_Comb8.Caption := INTtOSTR(VI_CONTAR);
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_04_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_04_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_04_DADOS_TEMP')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_04_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT FIRST 10 * FROM COMBINACOES_15 ORDER BY DADOS; ')  ;
            SELF.IBQ_COMBINACOES.Open;
     IF STRtoINT(LA_1234_TODOS.Caption) = 0 THEN
     BEGIN
          STGR_LINHA_1234_TODOS.RowCount := 1;
          SHOWMESSAGE('NÃO HÁ COMBINAÇÕES PARA PODER GERAR O FILTRO. VERIFIQUE OS SEUS EXCLUIDOS.') ;
          BBT_GERAR_FILTRO.Enabled := false;
          ED_EXC_01.SetFocus;
     end else
     begin
          STGR_LINHA_1234_TODOS.FixedRows := 1;     
     END; // IF
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          SHOWMESSAGE('OK');     
end;



procedure T_F_SIM_01_FILTRO_04.BBT_GERAR_FILTROClick(Sender: TObject);
begin
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Left := 450;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_GERARClick(Sender: TObject);
var
     VI_LINHAS1, VI_LINHAS2, VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTASEL1, VI_CONTASEL2, VI_CONTASEL3, VI_CONTASEL4, VI_CONTAR_COMB1: integer;
     VI_COMBINACOES3, VI_COMBINACOES4: SMALLINT;
     VI_SOMA1: SMALLINT;
     VI_FLAG_SOMATORIA1, VI_FLAG_SOMATORIA2, VI_FLAG_SOMATORIA3, VI_FLAG_SOMATORIA4: SMALLINT;

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
    	// ** VERIFICA SE HÁ REPETIDOS PARA TRÁS **
	// ****************************************
        IF (STGR_COMB15.RowCount) >=195 THEN
        BEGIN
            FOR VI_CONTAR :=  (STGR_COMB15.RowCount-194) TO (STGR_COMB15.RowCount-4) DO
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
        VI_TOTALGERADO, VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_DADOS1, VC_DADOS2, VC_DADOS3, VC_DADOS4, VC_DADOS51, VC_DADOS52, VC_DADOS53, VC_DADOS54, VC_DADOS55, VC_DADOS56, VC_COMBINACOES : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
            VC_DADOS1 := RIGHTSTR ('0'+STGR_BASE_L1.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L1.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L1.Cells[3,0],2) ;
            VC_DADOS2 := RIGHTSTR ('0'+STGR_BASE_L2.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L2.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L2.Cells[3,0],2) ;
            VC_DADOS3 := RIGHTSTR ('0'+STGR_BASE_L3.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L3.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L3.Cells[3,0],2) ;
            VC_DADOS4 := RIGHTSTR ('0'+STGR_BASE_L4.Cells[1,0],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L4.Cells[2,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[3,0],2) + ' '  + RIGHTSTR ('0'+STGR_BASE_L4.Cells[4,0],2) ;
            VC_DADOS51 := RIGHTSTR ('0'+STGR_BASE_L5.Cells[1,1],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L5.Cells[2,1],2) ;
            VC_DADOS52 := RIGHTSTR ('0'+STGR_BASE_L5.Cells[1,2],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L5.Cells[2,2],2) ;
            VC_DADOS53 := RIGHTSTR ('0'+STGR_BASE_L5.Cells[1,3],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L5.Cells[2,3],2) ;
            VC_DADOS54 := RIGHTSTR ('0'+STGR_BASE_L5.Cells[1,4],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L5.Cells[2,4],2) ;
            VC_DADOS55 := RIGHTSTR ('0'+STGR_BASE_L5.Cells[1,5],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L5.Cells[2,5],2) ;
            VC_DADOS56 := RIGHTSTR ('0'+STGR_BASE_L5.Cells[1,6],2) + ' ' + RIGHTSTR ('0'+STGR_BASE_L5.Cells[2,6],2) ;
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO FILTRO_04_DEFINICAO (LINHA_1, LINHA_2, LINHA_3, LINHA_4, LINHA_5_1, LINHA_5_2, LINHA_5_3, LINHA_5_4, LINHA_5_5, LINHA_5_6, ';
            VC_QUERY  := VC_QUERY +' EXC_1, EXC_2, EXC_3, FIXOS_1, FIXOS_2, FIXOS_3, FIXOS_4, FIXOS_5, CONTADOR_C1, TOTAL_CONTADOR_C1, DATA_DEFINICAO, HORA_DEFINICAO)';

            VC_QUERY  := VC_QUERY +'  VALUES('+#39+ VC_DADOS1              + #39 +',' +#39+ VC_DADOS2 + #39 +','  +#39+ VC_DADOS3 + #39 +','  +#39+ VC_DADOS4 ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ VC_DADOS51      + #39 +',' +#39+ VC_DADOS52        + #39 +','+#39+ VC_DADOS53    + #39 +','+#39+ VC_DADOS54       + #39 +','+#39+ VC_DADOS55        + #39 +','+#39+ VC_DADOS56;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01.Text          + #39 +',' +#39+ ED_EXC_02.Text          + #39 +','+#39+ ED_EXC_03.Text      + #39 +','+#39+ ED_FIXOS_01.Text        + #39 +','+#39+ ED_FIXOS_02.Text
                           + #39 +','+#39+ ED_FIXOS_03.Text             + #39 +','+#39+  ED_FIXOS_04.Text                 + #39 +','+#39+  ED_FIXOS_05.Text
                           + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1)+ #39 +','+#39+STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[])+ #39 +','+#39+FORMATDATETIME('h:n:s',time())    +#39+');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB15.RowCount-1;
        IF ((VI_LINHAS2/3597) = (VI_LINHAS2 DIV 3597))
            or ((VI_LINHAS2/3598) = (VI_LINHAS2 DIV 3598))
            or ((VI_LINHAS2/3599) = (VI_LINHAS2 DIV 3599))
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
                VC_QUERY  := 'INSERT INTO FILTRO_04_DADOS_TEMP (DADOS) VALUES(' +#39+ VC_COMBINACOES + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_04_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
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
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_04_100repet01' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_04_DADOS_TEMP')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
             end;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS
    
         
begin
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     //LA_gINICIO_GERAR.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     FOR VI_CONTASEL1 := 1 TO 15 DO
     BEGIN
        STGR_COMB15.Cells [VI_CONTASEL1+3,0] := '-'+INTtoSTR(VI_CONTASEL1)+'-';
        STGR_COMB15.Cells [VI_CONTASEL1+3,1] := '00';
     END;
     STGR_COMB15.RowCount := 2;
     STGR_COMB15.Repaint;
     PGBR_GERARCOMB.Position := 0;
     PGBR_GERARCOMB.Repaint;
     PGBR_REMREPET.Position := 0;
     PGBR_REMREPET.Repaint;
     PGBR_FILTRARCOMB.Position := 0;
     PGBR_FILTRARCOMB.Repaint;
     LA_TOTAL_COMB.Caption := 'GERAR:               ';
     LA_GERAR_COMB.Caption := '#:                   ';
     LA_QTD_COMB.Caption := '000000';
     LA_TOTAL_100REPET.Caption := '000000';
     LA_QTD_FILTRADOS.Caption  := '00000';
     LA_QTD_FILTRADOS.Repaint;
     LA_TOTAL_100REPET.Repaint;
     LA_TOTAL_COMB.Repaint;
     LA_GERAR_COMB.Repaint;
     LA_QTD_COMB.Repaint;

     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     IF (RB_GERAR_FILTRAR.Checked) THEN
     BEGIN
     {
          IF ( _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount <5 ) THEN
          begin
               SHOWMESSAGE('NÃO EXISTE NENHUMA SIMULAÇÃO GERADA E/OU CARREGADA. IMPOSSÍVEL APLICAR O FILTRO. VOLTE E ESCOLHA, GERAR E SAIR');
               PA_GERAR.Enabled := TRUE;
               PA_GERAR.Left := 450;
               EXIT;
          END;
          }
     END;
     // =====================================
     // ||||=============================||||
     // |||| 	GERANDO AS COMBINAÇÕES    ||||
     // ||||=============================||||
     // =====================================
     VI_LINHAS2 := 1;
     VI_LINHAS1 := VI_LINHAS2;
     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_LINHA_1234_TODOS.RowCount-1));
    // =================== AQUI
     FOR VI_COMBINACOES1 := 1{2} TO TRUNC((STGR_LINHA_1234_TODOS.RowCount-1)/1) DO
     BEGIN
          VI_CONTAR_COMB1 := VI_CONTAR_COMB1 +1 ;
          FOR VI_COMBINACOES2 := 1{16} TO {18} (STGR_LINHA_5_Comb6.RowCount-1) DO
          BEGIN
               IF (CB_MODO_FILTRO.ItemIndex = 2) THEN
               BEGIN
                    IF (STRtoINT(STGR_LINHA_1234_TODOS.Cells[2,VI_COMBINACOES1]) = 9) AND (STGR_LINHA_1234_TODOS.Cells[1,VI_COMBINACOES1]='V') AND (STGR_LINHA_5_Comb6.Cells[1,VI_COMBINACOES2]='V') THEN
                    BEGIN
                    // ***************************************************************************************************
                    // **   VERIFICANDO OS FIXOS NOS 9   PRIMEIROS NUMEROS DA LINHS_1234 E NAS 6 DA STGR_LINHA_5_Comb6  **
                    // ***************************************************************************************************
                         if NOT(STRtoINT(ED_fixoS_01.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[11,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text))
                             ))
                         THEN
                              CONTINUE;
                         if NOT(STRtoINT(ED_fixoS_02.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text))  OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[11,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text))  OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text))
                             ))
                         THEN
                              CONTINUE;
                         if NOT(STRtoINT(ED_fixoS_03.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text))  OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text))  OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[11,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text))  OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text))
                              ))
                         THEN
                              CONTINUE;
                         if NOT(STRtoINT(ED_fixoS_04.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text))  OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text))  OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[11,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text))  OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text))
                             ))
                         THEN
                              CONTINUE;
                         if NOT(STRtoINT(ED_fixoS_05.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text))  OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text))  OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[11,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text))  OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb6.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text))
                             ))
                         THEN
                              CONTINUE;
                         // ===> PEGA 9 NUMEROS
                         STGR_COMB15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_COMB15.Cells[1,VI_LINHAS2] := 'V';
                         STGR_COMB15.Cells[2,VI_LINHAS2] := 'F';
                         STGR_COMB15.Cells[3,VI_LINHAS2] := '( 6 )';
                         STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1];
                         STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1];
                         STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1];
                         STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1];
                         STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1];
                         STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1];
                         STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1];
                         STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1];
                         STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[11,VI_COMBINACOES1];
                         // ===> PEGA 6 NUMEROS
                         STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_LINHA_5_Comb6.Cells[3,VI_COMBINACOES2];
                         STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_LINHA_5_Comb6.Cells[4,VI_COMBINACOES2];
                         STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_LINHA_5_Comb6.Cells[5,VI_COMBINACOES2];
                         STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_LINHA_5_Comb6.Cells[6,VI_COMBINACOES2];
                         STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_LINHA_5_Comb6.Cells[7,VI_COMBINACOES2];
                         STGR_COMB15.Cells[18,VI_LINHAS2] := STGR_LINHA_5_Comb6.Cells[8,VI_COMBINACOES2];
                         PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                         PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_1234_TODOS.RowCount-1));
                         VI_LINHAS2 := VI_LINHAS2+1;
                         VI_LINHAS1 := VI_LINHAS1+1;
                    END; //  IF (STRtoINT(STGR_COMB15.Cells[2,VI_LINHAS2]) = 9
               END; // IF (CB_MODO_FILTRO


                    IF (STRtoINT(STGR_LINHA_1234_TODOS.Cells[2,VI_COMBINACOES1]) = 8) AND (STGR_LINHA_1234_TODOS.Cells[1,VI_COMBINACOES1]='V') AND (STGR_LINHA_5_Comb7.Cells[1,VI_COMBINACOES2]='V') THEN
                    BEGIN
                    // ***************************************************************************************************
                    // **   VERIFICANDO OS FIXOS NOS 8   PRIMEIROS NUMEROS DA LINHS_1234 E NAS 7 DA STGR_LINHA_5_Comb7  **
                    // ***************************************************************************************************
                         if NOT(STRtoINT(ED_fixoS_01.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[9,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text))
                             ))
                         THEN
                              CONTINUE;
                         if NOT(STRtoINT(ED_fixoS_02.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text))  OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[9,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text))
                             ))
                         THEN
                              CONTINUE;
                         if NOT(STRtoINT(ED_fixoS_03.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text))  OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text))  OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[9,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text))
                              ))
                         THEN
                              CONTINUE;
                         if NOT(STRtoINT(ED_fixoS_04.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text))  OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text))  OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[9,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text))
                             ))
                         THEN
                              CONTINUE;
                         if NOT(STRtoINT(ED_fixoS_05.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text))  OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text))  OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb7.Cells[9,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text))
                             ))
                         THEN
                              CONTINUE;
                         // ===> PEGA 8 NUMEROS
                         STGR_COMB15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_COMB15.Cells[1,VI_LINHAS2] := 'V';
                         STGR_COMB15.Cells[2,VI_LINHAS2] := 'F';
                         STGR_COMB15.Cells[3,VI_LINHAS2] := '[ 7 ]';
                         STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1];
                         STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1];
                         STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1];
                         STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1];
                         STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1];
                         STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1];
                         STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1];
                         STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[10,VI_COMBINACOES1];
                         // ===> PEGA 7 NUMEROS
                         STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_LINHA_5_Comb7.Cells[3,VI_COMBINACOES2];
                         STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_LINHA_5_Comb7.Cells[4,VI_COMBINACOES2];
                         STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_LINHA_5_Comb7.Cells[5,VI_COMBINACOES2];
                         STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_LINHA_5_Comb7.Cells[6,VI_COMBINACOES2];
                         STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_LINHA_5_Comb7.Cells[7,VI_COMBINACOES2];
                         STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_LINHA_5_Comb7.Cells[8,VI_COMBINACOES2];
                         STGR_COMB15.Cells[18,VI_LINHAS2] := STGR_LINHA_5_Comb7.Cells[9,VI_COMBINACOES2];
                         PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                         PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_1234_TODOS.RowCount-1));
                         VI_LINHAS2 := VI_LINHAS2+1;
                         VI_LINHAS1 := VI_LINHAS1+1;
                    END; //  IF (STRtoINT(STGR_COMB15.Cells[2,VI_LINHAS2]) = 8

               IF (CB_MODO_FILTRO.ItemIndex >= 1) THEN
               BEGIN
                    IF (STRtoINT(STGR_LINHA_1234_TODOS.Cells[2,VI_COMBINACOES1]) = 7) AND (STGR_LINHA_1234_TODOS.Cells[1,VI_COMBINACOES1]='V') AND (STGR_LINHA_5_Comb8.Cells[1,VI_COMBINACOES2]='V') THEN
                    BEGIN
                    // ***************************************************************************************************
                    // **   VERIFICANDO OS FIXOS NOS 7   PRIMEIROS NUMEROS DA LINHS_1234 E NAS 8 DA STGR_LINHA_5_Comb8  **
                    // ***************************************************************************************************
                         if NOT(STRtoINT(ED_fixoS_01.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR                             
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[9,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[10,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_01.Text))
                             ))
                         THEN
                              CONTINUE;
                         if NOT(STRtoINT(ED_fixoS_02.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_02.Text))  OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[9,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[10,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_02.Text))
                             ))
                         THEN
                              CONTINUE;
                         if NOT(STRtoINT(ED_fixoS_03.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_03.Text))  OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[9,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[10,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_03.Text))
                              ))
                         THEN
                              CONTINUE;
                         if NOT(STRtoINT(ED_fixoS_04.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_04.Text))  OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[9,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[10,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_04.Text))
                             ))
                         THEN
                              CONTINUE;
                         if NOT(STRtoINT(ED_fixoS_05.Text)=0) AND
                             (NOT(
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1]) = STRtoINT(ED_fixoS_05.Text))  OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[3,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[4,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[5,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[6,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[7,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[8,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[9,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text)) OR
                             (STRtoINT(STGR_LINHA_5_Comb8.Cells[10,VI_COMBINACOES2]) = STRtoINT(ED_fixoS_05.Text))
                             ))
                         THEN
                              CONTINUE;
                         // ===> PEGA 7 NUMEROS
                         STGR_COMB15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         STGR_COMB15.Cells[1,VI_LINHAS2] := 'V';
                         STGR_COMB15.Cells[2,VI_LINHAS2] := 'F';
                         STGR_COMB15.Cells[3,VI_LINHAS2] := '< 8 >';
                         STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[3,VI_COMBINACOES1];
                         STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[4,VI_COMBINACOES1];
                         STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[5,VI_COMBINACOES1];
                         STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[6,VI_COMBINACOES1];
                         STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[7,VI_COMBINACOES1];
                         STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[8,VI_COMBINACOES1];
                         STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_LINHA_1234_TODOS.Cells[9,VI_COMBINACOES1];
                         // ===> PEGA 8 NUMEROS
                         STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_LINHA_5_Comb8.Cells[3,VI_COMBINACOES2];
                         STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_LINHA_5_Comb8.Cells[4,VI_COMBINACOES2];
                         STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_LINHA_5_Comb8.Cells[5,VI_COMBINACOES2];
                         STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_LINHA_5_Comb8.Cells[6,VI_COMBINACOES2];
                         STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_LINHA_5_Comb8.Cells[7,VI_COMBINACOES2];
                         STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_LINHA_5_Comb8.Cells[8,VI_COMBINACOES2];
                         STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_LINHA_5_Comb8.Cells[9,VI_COMBINACOES2];
                         STGR_COMB15.Cells[18,VI_LINHAS2] := STGR_LINHA_5_Comb8.Cells[10,VI_COMBINACOES2];                         
                         PR_ORDENAR_SIMULACAO_15 (VI_LINHAS2);
                         PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_1234_TODOS.RowCount-1));
                         VI_LINHAS2 := VI_LINHAS2+1;
                         VI_LINHAS1 := VI_LINHAS1+1;
                    END; //  IF (STRtoINT(STGR_COMB15.Cells[2,VI_LINHAS2]) = 7
               END; // IF (CB_MODO_FILTRO
          END; // FOR VI_COMBINACOES2
                    LA_TOTAL_COMB.Caption := 'TOTAL PROCESSADOS: '+INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4)+'   ';
                    LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
                    LA_QTD_COMB.Repaint;
                    //SLEEP(30);

          LA_GERAR_COMB.Caption := '# ' + INTtoSTR(VI_COMBINACOES1)+ ' DE '+  INTtoSTR(STGR_LINHA_1234_TODOS.RowCount-1)+ ' - ' + INTtoSTR(TRUNC(VI_COMBINACOES1/(STGR_LINHA_1234_TODOS.RowCount-1)*100))+ ' %  ';
          PGBR_GERARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_LINHA_1234_TODOS.RowCount-1)*100);
          LA_GERAR_COMB.Repaint;
          PGBR_GERARCOMB.Repaint;
          STGR_COMB15.RowCount := VI_LINHAS2;
          STGR_COMB15.Repaint;
     END; // FOR VI_COMBINACOES1
     PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMBINACOES1, TRUNC(STGR_LINHA_1234_TODOS.RowCount-1));
     //PGBR_GERARCOMB0.Repaint;
     PGBR_GERARCOMB.Repaint;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_FILTRO.Enabled    := false;
     BBT_ENCERRAR.Enabled := false;
     LA_rTOTAL_COMB.Caption  := INTtoSTR(VI_COMBINACOES1*VI_COMBINACOES2*VI_COMBINACOES3*VI_COMBINACOES4)+'   ';
     LA_rQTD_COMB.Caption    := INTtoSTR(VI_LINHAS1-1)+'     ';
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_04_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTASEL1 := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_04_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTASEL1)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption+ '    ';
     IF (RB_GERAR_FILTRAR.Checked) THEN
     BEGIN
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_04_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     END ELSE
     BEGIN
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_04_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     END;

     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          PA_REMOVEUREPET.Left :=  580;
end;


PROCEDURE T_F_SIM_01_FILTRO_04.PR_SIMULAR_RECUPERANDODADOS(VC_TIPO: STRING);
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       IF (VC_TIPO='SIMULACAO') THEN SHOWMESSAGE('DADOS-2 - Retirando os repetidos');
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_04_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DADOS FROM FILTRO_04_DADOS GROUP BY DADOS ORDER BY DADOS;')  ;
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
           STGR_COMB15.Cells [0, VI_AN_COMB1-1] := INTtoSTR(VI_AN_COMB1);
           STGR_COMB15.Cells [1, VI_AN_COMB1-1] := 'V';
           STGR_COMB15.Cells [2, VI_AN_COMB1-1] := 'F';
           STGR_COMB15.Cells [4, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
           STGR_COMB15.Cells [5, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
           STGR_COMB15.Cells [6, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
           STGR_COMB15.Cells [7, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
           STGR_COMB15.Cells [8, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
           STGR_COMB15.Cells [9, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
           STGR_COMB15.Cells [10, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
           STGR_COMB15.Cells [11, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
           STGR_COMB15.Cells [12, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
           STGR_COMB15.Cells [13, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
           STGR_COMB15.Cells [14, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
           STGR_COMB15.Cells [15, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
           STGR_COMB15.Cells [16, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
           STGR_COMB15.Cells [17, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
           STGR_COMB15.Cells [18, VI_AN_COMB1-1] :=  COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
               STGR_COMB15.RowCount := VI_AN_COMB1;
           if (VI_AN_COMB1/190)=(VI_AN_COMB1 DIV 190) then
           BEGIN
               PGBR_REMREPET.Position := (TRUNC(VI_AN_COMB1  / VI_CONTAR *10*8) );
               PGBR_REMREPET.Repaint;
               STGR_COMB15.REPAINT;               
           END;
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_04_DEFINICAO;')  ;
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



procedure T_F_SIM_01_FILTRO_04.BBT_ENCERRARClick(Sender: TObject);
VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_LINHAS2: SMALLINT;
begin
               // ---------------------------
               // --  FILTRANDO OS DADOS   --
               // ---------------------------
     FOR VI_COMBINACOES1:= 1 TO TRUNC((STGR_COMB15.RowCount-1)/1) DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO TRUNC((_FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount-1)/1) DO
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
     FOR VI_COMBINACOES1 :=1 TO (STGR_COMB15.RowCount ) DO
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
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount := VI_LINHAS2;
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.FixedRows := 1; ;
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Repaint;
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Repaint;


     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR_FILTRO.Enabled    := false;
     BBT_ENCERRAR.Enabled := false;
     LA_fTOTAL_COMB.Caption  := LA_rTOTAL_COMB.Caption;
     LA_fQTD_COMB.Caption    := LA_rQTD_COMB.Caption;
     LA_fTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption+ '    ';
     LA_fQTD_FILTRADOS.Caption := LA_QTD_FILTRADOS.Caption + '   ';
     PA_FIMFILTRO.Left :=  480;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_RECOMECAR.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_FILTRO.Enabled    := TRUE;
     //BBT_ORDENAR.Enabled  := TRUE;
     //BBT_ENCERRAR.Enabled := TRUE;
     IF (RB_GERAR_FILTRAR.Checked) THEN
     BEGIN
          BBT_ENCERRAR.Click;
     END ELSE
     BEGIN
         Self.Close;
     END;
end;

procedure T_F_SIM_01_FILTRO_04.BBT_FIMFILTROClick(Sender: TObject);
begin
    _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add('# FILTRO 04: RESULTADO');
    _FRM_SIM_LOTOFACIL01.MEM_DESCFILTRO.Lines.Add('  ' + INTtoSTR(_FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount));

    PA_FIMFILTRO.Left := 5000;
    BBT_CLOSE.OnClick (Sender);
end;

procedure T_F_SIM_01_FILTRO_04.BBT_GERAR_SAIRClick(Sender: TObject);
begin
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Left := 4500;
     PA_PREPARAR_MENU.Enabled := TRUE;
     PA_PREPARAR_MENU.Left := 4500;
     ED_EXC_01.SetFocus;
end;


procedure T_F_SIM_01_FILTRO_04.BT_NOVA_SIMULACAOClick(Sender: TObject);
begin
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
    // RB_RES_GABARITOS.SetFocus;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BBT_GERAR_filtro.Enabled := TRUE;
     BBT_ENCERRAR.Visible := false;
     PA_INICIAL.Enabled := false;
     ED_EXC_01.SetFocus;
     PA_INICIAL.Left := 4500;
end;


procedure T_F_SIM_01_FILTRO_04.BT_CARREGAR_SIMULACAOClick(Sender: TObject);
begin
     BBT_RECOMECAR.Click;
     PA_PREENCHIMENTO.Visible := false;
     PA_PREENCHIMENTO.Enabled := false;
     SCBX_GABARITO.Visible := false;
     SCBX_GABARITO.Enabled := false;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR_MENU.Enabled := false;
     BBT_GERAR_FILTRO.Enabled := false;
     BBT_ENCERRAR.Enabled := false;
     BBT_ENCERRAR.Visible := TRUE;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 4500;
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
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
     LA_TOTAL_COMB.Visible := false;
     LA_GERAR_COMB.Visible := false;
     LA_QTD_COMB.Visible   := false;
     SELF.PR_SIMULAR_RECUPERANDODADOS('');
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_04_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          SHOWMESSAGE('OK');     
end;


procedure T_F_SIM_01_FILTRO_04.FormClose(Sender: TObject;
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


procedure T_F_SIM_01_FILTRO_04.BBT_PREPARAR_MENUClick(Sender: TObject);
begin
     PA_PREPARAR_MENU.Enabled := TRUE;
     PA_PREPARAR_MENU.Left := 635;
end;


procedure T_F_SIM_01_FILTRO_04.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_04_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;

procedure T_F_SIM_01_FILTRO_04.Set_SET_FLAG_AUTOEXECUTAR(
  const Value: STRING);
begin
  F_SET_FLAG_AUTOEXECUTAR := Value;
end;

end.
