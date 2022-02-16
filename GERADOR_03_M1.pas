unit GERADOR_03_M1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Grids, Buttons, DB, strutils,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

type
  T_F_GERADOR_03_M1 = class(TForm)
    PA_RESULTADO: TPanel;
    LA_TXT31: TLabel;
    LA_TXT21: TLabel;
    LA_TXT11: TLabel;
    BBT_ZERAR: TBitBtn;
    STGR_M03_SERIE3_INICIAL: TStringGrid;
    STGR_M03_SERIE1_INICIAL: TStringGrid;
    STGR_M03_SERIE2_INICIAL: TStringGrid;
    BBT_M03_SIMULAR_A: TBitBtn;
    BBT_M03_SIMULAR_b: TBitBtn;
    BBT_M03_SIMULAR_C: TBitBtn;
    STGR_M03_SERIE1_04: TStringGrid;
    STGR_M03_SERIE1_06: TStringGrid;
    STGR_M03_SERIE1_07: TStringGrid;
    STGR_M03_SERIE1_08: TStringGrid;
    STGR_M03_SERIE1_05: TStringGrid;
    STGR_M03_SERIE2_08: TStringGrid;
    STGR_M03_SERIE2_07: TStringGrid;
    STGR_M03_SERIE2_06: TStringGrid;
    STGR_M03_SERIE2_05: TStringGrid;
    STGR_M03_SERIE2_04: TStringGrid;
    STGR_M03_SERIE3_04: TStringGrid;
    STGR_M03_SERIE3_03: TStringGrid;
    STGR_M03_SERIE3_02: TStringGrid;
    Memo1: TMemo;
    BBT_PREPARAR: TButton;
    STGR_COMBINACOES_15M31: TStringGrid;
    STGR_COMBINACOES_15M32: TStringGrid;
    STGR_COMBINACOES_15M33: TStringGrid;
    STGR_COMBINACOES_15M34: TStringGrid;
    PGBR_M02: TProgressBar;
    BBT_301: TBitBtn;
    BBT_302: TBitBtn;
    BBT_303: TBitBtn;
    BBT_304: TBitBtn;
    BBT_305: TBitBtn;
    BBT_310: TBitBtn;
    BBT_309: TBitBtn;
    BBT_308: TBitBtn;
    BBT_307: TBitBtn;
    BBT_306: TBitBtn;
    BBT_319: TBitBtn;
    BBT_318: TBitBtn;
    BBT_317: TBitBtn;
    BBT_316: TBitBtn;
    BBT_320: TBitBtn;
    BBT_315: TBitBtn;
    BBT_314: TBitBtn;
    BBT_313: TBitBtn;
    BBT_312: TBitBtn;
    BBT_311: TBitBtn;
    BBT_321: TBitBtn;
    BBT_322: TBitBtn;
    BBT_323: TBitBtn;
    BBT_324: TBitBtn;
    BBT_325: TBitBtn;
    BBT_M3_SIM_AB: TBitBtn;
    BBT_M3_SIM_BC: TBitBtn;
    BBT_M3_SIM_ABC: TBitBtn;
    STGR_COMBINACOES_15F03: TStringGrid;
    BBT_F03_A: TBitBtn;
    BBT_F03_A_: TBitBtn;
    BBT_F03_B_: TBitBtn;
    BBT_F03_B: TBitBtn;
    BBT_F03_C: TBitBtn;
    BBT_F03_C_: TBitBtn;
    BBT_F03_D: TBitBtn;
    BBT_F03_E: TBitBtn;
    BBT_F03_F: TBitBtn;
    BBT_F03_G: TBitBtn;
    BBT_F03_ENCERRAR: TButton;
    PA_TOPO: TPanel;
    BBT_CLOSE: TImage;
    Label34: TLabel;
    BT_GERAR_MENU: TButton;
    PA_GERAR: TPanel;
    Panel2: TPanel;
    Label63: TLabel;
    BBT_GERAR: TBitBtn;
    BBT_GERAR_VOLTAR: TBitBtn;
    CB_MODO_FILTRO: TComboBox;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQ_COMBINACOES: TIBQuery;
    STRGR_TODOS_NUMEROS: TStringGrid;
    LA_TXT41: TLabel;
    PA_INICIAL: TPanel;
    Label55: TLabel;
    BT_NOVA_SIMULACAO: TButton;
    BT_REAJUSTAR: TButton;
    BBT_SAIR: TButton;
    BBT_CARREGAR: TButton;
    BBT_CANCELAR: TBitBtn;
    BBT_CANCELAR_SAIR: TBitBtn;
    PA_REMOVEUREPET: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    LA_rTOTAL_COMB: TLabel;
    Label58: TLabel;
    LA_gINICIO_100REPET: TLabel;
    Label60: TLabel;
    Label49: TLabel;
    LA_gFIM_100REPET: TLabel;
    LA_gFIM_GERAR: TLabel;
    BBT_PA_REMOVEUREPET: TBitBtn;
    procedure BBT_301Click(Sender: TObject);
    procedure BBT_302Click(Sender: TObject);
    procedure BBT_303Click(Sender: TObject);
    procedure BBT_304Click(Sender: TObject);
    procedure BBT_305Click(Sender: TObject);
    procedure BBT_306Click(Sender: TObject);
    procedure BBT_307Click(Sender: TObject);
    procedure BBT_308Click(Sender: TObject);
    procedure BBT_309Click(Sender: TObject);
    procedure BBT_310Click(Sender: TObject);
    procedure BBT_311Click(Sender: TObject);
    procedure BBT_312Click(Sender: TObject);
    procedure BBT_313Click(Sender: TObject);
    procedure BBT_314Click(Sender: TObject);
    procedure BBT_315Click(Sender: TObject);
    procedure BBT_316Click(Sender: TObject);
    procedure BBT_317Click(Sender: TObject);
    procedure BBT_318Click(Sender: TObject);
    procedure BBT_319Click(Sender: TObject);
    procedure BBT_320Click(Sender: TObject);
    procedure BBT_321Click(Sender: TObject);
    procedure BBT_322Click(Sender: TObject);
    procedure BBT_323Click(Sender: TObject);
    procedure BBT_324Click(Sender: TObject);
    procedure BBT_325Click(Sender: TObject);
    procedure BBT_ZERARClick(Sender: TObject);
    procedure BBT_PREPARARClick(Sender: TObject);
    procedure BBT_F03_AClick(Sender: TObject);
    procedure BBT_F03_BClick(Sender: TObject);
    procedure BBT_F03_CClick(Sender: TObject);
    procedure BBT_F03_FClick(Sender: TObject);
    procedure BBT_F03_EClick(Sender: TObject);
    procedure BBT_F03_DClick(Sender: TObject);
    procedure BBT_F03_GClick(Sender: TObject);
    procedure BBT_M03_SIMULAR_AClick(Sender: TObject);
    procedure BBT_M03_SIMULAR_bClick(Sender: TObject);
    procedure BBT_M03_SIMULAR_CClick(Sender: TObject);
    procedure BBT_F03_A_Click(Sender: TObject);
    procedure BBT_F03_B_Click(Sender: TObject);
    procedure BBT_F03_C_Click(Sender: TObject);
    procedure BBT_F03_ENCERRARClick(Sender: TObject);
    procedure BBT_GERARClick(Sender: TObject);
    procedure BT_NOVA_SIMULACAOClick(Sender: TObject);
    procedure BBT_CANCELAR_SAIRClick(Sender: TObject);
    procedure BBT_CARREGARClick(Sender: TObject);
    procedure BBT_SAIRClick(Sender: TObject);
    procedure BBT_CLOSEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BT_GERAR_MENUClick(Sender: TObject);
    procedure BT_REAJUSTARClick(Sender: TObject);
    procedure BBT_GERAR_VOLTARClick(Sender: TObject);
    procedure BBT_PA_REMOVEUREPETClick(Sender: TObject);
  private
    { Private declarations }
    PROCEDURE PR_BOTOES_MODELO3 (VI_NUMERO: INTEGER);
    PROCEDURE PR_SIMULAR_RECUPERANDODADOS ();
  public
    { Public declarations }
  end;

var
  _F_GERADOR_03_M1: T_F_GERADOR_03_M1;

implementation

{$R *.dfm}


procedure T_F_GERADOR_03_M1.FormCreate(Sender: TObject);
begin
     SELF.ClientWidth  := 1070;
     SELF.ClientHeight := 670;
     SELF.Top  := 59;
     SELF.Left := 29;
   //  SELF.Visible := TRUE;
     bbt_close.Left := SELF.ClientWidth-35;
          PA_REMOVEUREPET.Left := 5000;     
     PA_GERAR.Left := 5000;
     PA_INICIAL.Enabled := TRUE;
     PA_INICIAL.Left := 520;
     PA_INICIAL.Top := 160;
    BBT_CANCELAR_SAIR.Visible := false;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_03_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
end;



procedure T_F_GERADOR_03_M1.FormClose(Sender: TObject;
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



procedure T_F_GERADOR_03_M1.BBT_CLOSEClick(Sender: TObject);
begin
     SELF.Close;
end;


PROCEDURE T_F_GERADOR_03_M1.PR_BOTOES_MODELO3 (VI_NUMERO: INTEGER);
VAR
    VI_CONTAR, VI_CONTAR2, VI_CONTAR3 : INTEGER;
BEGIN
   FOR VI_CONTAR := 1 TO 10 DO
    BEGIN
        IF (STRtoINT (STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0]) = 0) THEN
        BEGIN
            STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := INTtoSTR(VI_NUMERO);
            EXIT;
        END ELSE
        IF (VI_CONTAR = 10) THEN
        BEGIN
            FOR VI_CONTAR2 :=1 TO 10 DO
            BEGIN
                IF (STRtoINT (STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0]) = 0) THEN
                BEGIN
                    STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR2,0] := INTtoSTR(VI_NUMERO);
                    EXIT;
                END ELSE
                IF (VI_CONTAR2 = 10) THEN
                BEGIN
                    FOR VI_CONTAR3 :=1 TO 5 DO
                    BEGIN
                        IF (STRtoINT (STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0]) = 0) THEN
                        BEGIN
                            STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR3,0] := INTtoSTR(VI_NUMERO);
                            EXIT;
                        END; // IF (VI_CONTAR2
                    END;// FOR VI_CONTAR3
                END; // IF (STRtoINT
            END; // FOR VI_CONTAR 2
        END;// IF (STRtoINT
    END; // VI_CONTAR
