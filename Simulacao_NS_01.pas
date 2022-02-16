unit Simulacao_NS_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, STRUTILS,
  Dialogs, DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Grids;

type
  T_F_NS_01 = class(TForm)
    SCBX_GABARITO: TScrollBox;
    Label37: TLabel;
    LA_QTD_10_NS: TLabel;
    Label35: TLabel;
    STGR_TODOS_15: TStringGrid;
    STGR_10_NS: TStringGrid;
    PA_PREENCHIMENTO: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    STGR_BASE_A: TStringGrid;
    STGR_BASE_B: TStringGrid;
    STGR_BASE_C: TStringGrid;
    STGR_BASE_D: TStringGrid;
    PA_5S: TPanel;
    Label72: TLabel;
    ED_SOMAS_5S_INI: TEdit;
    TRB_5S_INI: TTrackBar;
    ED_SOMAS_5S_FINAL: TEdit;
    TRB_5S_FINAL: TTrackBar;
    PA_DIF_IMP_PAR: TPanel;
    Label25: TLabel;
    ED_DIF_IMP_PAR_INI: TEdit;
    TRB_DIF_IMP_PAR_INI: TTrackBar;
    ED_DIF_IMP_PAR_FINAL: TEdit;
    TRB_DIF_IMP_PAR_FINAL: TTrackBar;
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
    Panel4: TPanel;
    STGR_BASE_5: TStringGrid;
    PGBR_FILTRARCOMB: TProgressBar;
    LA_QTD_FILTRADOS: TLabel;
    Label88: TLabel;
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
    procedure TRB_5S_INIChange(Sender: TObject);
    procedure TRB_5S_FINALChange(Sender: TObject);
    procedure TRB_DIF_IMP_PAR_INIChange(Sender: TObject);
    procedure TRB_DIF_IMP_PAR_FINALChange(Sender: TObject);
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
  _F_NS_01: T_F_NS_01;

implementation

uses Unit1;

{$R *.dfm}



procedure T_F_NS_01.FormCreate(Sender: TObject);
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
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_NS_01_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
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
        PA_INICIAL.Left := 520;;
end;



procedure T_F_NS_01.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_NS_01.FormClose(Sender: TObject; var Action: TCloseAction);
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





procedure T_F_NS_01.TRB_5S_INIChange(Sender: TObject);
begin
     IF TRB_5S_INI.Position = 1 THEN
          ED_SOMAS_5S_INI.Text := '57';
     IF TRB_5S_INI.Position = 2 THEN
          ED_SOMAS_5S_INI.Text := '59';
     IF TRB_5S_INI.Position = 3 THEN
          ED_SOMAS_5S_INI.Text := '61';
     IF TRB_5S_INI.Position = 4 THEN
          ED_SOMAS_5S_INI.Text := '63';
     IF TRB_5S_INI.Position = 5 THEN
          ED_SOMAS_5S_INI.Text := '65';
     IF TRB_5S_INI.Position = 6 THEN
          ED_SOMAS_5S_INI.Text := '67';
     IF TRB_5S_INI.Position = 7 THEN
          ED_SOMAS_5S_INI.Text := '69';
     IF TRB_5S_INI.Position = 8 THEN
          ED_SOMAS_5S_INI.Text := '71';
     IF TRB_5S_INI.Position = 9 THEN
          ED_SOMAS_5S_INI.Text := '73';
end;



procedure T_F_NS_01.TRB_5S_FINALChange(Sender: TObject);
begin
     IF TRB_5S_FINAL.Position = 1 THEN
          ED_SOMAS_5S_FINAL.Text := '57';
     IF TRB_5S_FINAL.Position = 2 THEN
          ED_SOMAS_5S_FINAL.Text := '59';
     IF TRB_5S_FINAL.Position = 3 THEN
          ED_SOMAS_5S_FINAL.Text := '61';
     IF TRB_5S_FINAL.Position = 4 THEN
          ED_SOMAS_5S_FINAL.Text := '63';
     IF TRB_5S_FINAL.Position = 5 THEN
          ED_SOMAS_5S_FINAL.Text := '65';
     IF TRB_5S_FINAL.Position = 6 THEN
          ED_SOMAS_5S_FINAL.Text := '67';
     IF TRB_5S_FINAL.Position = 7 THEN
          ED_SOMAS_5S_FINAL.Text := '69';
     IF TRB_5S_FINAL.Position = 8 THEN
          ED_SOMAS_5S_FINAL.Text := '71';
     IF TRB_5S_FINAL.Position = 9 THEN
          ED_SOMAS_5S_FINAL.Text := '73';
end;



procedure T_F_NS_01.TRB_DIF_IMP_PAR_INIChange(Sender: TObject);
begin
     IF TRB_DIF_IMP_PAR_INI.Position = 1 THEN
          ED_DIF_IMP_PAR_INI.Text := '1';
     IF TRB_DIF_IMP_PAR_INI.Position = 2 THEN
          ED_DIF_IMP_PAR_INI.Text := '2';
     IF TRB_DIF_IMP_PAR_INI.Position = 3 THEN
          ED_DIF_IMP_PAR_INI.Text := '3';
     IF TRB_DIF_IMP_PAR_INI.Position = 4 THEN
          ED_DIF_IMP_PAR_INI.Text := '4';
     IF TRB_DIF_IMP_PAR_INI.Position = 5 THEN
          ED_DIF_IMP_PAR_INI.Text := '5';
     IF TRB_DIF_IMP_PAR_INI.Position = 6 THEN
          ED_DIF_IMP_PAR_INI.Text := '6';
     IF TRB_DIF_IMP_PAR_INI.Position = 7 THEN
          ED_DIF_IMP_PAR_INI.Text := '7';
     IF TRB_DIF_IMP_PAR_INI.Position = 8 THEN
          ED_DIF_IMP_PAR_INI.Text := '8';
     IF TRB_DIF_IMP_PAR_INI.Position = 9 THEN
          ED_DIF_IMP_PAR_INI.Text := '9';
