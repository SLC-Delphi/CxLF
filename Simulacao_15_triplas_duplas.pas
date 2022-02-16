unit Simulacao_15_triplas_duplas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, STRUTILS,
  Dialogs, DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Grids;

type
  T_F_SIM_01_FILTRO_15td = class(TForm)
    SCBX_GABARITO: TScrollBox;
    PA_PREENCHIMENTO: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    STGR_BASE_A: TStringGrid;
    STGR_BASE_B: TStringGrid;
    STGR_BASE_C: TStringGrid;
    STGR_BASE_D: TStringGrid;
    PA_EXCLUIDOS: TPanel;
    Label31: TLabel;
    ED_EXC_01: TEdit;
    ED_EXC_02: TEdit;
    PA_GABARITO: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    RB_RESULTADOS: TRadioButton;
    RB_GABARITO: TRadioButton;
    RB_RES_GABARITOS: TRadioButton;
    PA_FIXOS: TPanel;
    Label39: TLabel;
    ED_FIXOS_01: TEdit;
    ED_FIXOS_02: TEdit;
    ED_FIXOS_03: TEdit;
    ED_FIXOS_04: TEdit;
    ED_FIXOS_05: TEdit;
    Panel1: TPanel;
    Label53: TLabel;
    BBT_CLOSE: TImage;
    BBT_RECOMECAR: TBitBtn;
    BBT_CLICK_TUDO: TButton;
    PA_RESULTADO: TPanel;
    STGR_COMB15: TStringGrid;
    STRGR_TODOS_NUMEROS: TStringGrid;
    PA_EXECUTAR_FILTRO: TPanel;
    BBT_PREPARAR: TBitBtn;
    BBT_ENCERRAR: TBitBtn;
    BBT_GERAR: TBitBtn;
    Button1: TButton;
    BBT_FILTRAR: TButton;
    PANEL_TITULO_SIMULACAO: TPanel;
    LA_TOTAL_100REPET: TLabel;
    Label87: TLabel;
    LA_QTD_COMB: TLabel;
    LA_GERAR_COMB: TLabel;
    LA_TOTAL_COMB: TLabel;
    LA_PERC_COMB2: TLabel;
    LA_PERC_100REPET: TLabel;
    PGBR_REMREPET: TProgressBar;
    PGBR_GERARCOMB: TProgressBar;
    PGBR_GERARCOMB0: TProgressBar;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
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
    Label50: TLabel;
    LA_rTOTAL_100REPET: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    BBT_BLOCO_NOTAS: TBitBtn;
    MEM_COMBINACOES_TODAS: TMemo;
    Label1: TLabel;
    LA_fQTD_FILTRADOS: TLabel;
    LA_gFIM_FILTRAR: TLabel;
    Label5: TLabel;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    BBT_SAIR: TButton;
    BBT_CARREGAR: TButton;
    BBT_CANCELAR: TBitBtn;
    STGR_DUPLAS_Comb6: TStringGrid;
    Label3: TLabel;
    LA_DUPLAS_COMB6_100REP: TLabel;
    STGR_DUPLAS: TStringGrid;
    STGR_TRIPLAS: TStringGrid;
    Label7: TLabel;
    STGR_TRIPLAS_Comb9: TStringGrid;
    LA_TRIPLAS_Comb9: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ED_EXC_03: TEdit;
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBT_FILTRARClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
    procedure BBT_ENCERRARClick(Sender: TObject);
    procedure BBT_BLOCO_NOTASClick(Sender: TObject);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure BT_REAJUSTARClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_CANCELARClick(Sender: TObject);
  private
    F_SET_FLAG_AUTOEXECUTAR: STRING;
    { Private declarations }
     PROCEDURE PR_SIMULAR_RECUPERANDODADOS();
     PROCEDURE PR_LIMPAR_GRID15 ();
    procedure Set_SET_FLAG_AUTOEXECUTAR(const Value: STRING);
  public
    { Public declarations }
     PROPERTY _SET_FLAG_AUTOEXECUTAR : STRING read F_SET_FLAG_AUTOEXECUTAR write Set_SET_FLAG_AUTOEXECUTAR;
  end;

var
  _F_SIM_01_FILTRO_15td: T_F_SIM_01_FILTRO_15td;

implementation

uses Unit1;

{$R *.dfm}



procedure T_F_SIM_01_FILTRO_15td.FormCreate(Sender: TObject);
VAR
     VI_CONTAR: INTEGER;
begin
     PA_REMOVEUREPET.Left := 9999;
     FOR VI_CONTAR :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
     END; // FOR VI_CONTAR
     SELF.Width := 1220;
     PA_PREENCHIMENTO.Visible := false;
     PA_REMOVEUREPET.Left := 5000;
     PA_GABARITO.Visible := false;
     SCBX_GABARITO.Visible := false;
     PA_RESULTADO.Visible := false;
     PA_INICIAL.Enabled := TRUE;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_15td_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
               SELF.IBQ_COMBINACOES.Close;
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT FLAG_AUTOEXECUTAR FROM FILTRO_15td_DEFINICAO;')  ;
               SELF.IBQ_COMBINACOES.Open;
               SELF._SET_FLAG_AUTOEXECUTAR := TRIM(SELF.IBQ_COMBINACOES.FieldByName('FLAG_AUTOEXECUTAR').AsString);
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
        PA_INICIAL.Left := 520;;
end;



procedure T_F_SIM_01_FILTRO_15td.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_SIM_01_FILTRO_15td.FormClose(Sender: TObject; var Action: TCloseAction);
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





procedure T_F_SIM_01_FILTRO_15td.BBT_PREPARARClick(Sender: TObject);
VAR
     VI_LINHAS2, VI_CONTAR, VI_CNTCELULAS: INTEGER;
     VI_COMBINACOES_INI01, VI_COMBINACOES_INI02, VI_COMBINACOES_INI03, VI_COMBINACOES_INI04 : INTEGER;
     VI_COMBINACOES01, VI_COMBINACOES02, VI_COMBINACOES03, VI_COMBINACOES04, VI_COMBINACOES05, VI_COMBINACOES06 : INTEGER;
     VI_COMBINACOES10 : INTEGER;