END;



PROCEDURE T_F_GERADOR_03_M1.PR_SIMULAR_RECUPERANDODADOS();
VAR
     VI_AN_COMB1, VI_CONTAR, VI_CONTAR_MOSTRAR : INTEGER;
BEGIN
            STGR_COMBINACOES_15F03.RowCount := 2;
//       SELF.PR_LIMPAR_GRID15();
       SELF.IBQ_COMBINACOES.Close;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(DADOS)) AS SOMADADOS FROM FILTRO_03_DADOS;')  ;
       SELF.IBQ_COMBINACOES.Open;
       VI_CONTAR := SELF.IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       IF (VI_CONTAR > 101000) THEN
          SELF.IBQ_COMBINACOES.SQL.Add('SELECT FIRST 101000 DISTINCT(DADOS) FROM FILTRO_03_DADOS  ORDER BY DADOS;')  
       ELSE
          SELF.IBQ_COMBINACOES.SQL.Add('SELECT DISTINCT(DADOS) FROM FILTRO_03_DADOS  ORDER BY DADOS;')  ;
       // ----
       // SÓ PARA EFEITO DE VISUALIZAÇÃO
       // NO FILTRO OS DADOS SÃO CARREGADOS TOTALMENTE
       // ---
       IF (VI_CONTAR > 101000) THEN
          VI_CONTAR_MOSTRAR := 101000
       ELSE
          VI_CONTAR_MOSTRAR := VI_CONTAR  ;
       SELF.IBQ_COMBINACOES.Open;
       // ********************
       // **   ENCERRANDO   **
       // ********************
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
       SELF.IBQ_COMBINACOES.First;
       FOR VI_AN_COMB1:= 1 TO  VI_CONTAR_MOSTRAR DO
       BEGIN
                STGR_COMBINACOES_15F03.Cells [0, VI_AN_COMB1] := INTtoSTR(VI_AN_COMB1);
                STGR_COMBINACOES_15F03.Cells [1, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,1,2);
                STGR_COMBINACOES_15F03.Cells [2, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,4,2);
                STGR_COMBINACOES_15F03.Cells [3, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,7,2);
                STGR_COMBINACOES_15F03.Cells [4, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,10,2);
                STGR_COMBINACOES_15F03.Cells [5, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,13,2);
                STGR_COMBINACOES_15F03.Cells [6, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,16,2);
                STGR_COMBINACOES_15F03.Cells [7, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,19,2);
                STGR_COMBINACOES_15F03.Cells [8, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,22,2);
                STGR_COMBINACOES_15F03.Cells [9, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,25,2);
                STGR_COMBINACOES_15F03.Cells [10, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,28,2);
                STGR_COMBINACOES_15F03.Cells [11, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,31,2);
                STGR_COMBINACOES_15F03.Cells [12, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,34,2);
                STGR_COMBINACOES_15F03.Cells [13, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,37,2);
                STGR_COMBINACOES_15F03.Cells [14, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,40,2);
                STGR_COMBINACOES_15F03.Cells [15, VI_AN_COMB1] := COPY(SELF.IBQ_COMBINACOES.FIELDBYNAME('DADOS').AsString,43,2);
           SELF.IBQ_COMBINACOES.Next;
       END; // FOR VI_AN_COMB1
           STGR_COMBINACOES_15F03.RowCount := VI_AN_COMB1;
           STGR_COMBINACOES_15F03.FixedRows := 1;
       SELF.IBQ_COMBINACOES.SQL.Clear;
       SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_03_DEFINICAO;')  ;
       SELF.IBQ_COMBINACOES.Open;
       LA_TXT11.Caption := '              ';
       LA_TXT21.Caption := 'DADOS CARREGADOS';
       LA_TXT21.Repaint;
       LA_TXT31.Caption := INTtoSTR(VI_CONTAR);
       LA_TXT31.Repaint;
           Self.Repaint;
           Self.WindowState := wsMinimized;
           Self.WindowState :=  wsNormal;
           Self.Repaint;
     SHOWMESSAGE('DADOS CARREGADOS');           
END; //    PROCEDCURE SIMULAR_RECUPERANDODADOS();



procedure T_F_GERADOR_03_M1.BBT_301Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(1);
    BBT_301.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_302Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(2);
    BBT_302.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_303Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(3);
    BBT_303.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_304Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(4);
    BBT_304.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_305Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(5);
    BBT_305.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_306Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(6);
    BBT_306.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_307Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(7);
    BBT_307.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_308Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(8);
    BBT_308.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_309Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(9);
    BBT_309.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_310Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(10);
    BBT_310.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_311Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(11);
    BBT_311.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_312Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(12);
    BBT_312.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_313Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(13);
    BBT_313.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_314Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(14);
    BBT_314.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_315Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(15);
    BBT_315.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_316Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(16);
    BBT_316.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_317Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(17);
    BBT_317.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_318Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(18);
    BBT_318.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_319Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(19);
    BBT_319.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_320Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(20);
    BBT_320.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_321Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(21);
    BBT_321.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_322Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(22);
    BBT_322.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_323Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(23);
    BBT_323.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_324Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(24);
    BBT_324.Visible := false;
end;

procedure T_F_GERADOR_03_M1.BBT_325Click(Sender: TObject);
begin
    SELF.PR_BOTOES_MODELO3(25);
    BBT_325.Visible := false;
end;




procedure T_F_GERADOR_03_M1.BBT_ZERARClick(Sender: TObject);
VAR
    VI_CONTAR : INTEGER;
begin
    BBT_301.Visible := TRUE;
    BBT_302.Visible := TRUE;
    BBT_303.Visible := TRUE;
    BBT_304.Visible := TRUE;
    BBT_305.Visible := TRUE;
    BBT_306.Visible := TRUE;
    BBT_307.Visible := TRUE;
    BBT_308.Visible := TRUE;
    BBT_309.Visible := TRUE;
    BBT_310.Visible := TRUE;
    BBT_311.Visible := TRUE;
    BBT_312.Visible := TRUE;
    BBT_313.Visible := TRUE;
    BBT_314.Visible := TRUE;
    BBT_315.Visible := TRUE;
    BBT_316.Visible := TRUE;
    BBT_317.Visible := TRUE;
    BBT_318.Visible := TRUE;
    BBT_319.Visible := TRUE;
    BBT_320.Visible := TRUE;
    BBT_321.Visible := TRUE;
    BBT_322.Visible := TRUE;
    BBT_323.Visible := TRUE;
    BBT_324.Visible := TRUE;
    BBT_325.Visible := TRUE;

    FOR VI_CONTAR := 0 TO 10 DO
    BEGIN
        STGR_M03_SERIE1_INICIAL.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE2_INICIAL.Cells [VI_CONTAR,0] := '0';
    END;
    FOR VI_CONTAR := 0 TO 5 DO
    BEGIN
        STGR_M03_SERIE3_INICIAL.Cells [VI_CONTAR,0] := '0';
    END;

    STGR_M03_SERIE1_04.RowCount := 0;
    STGR_M03_SERIE1_05.RowCount := 0;
    STGR_M03_SERIE1_06.RowCount := 0;
    STGR_M03_SERIE1_07.RowCount := 0;
    STGR_M03_SERIE1_08.RowCount := 0;
    STGR_M03_SERIE2_04.RowCount := 0;
    STGR_M03_SERIE2_05.RowCount := 0;
    STGR_M03_SERIE2_06.RowCount := 0;
    STGR_M03_SERIE2_07.RowCount := 0;
    STGR_M03_SERIE2_08.RowCount := 0;
    STGR_M03_SERIE3_02.RowCount := 0;
    STGR_M03_SERIE3_03.RowCount := 0;
    STGR_M03_SERIE3_04.RowCount := 0;
    FOR VI_CONTAR := 0 TO 11 DO
    BEGIN
        STGR_M03_SERIE1_04.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE1_05.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE1_06.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE1_07.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE1_08.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE2_04.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE2_05.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE2_06.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE2_07.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE2_08.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE3_02.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE3_03.Cells [VI_CONTAR,0] := '0';
        STGR_M03_SERIE3_04.Cells [VI_CONTAR,0] := '0';
    END;
        STGR_COMBINACOES_15M31.RowCount :=0;
        STGR_COMBINACOES_15M32.RowCount :=0;
        STGR_COMBINACOES_15M33.RowCount :=0;
        STGR_COMBINACOES_15M34.RowCount :=0;
        FOR VI_CONTAR := 1 TO 15 DO
        BEGIN
            STGR_COMBINACOES_15M31.Cells [VI_CONTAR, 0] :=  '0' ;
            STGR_COMBINACOES_15M32.Cells [VI_CONTAR, 0] :=  '0' ;
            STGR_COMBINACOES_15M33.Cells [VI_CONTAR, 0] :=  '0' ;
            STGR_COMBINACOES_15M34.Cells [VI_CONTAR, 0] :=  '0' ;
        END; // FOR VI_CONTADOR
        STGR_COMBINACOES_15M31.Repaint;
        STGR_COMBINACOES_15M32.Repaint;
        STGR_COMBINACOES_15M33.Repaint;
        STGR_COMBINACOES_15M34.Repaint;
end;



procedure T_F_GERADOR_03_M1.BT_NOVA_SIMULACAOClick(Sender: TObject);
begin
     PA_RESULTADO.Enabled := TRUE;
  //   RB_RESULTADOS.SetFocus;
  //   RB_RES_GABARITOS.SetFocus;
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     BBT_PREPARAR.Enabled := TRUE;
     BT_GERAR_MENU.Enabled := false;
     BT_GERAR_MENU.Enabled := false;
     BBT_CANCELAR_SAIR.Visible := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
     BBT_ZERAR.Click;