end;



procedure T_F_NS_01.TRB_DIF_IMP_PAR_FINALChange(Sender: TObject);
begin
     IF TRB_DIF_IMP_PAR_FINAL.Position = 1 THEN
          ED_DIF_IMP_PAR_FINAL.Text := '1';
     IF TRB_DIF_IMP_PAR_FINAL.Position = 2 THEN
          ED_DIF_IMP_PAR_FINAL.Text := '2';
     IF TRB_DIF_IMP_PAR_FINAL.Position = 3 THEN
          ED_DIF_IMP_PAR_FINAL.Text := '3';
     IF TRB_DIF_IMP_PAR_FINAL.Position = 4 THEN
          ED_DIF_IMP_PAR_FINAL.Text := '4';
     IF TRB_DIF_IMP_PAR_FINAL.Position = 5 THEN
          ED_DIF_IMP_PAR_FINAL.Text := '5';
     IF TRB_DIF_IMP_PAR_FINAL.Position = 6 THEN
          ED_DIF_IMP_PAR_FINAL.Text := '6';
     IF TRB_DIF_IMP_PAR_FINAL.Position = 7 THEN
          ED_DIF_IMP_PAR_FINAL.Text := '7';
     IF TRB_DIF_IMP_PAR_FINAL.Position = 8 THEN
          ED_DIF_IMP_PAR_FINAL.Text := '8';
     IF TRB_DIF_IMP_PAR_FINAL.Position = 9 THEN
          ED_DIF_IMP_PAR_FINAL.Text := '9';
end;



