unit Simulacao01_Filtro_15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, ComCtrls, StdCtrls,
  Buttons, ExtCtrls, Grids;

type
  T_F_15 = class(TForm)
    SCBX_GABARITO: TScrollBox;
    Label37: TLabel;
    LA_GRUPO_A_100REP: TLabel;
    LA_GRUPO_B_100REP: TLabel;
    Label35: TLabel;
    STGR_TODOS_15: TStringGrid;
    STGR_10_NS: TStringGrid;
    Panel2: TPanel;
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
    ED_EXC_03: TEdit;
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
    Panel3: TPanel;
    BBT_PREPARAR: TBitBtn;
    BBT_ENCERRAR: TBitBtn;
    BBT_GERAR_SIMULACAO: TBitBtn;
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
    procedure TRB_5S_INIChange(Sender: TObject);
    procedure TRB_5S_FINALChange(Sender: TObject);
    procedure TRB_DIF_IMP_PAR_INIChange(Sender: TObject);
    procedure TRB_DIF_IMP_PAR_FINALChange(Sender: TObject);
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure BBT_GERAR_SIMULACAOClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _F_15: T_F_15;

implementation

{$R *.dfm}



procedure T_F_15.TRB_5S_INIChange(Sender: TObject);
begin
     IF TRB_5S_INI.Position = 1 THEN
          ED_SOMAS_5S_INI.Text := '63';
     IF TRB_5S_INI.Position = 2 THEN
          ED_SOMAS_5S_INI.Text := '64';
     IF TRB_5S_INI.Position = 3 THEN
          ED_SOMAS_5S_INI.Text := '65';
     IF TRB_5S_INI.Position = 4 THEN
          ED_SOMAS_5S_INI.Text := '66';
     IF TRB_5S_INI.Position = 5 THEN
          ED_SOMAS_5S_INI.Text := '67';
end;



procedure T_F_15.TRB_5S_FINALChange(Sender: TObject);
begin
     IF TRB_5S_FINAL.Position = 1 THEN
          ED_SOMAS_5S_FINAL.Text := '63';
     IF TRB_5S_FINAL.Position = 2 THEN
          ED_SOMAS_5S_FINAL.Text := '64';
     IF TRB_5S_FINAL.Position = 3 THEN
          ED_SOMAS_5S_FINAL.Text := '65';
     IF TRB_5S_FINAL.Position = 4 THEN
          ED_SOMAS_5S_FINAL.Text := '66';
     IF TRB_5S_FINAL.Position = 5 THEN
          ED_SOMAS_5S_FINAL.Text := '67';
end;



procedure T_F_15.TRB_DIF_IMP_PAR_INIChange(Sender: TObject);
begin
     IF TRB_DIF_IMP_PAR_INI.Position = 1 THEN
          ED_DIF_IMP_PAR_INI.Text := '1';
     IF TRB_DIF_IMP_PAR_INI.Position = 2 THEN
          ED_DIF_IMP_PAR_INI.Text := '2';
     IF TRB_DIF_IMP_PAR_INI.Position = 3 THEN
          ED_DIF_IMP_PAR_INI.Text := '3';
end;



procedure T_F_15.TRB_DIF_IMP_PAR_FINALChange(Sender: TObject);
begin
     IF TRB_DIF_IMP_PAR_FINAL.Position = 1 THEN
          ED_DIF_IMP_PAR_FINAL.Text := '1';
     IF TRB_DIF_IMP_PAR_FINAL.Position = 2 THEN
          ED_DIF_IMP_PAR_FINAL.Text := '2';
     IF TRB_DIF_IMP_PAR_FINAL.Position = 3 THEN
          ED_DIF_IMP_PAR_FINAL.Text := '3';
end;



procedure T_F_15.BBT_PREPARARClick(Sender: TObject);
VAR
     VI_LINHAS2, VI_CONTAR: INTEGER;