end;



procedure T_F_GERADOR_03_M1.BT_REAJUSTARClick(Sender: TObject);
begin
     BBT_PREPARAR.Enabled := TRUE;
     BT_GERAR_MENU.Enabled := false;
     BBT_CANCELAR_SAIR.Visible := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
end;



procedure T_F_GERADOR_03_M1.BBT_CARREGARClick(Sender: TObject);
begin
    BBT_CANCELAR_SAIR.Visible := TRUE;
            STGR_COMBINACOES_15F03.RowCount := 2;
//       SELF.PR_LIMPAR_GRID10();
     PA_RESULTADO.Visible := TRUE;
     PA_RESULTADO.Enabled := TRUE;
     BBT_ZERAR.Enabled := false;
     BBT_PREPARAR.Enabled := false;
     BT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := false;
     PA_INICIAL.Left := 2198;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_03_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.PR_SIMULAR_RECUPERANDODADOS();
end;



procedure T_F_GERADOR_03_M1.BBT_SAIRClick(Sender: TObject);
begin
     SELF.Close;
end;



procedure T_F_GERADOR_03_M1.BBT_CANCELAR_SAIRClick(Sender: TObject);
begin
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_03_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT;')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
          SELF.Close;
end;



procedure T_F_GERADOR_03_M1.BBT_PREPARARClick(Sender: TObject);
VAR
    VI_LINHAS  : INTEGER;
    VI_AN_COMB1, VI_AN_COMB2, VI_AN_COMB3, VI_AN_COMB4, VI_AN_COMB5, VI_AN_COMB6, VI_AN_COMB7, VI_AN_COMB8: INTEGER;