begin
     BBT_BLOCO_NOTAS.Enabled := false;
     IBQ_COMBINACOES.Close;
     IBQ_COMBINACOES.SQL.Clear;
     IBQ_COMBINACOES.SQL.Add('SELECT * FROM A_CONFIG1_');
     IBQ_COMBINACOES.Open;
     IF (IBQ_COMBINACOES.FieldByName('NOME_SIMULACAO_ATIVA').AsString = 'SIMULACAO_1') THEN
     BEGIN
     END ELSE
     IF (IBQ_COMBINACOES.FieldByName('NOME_SIMULACAO_ATIVA').AsString = 'SIMULACAO_2') THEN
     BEGIN
          IBQ_COMBINACOES.Close;
          IBQ_COMBINACOES.SQL.Clear;
          IBQ_COMBINACOES.SQL.Add('SELECT * FROM SIMULACAO_2_DEFINICAO');
          IBQ_COMBINACOES.Open;
     END;
     // *****************************************************
     // ** Restaurando/lendo os dados do Impar A / LINHA A **
     // *****************************************************
     STGR_BASE_A.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,1,2);
     STGR_BASE_A.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,4,2);
     STGR_BASE_A.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,7,2);
     STGR_BASE_A.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,10,2);
     STGR_BASE_A.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,13,2);
     STGR_BASE_A.Cells[6,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,16,2);
     STGR_BASE_A.Cells[7,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,19,2);
     STGR_BASE_A.Cells[8,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,22,2);
     // ****************************************************
     // ** Restaurando/lendo os dados do Par A / LINHA B  **
     // ****************************************************
     STGR_BASE_B.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,1,2);
     STGR_BASE_B.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,4,2);
     STGR_BASE_B.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,7,2);
     STGR_BASE_B.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,10,2);
     STGR_BASE_B.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,13,2);
     STGR_BASE_B.Cells[6,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,16,2);
     STGR_BASE_B.Cells[7,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,19,2);
     // ******************************************************
     // ** Restaurando/lendo os dados do Impar B / LINHA C  **
     // ******************************************************
     STGR_BASE_C.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,1,2);
     STGR_BASE_C.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,4,2);
     STGR_BASE_C.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,7,2);
     STGR_BASE_C.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,10,2);
     STGR_BASE_C.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,13,2);
     // ****************************************************
     // ** Restaurando/lendo os dados do Par B / LINHA D  **
     // ****************************************************
     STGR_BASE_D.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,1,2);
     STGR_BASE_D.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,4,2);
     STGR_BASE_D.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,7,2);
     STGR_BASE_D.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,10,2);
     STGR_BASE_D.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,13,2);
     IBQ_COMBINACOES.Close;
     IBQ_COMBINACOES.SQL.Clear;
     IBQ_COMBINACOES.SQL.Add('SELECT FIRST 10 * FROM A_RESULTADO_15_DADOS');
     IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;

     STGR_COMB15.RowCount := 2;
     VI_LINHAS2 := 0;
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
          STGR_COMB15.Cells[VI_CONTAR+2,0] := INTtoSTR(VI_CONTAR);
     END; // FOR
        // ***************************
        // **  CONFERINDO OS EXCLUIDOS **
        // ***************************
     IF (STRtoINT(ED_EXC_01.Text) <> 0  ) then
     begin
         IF (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_FIXOS_01.Text) = STRtoINT(ED_EXC_02.Text ) )
         THEN
         BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_01.SetFocus;
                 EXIT;
         END; // IF
         IF (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_FIXOS_02.Text) = STRtoINT(ED_EXC_02.Text ) )
         THEN
         BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_02.SetFocus;
                 EXIT;
         END; // IF
         IF (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_FIXOS_03.Text) = STRtoINT(ED_EXC_02.Text ) )
         THEN
         BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_02.SetFocus;
                 EXIT;
         END; // IF
         IF (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_01.Text ) ) OR
            (STRtoINT(ED_FIXOS_04.Text) = STRtoINT(ED_EXC_02.Text ) ) 
         THEN
         BEGIN
                 SHOWMESSAGE ('O NÚMERO FIXO DOS NÚMEROS A GERAR TEM DE SER DIFERENTE DOS EXCLUÍDOS.');
                 ED_FIXOS_02.SetFocus;
                 EXIT;
         END; // IF
     end; // if (STRtoINT
     // **************************************
     // ** Montando as 5 linhas das triplas **
     // **************************************
     STGR_TRIPLAS.Cells[0,1] := '1';
     STGR_TRIPLAS.Cells[0,2] := '2';
     STGR_TRIPLAS.Cells[0,3] := '3';
     STGR_TRIPLAS.Cells[0,4] := '4';
     STGR_TRIPLAS.Cells[0,5] := '5';
     STGR_TRIPLAS.Cells[1,1] := STGR_BASE_A.Cells[1,0];
     STGR_TRIPLAS.Cells[2,1] := STGR_BASE_B.Cells[6,0];
     STGR_TRIPLAS.Cells[3,1] := STGR_BASE_B.Cells[7,0];
     STGR_TRIPLAS.Cells[1,2] := STGR_BASE_A.Cells[2,0];
     STGR_TRIPLAS.Cells[2,2] := STGR_BASE_A.Cells[4,0];
     STGR_TRIPLAS.Cells[3,2] := STGR_BASE_A.Cells[7,0];
     STGR_TRIPLAS.Cells[1,3] := STGR_BASE_A.Cells[3,0];
     STGR_TRIPLAS.Cells[2,3] := STGR_BASE_A.Cells[5,0];
     STGR_TRIPLAS.Cells[3,3] := STGR_BASE_A.Cells[6,0];
     STGR_TRIPLAS.Cells[1,4] := STGR_BASE_A.Cells[8,0];
     STGR_TRIPLAS.Cells[2,4] := STGR_BASE_B.Cells[1,0];
     STGR_TRIPLAS.Cells[3,4] := STGR_BASE_B.Cells[2,0];
     STGR_TRIPLAS.Cells[1,5] := STGR_BASE_B.Cells[3,0];
     STGR_TRIPLAS.Cells[2,5] := STGR_BASE_B.Cells[4,0];
     STGR_TRIPLAS.Cells[3,5] := STGR_BASE_B.Cells[5,0];
     // **************************************
     // ** Montando as 5 linhas das Duplas **
     // **************************************
     STGR_DUPLAS.Cells[0,1] := '1';
     STGR_DUPLAS.Cells[0,2] := '2';
     STGR_DUPLAS.Cells[0,3] := '3';
     STGR_DUPLAS.Cells[0,4] := '4';
     STGR_DUPLAS.Cells[0,5] := '5';
     STGR_DUPLAS.Cells[1,1] := STGR_BASE_C.Cells[1,0];
     STGR_DUPLAS.Cells[2,1] := STGR_BASE_D.Cells[5,0];
     STGR_DUPLAS.Cells[1,2] := STGR_BASE_C.Cells[2,0];
     STGR_DUPLAS.Cells[2,2] := STGR_BASE_D.Cells[4,0];
     STGR_DUPLAS.Cells[1,3] := STGR_BASE_C.Cells[3,0];
     STGR_DUPLAS.Cells[2,3] := STGR_BASE_D.Cells[3,0];
     STGR_DUPLAS.Cells[1,4] := STGR_BASE_C.Cells[4,0];
     STGR_DUPLAS.Cells[2,4] := STGR_BASE_D.Cells[2,0];
     STGR_DUPLAS.Cells[1,5] := STGR_BASE_C.Cells[5,0];
     STGR_DUPLAS.Cells[2,5] := STGR_BASE_D.Cells[1,0];


        // *****************************************
        // ** DUPLAS - 6 combinações 2 DUPLAS + 2 **
        // *****************************************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES01:= 1 TO 5 DO
     BEGIN
          FOR VI_COMBINACOES02:= VI_COMBINACOES01+1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES03:= 1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES04:=1 TO 2 DO
                    BEGIN
                         STGR_DUPLAS_Comb6.Cells[2,VI_LINHAS2] := '6';
                         STGR_DUPLAS_Comb6.Cells[1,VI_LINHAS2] := 'V';
                         STGR_DUPLAS_Comb6.Cells[3,VI_LINHAS2] := STGR_DUPLAS.Cells[1,VI_COMBINACOES01];
                         STGR_DUPLAS_Comb6.Cells[4,VI_LINHAS2] := STGR_DUPLAS.Cells[2,VI_COMBINACOES01];
                         STGR_DUPLAS_Comb6.Cells[5,VI_LINHAS2] := STGR_DUPLAS.Cells[1,VI_COMBINACOES02];
                         STGR_DUPLAS_Comb6.Cells[6,VI_LINHAS2] := STGR_DUPLAS.Cells[2,VI_COMBINACOES02];
                         STGR_DUPLAS_Comb6.Cells[7,VI_LINHAS2] := STGR_DUPLAS.Cells[VI_COMBINACOES04,VI_COMBINACOES03];
                         IF  (STGR_DUPLAS_Comb6.Cells[7,VI_LINHAS2] = STGR_DUPLAS_Comb6.Cells[3,VI_LINHAS2]) OR (STGR_DUPLAS_Comb6.Cells[7,VI_LINHAS2] = STGR_DUPLAS_Comb6.Cells[4,VI_LINHAS2]) OR
                             (STGR_DUPLAS_Comb6.Cells[7,VI_LINHAS2] = STGR_DUPLAS_Comb6.Cells[5,VI_LINHAS2]) OR (STGR_DUPLAS_Comb6.Cells[7,VI_LINHAS2] = STGR_DUPLAS_Comb6.Cells[6,VI_LINHAS2])
                         THEN
                              CONTINUE;
                         STGR_DUPLAS_Comb6.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                         FOR VI_COMBINACOES05:=1 TO 5 DO
                         BEGIN
                              FOR VI_COMBINACOES06:=1 TO 2 DO
                              BEGIN
                                   STGR_DUPLAS_Comb6.Cells[2,VI_LINHAS2] := '6';
                                   STGR_DUPLAS_Comb6.Cells[1,VI_LINHAS2] := 'V';
                                   STGR_DUPLAS_Comb6.Cells[3,VI_LINHAS2] := STGR_DUPLAS.Cells[1,VI_COMBINACOES01];
                                   STGR_DUPLAS_Comb6.Cells[4,VI_LINHAS2] := STGR_DUPLAS.Cells[2,VI_COMBINACOES01];
                                   STGR_DUPLAS_Comb6.Cells[5,VI_LINHAS2] := STGR_DUPLAS.Cells[1,VI_COMBINACOES02];
                                   STGR_DUPLAS_Comb6.Cells[6,VI_LINHAS2] := STGR_DUPLAS.Cells[2,VI_COMBINACOES02];
                                   STGR_DUPLAS_Comb6.Cells[7,VI_LINHAS2] := STGR_DUPLAS.Cells[VI_COMBINACOES04,VI_COMBINACOES03];
                                   STGR_DUPLAS_Comb6.Cells[8,VI_LINHAS2] := STGR_DUPLAS.Cells[VI_COMBINACOES06,VI_COMBINACOES05];
                                   IF  (STGR_DUPLAS_Comb6.Cells[8,VI_LINHAS2] = STGR_DUPLAS_Comb6.Cells[3,VI_LINHAS2]) OR (STGR_DUPLAS_Comb6.Cells[8,VI_LINHAS2] = STGR_DUPLAS_Comb6.Cells[4,VI_LINHAS2]) OR
                                       (STGR_DUPLAS_Comb6.Cells[8,VI_LINHAS2] = STGR_DUPLAS_Comb6.Cells[5,VI_LINHAS2]) OR (STGR_DUPLAS_Comb6.Cells[8,VI_LINHAS2] = STGR_DUPLAS_Comb6.Cells[6,VI_LINHAS2]) OR
                                       (STGR_DUPLAS_Comb6.Cells[8,VI_LINHAS2] = STGR_DUPLAS_Comb6.Cells[7,VI_LINHAS2])
                                   THEN
                                        CONTINUE;
                                   IF (VI_COMBINACOES03 = VI_COMBINACOES05) THEN
                                        CONTINUE;
                                   STGR_DUPLAS_Comb6.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
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
                                                  STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_DUPLAS_Comb6.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
                                             END; // FOR VI_CONTAR1
                                             VI_CNTCELULAS := 3;
                                             FOR VI_CONTAR :=1 TO 25 DO
                                             BEGIN
                                               IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                                               BEGIN
                                                   STGR_DUPLAS_Comb6.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                                   VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                               END; // IF (STRGR_TODOS_NUMEROS
                                             END; // FOR VI_CONTAR
                                   VI_LINHAS2 := VI_LINHAS2+1;
                              END; // FOR VI_COMBINACOES06
                         END; // FOR VI_COMBINACOES05
                    END; // FOR VI_COMBINACOES04
               END; // FOR VI_COMBINACOES03
              STGR_DUPLAS_Comb6.RowCount := VI_LINHAS2;
          end; //  FOR VI_COMBINACOES02
     end; // FOR VI_COMBINACOES01
    STGR_DUPLAS_Comb6.RowCount := VI_LINHAS2;
     STGR_DUPLAS_Comb6.FixedRows := 1;

               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_DUPLAS_Comb6.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES02:= VI_COMBINACOES01+1 TO (STGR_DUPLAS_Comb6.RowCount-1) DO
          BEGIN
                IF  (STGR_DUPLAS_Comb6.Cells[3,VI_COMBINACOES01] = STGR_DUPLAS_Comb6.Cells[3,VI_COMBINACOES02]) AND
                    (STGR_DUPLAS_Comb6.Cells[4,VI_COMBINACOES01] = STGR_DUPLAS_Comb6.Cells[4,VI_COMBINACOES02])
                    THEN
                BEGIN
                    IF  (STGR_DUPLAS_Comb6.Cells[5,VI_COMBINACOES01] = STGR_DUPLAS_Comb6.Cells[5,VI_COMBINACOES02]) AND
                        (STGR_DUPLAS_Comb6.Cells[6,VI_COMBINACOES01] = STGR_DUPLAS_Comb6.Cells[6,VI_COMBINACOES02]) AND
                        (STGR_DUPLAS_Comb6.Cells[7,VI_COMBINACOES01] = STGR_DUPLAS_Comb6.Cells[7,VI_COMBINACOES02]) AND
                        (STGR_DUPLAS_Comb6.Cells[8,VI_COMBINACOES01] = STGR_DUPLAS_Comb6.Cells[8,VI_COMBINACOES02])
                        THEN
                    BEGIN
                        STGR_DUPLAS_Comb6.Cells [1,VI_COMBINACOES02] := 'F';
                    END; // if (STGR_DUPLAS_Comb6.Cells[1,VI_CONTAR]
                END; // if (STGR_DUPLAS_Comb6.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES02
     END; // FOR VI_COMBINACOES01
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES01:= 1 TO (STGR_DUPLAS_Comb6.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_01.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_DUPLAS_Comb6.Cells[3,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[4,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[5,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[6,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[7,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[8,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text))
                        THEN
                    BEGIN
                        STGR_DUPLAS_Comb6.Cells [1,VI_COMBINACOES01] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES01
          FOR VI_COMBINACOES01:= 1 TO (STGR_DUPLAS_Comb6.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_02.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_DUPLAS_Comb6.Cells[3,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[4,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[5,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[6,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[7,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[8,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text))
                        THEN
                    BEGIN
                        STGR_DUPLAS_Comb6.Cells [1,VI_COMBINACOES01] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES01
          FOR VI_COMBINACOES01:= 1 TO (STGR_DUPLAS_Comb6.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_03.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_DUPLAS_Comb6.Cells[3,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[4,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[5,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[6,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[7,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_DUPLAS_Comb6.Cells[8,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text))
                        THEN
                    BEGIN
                        STGR_DUPLAS_Comb6.Cells [1,VI_COMBINACOES01] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES01
     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_DUPLAS_Comb6.RowCount-1) DO
     BEGIN
          IF (STGR_DUPLAS_Comb6.Cells [1,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_DUPLAS_COMB6_100REP.Caption := INTtoSTR(VI_CONTAR);
     STGR_DUPLAS_Comb6.Repaint;




        // *********************************************************
        // **  TRIPLAS - 9 combinações - 1 TRIPLA + 2 DUPLAS + 2  **
        // *********************************************************
     VI_LINHAS2:= 1;
     FOR VI_COMBINACOES_INI01 := 0 TO 1 DO
     BEGIN
     FOR VI_COMBINACOES_INI02 := 0 TO 1 DO
     BEGIN
          IF  VI_COMBINACOES_INI02 < VI_COMBINACOES_INI01 THEN
               CONTINUE;
          FOR VI_COMBINACOES01:= 1 TO 5 DO
          BEGIN
               FOR VI_COMBINACOES02:= VI_COMBINACOES01+1 TO 5 DO
               BEGIN
                    FOR VI_COMBINACOES_INI03 := 0 TO 1 DO
                    BEGIN
                    FOR VI_COMBINACOES_INI04 := 0 TO 1 DO
                    BEGIN
                         IF  VI_COMBINACOES_INI04 < VI_COMBINACOES_INI03 THEN
                              CONTINUE;
                         FOR VI_COMBINACOES03:= 1 TO 5 DO
                         BEGIN
                              FOR VI_COMBINACOES04:=1 TO 3 DO
                              BEGIN
                                   STGR_TRIPLAS_Comb9.Cells[2,VI_LINHAS2] := '9';
                                   STGR_TRIPLAS_Comb9.Cells[1,VI_LINHAS2] := 'V';
                                   STGR_TRIPLAS_Comb9.Cells[6,VI_LINHAS2] := STGR_TRIPLAS.Cells[1+VI_COMBINACOES_INI01,VI_COMBINACOES01];
                                   STGR_TRIPLAS_Comb9.Cells[7,VI_LINHAS2] := STGR_TRIPLAS.Cells[2+VI_COMBINACOES_INI02,VI_COMBINACOES01];
                                   STGR_TRIPLAS_Comb9.Cells[8,VI_LINHAS2] := STGR_TRIPLAS.Cells[1+VI_COMBINACOES_INI03,VI_COMBINACOES02];
                                   STGR_TRIPLAS_Comb9.Cells[9,VI_LINHAS2] := STGR_TRIPLAS.Cells[2+VI_COMBINACOES_INI04,VI_COMBINACOES02];
                                   STGR_TRIPLAS_Comb9.Cells[10,VI_LINHAS2] := STGR_TRIPLAS.Cells[VI_COMBINACOES04,VI_COMBINACOES03];
                                   IF  (STGR_TRIPLAS_Comb9.Cells[10,VI_LINHAS2] = STGR_TRIPLAS_Comb9.Cells[6,VI_LINHAS2]) OR (STGR_TRIPLAS_Comb9.Cells[10,VI_LINHAS2] = STGR_TRIPLAS_Comb9.Cells[8,VI_LINHAS2]) OR
                                       (STGR_TRIPLAS_Comb9.Cells[10,VI_LINHAS2] = STGR_TRIPLAS_Comb9.Cells[7,VI_LINHAS2]) OR (STGR_TRIPLAS_Comb9.Cells[10,VI_LINHAS2] = STGR_TRIPLAS_Comb9.Cells[9,VI_LINHAS2])
                                   THEN
                                        CONTINUE;
                                   IF  (VI_COMBINACOES03 = VI_COMBINACOES01) OR (VI_COMBINACOES03 = VI_COMBINACOES02) THEN
                                        CONTINUE;
                                   STGR_TRIPLAS_Comb9.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                   FOR VI_COMBINACOES05:=VI_COMBINACOES03+1 TO 5 DO
                                   BEGIN
                                        FOR VI_COMBINACOES06:=1 TO 3 DO
                                        BEGIN
                                             STGR_TRIPLAS_Comb9.Cells[2,VI_LINHAS2] := '9';
                                             STGR_TRIPLAS_Comb9.Cells[1,VI_LINHAS2] := 'V';
                                             STGR_TRIPLAS_Comb9.Cells[6,VI_LINHAS2] := STGR_TRIPLAS.Cells[1+VI_COMBINACOES_INI01,VI_COMBINACOES01];
                                             STGR_TRIPLAS_Comb9.Cells[7,VI_LINHAS2] := STGR_TRIPLAS.Cells[2+VI_COMBINACOES_INI02,VI_COMBINACOES01];
                                             STGR_TRIPLAS_Comb9.Cells[8,VI_LINHAS2] := STGR_TRIPLAS.Cells[1++VI_COMBINACOES_INI03,VI_COMBINACOES02];
                                             STGR_TRIPLAS_Comb9.Cells[9,VI_LINHAS2] := STGR_TRIPLAS.Cells[2++VI_COMBINACOES_INI04,VI_COMBINACOES02];
                                             STGR_TRIPLAS_Comb9.Cells[10,VI_LINHAS2] := STGR_TRIPLAS.Cells[VI_COMBINACOES04,VI_COMBINACOES03];
                                             STGR_TRIPLAS_Comb9.Cells[11,VI_LINHAS2] := STGR_TRIPLAS.Cells[VI_COMBINACOES06,VI_COMBINACOES05];
                                             IF  (STGR_TRIPLAS_Comb9.Cells[11,VI_LINHAS2] = STGR_TRIPLAS_Comb9.Cells[6,VI_LINHAS2]) OR (STGR_TRIPLAS_Comb9.Cells[11,VI_LINHAS2] = STGR_TRIPLAS_Comb9.Cells[7,VI_LINHAS2]) OR
                                                 (STGR_TRIPLAS_Comb9.Cells[11,VI_LINHAS2] = STGR_TRIPLAS_Comb9.Cells[8,VI_LINHAS2]) OR (STGR_TRIPLAS_Comb9.Cells[11,VI_LINHAS2] = STGR_TRIPLAS_Comb9.Cells[9,VI_LINHAS2]) OR
                                                 (STGR_TRIPLAS_Comb9.Cells[11,VI_LINHAS2] = STGR_TRIPLAS_Comb9.Cells[10,VI_LINHAS2])
                                             THEN
                                                  CONTINUE;
                                             IF  (VI_COMBINACOES05 = VI_COMBINACOES01) OR (VI_COMBINACOES05 = VI_COMBINACOES02) THEN
                                                  CONTINUE;
                                             FOR VI_COMBINACOES10 := 1 TO 5 DO
                                             BEGIN
                                                  IF (VI_COMBINACOES10 = VI_COMBINACOES01) OR (VI_COMBINACOES10 = VI_COMBINACOES02) OR (VI_COMBINACOES10 = VI_COMBINACOES03) OR (VI_COMBINACOES10 = VI_COMBINACOES05) THEN
                                                       CONTINUE;
                                                  STGR_TRIPLAS_Comb9.Cells[3,VI_LINHAS2] := STGR_TRIPLAS.Cells[1,VI_COMBINACOES10];
                                                  STGR_TRIPLAS_Comb9.Cells[4,VI_LINHAS2] := STGR_TRIPLAS.Cells[2,VI_COMBINACOES10];
                                                  STGR_TRIPLAS_Comb9.Cells[5,VI_LINHAS2] := STGR_TRIPLAS.Cells[3,VI_COMBINACOES10];

                                                  STGR_TRIPLAS_Comb9.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                                                            // ------------------------------------------------
                                                            // --  Ordena os dados DAS 9 primeiras células   --
                                                            // ------------------------------------------------
                                                            FOR VI_CONTAR :=1 TO 25 DO
                                                            BEGIN
                                                                 STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0] :=INTtoSTR(VI_CONTAR);
                                                                 STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1] :='F';
                                                            END; // FOR VI_CONTAR
                                                            // ----> MONTADO E VERIFICANDO TODOS OS 25 DÍGITOS
                                                            FOR VI_CONTAR :=3 TO 11 DO
                                                            BEGIN
                                                                 STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_TRIPLAS_Comb9.Cells[VI_CONTAR,VI_LINHAS2])) ,1]:='V';
                                                            END; // FOR VI_CONTAR1
                                                            VI_CNTCELULAS := 3;
                                                            FOR VI_CONTAR :=1 TO 25 DO
                                                            BEGIN
                                                              IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
                                                              BEGIN
                                                                  STGR_TRIPLAS_Comb9.Cells [VI_CNTCELULAS, VI_LINHAS2] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                                                                  VI_CNTCELULAS := VI_CNTCELULAS + 1;
                                                              END; // IF (STRGR_TODOS_NUMEROS
                                                            END; // FOR VI_CONTAR
                                                  VI_LINHAS2 := VI_LINHAS2+1;
                                             END; // FOR VI_COMBINACOES10
                                        END; // FOR VI_COMBINACOES06
                                   END; // FOR VI_COMBINACOES05
                              END; // FOR VI_COMBINACOES04
                         END; // FOR VI_COMBINACOES03
                    END; // FOR VI_COMBINACOES_INI03
                    END; // FOR VI_COMBINACOES_INI04
                   STGR_TRIPLAS_Comb9.RowCount := VI_LINHAS2;
               end; //  FOR VI_COMBINACOES02
          end; // FOR VI_COMBINACOES01
     END; // FOR VI_COMBINACOES_INI02
     END; // FOR VI_COMBINACOES_INI01
    STGR_TRIPLAS_Comb9.RowCount := VI_LINHAS2;
     STGR_TRIPLAS_Comb9.FixedRows := 1;

               // -------------------------------
               // --  Removendo os repetidos   --
               // -------------------------------
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_Comb9.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES02:= VI_COMBINACOES01+1 TO (STGR_TRIPLAS_Comb9.RowCount-1) DO
          BEGIN
                IF  (STGR_TRIPLAS_Comb9.Cells[3,VI_COMBINACOES01] = STGR_TRIPLAS_Comb9.Cells[3,VI_COMBINACOES02]) AND
                    (STGR_TRIPLAS_Comb9.Cells[4,VI_COMBINACOES01] = STGR_TRIPLAS_Comb9.Cells[4,VI_COMBINACOES02])
                    THEN
                BEGIN
                    IF  (STGR_TRIPLAS_Comb9.Cells[5,VI_COMBINACOES01] = STGR_TRIPLAS_Comb9.Cells[5,VI_COMBINACOES02]) AND
                        (STGR_TRIPLAS_Comb9.Cells[6,VI_COMBINACOES01] = STGR_TRIPLAS_Comb9.Cells[6,VI_COMBINACOES02]) AND
                        (STGR_TRIPLAS_Comb9.Cells[7,VI_COMBINACOES01] = STGR_TRIPLAS_Comb9.Cells[7,VI_COMBINACOES02]) AND
                        (STGR_TRIPLAS_Comb9.Cells[8,VI_COMBINACOES01] = STGR_TRIPLAS_Comb9.Cells[8,VI_COMBINACOES02]) AND
                        (STGR_TRIPLAS_Comb9.Cells[9,VI_COMBINACOES01] = STGR_TRIPLAS_Comb9.Cells[6,VI_COMBINACOES02]) AND
                        (STGR_TRIPLAS_Comb9.Cells[10,VI_COMBINACOES01] = STGR_TRIPLAS_Comb9.Cells[7,VI_COMBINACOES02]) AND
                        (STGR_TRIPLAS_Comb9.Cells[11,VI_COMBINACOES01] = STGR_TRIPLAS_Comb9.Cells[8,VI_COMBINACOES02])
                        THEN
                    BEGIN
                        STGR_TRIPLAS_Comb9.Cells [1,VI_COMBINACOES02] := 'F';
                    END; // if (STGR_TRIPLAS_Comb9.Cells[1,VI_CONTAR]
                END; // if (STGR_TRIPLAS_Comb9.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES02
     END; // FOR VI_COMBINACOES01
                    // -------------------------------
                    // --  Removendo os EXCLUIDOS DA COLUNA  --
                    // -------------------------------
          FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_Comb9.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_01.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_TRIPLAS_Comb9.Cells[3,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[4,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[5,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[6,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[7,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[8,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[9,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[10,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[11,VI_COMBINACOES01]) = STRtoINT(ED_EXC_01.Text))
                        THEN
                    BEGIN
                        STGR_TRIPLAS_Comb9.Cells [1,VI_COMBINACOES01] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES01
          FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_Comb9.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_02.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_TRIPLAS_Comb9.Cells[3,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[4,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[5,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[6,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[7,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[8,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[9,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[10,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[11,VI_COMBINACOES01]) = STRtoINT(ED_EXC_02.Text))
                        THEN
                    BEGIN
                        STGR_TRIPLAS_Comb9.Cells [1,VI_COMBINACOES01] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES01
          FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_Comb9.RowCount-1) DO
          BEGIN
               IF  NOT( STRtoINT(ED_EXC_03.Text) = 0 ) THEN
               BEGIN
                    IF  (STRtoINT(STGR_TRIPLAS_Comb9.Cells[3,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[4,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[5,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[6,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[7,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[8,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[9,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[10,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text)) OR
                        (STRtoINT(STGR_TRIPLAS_Comb9.Cells[11,VI_COMBINACOES01]) = STRtoINT(ED_EXC_03.Text))
                        THEN
                    BEGIN
                        STGR_TRIPLAS_Comb9.Cells [1,VI_COMBINACOES01] := 'F';
                    END; // if (STGR_LINHA_1_TODOS.Cells[1,VI_CONTAR]
               END; // IF NOT
          END; // FOR VI_COMBINACOES01
     VI_CONTAR := 0;
     FOR VI_COMBINACOES01:= 1 TO (STGR_TRIPLAS_Comb9.RowCount-1) DO
     BEGIN
          IF (STGR_TRIPLAS_Comb9.Cells [1,VI_COMBINACOES01] = 'V') THEN VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_TRIPLAS_Comb9.Caption := INTtoSTR(VI_CONTAR);
     LA_TRIPLAS_Comb9.Repaint;

     PGBR_GERARCOMB.Position := 0;
     PGBR_REMREPET.Position := 0;
     LA_TOTAL_100REPET.Caption := '0       ';
     LA_fQTD_FILTRADOS.Caption := '0       ';
     LA_QTD_COMB.Caption :=  'GERADOS:  0     ';
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_15td_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_15td_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_15td_DADOS_TEMP')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('SELECT FIRST 10 * FROM COMBINACOES_15 ORDER BY DADOS; ')  ;
            SELF.IBQ_COMBINACOES.Open;
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          SHOWMESSAGE('OK');
end;




procedure T_F_SIM_01_FILTRO_15td.BBT_GERARClick(Sender: TObject);

    PROCEDURE PR_ORDENAR_FILTRO_15 (VI_LINHAS9: INTEGER);
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
        // ----> MONTADO E VERIFICANDO TODOS OS 15 DÍGITOS
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
          VI_QTD_VERIFICAR:= 1;
          CASE (STGR_COMB15.RowCount) OF
               2..149:        VI_QTD_VERIFICAR:= STGR_COMB15.RowCount;
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
               1250..1389:      VI_QTD_VERIFICAR:= 1250;
               1390..1489:      VI_QTD_VERIFICAR:= 1390;
               1500..1599:      VI_QTD_VERIFICAR:= 1500;
               1600..1749:      VI_QTD_VERIFICAR:= 1600;
               1750..1999:      VI_QTD_VERIFICAR:= 1750;
               2000..2999:      VI_QTD_VERIFICAR:= 2000;
               3000..3999:      VI_QTD_VERIFICAR:= 3000;
               4000:        VI_QTD_VERIFICAR:= 4000;
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
    end; //  PROCEDURE ORDENAR_PRE_REMOCAO



    PROCEDURE PR_GRAVAR_DADOS (VC_BEGIN_END: STRING; OUT VI_LINHAS2:INTEGER; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_COMBINACOES : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN
                SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'INSERT INTO FILTRO_15td_DEFINICAO (TRIPLAS1, TRIPLAS2, TRIPLAS3, TRIPLAS4, TRIPLAS5, ';
            VC_QUERY  := VC_QUERY +' DUPLAS1, DUPLAS2, DUPLAS3, DUPLAS4, DUPLAS5, EXC_1, EXC_2, FIXOS_01, FIXOS_02, FIXOS_03, FIXOS_04, FIXOS_05, CONTADOR_C1, TOTAL_CONTADOR_C1, ';
            VC_QUERY  := VC_QUERY +' DATA_DEFINICAO, HORA_DEFINICAO) VALUES('+#39+  '-T1-'   + #39 +','+#39+ '-T2-'  + #39 +','+#39+ '-T3-'+ #39 +','+#39+ '-T4-' + #39 +','+#39+ '-T5-' + #39 +','+#39+ '-D1-' + #39 +','+#39+ '-D2-' + #39 +','+#39+ '-D3-' + #39 +','+#39+ '-D4-' + #39 +','+#39+ '-D5-';
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01.Text          + #39 +','+#39+ ED_EXC_02.Text          + #39 +','+#39+ ED_FIXOS_01.Text       + #39 +','+#39+ ED_FIXOS_02.Text       + #39 +','+#39+ ED_FIXOS_03.Text       + #39 +','+#39+ ED_FIXOS_04.Text       + #39 +','+#39+ ED_FIXOS_05.Text       + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[])+ #39 +','+#39+FORMATDATETIME('h:n:s',time())   +#39+');';  
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;                
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB15.RowCount-1;
        IF ((VI_LINHAS2/7998) = (VI_LINHAS2 DIV 7998))
            or ((VI_LINHAS2/7999) = (VI_LINHAS2 DIV 7999))
            or ((VI_LINHAS2/8000) = (VI_LINHAS2 DIV 8000))
            OR (VC_BEGIN_END = 'FIM') THEN
        BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMB15.Repaint;
//            Self.Repaint;
//            Self.WindowState := wsMinimized;
//            Self.WindowState :=  wsNormal;
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
                VC_QUERY  := 'INSERT INTO FILTRO_15td_DADOS_TEMP (DADOS) VALUES(' +#39+ VC_COMBINACOES + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_15td_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_COMBINACOES_C1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            VI_LINHAS2:=1;
            STGR_COMB15.RowCount := 2;
            IF ((VI_LINHAS2/7998) = (VI_LINHAS2 DIV 7998))
                or ((VI_LINHAS2/7999) = (VI_LINHAS2 DIV 7999))
                or ((VI_LINHAS2/8000) = (VI_LINHAS2 DIV 8000))
                OR (VC_BEGIN_END = 'FIM') THEN
            BEGIN
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_15td_100REPET01' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;                  
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_15td_DADOS_TEMP')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
             end;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS


VAR
     VI_LINHAS1, VI_LINHAS2, VI_CONTADOR, VI_CONTAR_A, VI_CONTAR_B, VI_CONTAR_C, VI_CONTAR_D, VI_COMB01, VI_COMB02, VI_COMB03, VI_COMB04, VI_COMB05, VI_COMB06: INTEGER;
     VSI_SOMA_PAR, VSI_SOMA_IMPAR : SMALLINT;
begin
     BBT_GERAR.Enabled := false;
     BBT_BLOCO_NOTAS.Enabled := false;
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     LA_gFIM_FILTRAR.Caption := '00/00/0000 - 00:00:00  ';
     PGBR_GERARCOMB.Position := 0;
     PGBR_REMREPET.Position := 0;
     LA_TOTAL_100REPET.Caption := '0       ';
     LA_QTD_COMB.Caption :=  'GERADOS:  0     ';
     LA_fQTD_FILTRADOS.Caption := '0       ';
     VI_LINHAS2 := 1;
     VI_LINHAS1 := VI_LINHAS2;
     PGBR_GERARCOMB.Position := 0 ;
     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_TRIPLAS_Comb9.RowCount-1));
     //====>> Aqui
     FOR VI_COMB01 := 1{427} TO trunc((STGR_TRIPLAS_Comb9.RowCount-1)/1) {427} DO
     BEGIN
          IF  (STGR_TRIPLAS_Comb9.Cells [1,VI_COMB01] = 'F') THEN
               CONTINUE;
          FOR VI_COMB02 := 1 TO trunc((STGR_DUPLAS_Comb6.RowCount-1)/1) {427} DO
          BEGIN
               IF  (STGR_DUPLAS_Comb6.Cells [1,VI_COMB02] = 'F') THEN
                    CONTINUE;
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_DUPLAS_Comb6.Cells[3,VI_COMB02];
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_DUPLAS_Comb6.Cells[4,VI_COMB02];
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_DUPLAS_Comb6.Cells[5,VI_COMB02];
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_DUPLAS_Comb6.Cells[6,VI_COMB02];
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_DUPLAS_Comb6.Cells[7,VI_COMB02];
                    STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_DUPLAS_Comb6.Cells[8,VI_COMB02];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_TRIPLAS_Comb9.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_TRIPLAS_Comb9.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_TRIPLAS_Comb9.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_TRIPLAS_Comb9.Cells[6,VI_COMB01];
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_TRIPLAS_Comb9.Cells[7,VI_COMB01];
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_TRIPLAS_Comb9.Cells[8,VI_COMB01];
                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_TRIPLAS_Comb9.Cells[9,VI_COMB01];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_TRIPLAS_Comb9.Cells[10,VI_COMB01];
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_TRIPLAS_Comb9.Cells[11,VI_COMB01];
                    // ******************
                    // ***  NÚMEROS FIXOS
                    if (STRtoINT(ED_fixoS_01.Text)=0) OR
                        (
                        (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text)) OR
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
                        (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_01.Text))
                        ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text)) OR
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
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_02.Text))
                             ) AND
                         (
                         (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text)) OR
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
                         (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_03.Text))
                         ) AND
                             (
                             (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text)) OR
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
                             (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_04.Text))
                             ) AND
                                  (
                                  (STRtoINT(STGR_COMB15.Cells[3,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) OR
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
                                  (STRtoINT(STGR_COMB15.Cells[17,VI_LINHAS2]) = STRtoINT(ED_fixoS_05.Text)) 
                                  )
                              THEN
                              BEGIN
                                   PR_ORDENAR_FILTRO_15 (VI_LINHAS2);
                                  // PR_ORDENAR_PRE_REMOCAO (VI_LINHAS2, VI_LINHAS1);
                                   VI_LINHAS2 := VI_LINHAS2 + 1;
                                   VI_LINHAS1 := VI_LINHAS1+1 ;
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMB01, TRUNC(STGR_TRIPLAS_Comb9.RowCount-1));
               END; // IF
          END; // FOR VI_COMB02
          IF (VI_COMB01 MOD 10)=0 THEN
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               PGBR_GERARCOMB.Position :=  TRUNC(VI_COMB01/(STGR_TRIPLAS_Comb9.RowCount-1)*100);
               STGR_COMB15.RowCount := VI_LINHAS2;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               STGR_COMB15.Repaint;
               SLEEP(1);
          END;
          IF (VI_COMB01 MOD 200)=0 THEN
          BEGIN
               STGR_COMB15.RowCount := VI_LINHAS2;
               self.WindowState := wsMinimized;
               self.WindowState := wsNormal;
               sleep (5);
               STGR_COMB15.Repaint;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
               LA_QTD_COMB.Repaint;
               Self.Repaint;
               sleep (90);
          END;
     END; // FOR VI_COMB01
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS1-1);
     PGBR_GERARCOMB.Position := 100;
     STGR_COMB15.RowCount := VI_LINHAS2;
     PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMB01, TRUNC(STGR_TRIPLAS_Comb9.RowCount-1));
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
 //    SELF.PR_SIMULAR_RECUPERANDODADOS();
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_15td_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTADOR := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_15td_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTADOR)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     TRY
          STGR_COMB15.FixedRows := 1;
     EXCEPT
          //
     END;
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     LA_rTOTAL_COMB.Caption := INTtoSTR((STGR_TRIPLAS_Comb9.RowCount-1)*3003*5);
     LA_rQTD_COMB.Caption := LA_QTD_COMB.Caption;
     LA_rTOTAL_100REPET.Caption := INTtoSTR(VI_CONTADOR);
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_15td_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          PA_REMOVEUREPET.Left := 400;
     PA_REMOVEUREPET.Repaint;
     BBT_GERAR.Enabled := TRUE;     
end;



PROCEDURE T_F_SIM_01_FILTRO_15td.PR_SIMULAR_RECUPERANDODADOS();
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_15td_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DADOS FROM FILTRO_15td_DADOS GROUP BY DADOS ORDER BY DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       STGR_COMB15.RowCount := 0;
       SELF.IBQ_COMBINACOES.First;
       self.PR_LIMPAR_GRID15 ();
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
       LA_TOTAL_100REPET.Caption := INTtoSTR(STGR_COMB15.RowCount-1);
       STGR_COMB15.REPAINT;
       LA_TOTAL_100REPET.Repaint;
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();






procedure T_F_SIM_01_FILTRO_15td.BBT_FILTRARClick(Sender: TObject);
VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_LINHAS2: SMALLINT;
begin

     PA_REMOVEUREPET.Left := 400;
end;



procedure T_F_SIM_01_FILTRO_15td.Button1Click(Sender: TObject);
VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_LINHAS2: SMALLINT;
begin

     PA_REMOVEUREPET.Left := 400;
end;



procedure T_F_SIM_01_FILTRO_15td.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 9999;
     SELF.Width := 1220;  
end;



procedure T_F_SIM_01_FILTRO_15td.BBT_ENCERRARClick(Sender: TObject);
VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR, VI_AN_COMB1 : integer;
     VI_LINHAS2: SMALLINT;
     VC_COMBINACOES, VC_QUERY : string;
begin
   {  _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount := 2;
     VI_LINHAS2 := 1;
          FOR VI_CONTAR := 1 TO 15 DO
          BEGIN
               _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [VI_CONTAR,0] := '-'+INTtoSTR(VI_CONTAR)+'-';
          END;
          FOR VI_CONTAR := 16 TO 27 DO
          BEGIN
               _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [VI_CONTAR,0] := '-';
          END;
     FOR VI_COMBINACOES1 :=0 TO (STGR_TODOS_15.RowCount ) DO
     BEGIN
        IF TRIM(STGR_TODOS_15.Cells[1,VI_COMBINACOES1]) = 'V'  THEN
        BEGIN
            FOR VI_CONTAR := 1 TO 15 DO
            BEGIN
               _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [VI_CONTAR,VI_LINHAS2] := STGR_TODOS_15.Cells [VI_CONTAR+1,VI_COMBINACOES1];
               _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [16,VI_LINHAS2] := '---';
               IF VI_CONTAR <11 THEN
                    _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Cells [VI_CONTAR+16,VI_LINHAS2] := STGR_10_NS.Cells [VI_CONTAR+1,VI_COMBINACOES1];
            END; //FOR
           VI_LINHAS2 := VI_LINHAS2 +1 ;
        END; //IF
     END; // FOR
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.RowCount := VI_LINHAS2;
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.FixedRows := 1; }
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Repaint;
     _FRM_SIM_LOTOFACIL01.STGR_COMBINACOES_15.Repaint;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          SHOWMESSAGE('FIM - OK');
     {
BEGIN
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM A_RESULTADO_15_DADOS')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     FOR VI_COMBINACOES1 :=1 TO (STGR_TODOS_15.RowCount-1) DO
     BEGIN
          IF TRIM(STGR_TODOS_15.Cells[1,VI_CONTAR])='F' THEN
               CONTINUE;
          VC_COMBINACOES := '';
          FOR VI_AN_COMB1 := 2 TO 16 DO
          BEGIN
               VC_COMBINACOES := VC_COMBINACOES + STGR_TODOS_15.Cells [VI_AN_COMB1,VI_COMBINACOES1]+ ' ';
          END; // FOR VI_AN_COMB1
          VC_QUERY  := 'INSERT INTO A_RESULTADO_15_DADOS (DADOS, NS_A1, NS_A2, NS_A3, NS_B1, NS_B2, NS_B3, NS_C1, NS_C2, NS_D1, NS_D2) VALUES('
                    +#39+ VC_COMBINACOES
                     + #39 +',' +#39+ STGR_10_NS.Cells[2,VI_COMBINACOES1]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[3,VI_COMBINACOES1]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[4,VI_COMBINACOES1]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[5,VI_COMBINACOES1]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[6,VI_COMBINACOES1]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[7,VI_COMBINACOES1]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[8,VI_COMBINACOES1]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[9,VI_COMBINACOES1]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[10,VI_COMBINACOES1]+''
                     + #39 +',' +#39+ STGR_10_NS.Cells[11,VI_COMBINACOES1]+''
                     + #39 +');';
          SELF.IBQ_COMBINACOES.SQL.Clear;
          SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
          SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.IBQ_COMBINACOES.SQL.Clear;
          SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
          SELF.IBQ_COMBINACOES.ExecSQL;
     END;// FOR VI_COMBINACOES1
     TRY
          SELF.IBTransaction1.Commit;
     EXCEPT
          //
     END;
     showmessage('Resultado Gravado.');
     }
     self.Close;

end;


procedure T_F_SIM_01_FILTRO_15td.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, VI_CONTAR, VI_QTD : INTEGER;
    VC_COMBINACOES : string;
begin

    winExec('Notepad.exe C:\CXLOTOFACIL\FILTRO_NS01.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado
   showmessage('BLOCO DE NOTAS GERADO');
end;

procedure T_F_SIM_01_FILTRO_15td.BT_NOVA_SIMULACAOClick(Sender: TObject);
VAR
     VsI_CONTAR : SMALLINT;
begin
     BBT_ENCERRAR.Enabled := TRUE;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 4500;
     FOR VsI_CONTAR := 1 TO 8 DO
     BEGIN
          STGR_BASE_A.Cells[VsI_CONTAR,0] := '0';
     END;
     FOR VsI_CONTAR := 1 TO 7 DO
     BEGIN
          STGR_BASE_B.Cells[VsI_CONTAR,0] := '0';
     END;
     FOR VsI_CONTAR := 1 TO 5 DO
     BEGIN
          STGR_BASE_C.Cells[VsI_CONTAR,0] := '0';
          STGR_BASE_D.Cells[VsI_CONTAR,0] := '0';
     END;
     STGR_TRIPLAS_Comb9.RowCount := 2;
     STGR_DUPLAS_Comb6.RowCount := 2;
     ED_EXC_01.Text := '00';
     ED_EXC_02.Text := '00';
     ED_FIXOS_01.Text := '00';
     ED_FIXOS_02.Text := '00';
     ED_FIXOS_03.Text := '00';
     ED_FIXOS_04.Text := '00';
     ED_FIXOS_05.Text := '00';
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     PA_PREENCHIMENTO.Repaint;
     PA_GABARITO.Visible := false;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     STGR_COMB15.Visible := TRUE;
     STGR_COMB15.Enabled := TRUE;
     BT_REAJUSTAR.Enabled :=  TRUE;
     PA_INICIAL.Enabled := false;
     SELF.Repaint;
     PA_INICIAL.Left := 3198;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;
     SCBX_GABARITO.Top := 190;
     PA_PREENCHIMENTO.Top := 40;
end;



procedure T_F_SIM_01_FILTRO_15td.BT_REAJUSTARClick(Sender: TObject);
begin
     PA_PREENCHIMENTO.Visible := TRUE;
     PA_PREENCHIMENTO.Enabled := TRUE;
     PA_GABARITO.Visible := false;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     STGR_COMB15.Visible := TRUE;
     STGR_COMB15.Enabled := TRUE;
     BBT_RECOMECAR.Enabled := false;
     BBT_PREPARAR.Enabled := TRUE;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 3198;
     SCBX_GABARITO.Visible := TRUE;
     SCBX_GABARITO.Enabled := TRUE;     
end;



procedure T_F_SIM_01_FILTRO_15td.BBT_CARREGARClick(Sender: TObject);
VAR
     VI_LINHAS2, VI_CONTAR : INTEGER;
begin
     PA_RESULTADO.Visible := TRUE;
     BBT_RECOMECAR.Click;
     PA_PREENCHIMENTO.Visible := false;
     PA_PREENCHIMENTO.Enabled := false;
     PA_GABARITO.Visible := false;
     PA_EXECUTAR_FILTRO.Enabled := TRUE;
     BBT_PREPARAR.Enabled := false;
     BBT_GERAR.Enabled := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     PGBR_GERARCOMB0.Position := 100;
     PGBR_GERARCOMB.Position := 100;
     LA_TOTAL_COMB.Visible := false;
     LA_GERAR_COMB.Visible := false;
     LA_QTD_COMB.Visible := false;
     BBT_BLOCO_NOTAS.Enabled := false;
     IBQ_COMBINACOES.Close;
     IBQ_COMBINACOES.SQL.Clear;
     IBQ_COMBINACOES.SQL.Add('SELECT * FROM A_CONFIG1_');
     IBQ_COMBINACOES.Open;
     IF (IBQ_COMBINACOES.FieldByName('NOME_SIMULACAO_ATIVA').AsString = 'SIMULACAO_1') THEN
     BEGIN
     END ELSE
     IF (IBQ_COMBINACOES.FieldByName('NOME_SIMULACAO_ATIVA').AsString = 'SIMULACAO_2') THEN
     BEGIN
          IBQ_COMBINACOES.Close;
          IBQ_COMBINACOES.SQL.Clear;
          IBQ_COMBINACOES.SQL.Add('SELECT * FROM SIMULACAO_2_DEFINICAO');
          IBQ_COMBINACOES.Open;
     END ELSE
     IF (IBQ_COMBINACOES.FieldByName('NOME_SIMULACAO_ATIVA').AsString = 'SIMULACAO_3') THEN
     BEGIN
          IBQ_COMBINACOES.Close;
          IBQ_COMBINACOES.SQL.Clear;
          IBQ_COMBINACOES.SQL.Add('SELECT * FROM SIMULACAO_3_DEFINICAO');
          IBQ_COMBINACOES.Open;
     END ELSE
     IF (IBQ_COMBINACOES.FieldByName('NOME_SIMULACAO_ATIVA').AsString = 'NENHUMA') THEN
     BEGIN
          SHOWMESSAGE('CARREGUE A SIMULAÇÃO PRIMEIRO');
          EXIT;
     END;
     // *****************************************************
     // ** Restaurando/lendo os dados do Impar A / LINHA A **
     // *****************************************************
     STGR_BASE_A.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,1,2);
     STGR_BASE_A.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,4,2);
     STGR_BASE_A.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,7,2);
     STGR_BASE_A.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,10,2);
     STGR_BASE_A.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,13,2);
     STGR_BASE_A.Cells[6,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,16,2);
     STGR_BASE_A.Cells[7,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,19,2);
     STGR_BASE_A.Cells[8,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_1').AsString,22,2);
     // ****************************************************
     // ** Restaurando/lendo os dados do Par A / LINHA B  **
     // ****************************************************
     STGR_BASE_B.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,1,2);
     STGR_BASE_B.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,4,2);
     STGR_BASE_B.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,7,2);
     STGR_BASE_B.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,10,2);
     STGR_BASE_B.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,13,2);
     STGR_BASE_B.Cells[6,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,16,2);
     STGR_BASE_B.Cells[7,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_2').AsString,19,2);
     // ******************************************************
     // ** Restaurando/lendo os dados do Impar B / LINHA C  **
     // ******************************************************
     STGR_BASE_C.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,1,2);
     STGR_BASE_C.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,4,2);
     STGR_BASE_C.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,7,2);
     STGR_BASE_C.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,10,2);
     STGR_BASE_C.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_3').AsString,13,2);
     // ****************************************************
     // ** Restaurando/lendo os dados do Par B / LINHA D  **
     // ****************************************************
     STGR_BASE_D.Cells[1,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,1,2);
     STGR_BASE_D.Cells[2,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,4,2);
     STGR_BASE_D.Cells[3,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,7,2);
     STGR_BASE_D.Cells[4,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,10,2);
     STGR_BASE_D.Cells[5,0] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('LINHA_4').AsString,13,2);
     IBQ_COMBINACOES.Close;
     IBQ_COMBINACOES.SQL.Clear;
     IBQ_COMBINACOES.SQL.Add('SELECT * FROM A_RESULTADO_15_DADOS');
     IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     VI_LINHAS2 := 1;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_15td_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          TRY
               SELF.IBTransaction1.Commit;
          EXCEPT
               //
          END;
     STGR_COMB15.RowCount := 2;
     VI_LINHAS2 := 0;
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
          STGR_COMB15.Cells[VI_CONTAR+2,0] := INTtoSTR(VI_CONTAR);
     END; // FOR
     SELF.PR_SIMULAR_RECUPERANDODADOS();
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          SHOWMESSAGE('OK');         
end;



procedure T_F_SIM_01_FILTRO_15td.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_15td_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;



PROCEDURE T_F_SIM_01_FILTRO_15td.PR_LIMPAR_GRID15 ();
BEGIN
    STGR_COMB15.CleanupInstance;
    STGR_COMB15.Free;
    STGR_COMB15:= TStringGrid.Create(SELF);
    STGR_COMB15.Parent:= PA_RESULTADO;

    STGR_COMB15.Align := alClient ;;
    STGR_COMB15.RowCount := 2;
    STGR_COMB15.ColCount  := 18 ;
    STGR_COMB15.DefaultColWidth := 43 ;
    STGR_COMB15.ColWidths[0] := 62;
    STGR_COMB15.DefaultRowHeight := 21 ;
    STGR_COMB15.FixedCols := 3  ;
    STGR_COMB15.FixedRows := 0  ;
    STGR_COMB15.Color := 14737632;
    STGR_COMB15.FixedColor := clMedGray;
    STGR_COMB15.Font.Name := 'Tahoma'
END;


procedure T_F_SIM_01_FILTRO_15td.Set_SET_FLAG_AUTOEXECUTAR(const Value: STRING);
begin
  F_SET_FLAG_AUTOEXECUTAR := Value;
end;

end.