procedure T_F_NS_01.BBT_PREPARARClick(Sender: TObject);
VAR
     VI_LINHAS2, VI_CONTAR: INTEGER;
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
     IBQ_COMBINACOES.SQL.Add('SELECT * FROM A_RESULTADO_15_DADOS');
     IBQ_COMBINACOES.Open;
     IBQ_COMBINACOES.First;
     VI_LINHAS2 := 1;
     WHILE NOT(IBQ_COMBINACOES.Eof) DO
     BEGIN
          // ****************************************************
          // ** RECUPERA OS 15 NÚMEROS
          STGR_TODOS_15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
          STGR_TODOS_15.Cells[1,VI_LINHAS2] := 'F';
          STGR_TODOS_15.Cells[2,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
          STGR_TODOS_15.Cells[3,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
          STGR_TODOS_15.Cells[4,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
          STGR_TODOS_15.Cells[5,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
          STGR_TODOS_15.Cells[6,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
          STGR_TODOS_15.Cells[7,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
          STGR_TODOS_15.Cells[8,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
          STGR_TODOS_15.Cells[9,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
          STGR_TODOS_15.Cells[10,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
          STGR_TODOS_15.Cells[11,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
          STGR_TODOS_15.Cells[12,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
          STGR_TODOS_15.Cells[13,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
          STGR_TODOS_15.Cells[14,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
          STGR_TODOS_15.Cells[15,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
          STGR_TODOS_15.Cells[16,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
          STGR_TODOS_15.Cells[17,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,46,2);
          // ****************************************************
          // ** RECUPERA OS 10 NÃO SORTEADOS
          STGR_10_NS.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
          STGR_10_NS.Cells[2,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_A1').AsString;
          STGR_10_NS.Cells[3,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_A2').AsString;
          STGR_10_NS.Cells[4,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_A3').AsString;
          STGR_10_NS.Cells[5,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_B1').AsString;
          STGR_10_NS.Cells[6,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_B2').AsString;
          STGR_10_NS.Cells[7,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_B3').AsString;
          STGR_10_NS.Cells[8,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_C1').AsString;
          STGR_10_NS.Cells[9,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_C2').AsString;
          STGR_10_NS.Cells[10,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_D1').AsString;
          STGR_10_NS.Cells[11,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_D2').AsString;
          // ****************************************************
          // ** FLAG DOS EXCLUIDOS OU NÃO
          STGR_10_NS.Cells[1,VI_LINHAS2] := 'V';
          IF (STRtoINT(STGR_10_NS.Cells[2,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR (STRtoINT(STGR_10_NS.Cells[3,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text))
               OR (STRtoINT(STGR_10_NS.Cells[4,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR (STRtoINT(STGR_10_NS.Cells[5,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text))
               OR (STRtoINT(STGR_10_NS.Cells[6,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR (STRtoINT(STGR_10_NS.Cells[7,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text))
               OR (STRtoINT(STGR_10_NS.Cells[8,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR (STRtoINT(STGR_10_NS.Cells[9,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text))
               OR (STRtoINT(STGR_10_NS.Cells[10,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR (STRtoINT(STGR_10_NS.Cells[11,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text))
          THEN
               STGR_10_NS.Cells[1,VI_LINHAS2] := 'F';
          IF (STRtoINT(STGR_10_NS.Cells[2,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR (STRtoINT(STGR_10_NS.Cells[3,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text))
               OR (STRtoINT(STGR_10_NS.Cells[4,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR (STRtoINT(STGR_10_NS.Cells[5,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text))
               OR (STRtoINT(STGR_10_NS.Cells[6,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR (STRtoINT(STGR_10_NS.Cells[7,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text))
               OR (STRtoINT(STGR_10_NS.Cells[8,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR (STRtoINT(STGR_10_NS.Cells[9,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text))
               OR (STRtoINT(STGR_10_NS.Cells[10,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR (STRtoINT(STGR_10_NS.Cells[11,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text))
          THEN
               STGR_10_NS.Cells[1,VI_LINHAS2] := 'F';
          VI_LINHAS2 := VI_LINHAS2 + 1;
          IBQ_COMBINACOES.Next;
     END; // WHILE
     STGR_TODOS_15.RowCount := VI_LINHAS2;
     STGR_10_NS.RowCount := VI_LINHAS2;
     STGR_COMB15.RowCount := 2;
     VI_LINHAS2 := 0;
     FOR VI_CONTAR := 1 TO STGR_10_NS.RowCount-1 DO
     BEGIN
          IF (STGR_10_NS.Cells[1,VI_CONTAR] = 'V') THEN VI_LINHAS2:=VI_LINHAS2+1;
     END ; // FOR
     LA_QTD_10_NS.Caption := INTtoSTR(VI_LINHAS2);
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
          STGR_COMB15.Cells[VI_CONTAR+2,0] := INTtoSTR(VI_CONTAR);
     END; // FOR
     FOR VI_CONTAR := 1 TO 5 DO
     BEGIN
          STGR_BASE_5.Cells[VI_CONTAR,0] := INTtoSTR(VI_CONTAR);
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
        // ***************************
        // **  Verificando números inicias e finais **
        // ***************************
    IF (STRtoINT(ED_SOMAS_5S_INI.Text) > STRtoINT(ED_SOMAS_5S_FINAL.Text ) ) THEN
    BEGIN
            SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR OU IGUAL AO FINAL.');
            TRB_5S_INI.SetFocus;
            EXIT;
    END; // IF
    IF (STRtoINT(ED_DIF_IMP_PAR_INI.Text) > STRtoINT(ED_DIF_IMP_PAR_FINAL.Text ) ) THEN
    BEGIN
            SHOWMESSAGE ('O NÚMERO INICIAL TEM DE SER MENOR OU IGUAL AO FINAL.');
            TRB_DIF_IMP_PAR_INI.SetFocus;
            EXIT;
    END; // IF

     PGBR_GERARCOMB.Position := 0;
     PGBR_REMREPET.Position := 0;
     LA_TOTAL_100REPET.Caption := '0       ';
     PGBR_FILTRARCOMB.Position := 0;
     LA_QTD_FILTRADOS.Caption := '0       ';
     LA_fQTD_FILTRADOS.Caption := '0       ';
     LA_QTD_COMB.Caption :=  'GERADOS:  0     ';
     PGBR_FILTRARCOMB.Position := 0;
     Self.WindowState := wsMinimized;
     Self.WindowState :=  wsNormal;
     SELF.Repaint;
            SELF.IBQ_COMBINACOES.Close;
            SELF.IBQ_COMBINACOES.Open;
            IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_NS_01_DEFINICAO')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_NS_01_DADOS')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_NS_01_DADOS_TEMP')  ;
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




procedure T_F_NS_01.BBT_GERARClick(Sender: TObject);

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
            VC_QUERY  := 'INSERT INTO FILTRO_NS_01_DEFINICAO ( SOMAS_5S_INI, SOMAS_5S_FINAL, DIF_IMP_PAR_INI, ';
            VC_QUERY  := VC_QUERY +' DIF_IMP_PAR_FINAL, EXC_1, EXC_2, FIXOS_01, FIXOS_02, FIXOS_03, FIXOS_04, FIXOS_05, CONTADOR_C1, TOTAL_CONTADOR_C1, ';
            VC_QUERY  := VC_QUERY +' DATA_DEFINICAO, HORA_DEFINICAO) VALUES('+#39+  ED_SOMAS_5S_INI.Text    + #39 +','+#39+ ED_SOMAS_5S_FINAL.Text  + #39 +','+#39+ ED_DIF_IMP_PAR_INI.Text+ #39 +','+#39+ ED_DIF_IMP_PAR_FINAL.Text ;
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ ED_EXC_01.Text          + #39 +','+#39+ ED_EXC_02.Text          + #39 +','+#39+ ED_FIXOS_01.Text       + #39 +','+#39+ ED_FIXOS_02.Text       + #39 +','+#39+ ED_FIXOS_03.Text       + #39 +','+#39+ ED_FIXOS_04.Text       + #39 +','+#39+ ED_FIXOS_05.Text       + #39 +','+#39+ INTtoSTR(VI_COMBINACOES_C1)       + #39 +','+#39+ INTtoSTR(VI_TOTCOMBINACOES_C1);
            VC_QUERY  := VC_QUERY + #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[])+ #39 +','+#39+FORMATDATETIME('h:n:s',time())   +#39+');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;                
        END; // IF (VC_BEGIN_END = 'SIM')
        //VI_TOTALGERADO := STGR_COMB15.RowCount-1;
        IF ((VI_LINHAS2/8998) = (VI_LINHAS2 DIV 8998))
            or ((VI_LINHAS2/8999) = (VI_LINHAS2 DIV 8999))
            or ((VI_LINHAS2/9000) = (VI_LINHAS2 DIV 9000))
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
                VC_QUERY  := 'INSERT INTO FILTRO_NS_01_DADOS_TEMP (DADOS) VALUES(' +#39+ VC_COMBINACOES + #39 +');';
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
            END;
            IF ((VI_LINHAS2/8998) = (VI_LINHAS2 DIV 8998))
                or ((VI_LINHAS2/8999) = (VI_LINHAS2 DIV 8999))
                or ((VI_LINHAS2/9000) = (VI_LINHAS2 DIV 9000))
                OR (VC_BEGIN_END = 'FIM') THEN
            BEGIN
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_NS_01_100REPET01' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_NS_01_DADOS_TEMP')  ;
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
     LA_QTD_FILTRADOS.Caption := '0       ';
     LA_fQTD_FILTRADOS.Caption := '0       ';
     VI_LINHAS2 := 1;
     PGBR_GERARCOMB.Position := 0 ;
     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS2, 1, TRUNC(STGR_TODOS_15.RowCount-1));
     //====>> Aqui
     FOR VI_COMB01 := 1{ 427} TO trunc((STGR_TODOS_15.RowCount-1)/1) {427} DO
     BEGIN
          VSI_SOMA_IMPAR :=  STRtoINT(STGR_10_NS.Cells[2,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[3,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[4,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[8,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[9,VI_COMB01]);
          VSI_SOMA_PAR := STRtoINT(STGR_10_NS.Cells[5,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[6,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[7,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[10,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[11,VI_COMB01]);
          IF (VSI_SOMA_IMPAR - VSI_SOMA_PAR) < STRtoINT(ED_DIF_IMP_PAR_INI.Text)
          THEN
               CONTINUE;
          IF (VSI_SOMA_IMPAR - VSI_SOMA_PAR) > STRtoINT(ED_DIF_IMP_PAR_FINAL.Text)
          THEN
               CONTINUE;
          IF (STGR_10_NS.Cells[1,VI_COMB01] = 'F')
          THEN
               CONTINUE;
          VI_LINHAS1 := 1;
          FOR VI_COMB02 := 2 TO 12 DO
          BEGIN
               FOR VI_COMB03 := VI_COMB02+1 TO 13 DO
               BEGIN
                    FOR VI_COMB04 := VI_COMB03+1 TO 14 DO
                    BEGIN
                         FOR VI_COMB05:= VI_COMB04+1 TO 15 DO
                         BEGIN
                              FOR VI_COMB06:= VI_COMB05+1 TO 16 DO
                              BEGIN
                                   STGR_BASE_5.Cells[0,VI_LINHAS1] := INTtoSTR(VI_LINHAS1);
                                   STGR_BASE_5.Cells[1,VI_LINHAS1] := STGR_TODOS_15.Cells[VI_COMB02,VI_COMB01];
                                   STGR_BASE_5.Cells[2,VI_LINHAS1] := STGR_TODOS_15.Cells[VI_COMB03,VI_COMB01];
                                   STGR_BASE_5.Cells[3,VI_LINHAS1] := STGR_TODOS_15.Cells[VI_COMB04,VI_COMB01];
                                   STGR_BASE_5.Cells[4,VI_LINHAS1] := STGR_TODOS_15.Cells[VI_COMB05,VI_COMB01];
                                   STGR_BASE_5.Cells[5,VI_LINHAS1] := STGR_TODOS_15.Cells[VI_COMB06,VI_COMB01];
                                   VI_LINHAS1 := VI_LINHAS1 +1;
                              END;  // FOR
                         END; // FOR
                    END; // FOR VI_COMB04
               END; // FOR VI_COMB03
          END; // FOR VI_COMB02
               IF (VI_COMB01 MOD 5)=0 THEN
                         STGR_BASE_5.RowCount := VI_LINHAS1;
          FOR VI_COMB02 := 1 TO VI_LINHAS1-1 DO
          BEGIN
               VI_CONTAR_A :=0;
               VI_CONTAR_B :=0;
               VI_CONTAR_C :=0;
               VI_CONTAR_D :=0;
               FOR VI_CONTADOR := 1 TO 5 DO
               BEGIN
                    // ****************************************************
                    // ** CONTA A QUANTIDADE DE NÚMEROS NA LINHA A
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_A.Cells[1,0]) THEN  VI_CONTAR_A := VI_CONTAR_A + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_A.Cells[2,0]) THEN  VI_CONTAR_A := VI_CONTAR_A + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_A.Cells[3,0]) THEN  VI_CONTAR_A := VI_CONTAR_A + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_A.Cells[4,0]) THEN  VI_CONTAR_A := VI_CONTAR_A + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_A.Cells[5,0]) THEN  VI_CONTAR_A := VI_CONTAR_A + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_A.Cells[6,0]) THEN  VI_CONTAR_A := VI_CONTAR_A + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_A.Cells[7,0]) THEN  VI_CONTAR_A := VI_CONTAR_A + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_A.Cells[8,0]) THEN  VI_CONTAR_A := VI_CONTAR_A + 1;
                    // ****************************************************
                    // ** CONTA A QUANTIDADE DE NÚMEROS NA LINHA B
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_B.Cells[1,0]) THEN  VI_CONTAR_B := VI_CONTAR_B + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_B.Cells[2,0]) THEN  VI_CONTAR_B := VI_CONTAR_B + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_B.Cells[3,0]) THEN  VI_CONTAR_B := VI_CONTAR_B + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_B.Cells[4,0]) THEN  VI_CONTAR_B := VI_CONTAR_B + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_B.Cells[5,0]) THEN  VI_CONTAR_B := VI_CONTAR_B + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_B.Cells[6,0]) THEN  VI_CONTAR_B := VI_CONTAR_B + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_B.Cells[7,0]) THEN  VI_CONTAR_B := VI_CONTAR_B + 1;
                    // ****************************************************
                    // ** CONTA A QUANTIDADE DE NÚMEROS NA LINHA C
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_C.Cells[1,0]) THEN  VI_CONTAR_C := VI_CONTAR_C + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_C.Cells[2,0]) THEN  VI_CONTAR_C := VI_CONTAR_C + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_C.Cells[3,0]) THEN  VI_CONTAR_C := VI_CONTAR_C + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_C.Cells[4,0]) THEN  VI_CONTAR_C := VI_CONTAR_C + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_C.Cells[5,0]) THEN  VI_CONTAR_C := VI_CONTAR_C + 1;
                    // ****************************************************
                    // ** CONTA A QUANTIDADE DE NÚMEROS NA LINHA D
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_D.Cells[1,0]) THEN  VI_CONTAR_D := VI_CONTAR_D + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_D.Cells[2,0]) THEN  VI_CONTAR_D := VI_CONTAR_D + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_D.Cells[3,0]) THEN  VI_CONTAR_D := VI_CONTAR_D + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_D.Cells[4,0]) THEN  VI_CONTAR_D := VI_CONTAR_D + 1;
                    IF STRtoINT(STGR_BASE_5.Cells[VI_CONTADOR,VI_COMB02]) = STRtoINT(STGR_BASE_D.Cells[5,0]) THEN  VI_CONTAR_D := VI_CONTAR_D + 1;
               END; // FOR VI_CONTADOR
               // ****************************************************
               // ** CONDIÇÃO VERDADEIRA, MONTA O GRID
               IF  (VI_CONTAR_A=2) AND (VI_CONTAR_B=1) AND (VI_CONTAR_C=1) AND (VI_CONTAR_D=1) AND
                    (
                    ((STRtoINT(STGR_BASE_5.Cells[1,VI_COMB02]) + STRtoINT(STGR_BASE_5.Cells[2,VI_COMB02]) + STRtoINT(STGR_BASE_5.Cells[3,VI_COMB02]) + STRtoINT(STGR_BASE_5.Cells[4,VI_COMB02]) + STRtoINT(STGR_BASE_5.Cells[5,VI_COMB02])) >= STRtoINT(ED_SOMAS_5S_INI.Text))
                    AND ((STRtoINT(STGR_BASE_5.Cells[1,VI_COMB02]) + STRtoINT(STGR_BASE_5.Cells[2,VI_COMB02]) + STRtoINT(STGR_BASE_5.Cells[3,VI_COMB02]) + STRtoINT(STGR_BASE_5.Cells[4,VI_COMB02]) + STRtoINT(STGR_BASE_5.Cells[5,VI_COMB02])) <= STRtoINT(ED_SOMAS_5S_FINAL.Text))
                    )THEN
               BEGIN
                    STGR_COMB15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
                    STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_10_NS.Cells[2,VI_COMB01];
                    STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_10_NS.Cells[3,VI_COMB01];
                    STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_10_NS.Cells[4,VI_COMB01];
                    STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_10_NS.Cells[5,VI_COMB01];
                    STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_10_NS.Cells[6,VI_COMB01];
                    STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_10_NS.Cells[7,VI_COMB01];
                    STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_10_NS.Cells[8,VI_COMB01];
                    STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_10_NS.Cells[9,VI_COMB01];
                    STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_10_NS.Cells[10,VI_COMB01];
                    STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_10_NS.Cells[11,VI_COMB01];
                    STGR_COMB15.Cells[3,VI_LINHAS2] := STGR_BASE_5.Cells[1,VI_COMB02];
                    STGR_COMB15.Cells[4,VI_LINHAS2] := STGR_BASE_5.Cells[2,VI_COMB02];
                    STGR_COMB15.Cells[5,VI_LINHAS2] := STGR_BASE_5.Cells[3,VI_COMB02];
                    STGR_COMB15.Cells[6,VI_LINHAS2] := STGR_BASE_5.Cells[4,VI_COMB02];
                    STGR_COMB15.Cells[7,VI_LINHAS2] := STGR_BASE_5.Cells[5,VI_COMB02];
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
                                   PR_GRAVAR_DADOS ('NAO', VI_LINHAS2, VI_COMB01, TRUNC(STGR_TODOS_15.RowCount-1));                                  
                                   VI_LINHAS2 := VI_LINHAS2 + 1;
                    END; // IF
               END; // IF
          END; // FOR VI_COMB02
          IF (VI_COMB01 MOD 50)=0 THEN
          BEGIN
               PANEL_TITULO_SIMULACAO.Repaint;
               PGBR_GERARCOMB.Position :=  TRUNC(VI_COMB01/(STGR_TODOS_15.RowCount-1)*100);
               STGR_COMB15.RowCount := VI_LINHAS2;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS2-1);
               STGR_COMB15.Repaint;
               SLEEP(1);
          END;
          IF (VI_COMB01 MOD 500)=0 THEN
          BEGIN
               STGR_COMB15.RowCount := VI_LINHAS2;
               self.WindowState := wsMinimized;
               self.WindowState := wsNormal;
               sleep (5);
               STGR_BASE_5.Repaint;
               STGR_COMB15.Repaint;
               LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS2-1);
               LA_QTD_COMB.Repaint;
               Self.Repaint;
               sleep (90);
          END;
     END; // FOR VI_COMB01
     LA_QTD_COMB.Caption :=  'GERADOS: '+INTtoSTR(VI_LINHAS2-1);     
     PGBR_GERARCOMB.Position := 100;
     STGR_COMB15.RowCount := VI_LINHAS2;
     PR_GRAVAR_DADOS ('FIM', VI_LINHAS2, VI_COMB01, TRUNC(STGR_TODOS_15.RowCount-1));
     SELF.PR_LIMPAR_GRID15();
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     SELF.PR_SIMULAR_RECUPERANDODADOS();
               SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_NS_01_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTADOR := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_NS_01_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTADOR)+ ''';')  ;
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
     LA_rTOTAL_COMB.Caption := INTtoSTR((STGR_TODOS_15.RowCount-1)*3003*5);
     LA_rQTD_COMB.Caption := LA_QTD_COMB.Caption;
     LA_rTOTAL_100REPET.Caption := LA_TOTAL_100REPET.Caption;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_NS_01_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          PA_REMOVEUREPET.Left := 400;
     PA_REMOVEUREPET.Repaint;
     BBT_GERAR.Enabled := TRUE;     
end;



PROCEDURE T_F_NS_01.PR_SIMULAR_RECUPERANDODADOS();
VAR
     VI_AN_COMB1, VI_CONTAR : INTEGER;
BEGIN
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dados)) AS SOMADADOS FROM FILTRO_NS_01_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT DADOS FROM FILTRO_NS_01_DADOS GROUP BY DADOS ORDER BY DADOS;')  ;
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






procedure T_F_NS_01.BBT_FILTRARClick(Sender: TObject);
VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_LINHAS2: SMALLINT;
begin
     BBT_BLOCO_NOTAS.Enabled := TRUE;
     PGBR_FILTRARCOMB.Position := 0;
     LA_QTD_FILTRADOS.Caption := '0       ';
               // ---------------------------
               // --  FILTRANDO OS DADOS   --
               // ---------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_TODOS_15.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO (STGR_COMB15.RowCount-1) DO
          BEGIN
                IF  (STGR_COMB15.Cells[3,VI_COMBINACOES2] = STGR_TODOS_15.Cells[2,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[4,VI_COMBINACOES2] = STGR_TODOS_15.Cells[3,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[5,VI_COMBINACOES2] = STGR_TODOS_15.Cells[4,VI_COMBINACOES1])
                    THEN
                BEGIN
                    IF  (STGR_COMB15.Cells[6,VI_COMBINACOES2] = STGR_TODOS_15.Cells[5,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[7,VI_COMBINACOES2] = STGR_TODOS_15.Cells[6,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[8,VI_COMBINACOES2] = STGR_TODOS_15.Cells[7,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[9,VI_COMBINACOES2] = STGR_TODOS_15.Cells[8,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[10,VI_COMBINACOES2] = STGR_TODOS_15.Cells[9,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[11,VI_COMBINACOES2] = STGR_TODOS_15.Cells[10,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[12,VI_COMBINACOES2] = STGR_TODOS_15.Cells[11,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[13,VI_COMBINACOES2] = STGR_TODOS_15.Cells[12,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[14,VI_COMBINACOES2] = STGR_TODOS_15.Cells[13,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[15,VI_COMBINACOES2] = STGR_TODOS_15.Cells[14,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[16,VI_COMBINACOES2] = STGR_TODOS_15.Cells[15,VI_COMBINACOES1]) and
                        (STGR_COMB15.Cells[17,VI_COMBINACOES2] = STGR_TODOS_15.Cells[16,VI_COMBINACOES1])
                        THEN
                    BEGIN
                        STGR_COMB15.Cells[2,VI_COMBINACOES2] := 'V';
                        STGR_TODOS_15.Cells[1,VI_COMBINACOES1] := 'V';
                        //STGR_COMB15.Cells [19,VI_COMBINACOES1] := INTtoSTR(VI_COMBINACOES2);
                    END ; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
          if (VI_COMBINACOES1/990)=(VI_COMBINACOES1 DIV 990) then
          BEGIN
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END; // IF (VI_COMBINACOES1/500
          PGBR_FILTRARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_TODOS_15.RowCount-1)*100);
          PGBR_FILTRARCOMB.Repaint;
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     PGBR_FILTRARCOMB.Position := 100;
     FOR VI_COMBINACOES1:= 1 TO (STGR_TODOS_15.RowCount-1) DO
     BEGIN
          IF (STGR_TODOS_15.Cells[1,VI_COMBINACOES1] = 'V')
           THEN
               VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_gFIM_FILTRAR.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;     
     LA_QTD_FILTRADOS.Caption := INTtoSTR(VI_CONTAR);
     LA_QTD_FILTRADOS.Repaint;
     LA_fQTD_FILTRADOS.Caption := LA_QTD_FILTRADOS.Caption;
     PA_REMOVEUREPET.Left := 400;
end;



procedure T_F_NS_01.Button1Click(Sender: TObject);
VAR
     VI_COMBINACOES1, VI_COMBINACOES2, VI_CONTAR : integer;
     VI_LINHAS2: SMALLINT;
begin
     BBT_BLOCO_NOTAS.Enabled := TRUE;
     PGBR_FILTRARCOMB.Position := 0;
     LA_QTD_FILTRADOS.Caption := '0       ';
               // ---------------------------
               // --  FILTRANDO OS DADOS   --
               // ---------------------------
     FOR VI_COMBINACOES1:= 1 TO (STGR_TODOS_15.RowCount-1) DO
     BEGIN
          FOR VI_COMBINACOES2:= 1 TO (STGR_COMB15.RowCount-1) DO
          BEGIN
                IF  (STGR_COMB15.Cells[3,VI_COMBINACOES2] = STGR_TODOS_15.Cells[2,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[4,VI_COMBINACOES2] = STGR_TODOS_15.Cells[3,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[5,VI_COMBINACOES2] = STGR_TODOS_15.Cells[4,VI_COMBINACOES1])
                    THEN
                BEGIN
                    IF  (STGR_COMB15.Cells[6,VI_COMBINACOES2] = STGR_TODOS_15.Cells[5,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[7,VI_COMBINACOES2] = STGR_TODOS_15.Cells[6,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[8,VI_COMBINACOES2] = STGR_TODOS_15.Cells[7,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[9,VI_COMBINACOES2] = STGR_TODOS_15.Cells[8,VI_COMBINACOES1])  AND
                        (STGR_COMB15.Cells[10,VI_COMBINACOES2] = STGR_TODOS_15.Cells[9,VI_COMBINACOES1])  AND
                        (STGR_COMB15.Cells[11,VI_COMBINACOES2] = STGR_TODOS_15.Cells[10,VI_COMBINACOES1]){ AND
                        (STGR_COMB15.Cells[12,VI_COMBINACOES2] = STGR_TODOS_15.Cells[11,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[13,VI_COMBINACOES2] = STGR_TODOS_15.Cells[12,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[14,VI_COMBINACOES2] = STGR_TODOS_15.Cells[13,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[15,VI_COMBINACOES2] = STGR_TODOS_15.Cells[14,VI_COMBINACOES1]) AND
                        (STGR_COMB15.Cells[16,VI_COMBINACOES2] = STGR_TODOS_15.Cells[15,VI_COMBINACOES1]) and
                        (STGR_COMB15.Cells[17,VI_COMBINACOES2] = STGR_TODOS_15.Cells[16,VI_COMBINACOES1]) }
                        THEN
                    BEGIN
                        STGR_COMB15.Cells [2,VI_COMBINACOES2] := 'V';
                        STGR_TODOS_15.Cells [1,VI_COMBINACOES1] := 'V';
                        //STGR_COMB15.Cells [19,VI_COMBINACOES1] := INTtoSTR(VI_COMBINACOES2);
                    END ; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
                END; // if (STGR_GRUPO_D_TODOS3.Cells[1,VI_CONTAR]
          END; // FOR VI_COMBINACOES2
          if (VI_COMBINACOES1/990)=(VI_COMBINACOES1 DIV 990) then
          BEGIN
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
          END; // IF (VI_COMBINACOES1/500
          PGBR_FILTRARCOMB.Position := TRUNC(VI_COMBINACOES1/(STGR_TODOS_15.RowCount-1)*100);
          PGBR_FILTRARCOMB.Repaint;
     END; // FOR VI_COMBINACOES1
     VI_CONTAR := 0;
     PGBR_FILTRARCOMB.Position := 100;
     FOR VI_COMBINACOES1:= 1 TO (STGR_TODOS_15.RowCount-1) DO
     BEGIN
          IF TRIM(STGR_TODOS_15.Cells[1,VI_COMBINACOES1]) = 'V'
           THEN
               VI_CONTAR:=VI_CONTAR +1;
     END;
     LA_gFIM_FILTRAR.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;
     LA_QTD_FILTRADOS.Caption := INTtoSTR(VI_CONTAR);
     LA_QTD_FILTRADOS.Repaint;
     LA_fQTD_FILTRADOS.Caption := LA_QTD_FILTRADOS.Caption;
     PA_REMOVEUREPET.Left := 400;
end;



procedure T_F_NS_01.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 9999;
     SELF.Width := 1220;  
end;



procedure T_F_NS_01.BBT_ENCERRARClick(Sender: TObject);
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


procedure T_F_NS_01.BBT_BLOCO_NOTASClick(Sender: TObject);
var
    VI_AN_COMB1, VI_CONTAR, VI_QTD : INTEGER;
    VC_COMBINACOES : string;
begin
     MEM_COMBINACOES_TODAS.Clear;
     MEM_COMBINACOES_TODAS.Lines.Add('TOTAL: ' + LA_QTD_FILTRADOS.Caption) ;
     MEM_COMBINACOES_TODAS.Lines.Add('----------------------------') ;
     VI_QTD:=0;
     FOR VI_CONTAR := 1 TO STGR_TODOS_15.RowCount-1 DO
     BEGIN
          IF TRIM(STGR_TODOS_15.Cells[1,VI_CONTAR])='F' THEN
               CONTINUE;
          VI_QTD := VI_QTD + 1;
          VC_COMBINACOES := INTtoSTR(VI_QTD)+'=> ';
          FOR VI_AN_COMB1 := 1 TO 15 DO
             BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_TODOS_15.Cells [VI_AN_COMB1+1,VI_CONTAR]+ ' ';
             END; // FOR VI_AN_COMB1
          VC_COMBINACOES := VC_COMBINACOES +'  --  ';
          FOR VI_AN_COMB1 := 1 TO 10 DO
             BEGIN
                    VC_COMBINACOES := VC_COMBINACOES + STGR_10_NS.Cells [VI_AN_COMB1+1,VI_CONTAR] + ' ';
             END; // FOR VI_AN_COMB1
               MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
     END; // FOR VI_CONTAR
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\FILTRO_NS01.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\FILTRO_NS01.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado
   showmessage('BLOCO DE NOTAS GERADO');
end;

procedure T_F_NS_01.BT_NOVA_SIMULACAOClick(Sender: TObject);
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
     STGR_TODOS_15.RowCount := 2;
     STGR_10_NS.RowCount := 2;
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



procedure T_F_NS_01.BT_REAJUSTARClick(Sender: TObject);
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



procedure T_F_NS_01.BBT_CARREGARClick(Sender: TObject);
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
     WHILE NOT(IBQ_COMBINACOES.Eof) DO
     BEGIN
          // ****************************************************
          // ** RECUPERA OS 15 NÚMEROS
          STGR_TODOS_15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
          STGR_TODOS_15.Cells[1,VI_LINHAS2] := 'F';
          STGR_TODOS_15.Cells[2,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
          STGR_TODOS_15.Cells[3,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
          STGR_TODOS_15.Cells[4,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
          STGR_TODOS_15.Cells[5,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
          STGR_TODOS_15.Cells[6,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
          STGR_TODOS_15.Cells[7,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
          STGR_TODOS_15.Cells[8,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
          STGR_TODOS_15.Cells[9,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
          STGR_TODOS_15.Cells[10,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
          STGR_TODOS_15.Cells[11,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
          STGR_TODOS_15.Cells[12,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
          STGR_TODOS_15.Cells[13,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
          STGR_TODOS_15.Cells[14,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
          STGR_TODOS_15.Cells[15,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
          STGR_TODOS_15.Cells[16,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
          STGR_TODOS_15.Cells[17,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,46,2);
          // ****************************************************
          // ** RECUPERA OS 10 NÃO SORTEADOS
          STGR_10_NS.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
          STGR_10_NS.Cells[2,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_A1').AsString;
          STGR_10_NS.Cells[3,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_A2').AsString;
          STGR_10_NS.Cells[4,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_A3').AsString;
          STGR_10_NS.Cells[5,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_B1').AsString;
          STGR_10_NS.Cells[6,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_B2').AsString;
          STGR_10_NS.Cells[7,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_B3').AsString;
          STGR_10_NS.Cells[8,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_C1').AsString;
          STGR_10_NS.Cells[9,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_C2').AsString;
          STGR_10_NS.Cells[10,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_D1').AsString;
          STGR_10_NS.Cells[11,VI_LINHAS2] := SELF.IBQ_COMBINACOES.FIELDBYNAME('NS_D2').AsString;
          // ****************************************************
          // ** FLAG DOS EXCLUIDOS OU NÃO
          STGR_10_NS.Cells[1,VI_LINHAS2] := 'V';
          IF (STRtoINT(STGR_10_NS.Cells[2,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR (STRtoINT(STGR_10_NS.Cells[3,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text))
               OR (STRtoINT(STGR_10_NS.Cells[4,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR (STRtoINT(STGR_10_NS.Cells[5,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text))
               OR (STRtoINT(STGR_10_NS.Cells[6,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR (STRtoINT(STGR_10_NS.Cells[7,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text))
               OR (STRtoINT(STGR_10_NS.Cells[8,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR (STRtoINT(STGR_10_NS.Cells[9,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text))
               OR (STRtoINT(STGR_10_NS.Cells[10,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text)) OR (STRtoINT(STGR_10_NS.Cells[11,VI_LINHAS2]) = STRtoINT(ED_EXC_01.Text))
          THEN
               STGR_10_NS.Cells[1,VI_LINHAS2] := 'F';
          IF (STRtoINT(STGR_10_NS.Cells[2,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR (STRtoINT(STGR_10_NS.Cells[3,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text))
               OR (STRtoINT(STGR_10_NS.Cells[4,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR (STRtoINT(STGR_10_NS.Cells[5,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text))
               OR (STRtoINT(STGR_10_NS.Cells[6,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR (STRtoINT(STGR_10_NS.Cells[7,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text))
               OR (STRtoINT(STGR_10_NS.Cells[8,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR (STRtoINT(STGR_10_NS.Cells[9,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text))
               OR (STRtoINT(STGR_10_NS.Cells[10,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text)) OR (STRtoINT(STGR_10_NS.Cells[11,VI_LINHAS2]) = STRtoINT(ED_EXC_02.Text))
          THEN
               STGR_10_NS.Cells[1,VI_LINHAS2] := 'F';
          VI_LINHAS2 := VI_LINHAS2 + 1;
          IBQ_COMBINACOES.Next;
     END; // WHILE
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_NS_01_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          TRY
               SELF.IBTransaction1.Commit;
          EXCEPT
               //
          END;
     STGR_TODOS_15.RowCount := VI_LINHAS2;
     STGR_10_NS.RowCount := VI_LINHAS2;
     STGR_COMB15.RowCount := 2;
     VI_LINHAS2 := 0;
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
          STGR_COMB15.Cells[VI_CONTAR+2,0] := INTtoSTR(VI_CONTAR);
     END; // FOR
     FOR VI_CONTAR := 1 TO 5 DO
     BEGIN
          STGR_BASE_5.Cells[VI_CONTAR,0] := INTtoSTR(VI_CONTAR);
     END; // FOR
     SELF.PR_SIMULAR_RECUPERANDODADOS();
     IF (SELF._SET_FLAG_AUTOEXECUTAR <>'S') THEN
          SHOWMESSAGE('OK');         
end;



procedure T_F_NS_01.BBT_CANCELARClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_NS_01_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;



procedure T_F_NS_01.Set_SET_FLAG_AUTOEXECUTAR(const Value: STRING);
begin
  F_SET_FLAG_AUTOEXECUTAR := Value;
end;


PROCEDURE T_F_NS_01.PR_LIMPAR_GRID15 ();
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






end.