begin
    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 1 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 3 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 4 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 5 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 6 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 7 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 8 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 9 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 10 DO
                                BEGIN
                                    STGR_M03_SERIE1_08.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                    STGR_M03_SERIE1_08.Cells [1,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                    STGR_M03_SERIE1_08.Cells [2,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                    STGR_M03_SERIE1_08.Cells [3,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                    STGR_M03_SERIE1_08.Cells [4,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                    STGR_M03_SERIE1_08.Cells [5,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                    STGR_M03_SERIE1_08.Cells [6,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                    STGR_M03_SERIE1_08.Cells [7,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                    STGR_M03_SERIE1_08.Cells [8,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB8,0] ;
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_M03_SERIE1_08.RowCount := VI_LINHAS;
                                END; //  FOR VI_AN_COMB8
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE1_08.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE1_08.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 2 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 4 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 5 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 6 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 7 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 8 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 9 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 10 DO
                            BEGIN
                                STGR_M03_SERIE1_07.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                STGR_M03_SERIE1_07.Cells [1,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                                STGR_M03_SERIE1_07.Cells [2,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                                STGR_M03_SERIE1_07.Cells [3,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                                STGR_M03_SERIE1_07.Cells [4,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                                STGR_M03_SERIE1_07.Cells [5,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                                STGR_M03_SERIE1_07.Cells [6,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                                STGR_M03_SERIE1_07.Cells [7,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB7,0] ;
                                VI_LINHAS := VI_LINHAS + 1;
                                STGR_M03_SERIE1_07.RowCount := VI_LINHAS;
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE1_07.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE1_07.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 3 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 5 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 6 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 7 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 8 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 9 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 10 DO
                        BEGIN
                            STGR_M03_SERIE1_06.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                            STGR_M03_SERIE1_06.Cells [1,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                            STGR_M03_SERIE1_06.Cells [2,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                            STGR_M03_SERIE1_06.Cells [3,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                            STGR_M03_SERIE1_06.Cells [4,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                            STGR_M03_SERIE1_06.Cells [5,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                            STGR_M03_SERIE1_06.Cells [6,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB6,0] ;
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_M03_SERIE1_06.RowCount := VI_LINHAS;
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE1_06.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE1_06.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 4 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 6 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 7 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 8 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 9 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 10 DO
                    BEGIN
                        STGR_M03_SERIE1_05.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                        STGR_M03_SERIE1_05.Cells [1,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                        STGR_M03_SERIE1_05.Cells [2,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                        STGR_M03_SERIE1_05.Cells [3,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                        STGR_M03_SERIE1_05.Cells [4,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                        STGR_M03_SERIE1_05.Cells [5,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB5,0] ;
                        VI_LINHAS := VI_LINHAS + 1;
                        STGR_M03_SERIE1_05.RowCount := VI_LINHAS;
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE1_05.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE1_05.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 5 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 7 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 8 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 9 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 10 DO
                BEGIN
                        STGR_M03_SERIE1_04.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                        STGR_M03_SERIE1_04.Cells [1,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB1,0] ;
                        STGR_M03_SERIE1_04.Cells [2,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB2,0] ;
                        STGR_M03_SERIE1_04.Cells [3,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB3,0] ;
                        STGR_M03_SERIE1_04.Cells [4,VI_LINHAS] := STGR_M03_SERIE1_INICIAL.Cells[VI_AN_COMB4,0] ;
                        VI_LINHAS := VI_LINHAS + 1;
                        STGR_M03_SERIE1_04.RowCount := VI_LINHAS;
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE1_04.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE1_04.Repaint;



    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 1 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 3 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 4 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 5 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 6 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 7 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 8 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 9 DO
                            BEGIN
                                FOR VI_AN_COMB8 :=VI_AN_COMB7+1 TO 10 DO
                                BEGIN
                                    STGR_M03_SERIE2_08.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                    STGR_M03_SERIE2_08.Cells [1,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                                    STGR_M03_SERIE2_08.Cells [2,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                                    STGR_M03_SERIE2_08.Cells [3,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                                    STGR_M03_SERIE2_08.Cells [4,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                                    STGR_M03_SERIE2_08.Cells [5,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                                    STGR_M03_SERIE2_08.Cells [6,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB6,0] ;
                                    STGR_M03_SERIE2_08.Cells [7,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB7,0] ;
                                    STGR_M03_SERIE2_08.Cells [8,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB8,0] ;
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_M03_SERIE2_08.RowCount := VI_LINHAS;
                                END; //  FOR VI_AN_COMB8
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE2_08.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE2_08.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 2 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 4 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 5 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 6 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 7 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 8 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 9 DO
                        BEGIN
                            FOR VI_AN_COMB7 :=VI_AN_COMB6+1 TO 10 DO
                            BEGIN
                                STGR_M03_SERIE2_07.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                                STGR_M03_SERIE2_07.Cells [1,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                                STGR_M03_SERIE2_07.Cells [2,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                                STGR_M03_SERIE2_07.Cells [3,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                                STGR_M03_SERIE2_07.Cells [4,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                                STGR_M03_SERIE2_07.Cells [5,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                                STGR_M03_SERIE2_07.Cells [6,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB6,0] ;
                                STGR_M03_SERIE2_07.Cells [7,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB7,0] ;
                                VI_LINHAS := VI_LINHAS + 1;
                                STGR_M03_SERIE2_07.RowCount := VI_LINHAS;
                            END; //  FOR VI_AN_COMB7
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE2_07.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE2_07.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 3 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 5 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 6 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 7 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 8 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 9 DO
                    BEGIN
                        FOR VI_AN_COMB6 :=VI_AN_COMB5+1 TO 10 DO
                        BEGIN
                            STGR_M03_SERIE2_06.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                            STGR_M03_SERIE2_06.Cells [1,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                            STGR_M03_SERIE2_06.Cells [2,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                            STGR_M03_SERIE2_06.Cells [3,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                            STGR_M03_SERIE2_06.Cells [4,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                            STGR_M03_SERIE2_06.Cells [5,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                            STGR_M03_SERIE2_06.Cells [6,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB6,0] ;
                            VI_LINHAS := VI_LINHAS + 1;
                            STGR_M03_SERIE2_06.RowCount := VI_LINHAS;
                        END;// FOR VI_AN_COMB6
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE2_06.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE2_06.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 4 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 6 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 7 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 8 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 9 DO
                BEGIN
                    FOR VI_AN_COMB5 :=VI_AN_COMB4+1 TO 10 DO
                    BEGIN
                        STGR_M03_SERIE2_05.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                        STGR_M03_SERIE2_05.Cells [1,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                        STGR_M03_SERIE2_05.Cells [2,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                        STGR_M03_SERIE2_05.Cells [3,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                        STGR_M03_SERIE2_05.Cells [4,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                        STGR_M03_SERIE2_05.Cells [5,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB5,0] ;
                        VI_LINHAS := VI_LINHAS + 1;
                        STGR_M03_SERIE2_05.RowCount := VI_LINHAS;
                    END;  //  FOR VI_AN_COMB5
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE2_05.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE2_05.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 5 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 7 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 8 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 9 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 10 DO
                BEGIN
                        STGR_M03_SERIE2_04.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                        STGR_M03_SERIE2_04.Cells [1,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB1,0] ;
                        STGR_M03_SERIE2_04.Cells [2,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB2,0] ;
                        STGR_M03_SERIE2_04.Cells [3,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB3,0] ;
                        STGR_M03_SERIE2_04.Cells [4,VI_LINHAS] := STGR_M03_SERIE2_INICIAL.Cells[VI_AN_COMB4,0] ;
                        VI_LINHAS := VI_LINHAS + 1;
                        STGR_M03_SERIE2_04.RowCount := VI_LINHAS;
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE2_04.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE2_04.Repaint;




    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 1 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 2 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 3 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 4 DO
            BEGIN
                FOR VI_AN_COMB4 :=VI_AN_COMB3+1 TO 5 DO
                BEGIN
                        STGR_M03_SERIE3_04.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                        STGR_M03_SERIE3_04.Cells [1,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB1,0] ;
                        STGR_M03_SERIE3_04.Cells [2,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB2,0] ;
                        STGR_M03_SERIE3_04.Cells [3,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB3,0] ;
                        STGR_M03_SERIE3_04.Cells [4,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB4,0] ;
                        VI_LINHAS := VI_LINHAS + 1;
                        STGR_M03_SERIE3_04.RowCount := VI_LINHAS;
                END;// FOR VI_AN_COMB4
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE3_04.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE3_04.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 2 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 3 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 4 DO
        BEGIN
            FOR VI_AN_COMB3 :=VI_AN_COMB2+1 TO 5 DO
            BEGIN
                STGR_M03_SERIE3_03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                STGR_M03_SERIE3_03.Cells [1,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB1,0] ;
                STGR_M03_SERIE3_03.Cells [2,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB2,0] ;
                STGR_M03_SERIE3_03.Cells [3,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB3,0] ;
                VI_LINHAS := VI_LINHAS + 1;
                STGR_M03_SERIE3_03.RowCount := VI_LINHAS;
            END; // FOR VI_AN_COMB3
            STGR_M03_SERIE3_03.Repaint;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE3_03.Repaint;

    // ================================================
    // ||||========================================||||
    // |||| 	SÉRIE 3 - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
    VI_LINHAS := 0;
    FOR VI_AN_COMB1:= 1 TO 4 DO
    BEGIN
        FOR VI_AN_COMB2 :=VI_AN_COMB1+1 TO 5 DO
        BEGIN
                STGR_M03_SERIE3_02.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS) ;
                STGR_M03_SERIE3_02.Cells [1,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB1,0] ;
                STGR_M03_SERIE3_02.Cells [2,VI_LINHAS] := STGR_M03_SERIE3_INICIAL.Cells[VI_AN_COMB2,0] ;
                VI_LINHAS := VI_LINHAS + 1;
                STGR_M03_SERIE3_02.RowCount := VI_LINHAS;
        END; // FOR VI_AN_COMB2
    END; // FOR VI_AN_COMB1
    STGR_M03_SERIE3_02.Repaint;

     SELF.IBQ_COMBINACOES.Close;
     SELF.IBQ_COMBINACOES.Open;
     IF NOT(SELF.IBTransaction1.Active) THEN SELF.IBTransaction1.StartTransaction;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_03_DEFINICAO')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_03_DADOS')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_03_DADOS_TEMP')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear        ;              
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('SELECT * FROM FILTRO_03_DEFINICAO; ')  ;
     SELF.IBQ_COMBINACOES.Open;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_03_DEFINICAO SET FLAG_FILTRAR =''N'', FLAG_GRAVAR= ''N'';')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.IBQ_COMBINACOES.SQL.Clear;
     SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
     SELF.IBQ_COMBINACOES.ExecSQL;
     SELF.Repaint;

     BT_GERAR_MENU.Enabled := TRUE;
          SHOWMESSAGE('PREPARAR - OK');
end;



procedure T_F_GERADOR_03_M1.BT_GERAR_MENUClick(Sender: TObject);
begin
     PA_GERAR.Visible := TRUE;
     PA_GERAR.Enabled := TRUE;
     PA_GERAR.Top  := 255;
     PA_GERAR.Left := 450;
     PA_GERAR.Repaint;
end;



procedure T_F_GERADOR_03_M1.BBT_F03_AClick(Sender: TObject);
var
    VI_CONTAR1: INTEGER;
begin
    STGR_COMBINACOES_15F03.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_A_.Click;

    showmessage('PROCESSAMENTO EFETUADO');
end;



procedure T_F_GERADOR_03_M1.BBT_F03_BClick(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15F03.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_B_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;



procedure T_F_GERADOR_03_M1.BBT_F03_CClick(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15F03.RowCount :=1;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;



procedure T_F_GERADOR_03_M1.BBT_F03_DClick(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15F03.RowCount :=0;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_A_.Click;
    BBT_F03_B_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;



procedure T_F_GERADOR_03_M1.BBT_F03_EClick(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15F03.RowCount :=0;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_A_.Click;
    BBT_F03_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;


procedure T_F_GERADOR_03_M1.BBT_F03_FClick(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15F03.RowCount :=0;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_B_.Click;
    BBT_F03_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;



procedure T_F_GERADOR_03_M1.BBT_F03_GClick(Sender: TObject);
var
    VI_CONTAR1 : INTEGER;
begin
    STGR_COMBINACOES_15F03.RowCount :=0;
    FOR VI_CONTAR1 := 1 TO 15 DO
        STGR_COMBINACOES_15F03.Cells[VI_CONTAR1,0] := '0';
    STGR_COMBINACOES_15F03.Repaint;
    BBT_F03_A_.Click;
    BBT_F03_B_.Click;
    BBT_F03_C_.Click;
    showmessage('PROCESSAMENTO EFETUADO');
end;



procedure T_F_GERADOR_03_M1.BBT_M03_SIMULAR_AClick(Sender: TObject);
(*
var
    VI_CONTAR1, VI_CONTAR2, VI_CONTAR3, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS : INTEGER;
    VI_QTD1, VI_QTD2, VI_QTD3, VI_QTD4, VI_CONTADOR, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
    VC_CMP_ORIGEM, VC_CMP_B : STRING;    *)
begin
(*
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA - ANÁLISE COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
        STGR_COMBINACOES_15M31.RowCount :=0;
        STGR_COMBINACOES_15M32.RowCount :=0;
        STGR_COMBINACOES_15M33.RowCount :=0;
        STGR_COMBINACOES_15M34.RowCount :=0;
        FOR VI_CONTADOR := 1 TO 15 DO
        BEGIN
            STGR_COMBINACOES_15M31.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M32.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M33.Cells [VI_CONTADOR, 0] :=  '0' ;
            STGR_COMBINACOES_15M34.Cells [VI_CONTADOR, 0] :=  '0' ;
        END; // FOR VI_CONTADOR
        STGR_COMBINACOES_15M31.Repaint;
        STGR_COMBINACOES_15M32.Repaint;
        STGR_COMBINACOES_15M33.Repaint;
        STGR_COMBINACOES_15M34.Repaint;
        PGBR_M02.Position := 0;
        PGBR_M02.Repaint;
        // ************************************************************
    	// ** Série 1 c/ 5 e Série 2 c/ 8 e série 2 c/ 4 combinações **
	    // ************************************************************
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    VI_QTD3 := 0;
    VI_QTD4 := 0;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINAÇÕES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 8 2               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 7 2               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '8 5 2               .';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Refresh;    
    LA_TXT21.Caption := 'ANALISANDO 5 8 2  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_05.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                BEGIN
                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM];
                    VC_CMP_B      := STGR_M03_SERIE1_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1] ;
                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_08.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                            BEGIN
                                VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                VC_CMP_B      := STGR_M03_SERIE2_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2] ;
                                IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_02.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 2 DO
                                    BEGIN
                                        VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                        VC_CMP_B      := STGR_M03_SERIE3_02.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3] ;
                                        IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 2 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M31.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M31.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M31.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M31.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M31.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    Self.Repaint;
    PGBR_M02.Position := 25;
    PGBR_M02.Repaint;
    SLEEP(100);

    // ================================================
    // ||||========================================||||
    // |||| 	SEGUNDA - ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** Série 1 c/ 6 e Série 2 c/ 7e série 3 c/ 2 combinações **
	    // ************************************************************
    VI_QTD1 := VI_LINHAS;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINAÇÕES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';    
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 8 2 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 7 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '8 5 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    PA_PAN03.Refresh;
    LA_TXT11.Refresh;
    PA_PAN03.Repaint;
    LA_TXT21.Caption := 'ANALISANDO 6 7 2  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_06.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                BEGIN
                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM];
                    VC_CMP_B      := STGR_M03_SERIE1_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1] ;
                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_07.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                            BEGIN
                            VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                            VC_CMP_B      := STGR_M03_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2] ;
                            IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_02.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 2 DO
                                    BEGIN
                                        VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                        VC_CMP_B      := STGR_M03_SERIE3_02.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3] ;
                                        IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 2 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M32.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M32.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M32.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M32.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M32.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' %';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    PGBR_M02.Position := 50;
    PGBR_M02.Repaint;
    SLEEP(100);

    // ================================================
    // ||||========================================||||
    // |||| 	TERCEIRA- ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** Série 1 c/ 7 e Série 2 c/ 6 e série 3 c/ 2 combinações **
	    // ************************************************************
    VI_QTD2 := VI_LINHAS;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINAÇÕES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';    
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 8 2 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 7 2 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '8 5 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    LA_TXT21.Caption := 'ANALISANDO: 7 6 2  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_07.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                BEGIN
                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM];
                    VC_CMP_B      := STGR_M03_SERIE1_07.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1] ;
                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 7 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_06.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                            BEGIN
                                VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                VC_CMP_B      := STGR_M03_SERIE2_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2] ;
                                IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_02.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 2 DO
                                    BEGIN
                                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                    VC_CMP_B      := STGR_M03_SERIE3_02.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3] ;
                                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 2 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M33.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M33.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M33.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M33.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M33.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    PGBR_M02.Position := 75;
    PGBR_M02.Repaint;
    SLEEP(100);


    // ================================================
    // ||||========================================||||
    // |||| 	QUARTA  -  ÁLISES COMBINATÓRIAS    ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** Série 1 c/ 8 e Série 2 c/ 5 e série 3 c/ 2 combinações **
	    // ************************************************************
    VI_QTD3 := VI_LINHAS;
    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINAÇÕES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';    
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 8 2 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 7 2 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2 - OK: ' + INTtoSTR(VI_QTD3) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '8 5 2';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    LA_TXT21.Caption := 'ANALISANDO- 8 5 2  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 0 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_08.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 8 DO
                BEGIN
                    VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM];
                    VC_CMP_B      := STGR_M03_SERIE1_08.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1] ;
                    IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 8 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_05.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                            BEGIN
                                VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                VC_CMP_B      := STGR_M03_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2] ;
                                IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_02.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 2 DO
                                    BEGIN
                                        VC_CMP_ORIGEM := STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM];
                                        VC_CMP_B      := STGR_M03_SERIE3_02.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3] ;
                                        IF ( STRtoINT(VC_CMP_ORIGEM) = STRtoINT(VC_CMP_B)) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 2 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15M34.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15M34.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15M34.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15M34.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M34.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        LA_TXT31.Repaint;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    VI_QTD4 := VI_LINHAS;
    LA_TXT11.Caption := 'TOTAL DE COMBINAÇÕES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 5 8 2 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 6 7 2 - OK: ' + INTtoSTR(VI_QTD2);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 7 6 2 - OK: ' + INTtoSTR(VI_QTD3) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ ' 8 5 2 - OK: ' + INTtoSTR(VI_QTD4) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2 + VI_QTD3 + VI_QTD4);
    LA_TXT11.Repaint;
    PGBR_M02.Position := 100;
    PGBR_M02.Repaint;
    SLEEP(100);    
    SHOWMESSAGE('3-A - OK');

    
    // =================================
    // ||||=========================||||
    // |||| GERANDO OS RESULTADOS   ||||
    // ||||=========================||||
    // =================================
    MEM_COMBINACOES_TODAS.Clear;
    MEM_COMBINACOES_TODAS.Lines.Add('5 8 2 - OK: ' + INTtoSTR(VI_QTD1));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M31.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M31.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Lines.Add('');
    MEM_COMBINACOES_TODAS.Lines.Add('--------------------------------------');
    MEM_COMBINACOES_TODAS.Lines.Add('6 7 2 - OK: ' + INTtoSTR(VI_QTD2));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M32.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M32.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Lines.Add('');
    MEM_COMBINACOES_TODAS.Lines.Add('--------------------------------------');
    MEM_COMBINACOES_TODAS.Lines.Add('7 6 2 - OK: ' + INTtoSTR(VI_QTD3));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M33.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M33.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Lines.Add('');
    MEM_COMBINACOES_TODAS.Lines.Add('--------------------------------------');
    MEM_COMBINACOES_TODAS.Lines.Add('8 5 2 - OK: ' + INTtoSTR(VI_QTD4));
    FOR VI_CONTAR1 := 0 TO STGR_COMBINACOES_15M34.RowCount-1 DO
    BEGIN
        VC_COMBINACOES :='';
        FOR VI_AN_COMB1 := 1 TO 15 DO
        BEGIN
            VC_COMBINACOES := VC_COMBINACOES + STGR_COMBINACOES_15M34.Cells[VI_AN_COMB1,VI_CONTAR1] +'  ';
        END; // FOR VI_AN_COMB1
        MEM_COMBINACOES_TODAS.Lines.Add(VC_COMBINACOES) ;
    END; // FOR VI_CONTAR

    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.SelectAll;
    MEM_COMBINACOES_TODAS.CopyToClipboard;
    MEM_COMBINACOES_TODAS.Repaint;
    MEM_COMBINACOES_TODAS.Lines.SaveToFile('C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT');
    winExec('Notepad.exe C:\CXLOTOFACIL\COMBINACOES_15_TODAS_VERIFICADAS.TXT', sw_shownormal);   // Nesse caso, abre um arquivo txt chamado teste.txt localizado no meu Desktop
    *)
   showmessage('PROCESSAMENTO EFETUADO');
end;

procedure T_F_GERADOR_03_M1.BBT_M03_SIMULAR_bClick(Sender: TObject);
begin
   //
end;

procedure T_F_GERADOR_03_M1.BBT_M03_SIMULAR_CClick(Sender: TObject);
begin
   //
end;



procedure T_F_GERADOR_03_M1.BBT_F03_A_Click(Sender: TObject);
(*
var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR3, VI_CONTAR_CELULAS_ORIGEM_A, VI_CONTAR_CELULAS_ORIGEM_B, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS : INTEGER;
    VI_QTD1, VI_QTD2, VI_CONTADOR, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
    VC_CMP_ORIGEM, VC_CMP_B : STRING;     *)
begin
    // ================================================
    // ||||========================================||||
    // |||| 	PRIMEIRA - ANÁLISE COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** Série 1 c/ 5 e Série 2 c/ 6 e série 3 c/ 4 combinações **
	    // ************************************************************
         (*
    VI_QTD1 := 0;
    VI_QTD2 := 0;
    VI_LINHAS := 0;
    if (STGR_COMBINACOES_15F03.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15F03.RowCount;
    LA_TXT11.Caption := 'TOTAL DE COMBINAÇÕES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 6 4';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ';
    LA_TXT11.Refresh;
    LA_TXT21.Caption := 'ANALISANDO 5 6 4  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 1 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_05.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_06.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_04.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15F03.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
                                END; // IF (VI_CONTAR_QUANTIDADE
                                STGR_COMBINACOES_15F03.Repaint;
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15M32.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        SELF.Repaint;
        LA_TXT31.Repaint;
        if (VI_CONTAR_ORIGEM / 250)=(VI_CONTAR_ORIGEM DIV 250) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;  // FOR VI_CONTAR_ORIGEM:= 0
    //PGBR_M02.Position := 50;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    SELF.Repaint;
    SLEEP(50);


    // ================================================
    // ||||========================================||||
    // |||| 	TERCEIRA- ANÁLISES COMBINATÓRIAS   ||||
    // ||||========================================||||
    // ================================================
        // ************************************************************
    	// ** Série 1 c/ 6 e Série 2 c/ 5 e série 3 c/ 4 combinações **
	    // ************************************************************
    VI_QTD1 := VI_LINHAS;
//    VI_LINHAS := 0;
    LA_TXT11.Caption := 'TOTAL DE COMBINAÇÕES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 6 4 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD2);
    LA_TXT11.Repaint;
    LA_TXT21.Caption := 'ANALISANDO: 6 5 4  ';
    LA_TXT21.Refresh;
    FOR VI_CONTAR_ORIGEM:= 1 TO (STGR_COMBINACOES_15.RowCount-1) DO
    BEGIN
        FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_06.RowCount-1) DO
        BEGIN
            VI_CONTAR_QUANTIDADE := 0;
            //IF (VI_CONTAR1 = 104) THEN SHOWMESSAGE('104');
            FOR VI_CONTAR_CELULAS_ORIGEM_A := 1 TO 15 DO
            BEGIN
                // --> CONFERINDO CÉLULA POR CÉLULA NA PRIMEIRA SÉRIE
                FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                BEGIN
                    IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_A,VI_CONTAR_ORIGEM])
                    = STRtoINT(STGR_M03_SERIE1_06.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR1]) ) THEN
                    BEGIN
                        VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                        BREAK;
                    END; // IF ( STGR_COMBINACOES_15
                END; // FOR VI_CONTAR_CELULAS_DESTINO
            END; // FOR VI_CONTAR_CELULAS_ORIGEM
            // --> CASO TODAS AS COMBINAÇÕES SEJA VERDADEIRAS, VERIFICIAR NA PRÓXIMA SÉRIE
            IF (VI_CONTAR_QUANTIDADE = 6 ) THEN
            BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_05.RowCount-1) DO
                    BEGIN
                        //IF (VI_CONTAR2 = 20) THEN SHOWMESSAGE('20');
                        VI_CONTAR_QUANTIDADE := 0;
                        FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                        BEGIN
                            FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                            BEGIN
                                IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                = STRtoINT(STGR_M03_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR2]) ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                    BREAK;
                                END; // IF ( STGR_COMBINACOES_15
                            END; // FOR VI_CONTAR_CELULAS_DESTINO
                        END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                        IF (VI_CONTAR_QUANTIDADE = 5 ) THEN
                        BEGIN
                            FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_04.RowCount-1) DO
                            BEGIN
                                //IF (VI_CONTAR1 = 2) THEN SHOWMESSAGE('2');
                                //LA_TXT11.Caption :='SEQUENCIA 2 EM:' + INTtoSTR(VI_CONTAR2);
                                //LA_TXT11.Repaint;
                                VI_CONTAR_QUANTIDADE := 0;
                                FOR VI_CONTAR_CELULAS_ORIGEM_B := 1 TO 15 DO
                                BEGIN
                                    FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                                    BEGIN
                                        IF (STRtoINT(STGR_COMBINACOES_15.Cells [VI_CONTAR_CELULAS_ORIGEM_B,VI_CONTAR_ORIGEM])
                                        = STRtoINT(STGR_M03_SERIE3_04.Cells [VI_CONTAR_CELULAS_DESTINO, VI_CONTAR3]) ) THEN
                                        BEGIN
                                            VI_CONTAR_QUANTIDADE := VI_CONTAR_QUANTIDADE +1;
                                            BREAK;
                                        END; // IF ( STGR_COMBINACOES_15
                                    END; // FOR VI_CONTAR_CELULAS_DESTINO
                                END; // FOR VI_CONTAR_CELULAS_ORIGEM_B
                                IF (VI_CONTAR_QUANTIDADE = 4 ) THEN
                                BEGIN
                                    VI_CONTAR_QUANTIDADE := 0;
                                    STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                                    FOR VI_CONTAR15:=1 TO 15 DO
                                    BEGIN
                                        STGR_COMBINACOES_15F03.Cells [VI_CONTAR15,VI_LINHAS] := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Caption := (STGR_COMBINACOES_15.Cells [VI_CONTAR15,VI_CONTAR_ORIGEM]);
                                        //LA_TXT11.Repaint;
                                    END ;// FOR VI_CONTAR15
                                    VI_LINHAS := VI_LINHAS + 1;
                                    STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
                                    STGR_COMBINACOES_15F03.Repaint;
                                END; // IF (VI_CONTAR_QUANTIDADE
                                STGR_COMBINACOES_15F03.Repaint;
                            END; // FOR VI_CONTAR3
                        END; // IF (VI_CONTAR_QUANTIDADE
                        // --> SENDO AS COMBINAÇÕES VERADEIRAS EM AMBAS, GERAR UMA COPIA DA ORIGINAL
                    END; // FOR VI_CONTAR2
            END; // IF (VI_CONTAR_QUANTIDADE
        END; // FOR VI_CONTAR_1 :=0
        STGR_COMBINACOES_15F03.Repaint;
        LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR_ORIGEM  / ((STGR_COMBINACOES_15.RowCount)-1) *100) ) + ' % ';
        LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
        self.Repaint;
        LA_TXT31.Repaint;
        if (VI_CONTAR_ORIGEM / 250)=(VI_CONTAR_ORIGEM DIV 250) then
        BEGIN
              Self.WindowState := wsMinimized;
              Self.WindowState :=  wsNormal;
              SELF.Repaint;
              SLEEP(5);
              Self.Refresh;
              Self.Repaint;
              Self.Refresh;
        END;
    END;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    //PGBR_M02.Position := 75;
    SELF.Repaint;
    SLEEP(50);
    VI_QTD2 := VI_LINHAS - VI_QTD1;
    LA_TXT11.Caption := 'TOTAL DE COMBINAÇÕES ->' + INTtoSTR(STGR_COMBINACOES_15.RowCount) +'<-';
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 6 4 - OK: ' + INTtoSTR(VI_QTD1);
    LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4 - OK: ' + INTtoSTR(VI_QTD2) ;
    LA_TXT11.Caption := LA_TXT11.Caption +#13+ 'FILTRADOS: ' + INTtoSTR(VI_QTD1 + VI_QTD1);
    LA_TXT11.Repaint;
    Self.WindowState := wsMinimized;
    Self.WindowState :=  wsNormal;
    PGBR_M02.Position := 100;
    PGBR_M02.Repaint;
    SLEEP(50);*)
end;



procedure T_F_GERADOR_03_M1.BBT_F03_B_Click(Sender: TObject);
begin
 //
end;



procedure T_F_GERADOR_03_M1.BBT_F03_C_Click(Sender: TObject);
begin
//
end;



procedure T_F_GERADOR_03_M1.BBT_F03_ENCERRARClick(Sender: TObject);
begin
//
end;


procedure T_F_GERADOR_03_M1.BBT_GERARClick(Sender: TObject);

    PROCEDURE PR_GRAVAR_DADOS (VC_BEGIN_END: STRING; OUT VI_LINHAS2:INTEGER; VI_COMBINACOES_C1:INTEGER; VI_TOTCOMBINACOES_C1:INTEGER);
    VAR
        VI_AN_COMB1, VI_CNTCELULAS : INTEGER;
        VC_QUERY : STRING;
        VC_COMBINACOES15 : STRING;
    BEGIN
        IF (VC_BEGIN_END = 'INICIO') THEN
        BEGIN

            VC_QUERY  := 'INSERT INTO FILTRO_03_DEFINICAO (MODO, DATA_DEFINICAO, HORA_DEFINICAO, QTD_DADOS) VALUES('#39+ CB_MODO_FILTRO.Text;
              VC_QUERY  := VC_QUERY + #39 +',' +#39+ STRINGREPLACE(FORMATDATETIME('d/m/yyyy',DATE()),'/','.',[]) + #39 +',' +#39+ FORMATDATETIME('h:n:s',time()) ;
            VC_QUERY  := VC_QUERY   + #39+ ' ,''0'' );';
                SELF.IBQ_COMBINACOES.SQL.Clear;
                SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                SELF.IBQ_COMBINACOES.ExecSQL;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;                
        END; // IF (VC_BEGIN_END = 'SIM')
       IF ((VI_LINHAS2 MOD 9995) = 0)        {
            or ((VI_LINHAS2 MOD 3997) = 0)
            or ((VI_LINHAS2  MOD 3999) = 0)   }
            OR (VC_BEGIN_END = 'ENCERRANDO ETAPA')
            OR (VC_BEGIN_END = 'FIM')
            THEN
        BEGIN
            // ************************
            // **   BANCO DE DADOS   **
            // ************************
            STGR_COMBINACOES_15F03.Repaint;
            Self.Repaint;
           // SHOWMESSAGE ('DADOS-1 -> Gerar o Banco de Dados');
           LA_TXT41.Caption := INTtoSTR(VI_LINHAS2) + '     ';
           LA_TXT41.Caption;
            FOR VI_AN_COMB1:= 1 TO  VI_LINHAS2 DO
            BEGIN
                // obs: verificar o evento BeFOREInSERT DA ibq_COMBINACOES
                VC_COMBINACOES15 :='';
                FOR VI_CNTCELULAS := 1 TO 15 DO
                BEGIN
                    VC_COMBINACOES15 := VC_COMBINACOES15 + TRIM(STGR_COMBINACOES_15F03.Cells[VI_CNTCELULAS,VI_AN_COMB1]) +' ';
                END; // FOR VI_CNTCELULAS

                //IF (TRIM(STGR_COMB05.Cells[1,VI_AN_COMB1]) = 'V') THEN
                //BEGIN
                     VC_QUERY  := 'INSERT INTO FILTRO_03_DADOS_TEMP (DADOS ) VALUES(' +#39+ TRIM(VC_COMBINACOES15)
                           + #39 +');';
                     SELF.IBQ_COMBINACOES.SQL.Clear;
                     SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
                     SELF.IBQ_COMBINACOES.ExecSQL;
                //END; // IF
            END; // FOR VI_AN_COMB1
            SELF.IBQ_COMBINACOES.SQL.Clear;
            VC_QUERY  := 'UPDATE FILTRO_03_DEFINICAO SET CONTADOR_C1 =' + #39+ INTtoSTR(VI_AN_COMB1) +#39+';';
            SELF.IBQ_COMBINACOES.SQL.Add(VC_QUERY)  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
            VI_LINHAS2:=1;
            STGR_COMBINACOES_15F03.RowCount := VI_LINHAS2;
            SLEEP(9);
            IF {((VI_LINHAS2/7998) = (VI_LINHAS2 DIV 7998))
                or ((VI_LINHAS2/7999) = (VI_LINHAS2 DIV 7999))
                or ((VI_LINHAS2/8000) = (VI_LINHAS2 DIV 8000))
                OR }(VC_BEGIN_END = 'FIM') THEN
            BEGIN
               {
               IF VC_BEGIN_END = 'FIM' THEN
               BEGIN
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_03_DADOS')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_03_100REPET01' )  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                    SELF.IBQ_COMBINACOES.SQL.Clear;
                    SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_03_DADOS_TEMP')  ;
                    SELF.IBQ_COMBINACOES.ExecSQL;
                       SELF.IBQ_COMBINACOES.SQL.Clear;
                       SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
                       SELF.IBQ_COMBINACOES.ExecSQL;
               END;// IF }

                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('execute procedure FILTRO_03_100REPET01' )  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
                  SELF.IBQ_COMBINACOES.SQL.Clear;
                  SELF.IBQ_COMBINACOES.SQL.Add('DELETE FROM FILTRO_03_DADOS_TEMP')  ;
                  SELF.IBQ_COMBINACOES.ExecSQL;
             end;
             SELF.IBQ_COMBINACOES.SQL.Clear;
             SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
             SELF.IBQ_COMBINACOES.ExecSQL;
        END; // IF (VI_TOTALGERADO/1000)
       // IF (VC_FINALIZAR = 'SIM') THEN SHOWMESSAGE('ETAPA - OK');
    END; // PROCEDURE GRAVAR_DADOS



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
        FOR VI_CONTAR :=1 TO 15 DO
        BEGIN
            STRGR_TODOS_NUMEROS.Cells [ (STRtoINT(STGR_COMBINACOES_15F03.Cells[VI_CONTAR,VI_LINHAS9])) ,1]:='V';
        END; // FOR VI_CONTAR1
        VI_CNTCELULAS := 1;
        FOR VI_CONTAR :=1 TO 25 DO
        BEGIN
            IF (STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,1]='V') THEN
            BEGIN
                STGR_COMBINACOES_15F03.Cells [VI_CNTCELULAS, VI_LINHAS9] := RIGHTSTR ('0'+(STRGR_TODOS_NUMEROS.Cells[VI_CONTAR,0]),2) ;
                VI_CNTCELULAS := VI_CNTCELULAS + 1;
            END; // IF (STRGR_TODOS_NUMEROS
        END; // FOR VI_CONTAR
     end; // PROCEDURE ORDENAR_SIMULACAO_15


var
    VI_CONTAR_ORIGEM, VI_CONTAR1, VI_CONTAR2, VI_CONTAR3, VI_CONTAR_CELULAS_DESTINO,
    VI_CONTAR_QUANTIDADE, VI_CONTAR15, VI_LINHAS : INTEGER;
    VI_CONTADOR, VI_AN_COMB1 : INTEGER;
    VC_COMBINACOES : STRING;
    VC_CMP_ORIGEM, VC_CMP_B : STRING;
begin
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     LA_gINICIO_100REPET.Caption := DATEtoSTR(DATE()) +' - '+ TIMEtoSTR(TIME()) ;     
     FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 25 DO
     BEGIN
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR_CELULAS_DESTINO,0] :=INTtoSTR(VI_CONTAR_CELULAS_DESTINO);
          STRGR_TODOS_NUMEROS.Cells[VI_CONTAR_CELULAS_DESTINO,1] :='F';
     END; // FOR VI_CONTAR
               VI_LINHAS := 1;
     PR_GRAVAR_DADOS ('INICIO',VI_LINHAS, 1, 2);
     IF (CB_MODO_FILTRO.ItemIndex =0) OR (CB_MODO_FILTRO.ItemIndex =3) OR (CB_MODO_FILTRO.ItemIndex =4) OR (CB_MODO_FILTRO.ItemIndex =6) THEN
     BEGIN
               // ================================================
               // ||||========================================||||
               // |||| 	PRIMEIRA - ANÁLISE COMBINATÓRIAS   ||||
               // ||||========================================||||
               // ================================================
               // ************************************************************
               // ** Série 1 c/ 5 e Série 2 c/ 6 e série 3 c/ 4 combinações **
               // ************************************************************

               if (STGR_COMBINACOES_15F03.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15F03.RowCount;
               LA_TXT11.Caption := '5 6 4';
               LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4';
               LA_TXT11.Refresh;
               LA_TXT21.Caption := 'ANALISANDO 5 6 4  ';
               LA_TXT21.Refresh;
               VI_LINHAS := 1;
               STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
               FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_05.RowCount-1)-0 DO
               BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_06.RowCount-1)-0 DO
                    BEGIN
                         FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_04.RowCount-1) DO
                         BEGIN
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO,VI_LINHAS] := (STGR_M03_SERIE1_05.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR1]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO+5,VI_LINHAS] := (STGR_M03_SERIE2_06.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR2]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO+5+6,VI_LINHAS] := (STGR_M03_SERIE3_04.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR3]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              PR_ORDENAR_SIMULACAO_15 (VI_LINHAS);
                              STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                              PR_GRAVAR_DADOS ('NAO', VI_LINHAS, VI_CONTAR1, TRUNC(STGR_M03_SERIE1_05.RowCount-1));
                              VI_LINHAS := VI_LINHAS + 1;
                              STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
                         END; // FOR VI_CONTAR3
                         IF  (VI_CONTAR2 MOD 10 =0) THEN
                              STGR_COMBINACOES_15F03.Repaint;
                    END; // FOR VI_CONTAR2
                    LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR1  / ((STGR_M03_SERIE1_05.RowCount)-1) *100) ) + ' % ';
                    LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
                    SELF.Repaint;
                    LA_TXT31.Repaint;
                    //PR_GRAVAR_DADOS ('NAO', VI_LINHAS, VI_CONTAR1, TRUNC(STGR_M03_SERIE1_06.RowCount-1));
               END; // FOR VI_CONTAR_1 :=0
               STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
               STGR_COMBINACOES_15F03.Repaint;
               LA_TXT31.Caption :=  '100 % ';
               LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
               SELF.Repaint;
               LA_TXT31.Repaint;
               SLEEP(900);               
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
               PR_GRAVAR_DADOS ('ENCERRANDO ETAPA', VI_LINHAS, 1, 2);

              // =========================================
              // ||||=================================||||
              // |||| 	ANÁLISES COMBINATÓRIAS   ||||
              // ||||=================================||||
              // =========================================
                  // ************************************************************
                  // ** Série 1 c/ 6 e Série 2 c/ 5 e série 3 c/ 4 combinações **
                  // ************************************************************

               if (STGR_COMBINACOES_15F03.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15F03.RowCount;
              LA_TXT11.Caption := 'TOTAL DE COMBINAÇÕES ->' + INTtoSTR(STGR_COMBINACOES_15F03.RowCount) +'<-';
              LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 6 4 - OK: ' + INTtoSTR(VI_LINHAS);
               LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4';
               LA_TXT11.Refresh;
               LA_TXT21.Caption := 'ANALISANDO 6 5 4  ';
               LA_TXT21.Refresh;
               VI_LINHAS := 1;
               STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
               FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_06.RowCount-1)-0 DO
               BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_05.RowCount-1)-0 DO
                    BEGIN
                         FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_04.RowCount-1) DO
                         BEGIN
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO,VI_LINHAS] := (STGR_M03_SERIE1_06.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR1]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO+6,VI_LINHAS] := (STGR_M03_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR2]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 4 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO+6+5,VI_LINHAS] := (STGR_M03_SERIE3_04.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR3]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              PR_ORDENAR_SIMULACAO_15 (VI_LINHAS);
                              STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                              PR_GRAVAR_DADOS ('NAO', VI_LINHAS, VI_CONTAR1, TRUNC(STGR_M03_SERIE1_06.RowCount-1));
                              VI_LINHAS := VI_LINHAS + 1;
                              STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;                              
                         END; // FOR VI_CONTAR3
                         IF  (VI_CONTAR2 MOD 10 =0) THEN
                              STGR_COMBINACOES_15F03.Repaint;
                    END; // FOR VI_CONTAR2
                    LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR1  / ((STGR_M03_SERIE1_06.RowCount)-1) *100) ) + ' % ';
                    LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
                    SELF.Repaint;
                    LA_TXT31.Repaint;
                    // PR_GRAVAR_DADOS ('NAO', VI_LINHAS, VI_CONTAR1, TRUNC(STGR_M03_SERIE1_06.RowCount-1));
               END; // FOR VI_CONTAR_1 :=0
               STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
               STGR_COMBINACOES_15F03.Repaint;
               LA_TXT31.Caption :=  '100 % ';
               LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
               SELF.Repaint;
               LA_TXT31.Repaint;
               LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 6 4 - OK: ';
               LA_TXT11.Caption := LA_TXT11.Caption +#13+  '6 5 4 - OK: ';
               LA_TXT11.Repaint;
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               PGBR_M02.Position := 100;
               PGBR_M02.Repaint;
               SLEEP(50);
               PR_GRAVAR_DADOS ('ENCERRANDO ETAPA', VI_LINHAS, 1, 2);
     END; // IF (CB_MODO_FILTRO.ItemIndex

     IF (CB_MODO_FILTRO.ItemIndex =1) OR (CB_MODO_FILTRO.ItemIndex =3) OR (CB_MODO_FILTRO.ItemIndex =5) OR (CB_MODO_FILTRO.ItemIndex =6) THEN
     BEGIN
               // ================================================
               // ||||========================================||||
               // |||| 	PRIMEIRA - ANÁLISE COMBINATÓRIAS   ||||
               // ||||========================================||||
               // ================================================
               // ************************************************************
               // ** Série 1 c/ 5 e Série 2 c/ 7 e série 3 c/ 3 combinações **
               // ************************************************************

               LA_TXT11.Caption := '5 7 3';
               LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 5 3';
               LA_TXT11.Refresh;
               LA_TXT21.Caption := 'ANALISANDO 5 7 3  ';
               LA_TXT21.Refresh;
               VI_LINHAS := 1;
               STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
               FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_05.RowCount-1)-0 DO
               BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_07.RowCount-1)-0 DO
                    BEGIN
                         FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_03.RowCount-1) DO
                         BEGIN
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO,VI_LINHAS] := (STGR_M03_SERIE1_05.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR1]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO+5,VI_LINHAS] := (STGR_M03_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR2]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 3 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO+5+7,VI_LINHAS] := (STGR_M03_SERIE3_03.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR3]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              PR_ORDENAR_SIMULACAO_15 (VI_LINHAS);
                              STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                              PR_GRAVAR_DADOS ('NAO', VI_LINHAS, VI_CONTAR1, TRUNC(STGR_M03_SERIE1_05.RowCount-1));
                              VI_LINHAS := VI_LINHAS + 1;
                              STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
                         END; // FOR VI_CONTAR3
                         IF  (VI_CONTAR2 MOD 10 =0) THEN
                              STGR_COMBINACOES_15F03.Repaint;
                    END; // FOR VI_CONTAR2
                    LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR1  / ((STGR_M03_SERIE1_05.RowCount)-1) *100) ) + ' % ';
                    LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
                    SELF.Repaint;
                    LA_TXT31.Repaint;
                    //PR_GRAVAR_DADOS ('NAO', VI_LINHAS, VI_CONTAR1, TRUNC(STGR_M03_SERIE1_06.RowCount-1));
               END; // FOR VI_CONTAR_1 :=0
               STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
               STGR_COMBINACOES_15F03.Repaint;
               LA_TXT31.Caption :=  '100 % ';
               LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
               SELF.Repaint;
               LA_TXT31.Repaint;
               SLEEP(900);               
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
               PR_GRAVAR_DADOS ('ENCERRANDO ETAPA', VI_LINHAS, 1, 2);

              // =========================================
              // ||||=================================||||
              // |||| 	ANÁLISES COMBINATÓRIAS   ||||
              // ||||=================================||||
              // =========================================
                  // ************************************************************
                  // ** Série 1 c/ 7 e Série 2 c/ 5 e série 3 c/ 3 combinações **
                  // ************************************************************

               if (STGR_COMBINACOES_15F03.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15F03.RowCount;
              LA_TXT11.Caption := LA_TXT11.Caption +#13+  '5 7 3 - OK: ' + INTtoSTR(VI_LINHAS);
               LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 5 3';
               LA_TXT11.Refresh;
               LA_TXT21.Caption := 'ANALISANDO 7 5 3  ';
               LA_TXT21.Refresh;
               VI_LINHAS := 1;
               STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
               FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_07.RowCount-1)-0 DO
               BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_05.RowCount-1)-0 DO
                    BEGIN
                         FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_03.RowCount-1) DO
                         BEGIN
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO,VI_LINHAS] := (STGR_M03_SERIE1_07.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR1]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 5 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO+7,VI_LINHAS] := (STGR_M03_SERIE2_05.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR2]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 3 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO+7+5,VI_LINHAS] := (STGR_M03_SERIE3_03.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR3]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              PR_ORDENAR_SIMULACAO_15 (VI_LINHAS);
                              STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                              PR_GRAVAR_DADOS ('NAO', VI_LINHAS, VI_CONTAR1, TRUNC(STGR_M03_SERIE1_07.RowCount-1));
                              VI_LINHAS := VI_LINHAS + 1;
                              STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;                              
                         END; // FOR VI_CONTAR3
                         IF  (VI_CONTAR2 MOD 10 =0) THEN
                              STGR_COMBINACOES_15F03.Repaint;
                    END; // FOR VI_CONTAR2
                    LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR1  / ((STGR_M03_SERIE1_07.RowCount)-1) *100) ) + ' % ';
                    LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
                    SELF.Repaint;
                    LA_TXT31.Repaint;
                    // PR_GRAVAR_DADOS ('NAO', VI_LINHAS, VI_CONTAR1, TRUNC(STGR_M03_SERIE1_06.RowCount-1));
               END; // FOR VI_CONTAR_1 :=0
               STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
               STGR_COMBINACOES_15F03.Repaint;
               LA_TXT31.Caption :=  '100 % ';
               LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
               SELF.Repaint;
               LA_TXT31.Repaint;
               LA_TXT11.Caption := '5 7 3 - OK: ' ;
               LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 5 3 - OK: ' ;
               LA_TXT11.Repaint;
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               PGBR_M02.Position := 100;
               PGBR_M02.Repaint;
               SLEEP(50);
               PR_GRAVAR_DADOS ('ENCERRANDO ETAPA', VI_LINHAS, 1, 2);
     END; // IF (CB_MODO_FILTRO.ItemIndex =1)

     IF (CB_MODO_FILTRO.ItemIndex =2) OR (CB_MODO_FILTRO.ItemIndex =4) OR (CB_MODO_FILTRO.ItemIndex =5) OR (CB_MODO_FILTRO.ItemIndex =6) THEN
     BEGIN
               // ================================================
               // ||||========================================||||
               // |||| 	PRIMEIRA - ANÁLISE COMBINATÓRIAS   ||||
               // ||||========================================||||
               // ================================================
               // ************************************************************
               // ** Série 1 c/ 6 e Série 7 c/ 6 e série 3 c/ 2 combinações **
               // ************************************************************

               if (STGR_COMBINACOES_15F03.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15F03.RowCount;
               LA_TXT11.Caption := '6 7 2';
               LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2';
               LA_TXT11.Refresh;
               LA_TXT21.Caption := 'ANALISANDO 6 7 2  ';
               LA_TXT21.Refresh;
               VI_LINHAS := 1;
               STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
               FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_06.RowCount-1)-0 DO
               BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_07.RowCount-1)-0 DO
                    BEGIN
                         FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_02.RowCount-1) DO
                         BEGIN
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO,VI_LINHAS] := (STGR_M03_SERIE1_06.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR1]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO+6,VI_LINHAS] := (STGR_M03_SERIE2_07.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR2]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 2 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO+6+7,VI_LINHAS] := (STGR_M03_SERIE3_02.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR3]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              PR_ORDENAR_SIMULACAO_15 (VI_LINHAS);
                              STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                              PR_GRAVAR_DADOS ('NAO', VI_LINHAS, VI_CONTAR1, TRUNC(STGR_M03_SERIE1_06.RowCount-1));
                              VI_LINHAS := VI_LINHAS + 1;
                              STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
                         END; // FOR VI_CONTAR3
                         IF  (VI_CONTAR2 MOD 10 =0) THEN
                              STGR_COMBINACOES_15F03.Repaint;
                    END; // FOR VI_CONTAR2
                    LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR1  / ((STGR_M03_SERIE1_06.RowCount)-1) *100) ) + ' % ';
                    LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
                    SELF.Repaint;
                    LA_TXT31.Repaint;
                    //PR_GRAVAR_DADOS ('NAO', VI_LINHAS, VI_CONTAR1, TRUNC(STGR_M03_SERIE1_06.RowCount-1));
               END; // FOR VI_CONTAR_1 :=0
               STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
               STGR_COMBINACOES_15F03.Repaint;
               LA_TXT31.Caption :=  '100 % ';
               LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
               SELF.Repaint;
               LA_TXT31.Repaint;
               SLEEP(900);               
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               SELF.Repaint;
               PR_GRAVAR_DADOS ('ENCERRANDO ETAPA', VI_LINHAS, 1, 2);

              // =========================================
              // ||||=================================||||
              // |||| 	ANÁLISES COMBINATÓRIAS   ||||
              // ||||=================================||||
              // =========================================
                  // ************************************************************
                  // ** Série 1 c/ 7 e Série 2 c/ 6 e série 3 c/ 2 combinações **
                  // ************************************************************

               if (STGR_COMBINACOES_15F03.RowCount)= 1 then VI_LINHAS := 0 else VI_LINHAS := STGR_COMBINACOES_15F03.RowCount;
              LA_TXT11.Caption :=   '6 7 2 - OK: ' + INTtoSTR(VI_LINHAS);
               LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2';
               LA_TXT11.Refresh;
               LA_TXT21.Caption := 'ANALISANDO 7 6 2  ';
               LA_TXT21.Refresh;
               VI_LINHAS := 1;
               STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
               FOR VI_CONTAR1 := 0 TO (STGR_M03_SERIE1_07.RowCount-1)-0 DO
               BEGIN
                    FOR VI_CONTAR2:= 0 TO (STGR_M03_SERIE2_06.RowCount-1)-0 DO
                    BEGIN
                         FOR VI_CONTAR3:= 0 TO (STGR_M03_SERIE3_02.RowCount-1) DO
                         BEGIN
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 7 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO,VI_LINHAS] := (STGR_M03_SERIE1_07.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR1]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 6 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO+7,VI_LINHAS] := (STGR_M03_SERIE2_06.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR2]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              FOR VI_CONTAR_CELULAS_DESTINO :=1 TO 2 DO
                              BEGIN
                                   STGR_COMBINACOES_15F03.Cells [VI_CONTAR_CELULAS_DESTINO+7+6,VI_LINHAS] := (STGR_M03_SERIE3_02.Cells [VI_CONTAR_CELULAS_DESTINO,VI_CONTAR3]);
                              END; // FOR VI_CONTAR_CELULAS_DESTINO
                              PR_ORDENAR_SIMULACAO_15 (VI_LINHAS);
                              STGR_COMBINACOES_15F03.Cells [0,VI_LINHAS] := INTtoSTR (VI_LINHAS);
                              PR_GRAVAR_DADOS ('NAO', VI_LINHAS, VI_CONTAR1, TRUNC(STGR_M03_SERIE1_07.RowCount-1));
                              VI_LINHAS := VI_LINHAS + 1;
                              STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;                              
                         END; // FOR VI_CONTAR3
                         IF  (VI_CONTAR2 MOD 10 =0) THEN
                              STGR_COMBINACOES_15F03.Repaint;
                    END; // FOR VI_CONTAR2
                    LA_TXT31.Caption :=  INTtoSTR(TRUNC(VI_CONTAR1  / ((STGR_M03_SERIE1_07.RowCount)-1) *100) ) + ' % ';
                    LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
                    SELF.Repaint;
                    LA_TXT31.Repaint;
                    // PR_GRAVAR_DADOS ('NAO', VI_LINHAS, VI_CONTAR1, TRUNC(STGR_M03_SERIE1_06.RowCount-1));
               END; // FOR VI_CONTAR_1 :=0
               STGR_COMBINACOES_15F03.RowCount := VI_LINHAS;
               STGR_COMBINACOES_15F03.Repaint;
               LA_TXT31.Caption :=  '100 % ';
               LA_TXT31.Caption := LA_TXT31.Caption +#13 + INTtoSTR (VI_LINHAS) ;
               SELF.Repaint;
               LA_TXT31.Repaint;
               LA_TXT11.Caption :=  '6 7 2 - OK: ' ;
               LA_TXT11.Caption := LA_TXT11.Caption +#13+  '7 6 2 - OK: ' ;
               LA_TXT11.Repaint;
               Self.WindowState := wsMinimized;
               Self.WindowState :=  wsNormal;
               PGBR_M02.Position := 100;
               PGBR_M02.Repaint;
               SLEEP(50);
               PR_GRAVAR_DADOS ('ENCERRANDO ETAPA', VI_LINHAS, 1, 2);
     END; // IF (CB_MODO_FILTRO.ItemIndex
     
     VI_LINHAS := 1;
     PR_GRAVAR_DADOS ('FIM', VI_LINHAS, 2, 2);
     SLEEP(100);
     LA_gFIM_GERAR.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
     // ==> ACERTANDO O PAINEL DE ENCERRAMENTO
     BBT_PREPARAR.Enabled := false;

     SELF.PR_SIMULAR_RECUPERANDODADOS();
                   SELF.IBQ_COMBINACOES.SQL.Clear;
               SELF.IBQ_COMBINACOES.SQL.Add('SELECT COUNT(distinct(dADOS)) AS SOMADADOS FROM FILTRO_03_DADOS;')  ;
               SELF.IBQ_COMBINACOES.Open;
               IBQ_COMBINACOES.First;
               VI_CONTAR_QUANTIDADE := IBQ_COMBINACOES.FIELDBYNAME('SOMADADOS').AsInteger;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_03_DEFINICAO SET HORA_TERMINO ='''+FORMATDATETIME('h:n:s',time())+''', QTD_DADOS= ''' +INTtoSTR(VI_CONTAR_QUANTIDADE)+ ''';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
     LA_rTOTAL_COMB.Caption := INTtoSTR(VI_CONTAR_QUANTIDADE)+'      ';
     LA_gFIM_100REPET.Caption := DATEtoSTR(DATE())+ ' - '+ TIMEtoSTR(TIME()) ;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('UPDATE FILTRO_03_DEFINICAO SET FLAG_FILTRAR =''S'', FLAG_GRAVAR= ''S'';')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;
            SELF.IBQ_COMBINACOES.SQL.Clear;
            SELF.IBQ_COMBINACOES.SQL.Add('COMMIT')  ;
            SELF.IBQ_COMBINACOES.ExecSQL;

     PA_REMOVEUREPET.Left := 690;
end;


procedure T_F_GERADOR_03_M1.BBT_GERAR_VOLTARClick(Sender: TObject);
begin
     PA_GERAR.Enabled := false;
     PA_GERAR.Left := 4500;
     PA_GERAR.Repaint;
end;



procedure T_F_GERADOR_03_M1.BBT_PA_REMOVEUREPETClick(Sender: TObject);
begin
     PA_REMOVEUREPET.Left := 5000;
     BBT_PREPARAR.Enabled := false;
     BT_GERAR_MENU.Enabled := false;
     PA_INICIAL.Enabled := TRUE;
     BT_NOVA_SIMULACAO.Enabled := false;
     BT_REAJUSTAR.Enabled := TRUE;
     BBT_CARREGAR.Enabled := false;
     PA_INICIAL.Left := 520;
end;




end.