begin
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
          // RECUPERA OS 15 NÚMEROS
          STGR_TODOS_15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
          STGR_TODOS_15.Cells[2,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
          STGR_TODOS_15.Cells[3,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
          STGR_TODOS_15.Cells[4,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
          STGR_TODOS_15.Cells[5,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
          STGR_TODOS_15.Cells[6,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
          STGR_TODOS_15.Cells[7,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
          STGR_TODOS_15.Cells[8,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
          STGR_TODOS_15.Cells[9,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,21,3);
          STGR_TODOS_15.Cells[10,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,24,3);
          STGR_TODOS_15.Cells[11,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,27,3);
          STGR_TODOS_15.Cells[12,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,30,3);
          STGR_TODOS_15.Cells[13,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,33,3);
          STGR_TODOS_15.Cells[14,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,36,3);
          STGR_TODOS_15.Cells[15,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,39,3);
          STGR_TODOS_15.Cells[16,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,42,3);
          STGR_TODOS_15.Cells[17,VI_LINHAS2] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,45,3);
          // RECUPERA OS 10 NÃO SORTEADOS
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
          VI_LINHAS2 := VI_LINHAS2 + 1;
          IBQ_COMBINACOES.Next;
     END; // WHILE
     STGR_TODOS_15.RowCount := VI_LINHAS2;
     STGR_10_NS.RowCount := VI_LINHAS2;
     STGR_COMB15.RowCount := 2;
     FOR VI_CONTAR := 1 TO 15 DO
     BEGIN
          STGR_COMB15.Cells[VI_CONTAR+2,0] := INTtoSTR(VI_CONTAR);
     END; // FOR
end;




procedure T_F_15.BBT_GERAR_SIMULACAOClick(Sender: TObject);
VAR
     VI_LINHAS2, VI_CONTAR, VI_COMB01: INTEGER;
begin
     VI_LINHAS2 := 1;
     FOR VI_COMB01 := 1 TO STGR_TODOS_15.RowCount-1 DO
     BEGIN
          IF ((STRtoINT(STGR_10_NS.Cells[2,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[3,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[4,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[8,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[9,VI_COMB01]))
            -(STRtoINT(STGR_10_NS.Cells[5,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[6,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[7,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[10,VI_COMB01]) + STRtoINT(STGR_10_NS.Cells[11,VI_COMB01]))) >  STRtoINT(ED_DIF_IMP_PAR_INI.Text)
          THEN
               CONTINUE;
          STGR_COMB15.Cells[0,VI_LINHAS2] := INTtoSTR(VI_LINHAS2);
          STGR_COMB15.Cells[8,VI_LINHAS2] := STGR_10_NS.Cells[2,VI_COMB01];
          STGR_COMB15.Cells[9,VI_LINHAS2] := STGR_10_NS.Cells[3,VI_LINHAS2];
          STGR_COMB15.Cells[10,VI_LINHAS2] := STGR_10_NS.Cells[4,VI_LINHAS2];
          STGR_COMB15.Cells[11,VI_LINHAS2] := STGR_10_NS.Cells[5,VI_LINHAS2];
          STGR_COMB15.Cells[12,VI_LINHAS2] := STGR_10_NS.Cells[6,VI_LINHAS2];
          STGR_COMB15.Cells[13,VI_LINHAS2] := STGR_10_NS.Cells[7,VI_LINHAS2];
          STGR_COMB15.Cells[14,VI_LINHAS2] := STGR_10_NS.Cells[8,VI_LINHAS2];
          STGR_COMB15.Cells[15,VI_LINHAS2] := STGR_10_NS.Cells[9,VI_LINHAS2];
          STGR_COMB15.Cells[16,VI_LINHAS2] := STGR_10_NS.Cells[10,VI_LINHAS2];
          STGR_COMB15.Cells[17,VI_LINHAS2] := STGR_10_NS.Cells[11,VI_LINHAS2];
          VI_LINHAS2 := VI_LINHAS2 + 1;
     END; // FOR
     STGR_COMB15.RowCount := VI_LINHAS2;
     SHOWMESSAGE('.');
end;



end.
